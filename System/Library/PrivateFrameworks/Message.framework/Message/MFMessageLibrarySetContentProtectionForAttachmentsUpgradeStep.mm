@interface MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep
+ (id)log;
- (BOOL)performMigrationStep;
- (MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep)initWithBaseAttachmentsDirectory:(id)directory;
@end

@implementation MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_22 != -1)
  {
    dispatch_once(&log_onceToken_22, block);
  }

  v2 = log_log_22;

  return v2;
}

void __68__MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_22;
  log_log_22 = v1;
}

- (MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep)initWithBaseAttachmentsDirectory:(id)directory
{
  directoryCopy = directory;
  v9.receiver = self;
  v9.super_class = MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep;
  v6 = [(MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseAttachmentsDirectory, directory);
  }

  return v7;
}

- (BOOL)performMigrationStep
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = +[MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Starting", buf, 2u);
  }

  obja = [MEMORY[0x1E696AC08] defaultManager];
  baseAttachmentsDirectory = [(MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep *)self baseAttachmentsDirectory];
  v33 = *MEMORY[0x1E695DB78];
  v45[0] = *MEMORY[0x1E695DB78];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v6 = [obja enumeratorAtURL:baseAttachmentsDirectory includingPropertiesForKeys:v5 options:0 errorHandler:&__block_literal_global_48];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v7)
  {
    v32 = *v37;
    v29 = *MEMORY[0x1E696A3A0];
    v28 = *MEMORY[0x1E696A380];
    *&v8 = 138412546;
    v27 = v8;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        v35 = 0;
        v11 = [v10 getResourceValue:&v35 forKey:v33 error:{0, v27}];
        v12 = v35;
        v13 = v12;
        if (v11 && ([v12 BOOLValue] & 1) == 0)
        {
          v14 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v10 options:0 error:0];
          fileAttributes = [v14 fileAttributes];
          v16 = [fileAttributes objectForKey:v29];

          if (([v28 isEqualToString:v16] & 1) == 0)
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            path = [v10 path];
            v34 = 0;
            v19 = [defaultManager mf_protectFileAtPath:path withClass:2 error:&v34];
            v20 = v34;

            if ((v19 & 1) == 0)
            {
              v21 = +[MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep log];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                path2 = [v10 path];
                ef_publicDescription = [v20 ef_publicDescription];
                *buf = v27;
                v41 = path2;
                v42 = 2114;
                v43 = ef_publicDescription;
                _os_log_error_impl(&dword_1B0389000, v21, OS_LOG_TYPE_ERROR, "Error setting the protection class on %@: %{public}@", buf, 0x16u);
              }
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v7);
  }

  v24 = +[MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "Finished", buf, 2u);
  }

  v25 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __85__MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep_performMigrationStep__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = +[MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v5 ef_publicDescription];
    __85__MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep_performMigrationStep__block_invoke_cold_1(v4, v7, v10, v6);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void __85__MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep_performMigrationStep__block_invoke_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Compression: Failed to enumerate URL [%@] due to error [%{public}@]", buf, 0x16u);
}

@end