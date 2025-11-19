@interface MTIDCloudKitPromiseManager
- (MTIDCloudKitPromiseManager)initWithCallbackQueue:(id)a3;
- (id)waitForRecordToSync:(id)a3 timeout:(double)a4;
- (void)finishPromisesOfRecord:(id)a3;
@end

@implementation MTIDCloudKitPromiseManager

- (MTIDCloudKitPromiseManager)initWithCallbackQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTIDCloudKitPromiseManager;
  v5 = [(MTIDCloudKitPromiseManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MTIDCloudKitPromiseManager *)v5 setCallbackQueue:v4];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDCloudKitPromiseManager *)v6 setDict:v7];
  }

  return v6;
}

- (id)waitForRecordToSync:(id)a3 timeout:(double)a4
{
  v6 = a3;
  if ([v6 mt_isSynchronized])
  {
    v7 = [MTPromise promiseWithResult:v6];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [v6 recordID];
    v9 = [v8 recordName];

    v10 = [MTPromiseWithTimeout alloc];
    v11 = [(MTIDCloudKitPromiseManager *)self callbackQueue];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __58__MTIDCloudKitPromiseManager_waitForRecordToSync_timeout___block_invoke;
    v22 = &unk_2798CE5E8;
    v23 = v6;
    objc_copyWeak(&v25, &location);
    v12 = v9;
    v24 = v12;
    v13 = [(MTPromiseWithTimeout *)v10 initWithTimeout:v11 queue:&v19 timeoutBlock:a4];

    v14 = self;
    objc_sync_enter(v14);
    v15 = [(MTIDCloudKitPromiseManager *)v14 dict:v19];
    v16 = [v15 objectForKeyedSubscript:v12];

    if (!v16)
    {
      v16 = [MEMORY[0x277CBEB18] array];
      v17 = [(MTIDCloudKitPromiseManager *)v14 dict];
      [v17 setObject:v16 forKeyedSubscript:v12];
    }

    [v16 addObject:v13];

    objc_sync_exit(v14);
    v7 = [(MTPromiseWithTimeout *)v13 promise];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __58__MTIDCloudKitPromiseManager_waitForRecordToSync_timeout___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 finishWithResult:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = [v5 dict];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];

    [v7 removeObject:v8];
    objc_sync_exit(v5);
  }
}

- (void)finishPromisesOfRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 recordName];

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MTIDCloudKitPromiseManager *)v7 dict];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [(MTIDCloudKitPromiseManager *)v7 dict];
    [v10 setObject:0 forKeyedSubscript:v6];

    objc_sync_exit(v7);
    v11 = [(MTIDCloudKitPromiseManager *)v7 callbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__MTIDCloudKitPromiseManager_finishPromisesOfRecord___block_invoke;
    v12[3] = &unk_2798CE050;
    v13 = v9;
    v14 = v4;
    dispatch_async(v11, v12);
  }

  else
  {
    objc_sync_exit(v7);
  }
}

void __53__MTIDCloudKitPromiseManager_finishPromisesOfRecord___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) finishWithResult:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end