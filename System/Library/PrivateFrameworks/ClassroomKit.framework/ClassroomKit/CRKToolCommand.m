@interface CRKToolCommand
+ (id)aliases;
+ (id)description;
+ (id)help;
+ (void)printHelp;
- (BOOL)didCommandSucceed;
- (BOOL)didOperationSucceed:(id)a3;
- (BOOL)isCommandFinished;
- (CRKToolCommand)init;
- (CRKToolCommandDelegate)delegate;
- (id)DMFRequestWithArguments:(id)a3;
- (id)arrayByParsingAndRemovingArgumentFlags:(id)a3;
- (id)operationWithClient:(id)a3 arguments:(id)a4;
- (id)requestWithArguments:(id)a3;
- (id)transportProvider;
- (void)_remoteTaskDidFinish:(id)a3;
- (void)cleanupAndExitIfNeeded;
- (void)client:(id)a3 didInterruptWithError:(id)a4;
- (void)client:(id)a3 didReceiveNotificationWithName:(id)a4 userInfo:(id)a5;
- (void)connectToTaskClientWithCompletionBlock:(id)a3;
- (void)executeOperation:(id)a3;
- (void)remoteTaskDidFinish:(id)a3;
- (void)runWithArguments:(id)a3;
- (void)runWithClient:(id)a3 arguments:(id)a4;
@end

@implementation CRKToolCommand

+ (id)aliases
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CRKToolCommand.m" lineNumber:52 description:{@"%@: -aliases must be implemented", a1}];

  return 0;
}

+ (id)description
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CRKToolCommand.m" lineNumber:57 description:{@"%@: -description must be implemented", a1}];

  return 0;
}

+ (id)help
{
  v3 = objc_opt_new();
  if ([a1 supportsJSON])
  {
    [v3 appendFormat:@"     [%@] - outputs in JSON format\n", @"-json"];
  }

  if ([a1 supportsVerboseOutput])
  {
    [v3 appendFormat:@"     [%@] - displays verbose output\n", @"-v"];
  }

  if ([a1 supportsDMFRequest])
  {
    [v3 appendFormat:@"     [%@] - uses a deprecated DMF request instead of a CRK request\n", @"-dmf"];
  }

  [v3 crk_deleteSuffix:@"\n"];
  v4 = [v3 copy];

  return v4;
}

