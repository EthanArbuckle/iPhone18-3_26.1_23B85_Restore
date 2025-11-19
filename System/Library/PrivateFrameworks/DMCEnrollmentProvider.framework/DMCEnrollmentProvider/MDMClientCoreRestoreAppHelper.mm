@interface MDMClientCoreRestoreAppHelper
- (MDMClientCoreRestoreAppHelper)initWithApps:(id)a3 persona:(id)a4 operation:(unint64_t)a5 originator:(id)a6 completion:(id)a7;
- (id)_errorForBatch;
- (id)_logMessageForBatch;
- (void)_notifyCallerThatAllOperationsAreComplete;
- (void)_recordResponseForApp:(id)a3 error:(id)a4;
- (void)_sendManageRequestForApp:(id)a3;
- (void)_sendUnmanageRequestForApp:(id)a3;
- (void)start;
@end

@implementation MDMClientCoreRestoreAppHelper

- (MDMClientCoreRestoreAppHelper)initWithApps:(id)a3 persona:(id)a4 operation:(unint64_t)a5 originator:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = MDMClientCoreRestoreAppHelper;
  v16 = [(MDMClientCoreRestoreAppHelper *)&v27 init];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v12];
    apps = v16->_apps;
    v16->_apps = v17;

    objc_storeStrong(&v16->_persona, a4);
    v16->_operation = a5;
    objc_storeStrong(&v16->_originator, a6);
    v19 = _Block_copy(v15);
    completion = v16->_completion;
    v16->_completion = v19;

    appsWaitingForResult = v16->_appsWaitingForResult;
    v16->_appsWaitingForResult = 0;

    errorsForApps = v16->_errorsForApps;
    v16->_errorsForApps = 0;

    v23 = dispatch_queue_create("com.apple.MDMClientLibrary.RestoreHelper", 0);
    queue = v16->_queue;
    v16->_queue = v23;

    onComplete = v16->_onComplete;
    v16->_onComplete = 0;
  }

  return v16;
}

- (void)start
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(MDMClientCoreRestoreAppHelper *)self apps];
  v4 = [v3 mutableCopy];
  [(MDMClientCoreRestoreAppHelper *)self setAppsWaitingForResult:v4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(MDMClientCoreRestoreAppHelper *)self setErrorsForApps:v5];

  v6 = [(MDMClientCoreRestoreAppHelper *)self apps];
  v7 = [v6 count];

  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(MDMClientCoreRestoreAppHelper *)self apps];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([(MDMClientCoreRestoreAppHelper *)self operation])
          {
            [(MDMClientCoreRestoreAppHelper *)self _sendUnmanageRequestForApp:v13];
          }

          else
          {
            [(MDMClientCoreRestoreAppHelper *)self _sendManageRequestForApp:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {

    [(MDMClientCoreRestoreAppHelper *)self _notifyCallerThatAllOperationsAreComplete];
  }
}

- (id)_errorForBatch
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(MDMClientCoreRestoreAppHelper *)self operation];
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  v27 = v4;
  v5 = [(MDMClientCoreRestoreAppHelper *)self operation];
  v6 = @"unmanaged";
  if (!v5)
  {
    v6 = @"managed";
  }

  v29 = v6;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = self;
  obj = [(MDMClientCoreRestoreAppHelper *)self errorsForApps];
  v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v11 = *MEMORY[0x277CCA7E8];
    v12 = *MEMORY[0x277CCA450];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [(MDMClientCoreRestoreAppHelper *)v7 errorsForApps];
        v16 = [v15 objectForKey:v14];

        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"The app %@ could not be marked as %@.", v14, v29];
        v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
        [v18 setObject:v16 forKeyedSubscript:v11];
        [v18 setObject:v17 forKeyedSubscript:v12];
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DMCRFRestoreAppHelper" code:v27 userInfo:v18];
        [v28 addObject:v19];
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v9);
  }

  if ([(MDMClientCoreRestoreAppHelper *)v7 operation])
  {
    v20 = 4;
  }

  else
  {
    v20 = 3;
  }

  v21 = MEMORY[0x277CCA9B8];
  v34 = *MEMORY[0x277CCA578];
  v22 = [v28 copy];
  v35 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v24 = [v21 errorWithDomain:@"DMCRFRestoreAppHelper" code:v20 userInfo:v23];

  return v24;
}

