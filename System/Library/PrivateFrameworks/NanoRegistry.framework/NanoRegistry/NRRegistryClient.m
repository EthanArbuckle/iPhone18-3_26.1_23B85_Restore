@interface NRRegistryClient
- (BOOL)daemonIdle;
- (NRNSXPCConnectionProtocol)rawConnection;
- (NRRegistryClient)initWithParameters:(id)a3;
- (id)addDiffIndexObserverWithWriteBlock:(id)a3;
- (uint64_t)_getDevicesUpdateCounterNotifyTokenValue;
- (unint64_t)devicesUpdateCounter;
- (void)_connectToDaemon;
- (void)_finishQueryWithStaringToken:(uint64_t)a3 replacementToken:;
- (void)_fireAllQueryCompletionBlocks;
- (void)_grabRegistryWithReadBlock:(id)a3;
- (void)_queryDaemonWithStartingTokenValue:(uint64_t)a3 currentTokenValue:(int)a4 syncXPC:(void *)a5 withBlock:;
- (void)_queryDataAsyncForce:(void *)a3 ifNeededWithBlock:;
- (void)_warnAboutMissingEntitlement;
- (void)grabRegistryWithReadBlock:(id)a3;
- (void)grabRegistryWithReadBlockAsync:(id)a3;
- (void)grabRegistryWithWriteBlockAsync:(id)a3;
- (void)invalidate;
- (void)removeDiffIndexObserver:(id)a3;
- (void)setCollection:(id)a3;
- (void)syncGrabRegistryWithReadBlock:(id)a3;
@end

@implementation NRRegistryClient

- (uint64_t)_getDevicesUpdateCounterNotifyTokenValue
{
  if (result)
  {
    v1 = result;
    check = 1;
    notify_check(*(result + 96), &check);
    if (!check && *(v1 + 88) == 1)
    {
      return *(v1 + 120);
    }

    v2 = 0;
    if (notify_get_state(*(v1 + 96), &v2))
    {
      return *(v1 + 120);
    }

    else
    {
      *(v1 + 88) = 1;
      result = v2;
      *(v1 + 120) = v2;
    }
  }

  return result;
}

- (unint64_t)devicesUpdateCounter
{
  if (self)
  {
    v2 = self->_tokenValue & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
  }

  objc_opt_self();
  return v2;
}

- (BOOL)daemonIdle
{
  if ([(NRRegistry *)self supportsWatch])
  {
    return [(NRRegistryClient *)self _getDevicesUpdateCounterNotifyTokenValue]>> 63;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)_fireAllQueryCompletionBlocks
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 136);
  v3 = *(a1 + 136);
  *(a1 + 136) = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 8);
        }

        else
        {
          v10 = 0;
        }

        (*(v10 + 16))(v10);
        ++v8;
      }

      while (v6 != v8);
      v11 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NRNSXPCConnectionProtocol)rawConnection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__NRRegistryClient_rawConnection__block_invoke;
  v4[3] = &unk_1E86DAE00;
  v4[4] = self;
  v4[5] = &v5;
  [(NRRegistry *)self performUnderCollectionLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __33__NRRegistryClient_rawConnection__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _connectToDaemon];
  v2 = *(*(a1 + 32) + 104);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)_connectToDaemon
{
  if (!self->_connection)
  {
    v6 = [objc_msgSend(objc_opt_class() "proxyClass")];
    v3 = [objc_alloc(objc_msgSend(objc_opt_class() "xpcConnectionClass"))];
    v4 = [objc_msgSend(objc_opt_class() "proxyClass")];
    [v3 setRemoteObjectInterface:v4];

    v5 = [objc_msgSend(objc_opt_class() "proxyClass")];
    if (v5)
    {
      [v3 setExportedInterface:v5];
      [v3 setExportedObject:self];
    }

    objc_storeStrong(&self->_connection, v3);
    [v3 resume];
  }
}

