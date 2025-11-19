@interface MKAccountStore
+ (id)_convertAccount:(id)a3;
+ (id)_convertType:(id)a3;
+ (id)convertAccountDataClasses:(id)a3;
+ (void)initialize;
- (BOOL)_createAndSaveAccount:(id)a3 accountType:(id)a4 error:(id *)a5;
- (BOOL)_importMKAccount:(id)a3 error:(id *)a4;
- (BOOL)_isExistingAccount:(id)a3;
- (MKAccountStore)init;
- (id)_getAccountTypeForMKAccount:(id)a3;
- (id)_getExistingUsernamesForType:(id)a3;
- (id)_username:(id)a3;
- (id)importAccounts:(id)a3;
- (id)visibleTopLevelAccounts;
- (void)_addToExistingAccounts:(id)a3;
- (void)_addToOutputArray:(id)a3;
- (void)_checkForChildAccounts:(id)a3;
- (void)_fetchExistingAccountsFromAccountStore;
- (void)_importMKAccountItems:(id)a3 importResults:(id)a4;
- (void)_processChildAccounts:(id)a3;
- (void)_processVisibleAccounts:(id)a3;
- (void)_updateExistingAccount:(id)a3;
- (void)_updateExistingAccounts:(id)a3;
@end

@implementation MKAccountStore

+ (void)initialize
{
  v48 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v3 = *MEMORY[0x277CB8C40];
    v37[0] = *MEMORY[0x277CB8BA0];
    v2 = v37[0];
    v37[1] = v3;
    v5 = *MEMORY[0x277CB8B98];
    v38 = *MEMORY[0x277CB8D38];
    v4 = v38;
    v39 = v5;
    v7 = *MEMORY[0x277CB8B88];
    v40 = *MEMORY[0x277CB8C00];
    v6 = v40;
    v41 = v7;
    v9 = *MEMORY[0x277CB8CE8];
    v42 = *MEMORY[0x277CB8B80];
    v8 = v42;
    v43 = v9;
    v11 = *MEMORY[0x277CB8CD8];
    v44 = *MEMORY[0x277CB8C60];
    v10 = v44;
    v45 = v11;
    v26 = *MEMORY[0x277CB8C50];
    v46 = *MEMORY[0x277CB8C98];
    v25 = v46;
    v47 = v26;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:12];
    v13 = accountTypes;
    accountTypes = v12;

    v14 = *MEMORY[0x277CB8968];
    v35[0] = *MEMORY[0x277CB8958];
    v35[1] = v14;
    v36[0] = &unk_286AAC5D8;
    v36[1] = &unk_286AAC5F0;
    v15 = *MEMORY[0x277CB8A18];
    v35[2] = *MEMORY[0x277CB89C8];
    v35[3] = v15;
    v36[2] = &unk_286AAC608;
    v36[3] = &unk_286AAC620;
    v35[4] = *MEMORY[0x277CB89F8];
    v36[4] = &unk_286AAC638;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
    v17 = acAccountDataClass;
    acAccountDataClass = v16;

    v29[0] = v3;
    v29[1] = v4;
    v34[0] = @"google";
    v34[1] = @"yahoo";
    v29[2] = v2;
    v29[3] = v5;
    v34[2] = @"apple";
    v34[3] = @"aol";
    v29[4] = v6;
    v29[5] = v8;
    v34[4] = @"exchange";
    v34[5] = @"netEase126";
    v29[6] = v7;
    v29[7] = v9;
    v34[6] = @"netEase163";
    v34[7] = @"qq";
    v29[8] = v10;
    v29[9] = v11;
    v34[8] = @"imap";
    v34[9] = @"pop";
    v19 = *MEMORY[0x277CB8BD8];
    v30 = *MEMORY[0x277CB8BC8];
    v18 = v30;
    v31 = v19;
    v34[10] = @"calDav";
    v34[11] = @"cardDav";
    v32 = v25;
    v33 = v26;
    v34[12] = @"ldap";
    v34[13] = @"hotmail";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v29 count:14];
    v21 = typeMap;
    typeMap = v20;

    v27[0] = &unk_286AAC5D8;
    v27[1] = &unk_286AAC620;
    v28[0] = v18;
    v28[1] = v18;
    v27[2] = &unk_286AAC5F0;
    v27[3] = &unk_286AAC608;
    v28[2] = v19;
    v28[3] = v10;
    v27[4] = &unk_286AAC638;
    v28[4] = v10;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];
    v23 = dataClassTypeMapping;
    dataClassTypeMapping = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (MKAccountStore)init
{
  v10.receiver = self;
  v10.super_class = MKAccountStore;
  v2 = [(MKAccountStore *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mkAccounts = v2->_mkAccounts;
    v2->_mkAccounts = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    existingAccounts = v2->_existingAccounts;
    v2->_existingAccounts = v7;
  }

  return v2;
}

+ (id)_convertAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountType];
  v5 = [MKAccountStore _convertType:v4];

  v6 = [v3 accountDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_286A8E730;
  }

  v9 = v8;

  v10 = [v3 username];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_286A8E730;
  }

  v13 = v12;

  v14 = [MKAccountStore convertAccountDataClasses:v3];

  v15 = [[MKAccountItem alloc] initWithType:v5 displayName:v9 username:v13 dataClasses:v14];

  return v15;
}

