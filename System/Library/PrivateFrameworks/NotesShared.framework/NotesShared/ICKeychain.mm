@interface ICKeychain
+ (BOOL)BOOLeanForIdentifier:(id)a3 account:(id)a4;
+ (BOOL)deleteItemsForIdentifier:(id)a3 account:(id)a4 isSynced:(BOOL)a5 error:(id *)a6;
+ (BOOL)deleteItemsOfType:(unint64_t)a3 account:(id)a4 isSynced:(BOOL)a5 error:(id *)a6;
+ (BOOL)hasItemForIdentifier:(id)a3 account:(id)a4;
+ (BOOL)isSyncAvailableForAccount:(id)a3;
+ (BOOL)setBoolean:(BOOL)a3 forIdentifier:(id)a4 account:(id)a5 shouldSync:(BOOL)a6 error:(id *)a7;
+ (BOOL)setData:(id)a3 forIdentifier:(id)a4 account:(id)a5 error:(id *)a6;
+ (BOOL)setData:(id)a3 forIdentifier:(id)a4 account:(id)a5 shouldSync:(BOOL)a6 error:(id *)a7;
+ (BOOL)setData:(id)a3 forIdentifier:(id)a4 account:(id)a5 type:(unint64_t)a6 shouldSync:(BOOL)a7 accessFlags:(unint64_t)a8 accessGroup:(id)a9 error:(id *)a10;
+ (BOOL)setString:(id)a3 forIdentifier:(id)a4 account:(id)a5 shouldSync:(BOOL)a6 error:(id *)a7;
+ (BOOL)setUnsignedInteger:(unint64_t)a3 forIdentifier:(id)a4 account:(id)a5 shouldSync:(BOOL)a6 error:(id *)a7;
+ (BOOL)shouldFetchItemsWithError:(id *)a3;
+ (id)accessControlObjectWithProtection:(void *)a3 flags:(unint64_t)a4 error:(id *)a5;
+ (id)dataForIdentifier:(id)a3 account:(id)a4 isSynced:(BOOL)a5 authenticationContext:(id)a6;
+ (id)itemsOfType:(unint64_t)a3 account:(id)a4 isSynced:(BOOL)a5 authenticationContext:(id)a6;
+ (id)queryForItemClass:(id)a3 forIdentifier:(id)a4 account:(id)a5 isSynced:(BOOL)a6 type:(unint64_t)a7 authenticationContext:(id)a8 returnData:(BOOL)a9 limit:(id)a10;
+ (id)stringForIdentifier:(id)a3 account:(id)a4 isSynced:(BOOL)a5;
+ (unint64_t)unsignedIntegerForIdentifier:(id)a3 account:(id)a4;
+ (void)fetchItemsWithCompletionHandler:(id)a3;
+ (void)tests_setLastItemsError:(id)a3 lastItemsErrorDate:(id)a4 lastItemsFetchDate:(id)a5;
@end

@implementation ICKeychain

+ (id)stringForIdentifier:(id)a3 account:(id)a4 isSynced:(BOOL)a5
{
  v5 = [a1 dataForIdentifier:a3 account:a4 isSynced:a5 authenticationContext:0];
  v6 = [v5 ic_stringValue];

  return v6;
}

+ (BOOL)setString:(id)a3 forIdentifier:(id)a4 account:(id)a5 shouldSync:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [a3 ic_dataValue];
  LOBYTE(a7) = [a1 setData:v14 forIdentifier:v13 account:v12 shouldSync:v8 error:a7];

  return a7;
}

+ (BOOL)BOOLeanForIdentifier:(id)a3 account:(id)a4
{
  v4 = [a1 dataForIdentifier:a3 account:a4];
  v5 = [v4 ic_BOOLValue];

  return v5;
}

+ (BOOL)setBoolean:(BOOL)a3 forIdentifier:(id)a4 account:(id)a5 shouldSync:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v10 = a3;
  v12 = MEMORY[0x277CBEA90];
  v13 = a5;
  v14 = a4;
  v15 = [v12 ic_dataWithBoolean:v10];
  LOBYTE(a7) = [a1 setData:v15 forIdentifier:v14 account:v13 shouldSync:v8 error:a7];

  return a7;
}

