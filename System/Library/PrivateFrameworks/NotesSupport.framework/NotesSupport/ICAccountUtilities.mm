@interface ICAccountUtilities
+ (id)sharedInstance;
- (ACAccount)primaryICloudACAccount;
- (BOOL)didChooseToMigratePrimaryICloudAccount;
- (BOOL)hasSyncingAccount;
- (BOOL)isManagedACAccountWithIdentifier:(id)identifier;
- (BOOL)primaryICloudAccountEnabled;
- (id)allICloudACAccounts;
- (id)applicationDataContainerURLForAccountIdentifier:(id)identifier;
- (id)applicationDocumentsURLForAccountIdentifier:(id)identifier;
- (id)iCloudACAccountWithIdentifier:(id)identifier;
- (id)initForObservingAccountStoreChanges:(BOOL)changes;
- (id)temporaryDirectoryURLForAccountIdentifier:(id)identifier;
- (void)accountStoreDidChange:(id)change;
- (void)createDirectoryIfNecessaryUsingURL:(id)l;
- (void)dealloc;
- (void)internalInvalidatePrimaryICloudACAccount;
- (void)invalidateCache;
- (void)performBlockInPersonaContext:(id)context forAccountIdentifier:(id)identifier;
- (void)updateICloudACAccountFromStore;
@end

@implementation ICAccountUtilities

+ (id)sharedInstance
{
  block = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __36__ICAccountUtilities_sharedInstance__block_invoke;
  v7 = &__block_descriptor_40_e5_v8__0l;
  selfCopy = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, &block);
  }

  v2 = sharedInstance_sharedInstance;
  if (!sharedInstance_sharedInstance)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "((sharedInstance) != nil)", "+[ICAccountUtilities sharedInstance]", 1, 0, @"Expected non-nil value for '%s'", "sharedInstance", block, v5, v6, v7, selfCopy);
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
  accountStore = [(ICAccountUtilities *)self accountStore];
  aa_appleAccounts = [accountStore aa_appleAccounts];

  return aa_appleAccounts;
}

- (BOOL)hasSyncingAccount
{
  accountStore = [(ICAccountUtilities *)self accountStore];
  v3 = [accountStore accountIdentifiersEnabledForDataclass:*MEMORY[0x1E69596C0]];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)initForObservingAccountStoreChanges:(BOOL)changes
{
  changesCopy = changes;
  v13.receiver = self;
  v13.super_class = ICAccountUtilities;
  v4 = [(ICAccountUtilities *)&v13 init];
  if (v4)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = v4->_accountStore;
    v4->_accountStore = defaultStore;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accountByIdentifier = v4->_accountByIdentifier;
    v4->_accountByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accountIsManagedByIdentifier = v4->_accountIsManagedByIdentifier;
    v4->_accountIsManagedByIdentifier = v9;

    if (changesCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v4 selector:sel_accountStoreDidChange_ name:*MEMORY[0x1E6959968] object:v4->_accountStore];
    }
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICAccountUtilities;
  [(ICAccountUtilities *)&v4 dealloc];
}

- (void)updateICloudACAccountFromStore
{
  v5 = *MEMORY[0x1E69E9840];
  currentICloudAccountState = [self currentICloudAccountState];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1D4576000, a2, OS_LOG_TYPE_DEBUG, "Updated iCloud Apple Account from store {state: %@}", v4, 0xCu);
}

- (ACAccount)primaryICloudACAccount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ICAccountUtilities *)selfCopy isPrimaryICloudACAccountValid])
  {
    v3 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccountUtilities *)v3 primaryICloudACAccount];
    }
  }

  else
  {
    [(ICAccountUtilities *)selfCopy updateICloudACAccountFromStore];
  }

  v4 = selfCopy->_primaryICloudACAccount;
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)iCloudACAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    accountByIdentifier = [(ICAccountUtilities *)selfCopy accountByIdentifier];
    v7 = [accountByIdentifier objectForKeyedSubscript:identifierCopy];

    if (!v7)
    {
      accountStore = [(ICAccountUtilities *)selfCopy accountStore];
      v9 = [accountStore accountWithIdentifier:identifierCopy];
      accountByIdentifier2 = [(ICAccountUtilities *)selfCopy accountByIdentifier];
      [accountByIdentifier2 setObject:v9 forKeyedSubscript:identifierCopy];
    }

    accountByIdentifier3 = [(ICAccountUtilities *)selfCopy accountByIdentifier];
    v12 = [accountByIdentifier3 objectForKeyedSubscript:identifierCopy];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isManagedACAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_opt_class();
  accountIsManagedByIdentifier = [(ICAccountUtilities *)selfCopy accountIsManagedByIdentifier];
  v8 = [accountIsManagedByIdentifier objectForKeyedSubscript:identifierCopy];
  v9 = ICDynamicCast(v6, v8);

  if (v9)
  {
    LOBYTE(mCIsManaged) = [v9 BOOLValue];
  }

  else
  {
    accountStore = [(ICAccountUtilities *)selfCopy accountStore];
    v12 = [accountStore accountWithIdentifier:identifierCopy];

    if ([v12 ic_isManagedAppleID])
    {
      mCIsManaged = 1;
    }

    else
    {
      mCIsManaged = [v12 MCIsManaged];
    }

    v13 = [MEMORY[0x1E696AD98] numberWithBool:mCIsManaged];
    accountIsManagedByIdentifier2 = [(ICAccountUtilities *)selfCopy accountIsManagedByIdentifier];
    [accountIsManagedByIdentifier2 setObject:v13 forKeyedSubscript:identifierCopy];
  }

  objc_sync_exit(selfCopy);
  return mCIsManaged;
}

