@interface NSString(IDSDestinationParsing)
- (id)fkMessageCanonicalRawAddress;
- (id)fkMessageIDSIdentifier;
- (id)fkMessageRawAddress;
- (uint64_t)fkMessageDestinationType;
- (uint64_t)fkMessageIsIDSIdentifier;
@end

@implementation NSString(IDSDestinationParsing)

- (uint64_t)fkMessageDestinationType
{
  if ([self containsString:@"@"] & 1) != 0 || (objc_msgSend(self, "containsString:", @"mailto:"))
  {
    return 2;
  }

  if ([self containsString:@"tel:"])
  {
    return 1;
  }

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v4 = [self rangeOfCharacterFromSet:decimalDigitCharacterSet];

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)fkMessageIDSIdentifier
{
  if ([self fkMessageIsIDSIdentifier])
  {
    v2 = [self copy];
  }

  else
  {
    fkMessageDestinationType = [self fkMessageDestinationType];
    if (fkMessageDestinationType == 2)
    {
      v2 = MEMORY[0x24C252990](self);
    }

    else if (fkMessageDestinationType == 1)
    {
      v2 = IDSCopyIDForPhoneNumber();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)fkMessageRawAddress
{
  if ([self fkMessageIsRawAddress])
  {
    v2 = [self copy];
  }

  else
  {
    v2 = IDSCopyRawAddressForDestination();
  }

  return v2;
}

- (uint64_t)fkMessageIsIDSIdentifier
{
  if ([self containsString:@"tel:"])
  {
    return 1;
  }

  return [self containsString:@"mailto:"];
}

- (id)fkMessageCanonicalRawAddress
{
  fkMessageRawAddress = [self fkMessageRawAddress];
  if ([self fkMessageDestinationType] == 1)
  {
    v4 = MEMORY[0x24C2529B0](fkMessageRawAddress, 0, 1);
    fkMessageRawAddress2 = [v4 fkMessageRawAddress];

    v3 = fkMessageRawAddress2;
  }

  else
  {
    v3 = fkMessageRawAddress;
  }

  return v3;
}

@end