+ (unint64_t)unsignedIntegerForIdentifier:(id)a3 account:(id)a4
{
  v4 = [a1 dataForIdentifier:a3 account:a4];
  v5 = [v4 ic_unsignedIntegerValue];

  return v5;
}

+ (BOOL)setUnsignedInteger:(unint64_t)a3 forIdentifier:(id)a4 account:(id)a5 shouldSync:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = MEMORY[0x277CBEA90];
  v13 = a5;
  v14 = a4;
  v15 = [v12 ic_dataWithUnsignedInteger:a3];
  LOBYTE(a7) = [a1 setData:v15 forIdentifier:v14 account:v13 shouldSync:v8 error:a7];

  return a7;
}

+ (id)dataForIdentifier:(id)a3 account:(id)a4 isSynced:(BOOL)a5 authenticationContext:(id)a6
{
  v7 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  LOBYTE(v18) = 1;
  v12 = [a1 queryForItemClass:*MEMORY[0x277CDC238] forIdentifier:v10 account:v11 isSynced:v7 type:0 authenticationContext:a6 returnData:v18 limit:0];
  result = 0;
  v13 = SecItemCopyMatching(v12, &result);
  if (v13 != -25300)
  {
    v14 = v13;
    if (!v13)
    {
      v15 = result;
      goto LABEL_8;
    }

    v16 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 1024;
      v25 = v14;
      _os_log_error_impl(&dword_214D51000, v16, OS_LOG_TYPE_ERROR, "Failed getting item (%@) for account (%@) with code: %d", buf, 0x1Cu);
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

+ (id)itemsOfType:(unint64_t)a3 account:(id)a4 isSynced:(BOOL)a5 authenticationContext:(id)a6
{
  v7 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v10 = a4;
  LOBYTE(v17) = 1;
  v11 = [a1 queryForItemClass:*MEMORY[0x277CDC238] forIdentifier:0 account:v10 isSynced:v7 type:a3 authenticationContext:a6 returnData:v17 limit:*MEMORY[0x277CDC430]];
  result = 0;
  v12 = SecItemCopyMatching(v11, &result);
  if (v12 != -25300)
  {
    v13 = v12;
    if (!v12)
    {
      v14 = result;
      goto LABEL_8;
    }

    v15 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v20 = a3;
      v21 = 2112;
      v22 = v10;
      v23 = 1024;
      v24 = v13;
      _os_log_error_impl(&dword_214D51000, v15, OS_LOG_TYPE_ERROR, "Failed getting items of type (%lu) for account (%@) with code: %d", buf, 0x1Cu);
    }
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_8:

  return v14;
}

+ (BOOL)setData:(id)a3 forIdentifier:(id)a4 account:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = ICGroupContainerIdentifier();
  LOBYTE(a6) = [a1 setData:v12 forIdentifier:v11 account:v10 type:0 shouldSync:0 accessFlags:0 accessGroup:v13 error:a6];

  return a6;
}

+ (BOOL)setData:(id)a3 forIdentifier:(id)a4 account:(id)a5 shouldSync:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = ICGroupContainerIdentifier();
  LOBYTE(a7) = [a1 setData:v14 forIdentifier:v13 account:v12 type:0 shouldSync:v8 accessFlags:0 accessGroup:v15 error:a7];

  return a7;
}

