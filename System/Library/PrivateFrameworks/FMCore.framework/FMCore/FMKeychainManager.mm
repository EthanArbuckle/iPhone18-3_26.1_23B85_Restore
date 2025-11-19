@interface FMKeychainManager
+ (id)sharedInstance;
- (BOOL)deleteDataForAccount:(id)a3 service:(id)a4;
- (BOOL)setData:(id)a3 forAccount:(id)a4 service:(id)a5 synchronizable:(int64_t)a6 dataProtectionClass:(int64_t)a7 migratable:(int64_t)a8;
- (BOOL)setPassword:(id)a3 forAccount:(id)a4 service:(id)a5;
- (BOOL)setPassword:(id)a3 forAccount:(id)a4 service:(id)a5 synchronizable:(int64_t)a6 dataProtectionClass:(int64_t)a7 migratable:(int64_t)a8;
- (id)_accessibilityForDataProtectionClass:(int64_t)a3 migratable:(BOOL)a4;
- (id)_query:(id)a3 error:(id *)a4;
- (id)allAccountsForService:(id)a3;
- (id)allRecords;
- (id)allServices;
- (id)dataForAccount:(id)a3 service:(id)a4;
- (id)itemForAccount:(id)a3 service:(id)a4 error:(id *)a5;
- (id)passwordForAccount:(id)a3 service:(id)a4;
- (int)_add:(id)a3;
- (int)_delete:(id)a3;
- (int)_updateWithQuery:(id)a3 attributes:(id)a4;
- (void)_migrateToValueDataIfNeeded:(id)a3 account:(id)a4 service:(id)a5;
@end

@implementation FMKeychainManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__FMKeychainManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred != -1)
  {
    dispatch_once(&sharedInstance_pred, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __35__FMKeychainManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (BOOL)deleteDataForAccount:(id)a3 service:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CDC120]];

  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDBF20]];
  LOBYTE(v8) = [(FMKeychainManager *)self _delete:v9]== 0;

  return v8;
}

- (BOOL)setData:(id)a3 forAccount:(id)a4 service:(id)a5 synchronizable:(int64_t)a6 dataProtectionClass:(int64_t)a7 migratable:(int64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = *MEMORY[0x277CDC120];
  [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x277CDC120]];
  v18 = *MEMORY[0x277CDBF20];
  [v16 setObject:v14 forKeyedSubscript:*MEMORY[0x277CDBF20]];
  v19 = *MEMORY[0x277CDC5E8];
  v28 = v13;
  [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CDC5E8]];
  if (a6 != 2)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:a6 == 1];
    [v16 setObject:v20 forKeyedSubscript:*MEMORY[0x277CDC140]];
  }

  if (a8 != 2)
  {
    v21 = [(FMKeychainManager *)self _accessibilityForDataProtectionClass:a7 migratable:a8 == 1];
    if (v21)
    {
      [v16 setObject:v21 forKeyedSubscript:*MEMORY[0x277CDBED8]];
    }
  }

  v22 = [(FMKeychainManager *)self _add:v16, a7];
  if (v22 == -25299)
  {
    v23 = [MEMORY[0x277CBEB38] dictionary];
    v24 = [v16 mutableCopy];
    [v24 removeObjectForKey:*MEMORY[0x277CDC228]];
    [v23 setObject:v15 forKeyedSubscript:v17];
    [v23 setObject:v14 forKeyedSubscript:v18];
    [v24 setObject:v28 forKeyedSubscript:v19];
    v25 = objc_opt_new();
    [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x277CDBFB8]];

    v22 = [(FMKeychainManager *)self _updateWithQuery:v23 attributes:v24];
  }

  return v22 == 0;
}

- (id)dataForAccount:(id)a3 service:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v8 = [(FMKeychainManager *)self itemForAccount:v6 service:v7 error:&v17];
  v9 = v17;
  v10 = [v8 rawData];

  if (v9)
  {
    v11 = LogCategory_Unspecified();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      _os_log_error_impl(&dword_24A2EE000, v11, OS_LOG_TYPE_ERROR, "dataForAccount a: %@, s: %@ error: %@", buf, 0x20u);
    }

