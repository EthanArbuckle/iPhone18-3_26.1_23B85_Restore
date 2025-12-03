@interface EMMessageContentCachedMetadata
- (EMMessageContentCachedMetadata)initWithDelegate:(id)delegate;
- (_BYTE)_cachedValueForKeyPath:(void *)path fromJSONData:;
- (id)_cachedMetadataJSONFromResult;
- (id)_cachedValueForKeyPath:(void *)path fromDictionary:;
- (id)cachedValueForKeyPath:(uint64_t)path;
- (uint64_t)_BOOLValueForKeyPath:(uint64_t)path;
- (void)_setBoolValue:(void *)value forKeyPath:;
@end

@implementation EMMessageContentCachedMetadata

- (EMMessageContentCachedMetadata)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = EMMessageContentCachedMetadata;
  v5 = [(EMMessageContentCachedMetadata *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    localCache = v6->_localCache;
    v6->_localCache = dictionary;
  }

  return v6;
}

- (uint64_t)_BOOLValueForKeyPath:(uint64_t)path
{
  v3 = a2;
  if (path)
  {
    os_unfair_lock_lock((path + 8));
    v4 = [*(path + 24) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v4 = [(EMMessageContentCachedMetadata *)path cachedValueForKeyPath:v3];
    }

    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v6 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    [*(path + 24) setObject:v6 forKeyedSubscript:v3];

    os_unfair_lock_unlock((path + 8));
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_setBoolValue:(void *)value forKeyPath:
{
  valueCopy = value;
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    WeakRetained = objc_loadWeakRetained((self + 16));
    contentMessage = [WeakRetained contentMessage];
    [contentMessage setCachedMetadata:v5 forKey:valueCopy];

    [*(self + 24) setObject:v5 forKeyedSubscript:valueCopy];
    os_unfair_lock_unlock((self + 8));
  }
}

- (id)cachedValueForKeyPath:(uint64_t)path
{
  v3 = a2;
  if (path)
  {
    v4 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(EMMessageContentCachedMetadata *)v3 cachedValueForKeyPath:v4];
    }

    _cachedMetadataJSONFromResult = [(EMMessageContentCachedMetadata *)path _cachedMetadataJSONFromResult];
    if (_cachedMetadataJSONFromResult)
    {
      v6 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(EMMessageContentCachedMetadata *)v3 cachedValueForKeyPath:v6];
      }

      v7 = [(EMMessageContentCachedMetadata *)path _cachedValueForKeyPath:v3 fromJSONData:_cachedMetadataJSONFromResult];
    }

    else
    {
      v8 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(EMMessageContentCachedMetadata *)v3 cachedValueForKeyPath:v8];
      }

      WeakRetained = objc_loadWeakRetained((path + 16));
      contentMessage = [WeakRetained contentMessage];
      v7 = [contentMessage cachedMetadataOfClass:objc_opt_class() forKey:v3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_cachedMetadataJSONFromResult
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));
    contentRepresentation = [WeakRetained contentRepresentation];
    cachedMetadataJSON = [contentRepresentation cachedMetadataJSON];
  }

  else
  {
    cachedMetadataJSON = 0;
  }

  return cachedMetadataJSON;
}

- (_BYTE)_cachedValueForKeyPath:(void *)path fromJSONData:
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  pathCopy = path;
  v7 = pathCopy;
  if (self)
  {
    if ([pathCopy length])
    {
      v14 = 0;
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:24 error:&v14];
      v9 = v14;
      if (v8)
      {
        self = [(EMMessageContentCachedMetadata *)self _cachedValueForKeyPath:v5 fromDictionary:v8];
      }

      else
      {
        if ((self[12] & 1) == 0)
        {
          self[12] = 1;
          v10 = EMLogCategoryMessageLoading();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [v9 ef_publicDescription];
            [(EMMessageContentCachedMetadata *)ef_publicDescription _cachedValueForKeyPath:buf fromJSONData:v10];
          }
        }

        self = 0;
      }
    }

    else
    {
      self = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return self;
}

- (id)_cachedValueForKeyPath:(void *)path fromDictionary:
{
  v5 = a2;
  pathCopy = path;
  if (self && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__5;
    v18[4] = __Block_byref_object_dispose__5;
    v19 = pathCopy;
    v7 = [v5 componentsSeparatedByString:@"."];
    v8 = [v7 count];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__5;
    v16 = __Block_byref_object_dispose__5;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__EMMessageContentCachedMetadata__cachedValueForKeyPath_fromDictionary___block_invoke;
    v11[3] = &unk_1E826DAF8;
    v11[4] = &v12;
    v11[5] = v18;
    v11[6] = v8;
    [v7 enumerateObjectsWithOptions:2 usingBlock:v11];
    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(v18, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __72__EMMessageContentCachedMetadata__cachedValueForKeyPath_fromDictionary___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1[5] + 8) + 40);
  v11 = v5;
  if (a3 + 1 == a1[6])
  {
    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = *(a1[4] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong((*(a1[5] + 8) + 40), v10);
  }
}

- (void)cachedValueForKeyPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1C6655000, a2, OS_LOG_TYPE_DEBUG, "Getting cached metadata value for key %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cachedValueForKeyPath:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1C6655000, a2, OS_LOG_TYPE_DEBUG, "Got cached metadata value for key %{public}@ from EMContentRepresentation.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cachedValueForKeyPath:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Using EMMessage fallback for cached metadata value for key %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_cachedValueForKeyPath:(os_log_t)log fromJSONData:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Failed to parse cached metadata JSON: %{public}@", buf, 0xCu);
}

@end