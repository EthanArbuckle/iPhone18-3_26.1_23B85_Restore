@interface ICAccountUtilities
+ (id)sharedInstance;
- (ACAccount)primaryICloudACAccount;
- (BOOL)didChooseToMigratePrimaryICloudAccount;
- (BOOL)hasSyncingAccount;
- (BOOL)isManagedACAccountWithIdentifier:(id)a3;
- (BOOL)primaryICloudAccountEnabled;
- (id)allICloudACAccounts;
- (id)applicationDataContainerURLForAccountIdentifier:(id)a3;
- (id)applicationDocumentsURLForAccountIdentifier:(id)a3;
- (id)iCloudACAccountWithIdentifier:(id)a3;
- (id)initForObservingAccountStoreChanges:(BOOL)a3;
- (id)temporaryDirectoryURLForAccountIdentifier:(id)a3;
- (void)accountStoreDidChange:(id)a3;
- (void)createDirectoryIfNecessaryUsingURL:(id)a3;
- (void)dealloc;
- (void)internalInvalidatePrimaryICloudACAccount;
- (void)invalidateCache;
- (void)performBlockInPersonaContext:(id)a3 forAccountIdentifier:(id)a4;
- (void)updateICloudACAccountFromStore;
@end

@implementation ICAccountUtilities

+ (id)sharedInstance
{
  block = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __36__ICAccountUtilities_sharedInstance__block_invoke;
  v7 = &__block_descriptor_40_e5_v8__0l;
  v8 = a1;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, &block);
  }

  v2 = sharedInstance_sharedInstance;
  if (!sharedInstance_sharedInstance)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "((sharedInstance) != nil)", "+[ICAccountUtilities sharedInstance]", 1, 0, @"Expected non-nil value for '%s'", "sharedInstance", block, v5, v6, v7, v8);
    v2 = sharedInstance_sharedInstance;
  }

  return v2;
}

uint64_t __36__ICAccountUtilities_sharedInstance__block_invoke(uint64_t result)
{
  if (!sharedInstance_sharedInstance)
  {
    sharedInstance_sharedInstance = objc_alloc_init(*(result + 32));

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)allICloudACAccounts
{
  v2 = [(ICAccountUtilities *)self accountStore];
  v3 = [v2 aa_appleAccounts];

  return v3;
}

- (BOOL)hasSyncingAccount
{
  v2 = [(ICAccountUtilities *)self accountStore];
  v3 = [v2 accountIdentifiersEnabledForDataclass:*MEMORY[0x1E69596C0]];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)initForObservingAccountStoreChanges:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = ICAccountUtilities;
  v4 = [(ICAccountUtilities *)&v13 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = v4->_accountStore;
    v4->_accountStore = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accountByIdentifier = v4->_accountByIdentifier;
    v4->_accountByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accountIsManagedByIdentifier = v4->_accountIsManagedByIdentifier;
    v4->_accountIsManagedByIdentifier = v9;

    if (v3)
    {
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 addObserver:v4 selector:sel_accountStoreDidChange_ name:*MEMORY[0x1E6959968] object:v4->_accountStore];
    }
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICAccountUtilities;
  [(ICAccountUtilities *)&v4 dealloc];
}

- (void)updateICloudACAccountFromStore
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 currentICloudAccountState];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1D4576000, a2, OS_LOG_TYPE_DEBUG, "Updated iCloud Apple Account from store {state: %@}", v4, 0xCu);
}

- (ACAccount)primaryICloudACAccount
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(ICAccountUtilities *)v2 isPrimaryICloudACAccountValid])
  {
    v3 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccountUtilities *)v3 primaryICloudACAccount];
    }
  }

  else
  {
    [(ICAccountUtilities *)v2 updateICloudACAccountFromStore];
  }

  v4 = v2->_primaryICloudACAccount;
  objc_sync_exit(v2);

  return v4;
}

