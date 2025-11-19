@interface CDMUaaPNLModelProvider
+ (id)createModelConfigurationFromURL:(id)a3 locale:(id)a4 error:(id *)a5;
+ (id)createModelConfigurationsFromURLs:(id)a3 locale:(id)a4 error:(id *)a5;
+ (id)getCoreModelConfigurationForLocale:(id)a3 bundlePath:(id)a4 error:(id *)a5;
+ (id)modelURLsForInstalledApps;
+ (id)retrieveAllAppBundleURLs;
+ (id)retrieveModelURLFromBundleURL:(id)a3;
- (CDMUaaPNLModelProvider)init;
- (id)foregroundBundeIdentifiers;
- (id)getForegroundModelConfigForLocale:(id)a3 error:(id *)a4;
- (id)getModelConfigsForLocale:(id)a3 error:(id *)a4;
- (id)getModelURLForForegroundApp;
- (id)getModelURLs:(id *)a3;
- (id)getModelURLsFromDefaults;
@end

@implementation CDMUaaPNLModelProvider

- (id)foregroundBundeIdentifiers
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = dispatch_semaphore_create(0);
  frontboardConfig = self->_frontboardConfig;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __52__CDMUaaPNLModelProvider_foregroundBundeIdentifiers__block_invoke;
  v17 = &unk_1E862F958;
  v6 = v3;
  v18 = v6;
  v7 = v4;
  v19 = v7;
  [(FBSDisplayLayoutMonitorConfiguration *)frontboardConfig setTransitionHandler:&v14];
  v8 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:{self->_frontboardConfig, v14, v15, v16, v17}];
  v9 = dispatch_time(0, 500000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CDMUaaPNLModelProvider foregroundBundeIdentifiers]";
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Timeout while fetching foreground app bundle identifiers.", buf, 0xCu);
    }

    [v8 invalidate];
    v11 = 0;
  }

  else
  {
    [v8 invalidate];
    v11 = v6;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __52__CDMUaaPNLModelProvider_foregroundBundeIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [a3 elements];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 isUIApplicationElement])
          {
            v10 = [v9 bundleIdentifier];
            if (v10)
            {
              [*(a1 + 32) addObject:v10];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)getModelURLsFromDefaults
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[CDMUserDefaultsUtils readUaaPNLAppModelPaths];
  v3 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [v4 objectForKey:{*(*(&v15 + 1) + 8 * v9), v15}];
        v7 = [v11 objectForKey:@"appDataPath"];

        if (v7)
        {
          v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
          [v3 addObject:v12];
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)getModelURLForForegroundApp
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [(CDMUaaPNLModelProvider *)self foregroundBundeIdentifiers];
  v3 = v2;
  if (v2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v22 = v3;
      v7 = 0;
      v8 = 0;
      v9 = *v24;
      while (2)
      {
        v10 = 0;
        v11 = v7;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v7 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:*(*(&v23 + 1) + 8 * v10)];

          v12 = [v7 bundleURL];

          if (!v12)
          {
            v8 = 0;
            goto LABEL_19;
          }

          v13 = [v12 URLByAppendingPathComponent:@"uaap"];

          v8 = [v13 URLByAppendingPathComponent:@"customLu"];

          v14 = [MEMORY[0x1E696AC08] defaultManager];
          v15 = [v8 path];
          v16 = [v14 fileExistsAtPath:v15];

          if (v16)
          {
            v17 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v21 = [v7 bundleIdentifier];
              *buf = 136315394;
              v28 = "[CDMUaaPNLModelProvider getModelURLForForegroundApp]";
              v29 = 2112;
              v30 = v21;
              _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s UaaP detected foreground app with model available: %@", buf, 0x16u);
            }

            v18 = v4;
            goto LABEL_18;
          }

          ++v10;
          v11 = v7;
        }

        while (v6 != v10);
        v6 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v17 = v7;
      v18 = v8;
      v7 = v4;
      v8 = 0;
LABEL_18:

      v4 = v18;
