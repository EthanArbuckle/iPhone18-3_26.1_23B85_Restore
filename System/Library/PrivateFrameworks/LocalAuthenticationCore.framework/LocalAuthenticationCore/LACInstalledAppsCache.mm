@interface LACInstalledAppsCache
+ (id)sharedInstance;
- (id)_localizedNameForBundle:(id)a3;
- (id)_localizedNameForPath:(id)a3;
- (id)_localizedNameFromInfoDict:(id)a3 path:(id)a4;
- (id)pathForPid:(int)a3;
@end

@implementation LACInstalledAppsCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[LACInstalledAppsCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __39__LACInstalledAppsCache_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)pathForPid:(int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(LACInstalledAppsCache *)self _bundlePathForPid:?];
  if (!v4)
  {
    v5 = proc_pidpath(a3, v9, 0x1000u);
    if (v5 < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:v5 encoding:4];
    }
  }

  v6 = LACLogEnvironment();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Determined path for PID %d: %{public}@", v9, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_localizedNameFromInfoDict:(id)a3 path:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"CFBundleVisibleComponentName"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [v5 objectForKeyedSubscript:@"CFBundleDisplayName"];
    v11 = v10;
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v12 = [v5 objectForKeyedSubscript:@"CFBundleName"];
      v13 = v12;
      if (v12)
      {
        v9 = v12;
      }

      else
      {
        v14 = [v6 lastPathComponent];
        v9 = [v14 stringByDeletingPathExtension];
      }
    }
  }

  return v9;
}

- (id)_localizedNameForBundle:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AAE8];
  v6 = [v4 localizations];
  v7 = [MEMORY[0x1E695DF58] preferredLanguages];
  v8 = [v5 preferredLocalizationsFromArray:v6 forPreferences:v7];

  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v9 = @"en";
  }

  v10 = [v4 URLForResource:@"InfoPlist" withExtension:@"strings" subdirectory:0 localization:v9];
  if (v10 && ([MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v10], (v11 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v4, "localizedInfoDictionary"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [v4 bundlePath];
    v14 = [(LACInstalledAppsCache *)self _localizedNameFromInfoDict:v12 path:v13];
    goto LABEL_8;
  }

  v20 = [v4 objectForInfoDictionaryKey:@"CFBundleVisibleComponentName"];
  v12 = v20;
  if (!v20)
  {
    v21 = [v4 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    v13 = v21;
    if (!v21)
    {
      v22 = [v4 objectForInfoDictionaryKey:@"CFBundleName"];
      v23 = v22;
      if (v22)
      {
        v15 = v22;
      }

      else
      {
        v24 = [v4 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
        v25 = v24;
        if (v24)
        {
          v15 = v24;
        }

        else
        {
          v27 = [v4 bundlePath];
          v26 = [v27 lastPathComponent];
          v15 = [v26 stringByDeletingPathExtension];
        }
      }

      goto LABEL_9;
    }

    v14 = v21;
LABEL_8:
    v15 = v14;
LABEL_9:

    goto LABEL_10;
  }

  v15 = v20;
LABEL_10:

  v16 = LACLogEnvironment();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v4 bundleIdentifier];
    *buf = 138543618;
    v29 = v17;
    v30 = 2114;
    v31 = v15;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_localizedNameForPath:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v4, kCFURLPOSIXPathStyle, 0);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = CFBundleCopyInfoDictionaryForURL(v5);
  if (!v7 || (v8 = v7, [(LACInstalledAppsCache *)self _localizedNameFromInfoDict:v7 path:0], v9 = objc_claimAutoreleasedReturnValue(), CFRelease(v8), !v9))
  {
    v14 = 0;
    [(__CFURL *)v6 getResourceValue:&v14 forKey:*MEMORY[0x1E695DC10] error:0];
    v9 = v14;
    CFRelease(v6);
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_8:
    v10 = [(__CFString *)v4 lastPathComponent];
    v9 = [v10 stringByDeletingPathExtension];

    goto LABEL_9;
  }

  CFRelease(v6);
LABEL_9:
  v11 = LACLogEnvironment();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v4;
    v17 = 2114;
    v18 = v9;
  }

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_bundleForPid:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Failed to determine path for pid: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end