+ (id)_convertType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identifier];

    v6 = @"unknown";
    if (v5)
    {
      v7 = typeMap;
      v8 = [v4 identifier];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = @"unknown";
      }

      v6 = v10;
    }
  }

  else
  {
    v6 = @"unknown";
  }

  return v6;
}

+ (id)convertAccountDataClasses:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = acAccountDataClass;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v3 isEnabledForDataclass:{v10, v14}])
        {
          v11 = [acAccountDataClass objectForKeyedSubscript:v10];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)visibleTopLevelAccounts
{
  v57 = *MEMORY[0x277D85DE8];
  accountStore = self->_accountStore;
  if (accountStore)
  {
    v46 = 0;
    v4 = [(ACAccountStore *)accountStore accountsWithAccountTypeIdentifiers:accountTypes error:&v46];
    v5 = v46;
    v6 = +[MKLog log];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        *buf = 138412290;
        v49 = v5;
        _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "Failed to lookup accounts with error: %@,  accounts export failed", buf, 0xCu);
      }

      v8 = MEMORY[0x277CBEBF8];
    }

    else
    {
      if (v7)
      {
        v9 = [v4 count];
        *buf = 138412546;
        v49 = self;
        v50 = 2048;
        v51 = v9;
        _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "%@ Fetched accounts: %lu from accountStore", buf, 0x16u);
      }

      v10 = +[MKLog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2592D2000, v10, OS_LOG_TYPE_INFO, "Fetched accounts from accountStore", buf, 2u);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v36 = v4;
      obj = v4;
      v11 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v43;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v43 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v42 + 1) + 8 * i);
            v16 = +[MKLog log];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = [v15 accountType];
              v18 = [v15 accountDescription];
              v19 = [v15 username];
              *buf = 138413058;
              v49 = self;
              v50 = 2112;
              v51 = v17;
              v52 = 2112;
              v53 = v18;
              v54 = 2112;
              v55 = v19;
              _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "%@ account.accountType: %@, account.accountDescription: %@, account.username: %@", buf, 0x2Au);
            }
          }

          v12 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
        }

        while (v12);
      }

      [(MKAccountStore *)self _processVisibleAccounts:obj];
      v20 = +[MKLog log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [(NSMutableArray *)self->_mkAccounts count];
        *buf = 138412546;
        v49 = self;
        v50 = 2048;
        v51 = v21;
        _os_log_impl(&dword_2592D2000, v20, OS_LOG_TYPE_INFO, "%@ MKAccounts %lu to export", buf, 0x16u);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = self->_mkAccounts;
      v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
      p_info = &OBJC_METACLASS___MKHex.info;
      if (v23)
      {
        v25 = v23;
        v26 = *v39;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v38 + 1) + 8 * j);
            v29 = [p_info + 311 log];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = [v28 type];
              v31 = [v28 username];
              *buf = 138412802;
              v49 = self;
              v50 = 2112;
              v51 = v30;
              v52 = 2112;
              v53 = v31;
              _os_log_impl(&dword_2592D2000, v29, OS_LOG_TYPE_INFO, "%@ MKAccountItem type: %@, username: %@", buf, 0x20u);

              p_info = (&OBJC_METACLASS___MKHex + 32);
            }
          }

          v25 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v25);
      }

      v32 = self;
      v4 = v36;
      v5 = 0;
      if (!-[NSMutableArray count](self->_mkAccounts, "count") && [obj count])
      {
        v33 = +[MKLog log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v49 = v32;
          _os_log_impl(&dword_2592D2000, v33, OS_LOG_TYPE_INFO, "%@ FAILED to prepare MKAccounts array for export", buf, 0xCu);
        }
      }

      v8 = [(NSMutableArray *)v32->_mkAccounts copy];
    }
  }

  else
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "_accountStore is nil, accounts export failed", buf, 2u);
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_processVisibleAccounts:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    v8 = *MEMORY[0x277CB8B28];
    *&v5 = 138412802;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 managingOwnerIdentifier];
        if (v11)
        {
        }

        else
        {
          v12 = [v10 accountPropertyForKey:v8];

          if (!v12)
          {
            v13 = +[MKLog log];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = [v10 username];
              v15 = [v10 accountType];
              *buf = v17;
              v24 = self;
              v25 = 2112;
              v26 = v14;
              v27 = 2112;
              v28 = v15;
              _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "%@ Will prepare account.username = %@, account.accountType = %@ for export", buf, 0x20u);
            }

            [(MKAccountStore *)self _processAccount:v10];
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_addToOutputArray:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MKAccountStore _convertAccount:a3];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 type];
  v7 = [v4 username];
  v8 = [v5 stringWithFormat:@"%@+%@", v6, v7];

  if ([(MKAccountStore *)self _isExistingAccount:v8])
  {
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "%@ userAccount already present: %@", buf, 0x16u);
    }
  }

  else
  {
    [(NSMutableArray *)self->_mkAccounts addObject:v4];
    [(MKAccountStore *)self _addToExistingAccounts:v8];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isExistingAccount:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 componentsSeparatedByString:@"+"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@  addToOutputArray type = %@, username = %@", &v14, 0x20u);
    }

    v8 = [(NSMutableDictionary *)self->_existingAccounts objectForKeyedSubscript:v5];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 containsObject:v6];
    }

    else
    {
      v11 = +[MKLog log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412802;
        v15 = self;
        v16 = 2112;
        v17 = v5;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "%@ Account with type:%@, username:%@ not present in existingAccounts", &v14, 0x20u);
      }

      v10 = 0;
    }
  }

  else
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = self;
      v16 = 2048;
      v17 = [v4 count];
      _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ userAccount parts.count. %lu", &v14, 0x16u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_addToExistingAccounts:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 componentsSeparatedByString:@"+"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v7 = [(NSMutableDictionary *)self->_existingAccounts objectForKeyedSubscript:v5];
    if (!v7)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      [(NSMutableDictionary *)self->_existingAccounts setObject:v7 forKeyedSubscript:v5];
    }

    [v7 addObject:v6];
  }

  else
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = self;
      v11 = 2048;
      v12 = [v4 count];
      _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@  parts.count . %lu", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fetchExistingAccountsFromAccountStore
{
  v15 = *MEMORY[0x277D85DE8];
  accountStore = self->_accountStore;
  v10 = 0;
  v4 = [(ACAccountStore *)accountStore accountsWithAccountTypeIdentifiers:accountTypes error:&v10];
  v5 = v10;
  v6 = +[MKLog log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "Failed to lookup existing accounts with error: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = [v4 count];
      *buf = 138412546;
      v12 = self;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "%@ Fetched accounts count: %lu from AccountStore", buf, 0x16u);
    }

    [(MKAccountStore *)self _updateExistingAccounts:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateExistingAccounts:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = +[MKLog log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v8 accountType];
          v11 = [v8 accountDescription];
          v12 = [v8 username];
          *buf = 138413058;
          v25 = self;
          v26 = 2112;
          v27 = v10;
          v28 = 2112;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
          _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "%@ account.accountType: %@, account.accountDescription: %@, account.username: %@", buf, 0x2Au);
        }

        v13 = [MKAccountStore _convertAccount:v8];
        v14 = MEMORY[0x277CCACA8];
        v15 = [v13 type];
        v16 = [v13 username];
        v17 = [v14 stringWithFormat:@"%@+%@", v15, v16];

        [(MKAccountStore *)self _updateExistingAccount:v17];
        [(MKAccountStore *)self _checkForChildAccounts:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateExistingAccount:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MKAccountStore *)self _isExistingAccount:v4])
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ userAccount: %@ already present.", &v7, 0x16u);
    }
  }

  else
  {
    [(MKAccountStore *)self _addToExistingAccounts:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_checkForChildAccounts:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = &unk_27F9A9000;
  v5 = acAccountDataClass;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v32;
    *&v7 = 138412802;
    v27 = v7;
    v28 = v5;
    v29 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        if ([v3 isEnabledForDataclass:{v11, v27}])
        {
          v12 = dataClassTypeMapping;
          v13 = MEMORY[0x277CCABB0];
          v14 = [v4[67] objectForKeyedSubscript:v11];
          v15 = [v13 numberWithInt:{objc_msgSend(v14, "intValue")}];
          v16 = [v12 objectForKeyedSubscript:v15];

          if (v16)
          {
            v17 = [v3 childAccountsWithAccountTypeIdentifier:v16];
            v18 = +[MKLog log];
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
            if (v17)
            {
              if (v19)
              {
                v20 = [v17 count];
                v21 = [v3 username];
                [v3 accountType];
                v23 = v22 = v4;
                *buf = 138413314;
                v36 = self;
                v37 = 2048;
                v38 = v20;
                v39 = 2112;
                v40 = v21;
                v41 = 2112;
                v42 = v23;
                v43 = 2112;
                v44 = v16;
                _os_log_impl(&dword_2592D2000, v18, OS_LOG_TYPE_INFO, "%@ childAccounts count: %lu for account.username = %@, account.type = %@ withTypeIdentifier = %@", buf, 0x34u);

                v4 = v22;
                v5 = v28;

                v9 = v29;
              }

              [(MKAccountStore *)self _processChildAccounts:v17];
            }

            else
            {
              if (v19)
              {
                v24 = [v3 username];
                v25 = [v3 accountType];
                *buf = v27;
                v36 = v24;
                v37 = 2112;
                v38 = v25;
                v39 = 2112;
                v40 = v16;
                _os_log_impl(&dword_2592D2000, v18, OS_LOG_TYPE_INFO, "childAccounts not present for account.username = %@, account.type = %@, withTypeIdentifier = %@", buf, 0x20u);

                v9 = v29;
              }
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v8);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_processChildAccounts:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [MKAccountStore _convertAccount:*(*(&v15 + 1) + 8 * v7)];
        v9 = MEMORY[0x277CCACA8];
        v10 = [v8 type];
        v11 = [v8 username];
        v12 = [v9 stringWithFormat:@"%@+%@", v10, v11];

        [(MKAccountStore *)self _updateExistingAccount:v12];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_importMKAccountItems:(id)a3 importResults:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = a4;
  obj = v6;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v28;
    *&v8 = 138412802;
    v23 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v26 = 0;
        v13 = [(MKAccountStore *)self _importMKAccount:v12 error:&v26, v23];
        v14 = v26;
        v15 = +[MKLog log];
        v16 = v15;
        if (v13)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v17 = [v12 type];
            v18 = [v12 username];
            *buf = 138412546;
            v32 = v17;
            v33 = 2112;
            v34 = v18;
            _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "Successfully imported MKAccount type: %@, username: %@", buf, 0x16u);
          }

          [v24 addObject:v12];
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v19 = [v12 type];
            v20 = [v12 username];
            v21 = [v14 localizedDescription];
            *buf = v23;
            v32 = v19;
            v33 = 2112;
            v34 = v20;
            v35 = 2112;
            v36 = v21;
            _os_log_error_impl(&dword_2592D2000, v16, OS_LOG_TYPE_ERROR, "Failed to import MKAccount type: %@, username: %@, Error: %@", buf, 0x20u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v9);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)importAccounts:(id)a3
{
  v4 = a3;
  if (self->_accountStore)
  {
    [(MKAccountStore *)self _fetchExistingAccountsFromAccountStore];
    v5 = [MEMORY[0x277CBEB18] array];
    [(MKAccountStore *)self _importMKAccountItems:v4 importResults:v5];
    v6 = [v5 copy];
  }

  else
  {
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "AccountStore is nil, accounts import failed", v9, 2u);
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (BOOL)_importMKAccount:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MKAccountStore *)self _getAccountTypeForMKAccount:v6];
  if (v7)
  {
    v8 = [v6 type];
    v9 = [(MKAccountStore *)self _getExistingUsernamesForType:v8];

    v10 = [v6 username];
    v11 = [v9 containsObject:v10];

    v12 = +[MKLog log];
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        v14 = [v6 type];
        v15 = [v6 username];
        v25 = 138412802;
        v26 = self;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v15;
        v16 = 1;
        _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "%@ account already exists. type=%@, name=%@", &v25, 0x20u);

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      if (v13)
      {
        v20 = [v6 type];
        v21 = [v6 username];
        v25 = 138412802;
        v26 = self;
        v27 = 2112;
        v28 = v20;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "%@ account does not exist. will import type=%@, name=%@", &v25, 0x20u);
      }

      if (![(MKAccountStore *)self _createAndSaveAccount:v6 accountType:v7 error:a4])
      {
        v12 = +[MKLog log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v22 = *a4;
          v25 = 138412290;
          v26 = v22;
          _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "accountStore saveVerifiedAccount failed with error = %@", &v25, 0xCu);
        }

        v16 = 0;
        goto LABEL_16;
      }

      v12 = [v6 username];
      [v9 addObject:v12];
    }

    v16 = 1;
    goto LABEL_16;
  }

  v17 = MEMORY[0x277CCA9B8];
  v31 = *MEMORY[0x277CCA450];
  v32[0] = @"will skip an account due to accountType error.";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  *a4 = [v17 errorWithDomain:@"MKAccountStore" code:2 userInfo:v18];

  v9 = +[MKLog log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v19 = *a4;
    v25 = 138412290;
    v26 = v19;
    _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "will skip an account. failed with error = %@", &v25, 0xCu);
  }

  v16 = 0;
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_getAccountTypeForMKAccount:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = typeMap;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v17 = self;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [typeMap objectForKeyedSubscript:v10];
        v12 = [v4 type];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v14 = [(ACAccountStore *)v17->_accountStore accountTypeWithAccountTypeIdentifier:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_getExistingUsernamesForType:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_existingAccounts objectForKeyedSubscript:v4];
  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v19;
      *&v8 = 138412802;
      v17 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [MKLog log:v17];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v17;
            v23 = self;
            v24 = 2112;
            v25 = v12;
            v26 = 2112;
            v27 = v4;
            _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "%@ username: %@, type: %@", buf, 0x20u);
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = +[MKLog log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&dword_2592D2000, v14, OS_LOG_TYPE_INFO, "No existingAccounts usernames for type = %@", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_existingAccounts setObject:v6 forKeyedSubscript:v4];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_username:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = v4;
    v6 = [v5 rangeOfString:@"@"];
    if (v6)
    {
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v5;
      }

      else
      {
        v7 = [v5 substringToIndex:v6];
      }

      v8 = v7;
    }

    else
    {
      v8 = &stru_286A8E730;
    }
  }

  else
  {
    v8 = &stru_286A8E730;
  }

  return v8;
}