LABEL_19:
      v3 = v22;

      v4 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)getModelURLs:(id *)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [(CDMUaaPNLModelProvider *)self getModelURLsFromDefaults];
  if ([v4 count])
  {
    v5 = v4;
LABEL_5:
    a3 = v5;
    v6 = v5;
    goto LABEL_6;
  }

  v6 = +[CDMUaaPNLModelProvider modelURLsForInstalledApps];

  if ([v6 count])
  {
    v5 = v6;
    goto LABEL_5;
  }

  if (a3)
  {
    v9 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"No UaaP custom NLU model config found. Did you configure the model path?";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a3 = [v9 errorWithDomain:@"UaaPNLService" code:1 userInfo:v10];

    a3 = 0;
  }

LABEL_6:

  v7 = *MEMORY[0x1E69E9840];

  return a3;
}

- (id)getForegroundModelConfigForLocale:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CDMUaaPNLModelProvider *)self getModelURLForForegroundApp];
  if (v7)
  {
    v8 = [CDMUaaPNLModelProvider createModelConfigurationFromURL:v7 locale:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getModelConfigsForLocale:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CDMUaaPNLModelProvider *)self getModelURLs:a4];
  if ([v7 count])
  {
    v8 = [CDMUaaPNLModelProvider createModelConfigurationsFromURLs:v7 locale:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CDMUaaPNLModelProvider)init
{
  v6.receiver = self;
  v6.super_class = CDMUaaPNLModelProvider;
  v2 = [(CDMUaaPNLModelProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
    frontboardConfig = v2->_frontboardConfig;
    v2->_frontboardConfig = v3;
  }

  return v2;
}

+ (id)getCoreModelConfigurationForLocale:(id)a3 bundlePath:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[CDMUserDefaultsUtils readUaaPNLCoreModelPath];
  if (!v9 || ([MEMORY[0x1E695DFF8] fileURLWithPath:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@/", v8, @"model-core"];
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:1];
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v18 = "+[CDMUaaPNLModelProvider getCoreModelConfigurationForLocale:bundlePath:error:]";
      v19 = 2112;
      v20 = v11;
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s UaaP Core model path not defined in user defaults, using default path: %@", buf, 0x16u);
    }
  }

  v13 = [v10 URLByAppendingPathComponent:v7 isDirectory:1];
  v14 = [MEMORY[0x1E69D14C8] configurationFromDirectoryUrl:v13 error:a5];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)createModelConfigurationsFromURLs:(id)a3 locale:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v23;
    *&v12 = 136315394;
    v20 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [CDMUaaPNLModelProvider createModelConfigurationFromURL:*(*(&v22 + 1) + 8 * v15) locale:v8 error:a5, v20];
        if (v16)
        {
          [v9 addObject:v16];
        }

        else
        {
          v17 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v21 = [*a5 description];
            *buf = v20;
            v27 = "+[CDMUaaPNLModelProvider createModelConfigurationsFromURLs:locale:error:]";
            v28 = 2112;
            v29 = v21;
            _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: Error creating UaaP model configuration %@", buf, 0x16u);
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)createModelConfigurationFromURL:(id)a3 locale:(id)a4 error:(id *)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 URLByAppendingPathComponent:a4 isDirectory:1];
  if (v6)
  {
    a5 = [MEMORY[0x1E69D14C8] configurationFromDirectoryUrl:v6 error:a5];
  }

  else if (a5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"Unable to build fullModelUrl from baseURL and locale";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a5 = [v7 errorWithDomain:@"UaaPNLService" code:1 userInfo:v8];

    a5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return a5;
}

+ (id)retrieveModelURLFromBundleURL:(id)a3
{
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v4 = Unique;
    v5 = CFBundleCopyResourceURL(Unique, @"customLu", 0, @"uaap");
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)retrieveAllAppBundleURLs
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) URL];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)modelURLsForInstalledApps
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:5];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = +[CDMUaaPNLModelProvider retrieveAllAppBundleURLs];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [a1 retrieveModelURLFromBundleURL:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

@end