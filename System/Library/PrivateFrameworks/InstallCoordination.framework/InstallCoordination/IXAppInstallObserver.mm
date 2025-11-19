@interface IXAppInstallObserver
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IXAppInstallObserver)initWithMachServiceName:(id)a3 forClients:(id)a4 delegate:(id)a5;
- (IXAppInstallObserverDelegate)delegate;
- (id)_oncePerBootUniqueIdentifierForServiceName:(id)a3;
- (id)initTransientForClients:(id)a3 delegate:(id)a4;
- (void)_client_coordinatorDidCompleteSuccessfullyWithSeed:(id)a3 forRecordPromise:(id)a4;
- (void)_client_coordinatorDidInstallPlaceholderWithSeed:(id)a3 forRecordPromise:(id)a4;
- (void)_client_coordinatorShouldBeginPostProcessingWithSeed:(id)a3 forRecordPromise:(id)a4;
- (void)_client_coordinatorShouldBeginRestoringUserDataWithSeed:(id)a3;
- (void)_client_coordinatorShouldPauseWithSeed:(id)a3;
- (void)_client_coordinatorShouldPrioritizeWithSeed:(id)a3;
- (void)_client_coordinatorShouldResumeWithSeed:(id)a3;
- (void)_client_coordinatorWithSeed:(id)a3 configuredPromiseDidBeginFulfillment:(unint64_t)a4;
- (void)_client_coordinatorWithSeed:(id)a3 didCancelWithReason:(id)a4 client:(unint64_t)a5;
- (void)_client_mayUninstallAppWithIdentity:(id)a3;
- (void)_client_shouldPrioritizeAppWithBundleID:(id)a3;
- (void)_client_shouldPrioritizeAppWithIdentity:(id)a3;
- (void)_internalInit;
- (void)dealloc;
@end

@implementation IXAppInstallObserver

- (void)_internalInit
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.installcoordination.AppInstallObserver.delegate", v5);
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = v3;
}

- (id)_oncePerBootUniqueIdentifierForServiceName:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a3 UTF8String];
  v4 = strlen(v3);
  CC_SHA1(v3, v4, md);
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v5 appendFormat:@"%02hhx", md[i]];
  }

  v7 = [v5 copy];

  v8 = [v7 length];
  if (v8 >= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 substringToIndex:v9];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"installcood.f.%@", v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (IXAppInstallObserver)initWithMachServiceName:(id)a3 forClients:(id)a4 delegate:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = IXAppInstallObserver;
  v11 = [(IXAppInstallObserver *)&v24 init];
  v12 = v11;
  if (v11)
  {
    [(IXAppInstallObserver *)v11 _internalInit];
    v13 = _SelectorsRespondedToByDelegate();
    objc_storeWeak(&v12->_delegate, v10);
    v14 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v8];
    [v14 setDelegate:v12];
    [v14 resume];
    [(IXAppInstallObserver *)v12 setListener:v14];
    v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = _IXStringForObserverRespondsToSelectors(v13);
      *buf = 136315906;
      v26 = "[IXAppInstallObserver initWithMachServiceName:forClients:delegate:]";
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_1DA47A000, v15, OS_LOG_TYPE_DEFAULT, "%s: Creating IXAppInstallObserver with service name %@ for client IDs %@ responding to selectors %@", buf, 0x2Au);
    }

    v17 = [(IXAppInstallObserver *)v12 _oncePerBootUniqueIdentifierForServiceName:v8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__IXAppInstallObserver_initWithMachServiceName_forClients_delegate___block_invoke;
    v20[3] = &unk_1E85C52A8;
    v21 = v8;
    v22 = v9;
    v23 = v13;
    IXRunOncePerBootWork(v17, v20);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

void __68__IXAppInstallObserver_initWithMachServiceName_forClients_delegate___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[IXServerConnection sharedConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = _IXStringForObserverRespondsToSelectors(a1[6]);
    v9 = 136315906;
    v10 = "[IXAppInstallObserver initWithMachServiceName:forClients:delegate:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Notifying installcoordinationd of observer with service name %@ for client IDs %@ responding to selectors %@", &v9, 0x2Au);
  }

  [v3 _remote_registerObserverMachServiceName:a1[4] forClientIdentifiers:a1[5] respondingToSelectors:a1[6]];
  v8 = *MEMORY[0x1E69E9840];
}

