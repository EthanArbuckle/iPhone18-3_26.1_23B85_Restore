@interface MKAccountMigrator
- (MKAccountMigrator)init;
- (void)import:(id)import;
- (void)importDataEncodedInJSON:(id)n;
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
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = defaultStore;

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

                username = [*(*(&v26 + 1) + 8 * j) username];
                [v14 addObject:username];
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

- (void)importDataEncodedInJSON:(id)n
{
  nCopy = n;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  [(MKAccountMigrator *)selfCopy import:nCopy];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import
{
  v65[1] = *MEMORY[0x277D85DE8];
  importCopy = import;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy5 = self;
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
      selfCopy5 = self;
      v58 = 2112;
      v59 = v24;
      _os_log_impl(&dword_2592D2000, v23, OS_LOG_TYPE_INFO, "%@ account store did store an account. error=%@", buf, 0x16u);
    }

    if (v20)
    {
      [(MKMigrator *)self migratorDidImport];
      -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [importCopy length]);
    }

    else
    {
      [(MKMigrator *)self migratorDidFailWithImportError:v19];
    }

    v25 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v25);
    payload = [v25 payload];
    accounts = [payload accounts];

    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSinceDate:date];
    v30 = v29;

    v31 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v30];
    importElapsedTime = [accounts importElapsedTime];
    v33 = [importElapsedTime decimalNumberByAdding:v31];
    [accounts setImportElapsedTime:v33];

    objc_sync_exit(v25);
    v6 = v19;
    goto LABEL_21;
  }

  v6 = [[MKAccount alloc] initWithData:importCopy];
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
    type = [(MKAccount *)v6 type];
    name = [(MKAccount *)v6 name];
    *buf = 138412802;
    selfCopy5 = self;
    v58 = 2112;
    v59 = type;
    v60 = 2112;
    v61 = name;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@ received an account. type=%@, name=%@", buf, 0x20u);
  }

  accountTypes = self->_accountTypes;
  type2 = [(MKAccount *)v6 type];
  v48 = [(NSDictionary *)accountTypes objectForKeyedSubscript:type2];

  if (v48)
  {
    existingAccounts = self->_existingAccounts;
    type3 = [(MKAccount *)v6 type];
    v47 = [(NSMutableDictionary *)existingAccounts objectForKeyedSubscript:type3];

    name2 = [(MKAccount *)v6 name];
    v15 = [v47 containsObject:name2];

    if (v15)
    {
      v16 = +[MKLog log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        type4 = [(MKAccount *)v6 type];
        name3 = [(MKAccount *)v6 name];
        *buf = 138412802;
        selfCopy5 = self;
        v58 = 2112;
        v59 = type4;
        v60 = 2112;
        v61 = name3;
        _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "%@ account already exists. type=%@, name=%@", buf, 0x20u);
      }

      v19 = 0;
      v20 = 1;
    }

    else
    {
      v37 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v48];
      name4 = [(MKAccount *)v6 name];
      [v37 setUsername:name4];

      name5 = [(MKAccount *)v6 name];
      [v37 setAccountDescription:name5];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      supportedDataclasses = [v48 supportedDataclasses];
      v41 = [supportedDataclasses countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v41)
      {
        v42 = *v52;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v52 != v42)
            {
              objc_enumerationMutation(supportedDataclasses);
            }

            v44 = *(*(&v51 + 1) + 8 * i);
            [v37 setProvisioned:1 forDataclass:{v44, v47}];
            [v37 setEnabled:1 forDataclass:v44];
          }

          v41 = [supportedDataclasses countByEnumeratingWithState:&v51 objects:v55 count:16];
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
        name6 = [(MKAccount *)v6 name];
        [v47 addObject:name6];
      }
    }

    goto LABEL_15;
  }

  v25 = +[MKLog log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    type5 = [(MKAccount *)v6 type];
    *buf = 138412546;
    selfCopy5 = self;
    v58 = 2112;
    v59 = type5;
    _os_log_impl(&dword_2592D2000, v25, OS_LOG_TYPE_INFO, "%@ will skip an account. type=%@", buf, 0x16u);
  }

LABEL_21:

  v34 = *MEMORY[0x277D85DE8];
}

@end