- (NRRegistryClient)initWithParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v5 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"NRRegistryShouldCreateCollection"];
  v13.receiver = self;
  v13.super_class = NRRegistryClient;
  v6 = [(NRRegistry *)&v13 initWithParameters:v5];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = [(NRRegistry *)v6 managementQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__NRRegistryClient_initWithParameters___block_invoke;
    block[3] = &unk_1E86DB830;
    v10 = v6;
    objc_copyWeak(&v11, &location);
    dispatch_async(v7, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __39__NRRegistryClient_initWithParameters___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) managementQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__NRRegistryClient_initWithParameters___block_invoke_2;
  v7[3] = &unk_1E86DB808;
  objc_copyWeak(&v8, (a1 + 40));
  *(*(a1 + 32) + 92) = [v3 registerNotifyTokenWithName:@"com.apple.nanoregistry.NRDevicesUpdateCounterNotifyNotification" withQueue:v4 withBlock:v7];

  v5 = *(a1 + 32);
  *(v5 + 96) = [objc_opt_class() registerNotifyTokenWithName:@"com.apple.nanoregistry.NRDevicesUpdateCounterNotifyNotification" withQueue:0 withBlock:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    [(NRRegistryClient *)v6 _queryDataAsyncForce:&__block_literal_global_32 ifNeededWithBlock:?];
  }

  objc_destroyWeak(&v8);
}

void __39__NRRegistryClient_initWithParameters___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(NRRegistryClient *)WeakRetained _queryDataAsyncForce:0 ifNeededWithBlock:?];
    WeakRetained = v2;
  }
}

- (void)syncGrabRegistryWithReadBlock:(id)a3
{
  v4 = a3;
  v5 = [(NRRegistry *)self managementQueue];
  dispatch_assert_queue_not_V2(v5);

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = [(NRRegistry *)self managementQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__NRRegistryClient_syncGrabRegistryWithReadBlock___block_invoke;
  block[3] = &unk_1E86DB8A0;
  block[4] = self;
  v15 = &v16;
  v7 = v4;
  v14 = v7;
  dispatch_sync(v6, block);

  if ((v17[3] & 1) == 0)
  {
    v8 = dispatch_semaphore_create(0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__NRRegistryClient_syncGrabRegistryWithReadBlock___block_invoke_3;
    v10[3] = &unk_1E86DB3C8;
    v12 = v7;
    v9 = v8;
    v11 = v9;
    [(NRRegistryClient *)self grabRegistryWithReadBlockAsync:v10];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  _Block_object_dispose(&v16, 8);
}

void __50__NRRegistryClient_syncGrabRegistryWithReadBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(v2 + 112);
  if ([*(a1 + 32) supportsWatch])
  {
    DevicesUpdateCounterNotifyToken = [(NRRegistryClient *)v2 _getDevicesUpdateCounterNotifyTokenValue];
  }

  else
  {
    DevicesUpdateCounterNotifyToken = [v2 devicesUpdateCounter] | 0xC000000000000000;
  }

  if ((*(v2 + 89) & 1) == 0 && DevicesUpdateCounterNotifyToken && v3 == DevicesUpdateCounterNotifyToken)
  {
    v2 = *(a1 + 32);
LABEL_12:
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__NRRegistryClient_syncGrabRegistryWithReadBlock___block_invoke_2;
    v7[3] = &unk_1E86DACC0;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    *(*(*(a1 + 48) + 8) + 24) = [v2 enqueueUnlessSuspended:v7];
  }
}

void __50__NRRegistryClient_syncGrabRegistryWithReadBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) collection];
  v3 = [*(a1 + 32) secureProperties];
  (*(v2 + 16))(v2, v4, v3);
}

intptr_t __50__NRRegistryClient_syncGrabRegistryWithReadBlock___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)grabRegistryWithReadBlock:(id)a3
{
  v4 = a3;
  v5 = [(NRRegistry *)self managementQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__NRRegistryClient_grabRegistryWithReadBlock___block_invoke;
  v7[3] = &unk_1E86DB530;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_grabRegistryWithReadBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__NRRegistryClient__grabRegistryWithReadBlock___block_invoke;
  v7[3] = &unk_1E86DB530;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v6 = v5;
  if (self)
  {
    [(NRRegistryClient *)self _queryDataAsyncForce:v7 ifNeededWithBlock:?];
    v6 = v8;
  }
}

void __47__NRRegistryClient__grabRegistryWithReadBlock___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__NRRegistryClient__grabRegistryWithReadBlock___block_invoke_2;
  v4[3] = &unk_1E86DACC0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 enqueue:v4];
}