+ (BOOL)setData:(id)a3 forIdentifier:(id)a4 account:(id)a5 type:(unint64_t)a6 shouldSync:(BOOL)a7 accessFlags:(unint64_t)a8 accessGroup:(id)a9 error:(id *)a10
{
  v45 = a7;
  v56[5] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v19 = *MEMORY[0x277CDC238];
  if (a10)
  {
    *a10 = 0;
  }

  if (v15)
  {
    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    v21 = *MEMORY[0x277CDC5E8];
    v55[0] = *MEMORY[0x277CDC228];
    v55[1] = v21;
    v43 = v21;
    v22 = *MEMORY[0x277CDBFC0];
    v55[2] = *MEMORY[0x277CDC5C8];
    v55[3] = v22;
    v46 = v19;
    v56[0] = v19;
    v56[1] = v15;
    v55[4] = *MEMORY[0x277CDC140];
    v23 = MEMORY[0x277CBEC28];
    v56[2] = MEMORY[0x277CBEC38];
    v56[3] = MEMORY[0x277CBEC38];
    if (v45)
    {
      v23 = MEMORY[0x277CBEC38];
    }

    v56[4] = v23;
    v44 = v16;
    if (v45)
    {
      v24 = MEMORY[0x277CDBF20];
    }

    else
    {
      v24 = MEMORY[0x277CDC120];
    }

    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:5];
    v26 = [v20 initWithDictionary:v25];

    v27 = *v24;
    v16 = v44;
    [v26 setObject:v44 forKeyedSubscript:v27];
    if (v17)
    {
      [v26 setObject:v17 forKeyedSubscript:*MEMORY[0x277CDC080]];
    }

    if (a6)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
      [v26 setObject:v28 forKeyedSubscript:*MEMORY[0x277CDC188]];
    }

    v29 = *MEMORY[0x277CDBEE0];
    v19 = v46;
    if (a8)
    {
      v30 = [a1 accessControlObjectWithProtection:v29 flags:a8 error:a10];
      v31 = v30;
      if (!v30 || a10 && *a10)
      {

        v32 = 0;
LABEL_33:

        goto LABEL_34;
      }

      [v26 setObject:v30 forKeyedSubscript:*MEMORY[0x277CDBEC0]];

      if (!v18)
      {
LABEL_21:
        v33 = [v26 copy];
        v34 = SecItemAdd(v33, 0);

        if (v34 == -25299)
        {
          LOBYTE(v42) = 0;
          v35 = [a1 queryForItemClass:v46 forIdentifier:v44 account:v17 isSynced:v45 type:0 authenticationContext:0 returnData:v42 limit:0];
          v36 = objc_alloc(MEMORY[0x277CBEB38]);
          v53 = v43;
          v54 = v15;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v38 = [v36 initWithDictionary:v37];

          v39 = [v38 copy];
          v34 = SecItemUpdate(v35, v39);

          v16 = v44;
          v26 = v38;
        }

        if (v34)
        {
          v40 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v48 = v44;
            v49 = 2112;
            v50 = v17;
            v51 = 1024;
            v52 = v34;
            _os_log_error_impl(&dword_214D51000, v40, OS_LOG_TYPE_ERROR, "Failed writing item (%@) for account (%@) to keychain with code: %d", buf, 0x1Cu);
          }

          v19 = v46;
          if (a10)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v34 userInfo:0];
            *a10 = v32 = 0;
          }

          else
          {
            v32 = 0;
          }

          v16 = v44;
        }

        else
        {
          v32 = 1;
          v19 = v46;
        }

        goto LABEL_33;
      }
    }

    else
    {
      [v26 setObject:v29 forKeyedSubscript:*MEMORY[0x277CDBED8]];
      if (!v18)
      {
        goto LABEL_21;
      }
    }

    [v26 setObject:v18 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
    goto LABEL_21;
  }

  v32 = [a1 deleteItemsForIdentifier:v16 account:v17 error:a10];
LABEL_34:

  return v32;
}

+ (BOOL)hasItemForIdentifier:(id)a3 account:(id)a4
{
  v4 = [a1 dataForIdentifier:a3 account:a4];
  v5 = v4 != 0;

  return v5;
}

+ (BOOL)deleteItemsForIdentifier:(id)a3 account:(id)a4 isSynced:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (a6)
  {
    *a6 = 0;
    if (![v10 length])
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.notes.keychain" code:3 userInfo:0];
LABEL_16:
      v12 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[ICKeychain deleteItemsForIdentifier:account:isSynced:error:];
      }

      v15 = 0;
      goto LABEL_19;
    }
  }

  else if (![v10 length])
  {
    goto LABEL_16;
  }

  LOBYTE(v19) = 0;
  v12 = [a1 queryForItemClass:*MEMORY[0x277CDC238] forIdentifier:v10 account:v11 isSynced:v7 type:0 authenticationContext:0 returnData:v19 limit:0];
  v13 = [v12 copy];
  v14 = SecItemDelete(v13);

  if (v14)
  {
    v15 = v14 == -25300;
  }

  else
  {
    v15 = 1;
  }

  if (v14 != -25300 && v14 != 0)
  {
    v17 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 1024;
      v25 = v14;
      _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "Failed deleting keychain item (%@) for account (%@) with code: %d", buf, 0x1Cu);
    }

    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
    }
  }

