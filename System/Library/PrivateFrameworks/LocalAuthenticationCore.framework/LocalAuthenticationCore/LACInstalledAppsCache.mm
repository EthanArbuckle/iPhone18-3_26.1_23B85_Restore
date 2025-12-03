@interface LACInstalledAppsCache
+ (id)sharedInstance;
- (id)_localizedNameForBundle:(id)bundle;
- (id)_localizedNameForPath:(id)path;
- (id)_localizedNameFromInfoDict:(id)dict path:(id)path;
- (id)pathForPid:(int)pid;
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

- (id)pathForPid:(int)pid
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(LACInstalledAppsCache *)self _bundlePathForPid:?];
  if (!v4)
  {
    v5 = proc_pidpath(pid, v9, 0x1000u);
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
    v9[1] = pid;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Determined path for PID %d: %{public}@", v9, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_localizedNameFromInfoDict:(id)dict path:(id)path
{
  dictCopy = dict;
  pathCopy = path;
  v7 = [dictCopy objectForKeyedSubscript:@"CFBundleVisibleComponentName"];
  v8 = v7;
  if (v7)
  {
    stringByDeletingPathExtension = v7;
  }

  else
  {
    v10 = [dictCopy objectForKeyedSubscript:@"CFBundleDisplayName"];
    v11 = v10;
    if (v10)
    {
      stringByDeletingPathExtension = v10;
    }

    else
    {
      v12 = [dictCopy objectForKeyedSubscript:@"CFBundleName"];
      v13 = v12;
      if (v12)
      {
        stringByDeletingPathExtension = v12;
      }

      else
      {
        lastPathComponent = [pathCopy lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      }
    }
  }

  return stringByDeletingPathExtension;
}

- (id)_localizedNameForBundle:(id)bundle
{
  v32 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v5 = MEMORY[0x1E696AAE8];
  localizations = [bundleCopy localizations];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v8 = [v5 preferredLocalizationsFromArray:localizations forPreferences:preferredLanguages];

  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v9 = @"en";
  }

  v10 = [bundleCopy URLForResource:@"InfoPlist" withExtension:@"strings" subdirectory:0 localization:v9];
  if (v10 && ([MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v10], (v11 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(bundleCopy, "localizedInfoDictionary"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    bundlePath = [bundleCopy bundlePath];
    v14 = [(LACInstalledAppsCache *)self _localizedNameFromInfoDict:v12 path:bundlePath];
    goto LABEL_8;
  }

  v20 = [bundleCopy objectForInfoDictionaryKey:@"CFBundleVisibleComponentName"];
  v12 = v20;
  if (!v20)
  {
    v21 = [bundleCopy objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    bundlePath = v21;
    if (!v21)
    {
      v22 = [bundleCopy objectForInfoDictionaryKey:@"CFBundleName"];
      v23 = v22;
      if (v22)
      {
        stringByDeletingPathExtension = v22;
      }

      else
      {
        v24 = [bundleCopy objectForInfoDictionaryKey:@"CFBundleDisplayName"];
        v25 = v24;
        if (v24)
        {
          stringByDeletingPathExtension = v24;
        }

        else
        {
          bundlePath2 = [bundleCopy bundlePath];
          lastPathComponent = [bundlePath2 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
        }
      }

      goto LABEL_9;
    }

    v14 = v21;
LABEL_8:
    stringByDeletingPathExtension = v14;
LABEL_9:

    goto LABEL_10;
  }

  stringByDeletingPathExtension = v20;
LABEL_10:

  v16 = LACLogEnvironment();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [bundleCopy bundleIdentifier];
    *buf = 138543618;
    v29 = bundleIdentifier;
    v30 = 2114;
    v31 = stringByDeletingPathExtension;
  }

  v18 = *MEMORY[0x1E69E9840];

  return stringByDeletingPathExtension;
}

- (id)_localizedNameForPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    stringByDeletingPathExtension = 0;
    goto LABEL_12;
  }

  v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], pathCopy, kCFURLPOSIXPathStyle, 0);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = CFBundleCopyInfoDictionaryForURL(v5);
  if (!v7 || (v8 = v7, [(LACInstalledAppsCache *)self _localizedNameFromInfoDict:v7 path:0], stringByDeletingPathExtension = objc_claimAutoreleasedReturnValue(), CFRelease(v8), !stringByDeletingPathExtension))
  {
    v14 = 0;
    [(__CFURL *)v6 getResourceValue:&v14 forKey:*MEMORY[0x1E695DC10] error:0];
    stringByDeletingPathExtension = v14;
    CFRelease(v6);
    if (stringByDeletingPathExtension)
    {
      goto LABEL_9;
    }

LABEL_8:
    lastPathComponent = [(__CFString *)pathCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    goto LABEL_9;
  }

  CFRelease(v6);
LABEL_9:
  v11 = LACLogEnvironment();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = pathCopy;
    v17 = 2114;
    v18 = stringByDeletingPathExtension;
  }

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];

  return stringByDeletingPathExtension;
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