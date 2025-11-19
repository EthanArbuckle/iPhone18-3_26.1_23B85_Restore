@interface MKAccountMigrator
- (MKAccountMigrator)init;
- (void)import:(id)a3;
- (void)importDataEncodedInJSON:(id)a3;
@end

@implementation MKAccountMigrator

- (MKAccountMigrator)init
{
  v38[1] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = MKAccountMigrator;
  v2 = [(MKMigrator *)&v34 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = v2->_accountStore;
    if (v5)
    {
      v37 = @"com.google";
      v6 = [(ACAccountStore *)v5 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C40]];
      v38[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      accountTypes = v2->_accountTypes;
      v2->_accountTypes = v7;
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    existingAccounts = v2->_existingAccounts;
    v2->_existingAccounts = v9;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(NSDictionary *)v2->_accountTypes allKeys];
    v25 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v25)
    {
      v24 = *v31;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [(NSDictionary *)v2->_accountTypes objectForKeyedSubscript:v12];
          v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v15 = [(ACAccountStore *)v2->_accountStore accountsWithAccountType:v13];
          v16 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v27;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v26 + 1) + 8 * j) username];
                [v14 addObject:v20];
              }

              v17 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
            }

            while (v17);
          }

          [(NSMutableDictionary *)v2->_existingAccounts setObject:v14 forKey:v12];
        }

        v25 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v25);
    }

    [(MKMigrator *)v2 setType:1];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)importDataEncodedInJSON:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_autoreleasePoolPush();
  [(MKAccountMigrator *)v4 import:v6];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(v4);
}

- (void)import:(id)a3
{
  v65[1] = *MEMORY[0x277D85DE8];
  v49 = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v57 = self;
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ will import an account.", buf, 0xCu);
  }

  if (!self->_accountStore || ![(NSDictionary *)self->_accountTypes count])
  {
    v21 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v65[0] = @"cannot continue to import an account due to an ACAccountStore error.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    v22 = [v21 errorWithDomain:@"MKAccountErrorDomain" code:2 userInfo:v6];
LABEL_14:
    v19 = v22;
    v20 = 0;
LABEL_15:

    v23 = +[MKLog log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [(MKAccount *)v19 description];
      *buf = 138412546;
      v57 = self;
      v58 = 2112;
      v59 = v24;
      _os_log_impl(&dword_2592D2000, v23, OS_LOG_TYPE_INFO, "%@ account store did store an account. error=%@", buf, 0x16u);
    }

    if (v20)
    {
      [(MKMigrator *)self migratorDidImport];
      -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [v49 length]);
    }

    else
    {
      [(MKMigrator *)self migratorDidFailWithImportError:v19];
    }

    v25 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v25);
    v26 = [v25 payload];
    v27 = [v26 accounts];

    v28 = [MEMORY[0x277CBEAA8] date];
    [v28 timeIntervalSinceDate:v4];
    v30 = v29;

    v31 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v30];
    v32 = [v27 importElapsedTime];
    v33 = [v32 decimalNumberByAdding:v31];
    [v27 setImportElapsedTime:v33];

    objc_sync_exit(v25);
    v6 = v19;
    goto LABEL_21;
  }

  v6 = [[MKAccount alloc] initWithData:v49];
  if (!v6)
  {
    v35 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA450];
    v63 = @"invalid argument";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v22 = [v35 errorWithDomain:@"MKAccountErrorDomain" code:1 userInfo:v6];
    goto LABEL_14;
  }

  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(MKAccount *)v6 type];
    v9 = [(MKAccount *)v6 name];
    *buf = 138412802;
    v57 = self;
    v58 = 2112;
    v59 = v8;
    v60 = 2112;
    v61 = v9;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@ received an account. type=%@, name=%@", buf, 0x20u);
  }

  accountTypes = self->_accountTypes;
  v11 = [(MKAccount *)v6 type];
  v48 = [(NSDictionary *)accountTypes objectForKeyedSubscript:v11];

  if (v48)
  {
    existingAccounts = self->_existingAccounts;
    v13 = [(MKAccount *)v6 type];
    v47 = [(NSMutableDictionary *)existingAccounts objectForKeyedSubscript:v13];

    v14 = [(MKAccount *)v6 name];
    v15 = [v47 containsObject:v14];

    if (v15)
    {
      v16 = +[MKLog log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(MKAccount *)v6 type];
        v18 = [(MKAccount *)v6 name];
        *buf = 138412802;
        v57 = self;
        v58 = 2112;
        v59 = v17;
        v60 = 2112;
        v61 = v18;
        _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "%@ account already exists. type=%@, name=%@", buf, 0x20u);
      }

      v19 = 0;
      v20 = 1;
    }

    else
    {
      v37 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v48];
      v38 = [(MKAccount *)v6 name];
      [v37 setUsername:v38];

      v39 = [(MKAccount *)v6 name];
      [v37 setAccountDescription:v39];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v40 = [v48 supportedDataclasses];
      v41 = [v40 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v41)
      {
        v42 = *v52;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v52 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = *(*(&v51 + 1) + 8 * i);
            [v37 setProvisioned:1 forDataclass:{v44, v47}];
            [v37 setEnabled:1 forDataclass:v44];
          }

          v41 = [v40 countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v41);
      }

      accountStore = self->_accountStore;
      v50 = 0;
      [(ACAccountStore *)accountStore saveVerifiedAccount:v37 error:&v50];
      v19 = v50;
      v20 = v19 == 0;
      if (!v19)
      {
        v46 = [(MKAccount *)v6 name];
        [v47 addObject:v46];
      }
    }

    goto LABEL_15;
  }

  v25 = +[MKLog log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v36 = [(MKAccount *)v6 type];
    *buf = 138412546;
    v57 = self;
    v58 = 2112;
    v59 = v36;
    _os_log_impl(&dword_2592D2000, v25, OS_LOG_TYPE_INFO, "%@ will skip an account. type=%@", buf, 0x16u);
  }

LABEL_21:

  v34 = *MEMORY[0x277D85DE8];
}

@end