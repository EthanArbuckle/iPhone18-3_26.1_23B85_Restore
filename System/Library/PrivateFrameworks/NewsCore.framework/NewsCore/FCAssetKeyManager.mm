@interface FCAssetKeyManager
- (id)cachedWrappingKeyWithID:(id)d;
- (id)initWithService:(void *)service cache:(void *)cache delegate:;
- (uint64_t)_canRetryAfterNetworkError:(uint64_t)error;
- (void)clearUnauthorizedAssetKeys;
- (void)eraseAllKeys;
- (void)fetchWrappingKeyWithID:(id)d completionHandler:(id)handler;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
@end

@implementation FCAssetKeyManager

- (id)initWithService:(void *)service cache:(void *)cache delegate:
{
  v8 = a2;
  serviceCopy = service;
  cacheCopy = cache;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = FCAssetKeyManager;
    v11 = objc_msgSendSuper2(&v19, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 2, service);
      objc_storeWeak(self + 3, cacheCopy);
      v12 = objc_alloc_init(FCThreadSafeMutableSet);
      v13 = self[5];
      self[5] = v12;

      v14 = [[FCOperationThrottler alloc] initWithDelegate:self];
      v15 = self[4];
      self[4] = v14;

      v16 = objc_alloc_init(FCThreadSafeMutableDictionary);
      v17 = self[6];
      self[6] = v16;
    }
  }

  return self;
}

- (id)cachedWrappingKeyWithID:(id)d
{
  if (self)
  {
    self = self->_cache;
  }

  return [(FCAssetKeyManager *)self wrappingKeyForWrappingKeyID:d];
}

- (void)fetchWrappingKeyWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v9 = [(FCAssetKeyCacheType *)cache wrappingKeyForWrappingKeyID:dCopy];
  if (v9)
  {
    handlerCopy[2](handlerCopy, v9, 0);
  }

  else
  {
    if (self)
    {
      errorsByKey = self->_errorsByKey;
    }

    else
    {
      errorsByKey = 0;
    }

    v11 = [(FCThreadSafeMutableDictionary *)errorsByKey objectForKey:dCopy];
    if (v11 && ([(FCAssetKeyManager *)self _canRetryAfterNetworkError:v11]& 1) == 0)
    {
      (handlerCopy)[2](handlerCopy, 0, v11);
    }

    else
    {
      if (self)
      {
        [(FCThreadSafeMutableSet *)self->_pendingWrappingKeyIDs addObject:dCopy];
        throttler = self->_throttler;
      }

      else
      {
        [0 addObject:dCopy];
        throttler = 0;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__FCAssetKeyManager_fetchWrappingKeyWithID_completionHandler___block_invoke;
      v13[3] = &unk_1E7C38FF0;
      v13[4] = self;
      v14 = dCopy;
      v15 = handlerCopy;
      [(FCOperationThrottler *)throttler tickleWithCompletion:v13];
    }
  }
}

- (uint64_t)_canRetryAfterNetworkError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    domain = [v3 domain];
    v6 = [domain isEqualToString:@"FCErrorDomain"];

    if (v6)
    {
      if ([v4 code] == 27)
      {
        error = 0;
        goto LABEL_10;
      }

LABEL_9:
      error = 1;
      goto LABEL_10;
    }

    domain2 = [v4 domain];
    v8 = [domain2 isEqualToString:@"FCEndpointConnectionErrorDomain"];

    if (!v8)
    {
      goto LABEL_9;
    }

    code = [v4 code];
    error = 0;
    if (code != 429 && code != 500 && code != 503)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  return error;
}

void __62__FCAssetKeyManager_fetchWrappingKeyWithID_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 wrappingKeyForWrappingKeyID:a1[5]];
  v5 = a1[6];
  v10 = v4;
  if (v4)
  {
    (*(v5 + 16))(v5, v4, 0);
  }

  else
  {
    v6 = a1[4];
    if (v6)
    {
      v6 = v6[6];
    }

    v7 = a1[5];
    v8 = v6;
    v9 = [v8 objectForKey:v7];
    (*(v5 + 16))(v5, 0, v9);
  }
}

- (void)clearUnauthorizedAssetKeys
{
  if (self)
  {
    self = self->_errorsByKey;
  }

  [(FCAssetKeyManager *)self readWriteWithAccessor:&__block_literal_global_106];
}

