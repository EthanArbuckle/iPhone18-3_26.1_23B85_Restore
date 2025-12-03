@interface CPLUploadComputeStatesAccumulator
- (CPLUploadComputeStatesAccumulator)initWithCapacity:(unint64_t)capacity maximumPayloadRequestsBatchSize:(unint64_t)size;
- (id)localComputeStatesToDropAfterClientProvidedPayloadForLocalComputeStates:(id)states;
- (id)popNextBatchOfLocalComputeStatesNeedingPayload;
- (void)addLocalComputeStateToUpload:(id)upload cloudComputeState:(id)state;
- (void)enumerateUploadedComputeStateWithBlock:(id)block;
- (void)requestPayloadForLocalComputeState:(id)state cloudComputeState:(id)computeState;
@end

@implementation CPLUploadComputeStatesAccumulator

- (void)enumerateUploadedComputeStateWithBlock:(id)block
{
  blockCopy = block;
  localComputeStatesToUpload = self->_localComputeStatesToUpload;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__CPLUploadComputeStatesAccumulator_enumerateUploadedComputeStateWithBlock___block_invoke;
  v7[3] = &unk_1E861BD50;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)localComputeStatesToUpload enumerateKeysAndObjectsUsingBlock:v7];
}

void __76__CPLUploadComputeStatesAccumulator_enumerateUploadedComputeStateWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 24);
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:a2];
  (*(v6 + 16))(v6, v8, v9, a4);
}

- (id)localComputeStatesToDropAfterClientProvidedPayloadForLocalComputeStates:(id)states
{
  v41 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  if (!self->_batchEnumerator)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "Trying to update payload of compute states without having started enumerating the batches", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesAccumulator.m"];
    v24 = @"Trying to update payload of compute states without having started enumerating the batches";
    v25 = currentHandler;
    v26 = a2;
    selfCopy3 = self;
    v28 = v23;
    v29 = 84;
    goto LABEL_31;
  }

  if (!self->_currentBatchOfComputeStatesNeedingPayload)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v31 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_ERROR, "Trying to update payload without a batch", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesAccumulator.m"];
    v24 = @"Trying to update payload without a batch";
    v25 = currentHandler;
    v26 = a2;
    selfCopy3 = self;
    v28 = v23;
    v29 = 85;
    goto LABEL_31;
  }

  v33 = a2;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = statesCopy;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = *v35;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v34 + 1) + 8 * i);
      fileURL = [v11 fileURL];
      if (fileURL)
      {
        itemScopedIdentifier = [v11 itemScopedIdentifier];
        v14 = [(NSMutableDictionary *)self->_currentBatchOfComputeStatesNeedingPayload objectForKeyedSubscript:itemScopedIdentifier];
        v15 = v14;
        if (!v14)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v17 = __CPLBatchOSLogDomain();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v39 = v11;
              _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Client provided a file URL for an unknown %@", buf, 0xCu);
            }

LABEL_18:
          }

          goto LABEL_20;
        }

        [v14 setFileURL:fileURL];
        v16 = [(NSMutableDictionary *)self->_cloudComputeStatesNeedingPayload objectForKeyedSubscript:itemScopedIdentifier];
        if (v16)
        {
          v17 = v16;
          [v16 setFileURL:fileURL];
          [(CPLUploadComputeStatesAccumulator *)self addLocalComputeStateToUpload:v15 cloudComputeState:v17];
          [(NSMutableDictionary *)self->_currentBatchOfComputeStatesNeedingPayload removeObjectForKey:itemScopedIdentifier];
          goto LABEL_18;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = v15;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Missing cloud compute state for %@", buf, 0xCu);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesAccumulator.m"];
        v32 = v15;
        v24 = @"Missing cloud compute state for %@";
        v25 = currentHandler;
        v26 = v33;
        selfCopy3 = self;
        v28 = v23;
        v29 = 100;
LABEL_31:
        [v25 handleFailureInMethod:v26 object:selfCopy3 file:v28 lineNumber:v29 description:{v24, v32}];

        abort();
      }

      if (_CPLSilentLogging)
      {
        goto LABEL_21;
      }

      itemScopedIdentifier = __CPLBatchOSLogDomain();
      if (os_log_type_enabled(itemScopedIdentifier, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v11;
        _os_log_impl(&dword_1DC05A000, itemScopedIdentifier, OS_LOG_TYPE_ERROR, "Client provided no file URL for %@", buf, 0xCu);
      }

LABEL_20:

LABEL_21:
    }

    v8 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  }

  while (v8);
LABEL_23:

  allValues = [(NSMutableDictionary *)self->_currentBatchOfComputeStatesNeedingPayload allValues];

  v19 = *MEMORY[0x1E69E9840];

  return allValues;
}

