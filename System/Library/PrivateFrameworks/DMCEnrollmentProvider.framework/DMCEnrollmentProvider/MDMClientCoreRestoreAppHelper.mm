@interface MDMClientCoreRestoreAppHelper
- (MDMClientCoreRestoreAppHelper)initWithApps:(id)apps persona:(id)persona operation:(unint64_t)operation originator:(id)originator completion:(id)completion;
- (id)_errorForBatch;
- (id)_logMessageForBatch;
- (void)_notifyCallerThatAllOperationsAreComplete;
- (void)_recordResponseForApp:(id)app error:(id)error;
- (void)_sendManageRequestForApp:(id)app;
- (void)_sendUnmanageRequestForApp:(id)app;
- (void)start;
@end

@implementation MDMClientCoreRestoreAppHelper

- (MDMClientCoreRestoreAppHelper)initWithApps:(id)apps persona:(id)persona operation:(unint64_t)operation originator:(id)originator completion:(id)completion
{
  appsCopy = apps;
  personaCopy = persona;
  originatorCopy = originator;
  completionCopy = completion;
  v27.receiver = self;
  v27.super_class = MDMClientCoreRestoreAppHelper;
  v16 = [(MDMClientCoreRestoreAppHelper *)&v27 init];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:appsCopy];
    apps = v16->_apps;
    v16->_apps = v17;

    objc_storeStrong(&v16->_persona, persona);
    v16->_operation = operation;
    objc_storeStrong(&v16->_originator, originator);
    v19 = _Block_copy(completionCopy);
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
  apps = [(MDMClientCoreRestoreAppHelper *)self apps];
  v4 = [apps mutableCopy];
  [(MDMClientCoreRestoreAppHelper *)self setAppsWaitingForResult:v4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(MDMClientCoreRestoreAppHelper *)self setErrorsForApps:v5];

  apps2 = [(MDMClientCoreRestoreAppHelper *)self apps];
  v7 = [apps2 count];

  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    apps3 = [(MDMClientCoreRestoreAppHelper *)self apps];
    v9 = [apps3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(apps3);
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

        v10 = [apps3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  operation = [(MDMClientCoreRestoreAppHelper *)self operation];
  v4 = 1;
  if (operation)
  {
    v4 = 2;
  }

  v27 = v4;
  operation2 = [(MDMClientCoreRestoreAppHelper *)self operation];
  v6 = @"unmanaged";
  if (!operation2)
  {
    v6 = @"managed";
  }

  v29 = v6;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  selfCopy = self;
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
        errorsForApps = [(MDMClientCoreRestoreAppHelper *)selfCopy errorsForApps];
        v16 = [errorsForApps objectForKey:v14];

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

  if ([(MDMClientCoreRestoreAppHelper *)selfCopy operation])
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
  operation = [(MDMClientCoreRestoreAppHelper *)self operation];
  v4 = @"mark as unmanaged";
  if (!operation)
  {
    v4 = @"mark as managed";
  }

  v20 = v4;
  operation2 = [(MDMClientCoreRestoreAppHelper *)self operation];
  v6 = @"unmanaged";
  if (!operation2)
  {
    v6 = @"managed";
  }

  v21 = v6;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  apps = [(MDMClientCoreRestoreAppHelper *)self apps];
  v9 = [apps countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(apps);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        errorsForApps = [(MDMClientCoreRestoreAppHelper *)self errorsForApps];
        v15 = [errorsForApps objectForKey:v13];

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

      v10 = [apps countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"managed restore, %@: %@", v20, v7];

  return v18;
}

- (void)_notifyCallerThatAllOperationsAreComplete
{
  v15 = *MEMORY[0x277D85DE8];
  _logMessageForBatch = [(MDMClientCoreRestoreAppHelper *)self _logMessageForBatch];
  v4 = 16 * ([(NSMutableDictionary *)self->_errorsForApps count]!= 0);
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, v4))
  {
    v13 = 138543362;
    v14 = _logMessageForBatch;
    _os_log_impl(&dword_247E7D000, v5, v4, "%{public}@", &v13, 0xCu);
  }

  errorsForApps = [(MDMClientCoreRestoreAppHelper *)self errorsForApps];
  v7 = [errorsForApps count];

  if (v7)
  {
    _errorForBatch = [(MDMClientCoreRestoreAppHelper *)self _errorForBatch];
  }

  else
  {
    _errorForBatch = 0;
  }

  completion = [(MDMClientCoreRestoreAppHelper *)self completion];

  if (completion)
  {
    completion2 = [(MDMClientCoreRestoreAppHelper *)self completion];
    (completion2)[2](completion2, _errorForBatch);
  }

  onComplete = [(MDMClientCoreRestoreAppHelper *)self onComplete];

  if (onComplete)
  {
    onComplete2 = [(MDMClientCoreRestoreAppHelper *)self onComplete];
    (onComplete2)[2](onComplete2, self);
  }
}

- (void)_recordResponseForApp:(id)app error:(id)error
{
  appCopy = app;
  errorCopy = error;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  queue = [(MDMClientCoreRestoreAppHelper *)self queue];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __61__MDMClientCoreRestoreAppHelper__recordResponseForApp_error___block_invoke;
  v14 = &unk_278EE8110;
  v9 = errorCopy;
  v15 = v9;
  selfCopy = self;
  v10 = appCopy;
  v17 = v10;
  v18 = &v19;
  dispatch_sync(queue, &v11);

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

- (void)_sendManageRequestForApp:(id)app
{
  appCopy = app;
  v5 = objc_alloc_init(MEMORY[0x277D04CA0]);
  [v5 setBundleIdentifier:appCopy];
  v6 = MEMORY[0x277CBEC38];
  [v5 setInternal:MEMORY[0x277CBEC38]];
  originator = [(MDMClientCoreRestoreAppHelper *)self originator];
  [v5 setOriginator:originator];

  persona = [(MDMClientCoreRestoreAppHelper *)self persona];
  [v5 setPersonaIdentifier:persona];

  [v5 setRemovable:v6];
  [v5 setManagementOptions:1];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__MDMClientCoreRestoreAppHelper__sendManageRequestForApp___block_invoke;
  v11[3] = &unk_278EE8138;
  v11[4] = self;
  v12 = appCopy;
  v10 = appCopy;
  [systemConnection performRequest:v5 completion:v11];
}

- (void)_sendUnmanageRequestForApp:(id)app
{
  appCopy = app;
  v5 = objc_alloc_init(MEMORY[0x277D04D68]);
  [v5 setBundleIdentifier:appCopy];
  persona = [(MDMClientCoreRestoreAppHelper *)self persona];
  [v5 setPersonaIdentifier:persona];

  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__MDMClientCoreRestoreAppHelper__sendUnmanageRequestForApp___block_invoke;
  v9[3] = &unk_278EE8138;
  v9[4] = self;
  v10 = appCopy;
  v8 = appCopy;
  [systemConnection performRequest:v5 completion:v9];
}

@end