void __47__NRRegistryClient__grabRegistryWithReadBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) collection];
  v3 = [*(a1 + 32) secureProperties];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)grabRegistryWithReadBlockAsync:(id)a3
{
  v4 = a3;
  v5 = [(NRRegistry *)self managementQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__NRRegistryClient_grabRegistryWithReadBlockAsync___block_invoke;
  v7[3] = &unk_1E86DB530;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)grabRegistryWithWriteBlockAsync:(id)a3
{
  v4 = a3;
  v5 = [(NRRegistry *)self managementQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(NRRegistry *)self managementQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__NRRegistryClient_grabRegistryWithWriteBlockAsync___block_invoke;
  v8[3] = &unk_1E86DB530;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __52__NRRegistryClient_grabRegistryWithWriteBlockAsync___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = [v1 managementQueue];
    dispatch_assert_queue_V2(v3);

    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3032000000;
    v7[3] = __Block_byref_object_copy__0;
    v7[4] = __Block_byref_object_dispose__0;
    v8 = os_transaction_create();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__NRRegistryClient__grabRegistryWithWriteBlockAsync___block_invoke;
    v4[3] = &unk_1E86DB8A0;
    v4[4] = v1;
    v5 = v2;
    v6 = v7;
    [(NRRegistryClient *)v1 _queryDataAsyncForce:v4 ifNeededWithBlock:?];

    _Block_object_dispose(v7, 8);
  }
}

void __53__NRRegistryClient__grabRegistryWithWriteBlockAsync___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__NRRegistryClient__grabRegistryWithWriteBlockAsync___block_invoke_2;
  v4[3] = &unk_1E86DB878;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 enqueueAsync:v4];
}

void __53__NRRegistryClient__grabRegistryWithWriteBlockAsync___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) collection];
  v4 = [*(a1 + 32) secureProperties];
  v16 = (*(v2 + 16))(v2, v3, v4);

  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = [*(a1 + 32) secureProperties];
  v8 = [v6 getReferencedSecureProperties:v7 fromDiff:v16];

  v9 = [*(a1 + 32) supportsWatch];
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = [v10 rawConnection];
    v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_40];
    [v12 xpcApplyDiff:v16 withSecureProperties:v8 block:&__block_literal_global_42];
  }

  else
  {
    v11 = [v10 collection];
    v13 = [v11 applyDiff:v16];
  }

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

- (id)addDiffIndexObserverWithWriteBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NRRegistryClient_addDiffIndexObserverWithWriteBlock___block_invoke;
  v8[3] = &unk_1E86DB8C8;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(NRRegistry *)self performUnderCollectionLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __55__NRRegistryClient_addDiffIndexObserverWithWriteBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() _nextToken];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(a1[4] + 80))
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = a1[4];
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;
  }

  v9 = MEMORY[0x1E12E7560](a1[5]);
  [*(a1[4] + 80) setObject:v9 forKeyedSubscript:*(*(a1[6] + 8) + 40)];
}

- (void)removeDiffIndexObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__NRRegistryClient_removeDiffIndexObserver___block_invoke;
  v6[3] = &unk_1E86DAF10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NRRegistry *)self performUnderCollectionLock:v6];
}

