@interface DDSTrialManager
- (DDSTrialManager)initWithWorkQueue:(id)a3;
- (DDSTrialManager)initWithWorkQueue:(id)a3 dataSource:(id)a4;
- (DDSTrialManagerDelegate)delegate;
- (void)fetchTrialAssetForQuery:(id)a3 callback:(id)a4;
- (void)setUpTrialForQuery:(id)a3;
- (void)trialClient:(id)a3 didReceiveAsset:(id)a4;
- (void)trialClientDidStop:(id)a3;
@end

@implementation DDSTrialManager

- (DDSTrialManager)initWithWorkQueue:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DDSTrialManager;
  v9 = [(DDSTrialManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, a3);
    objc_storeStrong(&v10->_dataSource, a4);
    v11 = [MEMORY[0x1E695DF90] dictionary];
    trialClientByQuery = v10->_trialClientByQuery;
    v10->_trialClientByQuery = v11;
  }

  return v10;
}

- (DDSTrialManager)initWithWorkQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DDSTrialManagerDataSource);
  v6 = [(DDSTrialManager *)self initWithWorkQueue:v4 dataSource:v5];

  return v6;
}

- (void)setUpTrialForQuery:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DDSTrialManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(DDSTrialManager *)self dataSource];
  v7 = [v6 isEnabled];

  if (v7)
  {
    v8 = [(DDSTrialManager *)self trialClientByQuery];
    v9 = [v8 objectForKey:v4];

    if (!v9)
    {
      v10 = DefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Setting up trial for query: %@", &v15, 0xCu);
      }

      v11 = [(DDSTrialManager *)self dataSource];
      v12 = [(DDSTrialManager *)self workQueue];
      v9 = [v11 createTrialClientWithWorkQueue:v12 query:v4];

      if (v9)
      {
        [v9 setDelegate:self];
        [v9 start];
        v13 = [(DDSTrialManager *)self trialClientByQuery];
        [v13 setObject:v9 forKeyedSubscript:v4];
      }

      else
      {
        v13 = DefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(DDSTrialManager *)v4 setUpTrialForQuery:v13];
        }

        v9 = 0;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)fetchTrialAssetForQuery:(id)a3 callback:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(DDSTrialManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(DDSTrialManager *)self dataSource];
  v9 = [v8 isEnabled];

  if (v9)
  {
    v10 = [(DDSTrialManager *)self trialClientByQuery];
    v11 = [v10 objectForKey:v13];

    if (v11)
    {
      [v11 fetchAssetWithCallback:v6];
    }

    else
    {
      v12 = DDSTrialErrorWithCode(6);
      v6[2](v6, 0, v12);
    }
  }

  else
  {
    v11 = DDSTrialErrorWithCode(0);
    v6[2](v6, 0, v11);
  }
}

- (void)trialClient:(id)a3 didReceiveAsset:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(DDSTrialManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(DDSTrialManager *)self trialClientByQuery];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v20 + 1) + 8 * v13);
      v15 = [(DDSTrialManager *)self trialClientByQuery];
      v16 = [v15 objectForKey:v14];

      if (v16 == v6)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

    v18 = [(DDSTrialManager *)self delegate];
    [v18 trialDidReceiveAsset:v7 forQuery:v17];
  }

  else
  {
LABEL_9:

LABEL_12:
    v17 = DefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(DDSTrialManager *)v7 trialClient:v6 didReceiveAsset:v17];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)trialClientDidStop:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DDSTrialManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(DDSTrialManager *)self trialClientByQuery];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      v12 = [(DDSTrialManager *)self trialClientByQuery];
      v13 = [v12 objectForKey:v11];

      if (v13 == v4)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

    v15 = [(DDSTrialManager *)self delegate];
    [v15 trialDidStopForQuery:v14];
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = DefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(DDSTrialManager *)v4 trialClientDidStop:v14];
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