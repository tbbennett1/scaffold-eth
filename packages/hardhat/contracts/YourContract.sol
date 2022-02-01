pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
  // event SetPurpose(address sender, string purpose);

  string public purpose = "Testing this scaffold out!";
  uint public balance = 5;

  constructor() payable {
    // what should we do on deploy?
  }

  function setPurpose(string memory newPurpose) public {
      purpose = string(abi.encodePacked(newPurpose, ' whatever'));
      console.log(msg.sender,"set purpose to",purpose);
      // emit SetPurpose(msg.sender, purpose);
  }

  function increment(uint amount) public {
    balance = balance + amount;
  }

  function decrement(uint amount) public {
    balance = balance + amount;
  }

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}