+ (void)printHelp
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 processName];
  v6 = [a1 aliases];
  v7 = [v6 firstObject];
  v25 = [v3 stringWithFormat:@"%@ %@", v5, v7];

  v24 = [a1 description];
  CRTLog(@"%@ -- %@", v8, v9, v10, v11, v12, v13, v14, v25);

  v15 = [a1 help];
  if ([v15 length])
  {
    CRTLog(@"Usage: %@ %@", v16, v17, v18, v19, v20, v21, v22, v25);
  }

  else
  {
    CRTLog(@"No usage help available.", v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

- (CRKToolCommand)init
{
  v6.receiver = self;
  v6.super_class = CRKToolCommand;
  v2 = [(CRKToolCommand *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mOperationQueue = v2->mOperationQueue;
    v2->mOperationQueue = v3;
  }

  return v2;
}

- (void)runWithArguments:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__CRKToolCommand_runWithArguments___block_invoke;
  v7[3] = &unk_278DC33D8;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  [(CRKToolCommand *)self connectToTaskClientWithCompletionBlock:v7];
  v6 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v6 run];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __35__CRKToolCommand_runWithArguments___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (!v15 || v5)
  {
    v7 = [v5 verboseDescription];
    CRTLogError(@"Could not connect: %@", v8, v9, v10, v11, v12, v13, v14, v7);

    exit(1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained runWithClient:v15 arguments:*(a1 + 32)];
}

- (void)runWithClient:(id)a3 arguments:(id)a4
{
  v5 = [(CRKToolCommand *)self operationWithClient:a3 arguments:a4];
  [(CRKToolCommand *)self executeOperation:v5];
}

- (id)arrayByParsingAndRemovingArgumentFlags:(id)a3
{
  v4 = [a3 mutableCopy];
  if ([objc_opt_class() supportsJSON])
  {
    v5 = [v4 crk_pluckFlag:@"-json"];
  }

  else
  {
    v5 = 0;
  }

  [(CRKToolCommand *)self setPrintJSON:v5];
  if ([objc_opt_class() supportsVerboseOutput])
  {
    v6 = [v4 crk_pluckFlag:@"-v"];
  }

  else
  {
    v6 = 0;
  }

  [(CRKToolCommand *)self setPrintVerbose:v6];
  if ([objc_opt_class() supportsDMFRequest])
  {
    v7 = [v4 crk_pluckFlag:@"-dmf"];
  }

  else
  {
    v7 = 0;
  }

  [(CRKToolCommand *)self setUseDMFRequest:v7];
  v8 = [v4 copy];

  return v8;
}

- (id)operationWithClient:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = [(CRKToolCommand *)self arrayByParsingAndRemovingArgumentFlags:a4];
  if ([(CRKToolCommand *)self shouldUseDMFRequest])
  {
    [(CRKToolCommand *)self DMFRequestWithArguments:v7];
  }

  else
  {
    [(CRKToolCommand *)self requestWithArguments:v7];
  }
  v8 = ;
  if (v8)
  {
    v9 = [v6 prepareTaskOperationForRequest:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)requestWithArguments:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CRKToolCommand.m" lineNumber:146 description:{@"%@: -requestWithArguments: must be implemented", self}];

  return 0;
}

- (id)DMFRequestWithArguments:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CRKToolCommand.m" lineNumber:151 description:{@"%@: -DMFRequestWithArguments: must be implemented", self}];

  return 0;
}

- (void)remoteTaskDidFinish:(id)a3
{
  v21 = a3;
  v3 = [v21 error];

  if (v3)
  {
    v4 = [v21 error];
    v5 = [v4 verboseDescription];
    CRTLogError(@"Error: %@", v6, v7, v8, v9, v10, v11, v12, v5);
  }

  else
  {
    v13 = [v21 resultObject];

    if (!v13)
    {
      goto LABEL_6;
    }

    v4 = [v21 resultObject];
    CRTLog(@"%@", v14, v15, v16, v17, v18, v19, v20, v4);
  }

LABEL_6:
}

- (id)transportProvider
{
  if ([objc_opt_class() instructorCommand])
  {
    v3 = [(CRKToolCommand *)self targetClassroomInstallation];
    v4 = [CRKCurrentPlatformInstructordTransportProvider alloc];
    v5 = [v3 classroomURL];
    v6 = [v3 instructordBundleIdentifier];
    v7 = [(CRKCurrentPlatformInstructordTransportProvider *)v4 initWithStudentDaemonProxy:0 classroomAppBundleURL:v5 instructordBundleIdentifier:v6];
  }

  else
  {
    v7 = objc_opt_new();
  }

  return v7;
}

- (void)connectToTaskClientWithCompletionBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CRKToolCommand *)a2 connectToTaskClientWithCompletionBlock:?];
  }

  v6 = [(CRKToolCommand *)self transportProvider];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__CRKToolCommand_connectToTaskClientWithCompletionBlock___block_invoke;
  v8[3] = &unk_278DC3400;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 fetchTransportWithCompletion:v8];
}

