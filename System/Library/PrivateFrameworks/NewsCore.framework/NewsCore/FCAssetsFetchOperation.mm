@interface FCAssetsFetchOperation
- (FCAssetsFetchOperation)initWithAssetHandle:(id)handle;
- (FCAssetsFetchOperation)initWithAssetHandles:(id)handles;
- (void)_finish;
- (void)performOperation;
@end

@implementation FCAssetsFetchOperation

- (void)performOperation
{
  selfCopy = self;
  if (self)
  {
    self = self->_assetHandles;
  }

  v3 = [(FCAssetsFetchOperation *)self fc_countOfObjectsPassingTest:&__block_literal_global_183];
  if ([(FCFetchOperation *)selfCopy cachePolicy]== 3 || (!selfCopy ? (v4 = 0) : (v4 = selfCopy->_assetHandles), v3 == [(NSArray *)v4 count]))
  {
    progressHandler = [(FCAssetsFetchOperation *)selfCopy progressHandler];

    if (progressHandler)
    {
      progressHandler2 = [(FCAssetsFetchOperation *)selfCopy progressHandler];
      if (selfCopy)
      {
        assetHandles = selfCopy->_assetHandles;
      }

      else
      {
        assetHandles = 0;
      }

      v8 = assetHandles;
      if ([(NSArray *)v8 count])
      {
        if (selfCopy)
        {
          v10 = selfCopy->_assetHandles;
        }

        else
        {
          v10 = 0;
        }

        v9.n128_f64[0] = v3 / [(NSArray *)v10 count];
      }

      else
      {
        v9.n128_u64[0] = 1.0;
      }

      progressHandler2[2](progressHandler2, v9);
    }

    [(FCAssetsFetchOperation *)&selfCopy->super.super.super.super.isa _finish];
  }

  else
  {
    v11 = dispatch_group_create();
    v12 = objc_alloc_init(MEMORY[0x1E69B6920]);
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__FCAssetsFetchOperation_performOperation__block_invoke_2;
    aBlock[3] = &unk_1E7C47A08;
    aBlock[4] = selfCopy;
    v13 = v12;
    v34 = v13;
    v35 = v36;
    v14 = _Block_copy(aBlock);
    if ([(FCAssetsFetchOperation *)selfCopy maxConcurrentFetchCount])
    {
      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v16 = dispatch_queue_create("FCAssetsFetchOperation.serial", v15);
      if (selfCopy)
      {
        objc_storeStrong(&selfCopy->_serialQueue, v16);
      }

      v17 = dispatch_semaphore_create([(FCAssetsFetchOperation *)selfCopy maxConcurrentFetchCount]);
      if (selfCopy)
      {
        v18 = selfCopy->_assetHandles;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __42__FCAssetsFetchOperation_performOperation__block_invoke_7;
      v25[3] = &unk_1E7C47A58;
      v26 = v11;
      v27 = selfCopy;
      v20 = v17;
      v28 = v20;
      v29 = v14;
      [(NSArray *)v19 enumerateObjectsUsingBlock:v25];
    }

    else
    {
      if (selfCopy)
      {
        v21 = selfCopy->_assetHandles;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __42__FCAssetsFetchOperation_performOperation__block_invoke_5;
      v30[3] = &unk_1E7C47A30;
      v31 = v11;
      v32 = v14;
      [(NSArray *)v22 enumerateObjectsUsingBlock:v30];

      v20 = v31;
    }

    if (FCDispatchGroupIsEmpty(v11))
    {
      block[5] = MEMORY[0x1E69E9820];
      block[6] = 3221225472;
      block[7] = __42__FCAssetsFetchOperation_performOperation__block_invoke_10;
      block[8] = &unk_1E7C36EA0;
      block[9] = selfCopy;
      [(FCAssetsFetchOperation *)&selfCopy->super.super.super.super.isa _finish];
    }

    else
    {
      v23 = FCDispatchQueueForQualityOfService([(FCAssetsFetchOperation *)selfCopy qualityOfService]);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__FCAssetsFetchOperation_performOperation__block_invoke_11;
      block[3] = &unk_1E7C36EA0;
      block[4] = selfCopy;
      dispatch_group_notify(v11, v23, block);
    }

    _Block_object_dispose(v36, 8);
  }
}

BOOL __42__FCAssetsFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dataProvider];
  v3 = v2 != 0;

  return v3;
}

