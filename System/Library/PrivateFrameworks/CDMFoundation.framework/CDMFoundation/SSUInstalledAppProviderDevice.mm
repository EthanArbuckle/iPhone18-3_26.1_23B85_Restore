@interface SSUInstalledAppProviderDevice
- (SSUInstalledAppProviderDevice)initWithLocale:(id)a3;
- (id)applicationInfoFromAppRecord:(id)a3;
- (id)lookupAllSSUEnabledApps;
- (id)lookupSSUEnabledAppByBundleId:(id)a3;
@end

@implementation SSUInstalledAppProviderDevice

- (id)applicationInfoFromAppRecord:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  if (v5 && ([v4 isPlaceholder] & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x1E696AAE8]);
    v8 = [v4 URL];
    v9 = [v7 _initUniqueWithURL:v8];
    v10 = [v9 SSUAssetPathForLocale:self->_locale];

    if (v10)
    {
      locale = self->_locale;
      v20 = 0;
      v6 = [MEMORY[0x1E69D1480] applicationInfoWithBundleIdentifier:v5 assetURL:v10 forLocale:locale error:&v20];
      v12 = v20;
      v13 = CDMOSLoggerForCategory(0);
      v14 = v13;
      if (v6)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v6 bundleIdentifier];
          *buf = 136315394;
          v22 = "[SSUInstalledAppProviderDevice applicationInfoFromAppRecord:]";
          v23 = 2112;
          v24 = v18;
          _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Found SSU-enabled app: %@", buf, 0x16u);
        }

        v15 = v6;
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v19 = [CDMPlatformUtils prettyPrintError:v12];
          *buf = 136315906;
          v22 = "[SSUInstalledAppProviderDevice applicationInfoFromAppRecord:]";
          v23 = 2112;
          v24 = v5;
          v25 = 2112;
          v26 = v10;
          v27 = 2112;
          v28 = v19;
          _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to build SNLPSSUApplicationInfo instance for bundle ID=%@ and app asset URL=%@: %@. Ignoring app.", buf, 0x2Au);
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)lookupAllSSUEnabledApps
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v26 = "[SSUInstalledAppProviderDevice lookupAllSSUEnabledApps]";
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Looking up all installed SSU-enabled apps.", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 136315650;
    v19 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(SSUInstalledAppProviderDevice *)self applicationInfoFromAppRecord:*(*(&v21 + 1) + 8 * v10), v19];
        if (v11)
        {
          v12 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v11 bundleIdentifier];
            v20 = [v11 assetURL];
            v14 = [v20 path];
            *buf = v19;
            v26 = "[SSUInstalledAppProviderDevice lookupAllSSUEnabledApps]";
            v27 = 2112;
            v28 = v13;
            v29 = 2112;
            v30 = v14;
            _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Found SSU app %@ with asset URL %@", buf, 0x20u);
          }

          [v4 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v8);
  }

  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v4 count];
    *buf = 136315394;
    v26 = "[SSUInstalledAppProviderDevice lookupAllSSUEnabledApps]";
    v27 = 2048;
    v28 = v18;
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Found %lu SSU-enabled apps in total.", buf, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)lookupSSUEnabledAppByBundleId:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [(SSUInstalledAppProviderDevice *)self applicationInfoFromAppRecord:v5];
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v6 localizedDescription];
      *buf = 136315650;
      v14 = "[SSUInstalledAppProviderDevice lookupSSUEnabledAppByBundleId:]";
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Could not lookup app with bundle ID: %@. Error: %@", buf, 0x20u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (SSUInstalledAppProviderDevice)initWithLocale:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SSUInstalledAppProviderDevice;
  v5 = [(SSUInstalledAppProviderDevice *)&v8 init];
  locale = v5->_locale;
  v5->_locale = v4;

  return v5;
}

@end