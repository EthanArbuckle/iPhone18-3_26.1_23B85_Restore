@interface ICKeychain
+ (BOOL)BOOLeanForIdentifier:(id)identifier account:(id)account;
+ (BOOL)deleteItemsForIdentifier:(id)identifier account:(id)account isSynced:(BOOL)synced error:(id *)error;
+ (BOOL)deleteItemsOfType:(unint64_t)type account:(id)account isSynced:(BOOL)synced error:(id *)error;
+ (BOOL)hasItemForIdentifier:(id)identifier account:(id)account;
+ (BOOL)isSyncAvailableForAccount:(id)account;
+ (BOOL)setBoolean:(BOOL)boolean forIdentifier:(id)identifier account:(id)account shouldSync:(BOOL)sync error:(id *)error;
+ (BOOL)setData:(id)data forIdentifier:(id)identifier account:(id)account error:(id *)error;
+ (BOOL)setData:(id)data forIdentifier:(id)identifier account:(id)account shouldSync:(BOOL)sync error:(id *)error;
+ (BOOL)setData:(id)data forIdentifier:(id)identifier account:(id)account type:(unint64_t)type shouldSync:(BOOL)sync accessFlags:(unint64_t)flags accessGroup:(id)group error:(id *)self0;
+ (BOOL)setString:(id)string forIdentifier:(id)identifier account:(id)account shouldSync:(BOOL)sync error:(id *)error;
+ (BOOL)setUnsignedInteger:(unint64_t)integer forIdentifier:(id)identifier account:(id)account shouldSync:(BOOL)sync error:(id *)error;
+ (BOOL)shouldFetchItemsWithError:(id *)error;
+ (id)accessControlObjectWithProtection:(void *)protection flags:(unint64_t)flags error:(id *)error;
+ (id)dataForIdentifier:(id)identifier account:(id)account isSynced:(BOOL)synced authenticationContext:(id)context;
+ (id)itemsOfType:(unint64_t)type account:(id)account isSynced:(BOOL)synced authenticationContext:(id)context;
+ (id)queryForItemClass:(id)class forIdentifier:(id)identifier account:(id)account isSynced:(BOOL)synced type:(unint64_t)type authenticationContext:(id)context returnData:(BOOL)data limit:(id)self0;
+ (id)stringForIdentifier:(id)identifier account:(id)account isSynced:(BOOL)synced;
+ (unint64_t)unsignedIntegerForIdentifier:(id)identifier account:(id)account;
+ (void)fetchItemsWithCompletionHandler:(id)handler;
+ (void)tests_setLastItemsError:(id)error lastItemsErrorDate:(id)date lastItemsFetchDate:(id)fetchDate;
@end

@implementation ICKeychain

+ (id)stringForIdentifier:(id)identifier account:(id)account isSynced:(BOOL)synced
{
  v5 = [self dataForIdentifier:identifier account:account isSynced:synced authenticationContext:0];
  ic_stringValue = [v5 ic_stringValue];

  return ic_stringValue;
}

+ (BOOL)setString:(id)string forIdentifier:(id)identifier account:(id)account shouldSync:(BOOL)sync error:(id *)error
{
  syncCopy = sync;
  accountCopy = account;
  identifierCopy = identifier;
  ic_dataValue = [string ic_dataValue];
  LOBYTE(error) = [self setData:ic_dataValue forIdentifier:identifierCopy account:accountCopy shouldSync:syncCopy error:error];

  return error;
}

+ (BOOL)BOOLeanForIdentifier:(id)identifier account:(id)account
{
  v4 = [self dataForIdentifier:identifier account:account];
  ic_BOOLValue = [v4 ic_BOOLValue];

  return ic_BOOLValue;
}

+ (BOOL)setBoolean:(BOOL)boolean forIdentifier:(id)identifier account:(id)account shouldSync:(BOOL)sync error:(id *)error
{
  syncCopy = sync;
  booleanCopy = boolean;
  v12 = MEMORY[0x277CBEA90];
  accountCopy = account;
  identifierCopy = identifier;
  v15 = [v12 ic_dataWithBoolean:booleanCopy];
  LOBYTE(error) = [self setData:v15 forIdentifier:identifierCopy account:accountCopy shouldSync:syncCopy error:error];

  return error;
}

