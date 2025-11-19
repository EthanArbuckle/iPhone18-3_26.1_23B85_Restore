@interface MailAccount(NNMKAdditions)
+ (id)nano_activeMailAccounts;
- (NNMKAccount)nano_account;
- (id)_emailAddressStringsFromObjects:()NNMKAdditions;
- (id)nano_accountId;
- (id)nano_emailAddressesAndAliasesList;
@end

@implementation MailAccount(NNMKAdditions)

- (id)nano_accountId
{
  v1 = [a1 nano_account];
  v2 = [v1 accountId];

  return v2;
}

- (NNMKAccount)nano_account
{
  v2 = objc_alloc_init(NNMKAccount);
  v3 = [a1 uniqueID];
  [(NNMKAccount *)v2 setLocalId:v3];

  v4 = [a1 parentAccountIdentifier];
  [(NNMKAccount *)v2 setParentAccountIdentifier:v4];

  v5 = [a1 displayName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_286C69F68;
  }

  [(NNMKAccount *)v2 setDisplayName:v7];

  if ([a1 supportsArchiving])
  {
    v8 = [a1 shouldArchiveByDefault];
  }

  else
  {
    v8 = 0;
  }

  [(NNMKAccount *)v2 setShouldArchive:v8];
  v9 = [a1 nano_emailAddressesAndAliasesList];
  [(NNMKAccount *)v2 setEmailAddresses:v9];

  [(NNMKAccount *)v2 setSourceType:0];
  v10 = [a1 persistentAccount];
  v11 = [v10 username];
  [(NNMKAccount *)v2 setUsername:v11];

  v12 = [objc_opt_class() accountTypeIdentifier];
  [(NNMKAccount *)v2 setTypeIdentifier:v12];

  v13 = [a1 accountPropertyForKey:@"NNMKEmailAddressTokenKey"];
  [(NNMKAccount *)v2 setEmailAddressToken:v13];

  v14 = [a1 accountPropertyForKey:@"NNMKPCCEmailAddressKey"];
  [(NNMKAccount *)v2 setPccEmailAddress:v14];

  v15 = [a1 defaultEmailAddress];
  [(NNMKAccount *)v2 setDefaultEmailAddress:v15];

  v16 = [NNMKAccount generateAccountIdForAccount:v2];
  [(NNMKAccount *)v2 setAccountId:v16];

  return v2;
}

- (id)nano_emailAddressesAndAliasesList
{
  v2 = [a1 emailAddressesAndAliasesList];
  v3 = [a1 _emailAddressStringsFromObjects:v2];

  return v3;
}

- (id)_emailAddressStringsFromObjects:()NNMKAdditions
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) ea_uncommentedAddress];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)nano_activeMailAccounts
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v0 = [MEMORY[0x277D28280] activeAccountsWithError:&v15];
  v1 = v15;
  v2 = 0;
  if (!v1)
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v0, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v0;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v2 addObject:{v8, v11}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

@end