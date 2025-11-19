@interface NSBundle(SSUAssetPath)
- (id)SSUAssetPathForLocale:()SSUAssetPath;
@end

@implementation NSBundle(SSUAssetPath)

- (id)SSUAssetPathForLocale:()SSUAssetPath
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AAE8];
  v6 = [a1 localizations];
  v31[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v8 = [v5 preferredLocalizationsFromArray:v6 forPreferences:v7];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [a1 URLForResource:@"nlu.appintents" withExtension:0 subdirectory:0 localization:{v14, v22}];
        if (v15)
        {
          v18 = v15;
          v19 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v27 = "[NSBundle(SSUAssetPath) SSUAssetPathForLocale:]";
            v28 = 2112;
            v29 = v14;
            _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s [NSBundle] Found lproj SSU asset for localization=%@.", buf, 0x16u);
          }

          v17 = v18;
          v16 = v17;
          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = [a1 URLForResource:@"Metadata.appintents/nlu" withExtension:0];
  if (v16)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v27 = "[NSBundle(SSUAssetPath) SSUAssetPathForLocale:]";
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s [NSBundle] Found non-lproj SSU asset.", buf, 0xCu);
    }

LABEL_15:
  }

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

@end