LABEL_19:

  return v15;
}

+ (BOOL)deleteItemsOfType:(unint64_t)a3 account:(id)a4 isSynced:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = v10;
  if (a6)
  {
    *a6 = 0;
  }

  if (a3 || [v10 length])
  {
    LOBYTE(v19) = 0;
    v12 = [a1 queryForItemClass:*MEMORY[0x277CDC238] forIdentifier:0 account:v11 isSynced:v7 type:a3 authenticationContext:0 returnData:v19 limit:0];
    v13 = [v12 copy];
    v14 = SecItemDelete(v13);

    if (v14)
    {
      v15 = v14 == -25300;
    }

    else
    {
      v15 = 1;
    }

    if (v14 != -25300 && v14 != 0)
    {
      v17 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v21 = a3;
        v22 = 2112;
        v23 = v11;
        v24 = 1024;
        v25 = v14;
        _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "Failed deleting keychain items of type (%lu) for account (%@) with code: %d", buf, 0x1Cu);
      }

      if (a6)
      {
        *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
      }
    }
  }

  else
  {
    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.notes.keychain" code:3 userInfo:0];
    }

    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ICKeychain deleteItemsOfType:account:isSynced:error:];
    }

    v15 = 0;
  }

  return v15;
}

+ (BOOL)isSyncAvailableForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 isDeleted];

    if ((v6 & 1) == 0)
    {
      if ([v3 isPrimaryiCloudAccount])
      {
        v8 = [v3 altDSID];
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if ([v3 accountType] != 3)
        {
          v23 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [ICKeychain isSyncAvailableForAccount:v3];
          }

          goto LABEL_16;
        }

        v9 = [MEMORY[0x277D36178] sharedInstance];
        v10 = [v9 accountStore];
        v11 = [v10 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BA0]];

        v12 = [MEMORY[0x277D36178] sharedInstance];
        v13 = [v12 accountStore];
        v14 = [v13 accountsWithAccountType:v11];

        v15 = [v14 ic_objectPassingTest:&__block_literal_global_27];
        v8 = [v15 aa_altDSID];

        if (!v8)
        {
LABEL_16:
          v8 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            +[ICKeychain isSyncAvailableForAccount:];
          }

          v7 = 0;
          goto LABEL_32;
        }
      }

      v16 = objc_alloc_init(MEMORY[0x277CDBD50]);
      [v16 setContext:*MEMORY[0x277CDBD90]];
      [v16 setAltDSID:v8];
      v17 = [objc_alloc(MEMORY[0x277CDBD48]) initWithContextData:v16];
      v18 = objc_alloc_init(MEMORY[0x277CDBD70]);
      [v18 setUseCachedAccountStatus:1];
      v27 = 0;
      v19 = [v17 fetchCliqueStatus:v18 error:&v27];
      v20 = v27;
      if (v20)
      {
        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [ICKeychain isSyncAvailableForAccount:v3];
        }
      }

      else
      {
        if ((v19 | 2) == 2)
        {
          v26 = 0;
          v24 = [v17 fetchUserControllableViewsSyncingEnabled:&v26];
          v22 = v26;
          if (v22)
          {
            v21 = os_log_create("com.apple.notes", "Crypto");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [ICKeychain isSyncAvailableForAccount:v3];
            }
          }

          else
          {
            if (v24)
            {
              v7 = 1;
LABEL_31:

LABEL_32:
              goto LABEL_33;
            }

            v21 = os_log_create("com.apple.notes", "Crypto");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              [ICKeychain isSyncAvailableForAccount:v3];
            }
          }

