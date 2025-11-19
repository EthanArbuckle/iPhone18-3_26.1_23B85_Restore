@interface AOLAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (id)emailAddressWithUsername:(id)a3;
+ (unsigned)deliveryAccountPortNumber;
- (id)_defaultSpecialMailboxNameForType:(int)a3;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
@end

@implementation AOLAccount

+ (id)emailAddressWithUsername:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:&stru_2869E1DA0] & 1) == 0)
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

- (id)_defaultSpecialMailboxNameForType:(int)a3
{
  v5 = a3 - 1;
  if (a3 - 1) < 5 && ((0x1Du >> v5))
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

- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3
{
  if (a3)
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
  v2 = [a1 standardAccountClass:a1 valueForKey:*MEMORY[0x277D282D8]];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (unsigned)deliveryAccountPortNumber
{
  v2 = [a1 standardAccountClass:a1 valueForKey:*MEMORY[0x277D282D0]];
  v3 = [v2 unsignedIntValue];

  return v3;
}

@end