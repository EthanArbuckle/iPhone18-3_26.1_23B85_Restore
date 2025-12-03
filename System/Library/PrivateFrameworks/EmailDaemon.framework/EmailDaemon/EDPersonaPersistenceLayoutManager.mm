@interface EDPersonaPersistenceLayoutManager
+ (OS_os_log)log;
+ (id)baseAccountDirectoryForPersonaIdentifier:(id)identifier;
+ (id)baseAccountDirectoryPathForPersonaIdentifier:(id)identifier;
+ (id)iOS_baseAccountDirectoryPathForPersonaIdentifier:(id)identifier;
+ (id)macOS_baseAccountDirectoryPathForPersonaIdentifier:(id)identifier;
@end

@implementation EDPersonaPersistenceLayoutManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EDPersonaPersistenceLayoutManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_78 != -1)
  {
    dispatch_once(&log_onceToken_78, block);
  }

  v2 = log_log_78;

  return v2;
}

void __40__EDPersonaPersistenceLayoutManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_78;
  log_log_78 = v1;
}

+ (id)baseAccountDirectoryForPersonaIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [self baseAccountDirectoryPathForPersonaIdentifier:identifier];
  v5 = [v3 fileURLWithPath:v4 isDirectory:1];

  return v5;
}

+ (id)baseAccountDirectoryPathForPersonaIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v18 = 0;
  v7 = [currentPersona copyCurrentPersonaContextWithError:&v18];
  v8 = v18;
  if (v8)
  {
    v9 = v8;
    v10 = +[EDPersonaPersistenceLayoutManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      ef_publicDescription = [v9 ef_publicDescription];
      [(EDPersonaPersistenceLayoutManager *)identifierCopy baseAccountDirectoryPathForPersonaIdentifier:ef_publicDescription, v19];
    }

    v12 = 0;
  }

  else
  {
    v9 = [currentPersona generateAndRestorePersonaContextWithIdentityString:identifierCopy];
    if (v9)
    {
      v13 = +[EDPersonaPersistenceLayoutManager log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        ef_publicDescription2 = [v9 ef_publicDescription];
        [(EDPersonaPersistenceLayoutManager *)identifierCopy baseAccountDirectoryPathForPersonaIdentifier:ef_publicDescription2, v19];
      }

      v12 = 0;
    }

    else
    {
      v12 = [self iOS_baseAccountDirectoryPathForPersonaIdentifier:identifierCopy];
      v9 = 0;
    }

    v15 = [currentPersona restorePersonaWithSavedPersonaContext:v7];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)macOS_baseAccountDirectoryPathForPersonaIdentifier:(id)identifier
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"com.apple.MailPersonaStorage"];
  path = [v4 path];

  return path;
}

+ (id)iOS_baseAccountDirectoryPathForPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 1;
  v4 = container_create_or_lookup_app_group_paths_for_current_user();
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:xpc_dictionary_get_count(v4)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__EDPersonaPersistenceLayoutManager_iOS_baseAccountDirectoryPathForPersonaIdentifier___block_invoke;
    v12[3] = &unk_1E8255D98;
    v12[4] = v5;
    xpc_dictionary_apply(v4, v12);
    v6 = [v5 objectForKeyedSubscript:@"com.apple.MailPersonaStorage"];
    absoluteString = [v6 absoluteString];

    if (!absoluteString)
    {
      v8 = +[EDPersonaPersistenceLayoutManager log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [EDPersonaPersistenceLayoutManager iOS_baseAccountDirectoryPathForPersonaIdentifier:v8];
      }
    }

    v9 = absoluteString;

    v10 = v9;
  }

  else
  {
    v9 = +[EDPersonaPersistenceLayoutManager log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(EDPersonaPersistenceLayoutManager *)identifierCopy iOS_baseAccountDirectoryPathForPersonaIdentifier:v9];
    }

    v10 = 0;
  }

  return v10;
}

uint64_t __86__EDPersonaPersistenceLayoutManager_iOS_baseAccountDirectoryPathForPersonaIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v7 = MEMORY[0x1E695DFF8];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v5)];
  v9 = [v7 URLWithString:v8 relativeToURL:0];

  [*(a1 + 32) setObject:v9 forKey:v6];
  return 1;
}

+ (void)baseAccountDirectoryPathForPersonaIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_0(a1, a2, a3, 5.8382e-34);
  _os_log_fault_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_FAULT, "Failed to create saved persona context for identifier: %{public}@ error: %{public}@ ", v4, 0x16u);
}

+ (void)baseAccountDirectoryPathForPersonaIdentifier:(uint64_t)a3 .cold.2(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_0(a1, a2, a3, 5.8382e-34);
  _os_log_fault_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_FAULT, "Failed to generate and restore persona context with identifier: %{public}@ error: %{public}@ ", v4, 0x16u);
}

+ (void)iOS_baseAccountDirectoryPathForPersonaIdentifier:(os_log_t)log .cold.2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138543618;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Failed to create container with identifier %{public}@ due to container manager error: %llu", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end