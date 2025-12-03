@interface MDMServerAppInstallBlocking
- (BOOL)isAppInstallBlocked;
- (MDMServerAppInstallBlocking)init;
- (MDMServerCore)server;
- (void)blockAppInstallsWithCompletion:(id)completion;
- (void)didUnblockAppInstalls;
- (void)unblockAppInstallsWithCompletion:(id)completion;
@end

@implementation MDMServerAppInstallBlocking

- (MDMServerAppInstallBlocking)init
{
  v6.receiver = self;
  v6.super_class = MDMServerAppInstallBlocking;
  v2 = [(MDMServerAppInstallBlocking *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("app install block", 0);
    appBlockQueue = v2->_appBlockQueue;
    v2->_appBlockQueue = v3;
  }

  return v2;
}

- (BOOL)isAppInstallBlocked
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  appBlockQueue = [(MDMServerAppInstallBlocking *)self appBlockQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__MDMServerAppInstallBlocking_isAppInstallBlocked__block_invoke;
  v5[3] = &unk_27982BB40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(appBlockQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __50__MDMServerAppInstallBlocking_isAppInstallBlocked__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appBlockCompletionBlock];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (void)blockAppInstallsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "block app installs, server block", buf, 2u);
  }

  appBlockQueue = [(MDMServerAppInstallBlocking *)self appBlockQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__MDMServerAppInstallBlocking_blockAppInstallsWithCompletion___block_invoke;
  v8[3] = &unk_27982CA78;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_sync(appBlockQueue, v8);
}

void __62__MDMServerAppInstallBlocking_blockAppInstallsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appBlockCompletionBlock];

  v3 = *(DMCLogObjects() + 8);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "block app installs, server block, failing because of another blocker", buf, 2u);
    }

    if (*(a1 + 40))
    {
      v4 = MEMORY[0x277CCA9B8];
      v5 = *MEMORY[0x277D03480];
      v6 = DMCErrorArray();
      v7 = [v4 DMCErrorWithDomain:v5 code:12010 descriptionArray:v6 errorType:{*MEMORY[0x277D03310], 0}];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "block app installs, server block, block established", v8, 2u);
    }

    [*(a1 + 32) setAppBlockCompletionBlock:*(a1 + 40)];
  }
}

- (void)unblockAppInstallsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "block app installs, server unblock", buf, 2u);
  }

  appBlockQueue = [(MDMServerAppInstallBlocking *)self appBlockQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__MDMServerAppInstallBlocking_unblockAppInstallsWithCompletion___block_invoke;
  v8[3] = &unk_27982CA78;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_sync(appBlockQueue, v8);
}

uint64_t __64__MDMServerAppInstallBlocking_unblockAppInstallsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appBlockCompletionBlock];

  v3 = *(DMCLogObjects() + 8);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "block app installs, server unblock, unblocking", buf, 2u);
    }

    v4 = [*(a1 + 32) appBlockCompletionBlock];
    v4[2](v4, 0);

    [*(a1 + 32) setAppBlockCompletionBlock:0];
    [*(a1 + 32) didUnblockAppInstalls];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "block app installs, server unblock, no block in place, ignoring", v6, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)didUnblockAppInstalls
{
  server = [(MDMServerAppInstallBlocking *)self server];
  [server retryNotNowWithCompletion:&__block_literal_global_6];
}

void __52__MDMServerAppInstallBlocking_didUnblockAppInstalls__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(DMCLogObjects() + 8);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 138543362;
      v10 = v2;
      v5 = "block app installs, server unblock, retryNotNow failed: %{public}@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v9) = 0;
    v5 = "block app installs, server unblock, retryNotNow complete";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (MDMServerCore)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end