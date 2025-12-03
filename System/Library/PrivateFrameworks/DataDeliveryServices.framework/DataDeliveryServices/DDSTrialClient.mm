@interface DDSTrialClient
+ (id)createWithWorkQueue:(id)queue query:(id)query;
- (DDSTrialClient)initWithWorkQueue:(id)queue triClient:(id)client triNamespaceName:(id)name;
- (DDSTrialClientDelegate)delegate;
- (void)dealloc;
- (void)fetchAssetWithCallback:(id)callback;
- (void)start;
@end

@implementation DDSTrialClient

+ (id)createWithWorkQueue:(id)queue query:(id)query
{
  queueCopy = queue;
  queryCopy = query;
  v7 = [MEMORY[0x1E69DB518] clientWithIdentifier:{objc_msgSend(queryCopy, "projectId")}];
  if (v7)
  {
    v8 = [MEMORY[0x1E69DB548] namespaceNameFromId:{objc_msgSend(queryCopy, "namespaceId")}];
    if (v8)
    {
      v9 = [[DDSTRIClient alloc] initWithClient:v7];
      v10 = [[DDSTrialClient alloc] initWithWorkQueue:queueCopy triClient:v9 triNamespaceName:v8];

      goto LABEL_10;
    }

    v11 = DefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DDSTrialClient createWithWorkQueue:queryCopy query:?];
    }
  }

  else
  {
    v8 = DefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DDSTrialClient createWithWorkQueue:queryCopy query:?];
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (DDSTrialClient)initWithWorkQueue:(id)queue triClient:(id)client triNamespaceName:(id)name
{
  queueCopy = queue;
  clientCopy = client;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = DDSTrialClient;
  v12 = [(DDSTrialClient *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    objc_storeStrong(&v13->_triClient, client);
    v14 = [nameCopy copy];
    triNamespaceName = v13->_triNamespaceName;
    v13->_triNamespaceName = v14;
  }

  return v13;
}

- (void)start
{
  workQueue = [(DDSTrialClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationToken = [(DDSTrialClient *)self notificationToken];

  if (!notificationToken)
  {
    objc_initWeak(&location, self);
    triClient = [(DDSTrialClient *)self triClient];
    triNamespaceName = [(DDSTrialClient *)self triNamespaceName];
    workQueue2 = [(DDSTrialClient *)self workQueue];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __23__DDSTrialClient_start__block_invoke;
    v12 = &unk_1E86C6650;
    objc_copyWeak(&v13, &location);
    v8 = [triClient addUpdateHandlerForNamespaceName:triNamespaceName queue:workQueue2 usingBlock:&v9];
    [(DDSTrialClient *)self setNotificationToken:v8, v9, v10, v11, v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __23__DDSTrialClient_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    v6 = [v5 workQueue];
    dispatch_assert_queue_V2(v6);

    v7 = objc_loadWeakRetained(&to);
    v8 = [v7 triClient];
    [v8 refresh];

    v9 = objc_loadWeakRetained(&to);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __23__DDSTrialClient_start__block_invoke_2;
    v10[3] = &unk_1E86C6628;
    objc_copyWeak(&v11, &to);
    [v9 fetchAssetWithCallback:v10];

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&to);
}

void __23__DDSTrialClient_start__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  if (v8)
  {
    [v6 trialClient:v7 didReceiveAsset:v8];
  }

  else
  {
    [v6 trialClientDidStop:v7];
  }
}

- (void)fetchAssetWithCallback:(id)callback
{
  v42 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  workQueue = [(DDSTrialClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  triClient = [(DDSTrialClient *)self triClient];
  triNamespaceName = [(DDSTrialClient *)self triNamespaceName];
  v8 = [triClient experimentIdentifiersWithNamespaceName:triNamespaceName];

  if (v8)
  {
    triClient2 = [(DDSTrialClient *)self triClient];
    triNamespaceName2 = [(DDSTrialClient *)self triNamespaceName];
    v11 = [triClient2 levelForFactor:@"languageAsset" withNamespaceName:triNamespaceName2];

    if (v11)
    {
      directoryValue = [v11 directoryValue];
      if ([directoryValue hasPath])
      {
        directoryValue2 = [v11 directoryValue];
        hasAsset = [directoryValue2 hasAsset];

        if (hasAsset)
        {
          directoryValue3 = [v11 directoryValue];
          path = [directoryValue3 path];

          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v39 = 0;
          v18 = [defaultManager contentsOfDirectoryAtPath:path error:&v39];
          v19 = v39;

          if (v18)
          {
            if ([v18 count] == 1)
            {
              firstObject = [v18 firstObject];
              v21 = [path stringByAppendingPathComponent:firstObject];

              v22 = [DDSTrialExperimentIdentifiers alloc];
              experimentId = [v8 experimentId];
              deploymentId = [v8 deploymentId];
              treatmentId = [v8 treatmentId];
              v26 = [(TRIExperimentIdentifiers *)v22 initWithExperimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId];

              v27 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21];
              v28 = [DDSTrialAsset createWithExperimentIdentifiers:v26 localURL:v27];
              if (v28)
              {
                callbackCopy[2](callbackCopy, v28, 0);
              }

              else
              {
                v37 = DefaultLog();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  [DDSTrialClient fetchAssetWithCallback:];
                }

                v38 = DDSTrialErrorWithCode(4);
                (callbackCopy)[2](callbackCopy, 0, v38);
              }

              path = v21;
              goto LABEL_33;
            }

            v36 = DefaultLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [DDSTrialClient fetchAssetWithCallback:v18];
            }

            v35 = 3;
          }

          else
          {
            v34 = DefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [DDSTrialClient fetchAssetWithCallback:];
            }

            v35 = 5;
          }

          v26 = DDSTrialErrorWithCode(v35);
          (callbackCopy)[2](callbackCopy, 0, v26);
LABEL_33:

          goto LABEL_20;
        }
      }

      else
      {
      }

      v32 = DefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(DDSTrialClient *)v11 fetchAssetWithCallback:v32];
      }

      v31 = 5;
    }

    else
    {
      v30 = DefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = @"languageAsset";
        _os_log_impl(&dword_1DF7C6000, v30, OS_LOG_TYPE_INFO, "Missing value for trial parameter: %@", buf, 0xCu);
      }

      v31 = 2;
    }

    path = DDSTrialErrorWithCode(v31);
    (callbackCopy)[2](callbackCopy, 0, path);
LABEL_20:

    goto LABEL_21;
  }

  v29 = DefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v29, OS_LOG_TYPE_INFO, "No experiment identifiers found, device is not enrolled in trial experiment", buf, 2u);
  }

  v11 = DDSTrialErrorWithCode(1);
  (callbackCopy)[2](callbackCopy, 0, v11);
LABEL_21:

  v33 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (self->_notificationToken)
  {
    [(DDSTRIClient *)self->_triClient removeUpdateHandlerForToken:?];
  }

  v3.receiver = self;
  v3.super_class = DDSTrialClient;
  [(DDSTrialClient *)&v3 dealloc];
}

- (DDSTrialClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)createWithWorkQueue:(void *)a1 query:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 namespaceId];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)createWithWorkQueue:(void *)a1 query:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 projectId];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssetWithCallback:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Path for the asset parameter is empty: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssetWithCallback:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssetWithCallback:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF7C6000, v0, v1, "Failed to create trial asset with %@:%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssetWithCallback:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF7C6000, v0, v1, "Failed to get contents of directory at path %@:%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end