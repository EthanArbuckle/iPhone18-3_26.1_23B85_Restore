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
  if ([a1 containsString:@"@"] & 1) != 0 || (objc_msgSend(a1, "containsString:", @"mailto:"))
  {
    return 2;
  }

  if ([a1 containsString:@"tel:"])
  {
    return 1;
  }

  v3 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v4 = [a1 rangeOfCharacterFromSet:v3];

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)fkMessageIDSIdentifier
{
  if ([a1 fkMessageIsIDSIdentifier])
  {
    v2 = [a1 copy];
  }

  else
  {
    v3 = [a1 fkMessageDestinationType];
    if (v3 == 2)
    {
      v2 = MEMORY[0x24C252990](a1);
    }

    else if (v3 == 1)
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
  if ([a1 fkMessageIsRawAddress])
  {
    v2 = [a1 copy];
  }

  else
  {
    v2 = IDSCopyRawAddressForDestination();
  }

  return v2;
}

- (uint64_t)fkMessageIsIDSIdentifier
{
  if ([a1 containsString:@"tel:"])
  {
    return 1;
  }

  return [a1 containsString:@"mailto:"];
}

- (id)fkMessageCanonicalRawAddress
{
  v2 = [a1 fkMessageRawAddress];
  if ([a1 fkMessageDestinationType] == 1)
  {
    v4 = MEMORY[0x24C2529B0](v2, 0, 1);
    v5 = [v4 fkMessageRawAddress];

    v3 = v5;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

@end