uint64_t __94__NRRegistryClient__notifyDiffIndexObserversWithDiff_deviceCollection_secureProperties_index___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_queryDataAsyncForce:(void *)a3 ifNeededWithBlock:
{
  if (a1)
  {
    v5 = a3;
    v6 = [a1 managementQueue];
    dispatch_assert_queue_V2(v6);

    v7 = *(a1 + 112);
    if ([a1 supportsWatch])
    {
      DevicesUpdateCounterNotifyToken = [(NRRegistryClient *)a1 _getDevicesUpdateCounterNotifyTokenValue];
    }

    else
    {
      DevicesUpdateCounterNotifyToken = [a1 devicesUpdateCounter] | 0xC000000000000000;
    }

    v9 = [NRRegistryQueryCompletionBlockEntry alloc];
    objc_opt_self();
    v10 = v5;
    if (v9)
    {
      v29.receiver = v9;
      v29.super_class = NRRegistryQueryCompletionBlockEntry;
      v11 = objc_msgSendSuper2(&v29, sel_init);
      v9 = v11;
      if (v11)
      {
        v11->_updateCounter = DevicesUpdateCounterNotifyToken & 0x3FFFFFFFFFFFFFFFLL;
        v12 = MEMORY[0x1E12E7560](v10);
        block = v9->_block;
        v9->_block = v12;
      }
    }

    v14 = v9;
    v15 = v14;
    if (v14 && v14->_block)
    {
      v16 = *(a1 + 136);
      if (!v16)
      {
        v17 = [MEMORY[0x1E695DF70] array];
        v18 = *(a1 + 136);
        *(a1 + 136) = v17;

        v16 = *(a1 + 136);
      }

      [v16 addObject:v15];
    }

    if (*(a1 + 89) == 1 && !a2)
    {
      goto LABEL_22;
    }

    *(a1 + 89) = 1;
    if (DevicesUpdateCounterNotifyToken)
    {
      if (v7 == DevicesUpdateCounterNotifyToken)
      {
        *(a1 + 89) = 0;
        [(NRRegistryClient *)a1 _fireAllQueryCompletionBlocks];
LABEL_22:

        return;
      }

      if ((DevicesUpdateCounterNotifyToken & 0x8000000000000000) != 0)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __59__NRRegistryClient__queryDataAsyncForce_ifNeededWithBlock___block_invoke_2;
        v27[3] = &unk_1E86DB940;
        v27[4] = a1;
        v27[5] = v7;
        v27[6] = DevicesUpdateCounterNotifyToken;
        v24 = v27;
        v29.receiver = MEMORY[0x1E69E9820];
        v29.super_class = 3221225472;
        v30 = __44__NRRegistryClient__wipeRegistryWith_block___block_invoke;
        v31 = &unk_1E86DB968;
        v34 = DevicesUpdateCounterNotifyToken;
        v32 = a1;
        v25 = v24;
        v33 = v25;
        [a1 enqueueBypassAsync:&v29];

        goto LABEL_22;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __59__NRRegistryClient__queryDataAsyncForce_ifNeededWithBlock___block_invoke_3;
      v26[3] = &unk_1E86DB918;
      v26[4] = a1;
      v26[5] = v7;
      v19 = v26;
      v20 = a1;
      v21 = v7;
      v22 = DevicesUpdateCounterNotifyToken;
      v23 = 0;
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59__NRRegistryClient__queryDataAsyncForce_ifNeededWithBlock___block_invoke;
      v28[3] = &unk_1E86DB918;
      v28[4] = a1;
      v28[5] = v7;
      v19 = v28;
      v20 = a1;
      v21 = v7;
      v22 = 0;
      v23 = 1;
    }

    [(NRRegistryClient *)v20 _queryDaemonWithStartingTokenValue:v21 currentTokenValue:v22 syncXPC:v23 withBlock:v19];
    goto LABEL_22;
  }
}

- (void)_finishQueryWithStaringToken:(uint64_t)a3 replacementToken:
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_39:
    v28 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = [a1 managementQueue];
  dispatch_assert_queue_V2(v6);

  v29 = a2;
  if ([a1 supportsWatch])
  {
    DevicesUpdateCounterNotifyToken = [(NRRegistryClient *)a1 _getDevicesUpdateCounterNotifyTokenValue];
  }

  else
  {
    DevicesUpdateCounterNotifyToken = [a1 devicesUpdateCounter] | 0xC000000000000000;
  }

  objc_opt_self();
  v8 = *(a1 + 136);
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v10 = *(a1 + 136);
  *(a1 + 136) = 0;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:buf count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        if (v16)
        {
          if (*(v16 + 16) > (a3 & 0x3FFFFFFFFFFFFFFFuLL))
          {
            [v9 addObject:?];
            goto LABEL_15;
          }

          v17 = *(v16 + 8);
        }

        else
        {
          v17 = 0;
        }

        (*(v17 + 16))();
