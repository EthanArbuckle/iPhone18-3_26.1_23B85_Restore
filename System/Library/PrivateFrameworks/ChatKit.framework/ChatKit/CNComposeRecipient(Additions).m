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
  if (![a1 isGroup])
  {
    return 0;
  }

  v2 = [a1 displayString];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)isNotAChildOfUnifiedRecipient
{
  v2 = [a1 children];
  if ([v2 count])
  {
    v3 = [a1 isGroup];

    if ((v3 & 1) == 0)
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
  if (![a1 isGroup])
  {
    return 0;
  }

  v2 = [a1 displayString];
  if (v2)
  {
    v3 = [a1 displayString];
    v4 = [v3 length] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (uint64_t)copyPhoneNumber
{
  if (![a1 isPhone])
  {
    return 0;
  }

  v2 = [a1 address];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
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
  v2 = [a1 uncommentedAddress];
  if (v2)
  {
    [a1 uncommentedAddress];
  }

  else
  {
    [a1 normalizedAddress];
  }
  v3 = ;

  return v3;
}

- (id)IDSCanonicalAddress
{
  v2 = [a1 rawAddress];
  v3 = IMStripFormattingFromAddress();

  v4 = [a1 IDSCanonicalAddressForAddress:v3];

  return v4;
}

- (id)IDSCanonicalAddressForAddress:()Additions
{
  v4 = a3;
  if ([a1 kind] == 1 || objc_msgSend(a1, "isPhone"))
  {
    v5 = IDSCopyIDForPhoneNumber();
LABEL_8:
    v7 = v5;

    goto LABEL_9;
  }

  if (![a1 kind] || objc_msgSend(a1, "kind") == 2 || (v6 = objc_msgSend(a1, "isEmail"), v7 = v4, v6))
  {
    v5 = MEMORY[0x193AF5170](v4);
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

@end