void __57__CRKToolCommand_connectToTaskClientWithCompletionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if (!a3)
  {
    v5 = objc_opt_new();
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    [*(*(a1 + 32) + 16) setDelegate:?];
    v8 = [CRKToolCommandUserInfo alloc];
    v9 = [*(a1 + 32) sessionIdentifier];
    v10 = [(CRKToolCommandUserInfo *)v8 initWithSessionIdentifier:v9];
    v11 = [(CRKToolCommandUserInfo *)v10 dictionaryValue];
    [*(*(a1 + 32) + 16) setUserInfo:v11];

    [*(*(a1 + 32) + 16) connectWithTransport:v12];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)executeOperation:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [objc_opt_class() printHelp];
    exit(1);
  }

  v6 = v5;
  objc_storeStrong(&self->mOperation, a3);
  v7 = dispatch_source_create(MEMORY[0x277D85D30], 2uLL, 0, MEMORY[0x277D85CD0]);
  mSIGINTSource = self->mSIGINTSource;
  self->mSIGINTSource = v7;

  v9 = self->mSIGINTSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __35__CRKToolCommand_executeOperation___block_invoke;
  handler[3] = &unk_278DC10F0;
  v10 = v6;
  v24 = v10;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->mSIGINTSource);
  v22.__sigaction_u.__sa_handler = 1;
  *&v22.sa_mask = 0;
  sigaction(2, &v22, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([objc_opt_class() handlesProgress])
    {
      [v10 addTarget:self selector:sel__remoteTaskDidProgress_ forOperationEvents:8];
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_16:
    [v10 addTarget:self selector:sel__remoteTaskDidFinish_ forOperationEvents:6];
    goto LABEL_17;
  }

  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = v10;
  v11 = [v17 remoteTaskOperations];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ([objc_opt_class() handlesProgress])
        {
          [v16 addTarget:self selector:sel__remoteTaskDidProgress_ forOperationEvents:8];
        }

        [v16 addTarget:self selector:sel__remoteTaskDidFinish_ forOperationEvents:6];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v13);
  }

LABEL_17:
  [(CATOperationQueue *)self->mOperationQueue addOperation:v10];
}

uint64_t __35__CRKToolCommand_executeOperation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    exit(1);
  }

  v2 = *(a1 + 32);

  return [v2 cancel];
}

- (void)_remoteTaskDidFinish:(id)a3
{
  [(CRKToolCommand *)self remoteTaskDidFinish:a3];

  [(CRKToolCommand *)self cleanupAndExitIfNeeded];
}

- (void)cleanupAndExitIfNeeded
{
  if ([(CRKToolCommand *)self isCommandFinished])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__CRKToolCommand_cleanupAndExitIfNeeded__block_invoke;
    v8[3] = &unk_278DC10F0;
    v8[4] = self;
    v3 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__CRKToolCommand_cleanupAndExitIfNeeded__block_invoke_2;
    v7[3] = &unk_278DC10F0;
    v7[4] = self;
    v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v7];
    [v4 addDependency:v3];
    v5 = [MEMORY[0x277CCABD8] mainQueue];
    [v5 addOperation:v3];

    v6 = [MEMORY[0x277CCABD8] mainQueue];
    [v6 addOperation:v4];
  }
}

- (BOOL)isCommandFinished
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(CATOperation *)self->mOperation remoteTaskOperations];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (![*(*(&v11 + 1) + 8 * i) isFinished])
          {
            v8 = 0;
            goto LABEL_15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_15:

    return v8;
  }

  else
  {
    mOperation = self->mOperation;

    return [(CATOperation *)mOperation isFinished];
  }
}

- (BOOL)didCommandSucceed
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(CATOperation *)self->mOperation remoteTaskOperations];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (![(CRKToolCommand *)self didOperationSucceed:*(*(&v11 + 1) + 8 * i)])
          {
            v8 = 0;
            goto LABEL_15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_15:

    return v8;
  }

  else
  {
    mOperation = self->mOperation;

    return [(CRKToolCommand *)self didOperationSucceed:mOperation];
  }
}

- (BOOL)didOperationSucceed:(id)a3
{
  v3 = a3;
  if ([v3 isFinished])
  {
    v4 = [v3 error];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)client:(id)a3 didReceiveNotificationWithName:(id)a4 userInfo:(id)a5
{
  v7 = MEMORY[0x277CCAB98];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 defaultCenter];
  [v11 postNotificationName:v9 object:v10 userInfo:v8];
}

- (void)client:(id)a3 didInterruptWithError:(id)a4
{
  v13 = a3;
  v12 = [a4 verboseDescription];
  CRTLogError(@"Client failed with error: %@ %@", v5, v6, v7, v8, v9, v10, v11, v13);

  [v13 invalidate];
}

- (CRKToolCommandDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)connectToTaskClientWithCompletionBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKToolCommand.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
}

@end