@interface EMFAnchoredSearchAnchorsLoader
- (EMFAnchoredSearchAnchorCollection)locallyCachedAnchorCollection;
- (EMFAnchoredSearchAnchorsLoader)initWithLocaleIdentifier:(id)a3;
- (NSArray)leftHandAnchors;
- (NSArray)rightHandAnchors;
- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(id)a3;
@end

@implementation EMFAnchoredSearchAnchorsLoader

- (EMFAnchoredSearchAnchorsLoader)initWithLocaleIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EMFAnchoredSearchAnchorsLoader;
  v5 = [(EMFAnchoredSearchAnchorsLoader *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    v8 = +[EMFAnchoredSearchAnchorsCache sharedCache];
    anchorsCache = v5->_anchorsCache;
    v5->_anchorsCache = v8;
  }

  return v5;
}

- (NSArray)leftHandAnchors
{
  v3 = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];

  if (!v3)
  {
    v4 = [(EMFAnchoredSearchAnchorsLoader *)self localeIdentifier];
    [(EMFAnchoredSearchAnchorsLoader *)self _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v4];
  }

  v5 = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];
  v6 = [v5 leftHandAnchors];

  return v6;
}

- (NSArray)rightHandAnchors
{
  v3 = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];

  if (!v3)
  {
    v4 = [(EMFAnchoredSearchAnchorsLoader *)self localeIdentifier];
    [(EMFAnchoredSearchAnchorsLoader *)self _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v4];
  }

  v5 = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];
  v6 = [v5 rightHandAnchors];

  return v6;
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];

  if (!v5)
  {
    v6 = [(EMFAnchoredSearchAnchorsLoader *)self anchorsCache];
    v7 = [v6 anchorCollectionForLocaleIdentifier:v4];

    if (v7)
    {
      [(EMFAnchoredSearchAnchorsLoader *)self setLocallyCachedAnchorCollection:v7];
LABEL_44:

      goto LABEL_45;
    }

    v8 = emf_logging_get_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1AF04E000, v8, OS_LOG_TYPE_INFO, "Loading search anchors for locale '%{public}@'", &buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__0;
    v55 = __Block_byref_object_dispose__0;
    v56 = [v9 URLForResource:v4 withExtension:@"plist" subdirectory:@"Anchor Strings"];
    v10 = *(*(&buf + 1) + 40);
    if (!v10)
    {
      v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
      v12 = [v11 languageIdentifier];

      v13 = emf_logging_get_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v44 = 138543618;
        v45 = v4;
        v46 = 2114;
        v47 = v12;
        _os_log_impl(&dword_1AF04E000, v13, OS_LOG_TYPE_INFO, "No search anchors found for locale identifier '%{public}@'; attempting to load data associated with the normalized locale identifier '%{public}@'.", v44, 0x16u);
      }

      v14 = [v9 URLForResource:v12 withExtension:@"plist" subdirectory:@"Anchor Strings"];
      v15 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v14;

      v10 = *(*(&buf + 1) + 40);
      if (!v10)
      {
        v16 = emf_logging_get_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v44 = 138543362;
          v45 = v4;
          _os_log_impl(&dword_1AF04E000, v16, OS_LOG_TYPE_INFO, "No search anchors found for locale identifier '%{public}@'; attempting to load a fallback language.", v44, 0xCu);
        }

        v17 = MEMORY[0x1E695DF58];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __85__EMFAnchoredSearchAnchorsLoader__loadAndCacheAnchorsForLocaleIdentifierIfNecessary___block_invoke;
        v40[3] = &unk_1E7A5F6A0;
        v18 = v4;
        v41 = v18;
        p_buf = &buf;
        v42 = v9;
        [v17 _enumerateLanguageFallbackGraphForLocaleIdentifier:v18 usingBlock:v40];
        if (!*(*(&buf + 1) + 40))
        {
          v34 = emf_logging_get_default_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [(EMFAnchoredSearchAnchorsLoader *)v18 _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v34];
          }

          v7 = 0;
          v20 = v41;
          goto LABEL_43;
        }

        v10 = *(*(&buf + 1) + 40);
      }
    }

    v39 = 0;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v10 error:&v39];
    v20 = v39;
    if (v20 || !v19 || ![v19 count])
    {
      v22 = emf_logging_get_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v35 = [*(*(&buf + 1) + 40) absoluteString];
        v36 = [v20 localizedDescription];
        *v44 = 138543874;
        v45 = v35;
        v46 = 2114;
        v47 = v4;
        v48 = 2114;
        v49 = v36;
        _os_log_error_impl(&dword_1AF04E000, v22, OS_LOG_TYPE_ERROR, "Search anchor plist at path '%{public}@' for locale '%{public}@' could not be read with error: '%{public}@", v44, 0x20u);
      }

      v7 = 0;
      goto LABEL_42;
    }

    v21 = [v19 objectForKeyedSubscript:@"metadata"];
    v22 = v21;
    if (!v21)
    {
      v24 = emf_logging_get_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v31 = [*(*(&buf + 1) + 40) absoluteString];
        [(EMFAnchoredSearchAnchorsLoader *)v31 _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v44, v24];
      }

      v7 = 0;
      goto LABEL_41;
    }

    v23 = [v21 objectForKeyedSubscript:@"schemaVersion"];
    v24 = v23;
    if (v23)
    {
      if ([v23 unsignedLongValue]== 1)
      {
        v7 = [[EMFAnchoredSearchAnchorCollection alloc] initWithLocaleIdentifier:v4];
        v25 = [v19 objectForKeyedSubscript:@"leftHandAnchors"];
        v26 = v25;
        if (v25 && [v25 count])
        {
          [(EMFAnchoredSearchAnchorCollection *)v7 setLeftHandAnchors:v26];
        }

        v38 = [v19 objectForKeyedSubscript:@"rightHandAnchors"];
        if (v38 && [v38 count])
        {
          [(EMFAnchoredSearchAnchorCollection *)v7 setRightHandAnchors:v38];
        }

        v27 = [(EMFAnchoredSearchAnchorsLoader *)self anchorsCache];
        [v27 setAnchorCollection:v7 forLocaleIdentifier:v4];

        [(EMFAnchoredSearchAnchorsLoader *)self setLocallyCachedAnchorCollection:v7];
        v28 = emf_logging_get_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [*(*(&buf + 1) + 40) absoluteString];
          v37 = [v26 count];
          v30 = [v38 count];
          *v44 = 138544130;
          v45 = v29;
          v46 = 2114;
          v47 = v4;
          v48 = 2048;
          v49 = v37;
          v50 = 2048;
          v51 = v30;
          _os_log_impl(&dword_1AF04E000, v28, OS_LOG_TYPE_INFO, "Loaded search anchor plist '%{public}@' for locale '%{public}@' (%lu left, %lu right)", v44, 0x2Au);
        }

        goto LABEL_40;
      }

      v26 = emf_logging_get_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v33 = [*(*(&buf + 1) + 40) absoluteString];
        [(EMFAnchoredSearchAnchorsLoader *)v33 _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v44, [v24 unsignedLongValue], v26];
      }
    }

    else
    {
      v26 = emf_logging_get_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v32 = [*(*(&buf + 1) + 40) absoluteString];
        [(EMFAnchoredSearchAnchorsLoader *)v32 _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v44, v26];
      }
    }

    v7 = 0;