LABEL_11:

    v14 = 0;
    goto LABEL_12;
  }

  v12 = objc_opt_new();

  v13 = LogCategory_Unspecified();
  v11 = v13;
  if (!v10 || v10 == v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(FMKeychainManager *)v6 dataForAccount:v7 service:v11];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_24A2EE000, v11, OS_LOG_TYPE_DEFAULT, "dataForAccount a: %@, s: %@.", buf, 0x16u);
  }

  v14 = v10;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)setPassword:(id)a3 forAccount:(id)a4 service:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 dataUsingEncoding:4];
  LOBYTE(self) = [(FMKeychainManager *)self setData:v10 forAccount:v9 service:v8];

  return self;
}

- (BOOL)setPassword:(id)a3 forAccount:(id)a4 service:(id)a5 synchronizable:(int64_t)a6 dataProtectionClass:(int64_t)a7 migratable:(int64_t)a8
{
  v14 = a5;
  v15 = a4;
  v16 = [a3 dataUsingEncoding:4];
  LOBYTE(a8) = [(FMKeychainManager *)self setData:v16 forAccount:v15 service:v14 synchronizable:a6 dataProtectionClass:a7 migratable:a8];

  return a8;
}

- (id)passwordForAccount:(id)a3 service:(id)a4
{
  v4 = [(FMKeychainManager *)self itemForAccount:a3 service:a4 error:0];
  v5 = [v4 password];

  return v5;
}

- (id)itemForAccount:(id)a3 service:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x277CDC120]];
  [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDBF20]];
  [v10 setObject:*MEMORY[0x277CDC438] forKeyedSubscript:*MEMORY[0x277CDC428]];
  [v10 setObject:*MEMORY[0x277CBED28] forKeyedSubscript:*MEMORY[0x277CDC558]];
  v11 = [(FMKeychainManager *)self _query:v10 error:a5];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [[FMInternalKeychainItem alloc] initWithResults:v11];
    [(FMKeychainManager *)self _migrateToValueDataIfNeeded:v11 account:v8 service:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)allServices
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(FMKeychainManager *)self _query:v4 error:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x277CDC120];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:v9];
        [v3 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v3 allObjects];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)allAccountsForService:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x277CDC120]];
  v7 = [(FMKeychainManager *)self _query:v6 error:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = *MEMORY[0x277CDBF20];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:v11];
        [v5 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [v5 allObjects];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)allRecords
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(FMKeychainManager *)self _query:v3 error:0];

  return v4;
}

- (int)_add:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CDC228];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CDC228]];

  if (!v5)
  {
    [v3 setObject:*MEMORY[0x277CDC238] forKeyedSubscript:v4];
  }

  v6 = SecItemAdd(v3, 0);
  v7 = v6;
  if (v6 != -25299 && v6)
  {
    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FMKeychainManager _add:];
    }
  }

  return v7;
}

- (int)_updateWithQuery:(id)a3 attributes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277CDC228];
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CDC228]];

  if (!v8)
  {
    [v5 setObject:*MEMORY[0x277CDC238] forKeyedSubscript:v7];
  }

  v9 = SecItemUpdate(v5, v6);
  if (v9)
  {
    v10 = LogCategory_Unspecified();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FMKeychainManager _updateWithQuery:attributes:];
    }
  }

  return v9;
}

- (int)_delete:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CDC228];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CDC228]];

  if (!v5)
  {
    [v3 setObject:*MEMORY[0x277CDC238] forKeyedSubscript:v4];
  }

  v6 = SecItemDelete(v3);
  v7 = v6;
  if (v6)
  {
    if (v6 == -25300)
    {
      v8 = LogCategory_Unspecified();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [FMKeychainManager _delete:v8];
      }
    }

    else
    {
      v8 = LogCategory_Unspecified();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [FMKeychainManager _delete:];
      }
    }
  }

  return v7;
}

- (id)_query:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = 0;
  v6 = *MEMORY[0x277CDC228];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CDC228]];

  if (!v7)
  {
    [v5 setObject:*MEMORY[0x277CDC238] forKeyedSubscript:v6];
  }

  v8 = *MEMORY[0x277CDC428];
  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277CDC428]];

  if (!v9)
  {
    [v5 setObject:*MEMORY[0x277CDC430] forKeyedSubscript:v8];
  }

  v10 = *MEMORY[0x277CDC550];
  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277CDC550]];

  if (!v11)
  {
    [v5 setObject:*MEMORY[0x277CBED28] forKeyedSubscript:v10];
  }

  v12 = SecItemCopyMatching(v5, &v20);
  if (v12)
  {
    if (a4)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D07B60];
      v15 = v12 != -25300;
      v21 = *MEMORY[0x277CCA7E8];
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v12 userInfo:0];
      v22[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *a4 = [v13 errorWithDomain:v14 code:v15 userInfo:v17];

      a4 = 0;
    }
  }

  else
  {
    a4 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)_accessibilityForDataProtectionClass:(int64_t)a3 migratable:(BOOL)a4
{
  if ((a3 - 1) > 5)
  {
    v6 = 0;
  }

  else
  {
    v5 = &unk_278FD9D50;
    if (!a4)
    {
      v5 = &unk_278FD9D80;
    }

    v6 = *v5[a3 - 1];
  }

  return v6;
}