- (id)iCloudACAccountWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(ICAccountUtilities *)v5 accountByIdentifier];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (!v7)
    {
      v8 = [(ICAccountUtilities *)v5 accountStore];
      v9 = [v8 accountWithIdentifier:v4];
      v10 = [(ICAccountUtilities *)v5 accountByIdentifier];
      [v10 setObject:v9 forKeyedSubscript:v4];
    }

    v11 = [(ICAccountUtilities *)v5 accountByIdentifier];
    v12 = [v11 objectForKeyedSubscript:v4];

    objc_sync_exit(v5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isManagedACAccountWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_opt_class();
  v7 = [(ICAccountUtilities *)v5 accountIsManagedByIdentifier];
  v8 = [v7 objectForKeyedSubscript:v4];
  v9 = ICDynamicCast(v6, v8);

  if (v9)
  {
    LOBYTE(v10) = [v9 BOOLValue];
  }

  else
  {
    v11 = [(ICAccountUtilities *)v5 accountStore];
    v12 = [v11 accountWithIdentifier:v4];

    if ([v12 ic_isManagedAppleID])
    {
      v10 = 1;
    }

    else
    {
      v10 = [v12 MCIsManaged];
    }

    v13 = [MEMORY[0x1E696AD98] numberWithBool:v10];
    v14 = [(ICAccountUtilities *)v5 accountIsManagedByIdentifier];
    [v14 setObject:v13 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);
  return v10;
}

- (id)applicationDocumentsURLForAccountIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (applicationDocumentsURLForAccountIdentifier__onceToken != -1)
  {
    [ICAccountUtilities applicationDocumentsURLForAccountIdentifier:];
  }

  v5 = applicationDocumentsURLForAccountIdentifier__urlsByAccountIdentifier;
  objc_sync_enter(v5);
  v6 = [applicationDocumentsURLForAccountIdentifier__urlsByAccountIdentifier objectForKeyedSubscript:v4];
  v7 = v14[5];
  v14[5] = v6;

  if (!v14[5])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__ICAccountUtilities_applicationDocumentsURLForAccountIdentifier___block_invoke_2;
    v10[3] = &unk_1E8484848;
    v12 = &v13;
    v11 = v4;
    [(ICAccountUtilities *)self performBlockInPersonaContext:v10 forAccountIdentifier:v11];
  }

  objc_sync_exit(v5);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __66__ICAccountUtilities_applicationDocumentsURLForAccountIdentifier___block_invoke()
{
  applicationDocumentsURLForAccountIdentifier__urlsByAccountIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

void __66__ICAccountUtilities_applicationDocumentsURLForAccountIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = ICGroupContainerIdentifier();
  v3 = [ICPaths URLForGroupContainerWithIdentifier:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(a1 + 32))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = applicationDocumentsURLForAccountIdentifier__urlsByAccountIdentifier;

    [v7 setObject:v6 forKeyedSubscript:?];
  }
}

- (id)applicationDataContainerURLForAccountIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (applicationDataContainerURLForAccountIdentifier__onceToken != -1)
  {
    [ICAccountUtilities applicationDataContainerURLForAccountIdentifier:];
  }

  v5 = applicationDataContainerURLForAccountIdentifier__urlsByAccountIdentifier;
  objc_sync_enter(v5);
  v6 = [applicationDataContainerURLForAccountIdentifier__urlsByAccountIdentifier objectForKeyedSubscript:v4];
  v7 = v14[5];
  v14[5] = v6;

  if (!v14[5])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__ICAccountUtilities_applicationDataContainerURLForAccountIdentifier___block_invoke_2;
    v10[3] = &unk_1E8484848;
    v12 = &v13;
    v11 = v4;
    [(ICAccountUtilities *)self performBlockInPersonaContext:v10 forAccountIdentifier:v11];
  }

  objc_sync_exit(v5);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __70__ICAccountUtilities_applicationDataContainerURLForAccountIdentifier___block_invoke()
{
  applicationDataContainerURLForAccountIdentifier__urlsByAccountIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

void __70__ICAccountUtilities_applicationDataContainerURLForAccountIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = +[ICPaths applicationDataContainerURL];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(a1 + 32))
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = applicationDataContainerURLForAccountIdentifier__urlsByAccountIdentifier;

    [v6 setObject:v5 forKeyedSubscript:?];
  }
}

- (id)temporaryDirectoryURLForAccountIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (temporaryDirectoryURLForAccountIdentifier__onceToken != -1)
  {
    [ICAccountUtilities temporaryDirectoryURLForAccountIdentifier:];
  }

  v5 = temporaryDirectoryURLForAccountIdentifier__urlsByAccountIdentifier;
  objc_sync_enter(v5);
  v6 = [temporaryDirectoryURLForAccountIdentifier__urlsByAccountIdentifier objectForKeyedSubscript:v4];
  v7 = v14[5];
  v14[5] = v6;

  if (!v14[5])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__ICAccountUtilities_temporaryDirectoryURLForAccountIdentifier___block_invoke_2;
    v10[3] = &unk_1E8484870;
    v10[4] = self;
    v11 = v4;
    v12 = &v13;
    [(ICAccountUtilities *)self performBlockInPersonaContext:v10 forAccountIdentifier:v11];
  }

  objc_sync_exit(v5);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __64__ICAccountUtilities_temporaryDirectoryURLForAccountIdentifier___block_invoke()
{
  temporaryDirectoryURLForAccountIdentifier__urlsByAccountIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

void __64__ICAccountUtilities_temporaryDirectoryURLForAccountIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationDocumentsURLForAccountIdentifier:*(a1 + 40)];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 0;
  v4 = [v3 URLForDirectory:99 inDomain:1 appropriateForURL:v2 create:1 error:&v13];
  v5 = v13;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__ICAccountUtilities_temporaryDirectoryURLForAccountIdentifier___block_invoke_2_cold_1();
    }

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 temporaryDirectory];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if (*(a1 + 40))
  {
    [temporaryDirectoryURLForAccountIdentifier__urlsByAccountIdentifier setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:?];
  }
}

- (BOOL)primaryICloudAccountEnabled
{
  v2 = [(ICAccountUtilities *)self primaryICloudACAccount];
  v3 = [v2 isEnabledForDataclass:*MEMORY[0x1E69596C0]];

  return v3;
}

- (BOOL)didChooseToMigratePrimaryICloudAccount
{
  v2 = [(ICAccountUtilities *)self primaryICloudACAccount];
  v3 = [v2 objectForKeyedSubscript:@"notesIsUsingCloudKit"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)internalInvalidatePrimaryICloudACAccount
{
  [(ICAccountUtilities *)self setPrimaryICloudACAccountValid:0];
  primaryICloudACAccount = self->_primaryICloudACAccount;
  self->_primaryICloudACAccount = 0;

  [(ICAccountUtilities *)self setCurrentICloudAccountState:0];
}

- (void)invalidateCache
{
  obj = self;
  objc_sync_enter(obj);
  [(ICAccountUtilities *)obj internalInvalidatePrimaryICloudACAccount];
  v2 = [(ICAccountUtilities *)obj accountByIdentifier];
  [v2 removeAllObjects];

  v3 = [(ICAccountUtilities *)obj accountIsManagedByIdentifier];
  [v3 removeAllObjects];

  objc_sync_exit(obj);
}

- (void)accountStoreDidChange:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ICAccountUtilities *)v4 currentICloudAccountState];
  v6 = [v5 copy];

  [(ICAccountUtilities *)v4 invalidateCache];
  objc_sync_exit(v4);

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"ICAccountUtilitiesStoreDidChangeNotification" object:v4 userInfo:v6];
}

- (void)performBlockInPersonaContext:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICAccountUtilities *)self iCloudACAccountWithIdentifier:v7];
  v9 = objc_opt_class();
  v10 = [v8 accountPropertyForKey:*MEMORY[0x1E69597A0]];
  v11 = ICDynamicCast(v9, v10);

  Helper_x8__OBJC_CLASS___UMUserManager = gotLoadHelper_x8__OBJC_CLASS___UMUserManager(v12);
  v15 = [*(v14 + 104) sharedManager];
  v16 = [v15 currentPersona];
  if ([v11 length] || !v11 && (objc_msgSend(v15, "currentUser"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "userType"), v21, v22 != 1))
  {
    v17 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountUtilities performBlockInPersonaContext:forAccountIdentifier:];
    }

    v36 = 0;
    v18 = [v16 copyCurrentPersonaContextWithError:&v36];
    v19 = v36;
    if (!v19)
    {
      v27 = [v16 generateAndRestorePersonaContextWithPersonaUniqueString:v11];
      v6[2](v6);
      v28 = [v16 restorePersonaWithSavedPersonaContext:v18];
      goto LABEL_17;
    }

    v20 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICAccountUtilities performBlockInPersonaContext:forAccountIdentifier:];
    }

LABEL_7:

    v6[2](v6);