void __47__FCAssetKeyManager_clearUnauthorizedAssetKeys__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v2 objectForKey:v8];
        v10 = [v9 domain];
        if ([v10 isEqualToString:@"FCErrorDomain"])
        {
          v11 = [v9 code];

          if (v11 == 27)
          {
            [v2 removeObjectForKey:v8];
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)eraseAllKeys
{
  if (self)
  {
    [(FCAssetKeyCacheType *)self->_cache removeAllWrappingKeys];
    errorsByKey = self->_errorsByKey;
  }

  else
  {
    [0 removeAllWrappingKeys];
    errorsByKey = 0;
  }

  [(FCThreadSafeMutableDictionary *)errorsByKey removeAllObjects];
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  completionCopy = completion;
  array = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    pendingWrappingKeyIDs = self->_pendingWrappingKeyIDs;
  }

  else
  {
    pendingWrappingKeyIDs = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__FCAssetKeyManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v19[3] = &unk_1E7C37CD8;
  v19[4] = self;
  v8 = array;
  v20 = v8;
  [(FCThreadSafeMutableSet *)pendingWrappingKeyIDs readWriteWithAccessor:v19];
  if ([v8 count])
  {
    if (self)
    {
      service = self->_service;
    }

    else
    {
      service = 0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__FCAssetKeyManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke_3;
    v11[3] = &unk_1E7C378E8;
    v11[4] = self;
    v12 = v8;
    v13 = completionCopy;
    [(FCAssetKeyServiceType *)service fetchWrappingKeysWithIDs:v12 completionHandler:v11];

    v10 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __76__FCAssetKeyManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2;
    v17 = &unk_1E7C379C8;
    v18 = completionCopy;
    v18[2]();
    v10 = v18;
  }
}

void __76__FCAssetKeyManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 allObjects];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = *(v10 + 16);
        }

        else
        {
          v11 = 0;
        }

        v12 = [v11 wrappingKeyForWrappingKeyID:*(*(&v20 + 1) + 8 * v8)];
        if (v12)
        {
          v13 = v12;
          v14 = v3;
          v15 = v13;
LABEL_10:
          [v14 removeObject:v15];
          goto LABEL_16;
        }

        v16 = *(a1 + 32);
        if (v16)
        {
          v17 = *(v16 + 48);
        }

        else
        {
          v17 = 0;
        }

        v13 = [v17 objectForKey:v9];
        if (v13 && ([(FCAssetKeyManager *)*(a1 + 32) _canRetryAfterNetworkError:v13]& 1) == 0)
        {
          v14 = v3;
          v15 = 0;
          goto LABEL_10;
        }

        [*(a1 + 40) addObject:v9];
        if ([*(a1 + 40) count] >= 0xB)
        {

          goto LABEL_24;
        }

LABEL_16:

        ++v8;
      }

      while (v6 != v8);
      v18 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v6 = v18;
    }

    while (v18);
  }

LABEL_24:

  v19 = *MEMORY[0x1E69E9840];
}

void __76__FCAssetKeyManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((v7 + 24));
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = 0;
    WeakRetained = 0;
  }

  v10 = [WeakRetained shouldAssetKeyManagerSimulateUnauthorizedAssetKeys:v9];

  if (v10)
  {

    v11 = MEMORY[0x1E696ABC0];
    v12 = [*(a1 + 40) firstObject];
    v13 = [v11 fc_unauthorizedAssetKeyErrorWithWrappingKeyID:v12];

    v5 = 0;
    v6 = v13;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __76__FCAssetKeyManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke_4;
  v25[3] = &unk_1E7C42348;
  v25[4] = *(a1 + 32);
  [v5 enumerateKeysAndObjectsUsingBlock:v25];
  if (v6)
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 48);
    }

    else
    {
      v15 = 0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__FCAssetKeyManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke_5;
    v22[3] = &unk_1E7C37D00;
    v23 = *(a1 + 40);
    v24 = v6;
    [v15 readWriteWithAccessor:v22];
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 40);
  }

  else
  {
    v17 = 0;
  }

  [v17 removeObjectsInArray:*(a1 + 40)];
  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 40);
  }

  else
  {
    v19 = 0;
  }

  if (([v19 isEmpty] & 1) == 0)
  {
    v20 = *(a1 + 32);
    if (v20)
    {
      v21 = *(v20 + 32);
    }

    else
    {
      v21 = 0;
    }

    [v21 tickle];
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t __76__FCAssetKeyManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  return [v4 setWrappingKey:a3 forWrappingKeyID:a2];
}

void __76__FCAssetKeyManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [v3 setObject:*(a1 + 40) forKey:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end