@interface MTIDCloudKitPromiseManager
- (MTIDCloudKitPromiseManager)initWithCallbackQueue:(id)queue;
- (id)waitForRecordToSync:(id)sync timeout:(double)timeout;
- (void)finishPromisesOfRecord:(id)record;
@end

@implementation MTIDCloudKitPromiseManager

- (MTIDCloudKitPromiseManager)initWithCallbackQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = MTIDCloudKitPromiseManager;
  v5 = [(MTIDCloudKitPromiseManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MTIDCloudKitPromiseManager *)v5 setCallbackQueue:queueCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDCloudKitPromiseManager *)v6 setDict:dictionary];
  }

  return v6;
}

- (id)waitForRecordToSync:(id)sync timeout:(double)timeout
{
  syncCopy = sync;
  if ([syncCopy mt_isSynchronized])
  {
    promise = [MTPromise promiseWithResult:syncCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    recordID = [syncCopy recordID];
    recordName = [recordID recordName];

    v10 = [MTPromiseWithTimeout alloc];
    callbackQueue = [(MTIDCloudKitPromiseManager *)self callbackQueue];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __58__MTIDCloudKitPromiseManager_waitForRecordToSync_timeout___block_invoke;
    v22 = &unk_2798CE5E8;
    v23 = syncCopy;
    objc_copyWeak(&v25, &location);
    v12 = recordName;
    v24 = v12;
    v13 = [(MTPromiseWithTimeout *)v10 initWithTimeout:callbackQueue queue:&v19 timeoutBlock:timeout];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v15 = [(MTIDCloudKitPromiseManager *)selfCopy dict:v19];
    array = [v15 objectForKeyedSubscript:v12];

    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      dict = [(MTIDCloudKitPromiseManager *)selfCopy dict];
      [dict setObject:array forKeyedSubscript:v12];
    }

    [array addObject:v13];

    objc_sync_exit(selfCopy);
    promise = [(MTPromiseWithTimeout *)v13 promise];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return promise;
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

- (void)finishPromisesOfRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dict = [(MTIDCloudKitPromiseManager *)selfCopy dict];
  v9 = [dict objectForKeyedSubscript:recordName];

  if (v9)
  {
    dict2 = [(MTIDCloudKitPromiseManager *)selfCopy dict];
    [dict2 setObject:0 forKeyedSubscript:recordName];

    objc_sync_exit(selfCopy);
    callbackQueue = [(MTIDCloudKitPromiseManager *)selfCopy callbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__MTIDCloudKitPromiseManager_finishPromisesOfRecord___block_invoke;
    v12[3] = &unk_2798CE050;
    v13 = v9;
    v14 = recordCopy;
    dispatch_async(callbackQueue, v12);
  }

  else
  {
    objc_sync_exit(selfCopy);
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