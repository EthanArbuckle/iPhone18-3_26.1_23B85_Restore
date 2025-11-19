@interface SSUInstalledAppProviderSandbox
- (SSUInstalledAppProviderSandbox)initWithDirectory:(id)a3 locale:(id)a4;
- (id)lookupAllSSUEnabledApps;
- (id)lookupSSUEnabledAppByBundleId:(id)a3;
@end

@implementation SSUInstalledAppProviderSandbox

- (id)lookupAllSSUEnabledApps
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    directory = self->_directory;
    *buf = 136315394;
    v35 = "[SSUInstalledAppProviderSandbox lookupAllSSUEnabledApps]";
    v36 = 2112;
    v37 = directory;
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Looking up all installed SSU-enabled apps in sandbox directory: %@.", buf, 0x16u);
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [(NSURL *)self->_directory path];
  v32 = 0;
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:&v32];
  v7 = v32;

  if (v6)
  {
    v25 = v7;
    v8 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(SSUInstalledAppProviderSandbox *)self lookupSSUEnabledAppByBundleId:*(*(&v28 + 1) + 8 * v13)];
          if (v14)
          {
            v15 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v16 = [v14 bundleIdentifier];
              v27 = [v14 assetURL];
              v17 = [v27 path];
              *buf = 136315650;
              v35 = "[SSUInstalledAppProviderSandbox lookupAllSSUEnabledApps]";
              v36 = 2112;
              v37 = v16;
              v38 = 2112;
              v39 = v17;
              _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Found SSU app %@ with asset URL %@", buf, 0x20u);
            }

            [v8 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v8 count];
      *buf = 136315394;
      v35 = "[SSUInstalledAppProviderSandbox lookupAllSSUEnabledApps]";
      v36 = 2048;
      v37 = v22;
      _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Found %lu SSU-enabled apps in total in sandbox.", buf, 0x16u);
    }

    v7 = v25;
    v6 = v26;
  }

  else
  {
    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = self->_directory;
      v24 = [CDMPlatformUtils prettyPrintError:v7];
      *buf = 136315650;
      v35 = "[SSUInstalledAppProviderSandbox lookupAllSSUEnabledApps]";
      v36 = 2112;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      _os_log_error_impl(&dword_1DC287000, v18, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to list contents of directory %@ due to error: %@. Returning no installed apps.", buf, 0x20u);
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)lookupSSUEnabledAppByBundleId:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSURL *)self->_directory URLByAppendingPathComponent:v4];
  v23 = 0;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [(NSURL *)v5 path];
  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v23];

  if ((v8 & 1) == 0)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      directory = self->_directory;
      *buf = 136315650;
      v25 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
      v26 = 2112;
      v27 = directory;
      v28 = 2112;
      v29 = v4;
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s The installed app sandbox directory %@ not contain a subdirectory: %@. Reporting app as not available.", buf, 0x20u);
    }

    goto LABEL_12;
  }

  if ((v23 & 1) == 0)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
      v26 = 2112;
      v27 = v5;
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: The installed app sandbox directory has a non-directory file: %@. Reporting app as not available.", buf, 0x16u);
    }

LABEL_12:
    v12 = 0;
    goto LABEL_21;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AAE8]) _initUniqueWithURL:v5];
  v10 = [v9 SSUAssetPathForLocale:self->_locale];

  if (v10)
  {
    locale = self->_locale;
    v22 = 0;
    v12 = [MEMORY[0x1E69D1480] applicationInfoWithBundleIdentifier:v4 assetURL:v10 forLocale:locale error:&v22];
    v13 = v22;
    v14 = CDMOSLoggerForCategory(0);
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = [v12 bundleIdentifier];
        *buf = 136315394;
        v25 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
        v26 = 2112;
        v27 = v20;
        _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Found SSU-enabled app in sandbox: %@", buf, 0x16u);
      }

      v16 = v12;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v21 = [CDMPlatformUtils prettyPrintError:v13];
        *buf = 136315906;
        v25 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
        v26 = 2112;
        v27 = v4;
        v28 = 2112;
        v29 = v5;
        v30 = 2112;
        v31 = v21;
        _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to build SNLPSSUApplicationInfo instance for bundle ID=%@ and app asset URL=%@: %@. Ignoring app.", buf, 0x2Au);
      }
    }
  }

  else
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v25 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
      v26 = 2112;
      v27 = v5;
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s The installed app sandbox directory app is not SSU-enabled: %@ (no asset subdirectory found). Reporting app as not available.", buf, 0x16u);
    }

    v12 = 0;
  }

LABEL_21:
  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (SSUInstalledAppProviderSandbox)initWithDirectory:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SSUInstalledAppProviderSandbox;
  v8 = [(SSUInstalledAppProviderSandbox *)&v13 init];
  directory = v8->_directory;
  v8->_directory = v6;
  v10 = v6;

  locale = v8->_locale;
  v8->_locale = v7;

  return v8;
}

@end