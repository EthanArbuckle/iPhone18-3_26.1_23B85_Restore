@interface AOLAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (id)emailAddressWithUsername:(id)username;
+ (unsigned)deliveryAccountPortNumber;
- (id)_defaultSpecialMailboxNameForType:(int)type;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed;
@end

@implementation AOLAccount

+ (id)emailAddressWithUsername:(id)username
{
  usernameCopy = username;
  v4 = usernameCopy;
  if (usernameCopy && ([usernameCopy isEqualToString:&stru_2869E1DA0] & 1) == 0)
  {
    if ([v4 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@aol.com", v4];
    }

    else
    {
      v6 = v4;
    }

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_defaultSpecialMailboxNameForType:(int)type
{
  v5 = type - 1;
  if (type - 1) < 5 && ((0x1Du >> v5))
  {
    v6 = off_2798B1278[v5];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = AOLAccount;
    v6 = [(YahooAccount *)&v8 _defaultSpecialMailboxNameForType:?];
  }

  return v6;
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed
{
  if (needed)
  {
    v4 = objc_alloc_init(MFAOLSMTPAccount);
    [(MFAOLSMTPAccount *)v4 setMailAccount:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)deliveryAccountUsesSSL
{
  v2 = [self standardAccountClass:self valueForKey:*MEMORY[0x277D282D8]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (unsigned)deliveryAccountPortNumber
{
  v2 = [self standardAccountClass:self valueForKey:*MEMORY[0x277D282D0]];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

@end