LABEL_17:

    goto LABEL_18;
  }

  v23 = [v16 isProxy];
  v24 = os_log_create("com.apple.notes", "Accounts");
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
  if (v23)
  {
    if (v25)
    {
      [ICAccountUtilities performBlockInPersonaContext:forAccountIdentifier:];
    }

    v35 = 0;
    v18 = [v16 copyCurrentPersonaContextWithError:&v35];
    v19 = v35;
    if (!v19)
    {
      Helper_x8__OBJC_CLASS___UMUserPersonaAttributes = gotLoadHelper_x8__OBJC_CLASS___UMUserPersonaAttributes(v26);
      v31 = [*(v30 + 136) personaAttributesForPersonaType:{0, Helper_x8__OBJC_CLASS___UMUserPersonaAttributes}];
      v32 = [v31 userPersonaUniqueString];
      v33 = [v16 generateAndRestorePersonaContextWithPersonaUniqueString:v32];

      v6[2](v6);
      v34 = [v16 restorePersonaWithSavedPersonaContext:v18];

      goto LABEL_17;
    }

    v20 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICAccountUtilities performBlockInPersonaContext:forAccountIdentifier:];
    }

    goto LABEL_7;
  }

  if (v25)
  {
    [ICAccountUtilities performBlockInPersonaContext:forAccountIdentifier:];
  }

  v6[2](v6);
LABEL_18:
}

- (void)createDirectoryIfNecessaryUsingURL:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v11];

  if (!v6 || (v11 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = 0;
    [v7 createDirectoryAtURL:v3 withIntermediateDirectories:0 attributes:0 error:&v10];
    v8 = v10;

    if (v8)
    {
      v9 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ICAccountUtilities createDirectoryIfNecessaryUsingURL:];
      }
    }
  }
}

id __42__ICAccountUtilities_registerStateHandler__block_invoke()
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = [MEMORY[0x1E695DF90] dictionary];
  v0 = [MEMORY[0x1E6959A48] defaultStore];
  v25 = *MEMORY[0x1E69596C0];
  [v0 accountIdentifiersEnabledForDataclass:?];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v1 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v28;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v28 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = [v0 accountWithIdentifier:v5];
        if (v6)
        {
          v7 = [MEMORY[0x1E695DF90] dictionary];
          v8 = [v6 accountType];
          v9 = [v8 identifier];
          v10 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = &stru_1F4FCDA88;
          }

          [v7 setObject:v11 forKeyedSubscript:@"accountType"];

          v12 = [v6 username];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = &stru_1F4FCDA88;
          }

          [v7 setObject:v14 forKeyedSubscript:@"username"];

          v15 = [v6 aa_personID];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = &stru_1F4FCDA88;
          }

          [v7 setObject:v17 forKeyedSubscript:@"dsid"];

          if ([v6 aa_isManagedAppleID])
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          [v7 setObject:v18 forKeyedSubscript:@"isManaged"];
          v19 = [v6 parentAccountIdentifier];

          if (v19)
          {
            v20 = [v6 parentAccountIdentifier];
            [v7 setObject:v20 forKeyedSubscript:@"parentAccountIdentifier"];
          }

          v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "ic_isNotesMigrated")}];
          [v7 setObject:v21 forKeyedSubscript:@"notesMigrated"];

          v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isEnabledForDataclass:", v25)}];
          [v7 setObject:v22 forKeyedSubscript:@"notesEnabled"];

          [v26 setObject:v7 forKeyedSubscript:v5];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v2);
  }

  return v26;
}

- (void)performBlockInPersonaContext:forAccountIdentifier:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1D4576000, v1, OS_LOG_TYPE_DEBUG, "Adopting persona {persona: %@, accountID: %@}", v2, 0x16u);
}

- (void)performBlockInPersonaContext:forAccountIdentifier:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1D4576000, v0, OS_LOG_TYPE_DEBUG, "Using default persona {accountID: %@}", v1, 0xCu);
}

- (void)performBlockInPersonaContext:forAccountIdentifier:.cold.4()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1D4576000, v0, OS_LOG_TYPE_DEBUG, "Adopting personal persona {accountID: %@}", v1, 0xCu);
}

- (void)createDirectoryIfNecessaryUsingURL:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1D4576000, v1, OS_LOG_TYPE_ERROR, "Could not create temporary directory {url: %@, error: %@}", v2, 0x16u);
}

@end