- (id)applicationDocumentsURLForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = [applicationDocumentsURLForAccountIdentifier__urlsByAccountIdentifier objectForKeyedSubscript:identifierCopy];
  v7 = v14[5];
  v14[5] = v6;

  if (!v14[5])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__ICAccountUtilities_applicationDocumentsURLForAccountIdentifier___block_invoke_2;
    v10[3] = &unk_1E8484848;
    v12 = &v13;
    v11 = identifierCopy;
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

- (id)applicationDataContainerURLForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = [applicationDataContainerURLForAccountIdentifier__urlsByAccountIdentifier objectForKeyedSubscript:identifierCopy];
  v7 = v14[5];
  v14[5] = v6;

  if (!v14[5])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__ICAccountUtilities_applicationDataContainerURLForAccountIdentifier___block_invoke_2;
    v10[3] = &unk_1E8484848;
    v12 = &v13;
    v11 = identifierCopy;
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

- (id)temporaryDirectoryURLForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = [temporaryDirectoryURLForAccountIdentifier__urlsByAccountIdentifier objectForKeyedSubscript:identifierCopy];
  v7 = v14[5];
  v14[5] = v6;

  if (!v14[5])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__ICAccountUtilities_temporaryDirectoryURLForAccountIdentifier___block_invoke_2;
    v10[3] = &unk_1E8484870;
    v10[4] = self;
    v11 = identifierCopy;
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
  primaryICloudACAccount = [(ICAccountUtilities *)self primaryICloudACAccount];
  v3 = [primaryICloudACAccount isEnabledForDataclass:*MEMORY[0x1E69596C0]];

  return v3;
}

- (BOOL)didChooseToMigratePrimaryICloudAccount
{
  primaryICloudACAccount = [(ICAccountUtilities *)self primaryICloudACAccount];
  v3 = [primaryICloudACAccount objectForKeyedSubscript:@"notesIsUsingCloudKit"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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
  accountByIdentifier = [(ICAccountUtilities *)obj accountByIdentifier];
  [accountByIdentifier removeAllObjects];

  accountIsManagedByIdentifier = [(ICAccountUtilities *)obj accountIsManagedByIdentifier];
  [accountIsManagedByIdentifier removeAllObjects];

  objc_sync_exit(obj);
}

- (void)accountStoreDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentICloudAccountState = [(ICAccountUtilities *)selfCopy currentICloudAccountState];
  v6 = [currentICloudAccountState copy];

  [(ICAccountUtilities *)selfCopy invalidateCache];
  objc_sync_exit(selfCopy);

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICAccountUtilitiesStoreDidChangeNotification" object:selfCopy userInfo:v6];
}

- (void)performBlockInPersonaContext:(id)context forAccountIdentifier:(id)identifier
{
  contextCopy = context;
  identifierCopy = identifier;
  v8 = [(ICAccountUtilities *)self iCloudACAccountWithIdentifier:identifierCopy];
  v9 = objc_opt_class();
  v10 = [v8 accountPropertyForKey:*MEMORY[0x1E69597A0]];
  v11 = ICDynamicCast(v9, v10);

  Helper_x8__OBJC_CLASS___UMUserManager = gotLoadHelper_x8__OBJC_CLASS___UMUserManager(v12);
  sharedManager = [*(v14 + 104) sharedManager];
  currentPersona = [sharedManager currentPersona];
  if ([v11 length] || !v11 && (objc_msgSend(sharedManager, "currentUser"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "userType"), v21, v22 != 1))
  {
    v17 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountUtilities performBlockInPersonaContext:forAccountIdentifier:];
    }

    v36 = 0;
    v18 = [currentPersona copyCurrentPersonaContextWithError:&v36];
    v19 = v36;
    if (!v19)
    {
      v27 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:v11];
      contextCopy[2](contextCopy);
      v28 = [currentPersona restorePersonaWithSavedPersonaContext:v18];
      goto LABEL_17;
    }

    v20 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICAccountUtilities performBlockInPersonaContext:forAccountIdentifier:];
    }

LABEL_7:

    contextCopy[2](contextCopy);
LABEL_17:

    goto LABEL_18;
  }

  v23 = [currentPersona isProxy];
  v24 = os_log_create("com.apple.notes", "Accounts");
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
  if (v23)
  {
    if (v25)
    {
      [ICAccountUtilities performBlockInPersonaContext:forAccountIdentifier:];
    }

    v35 = 0;
    v18 = [currentPersona copyCurrentPersonaContextWithError:&v35];
    v19 = v35;
    if (!v19)
    {
      Helper_x8__OBJC_CLASS___UMUserPersonaAttributes = gotLoadHelper_x8__OBJC_CLASS___UMUserPersonaAttributes(v26);
      v31 = [*(v30 + 136) personaAttributesForPersonaType:{0, Helper_x8__OBJC_CLASS___UMUserPersonaAttributes}];
      userPersonaUniqueString = [v31 userPersonaUniqueString];
      v33 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:userPersonaUniqueString];

      contextCopy[2](contextCopy);
      v34 = [currentPersona restorePersonaWithSavedPersonaContext:v18];

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

  contextCopy[2](contextCopy);
LABEL_18:
}

- (void)createDirectoryIfNecessaryUsingURL:(id)l
{
  lCopy = l;
  v11 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path isDirectory:&v11];

  if (!v6 || (v11 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = 0;
    [defaultManager2 createDirectoryAtURL:lCopy withIntermediateDirectories:0 attributes:0 error:&v10];
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