- (id)_logMessageForBatch
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(MDMClientCoreRestoreAppHelper *)self operation];
  v4 = @"mark as unmanaged";
  if (!v3)
  {
    v4 = @"mark as managed";
  }

  v20 = v4;
  v5 = [(MDMClientCoreRestoreAppHelper *)self operation];
  v6 = @"unmanaged";
  if (!v5)
  {
    v6 = @"managed";
  }

  v21 = v6;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(MDMClientCoreRestoreAppHelper *)self apps];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(MDMClientCoreRestoreAppHelper *)self errorsForApps];
        v15 = [v14 objectForKey:v13];

        if (v15)
        {
          v16 = [v15 description];
        }

        else
        {
          v16 = v21;
        }

        v17 = v16;
        [v7 appendFormat:@"\n\t%@: %@", v13, v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"managed restore, %@: %@", v20, v7];

  return v18;
}

- (void)_notifyCallerThatAllOperationsAreComplete
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(MDMClientCoreRestoreAppHelper *)self _logMessageForBatch];
  v4 = 16 * ([(NSMutableDictionary *)self->_errorsForApps count]!= 0);
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, v4))
  {
    v13 = 138543362;
    v14 = v3;
    _os_log_impl(&dword_247E7D000, v5, v4, "%{public}@", &v13, 0xCu);
  }

  v6 = [(MDMClientCoreRestoreAppHelper *)self errorsForApps];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(MDMClientCoreRestoreAppHelper *)self _errorForBatch];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MDMClientCoreRestoreAppHelper *)self completion];

  if (v9)
  {
    v10 = [(MDMClientCoreRestoreAppHelper *)self completion];
    (v10)[2](v10, v8);
  }

  v11 = [(MDMClientCoreRestoreAppHelper *)self onComplete];

  if (v11)
  {
    v12 = [(MDMClientCoreRestoreAppHelper *)self onComplete];
    (v12)[2](v12, self);
  }
}

- (void)_recordResponseForApp:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [(MDMClientCoreRestoreAppHelper *)self queue];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __61__MDMClientCoreRestoreAppHelper__recordResponseForApp_error___block_invoke;
  v14 = &unk_278EE8110;
  v9 = v7;
  v15 = v9;
  v16 = self;
  v10 = v6;
  v17 = v10;
  v18 = &v19;
  dispatch_sync(v8, &v11);

  if (!v20[3])
  {
    [(MDMClientCoreRestoreAppHelper *)self _notifyCallerThatAllOperationsAreComplete:v11];
  }

  _Block_object_dispose(&v19, 8);
}

void __61__MDMClientCoreRestoreAppHelper__recordResponseForApp_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) errorsForApps];
    [v2 setObject:*(a1 + 32) forKey:*(a1 + 48)];
  }

  v3 = [*(a1 + 40) appsWaitingForResult];
  [v3 removeObject:*(a1 + 48)];

  v4 = [*(a1 + 40) appsWaitingForResult];
  *(*(*(a1 + 56) + 8) + 24) = [v4 count];
}

- (void)_sendManageRequestForApp:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D04CA0]);
  [v5 setBundleIdentifier:v4];
  v6 = MEMORY[0x277CBEC38];
  [v5 setInternal:MEMORY[0x277CBEC38]];
  v7 = [(MDMClientCoreRestoreAppHelper *)self originator];
  [v5 setOriginator:v7];

  v8 = [(MDMClientCoreRestoreAppHelper *)self persona];
  [v5 setPersonaIdentifier:v8];

  [v5 setRemovable:v6];
  [v5 setManagementOptions:1];
  v9 = [MEMORY[0x277D04BF8] systemConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__MDMClientCoreRestoreAppHelper__sendManageRequestForApp___block_invoke;
  v11[3] = &unk_278EE8138;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 performRequest:v5 completion:v11];
}

- (void)_sendUnmanageRequestForApp:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D04D68]);
  [v5 setBundleIdentifier:v4];
  v6 = [(MDMClientCoreRestoreAppHelper *)self persona];
  [v5 setPersonaIdentifier:v6];

  v7 = [MEMORY[0x277D04BF8] systemConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__MDMClientCoreRestoreAppHelper__sendUnmanageRequestForApp___block_invoke;
  v9[3] = &unk_278EE8138;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 performRequest:v5 completion:v9];
}

@end