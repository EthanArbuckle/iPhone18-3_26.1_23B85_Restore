@interface CPLUploadComputeStatesAccumulator
- (CPLUploadComputeStatesAccumulator)initWithCapacity:(unint64_t)a3 maximumPayloadRequestsBatchSize:(unint64_t)a4;
- (id)localComputeStatesToDropAfterClientProvidedPayloadForLocalComputeStates:(id)a3;
- (id)popNextBatchOfLocalComputeStatesNeedingPayload;
- (void)addLocalComputeStateToUpload:(id)a3 cloudComputeState:(id)a4;
- (void)enumerateUploadedComputeStateWithBlock:(id)a3;
- (void)requestPayloadForLocalComputeState:(id)a3 cloudComputeState:(id)a4;
@end

@implementation CPLUploadComputeStatesAccumulator

- (void)enumerateUploadedComputeStateWithBlock:(id)a3
{
  v4 = a3;
  localComputeStatesToUpload = self->_localComputeStatesToUpload;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__CPLUploadComputeStatesAccumulator_enumerateUploadedComputeStateWithBlock___block_invoke;
  v7[3] = &unk_1E861BD50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (id)localComputeStatesToDropAfterClientProvidedPayloadForLocalComputeStates:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
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

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesAccumulator.m"];
    v24 = @"Trying to update payload of compute states without having started enumerating the batches";
    v25 = v22;
    v26 = a2;
    v27 = self;
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

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesAccumulator.m"];
    v24 = @"Trying to update payload without a batch";
    v25 = v22;
    v26 = a2;
    v27 = self;
    v28 = v23;
    v29 = 85;
    goto LABEL_31;
  }

  v33 = a2;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
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
      v12 = [v11 fileURL];
      if (v12)
      {
        v13 = [v11 itemScopedIdentifier];
        v14 = [(NSMutableDictionary *)self->_currentBatchOfComputeStatesNeedingPayload objectForKeyedSubscript:v13];
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

        [v14 setFileURL:v12];
        v16 = [(NSMutableDictionary *)self->_cloudComputeStatesNeedingPayload objectForKeyedSubscript:v13];
        if (v16)
        {
          v17 = v16;
          [v16 setFileURL:v12];
          [(CPLUploadComputeStatesAccumulator *)self addLocalComputeStateToUpload:v15 cloudComputeState:v17];
          [(NSMutableDictionary *)self->_currentBatchOfComputeStatesNeedingPayload removeObjectForKey:v13];
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

        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesAccumulator.m"];
        v32 = v15;
        v24 = @"Missing cloud compute state for %@";
        v25 = v22;
        v26 = v33;
        v27 = self;
        v28 = v23;
        v29 = 100;
LABEL_31:
        [v25 handleFailureInMethod:v26 object:v27 file:v28 lineNumber:v29 description:{v24, v32}];

        abort();
      }

      if (_CPLSilentLogging)
      {
        goto LABEL_21;
      }

      v13 = __CPLBatchOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v11;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Client provided no file URL for %@", buf, 0xCu);
      }

LABEL_20:

LABEL_21:
    }

    v8 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  }

  while (v8);
LABEL_23:

  v18 = [(NSMutableDictionary *)self->_currentBatchOfComputeStatesNeedingPayload allValues];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)popNextBatchOfLocalComputeStatesNeedingPayload
{
  batchEnumerator = self->_batchEnumerator;
  if (!batchEnumerator)
  {
    v4 = [(NSMutableArray *)self->_batchedLocalComputeStatesNeedingPayload objectEnumerator];
    v5 = self->_batchEnumerator;
    self->_batchEnumerator = v4;

    batchEnumerator = self->_batchEnumerator;
  }

  v6 = [(NSEnumerator *)batchEnumerator nextObject];
  currentBatchOfComputeStatesNeedingPayload = self->_currentBatchOfComputeStatesNeedingPayload;
  self->_currentBatchOfComputeStatesNeedingPayload = v6;

  v8 = self->_currentBatchOfComputeStatesNeedingPayload;

  return [(NSMutableDictionary *)v8 allValues];
}

- (void)requestPayloadForLocalComputeState:(id)a3 cloudComputeState:(id)a4
{
  v26 = a3;
  v7 = a4;
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

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesAccumulator.m"];
    [v24 handleFailureInMethod:a2 object:self file:v25 lineNumber:52 description:@"Trying to enqueue compute states while we are already enumerating batches"];

    abort();
  }

  v8 = v7;
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

  v22 = [v26 itemScopedIdentifier];
  [(NSMutableDictionary *)self->_currentBatchOfComputeStatesNeedingPayload setObject:v26 forKeyedSubscript:v22];
  [(NSMutableDictionary *)self->_cloudComputeStatesNeedingPayload setObject:v8 forKeyedSubscript:v22];
}

- (void)addLocalComputeStateToUpload:(id)a3 cloudComputeState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 itemScopedIdentifier];
  [(NSMutableDictionary *)self->_localComputeStatesToUpload setObject:v7 forKeyedSubscript:v8];

  [(NSMutableDictionary *)self->_cloudComputeStatesToUpload setObject:v6 forKeyedSubscript:v8];
}

- (CPLUploadComputeStatesAccumulator)initWithCapacity:(unint64_t)a3 maximumPayloadRequestsBatchSize:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = CPLUploadComputeStatesAccumulator;
  v6 = [(CPLUploadComputeStatesAccumulator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_capacity = a3;
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v6->_capacity];
    localComputeStatesToUpload = v7->_localComputeStatesToUpload;
    v7->_localComputeStatesToUpload = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v7->_capacity];
    cloudComputeStatesToUpload = v7->_cloudComputeStatesToUpload;
    v7->_cloudComputeStatesToUpload = v10;

    v7->_maximumPayloadRequestsBatchSize = a4;
  }

  return v7;
}

@end