void __68__IXAppInstallObserver_initWithMachServiceName_forClients_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXAppInstallObserver initWithMachServiceName:forClients:delegate:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon to register mach service name: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)initTransientForClients:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = IXAppInstallObserver;
  v8 = [(IXAppInstallObserver *)&v16 init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    [(IXAppInstallObserver *)v8 _internalInit];
    v10 = _SelectorsRespondedToByDelegate();
    objc_storeWeak(p_isa + 1, v7);
    v11 = [MEMORY[0x1E696B0D8] anonymousListener];
    [v11 setDelegate:p_isa];
    [v11 resume];
    [p_isa setListener:v11];
    v12 = +[IXServerConnection sharedConnection];
    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_7];

    v14 = [v11 endpoint];
    [v13 _remote_registerTransientObserver:v14 forClientIdentifiers:v6 respondingToSelectors:v10];
  }

  return p_isa;
}

void __57__IXAppInstallObserver_initTransientForClients_delegate___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXAppInstallObserver initTransientForClients:delegate:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon to register endpoint: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(IXAppInstallObserver *)self listener];
  [v3 invalidate];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[IXAppInstallObserver dealloc]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Deallocing %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = IXAppInstallObserver;
  [(IXAppInstallObserver *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = IXHasTrueValueForEntitlement(v5, @"com.apple.private.installcoordinationd.daemon");
  if (v6)
  {
    v7 = +[IXAppInstallObserverProtocolInterface interface];
    [v5 setExportedInterface:v7];

    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&__block_literal_global_15];
    [v5 setInvalidationHandler:&__block_literal_global_17];
    [v5 resume];
  }

  else
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = IXCopyClientNameForConnection(v5);
      v12 = 136315650;
      v13 = "[IXAppInstallObserver listener:shouldAcceptNewConnection:]";
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = @"com.apple.private.installcoordinationd.daemon";
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Process %@ is missing %@ entitlement so rejecting connection attempt.", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_client_coordinatorShouldPrioritizeWithSeed:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__IXAppInstallObserver__client_coordinatorShouldPrioritizeWithSeed___block_invoke;
    block[3] = &unk_1E85C52A8;
    v11 = v4;
    v13 = sel_coordinatorShouldPrioritize_;
    v12 = v5;
    dispatch_async(v6, block);

    v7 = v11;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_coordinatorShouldPrioritize_);
      *buf = 136315394;
      v15 = "[IXAppInstallObserver _client_coordinatorShouldPrioritizeWithSeed:]";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __68__IXAppInstallObserver__client_coordinatorShouldPrioritizeWithSeed___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v11 = "[IXAppInstallObserver _client_coordinatorShouldPrioritizeWithSeed:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinatorShouldPrioritize:v2];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_client_shouldPrioritizeAppWithBundleID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__IXAppInstallObserver__client_shouldPrioritizeAppWithBundleID___block_invoke;
    block[3] = &unk_1E85C52A8;
    v13 = sel_shouldPrioritizeAppWithBundleID_;
    v11 = v4;
    v12 = v5;
    dispatch_async(v6, block);

    v7 = v11;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_shouldPrioritizeAppWithBundleID_);
      *buf = 136315394;
      v15 = "[IXAppInstallObserver _client_shouldPrioritizeAppWithBundleID:]";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __64__IXAppInstallObserver__client_shouldPrioritizeAppWithBundleID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallObserver _client_shouldPrioritizeAppWithBundleID:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for bundle ID %@", &v7, 0x20u);
  }

  result = [*(a1 + 40) shouldPrioritizeAppWithBundleID:*(a1 + 32)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_client_shouldPrioritizeAppWithIdentity:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__IXAppInstallObserver__client_shouldPrioritizeAppWithIdentity___block_invoke;
    block[3] = &unk_1E85C52A8;
    v13 = sel_shouldPrioritizeAppWithIdentity_;
    v11 = v4;
    v12 = v5;
    dispatch_async(v6, block);

    v7 = v11;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_shouldPrioritizeAppWithIdentity_);
      *buf = 136315394;
      v15 = "[IXAppInstallObserver _client_shouldPrioritizeAppWithIdentity:]";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __64__IXAppInstallObserver__client_shouldPrioritizeAppWithIdentity___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallObserver _client_shouldPrioritizeAppWithIdentity:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for identity %@", &v7, 0x20u);
  }

  result = [*(a1 + 40) shouldPrioritizeAppWithIdentity:*(a1 + 32)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_client_coordinatorShouldResumeWithSeed:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__IXAppInstallObserver__client_coordinatorShouldResumeWithSeed___block_invoke;
    block[3] = &unk_1E85C52A8;
    v11 = v4;
    v13 = sel_coordinatorShouldResume_;
    v12 = v5;
    dispatch_async(v6, block);

    v7 = v11;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_coordinatorShouldResume_);
      *buf = 136315394;
      v15 = "[IXAppInstallObserver _client_coordinatorShouldResumeWithSeed:]";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __64__IXAppInstallObserver__client_coordinatorShouldResumeWithSeed___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v11 = "[IXAppInstallObserver _client_coordinatorShouldResumeWithSeed:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinatorShouldResume:v2];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_client_coordinatorShouldPauseWithSeed:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__IXAppInstallObserver__client_coordinatorShouldPauseWithSeed___block_invoke;
    block[3] = &unk_1E85C52A8;
    v11 = v4;
    v13 = sel_coordinatorShouldPause_;
    v12 = v5;
    dispatch_async(v6, block);

    v7 = v11;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_coordinatorShouldPause_);
      *buf = 136315394;
      v15 = "[IXAppInstallObserver _client_coordinatorShouldPauseWithSeed:]";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __63__IXAppInstallObserver__client_coordinatorShouldPauseWithSeed___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v11 = "[IXAppInstallObserver _client_coordinatorShouldPauseWithSeed:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinatorShouldPause:v2];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_client_coordinatorWithSeed:(id)a3 configuredPromiseDidBeginFulfillment:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(IXAppInstallObserver *)self delegateQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__IXAppInstallObserver__client_coordinatorWithSeed_configuredPromiseDidBeginFulfillment___block_invoke;
    v12[3] = &unk_1E85C60B8;
    v13 = v6;
    v15 = sel_coordinator_configuredPromiseDidBeginFulfillment_;
    v14 = v7;
    v16 = a4;
    dispatch_async(v8, v12);

    v9 = v13;
  }

  else
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(sel_coordinator_configuredPromiseDidBeginFulfillment_);
      *buf = 136315394;
      v18 = "[IXAppInstallObserver _client_coordinatorWithSeed:configuredPromiseDidBeginFulfillment:]";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __89__IXAppInstallObserver__client_coordinatorWithSeed_configuredPromiseDidBeginFulfillment___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v11 = "[IXAppInstallObserver _client_coordinatorWithSeed:configuredPromiseDidBeginFulfillment:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinator:v2 configuredPromiseDidBeginFulfillment:*(a1 + 56)];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_client_coordinatorShouldBeginRestoringUserDataWithSeed:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__IXAppInstallObserver__client_coordinatorShouldBeginRestoringUserDataWithSeed___block_invoke;
    block[3] = &unk_1E85C52A8;
    v11 = v4;
    v13 = sel_coordinatorShouldBeginRestoringUserData_;
    v12 = v5;
    dispatch_async(v6, block);

    v7 = v11;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_coordinatorShouldBeginRestoringUserData_);
      *buf = 136315394;
      v15 = "[IXAppInstallObserver _client_coordinatorShouldBeginRestoringUserDataWithSeed:]";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __80__IXAppInstallObserver__client_coordinatorShouldBeginRestoringUserDataWithSeed___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v11 = "[IXAppInstallObserver _client_coordinatorShouldBeginRestoringUserDataWithSeed:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinatorShouldBeginRestoringUserData:v2];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_client_coordinatorDidInstallPlaceholderWithSeed:(id)a3 forRecordPromise:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = 1;
  }

  else
  {
    v9 = objc_opt_respondsToSelector();
  }

  if (!-[objc_class modifiesLocalLaunchServicesDatabase](+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator, "classForIntent:", [v6 intent]), "modifiesLocalLaunchServicesDatabase"))
  {
    v12 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = [v6 identity];
  v11 = [v10 bundleID];
  v12 = IXApplicationRecordForRecordPromise(v7, v11);

  if (v9)
  {
LABEL_8:
    v13 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__IXAppInstallObserver__client_coordinatorDidInstallPlaceholderWithSeed_forRecordPromise___block_invoke;
    block[3] = &unk_1E85C60E0;
    v20 = v6;
    v21 = v8;
    v23 = sel_coordinatorDidInstallPlaceholder_;
    v24 = sel_coordinatorDidInstallPlaceholder_forApplicationRecord_;
    v22 = v12;
    dispatch_async(v13, block);
  }

LABEL_9:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(sel_coordinatorDidInstallPlaceholder_);
      *buf = 136315394;
      v26 = "[IXAppInstallObserver _client_coordinatorDidInstallPlaceholderWithSeed:forRecordPromise:]";
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_1DA47A000, v14, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(sel_coordinatorDidInstallPlaceholder_forApplicationRecord_);
      *buf = 136315394;
      v26 = "[IXAppInstallObserver _client_coordinatorDidInstallPlaceholderWithSeed:forRecordPromise:]";
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1DA47A000, v16, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __90__IXAppInstallObserver__client_coordinatorDidInstallPlaceholderWithSeed_forRecordPromise___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  if (objc_opt_respondsToSelector())
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(*(a1 + 56));
      v8 = [v2 bundleID];
      v9 = [*(a1 + 32) intent];
      if (v9 >= 8)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v9];
      }

      else
      {
        v10 = off_1E85C6100[v9];
      }

      *buf = 136315906;
      v21 = "[IXAppInstallObserver _client_coordinatorDidInstallPlaceholderWithSeed:forRecordPromise:]_block_invoke";
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
    }

    [*(a1 + 40) coordinatorDidInstallPlaceholder:v2];
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  if (objc_opt_respondsToSelector())
  {
    v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(*(a1 + 64));
      v15 = [v2 bundleID];
      v16 = [*(a1 + 32) intent];
      if (v16 >= 8)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v16];
      }

      else
      {
        v17 = off_1E85C6100[v16];
      }

      v18 = *(a1 + 48);
      *buf = 136316162;
      v21 = "[IXAppInstallObserver _client_coordinatorDidInstallPlaceholderWithSeed:forRecordPromise:]_block_invoke";
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_1DA47A000, v13, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@) with app record %@", buf, 0x34u);
    }

    [*(a1 + 40) coordinatorDidInstallPlaceholder:v2 forApplicationRecord:*(a1 + 48)];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_client_coordinatorShouldBeginPostProcessingWithSeed:(id)a3 forRecordPromise:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (-[objc_class modifiesLocalLaunchServicesDatabase](+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator, "classForIntent:", [v6 intent]), "modifiesLocalLaunchServicesDatabase"))
    {
      v9 = [v6 identity];
      v10 = [v9 bundleID];
      v11 = IXApplicationRecordForRecordPromise(v7, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(v6, "intent"))), "initWithSeed:", v6}];
    v14 = +[IXServerConnection sharedConnection];
    [v14 registerAppInstallCoordinatorForUpdates:v13 notifyDaemon:1];

    v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(sel_coordinatorShouldBeginPostProcessing_forApplicationRecord_);
      v17 = [v13 bundleID];
      v18 = [v6 intent];
      if (v18 >= 8)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v18];
      }

      else
      {
        v19 = off_1E85C6100[v18];
      }

      *buf = 136315906;
      v22 = "[IXAppInstallObserver _client_coordinatorShouldBeginPostProcessingWithSeed:forRecordPromise:]";
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_1DA47A000, v15, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
    }

    [v8 coordinatorShouldBeginPostProcessing:v13 forApplicationRecord:v11];
  }

  else
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(sel_coordinatorShouldBeginPostProcessing_forApplicationRecord_);
      *buf = 136315394;
      v22 = "[IXAppInstallObserver _client_coordinatorShouldBeginPostProcessingWithSeed:forRecordPromise:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DA47A000, v11, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_client_coordinatorDidCompleteSuccessfullyWithSeed:(id)a3 forRecordPromise:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = 1;
  }

  else
  {
    v9 = objc_opt_respondsToSelector();
  }

  if (!-[objc_class modifiesLocalLaunchServicesDatabase](+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator, "classForIntent:", [v6 intent]), "modifiesLocalLaunchServicesDatabase"))
  {
    v12 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = [v6 identity];
  v11 = [v10 bundleID];
  v12 = IXApplicationRecordForRecordPromise(v7, v11);

  if (v9)
  {
LABEL_8:
    v13 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__IXAppInstallObserver__client_coordinatorDidCompleteSuccessfullyWithSeed_forRecordPromise___block_invoke;
    block[3] = &unk_1E85C60E0;
    v20 = v6;
    v21 = v12;
    v22 = v8;
    v23 = sel_coordinatorDidCompleteSuccessfully_;
    v24 = sel_coordinatorDidCompleteSuccessfully_forApplicationRecord_;
    dispatch_async(v13, block);
  }

LABEL_9:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(sel_coordinatorDidCompleteSuccessfully_);
      *buf = 136315394;
      v26 = "[IXAppInstallObserver _client_coordinatorDidCompleteSuccessfullyWithSeed:forRecordPromise:]";
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_1DA47A000, v14, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(sel_coordinatorDidCompleteSuccessfully_forApplicationRecord_);
      *buf = 136315394;
      v26 = "[IXAppInstallObserver _client_coordinatorDidCompleteSuccessfullyWithSeed:forRecordPromise:]";
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1DA47A000, v16, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __92__IXAppInstallObserver__client_coordinatorDidCompleteSuccessfullyWithSeed_forRecordPromise___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  [v2 setComplete:1 forApplicationRecord:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (objc_opt_respondsToSelector())
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      v7 = [v2 bundleID];
      v8 = [*(a1 + 32) intent];
      if (v8 >= 8)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v8];
      }

      else
      {
        v9 = off_1E85C6100[v8];
      }

      *buf = 136315906;
      v20 = "[IXAppInstallObserver _client_coordinatorDidCompleteSuccessfullyWithSeed:forRecordPromise:]_block_invoke";
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
    }

    [*(a1 + 48) coordinatorDidCompleteSuccessfully:v2];
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  if (objc_opt_respondsToSelector())
  {
    v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = [v2 bundleID];
      v15 = [*(a1 + 32) intent];
      if (v15 >= 8)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v15];
      }

      else
      {
        v16 = off_1E85C6100[v15];
      }

      v17 = *(a1 + 40);
      *buf = 136316162;
      v20 = "[IXAppInstallObserver _client_coordinatorDidCompleteSuccessfullyWithSeed:forRecordPromise:]_block_invoke";
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1DA47A000, v12, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@) with app record %@", buf, 0x34u);
    }

    [*(a1 + 48) coordinatorDidCompleteSuccessfully:v2 forApplicationRecord:*(a1 + 40)];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_client_coordinatorWithSeed:(id)a3 didCancelWithReason:(id)a4 client:(unint64_t)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__IXAppInstallObserver__client_coordinatorWithSeed_didCancelWithReason_client___block_invoke;
    block[3] = &unk_1E85C60E0;
    v16 = v8;
    v17 = v9;
    v19 = a5;
    v20 = sel_coordinator_canceledWithReason_client_;
    v18 = v10;
    dispatch_async(v11, block);

    v12 = v16;
  }

  else
  {
    v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(sel_coordinator_canceledWithReason_client_);
      *buf = 136315394;
      v22 = "[IXAppInstallObserver _client_coordinatorWithSeed:didCancelWithReason:client:]";
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_1DA47A000, v12, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __79__IXAppInstallObserver__client_coordinatorWithSeed_didCancelWithReason_client___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  [v2 setError:*(a1 + 40)];
  [v2 setErrorSourceIdentifier:*(a1 + 56)];
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 64));
    v5 = [v2 bundleID];
    v6 = [*(a1 + 32) intent];
    if (v6 >= 8)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v6];
    }

    else
    {
      v7 = off_1E85C6100[v6];
    }

    *buf = 136315906;
    v10 = "[IXAppInstallObserver _client_coordinatorWithSeed:didCancelWithReason:client:]_block_invoke";
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 48) coordinator:v2 canceledWithReason:*(a1 + 40) client:*(a1 + 56)];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_client_mayUninstallAppWithIdentity:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__IXAppInstallObserver__client_mayUninstallAppWithIdentity___block_invoke;
    block[3] = &unk_1E85C52A8;
    v13 = sel_mayUninstallAppWithIdentity_;
    v11 = v4;
    v12 = v5;
    dispatch_async(v6, block);

    v7 = v11;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_mayUninstallAppWithIdentity_);
      *buf = 136315394;
      v15 = "[IXAppInstallObserver _client_mayUninstallAppWithIdentity:]";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __60__IXAppInstallObserver__client_mayUninstallAppWithIdentity___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallObserver _client_mayUninstallAppWithIdentity:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for identity %@", &v7, 0x20u);
  }

  result = [*(a1 + 40) mayUninstallAppWithIdentity:*(a1 + 32)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (IXAppInstallObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end