+ (unint64_t)unsignedIntegerForIdentifier:(id)identifier account:(id)account
{
  v4 = [self dataForIdentifier:identifier account:account];
  ic_unsignedIntegerValue = [v4 ic_unsignedIntegerValue];

  return ic_unsignedIntegerValue;
}

+ (BOOL)setUnsignedInteger:(unint64_t)integer forIdentifier:(id)identifier account:(id)account shouldSync:(BOOL)sync error:(id *)error
{
  syncCopy = sync;
  v12 = MEMORY[0x277CBEA90];
  accountCopy = account;
  identifierCopy = identifier;
  v15 = [v12 ic_dataWithUnsignedInteger:integer];
  LOBYTE(error) = [self setData:v15 forIdentifier:identifierCopy account:accountCopy shouldSync:syncCopy error:error];

  return error;
}

+ (id)dataForIdentifier:(id)identifier account:(id)account isSynced:(BOOL)synced authenticationContext:(id)context
{
  syncedCopy = synced;
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accountCopy = account;
  LOBYTE(v18) = 1;
  v12 = [self queryForItemClass:*MEMORY[0x277CDC238] forIdentifier:identifierCopy account:accountCopy isSynced:syncedCopy type:0 authenticationContext:context returnData:v18 limit:0];
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
      v21 = identifierCopy;
      v22 = 2112;
      v23 = accountCopy;
      v24 = 1024;
      v25 = v14;
      _os_log_error_impl(&dword_214D51000, v16, OS_LOG_TYPE_ERROR, "Failed getting item (%@) for account (%@) with code: %d", buf, 0x1Cu);
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

+ (id)itemsOfType:(unint64_t)type account:(id)account isSynced:(BOOL)synced authenticationContext:(id)context
{
  syncedCopy = synced;
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  LOBYTE(v17) = 1;
  v11 = [self queryForItemClass:*MEMORY[0x277CDC238] forIdentifier:0 account:accountCopy isSynced:syncedCopy type:type authenticationContext:context returnData:v17 limit:*MEMORY[0x277CDC430]];
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
      typeCopy = type;
      v21 = 2112;
      v22 = accountCopy;
      v23 = 1024;
      v24 = v13;
      _os_log_error_impl(&dword_214D51000, v15, OS_LOG_TYPE_ERROR, "Failed getting items of type (%lu) for account (%@) with code: %d", buf, 0x1Cu);
    }
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_8:

  return v14;
}

+ (BOOL)setData:(id)data forIdentifier:(id)identifier account:(id)account error:(id *)error
{
  accountCopy = account;
  identifierCopy = identifier;
  dataCopy = data;
  v13 = ICGroupContainerIdentifier();
  LOBYTE(error) = [self setData:dataCopy forIdentifier:identifierCopy account:accountCopy type:0 shouldSync:0 accessFlags:0 accessGroup:v13 error:error];

  return error;
}

+ (BOOL)setData:(id)data forIdentifier:(id)identifier account:(id)account shouldSync:(BOOL)sync error:(id *)error
{
  syncCopy = sync;
  accountCopy = account;
  identifierCopy = identifier;
  dataCopy = data;
  v15 = ICGroupContainerIdentifier();
  LOBYTE(error) = [self setData:dataCopy forIdentifier:identifierCopy account:accountCopy type:0 shouldSync:syncCopy accessFlags:0 accessGroup:v15 error:error];

  return error;
}

