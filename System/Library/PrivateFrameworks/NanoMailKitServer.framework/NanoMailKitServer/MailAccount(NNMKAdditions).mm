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
  nano_account = [self nano_account];
  accountId = [nano_account accountId];

  return accountId;
}

- (NNMKAccount)nano_account
{
  v2 = objc_alloc_init(NNMKAccount);
  uniqueID = [self uniqueID];
  [(NNMKAccount *)v2 setLocalId:uniqueID];

  parentAccountIdentifier = [self parentAccountIdentifier];
  [(NNMKAccount *)v2 setParentAccountIdentifier:parentAccountIdentifier];

  displayName = [self displayName];
  v6 = displayName;
  if (displayName)
  {
    v7 = displayName;
  }

  else
  {
    v7 = &stru_286C69F68;
  }

  [(NNMKAccount *)v2 setDisplayName:v7];

  if ([self supportsArchiving])
  {
    shouldArchiveByDefault = [self shouldArchiveByDefault];
  }

  else
  {
    shouldArchiveByDefault = 0;
  }

  [(NNMKAccount *)v2 setShouldArchive:shouldArchiveByDefault];
  nano_emailAddressesAndAliasesList = [self nano_emailAddressesAndAliasesList];
  [(NNMKAccount *)v2 setEmailAddresses:nano_emailAddressesAndAliasesList];

  [(NNMKAccount *)v2 setSourceType:0];
  persistentAccount = [self persistentAccount];
  username = [persistentAccount username];
  [(NNMKAccount *)v2 setUsername:username];

  accountTypeIdentifier = [objc_opt_class() accountTypeIdentifier];
  [(NNMKAccount *)v2 setTypeIdentifier:accountTypeIdentifier];

  v13 = [self accountPropertyForKey:@"NNMKEmailAddressTokenKey"];
  [(NNMKAccount *)v2 setEmailAddressToken:v13];

  v14 = [self accountPropertyForKey:@"NNMKPCCEmailAddressKey"];
  [(NNMKAccount *)v2 setPccEmailAddress:v14];

  defaultEmailAddress = [self defaultEmailAddress];
  [(NNMKAccount *)v2 setDefaultEmailAddress:defaultEmailAddress];

  v16 = [NNMKAccount generateAccountIdForAccount:v2];
  [(NNMKAccount *)v2 setAccountId:v16];

  return v2;
}

- (id)nano_emailAddressesAndAliasesList
{
  emailAddressesAndAliasesList = [self emailAddressesAndAliasesList];
  v3 = [self _emailAddressStringsFromObjects:emailAddressesAndAliasesList];

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

        ea_uncommentedAddress = [*(*(&v13 + 1) + 8 * i) ea_uncommentedAddress];
        [v4 addObject:ea_uncommentedAddress];
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