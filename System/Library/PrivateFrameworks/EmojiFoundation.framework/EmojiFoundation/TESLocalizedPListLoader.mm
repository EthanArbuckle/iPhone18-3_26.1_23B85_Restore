@interface TESLocalizedPListLoader
- (TESLocalizedPListLoader)initWithLocaleIdentifier:(id)identifier;
- (id)_loadItems;
- (id)_resolvePlistPath;
- (id)plistPath;
- (void)_loadItems;
@end

@implementation TESLocalizedPListLoader

- (TESLocalizedPListLoader)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = TESLocalizedPListLoader;
  v5 = [(TESLocalizedPListLoader *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    plistPath = v5->_plistPath;
    v5->_plistPath = 0;
  }

  return v5;
}

- (id)plistPath
{
  plistPath = self->_plistPath;
  if (!plistPath)
  {
    _resolvePlistPath = [(TESLocalizedPListLoader *)self _resolvePlistPath];
    v5 = self->_plistPath;
    self->_plistPath = _resolvePlistPath;

    plistPath = self->_plistPath;
  }

  return plistPath;
}

- (id)_resolvePlistPath
{
  v35 = *MEMORY[0x1E69E9840];
  localeIdentifier = [(TESLocalizedPListLoader *)self localeIdentifier];
  v4 = [localeIdentifier stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v5 = emf_logging_get_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    localeIdentifier2 = [(TESLocalizedPListLoader *)self localeIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = localeIdentifier2;
    _os_log_impl(&dword_1AF04E000, v5, OS_LOG_TYPE_INFO, "Loading Text Effects plist file for locale '%{public}@'", &buf, 0xCu);
  }

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  resourceName = [(TESLocalizedPListLoader *)self resourceName];
  v34 = [v7 URLForResource:resourceName withExtension:@"plist" subdirectory:0 localization:v4];

  v9 = *(*(&buf + 1) + 40);
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
    languageIdentifier = [v10 languageIdentifier];

    if (([(__CFString *)languageIdentifier isEqualToString:@"nb-NO"]& 1) != 0 || [(__CFString *)languageIdentifier isEqualToString:@"nn"])
    {

      languageIdentifier = @"no";
    }

    v12 = emf_logging_get_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      localeIdentifier3 = [(TESLocalizedPListLoader *)self localeIdentifier];
      *v26 = 138543618;
      v27 = localeIdentifier3;
      v28 = 2114;
      v29 = languageIdentifier;
      _os_log_impl(&dword_1AF04E000, v12, OS_LOG_TYPE_INFO, "No Text Effects plist file found for locale identifier '%{public}@'; attempting to load data associated with the normalized locale identifier '%{public}@'.", v26, 0x16u);
    }

    resourceName2 = [(TESLocalizedPListLoader *)self resourceName];
    v15 = [v7 URLForResource:resourceName2 withExtension:@"plist" subdirectory:0 localization:languageIdentifier];
    v16 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v15;

    v9 = *(*(&buf + 1) + 40);
    if (!v9)
    {
      v17 = emf_logging_get_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        localeIdentifier4 = [(TESLocalizedPListLoader *)self localeIdentifier];
        *v26 = 138543362;
        v27 = localeIdentifier4;
        _os_log_impl(&dword_1AF04E000, v17, OS_LOG_TYPE_INFO, "No Text Effects plist found for locale identifier '%{public}@'; attempting to load a fallback language.", v26, 0xCu);
      }

      v19 = MEMORY[0x1E695DF58];
      localeIdentifier5 = [(TESLocalizedPListLoader *)self localeIdentifier];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __44__TESLocalizedPListLoader__resolvePlistPath__block_invoke;
      v23[3] = &unk_1E7A5F6A0;
      v23[4] = self;
      p_buf = &buf;
      v24 = v7;
      [v19 _enumerateLanguageFallbackGraphForLocaleIdentifier:localeIdentifier5 usingBlock:v23];

      v9 = *(*(&buf + 1) + 40);
    }
  }

  v21 = v9;
  _Block_object_dispose(&buf, 8);

  return v21;
}

void __44__TESLocalizedPListLoader__resolvePlistPath__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) localeIdentifier];
  v7 = [v6 isEqualToString:v5];

  if ((v7 & 1) == 0)
  {
    v8 = emf_logging_get_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = v5;
      _os_log_impl(&dword_1AF04E000, v8, OS_LOG_TYPE_INFO, "Loading Text Effects plist file for language fallback '%{public}@'", &v14, 0xCu);
    }

    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) resourceName];
    v11 = [v9 URLForResource:v10 withExtension:@"plist" subdirectory:0 localization:v5];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

- (id)_loadItems
{
  v29 = *MEMORY[0x1E69E9840];
  plistPath = [(TESLocalizedPListLoader *)self plistPath];
  if (plistPath)
  {
    v22 = 0;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:plistPath error:&v22];
    v5 = v22;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (v6 || ![v4 count])
    {
      v7 = emf_logging_get_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        absoluteString = [plistPath absoluteString];
        localeIdentifier = [(TESLocalizedPListLoader *)self localeIdentifier];
        localizedDescription = [v5 localizedDescription];
        *buf = 138543874;
        v24 = absoluteString;
        v25 = 2114;
        v26 = localeIdentifier;
        v27 = 2114;
        v28 = localizedDescription;
        _os_log_error_impl(&dword_1AF04E000, v7, OS_LOG_TYPE_ERROR, "Text Effects plist at path '%{public}@' for locale '%{public}@' could not be read with error: '%{public}@", buf, 0x20u);
      }

      v15 = 0;
      goto LABEL_27;
    }

    v7 = [v4 objectForKeyedSubscript:@"metadata"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 objectForKeyedSubscript:@"schemaVersion"];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 unsignedLongValue]== 1)
        {
          v10 = [v4 objectForKeyedSubscript:@"triggers"];
          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v11 = emf_logging_get_default_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              absoluteString2 = [plistPath absoluteString];
              localeIdentifier2 = [(TESLocalizedPListLoader *)self localeIdentifier];
              v14 = [v10 count];
              *buf = 138543874;
              v24 = absoluteString2;
              v25 = 2114;
              v26 = localeIdentifier2;
              v27 = 2048;
              v28 = v14;
              _os_log_impl(&dword_1AF04E000, v11, OS_LOG_TYPE_INFO, "Loaded Text Effects plist '%{public}@' for locale '%{public}@' (%lu entries)", buf, 0x20u);
            }

            v15 = v10;
          }

          else
          {
            v21 = emf_logging_get_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [(TESLocalizedPListLoader *)plistPath _loadItems];
            }

            v15 = 0;
          }

          goto LABEL_26;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v9 = &unk_1F24DF3A0;
        }

        v17 = emf_logging_get_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(TESLocalizedPListLoader *)plistPath _loadItems];
        }
      }

      else
      {
        v9 = emf_logging_get_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(TESLocalizedPListLoader *)plistPath _loadItems];
        }
      }
    }

    else
    {
      v9 = emf_logging_get_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(TESLocalizedPListLoader *)plistPath _loadItems];
      }
    }

    v15 = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v5 = emf_logging_get_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(TESLocalizedPListLoader *)self _loadItems];
  }

  v15 = 0;
LABEL_28:

  return v15;
}

- (void)_loadItems
{
  localeIdentifier = [self localeIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end