+ (BOOL)setData:(id)data forIdentifier:(id)identifier account:(id)account type:(unint64_t)type shouldSync:(BOOL)sync accessFlags:(unint64_t)flags accessGroup:(id)group error:(id *)self0
{
  syncCopy = sync;
  v56[5] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  accountCopy = account;
  groupCopy = group;
  v19 = *MEMORY[0x277CDC238];
  if (error)
  {
    *error = 0;
  }

  if (dataCopy)
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
    v56[1] = dataCopy;
    v55[4] = *MEMORY[0x277CDC140];
    v23 = MEMORY[0x277CBEC28];
    v56[2] = MEMORY[0x277CBEC38];
    v56[3] = MEMORY[0x277CBEC38];
    if (syncCopy)
    {
      v23 = MEMORY[0x277CBEC38];
    }

    v56[4] = v23;
    v44 = identifierCopy;
    if (syncCopy)
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
    identifierCopy = v44;
    [v26 setObject:v44 forKeyedSubscript:v27];
    if (accountCopy)
    {
      [v26 setObject:accountCopy forKeyedSubscript:*MEMORY[0x277CDC080]];
    }

    if (type)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      [v26 setObject:v28 forKeyedSubscript:*MEMORY[0x277CDC188]];
    }

    v29 = *MEMORY[0x277CDBEE0];
    v19 = v46;
    if (flags)
    {
      v30 = [self accessControlObjectWithProtection:v29 flags:flags error:error];
      v31 = v30;
      if (!v30 || error && *error)
      {

        v32 = 0;
LABEL_33:

        goto LABEL_34;
      }

      [v26 setObject:v30 forKeyedSubscript:*MEMORY[0x277CDBEC0]];

      if (!groupCopy)
      {
LABEL_21:
        v33 = [v26 copy];
        v34 = SecItemAdd(v33, 0);

        if (v34 == -25299)
        {
          LOBYTE(v42) = 0;
          v35 = [self queryForItemClass:v46 forIdentifier:v44 account:accountCopy isSynced:syncCopy type:0 authenticationContext:0 returnData:v42 limit:0];
          v36 = objc_alloc(MEMORY[0x277CBEB38]);
          v53 = v43;
          v54 = dataCopy;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v38 = [v36 initWithDictionary:v37];

          v39 = [v38 copy];
          v34 = SecItemUpdate(v35, v39);

          identifierCopy = v44;
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
            v50 = accountCopy;
            v51 = 1024;
            v52 = v34;
            _os_log_error_impl(&dword_214D51000, v40, OS_LOG_TYPE_ERROR, "Failed writing item (%@) for account (%@) to keychain with code: %d", buf, 0x1Cu);
          }

          v19 = v46;
          if (error)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v34 userInfo:0];
            *error = v32 = 0;
          }

          else
          {
            v32 = 0;
          }

          identifierCopy = v44;
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
      if (!groupCopy)
      {
        goto LABEL_21;
      }
    }

    [v26 setObject:groupCopy forKeyedSubscript:*MEMORY[0x277CDBEC8]];
    goto LABEL_21;
  }

  v32 = [self deleteItemsForIdentifier:identifierCopy account:accountCopy error:error];
LABEL_34:

  return v32;
}

+ (BOOL)hasItemForIdentifier:(id)identifier account:(id)account
{
  v4 = [self dataForIdentifier:identifier account:account];
  v5 = v4 != 0;

  return v5;
}

+ (BOOL)deleteItemsForIdentifier:(id)identifier account:(id)account isSynced:(BOOL)synced error:(id *)error
{
  syncedCopy = synced;
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accountCopy = account;
  if (error)
  {
    *error = 0;
    if (![identifierCopy length])
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.notes.keychain" code:3 userInfo:0];
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

  else if (![identifierCopy length])
  {
    goto LABEL_16;
  }

  LOBYTE(v19) = 0;
  v12 = [self queryForItemClass:*MEMORY[0x277CDC238] forIdentifier:identifierCopy account:accountCopy isSynced:syncedCopy type:0 authenticationContext:0 returnData:v19 limit:0];
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
      v21 = identifierCopy;
      v22 = 2112;
      v23 = accountCopy;
      v24 = 1024;
      v25 = v14;
      _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "Failed deleting keychain item (%@) for account (%@) with code: %d", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
    }
  }

LABEL_19:

  return v15;
}