LABEL_30:
          v7 = 0;
          goto LABEL_31;
        }

        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [ICKeychain isSyncAvailableForAccount:v3];
        }
      }

      v22 = v21;
      goto LABEL_30;
    }
  }

  v7 = 0;
LABEL_33:

  return v7;
}

+ (BOOL)shouldFetchItemsWithError:(id *)a3
{
  v4 = a1;
  objc_sync_enter(v4);
  v5 = +[ICCloudConfiguration sharedConfiguration];
  v6 = [v5 keychainFetchingEnabled];

  if ((v6 & 1) == 0)
  {
    v15 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[ICKeychain shouldFetchItemsWithError:];
    }

    if (!a3)
    {
      goto LABEL_22;
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.notes.keychain" code:5 userInfo:0];
LABEL_15:
    v18 = v16;
    goto LABEL_16;
  }

  v7 = [MEMORY[0x277D36240] sharedReachabilityForInternetConnection];
  v8 = [v7 currentReachabilityStatus];

  if (!v8)
  {
    v17 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[ICKeychain shouldFetchItemsWithError:];
    }

    if (!a3)
    {
      goto LABEL_22;
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.notes.keychain" code:4 userInfo:0];
    goto LABEL_15;
  }

  v9 = lastItemsFetchFetchDate;
  v10 = +[ICCloudConfiguration sharedConfiguration];
  [v10 keychainMinimumSyncInterval];
  v11 = [v9 dateByAddingTimeInterval:?];
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = [v11 ic_isLaterThanDate:v12];

  if (v13)
  {
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[ICKeychain shouldFetchItemsWithError:];
    }

LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v20 = lastItemsFetchErrorDate;
  v21 = +[ICCloudConfiguration sharedConfiguration];
  [v21 keychainFetchErrorTimeout];
  v22 = [v20 dateByAddingTimeInterval:?];
  v23 = [MEMORY[0x277CBEAA8] now];
  v24 = [v22 ic_isLaterThanDate:v23];

  if (!v24)
  {
    v19 = 1;
    goto LABEL_23;
  }

  v25 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    +[ICKeychain shouldFetchItemsWithError:];
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  v18 = lastItemsFetchError;
LABEL_16:
  v19 = 0;
  *a3 = v18;
LABEL_23:
  objc_sync_exit(v4);

  return v19;
}

+ (void)fetchItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v18 = 0;
  v5 = [MEMORY[0x277CDBD00] controlObject:&v18];
  v6 = v18;
  if (v5)
  {
    v7 = a1;
    objc_sync_enter(v7);
    v17 = v6;
    v8 = [v7 shouldFetchItemsWithError:&v17];
    v9 = v17;

    if (v8)
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      v11 = lastItemsFetchFetchDate;
      lastItemsFetchFetchDate = v10;

      objc_sync_exit(v7);
      v12 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[ICKeychain fetchItemsWithCompletionHandler:];
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__ICKeychain_fetchItemsWithCompletionHandler___block_invoke;
      v14[3] = &unk_278196E90;
      v16 = v7;
      v15 = v4;
      [v5 rpcFetchAndProcessChanges:0 reply:v14];
    }

    else
    {
      if (v4)
      {
        (*(v4 + 2))(v4, v9);
      }

      objc_sync_exit(v7);
    }
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[ICKeychain fetchItemsWithCompletionHandler:];
    }

    if (v4)
    {
      (*(v4 + 2))(v4, v6);
    }

    v9 = v6;
  }
}

void __46__ICKeychain_fetchItemsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = os_log_create("com.apple.notes", "Crypto");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__ICKeychain_fetchItemsWithCompletionHandler___block_invoke_cold_1();
    }

    v7 = *(a1 + 40);
    objc_sync_enter(v7);
    objc_storeStrong(&lastItemsFetchError, a2);
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = lastItemsFetchErrorDate;
    lastItemsFetchErrorDate = v8;
    v10 = &lastItemsFetchFetchDate;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Fetched Keychain items", v13, 2u);
    }

    v7 = *(a1 + 40);
    objc_sync_enter(v7);
    v9 = lastItemsFetchError;
    lastItemsFetchError = 0;
    v10 = &lastItemsFetchErrorDate;
  }

  v11 = *v10;
  *v10 = 0;

  objc_sync_exit(v7);
  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v4);
  }
}

