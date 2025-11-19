@interface BCPluginLoader
+ (id)_validatedBundleAtURL:(id)a3;
+ (id)loadPluginBundlesAtURL:(id)a3;
@end

@implementation BCPluginLoader

+ (id)_validatedBundleAtURL:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 lastPathComponent];
  v5 = [v4 hasSuffix:@"bundle"];

  if (!v5)
  {
    v13 = 0;
    goto LABEL_25;
  }

  v6 = pbb_discover_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v3;
    _os_log_impl(&dword_241E55000, v6, OS_LOG_TYPE_DEFAULT, "Checking plugin at %{public}@", buf, 0xCu);
  }

  v27 = 0;
  v7 = *MEMORY[0x277CBE868];
  v26 = 0;
  v8 = [v3 getResourceValue:&v27 forKey:v7 error:&v26];
  v9 = v27;
  v10 = v26;
  if ((v8 & 1) == 0)
  {
    v12 = pbb_discover_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v3;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_241E55000, v12, OS_LOG_TYPE_DEFAULT, "Couldn't get value for the directory at %{public}@: %@", buf, 0x16u);
    }

    v13 = 0;
    goto LABEL_24;
  }

  if ([v9 BOOLValue])
  {
    goto LABEL_6;
  }

  v25 = 0;
  v14 = *MEMORY[0x277CBE8B0];
  v24 = 0;
  v15 = [v3 getResourceValue:&v25 forKey:v14 error:&v24];
  v16 = v25;

  v17 = v24;
  if (v15)
  {
    if ([v16 BOOLValue])
    {
      v9 = v16;
      v10 = v17;
LABEL_6:
      v11 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
      v12 = v11;
      if (v11)
      {
        v12 = v11;
        v13 = v12;
      }

      else
      {
        v21 = pbb_discover_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v3;
          _os_log_impl(&dword_241E55000, v21, OS_LOG_TYPE_DEFAULT, "Couldn't create plugin at %{public}@", buf, 0xCu);
        }

        v13 = 0;
      }

      goto LABEL_24;
    }

    v12 = pbb_discover_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v3;
      v18 = "Skipping file at %{public}@ because it isn't a directory";
      v19 = v12;
      v20 = 12;
      goto LABEL_22;
    }
  }

  else
  {
    v12 = pbb_discover_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v3;
      v30 = 2112;
      v31 = v17;
      v18 = "Couldn't get value for the directory at %{public}@: %@";
      v19 = v12;
      v20 = 22;
LABEL_22:
      _os_log_impl(&dword_241E55000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }
  }

  v13 = 0;
  v10 = v17;
  v9 = v16;
LABEL_24:

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)loadPluginBundlesAtURL:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v4)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE868], *MEMORY[0x277CBE8B0], 0}];
    v8 = [v6 enumeratorAtURL:v4 includingPropertiesForKeys:v7 options:1 errorHandler:&__block_literal_global];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [a1 _validatedBundleAtURL:*(*(&v18 + 1) + 8 * i)];
          if (v14)
          {
            [v5 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  v15 = [v5 copy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __41__BCPluginLoader_loadPluginBundlesAtURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = pbb_discover_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __41__BCPluginLoader_loadPluginBundlesAtURL___block_invoke_cold_1(v4, v5, v6);
  }

  return 1;
}

void __41__BCPluginLoader_loadPluginBundlesAtURL___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_241E55000, log, OS_LOG_TYPE_ERROR, "Error while scanning for plugins at %{public}@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end