+ (BOOL)deleteItemsOfType:(unint64_t)type account:(id)account isSynced:(BOOL)synced error:(id *)error
{
  syncedCopy = synced;
  v26 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v11 = accountCopy;
  if (error)
  {
    *error = 0;
  }

  if (type || [accountCopy length])
  {
    LOBYTE(v19) = 0;
    v12 = [self queryForItemClass:*MEMORY[0x277CDC238] forIdentifier:0 account:v11 isSynced:syncedCopy type:type authenticationContext:0 returnData:v19 limit:0];
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
        typeCopy = type;
        v22 = 2112;
        v23 = v11;
        v24 = 1024;
        v25 = v14;
        _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "Failed deleting keychain items of type (%lu) for account (%@) with code: %d", buf, 0x1Cu);
      }

      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
      }
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.notes.keychain" code:3 userInfo:0];
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

+ (BOOL)isSyncAvailableForAccount:(id)account
{
  accountCopy = account;
  managedObjectContext = [accountCopy managedObjectContext];
  if (managedObjectContext)
  {
    v5 = managedObjectContext;
    isDeleted = [accountCopy isDeleted];

    if ((isDeleted & 1) == 0)
    {
      if ([accountCopy isPrimaryiCloudAccount])
      {
        altDSID = [accountCopy altDSID];
        if (!altDSID)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if ([accountCopy accountType] != 3)
        {
          v23 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [ICKeychain isSyncAvailableForAccount:accountCopy];
          }

          goto LABEL_16;
        }

        mEMORY[0x277D36178] = [MEMORY[0x277D36178] sharedInstance];
        accountStore = [mEMORY[0x277D36178] accountStore];
        v11 = [accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BA0]];

        mEMORY[0x277D36178]2 = [MEMORY[0x277D36178] sharedInstance];
        accountStore2 = [mEMORY[0x277D36178]2 accountStore];
        v14 = [accountStore2 accountsWithAccountType:v11];

        v15 = [v14 ic_objectPassingTest:&__block_literal_global_27];
        altDSID = [v15 aa_altDSID];

        if (!altDSID)
        {
LABEL_16:
          altDSID = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(altDSID, OS_LOG_TYPE_DEBUG))
          {
            +[ICKeychain isSyncAvailableForAccount:];
          }

          v7 = 0;
          goto LABEL_32;
        }
      }

      v16 = objc_alloc_init(MEMORY[0x277CDBD50]);
      [v16 setContext:*MEMORY[0x277CDBD90]];
      [v16 setAltDSID:altDSID];
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
          [ICKeychain isSyncAvailableForAccount:accountCopy];
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
              [ICKeychain isSyncAvailableForAccount:accountCopy];
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
              [ICKeychain isSyncAvailableForAccount:accountCopy];
            }
          }

LABEL_30:
          v7 = 0;
          goto LABEL_31;
        }

        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [ICKeychain isSyncAvailableForAccount:accountCopy];
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

+ (BOOL)shouldFetchItemsWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = +[ICCloudConfiguration sharedConfiguration];
  keychainFetchingEnabled = [v5 keychainFetchingEnabled];

  if ((keychainFetchingEnabled & 1) == 0)
  {
    v15 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[ICKeychain shouldFetchItemsWithError:];
    }

    if (!error)
    {
      goto LABEL_22;
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.notes.keychain" code:5 userInfo:0];
LABEL_15:
    v18 = v16;
    goto LABEL_16;
  }

  mEMORY[0x277D36240] = [MEMORY[0x277D36240] sharedReachabilityForInternetConnection];
  currentReachabilityStatus = [mEMORY[0x277D36240] currentReachabilityStatus];

  if (!currentReachabilityStatus)
  {
    v17 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[ICKeychain shouldFetchItemsWithError:];
    }

    if (!error)
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

  if (!error)
  {
    goto LABEL_22;
  }

  v18 = lastItemsFetchError;
LABEL_16:
  v19 = 0;
  *error = v18;
LABEL_23:
  objc_sync_exit(selfCopy);

  return v19;
}