LABEL_15:
        ++v15;
      }

      while (v13 != v15);
      v18 = [v11 countByEnumeratingWithState:&v31 objects:buf count:16];
      v13 = v18;
    }

    while (v18);
  }

  if ([v9 count])
  {
    objc_storeStrong((a1 + 136), v9);
  }

  if (DevicesUpdateCounterNotifyToken == a3)
  {
    *(a1 + 128) = 0;
    *(a1 + 89) = 0;
    v19 = *MEMORY[0x1E69E9840];

    [(NRRegistryClient *)a1 _fireAllQueryCompletionBlocks];
    return;
  }

  if (v29 == a3)
  {
    v20 = *(a1 + 128);
    if (v20)
    {
      if (v20 > 0xFF)
      {
LABEL_34:
        v22 = v20 * 0.1;
        v23 = nr_framework_log();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

        if (v24)
        {
          v25 = nr_framework_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v36 = v22;
            _os_log_error_impl(&dword_1E0ADF000, v25, OS_LOG_TYPE_ERROR, "_queryDataAsyncIfNeededWithBlock/finishQueryWithTokenValues: Failure to query daemon, backing off interval = %0.1f", buf, 0xCu);
          }
        }

        *(a1 + 88) = 0;
        v26 = dispatch_time(0, (v22 * 1000000000.0));
        v27 = [a1 managementQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __66__NRRegistryClient__finishQueryWithStaringToken_replacementToken___block_invoke;
        block[3] = &unk_1E86DAE98;
        block[4] = a1;
        dispatch_after(v26, v27, block);

        goto LABEL_39;
      }

      v20 *= 2;
    }

    else
    {
      v20 = 1;
    }

    *(a1 + 128) = v20;
    goto LABEL_34;
  }

  *(a1 + 128) = 0;
  v21 = *MEMORY[0x1E69E9840];

  [(NRRegistryClient *)a1 _queryDataAsyncForce:0 ifNeededWithBlock:?];
}

- (void)_queryDaemonWithStartingTokenValue:(uint64_t)a3 currentTokenValue:(int)a4 syncXPC:(void *)a5 withBlock:
{
  v9 = a5;
  v10 = [a1 rawConnection];

  if (v10)
  {
    v11 = [a1 collection];

    if (v11)
    {
      v12 = [a1 secureProperties];

      v13 = [a1 rawConnection];
      if ((a2 | 0x4000000000000000) != a3 || v12)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_5_58;
        v34[3] = &unk_1E86DBA30;
        v34[4] = a1;
        v24 = v9;
        v35 = v24;
        v36 = a2;
        v25 = [v13 remoteObjectProxyWithErrorHandler:v34];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_2_60;
        v32[3] = &unk_1E86DBAA8;
        v32[4] = a1;
        v33 = v24;
        [v25 xpcGetDiffSinceTokenValue:a2 getSecureProperties:1 withBlock:v32];

        v16 = v35;
      }

      else
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_4_52;
        v40[3] = &unk_1E86DBA30;
        v40[4] = a1;
        v14 = v9;
        v41 = v14;
        v42 = a2;
        v15 = [v13 remoteObjectProxyWithErrorHandler:v40];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_2_54;
        v37[3] = &unk_1E86DBA80;
        v37[4] = a1;
        v39 = a2;
        v38 = v14;
        [v15 xpcRetrieveSecureProperties:0 block:v37];

        v16 = v41;
      }
    }

    else if (a4)
    {
      v18 = nr_framework_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v20 = nr_framework_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E0ADF000, v20, OS_LOG_TYPE_DEFAULT, "Using synchronous remote object for xpcGetDeviceCollectionWithBlock", buf, 2u);
        }
      }

      v21 = [a1 rawConnection];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke;
      v50[3] = &unk_1E86DB990;
      v22 = v9;
      v51 = v22;
      v52 = a2;
      v23 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v50];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_47;
      v48[3] = &unk_1E86DBA08;
      v48[4] = a1;
      v49 = v22;
      [v23 xpcGetDeviceCollectionWithBlock:v48];

      v16 = v51;
    }

    else
    {
      v26 = [a1 rawConnection];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_4;
      v45[3] = &unk_1E86DBA30;
      v45[4] = a1;
      v27 = v9;
      v46 = v27;
      v47 = a2;
      v28 = [v26 remoteObjectProxyWithErrorHandler:v45];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_49;
      v43[3] = &unk_1E86DBA08;
      v43[4] = a1;
      v44 = v27;
      [v28 xpcGetDeviceCollectionWithBlock:v43];

      v16 = v46;
    }
  }

  else
  {
    v17 = [a1 managementQueue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_5_64;
    v29[3] = &unk_1E86DB9B8;
    v30 = v9;
    v31 = a2;
    dispatch_async(v17, v29);

    v16 = v30;
  }
}