- (void)_finish
{
  v32 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v25 = [MEMORY[0x1E695DFA8] set];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v2 = self[56];
    v3 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v3)
    {
      v4 = v3;
      downloadError = 0;
      v6 = 0;
      v7 = *v28;
      do
      {
        v8 = 0;
        do
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v27 + 1) + 8 * v8);
          dataProvider = [v9 dataProvider];

          if (dataProvider)
          {
            interestTokenHandler = [self interestTokenHandler];

            if (interestTokenHandler)
            {
              interestTokenHandler2 = [self interestTokenHandler];
              if (v9)
              {
                v13 = v9[11];
              }

              else
              {
                v13 = 0;
              }

              v14 = v13;
              (interestTokenHandler2)[2](interestTokenHandler2, v14);
            }

            v6 = 1;
          }

          else
          {
            remoteURL = [v9 remoteURL];
            absoluteString = [remoteURL absoluteString];
            [v25 addObject:absoluteString];

            if (!downloadError)
            {
              downloadError = [v9 downloadError];
            }
          }

          ++v8;
        }

        while (v4 != v8);
        v17 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
        v4 = v17;
      }

      while (v17);

      if (v6)
      {
        goto LABEL_26;
      }
    }

    else
    {

      downloadError = 0;
    }

    if ([self[56] count])
    {
      downloadError = downloadError;
      v18 = downloadError;
      if (!downloadError)
      {
        if ([self cachePolicy] == 3)
        {
          [MEMORY[0x1E696ABC0] fc_notCachedErrorWithMissingObjects:v25];
        }

        else
        {
          [MEMORY[0x1E696ABC0] fc_missingAssetErrorWithAssetHandles:self[56]];
        }
        v18 = ;
      }

      v20 = [FCFetchOperationResult resultWithStatus:3 fetchedObject:0 error:v18];
      goto LABEL_37;
    }

LABEL_26:
    if (self[56])
    {
      v19 = self[56];
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    v20 = [FCFetchOperationResult resultWithStatus:0 fetchedObject:v19 error:0];
    archiveHandler = [self archiveHandler];

    if (!archiveHandler)
    {
      goto LABEL_38;
    }

    v18 = self[56];
    maxConcurrentFetchCount = [self maxConcurrentFetchCount];
    if (maxConcurrentFetchCount)
    {
      v23 = maxConcurrentFetchCount;
    }

    else
    {
      v23 = -1;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __33__FCAssetsFetchOperation__finish__block_invoke;
    v26[3] = &unk_1E7C3C550;
    v26[4] = self;
    [v18 fc_visitSubarraysWithMaxCount:v23 block:v26];
LABEL_37:

LABEL_38:
    [v20 setMissingObjectDescriptions:v25];
    [self finishExecutingWithResult:v20];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (FCAssetsFetchOperation)initWithAssetHandles:(id)handles
{
  handlesCopy = handles;
  v9.receiver = self;
  v9.super_class = FCAssetsFetchOperation;
  v5 = [(FCFetchOperation *)&v9 init];
  if (v5)
  {
    v6 = [handlesCopy copy];
    assetHandles = v5->_assetHandles;
    v5->_assetHandles = v6;
  }

  return v5;
}

- (FCAssetsFetchOperation)initWithAssetHandle:(id)handle
{
  v10[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = handleCopy;
  if (handleCopy)
  {
    v10[0] = handleCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(FCAssetsFetchOperation *)self initWithAssetHandles:v6];
  }

  else
  {
    v7 = [(FCAssetsFetchOperation *)self initWithAssetHandles:MEMORY[0x1E695E0F0]];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __42__FCAssetsFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 relativePriority];
  v9 = [*(a1 + 32) flags];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __42__FCAssetsFetchOperation_performOperation__block_invoke_3;
  v17 = &unk_1E7C479E0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v18 = v10;
  v19 = v11;
  v21 = *(a1 + 48);
  v12 = v5;
  v20 = v12;
  v13 = [v7 fetchDataProviderWithPriority:v8 flags:v9 completion:&v14];

  if (v13)
  {
    [*(a1 + 32) associateChildOperation:{v13, v14, v15, v16, v17, v18, v19}];
  }
}

uint64_t __42__FCAssetsFetchOperation_performOperation__block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__FCAssetsFetchOperation_performOperation__block_invoke_4;
    v7[3] = &unk_1E7C3A3A0;
    v4 = a1[4];
    v5 = a1[7];
    v7[4] = a1[5];
    v7[5] = v5;
    [v4 performWithLockSync:v7];
  }

  return (*(a1[6] + 16))();
}

void __42__FCAssetsFetchOperation_performOperation__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) progressHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) progressHandler];
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 448);
    }

    else
    {
      v5 = 0;
    }

    v3[2](v3, *(*(*(a1 + 40) + 8) + 24) / [v5 count]);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __42__FCAssetsFetchOperation_performOperation__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__FCAssetsFetchOperation_performOperation__block_invoke_6;
  v6[3] = &unk_1E7C36EA0;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  (*(v5 + 16))(v5, v4, v6);
}

void __42__FCAssetsFetchOperation_performOperation__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v4[57];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v4 qualityOfService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__FCAssetsFetchOperation_performOperation__block_invoke_8;
  v10[3] = &unk_1E7C444B8;
  v11 = *(a1 + 48);
  v14 = *(a1 + 56);
  v12 = v3;
  v13 = *(a1 + 32);
  v8 = v3;
  v9 = FCBlockWithQualityOfService(v7, v10);
  dispatch_async(v6, v9);
}

void __42__FCAssetsFetchOperation_performOperation__block_invoke_8(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__FCAssetsFetchOperation_performOperation__block_invoke_9;
  v4[3] = &unk_1E7C36C58;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  (*(v3 + 16))(v3, v2, v4);
}

intptr_t __42__FCAssetsFetchOperation_performOperation__block_invoke_9(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void __33__FCAssetsFetchOperation__finish__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 archiveHandler];
  v4 = [v3 contentArchive];

  v5[2](v5, v4);
}

@end