+ (void)fetchItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v18 = 0;
  v5 = [MEMORY[0x277CDBD00] controlObject:&v18];
  v6 = v18;
  if (v5)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v17 = v6;
    v8 = [selfCopy shouldFetchItemsWithError:&v17];
    v9 = v17;

    if (v8)
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      v11 = lastItemsFetchFetchDate;
      lastItemsFetchFetchDate = v10;

      objc_sync_exit(selfCopy);
      v12 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[ICKeychain fetchItemsWithCompletionHandler:];
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__ICKeychain_fetchItemsWithCompletionHandler___block_invoke;
      v14[3] = &unk_278196E90;
      v16 = selfCopy;
      v15 = handlerCopy;
      [v5 rpcFetchAndProcessChanges:0 reply:v14];
    }

    else
    {
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, v9);
      }

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[ICKeychain fetchItemsWithCompletionHandler:];
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v6);
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

+ (void)tests_setLastItemsError:(id)error lastItemsErrorDate:(id)date lastItemsFetchDate:(id)fetchDate
{
  errorCopy = error;
  dateCopy = date;
  fetchDateCopy = fetchDate;
  obj = self;
  objc_sync_enter(obj);
  v11 = lastItemsFetchError;
  lastItemsFetchError = errorCopy;
  v12 = errorCopy;

  v13 = lastItemsFetchErrorDate;
  lastItemsFetchErrorDate = dateCopy;
  v14 = dateCopy;

  v15 = lastItemsFetchFetchDate;
  lastItemsFetchFetchDate = fetchDateCopy;

  objc_sync_exit(obj);
}

+ (id)queryForItemClass:(id)class forIdentifier:(id)identifier account:(id)account isSynced:(BOOL)synced type:(unint64_t)type authenticationContext:(id)context returnData:(BOOL)data limit:(id)self0
{
  syncedCopy = synced;
  v30[2] = *MEMORY[0x277D85DE8];
  classCopy = class;
  identifierCopy = identifier;
  accountCopy = account;
  contextCopy = context;
  limitCopy = limit;
  v20 = objc_alloc(MEMORY[0x277CBEB38]);
  v21 = *MEMORY[0x277CDC140];
  v29[0] = *MEMORY[0x277CDC5C8];
  v29[1] = v21;
  v22 = MEMORY[0x277CBEC28];
  if (syncedCopy)
  {
    v22 = MEMORY[0x277CBEC38];
  }

  v30[0] = MEMORY[0x277CBEC38];
  v30[1] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v24 = [v20 initWithDictionary:v23];

  if (identifierCopy)
  {
    v25 = MEMORY[0x277CDBF20];
    if (!syncedCopy)
    {
      v25 = MEMORY[0x277CDC120];
    }

    [v24 setObject:identifierCopy forKeyedSubscript:*v25];
  }

  if (classCopy)
  {
    [v24 setObject:classCopy forKeyedSubscript:*MEMORY[0x277CDC228]];
  }

  if (accountCopy)
  {
    [v24 setObject:accountCopy forKeyedSubscript:*MEMORY[0x277CDC080]];
  }

  if (type)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277CDC188]];
  }

  if (data)
  {
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC558]];
  }

  if (limitCopy)
  {
    [v24 setObject:limitCopy forKeyedSubscript:*MEMORY[0x277CDC428]];
  }

  if (contextCopy)
  {
    [v24 setObject:contextCopy forKey:*MEMORY[0x277CDC5A0]];
  }

  v27 = [v24 copy];

  return v27;
}

+ (id)accessControlObjectWithProtection:(void *)protection flags:(unint64_t)flags error:(id *)error
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  v13 = 0;
  v6 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], protection, flags, &v13);
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

    if (error)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA7E8];
      v14[0] = *MEMORY[0x277CCA450];
      v14[1] = v10;
      v15[0] = @"SecAccessControlCreateWithFlags() returned with an error";
      v15[1] = v13;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
      *error = [v9 errorWithDomain:@"com.apple.notes.keychain" code:1 userInfo:v11];
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