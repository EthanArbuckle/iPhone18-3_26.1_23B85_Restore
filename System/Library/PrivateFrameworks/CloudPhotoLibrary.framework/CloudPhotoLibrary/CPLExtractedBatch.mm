@interface CPLExtractedBatch
- (CPLExtractedBatch)init;
- (CPLExtractedBatch)initWithCoder:(id)coder;
- (NSFastEnumeration)uploadIdentifiers;
- (id)uploadIdentifierForChange:(id)change;
- (unint64_t)effectiveResourceSizeToUploadUsingStorage:(id)storage;
- (void)addChange:(id)change fromStorage:(id)storage;
- (void)encodeWithCoder:(id)coder;
- (void)forceScopeIndexOnAllRecordsTo:(int64_t)to;
@end

@implementation CPLExtractedBatch

- (void)forceScopeIndexOnAllRecordsTo:(int64_t)to
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_batch;
  v5 = [(CPLChangeBatch *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setScopeIndex:{to, v10}];
      }

      while (v6 != v8);
      v6 = [(CPLChangeBatch *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (unint64_t)effectiveResourceSizeToUploadUsingStorage:(id)storage
{
  v19 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  if (!self->_resourceSizeIsCalculated)
  {
    self->_resourceSizeIsCalculated = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_batch;
    v6 = [(CPLChangeBatch *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 supportsResources] && objc_msgSend(v10, "hasChangeType:", 8))
          {
            self->_resourceSize += [v10 effectiveResourceSizeToUploadUsingStorage:storageCopy];
          }
        }

        v7 = [(CPLChangeBatch *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  resourceSize = self->_resourceSize;

  v12 = *MEMORY[0x1E69E9840];
  return resourceSize;
}

- (NSFastEnumeration)uploadIdentifiers
{
  v3 = [CPLMapEnumerator alloc];
  mutablePushContexts = self->_mutablePushContexts;
  if (!mutablePushContexts)
  {
    mutablePushContexts = self->_pushContexts;
  }

  objectEnumerator = [(NSMutableDictionary *)mutablePushContexts objectEnumerator];
  v6 = [(CPLMapEnumerator *)v3 initWithEnumerator:objectEnumerator map:&__block_literal_global_32_22566];

  return v6;
}

- (void)addChange:(id)change fromStorage:(id)storage
{
  changeCopy = change;
  storageCopy = storage;
  scopedIdentifier = [changeCopy scopedIdentifier];
  _pushContext = [changeCopy _pushContext];
  if (_pushContext)
  {
    mutablePushContexts = self->_mutablePushContexts;
    if (!mutablePushContexts)
    {
      pushContexts = self->_pushContexts;
      if (pushContexts)
      {
        v11 = [(NSDictionary *)pushContexts mutableCopy];
        v12 = self->_mutablePushContexts;
        self->_mutablePushContexts = v11;

        v13 = self->_pushContexts;
        self->_pushContexts = 0;
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = self->_mutablePushContexts;
        self->_mutablePushContexts = v14;
      }

      mutablePushContexts = self->_mutablePushContexts;
    }

    [(NSMutableDictionary *)mutablePushContexts setObject:_pushContext forKeyedSubscript:scopedIdentifier];
  }

  if ([changeCopy _shouldNotTrustCloudCache])
  {
    mutableUntrustableScopedIndentifiers = self->_mutableUntrustableScopedIndentifiers;
    if (!mutableUntrustableScopedIndentifiers)
    {
      untrustableScopedIdentifiers = self->_untrustableScopedIdentifiers;
      if (untrustableScopedIdentifiers)
      {
        v17 = [(NSSet *)untrustableScopedIdentifiers mutableCopy];
        v18 = self->_mutableUntrustableScopedIndentifiers;
        self->_mutableUntrustableScopedIndentifiers = v17;

        v19 = self->_untrustableScopedIdentifiers;
        self->_untrustableScopedIdentifiers = 0;
      }

      else
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v19 = self->_mutableUntrustableScopedIndentifiers;
        self->_mutableUntrustableScopedIndentifiers = v20;
      }

      mutableUntrustableScopedIndentifiers = self->_mutableUntrustableScopedIndentifiers;
    }

    [(NSMutableSet *)mutableUntrustableScopedIndentifiers addObject:scopedIdentifier];
  }

  if (self->_batchCanLowerQuota)
  {
    canLowerQuota = 1;
  }

  else
  {
    canLowerQuota = [changeCopy canLowerQuota];
  }

  self->_batchCanLowerQuota = canLowerQuota;
  if ([changeCopy supportsResources] && objc_msgSend(changeCopy, "hasChangeType:", 8))
  {
    self->_resourceSize += [changeCopy effectiveResourceSizeToUploadUsingStorage:storageCopy];
  }

  [(CPLChangeBatch *)self->_batch addRecord:changeCopy];
}

- (id)uploadIdentifierForChange:(id)change
{
  mutablePushContexts = self->_mutablePushContexts;
  if (!mutablePushContexts)
  {
    mutablePushContexts = self->_pushContexts;
  }

  scopedIdentifier = [change scopedIdentifier];
  v5 = [(NSMutableDictionary *)mutablePushContexts objectForKeyedSubscript:scopedIdentifier];
  uploadIdentifier = [v5 uploadIdentifier];

  return uploadIdentifier;
}

- (void)encodeWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeObject:self->_batch forKey:@"batch"];
  mutablePushContexts = self->_mutablePushContexts;
  if (mutablePushContexts)
  {
    if (self->_pushContexts)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "%@ can't have both mutable and immutable push contexts", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLExtractedBatch.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:79 description:{@"%@ can't have both mutable and immutable push contexts", self}];
      goto LABEL_16;
    }
  }

  else
  {
    mutablePushContexts = self->_pushContexts;
  }

  [coderCopy encodeObject:mutablePushContexts forKey:@"pushContexts"];
  mutableUntrustableScopedIndentifiers = self->_mutableUntrustableScopedIndentifiers;
  if (mutableUntrustableScopedIndentifiers)
  {
    if (self->_untrustableScopedIdentifiers)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "%@ can't have both mutable and immutable untrustable identifiers", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLExtractedBatch.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:81 description:{@"%@ can't have both mutable and immutable untrustable identifiers", self}];
