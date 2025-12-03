@interface DDSTrialManager
- (DDSTrialManager)initWithWorkQueue:(id)queue;
- (DDSTrialManager)initWithWorkQueue:(id)queue dataSource:(id)source;
- (DDSTrialManagerDelegate)delegate;
- (void)fetchTrialAssetForQuery:(id)query callback:(id)callback;
- (void)setUpTrialForQuery:(id)query;
- (void)trialClient:(id)client didReceiveAsset:(id)asset;
- (void)trialClientDidStop:(id)stop;
@end

@implementation DDSTrialManager

- (DDSTrialManager)initWithWorkQueue:(id)queue dataSource:(id)source
{
  queueCopy = queue;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = DDSTrialManager;
  v9 = [(DDSTrialManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeStrong(&v10->_dataSource, source);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    trialClientByQuery = v10->_trialClientByQuery;
    v10->_trialClientByQuery = dictionary;
  }

  return v10;
}

- (DDSTrialManager)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(DDSTrialManagerDataSource);
  v6 = [(DDSTrialManager *)self initWithWorkQueue:queueCopy dataSource:v5];

  return v6;
}

- (void)setUpTrialForQuery:(id)query
{
  v17 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  workQueue = [(DDSTrialManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(DDSTrialManager *)self dataSource];
  isEnabled = [dataSource isEnabled];

  if (isEnabled)
  {
    trialClientByQuery = [(DDSTrialManager *)self trialClientByQuery];
    v9 = [trialClientByQuery objectForKey:queryCopy];

    if (!v9)
    {
      v10 = DefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = queryCopy;
        _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Setting up trial for query: %@", &v15, 0xCu);
      }

      dataSource2 = [(DDSTrialManager *)self dataSource];
      workQueue2 = [(DDSTrialManager *)self workQueue];
      v9 = [dataSource2 createTrialClientWithWorkQueue:workQueue2 query:queryCopy];

      if (v9)
      {
        [v9 setDelegate:self];
        [v9 start];
        trialClientByQuery2 = [(DDSTrialManager *)self trialClientByQuery];
        [trialClientByQuery2 setObject:v9 forKeyedSubscript:queryCopy];
      }

      else
      {
        trialClientByQuery2 = DefaultLog();
        if (os_log_type_enabled(trialClientByQuery2, OS_LOG_TYPE_ERROR))
        {
          [(DDSTrialManager *)queryCopy setUpTrialForQuery:trialClientByQuery2];
        }

        v9 = 0;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)fetchTrialAssetForQuery:(id)query callback:(id)callback
{
  queryCopy = query;
  callbackCopy = callback;
  workQueue = [(DDSTrialManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(DDSTrialManager *)self dataSource];
  isEnabled = [dataSource isEnabled];

  if (isEnabled)
  {
    trialClientByQuery = [(DDSTrialManager *)self trialClientByQuery];
    v11 = [trialClientByQuery objectForKey:queryCopy];

    if (v11)
    {
      [v11 fetchAssetWithCallback:callbackCopy];
    }

    else
    {
      v12 = DDSTrialErrorWithCode(6);
      callbackCopy[2](callbackCopy, 0, v12);
    }
  }

  else
  {
    v11 = DDSTrialErrorWithCode(0);
    callbackCopy[2](callbackCopy, 0, v11);
  }
}

- (void)trialClient:(id)client didReceiveAsset:(id)asset
{
  v25 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  assetCopy = asset;
  workQueue = [(DDSTrialManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  trialClientByQuery = [(DDSTrialManager *)self trialClientByQuery];
  v10 = [trialClientByQuery countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(trialClientByQuery);
      }

      v14 = *(*(&v20 + 1) + 8 * v13);
      trialClientByQuery2 = [(DDSTrialManager *)self trialClientByQuery];
      v16 = [trialClientByQuery2 objectForKey:v14];

      if (v16 == clientCopy)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [trialClientByQuery countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = v14;

    if (!v17)
    {
      goto LABEL_12;
    }

    delegate = [(DDSTrialManager *)self delegate];
    [delegate trialDidReceiveAsset:assetCopy forQuery:v17];
  }

  else
  {
LABEL_9:

LABEL_12:
    v17 = DefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(DDSTrialManager *)assetCopy trialClient:clientCopy didReceiveAsset:v17];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)trialClientDidStop:(id)stop
{
  v22 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  workQueue = [(DDSTrialManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  trialClientByQuery = [(DDSTrialManager *)self trialClientByQuery];
  v7 = [trialClientByQuery countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(trialClientByQuery);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      trialClientByQuery2 = [(DDSTrialManager *)self trialClientByQuery];
      v13 = [trialClientByQuery2 objectForKey:v11];

      if (v13 == stopCopy)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [trialClientByQuery countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    if (!v14)
    {
      goto LABEL_12;
    }

    delegate = [(DDSTrialManager *)self delegate];
    [delegate trialDidStopForQuery:v14];
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = DefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(DDSTrialManager *)stopCopy trialClientDidStop:v14];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (DDSTrialManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setUpTrialForQuery:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Failed to create trial client for query: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)trialClient:(os_log_t)log didReceiveAsset:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1DF7C6000, log, OS_LOG_TYPE_ERROR, "Did not handle did receive asset: %@ for client: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)trialClientDidStop:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Did not handle trial client did stop: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end