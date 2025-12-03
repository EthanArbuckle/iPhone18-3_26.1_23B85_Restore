@interface ACAccount(DigitalSeparation)
- (id)ds_accountEmails;
@end

@implementation ACAccount(DigitalSeparation)

- (id)ds_accountEmails
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  aa_primaryEmail = [self aa_primaryEmail];

  if (aa_primaryEmail)
  {
    aa_primaryEmail2 = [self aa_primaryEmail];
    [v2 addObject:aa_primaryEmail2];
  }

  username = [self username];

  if (username)
  {
    username2 = [self username];
    [v2 addObject:username2];
  }

  accountType = [self accountType];
  identifier = [accountType identifier];
  v9 = [identifier isEqualToString:*MEMORY[0x277CB8BC8]];

  if (v9)
  {
    accountProperties = [self accountProperties];
    v11 = [accountProperties objectForKeyedSubscript:@"CalDAVPrincipals"];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v11;
    v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v26)
    {
      v25 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [obj objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
          v14 = [v13 objectForKeyedSubscript:@"PreferredCalendarUserAddresses"];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v29;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v29 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v28 + 1) + 8 * j) objectForKeyedSubscript:@"packedCalendarUserAddressAddress"];
                if ([v20 hasPrefix:@"mailto:"])
                {
                  v21 = [v20 substringFromIndex:{objc_msgSend(@"mailto:", "length")}];
                  [v2 addObject:v21];
                }

                else
                {
                  [v2 addObject:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v17);
          }
        }

        v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v26);
    }
  }

  v22 = [MEMORY[0x277CBEB98] setWithSet:v2];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end