void __44__NRRegistryClient__wipeRegistryWith_block___block_invoke(uint64_t a1)
{
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__NRRegistryClient__wipeRegistryWith_block___block_invoke_2;
  v17[3] = &unk_1E86DB760;
  v2 = *(a1 + 48);
  v17[4] = *(a1 + 32);
  v17[5] = v2;
  v3 = MEMORY[0x1E12E7560](v17);
  v4 = [*(a1 + 32) collection];

  v5 = *(a1 + 32);
  if (!v4)
  {
    if (v5)
    {
      v5[14] = *(a1 + 48);
    }

    v3[2](v3);
    v15 = objc_opt_new();
    [*(a1 + 32) setCollection:v15];

    goto LABEL_12;
  }

  v6 = [v5 collection];
  v7 = [v6 count];

  if (!v7)
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      *(v16 + 112) = *(a1 + 48);
    }

    v3[2](v3);
LABEL_12:
    v8 = [*(a1 + 32) managementQueue];
    dispatch_async(v8, *(a1 + 40));
    goto LABEL_13;
  }

  v8 = objc_opt_new();
  v9 = [*(a1 + 32) collection];
  v10 = [NRMutableDeviceCollection diffFrom:v9 to:v8];

  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 112) = *(a1 + 48);
  }

  v3[2](v3);
  v12 = [*(a1 + 32) collection];
  v13 = [v12 applyDiff:v10];

  v14 = [*(a1 + 32) managementQueue];
  dispatch_async(v14, *(a1 + 40));

LABEL_13:
}

void __44__NRRegistryClient__wipeRegistryWith_block___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 47) & 0x40) != 0)
  {
    v2 = [*(a1 + 32) secureProperties];

    if (!v2)
    {
      v3 = objc_opt_new();
      [*(a1 + 32) setSecureProperties:v3];
    }
  }
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E696A250];
  v5 = [v3 domain];
  if ([v4 isEqual:v5])
  {
    v6 = [v3 code];

    if (v6 == 4097)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 nr_safeDescription];
      v13 = 138543362;
      v14 = v12;
      _os_log_error_impl(&dword_1E0ADF000, v9, OS_LOG_TYPE_ERROR, "_queryDaemonWithStartingTokenValueSync/xpcGetDeviceCollectionWithBlock: XPC error %{public}@", &v13, 0xCu);
    }
  }

LABEL_9:
  v10 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_47(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = a2;
  v10 = a3;
  if ((a5 & 1) == 0)
  {
    [(NRRegistryClient *)*(a1 + 32) _warnAboutMissingEntitlement];
  }

  v11 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_2;
  v14[3] = &unk_1E86DB9E0;
  v15 = v10;
  v16 = v11;
  v17 = v9;
  v19 = a4;
  v18 = *(a1 + 40);
  v12 = v9;
  v13 = v10;
  [v11 enqueueBypassAsync:v14];
}

- (void)_warnAboutMissingEntitlement
{
  if (a1)
  {
    if (_NRIsInternalInstall___onceToken != -1)
    {
      dispatch_once(&_NRIsInternalInstall___onceToken, &__block_literal_global_18);
    }

    if (_NRIsInternalInstall___internalInstall == 1 && _warnAboutMissingEntitlement_onceToken != -1)
    {

      dispatch_once(&_warnAboutMissingEntitlement_onceToken, &__block_literal_global_66);
    }
  }
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setSecureProperties:?];
  }

  [*(a1 + 48) setParentDelegate:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {
    *(v2 + 112) = *(a1 + 64);
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  [v3 setCollection:*(a1 + 48)];
  v4 = [*(a1 + 40) managementQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_3;
  v7[3] = &unk_1E86DB9B8;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, v7);
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) managementQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_5;
  block[3] = &unk_1E86DB968;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_5(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696A250];
  v3 = [*(a1 + 32) domain];
  if ([v2 isEqual:v3])
  {
    v4 = [*(a1 + 32) code];

    if (v4 == 4097)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) nr_safeDescription];
      v12 = 138543362;
      v13 = v11;
      _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "_queryDaemonWithStartingTokenValue/xpcGetDeviceCollectionWithBlock: XPC error %{public}@", &v12, 0xCu);
    }
  }

