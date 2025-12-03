@interface CPLChangeBatchChangeStorage
- (CPLChangeBatchChangeStorage)initWithBatch:(id)batch name:(id)name;
- (id)changeWithScopedIdentifier:(id)identifier;
- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
@end

@implementation CPLChangeBatchChangeStorage

- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = self->_batch;
  v7 = [(CPLChangeBatch *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v27 = 0;
    v9 = *v29;
    v26 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          relatedIdentifier = [v11 relatedIdentifier];
          identifier = [identifierCopy identifier];
          v14 = [relatedIdentifier isEqualToString:identifier];

          if (v14)
          {
            v15 = v6;
            scopedIdentifier = [v11 scopedIdentifier];
            scopeIdentifier = [scopedIdentifier scopeIdentifier];

            v18 = identifierCopy;
            scopeIdentifier2 = [identifierCopy scopeIdentifier];
            v20 = [scopeIdentifier isEqualToString:scopeIdentifier2];

            if (v20)
            {
              v21 = v27 == 0;
            }

            else
            {
              v21 = 0;
            }

            if (v21)
            {
              v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v23 = [v11 copy];
              v27 = v22;
              [v22 addObject:v23];
            }

            v6 = v15;
            identifierCopy = v18;
            v9 = v26;
          }
        }
      }

      v8 = [(CPLChangeBatch *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  else
  {
    v27 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  changesPerScopedIdentifier = self->_changesPerScopedIdentifier;
  if (!changesPerScopedIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[CPLChangeBatch count](self->_batch, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_batch;
    v8 = [(CPLChangeBatch *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          scopedIdentifier = [v12 scopedIdentifier];
          [(NSDictionary *)v6 setObject:v12 forKeyedSubscript:scopedIdentifier];
        }

        v9 = [(CPLChangeBatch *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v14 = self->_changesPerScopedIdentifier;
    self->_changesPerScopedIdentifier = v6;

    changesPerScopedIdentifier = self->_changesPerScopedIdentifier;
  }

  v15 = [(NSDictionary *)changesPerScopedIdentifier objectForKeyedSubscript:identifierCopy, v19];
  v16 = [v15 copy];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (CPLChangeBatchChangeStorage)initWithBatch:(id)batch name:(id)name
{
  batchCopy = batch;
  nameCopy = name;
  if (!batchCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Trying to create a batch change storage without a batch", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangeBatchChangeStorage.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v16 lineNumber:20 description:@"Trying to create a batch change storage without a batch"];

    abort();
  }

  v10 = nameCopy;
  v17.receiver = self;
  v17.super_class = CPLChangeBatchChangeStorage;
  v11 = [(CPLChangeBatchChangeStorage *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_batch, batch);
    objc_storeStrong(&v12->_storageDescription, name);
  }

  return v12;
}

@end