- (BOOL)_createAndSaveAccount:(id)a3 accountType:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v8];
  v10 = [v7 username];
  [v9 setUsername:v10];

  v11 = [v7 username];
  v12 = [(MKAccountStore *)self _username:v11];

  [v9 setAccountDescription:v12];
  v13 = +[MKLog log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v12;
    _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "Set account description: %@", buf, 0xCu);
  }

  v14 = [v7 username];
  [v9 setAccountProperty:v14 forKey:@"IdentityEmailAddress"];

  v15 = +[MKLog log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v7 username];
    *buf = 138412290;
    v34 = v16;
    _os_log_impl(&dword_2592D2000, v15, OS_LOG_TYPE_INFO, "Set IdentityEmailAddress property: %@", buf, 0xCu);
  }

  [v9 setAccountProperty:v12 forKey:@"ACPropertyFullName"];
  v17 = +[MKLog log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v12;
    _os_log_impl(&dword_2592D2000, v17, OS_LOG_TYPE_INFO, "Set ACPropertyFullName property: %@", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v8 supportedDataclasses];
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        [v9 setProvisioned:1 forDataclass:v23];
        [v9 setEnabled:1 forDataclass:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }

  [(ACAccountStore *)self->_accountStore saveVerifiedAccount:v9 error:a5];
  v24 = *a5 == 0;

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

@end