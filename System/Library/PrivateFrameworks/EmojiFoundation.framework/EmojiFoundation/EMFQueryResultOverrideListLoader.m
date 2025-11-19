@interface EMFQueryResultOverrideListLoader
+ (id)overrideListForLocale:(id)a3;
@end

@implementation EMFQueryResultOverrideListLoader

+ (id)overrideListForLocale:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreEmoji"];
    if (v4)
    {
      v5 = _createStrippedLocaleIdentifierForLocale(v3);
      v6 = _overridePlistForLocaleIdentifierCheckingBothLocations(v4, v5);
      v7 = _createStrippedFallbackLocaleIdentifierForLocale(v3);
      if (!v6)
      {
        v8 = _overridePlistForLocaleIdentifierCheckingBothLocations(v4, v7);
        if (v8)
        {
          v6 = v8;
        }

        else
        {
          v10 = emf_logging_get_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v16 = 138412290;
            v17 = v5;
            _os_log_impl(&dword_1AF04E000, v10, OS_LOG_TYPE_INFO, "No search engine override list found for locale '%@'", &v16, 0xCu);
          }

          v6 = 0;
        }
      }
    }

    else
    {
      v5 = emf_logging_get_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [EMFQueryResultOverrideListLoader overrideListForLocale:v5];
      }

      v6 = 0;
    }

    if (v6)
    {
      v9 = [[EMFQueryResultOverrideList alloc] initWithOverrideListURL:v6];
      if (v9)
      {
        v11 = emf_logging_get_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v3 localeIdentifier];
          v13 = [v6 absoluteString];
          v16 = 138412546;
          v17 = v12;
          v18 = 2112;
          v19 = v13;
          _os_log_impl(&dword_1AF04E000, v11, OS_LOG_TYPE_INFO, "Loaded override list for locale '%@' (%@)", &v16, 0x16u);
        }

        v14 = v9;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end