+ (void)tests_setLastItemsError:(id)a3 lastItemsErrorDate:(id)a4 lastItemsFetchDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  obj = a1;
  objc_sync_enter(obj);
  v11 = lastItemsFetchError;
  lastItemsFetchError = v8;
  v12 = v8;

  v13 = lastItemsFetchErrorDate;
  lastItemsFetchErrorDate = v9;
  v14 = v9;

  v15 = lastItemsFetchFetchDate;
  lastItemsFetchFetchDate = v10;

  objc_sync_exit(obj);
}

+ (id)queryForItemClass:(id)a3 forIdentifier:(id)a4 account:(id)a5 isSynced:(BOOL)a6 type:(unint64_t)a7 authenticationContext:(id)a8 returnData:(BOOL)a9 limit:(id)a10
{
  v12 = a6;
  v30[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a10;
  v20 = objc_alloc(MEMORY[0x277CBEB38]);
  v21 = *MEMORY[0x277CDC140];
  v29[0] = *MEMORY[0x277CDC5C8];
  v29[1] = v21;
  v22 = MEMORY[0x277CBEC28];
  if (v12)
  {
    v22 = MEMORY[0x277CBEC38];
  }

  v30[0] = MEMORY[0x277CBEC38];
  v30[1] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v24 = [v20 initWithDictionary:v23];

  if (v16)
  {
    v25 = MEMORY[0x277CDBF20];
    if (!v12)
    {
      v25 = MEMORY[0x277CDC120];
    }

    [v24 setObject:v16 forKeyedSubscript:*v25];
  }

  if (v15)
  {
    [v24 setObject:v15 forKeyedSubscript:*MEMORY[0x277CDC228]];
  }

  if (v17)
  {
    [v24 setObject:v17 forKeyedSubscript:*MEMORY[0x277CDC080]];
  }

  if (a7)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
    [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277CDC188]];
  }

  if (a9)
  {
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC558]];
  }

  if (v19)
  {
    [v24 setObject:v19 forKeyedSubscript:*MEMORY[0x277CDC428]];
  }

  if (v18)
  {
    [v24 setObject:v18 forKey:*MEMORY[0x277CDC5A0]];
  }

  v27 = [v24 copy];

  return v27;
}

+ (id)accessControlObjectWithProtection:(void *)a3 flags:(unint64_t)a4 error:(id *)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    *a5 = 0;
  }

  v13 = 0;
  v6 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], a3, a4, &v13);
  if (v6)
  {
    v7 = v13 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ICKeychain accessControlObjectWithProtection:flags:error:];
    }

    if (a5)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA7E8];
      v14[0] = *MEMORY[0x277CCA450];
      v14[1] = v10;
      v15[0] = @"SecAccessControlCreateWithFlags() returned with an error";
      v15[1] = v13;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
      *a5 = [v9 errorWithDomain:@"com.apple.notes.keychain" code:1 userInfo:v11];
    }

    if (v6)
    {
      CFRelease(v6);
      v6 = 0;
    }
  }

  return v6;
}

+ (void)deleteItemsForIdentifier:account:isSynced:error:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)deleteItemsOfType:account:isSynced:error:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isSyncAvailableForAccount:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "iCloud keychain sync is not available for non-primary, non-local account: %@", v4, v5, v6, v7, v8);
}

+ (void)isSyncAvailableForAccount:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v2, v3, "Failed to fetch keychain clique status for account (%@): %@", v4, v5, v6, v7, v8);
}

+ (void)isSyncAvailableForAccount:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v2, v3, "Failed to fetch keychain sync status for account (%@): %@", v4, v5, v6, v7, v8);
}

+ (void)isSyncAvailableForAccount:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Keychain syncing is not enabled for account: %@", v4, v5, v6, v7, v8);
}

+ (void)isSyncAvailableForAccount:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v2, v3, "Unexpected keychain clique status for account (%@): %lu", v4, v5, v6, v7, v8);
}

+ (void)fetchItemsWithCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__ICKeychain_fetchItemsWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end