LABEL_9:
  v8 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_49(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = a2;
  v10 = a3;
  if ((a5 & 1) == 0)
  {
    [(NRRegistryClient *)*(a1 + 32) _warnAboutMissingEntitlement];
  }

  v11 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_2_50;
  v14[3] = &unk_1E86DB9E0;
  v15 = v10;
  v16 = v11;
  v17 = v9;
  v19 = a4;
  v18 = *(a1 + 40);
  v12 = v9;
  v13 = v10;
  [v11 enqueueBypassAsync:v14];
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_2_50(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setSecureProperties:?];
  }

  [*(a1 + 48) setParentDelegate:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {
    *(v2 + 112) = *(a1 + 64);
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  [v3 setCollection:*(a1 + 48)];
  v4 = [*(a1 + 40) managementQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_3_51;
  v7[3] = &unk_1E86DB9B8;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, v7);
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_4_52(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E696A250];
  v5 = [v3 domain];
  if ([v4 isEqual:v5])
  {
    v6 = [v3 code];

    if (v6 == 4097)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = [v3 nr_safeDescription];
      *buf = 138543362;
      v19 = v14;
      _os_log_error_impl(&dword_1E0ADF000, v9, OS_LOG_TYPE_ERROR, "_queryDaemonWithStartingTokenValue/xpcRetrieveSecureProperties: XPC error %{public}@", buf, 0xCu);
    }
  }

LABEL_9:
  v10 = [*(a1 + 32) managementQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_53;
  v15[3] = &unk_1E86DB9B8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v16 = v11;
  v17 = v12;
  dispatch_async(v10, v15);

  v13 = *MEMORY[0x1E69E9840];
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_2_54(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_3_55;
  v7[3] = &unk_1E86DBA58;
  v8 = v3;
  v9 = v4;
  v5 = a1[5];
  v11 = a1[6];
  v10 = v5;
  v6 = v3;
  [v4 enqueueBypassAsync:v7];
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_3_55(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) secureProperties];
    if (!v2)
    {
      v2 = objc_opt_new();
    }

    [v2 forceImportSecureProperties:*(a1 + 32)];
    v3 = [*(a1 + 40) secureProperties];

    if (!v3)
    {
      [*(a1 + 40) setSecureProperties:v2];
    }
  }

  v4 = *(a1 + 56) | 0x4000000000000000;
  v5 = *(a1 + 40);
  if (v5)
  {
    *(v5 + 112) = v4;
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 managementQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_4_56;
  v8[3] = &unk_1E86DB9B8;
  v9 = *(a1 + 48);
  v10 = v4;
  dispatch_async(v7, v8);
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_5_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) managementQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_6;
  v10[3] = &unk_1E86DBA58;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v7 = v6;
  v8 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, v10);
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_6(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696A250];
  v3 = [*(a1 + 32) domain];
  if ([v2 isEqual:v3])
  {
    v4 = [*(a1 + 32) code];

    if (v4 == 4097)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) nr_safeDescription];
      *buf = 138543362;
      v17 = v12;
      _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "_queryDaemonWithStartingTokenValue/xpcGetDiffSinceIndex: XPC error %{public}@", buf, 0xCu);
    }
  }

