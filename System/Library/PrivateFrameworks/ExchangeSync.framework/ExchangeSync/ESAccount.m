@interface ESAccount
+ (id)_leafExchangeAccountTypes;
+ (id)esAccountSubclassWithBackingAccountInfo:(id)a3;
+ (id)oneshotListOfAccountIDs;
+ (void)reacquireClientRestrictions:(id)a3;
- (void)retrieveOofSettingsForConsumer:(id)a3;
- (void)updateOofSettingsWithParams:(id)a3 consumer:(id)a4;
@end

@implementation ESAccount

+ (id)esAccountSubclassWithBackingAccountInfo:(id)a3
{
  v3 = a3;
  v4 = +[ESAccountLoader sharedInstance];
  v5 = [v4 daemonAppropriateAccountClassForACAccount:v3];

  v6 = [[v5 alloc] initWithBackingAccountInfo:v3];

  return v6;
}

+ (id)_leafExchangeAccountTypes
{
  if (_leafExchangeAccountTypes_onceToken != -1)
  {
    +[ESAccount _leafExchangeAccountTypes];
  }

  v3 = _leafExchangeAccountTypes__sLeafAccountTypes;

  return v3;
}

uint64_t __38__ESAccount__leafExchangeAccountTypes__block_invoke()
{
  _leafExchangeAccountTypes__sLeafAccountTypes = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CB8C00], *MEMORY[0x277CB8C50], 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)updateOofSettingsWithParams:(id)a3 consumer:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_24A097000, v6, v7, "Updating oof settings requested on account %@, which does not support it", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
  [v5 settingsRequestFinishedWithResults:0 status:10 error:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)retrieveOofSettingsForConsumer:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&dword_24A097000, v5, v6, "Retrieving oof settings requested on account %@, which does not support it", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
  [v4 settingsRequestFinishedWithResults:0 status:10 error:v7];

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)oneshotListOfAccountIDs
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = +[ESAccount _leafExchangeAccountTypes];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [v3 accountTypeWithAccountTypeIdentifier:*(*(&v22 + 1) + 8 * i)];
        if (v7)
        {
          v8 = [v3 accountsWithAccountType:v7];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v19;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v19 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [*(*(&v18 + 1) + 8 * j) identifier];
                if (v13)
                {
                  [v2 addObject:v13];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v10);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)reacquireClientRestrictions:(id)a3
{
  v3 = [a1 oneshotListOfAccountIDs];
  v5 = [v3 allObjects];

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  [v4 clearUserInfoForClientUUIDs:v5];
}

@end