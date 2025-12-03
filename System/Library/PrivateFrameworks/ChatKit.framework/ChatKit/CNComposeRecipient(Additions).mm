@interface CNComposeRecipient(Additions)
- (BOOL)isNamedGroup;
- (BOOL)isUnnamedGroup;
- (id)IDSCanonicalAddress;
- (id)IDSCanonicalAddressForAddress:()Additions;
- (id)rawAddress;
- (uint64_t)copyPhoneNumber;
- (uint64_t)isNotAChildOfUnifiedRecipient;
@end

@implementation CNComposeRecipient(Additions)

- (BOOL)isNamedGroup
{
  if (![self isGroup])
  {
    return 0;
  }

  displayString = [self displayString];
  v3 = displayString;
  if (displayString)
  {
    v4 = [displayString length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)isNotAChildOfUnifiedRecipient
{
  children = [self children];
  if ([children count])
  {
    isGroup = [self isGroup];

    if ((isGroup & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)isUnnamedGroup
{
  if (![self isGroup])
  {
    return 0;
  }

  displayString = [self displayString];
  if (displayString)
  {
    displayString2 = [self displayString];
    v4 = [displayString2 length] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (uint64_t)copyPhoneNumber
{
  if (![self isPhone])
  {
    return 0;
  }

  address = [self address];
  if (!address)
  {
    return 0;
  }

  v3 = address;
  v4 = MEMORY[0x193AF4FE0](1);
  v5 = CFPhoneNumberCreate();
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (id)rawAddress
{
  uncommentedAddress = [self uncommentedAddress];
  if (uncommentedAddress)
  {
    [self uncommentedAddress];
  }

  else
  {
    [self normalizedAddress];
  }
  v3 = ;

  return v3;
}

- (id)IDSCanonicalAddress
{
  rawAddress = [self rawAddress];
  v3 = IMStripFormattingFromAddress();

  v4 = [self IDSCanonicalAddressForAddress:v3];

  return v4;
}

- (id)IDSCanonicalAddressForAddress:()Additions
{
  v4 = a3;
  if ([self kind] == 1 || objc_msgSend(self, "isPhone"))
  {
    v5 = IDSCopyIDForPhoneNumber();
LABEL_8:
    v7 = v5;

    goto LABEL_9;
  }

  if (![self kind] || objc_msgSend(self, "kind") == 2 || (v6 = objc_msgSend(self, "isEmail"), v7 = v4, v6))
  {
    v5 = MEMORY[0x193AF5170](v4);
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

@end