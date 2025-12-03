@interface ML3TerminationCoordinator
+ (ML3TerminationCoordinator)sharedCoordinator;
- (BOOL)isSigned;
- (BOOL)isSignedForReason:(int64_t)reason;
- (ML3TerminationCoordinator)init;
- (void)_performTermination;
- (void)dealloc;
- (void)execute;
- (void)secedeForReason:(int64_t)reason;
- (void)signForReason:(int64_t)reason;
@end

@implementation ML3TerminationCoordinator

+ (ML3TerminationCoordinator)sharedCoordinator
{
  if (sharedCoordinator___once != -1)
  {
    dispatch_once(&sharedCoordinator___once, &__block_literal_global_4644);
  }

  v3 = sharedCoordinator___sharedCoordinator;

  return v3;
}

uint64_t __46__ML3TerminationCoordinator_sharedCoordinator__block_invoke()
{
  sharedCoordinator___sharedCoordinator = objc_alloc_init(ML3TerminationCoordinator);

  return MEMORY[0x2821F96F8]();
}

- (ML3TerminationCoordinator)init
{
  v13.receiver = self;
  v13.super_class = ML3TerminationCoordinator;
  v2 = [(ML3TerminationCoordinator *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ML3TerminationCoordinator", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    signatures = v2->_signatures;
    v2->_signatures = v5;

    objc_initWeak(&location, v2);
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __33__ML3TerminationCoordinator_init__block_invoke;
    v10[3] = &unk_278765C98;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.MusicLibrary.execute-coordinated-termination", &v2->_notifyToken, v7, v10);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (BOOL)isSigned
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ML3TerminationCoordinator_isSigned__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__ML3TerminationCoordinator_isSigned__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)_performTermination
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    signatures = self->_signatures;
    v5 = 138543362;
    v6 = signatures;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Received notification to perform coordinated termination. Reasons signed: %{public}@", &v5, 0xCu);
  }

  exit(0);
}

- (void)execute
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v5 = 138543362;
    v6 = processName;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ is requesting coordinated termination", &v5, 0xCu);
  }

  notify_post("com.apple.MusicLibrary.execute-coordinated-termination");
}

- (BOOL)isSignedForReason:(int64_t)reason
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ML3TerminationCoordinator_isSignedForReason___block_invoke;
  block[3] = &unk_2787656D0;
  block[4] = self;
  block[5] = &v7;
  block[6] = reason;
  dispatch_sync(serialQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __47__ML3TerminationCoordinator_isSignedForReason___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  *(*(a1[5] + 8) + 24) = [v2 containsObject:v3];
}

- (void)secedeForReason:(int64_t)reason
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ML3TerminationCoordinator_secedeForReason___block_invoke;
  v4[3] = &unk_278760290;
  v4[4] = self;
  v4[5] = reason;
  dispatch_sync(serialQueue, v4);
}

void __45__ML3TerminationCoordinator_secedeForReason___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v1 removeObject:v2];
}

- (void)signForReason:(int64_t)reason
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__ML3TerminationCoordinator_signForReason___block_invoke;
  v4[3] = &unk_278760290;
  v4[4] = self;
  v4[5] = reason;
  dispatch_sync(serialQueue, v4);
}

void __43__ML3TerminationCoordinator_signForReason___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v1 addObject:v2];
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = ML3TerminationCoordinator;
  [(ML3TerminationCoordinator *)&v3 dealloc];
}

uint64_t __33__ML3TerminationCoordinator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained isSigned])
    {
      [v3 _performTermination];
    }
  }

  return MEMORY[0x2821F96F8]();
}

@end