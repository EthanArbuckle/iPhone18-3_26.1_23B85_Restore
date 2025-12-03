@interface ACAccountStore(DigitalSeparation)
- (id)ds_deviceOwnerEmails;
@end

@implementation ACAccountStore(DigitalSeparation)

- (id)ds_deviceOwnerEmails
{
  v19 = *MEMORY[0x277D85DE8];
  aa_primaryAppleAccount = [self aa_primaryAppleAccount];
  v3 = MEMORY[0x277CBEB58];
  ds_accountEmails = [aa_primaryAppleAccount ds_accountEmails];
  v5 = [v3 setWithSet:ds_accountEmails];

  v6 = [self aa_accountsEnabledForDataclass:*MEMORY[0x277CB8958]];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        ds_accountEmails2 = [*(*(&v14 + 1) + 8 * i) ds_accountEmails];
        [v5 unionSet:ds_accountEmails2];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

@end