LABEL_40:

LABEL_41:
LABEL_42:

LABEL_43:
    _Block_object_dispose(&buf, 8);

    goto LABEL_44;
  }

LABEL_45:
}

void __85__EMFAnchoredSearchAnchorsLoader__loadAndCacheAnchorsForLocaleIdentifierIfNecessary___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (([*(a1 + 32) isEqualToString:v5] & 1) == 0)
  {
    v6 = emf_logging_get_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1AF04E000, v6, OS_LOG_TYPE_INFO, "Loading search anchors for language fallback '%{public}@'", &v10, 0xCu);
    }

    v7 = [*(a1 + 40) URLForResource:v5 withExtension:@"plist" subdirectory:@"Anchor Strings"];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

- (EMFAnchoredSearchAnchorCollection)locallyCachedAnchorCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_locallyCachedAnchorCollection);

  return WeakRetained;
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(uint64_t)a3 .cold.1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "Search anchor plist at path '%{public}@' registers an unsupported schemaVersion of '%lu'.", buf, 0x16u);
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "Search anchor plist at path '%{public}@' registers an unsupported schemaVersion.", buf, 0xCu);
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "Search anchor plist at path '%{public}@' is malformed and lacks a 'metadata' segment.", buf, 0xCu);
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_ERROR, "Could not load search anchors for locale identifier '%{public}@'.", &v2, 0xCu);
}

@end