- (void)_migrateToValueDataIfNeeded:(id)a3 account:(id)a4 service:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v31 = a4;
  v30 = a5;
  v7 = *MEMORY[0x277CDBFB8];
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = *MEMORY[0x277CDC5E8];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];

  v12 = objc_opt_new();
  v13 = [v9 isEqualToData:v12] ^ 1;

  v14 = [v9 length];
  if (v14)
  {
    v15 = (v9 != 0) & v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_opt_new();
  v17 = [v11 isEqualToData:v16];

  if (!v11)
  {
    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_10:
    v18 = objc_opt_new();
    [v18 setObject:v9 forKeyedSubscript:v10];
    v26 = objc_opt_new();
    [v18 setObject:v26 forKeyedSubscript:v7];

    v20 = [MEMORY[0x277CBEB38] dictionary];
    v21 = v30;
    [v20 setObject:v30 forKeyedSubscript:*MEMORY[0x277CDC120]];
    v22 = v31;
    [v20 setObject:v31 forKeyedSubscript:*MEMORY[0x277CDBF20]];
    v27 = [(FMKeychainManager *)self _updateWithQuery:v20 attributes:v18];
    v24 = LogCategory_Unspecified();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v33 = v27;
      v34 = 2112;
      v35 = v31;
      v36 = 2112;
      *v37 = v30;
      v25 = "Migration of keychain item result: %ld, a: %@, s: %@";
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_17;
  }

  if (v17 & v15)
  {
    goto LABEL_10;
  }

  if (v15)
  {
    v18 = objc_opt_new();
    [v18 setObject:v11 forKeyedSubscript:v10];
    v19 = objc_opt_new();
    [v18 setObject:v19 forKeyedSubscript:v7];

    v20 = [MEMORY[0x277CBEB38] dictionary];
    v21 = v30;
    [v20 setObject:v30 forKeyedSubscript:*MEMORY[0x277CDC120]];
    v22 = v31;
    [v20 setObject:v31 forKeyedSubscript:*MEMORY[0x277CDBF20]];
    v23 = [(FMKeychainManager *)self _updateWithQuery:v20 attributes:v18];
    v24 = LogCategory_Unspecified();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v33 = v23;
      v34 = 2112;
      v35 = v31;
      v36 = 2112;
      *v37 = v30;
      v25 = "Removing any remaining generic attribute of keychain item result: %ld, a: %@, s: %@";
LABEL_12:
      _os_log_impl(&dword_24A2EE000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0x20u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:
  v18 = LogCategory_Unspecified();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138414338;
    v21 = v30;
    v22 = v31;
    v33 = v31;
    v34 = 2112;
    v35 = v30;
    v36 = 1024;
    *v37 = v9 != 0;
    *&v37[4] = 1024;
    *&v37[6] = v13;
    v38 = 1024;
    v39 = *v37;
    v40 = 1024;
    v41 = v14 != 0;
    v42 = 1024;
    v43 = v11 == 0;
    v44 = 1024;
    v45 = v17;
    v46 = 1024;
    v47 = v43;
    _os_log_impl(&dword_24A2EE000, v18, OS_LOG_TYPE_INFO, "No migration of keychain item required. a: %@, s: %@. notNil: %i, notNewData: %i, notNull: %i, greaterThanZero: %i, dataIsNil: %i, dataIsNewData: %i, dataIsNull: %i.", buf, 0x40u);
  }

  else
  {
    v21 = v30;
    v22 = v31;
  }

LABEL_17:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)dataForAccount:(os_log_t)log service:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24A2EE000, log, OS_LOG_TYPE_ERROR, "dataForAccount is empty a: %@, s: %@!", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_add:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_3(&dword_24A2EE000, v0, v1, "SecItemAdd error: %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithQuery:attributes:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_3(&dword_24A2EE000, v0, v1, "SecItemUpdate error: %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_delete:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_3(&dword_24A2EE000, v0, v1, "SecItemDelete error: %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end