LABEL_16:

      abort();
    }
  }

  else
  {
    mutableUntrustableScopedIndentifiers = self->_untrustableScopedIdentifiers;
  }

  [coderCopy encodeObject:mutableUntrustableScopedIndentifiers forKey:@"untrustableIdentifiers"];
  [coderCopy encodeObject:self->_clientCacheIdentifier forKey:@"clientCacheIdentifier"];
  v11 = *MEMORY[0x1E69E9840];
}

- (CPLExtractedBatch)initWithCoder:(id)coder
{
  v34 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = CPLExtractedBatch;
  v5 = [(CPLExtractedBatch *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batch"];
    batch = v5->_batch;
    v5->_batch = v6;

    if (initWithCoder__onceToken_22597 != -1)
    {
      dispatch_once(&initWithCoder__onceToken_22597, &__block_literal_global_22598);
    }

    v8 = [coderCopy decodeObjectOfClasses:initWithCoder__pushContextsClasses_22599 forKey:@"pushContexts"];
    pushContexts = v5->_pushContexts;
    v5->_pushContexts = v8;

    if (!v5->_pushContexts)
    {
      v10 = [CPLRecordPushContext pushContextsFromStoredUploadIdentifiersInCoder:coderCopy key:@"uploadIdentifiers"];
      v11 = v5->_pushContexts;
      v5->_pushContexts = v10;
    }

    v12 = [coderCopy decodeObjectOfClasses:initWithCoder__untrustableIdentifiersClasses forKey:@"untrustableIdentifiers"];
    untrustableScopedIdentifiers = v5->_untrustableScopedIdentifiers;
    v5->_untrustableScopedIdentifiers = v12;

    v14 = [CPLScopedIdentifier scopedIdentifiersFromSetOfUnknownIdentifiers:v5->_untrustableScopedIdentifiers];
    v15 = v5->_untrustableScopedIdentifiers;
    v5->_untrustableScopedIdentifiers = v14;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v5->_batch;
    v17 = [(CPLChangeBatch *)v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          scopedIdentifier = [v21 scopedIdentifier];
          v23 = [(NSDictionary *)v5->_pushContexts objectForKeyedSubscript:scopedIdentifier];
          if (!v23)
          {
            v23 = +[CPLRecordPushContext newEmptyPushContext];
          }

          [v21 _setPushContext:v23];
          if ([(NSSet *)v5->_untrustableScopedIdentifiers containsObject:scopedIdentifier])
          {
            [v21 _setShouldNotTrustCloudCache:1];
          }
        }

        v18 = [(CPLChangeBatch *)v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v18);
    }

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientCacheIdentifier"];
    clientCacheIdentifier = v5->_clientCacheIdentifier;
    v5->_clientCacheIdentifier = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __35__CPLExtractedBatch_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = initWithCoder__pushContextsClasses_22599;
  initWithCoder__pushContextsClasses_22599 = v3;

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = initWithCoder__untrustableIdentifiersClasses;
  initWithCoder__untrustableIdentifiersClasses = v8;

  return MEMORY[0x1EEE66BB8](v8, v9);
}

- (CPLExtractedBatch)init
{
  v6.receiver = self;
  v6.super_class = CPLExtractedBatch;
  v2 = [(CPLExtractedBatch *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CPLChangeBatch);
    batch = v2->_batch;
    v2->_batch = v3;

    v2->_resourceSizeIsCalculated = 1;
  }

  return v2;
}

@end