- (id)popNextBatchOfLocalComputeStatesNeedingPayload
{
  batchEnumerator = self->_batchEnumerator;
  if (!batchEnumerator)
  {
    objectEnumerator = [(NSMutableArray *)self->_batchedLocalComputeStatesNeedingPayload objectEnumerator];
    v5 = self->_batchEnumerator;
    self->_batchEnumerator = objectEnumerator;

    batchEnumerator = self->_batchEnumerator;
  }

  nextObject = [(NSEnumerator *)batchEnumerator nextObject];
  currentBatchOfComputeStatesNeedingPayload = self->_currentBatchOfComputeStatesNeedingPayload;
  self->_currentBatchOfComputeStatesNeedingPayload = nextObject;

  v8 = self->_currentBatchOfComputeStatesNeedingPayload;

  return [(NSMutableDictionary *)v8 allValues];
}

- (void)requestPayloadForLocalComputeState:(id)state cloudComputeState:(id)computeState
{
  stateCopy = state;
  computeStateCopy = computeState;
  if (self->_batchEnumerator)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "Trying to enqueue compute states while we are already enumerating batches", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesAccumulator.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v25 lineNumber:52 description:@"Trying to enqueue compute states while we are already enumerating batches"];

    abort();
  }

  v8 = computeStateCopy;
  currentBatchOfComputeStatesNeedingPayload = self->_currentBatchOfComputeStatesNeedingPayload;
  if (currentBatchOfComputeStatesNeedingPayload)
  {
    if ([(NSMutableDictionary *)currentBatchOfComputeStatesNeedingPayload count]>= self->_maximumPayloadRequestsBatchSize)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:self->_maximumPayloadRequestsBatchSize];
      v11 = self->_currentBatchOfComputeStatesNeedingPayload;
      self->_currentBatchOfComputeStatesNeedingPayload = v10;

      [(NSMutableArray *)self->_batchedLocalComputeStatesNeedingPayload addObject:self->_currentBatchOfComputeStatesNeedingPayload];
    }
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:self->_maximumPayloadRequestsBatchSize];
    v13 = self->_currentBatchOfComputeStatesNeedingPayload;
    self->_currentBatchOfComputeStatesNeedingPayload = v12;

    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    capacity = self->_capacity;
    maximumPayloadRequestsBatchSize = self->_maximumPayloadRequestsBatchSize;
    if (maximumPayloadRequestsBatchSize > capacity)
    {
      v17 = 1;
    }

    else
    {
      v17 = capacity / maximumPayloadRequestsBatchSize;
    }

    v18 = [v14 initWithCapacity:v17];
    batchedLocalComputeStatesNeedingPayload = self->_batchedLocalComputeStatesNeedingPayload;
    self->_batchedLocalComputeStatesNeedingPayload = v18;

    [(NSMutableArray *)self->_batchedLocalComputeStatesNeedingPayload addObject:self->_currentBatchOfComputeStatesNeedingPayload];
    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:self->_maximumPayloadRequestsBatchSize];
    cloudComputeStatesNeedingPayload = self->_cloudComputeStatesNeedingPayload;
    self->_cloudComputeStatesNeedingPayload = v20;
  }

  itemScopedIdentifier = [stateCopy itemScopedIdentifier];
  [(NSMutableDictionary *)self->_currentBatchOfComputeStatesNeedingPayload setObject:stateCopy forKeyedSubscript:itemScopedIdentifier];
  [(NSMutableDictionary *)self->_cloudComputeStatesNeedingPayload setObject:v8 forKeyedSubscript:itemScopedIdentifier];
}

- (void)addLocalComputeStateToUpload:(id)upload cloudComputeState:(id)state
{
  stateCopy = state;
  uploadCopy = upload;
  itemScopedIdentifier = [uploadCopy itemScopedIdentifier];
  [(NSMutableDictionary *)self->_localComputeStatesToUpload setObject:uploadCopy forKeyedSubscript:itemScopedIdentifier];

  [(NSMutableDictionary *)self->_cloudComputeStatesToUpload setObject:stateCopy forKeyedSubscript:itemScopedIdentifier];
}

- (CPLUploadComputeStatesAccumulator)initWithCapacity:(unint64_t)capacity maximumPayloadRequestsBatchSize:(unint64_t)size
{
  v13.receiver = self;
  v13.super_class = CPLUploadComputeStatesAccumulator;
  v6 = [(CPLUploadComputeStatesAccumulator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_capacity = capacity;
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v6->_capacity];
    localComputeStatesToUpload = v7->_localComputeStatesToUpload;
    v7->_localComputeStatesToUpload = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v7->_capacity];
    cloudComputeStatesToUpload = v7->_cloudComputeStatesToUpload;
    v7->_cloudComputeStatesToUpload = v10;

    v7->_maximumPayloadRequestsBatchSize = size;
  }

  return v7;
}

@end