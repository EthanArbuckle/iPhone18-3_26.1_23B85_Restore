@interface GCConfigurationBundleFileSystemSource
- (GCConfigurationBundleFileSystemSource)init;
- (id)configurationBundleURLsForType:(id)a3;
@end

@implementation GCConfigurationBundleFileSystemSource

- (GCConfigurationBundleFileSystemSource)init
{
  v6.receiver = self;
  v6.super_class = GCConfigurationBundleFileSystemSource;
  v2 = [(GCConfigurationBundleFileSystemSource *)&v6 init];
  v3 = gc_log_create_configuration("Filesystem");
  log = v2->_log;
  v2->_log = v3;

  return v2;
}

- (id)configurationBundleURLsForType:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v21 resourceURL];
  v7 = [v6 path];
  v8 = [v7 stringByResolvingSymlinksInPath];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(GCConfigurationBundleFileSystemSource *)log configurationBundleURLsForType:v9];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __72__GCConfigurationBundleFileSystemSource_configurationBundleURLsForType___block_invoke;
  v27[3] = &unk_1E8413C08;
  v27[4] = self;
  v22 = v5;
  v11 = [v5 enumeratorAtURL:v9 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:7 errorHandler:v27];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = self->_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(GCConfigurationBundleFileSystemSource *)v28 configurationBundleURLsForType:v17, v16, &v29];
        }

        [v4 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v13);
  }

  v18 = [GCFuture futureWithResult:v4];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

uint64_t __72__GCConfigurationBundleFileSystemSource_configurationBundleURLsForType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __72__GCConfigurationBundleFileSystemSource_configurationBundleURLsForType___block_invoke_cold_1(v4, v5);
  }

  return 1;
}

- (void)configurationBundleURLsForType:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 path];
  v6 = 138543362;
  v7 = v4;
  _os_log_debug_impl(&dword_1D2C3B000, v3, OS_LOG_TYPE_DEBUG, "Checking '%{public}@'...", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)configurationBundleURLsForType:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 path];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_1D2C3B000, v7, OS_LOG_TYPE_DEBUG, "    %@", a1, 0xCu);
}

void __72__GCConfigurationBundleFileSystemSource_configurationBundleURLsForType___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end