LABEL_9:
  v8 = [*(a1 + 40) managementQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_59;
  v13[3] = &unk_1E86DB9B8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v14 = v9;
  v15 = v10;
  dispatch_async(v8, v13);

  v11 = *MEMORY[0x1E69E9840];
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_2_60(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v9;
  v12 = v11;
  if (a4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc_init(NRMutableDeviceCollection);
    v15 = [(NRMutableStateBase *)v14 applyDiff:v11];
    v16 = [*(a1 + 32) collection];
    v12 = [NRMutableDeviceCollection diffFrom:v16 to:v14];

    objc_autoreleasePoolPop(v13);
  }

  v17 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_3_61;
  v20[3] = &unk_1E86DB9E0;
  v20[4] = v17;
  v21 = v10;
  v24 = a5;
  v22 = v12;
  v23 = *(a1 + 40);
  v18 = v12;
  v19 = v10;
  [v17 enqueueBypassAsync:v20];
}

void __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_3_61(uint64_t a1)
{
  v2 = [*(a1 + 32) secureProperties];
  if (!v2)
  {
    v2 = objc_opt_new();
  }

  [v2 forceImportSecureProperties:*(a1 + 40)];
  v3 = [*(a1 + 32) secureProperties];

  if (!v3)
  {
    [*(a1 + 32) setSecureProperties:v2];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(v4 + 112) = *(a1 + 64);
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 collection];
  v7 = [v6 applyDiff:*(a1 + 48)];

  v8 = [*(a1 + 32) managementQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__NRRegistryClient__queryDaemonWithStartingTokenValue_currentTokenValue_syncXPC_withBlock___block_invoke_4_62;
  v11[3] = &unk_1E86DB9B8;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = v9;
  v13 = v10;
  dispatch_async(v8, v11);
}

void __48__NRRegistryClient__warnAboutMissingEntitlement__block_invoke()
{
  v0 = nr_framework_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);

  if (v1)
  {
    v2 = nr_framework_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0ADF000, v2, OS_LOG_TYPE_ERROR, "** WARNING ** - Process does not have any entitlements to access NanoRegistry, you will receive a nil collection", buf, 2u);
    }
  }

  v3 = nr_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_1E0ADF000, v3, OS_LOG_TYPE_FAULT, "Process is not entitled to access NanoRegistry - All NanoRegistry access is gated by entitlement, you have received a nil collection", v4, 2u);
  }
}

- (void)setCollection:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "setCollection: nil collection", buf, 2u);
      }
    }
  }

  [(NRRegistryClient *)self devicesUpdateCounter];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__NRRegistryClient_setCollection___block_invoke;
  v9[3] = &unk_1E86DAF10;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [(NRRegistry *)self performUnderCollectionLock:v9];
}

uint64_t __34__NRRegistryClient_setCollection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__NRRegistryClient_setCollection___block_invoke_2;
  v5[3] = &unk_1E86DBAD0;
  v5[4] = *(a1 + 40);
  v3 = [v2 addObserverQueue:0 withBlock:v5];
  return [*(a1 + 40) setQueueCollection:*(a1 + 32)];
}

void __34__NRRegistryClient_setCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 devicesUpdateCounter];
  v6 = *v3;
  v7 = [*v3 collection];
  v8 = [*v3 secureProperties];
  v9 = v4;
  v18 = v7;
  v10 = v8;
  if (v6)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __94__NRRegistryClient__notifyDiffIndexObserversWithDiff_deviceCollection_secureProperties_index___block_invoke;
    v23[3] = &unk_1E86DB8F0;
    v23[4] = v6;
    v23[5] = &v24;
    [v6 performUnderCollectionLock:v23];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v25[5];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v30 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v25[5] objectForKeyedSubscript:v15];
          (v16)[2](v16, v9, v18, v10, v15, v5);
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v30 count:16];
      }

      while (v12);
    }

    _Block_object_dispose(&v24, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v3 = [(NRRegistry *)self managementQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__NRRegistryClient_invalidate__block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = NRRegistryClient;
  [(NRRegistry *)&v4 invalidate];
}

uint64_t __30__NRRegistryClient_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rawConnection];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 rawConnection];
    [v4 invalidate];

    objc_storeStrong((*(a1 + 32) + 104), 0);
    v3 = *(a1 + 32);
  }

  if (*(v3 + 92) != -1)
  {
    notify_cancel(*(v3 + 92));
    *(*(a1 + 32) + 92) = -1;
    v3 = *(a1 + 32);
  }

  result = *(v3 + 96);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(*(a1 + 32) + 96) = -1;
  }

  return result;
}

@end