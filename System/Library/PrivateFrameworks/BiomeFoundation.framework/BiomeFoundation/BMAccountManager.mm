@interface BMAccountManager
- (BMAccountManager)initWithUseCase:(id)case;
- (id)_accountIdentifiers;
- (id)accounts;
- (id)deviceIdentifiersForAccount:(id)account;
- (void)_accountIdentifiers;
@end

@implementation BMAccountManager

- (BMAccountManager)initWithUseCase:(id)case
{
  caseCopy = case;
  v10.receiver = self;
  v10.super_class = BMAccountManager;
  v5 = [(BMAccountManager *)&v10 init];
  if (v5)
  {
    v6 = [BMPaths sharedSyncDirectoryForDomain:0];
    if (+[BMPaths isTestPathOverridden]|| @"__na__" == caseCopy)
    {
      v7 = [BMFileManager fileManagerWithDirectAccessToDirectory:v6 cachingOptions:0];
    }

    else
    {
      v7 = [BMFileManager fileManagerWithMediatedAccessToDirectory:v6 useCase:@"__legacy__" domain:0 user:geteuid()];
    }

    fileManager = v5->_fileManager;
    v5->_fileManager = v7;
  }

  return v5;
}

- (id)_accountIdentifiers
{
  p_fileManager = &self->_fileManager;
  fileManager = self->_fileManager;
  directory = [(BMFileManager *)fileManager directory];
  v10 = 0;
  v5 = [(BMFileManager *)fileManager contentsOfDirectoryAtPath:directory error:&v10];
  v6 = v10;

  v7 = [v5 _pas_filteredArrayWithTest:&__block_literal_global_4];

  if (!v7)
  {
    v8 = __biome_log_for_category(11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(BMAccountManager *)p_fileManager _accountIdentifiers];
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)accounts
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _accountIdentifiers = [(BMAccountManager *)self _accountIdentifiers];
  v5 = [_accountIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(_accountIdentifiers);
        }

        v9 = [[BMAccount alloc] initWithIdentifier:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [_accountIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)deviceIdentifiersForAccount:(id)account
{
  v48 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v34 = objc_opt_new();
  v31 = accountCopy;
  v5 = [BMPaths pathForSharedSyncWithAccount:accountCopy streamType:2 domain:0];
  selfCopy = self;
  fileManager = self->_fileManager;
  v40 = 0;
  v8 = [(BMFileManager *)fileManager contentsOfDirectoryAtPath:v5 error:&v40];
  v9 = v40;
  if (v9)
  {
    v10 = v9;
    v11 = __biome_log_for_category(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(BMAccountManager *)v31 deviceIdentifiersForAccount:v10, v11];
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v37;
    *&v13 = 138412802;
    v30 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        v18 = [v5 stringByAppendingPathComponent:{v17, v30}];
        v19 = +[BMStoreDirectory remoteDevices];
        v20 = [v18 stringByAppendingPathComponent:v19];

        v21 = selfCopy->_fileManager;
        v35 = 0;
        v22 = [(BMFileManager *)v21 contentsOfDirectoryAtPath:v20 error:&v35];
        v23 = v35;
        if (v23)
        {
          v24 = v23;
          v25 = __biome_log_for_category(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            identifier = [v31 identifier];
            *buf = v30;
            v42 = identifier;
            v43 = 2114;
            v44 = v17;
            v45 = 2112;
            v46 = v24;
            _os_log_error_impl(&dword_1AC15D000, v25, OS_LOG_TYPE_ERROR, "Failed to retrieve device list for account identifier %@ stream %{public}@ with error: %@", buf, 0x20u);
          }
        }

        v26 = [v22 _pas_filteredArrayWithTest:&__block_literal_global_11];
        [v34 addObjectsFromArray:v26];
      }

      v14 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v14);
  }

  allObjects = [v34 allObjects];

  v28 = *MEMORY[0x1E69E9840];

  return allObjects;
}

BOOL __48__BMAccountManager_deviceIdentifiersForAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4 != 0;
}

- (void)_accountIdentifiers
{
  v7 = *MEMORY[0x1E69E9840];
  directory = [*self directory];
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(&dword_1AC15D000, a3, OS_LOG_TYPE_FAULT, "Failed to enumerate accounts in path: %@ with error: %@", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)deviceIdentifiersForAccount:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a1 identifier];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_1AC15D000, a3, OS_LOG_TYPE_ERROR, "Failed to retrieve streams list for account identifier %@ with error: %@", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end