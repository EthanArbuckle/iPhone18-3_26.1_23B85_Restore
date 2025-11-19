@interface FPDPushConnection
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (FPDPushConnection)init;
- (FPDPushConnection)initWithExtensionManager:(id)a3;
- (id)_debugTopicsForApplicationIdentifier:(id)a3;
- (id)_pushConnectionWithEnvironmentName:(id)a3;
- (id)clientConnectionsForApplicationBundleIdentifier:(id)a3;
- (id)topicsForApplicationBundleIdentifier:(id)a3;
- (void)addClientConnection:(id)a3 forApplicationBundleIdentifier:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)fileProviderRegister;
- (void)fileProviderUnregister;
- (void)performWithConnection:(id)a3 block:(id)a4;
- (void)removeClientConnection:(id)a3 forApplicationBundleIdentifier:(id)a4;
- (void)setMessageDelegate:(id)a3 forApplicationBundleIdentifier:(id)a4;
- (void)start;
- (void)updateTopicsForApplicationBundleIdentifier:(id)a3 providerIdentifier:(id)a4 requestToken:(BOOL)a5 environment:(id)a6;
- (void)updateTopicsForBundleIdentifier:(id)a3;
- (void)updateTopicsForProvider:(id)a3;
@end

@implementation FPDPushConnection

- (FPDPushConnection)init
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"should not call this"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDPushConnection init]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDPushConnection.m", 78, [v2 UTF8String]);
}

- (FPDPushConnection)initWithExtensionManager:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = FPDPushConnection;
  v5 = [(FPDPushConnection *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("push worker queue", v7);
    pushQueue = v6->_pushQueue;
    v6->_pushQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("push delivery queue", v10);
    payloadDeliveryQueue = v6->_payloadDeliveryQueue;
    v6->_payloadDeliveryQueue = v11;

    v13 = objc_opt_new();
    messageDelegates = v6->_messageDelegates;
    v6->_messageDelegates = v13;

    v15 = objc_opt_new();
    clientConnections = v6->_clientConnections;
    v6->_clientConnections = v15;

    v17 = objc_opt_new();
    bundleIdentifierForTopic = v6->_bundleIdentifierForTopic;
    v6->_bundleIdentifierForTopic = v17;

    v19 = objc_opt_new();
    topicsForBundleIdentifier = v6->_topicsForBundleIdentifier;
    v6->_topicsForBundleIdentifier = v19;

    v21 = objc_opt_new();
    providerMonitor = v6->_providerMonitor;
    v6->_providerMonitor = v21;

    v23 = objc_opt_new();
    pushConnectionsByEnvironment = v6->_pushConnectionsByEnvironment;
    v6->_pushConnectionsByEnvironment = v23;
  }

  return v6;
}

- (id)_pushConnectionWithEnvironmentName:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_pushQueue);
  v5 = [(NSMutableDictionary *)self->_pushConnectionsByEnvironment objectForKey:v4];
  if (!v5)
  {
    if ([v4 isEqualToString:*MEMORY[0x1E698CF20]])
    {
      v6 = @"com.apple.fileprovider.extension.push";
    }

    else
    {
      v6 = @"com.apple.fileprovider.extension.push.development";
    }

    v5 = [objc_alloc(MEMORY[0x1E698CF30]) initWithEnvironmentName:v4 namedDelegatePort:v6 queue:self->_pushQueue];
    [v5 setDelegate:self];
    [(NSMutableDictionary *)self->_pushConnectionsByEnvironment setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)start
{
  v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.fileprovider.pushkit"];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v3;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
  notify_post("com.apple.pushkit.launch.fileprovider");
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPDPushConnection *)v5 start];
  }

  pushQueue = self->_pushQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__FPDPushConnection_start__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(pushQueue, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (listener_shouldAcceptNewConnection__once != -1)
  {
    [FPDPushConnection listener:shouldAcceptNewConnection:];
  }

  [v7 setExportedInterface:listener_shouldAcceptNewConnection__serverInterface];
  [v7 setRemoteObjectInterface:listener_shouldAcceptNewConnection__clientInterface];
  [v7 setExportedObject:self];
  [v7 resume];
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPDPushConnection listener:shouldAcceptNewConnection:];
  }

  return 1;
}

void __56__FPDPushConnection_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C75ED8];
  v1 = listener_shouldAcceptNewConnection__serverInterface;
  listener_shouldAcceptNewConnection__serverInterface = v0;

  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C8C4B0];
  v3 = listener_shouldAcceptNewConnection__clientInterface;
  listener_shouldAcceptNewConnection__clientInterface = v2;
}

- (void)performWithConnection:(id)a3 block:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ %s was called with nil completion block!", "-[FPDPushConnection performWithConnection:block:]"];
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    v29 = v27;
    __assert_rtn("-[FPDPushConnection performWithConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDPushConnection.m", 149, [v27 UTF8String]);
  }

  v8 = v7;
  v9 = [v6 remoteObjectProxy];
  v10 = [v6 fp_bundleIdentifier];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_manager);
    v12 = [WeakRetained providerWithIdentifier:v10 reason:0];

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [FPDPushConnection performWithConnection:block:];
    }

    v14 = objc_loadWeakRetained(&self->_manager);
    v12 = [v14 defaultProviderWithTopLevelBundleIdentifier:v10];

    if (v12)
    {
LABEL_7:
      v15 = [v12 descriptor];
      v16 = [v15 bundleIdentifierForPushes];

      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__17;
      v42 = __Block_byref_object_dispose__17;
      v17 = [v6 valueForEntitlement:@"aps-environment"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [v6 valueForEntitlement:@"com.apple.developer.aps-environment"];
      }

      v43 = v19;

      if ([v39[5] isEqualToString:@"serverPreferred"])
      {
        v21 = [MEMORY[0x1E695B888] containerWithIdentifier:@"com.apple.CloudDocs"];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __49__FPDPushConnection_performWithConnection_block___block_invoke;
        v30[3] = &unk_1E83C1628;
        v37 = &v38;
        v31 = v6;
        v32 = v10;
        v36 = v8;
        v33 = v9;
        v34 = v16;
        v35 = v12;
        [v21 serverPreferredPushEnvironmentWithCompletionHandler:v30];
      }

      else
      {
        if (([MEMORY[0x1E698CF30] isValidEnvironment:v39[5]] & 1) == 0)
        {
          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v24 = v39[5];
            [v6 processIdentifier];
            v25 = FPExecutableNameForProcessIdentifier();
            v26 = [v6 processIdentifier];
            *buf = 138413314;
            v45 = v24;
            v46 = 2112;
            v47 = @"aps-environment";
            v48 = 2112;
            v49 = v25;
            v50 = 1024;
            v51 = v26;
            v52 = 2112;
            v53 = v10;
            _os_log_error_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_ERROR, "[ERROR] invalid push environment %@ specified in %@ from %@[%d] (requested for %@)", buf, 0x30u);
          }

          (v8)[2](v8, v9, 0, 0, 0);
          goto LABEL_21;
        }

        v21 = [v12 identifier];
        (v8)[2](v8, v9, v16, v21, v39[5]);
      }

LABEL_21:
      _Block_object_dispose(&v38, 8);

      goto LABEL_22;
    }

    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [FPDPushConnection performWithConnection:block:];
    }
  }

  else
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [FPDPushConnection performWithConnection:block:];
    }
  }

  (v8)[2](v8, v9, 0, 0, 0);
LABEL_22:

  v23 = *MEMORY[0x1E69E9840];
}

void __49__FPDPushConnection_performWithConnection_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 80) + 8) + 40);
      [*(a1 + 32) processIdentifier];
      v9 = FPExecutableNameForProcessIdentifier();
      v10 = [*(a1 + 32) processIdentifier];
      v11 = *(a1 + 40);
      v18 = 138413570;
      v19 = v8;
      v20 = 2112;
      v21 = @"aps-environment";
      v22 = 2112;
      v23 = v9;
      v24 = 1024;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] could not get push environment %@ specified in %@ from %@[%d] (requested for %@): %@", &v18, 0x3Au);
    }
  }

  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = *MEMORY[0x1E698CF20];
  }

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v12);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v16 = [*(a1 + 64) identifier];
  (*(v15 + 16))(v15, v13, v14, v16, *(*(*(a1 + 80) + 8) + 40));

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addClientConnection:(id)a3 forApplicationBundleIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_pushQueue);
  v7 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_opt_new();
    [(NSMutableDictionary *)self->_clientConnections setObject:v7 forKey:v6];
  }

  [v7 addObject:v8];
}

- (void)removeClientConnection:(id)a3 forApplicationBundleIdentifier:(id)a4
{
  v9 = a4;
  pushQueue = self->_pushQueue;
  v7 = a3;
  dispatch_assert_queue_V2(pushQueue);
  v8 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:v9];
  [v8 removeObject:v7];

  if (![v8 count])
  {
    [(NSMutableDictionary *)self->_clientConnections removeObjectForKey:v9];
  }
}

- (id)clientConnectionsForApplicationBundleIdentifier:(id)a3
{
  pushQueue = self->_pushQueue;
  v5 = a3;
  dispatch_assert_queue_V2(pushQueue);
  v6 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:v5];

  v7 = [v6 copy];

  return v7;
}

- (void)fileProviderRegister
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __41__FPDPushConnection_fileProviderRegister__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = *(a1 + 40);
    v13 = *(v12 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__FPDPushConnection_fileProviderRegister__block_invoke_2;
    block[3] = &unk_1E83BE5A8;
    block[4] = v12;
    v15 = v9;
    v16 = v10;
    v17 = *(a1 + 32);
    v18 = v11;
    dispatch_async(v13, block);
  }

  else
  {
    [a2 fileProviderRegistrationFailed];
    [*(a1 + 32) invalidate];
  }
}

uint64_t __41__FPDPushConnection_fileProviderRegister__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateTopicsForBundleIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) clientConnectionsForApplicationBundleIdentifier:*(a1 + 40)];
  v3 = [v2 count];

  if (!v3)
  {
    [*(*(a1 + 32) + 80) addObserver:*(a1 + 32) forProviderID:*(a1 + 48)];
  }

  [*(a1 + 32) addClientConnection:*(a1 + 56) forApplicationBundleIdentifier:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);

  return [v4 updateTopicsForApplicationBundleIdentifier:v5 providerIdentifier:v6 requestToken:1 environment:v7];
}

- (void)fileProviderUnregister
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __43__FPDPushConnection_fileProviderUnregister__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(v13 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__FPDPushConnection_fileProviderUnregister__block_invoke_2;
    block[3] = &unk_1E83BE5A8;
    block[4] = v13;
    v16 = v12;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    dispatch_async(v14, block);
  }

  else
  {
    [a2 fileProviderRegistrationFailed];
    [*(a1 + 32) invalidate];
  }
}

void __43__FPDPushConnection_fileProviderUnregister__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) removeClientConnection:*(a1 + 40) forApplicationBundleIdentifier:*(a1 + 48)];
  v2 = [*(a1 + 32) clientConnectionsForApplicationBundleIdentifier:*(a1 + 48)];
  if (![v2 count])
  {
    [*(*(a1 + 32) + 80) removeObserver:*(a1 + 32) forProviderID:*(a1 + 56)];
  }

  v3 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 48)];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(a1 + 32) + 56) removeObjectForKey:*(*(&v19 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 64) setObject:MEMORY[0x1E695E0F0] forKey:*(a1 + 48)];
  [*(a1 + 32) updateTopicsForApplicationBundleIdentifier:*(a1 + 48) providerIdentifier:*(a1 + 56) requestToken:0 environment:*(a1 + 64)];
  v8 = [*(a1 + 32) _pushConnectionWithEnvironmentName:*(a1 + 64)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 invalidateTokenForTopic:*(*(&v15 + 1) + 8 * v13++) identifier:{&stru_1F4C2FFD0, v15}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)topicsForApplicationBundleIdentifier:(id)a3
{
  pushQueue = self->_pushQueue;
  v5 = a3;
  dispatch_assert_queue_V2(pushQueue);
  v6 = [(NSMutableDictionary *)self->_topicsForBundleIdentifier objectForKey:v5];

  return v6;
}

- (id)_debugTopicsForApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  pushQueue = self->_pushQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FPDPushConnection__debugTopicsForApplicationIdentifier___block_invoke;
  block[3] = &unk_1E83BDE60;
  block[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  dispatch_sync(pushQueue, block);
  v9 = v14;
  v10 = v7;

  return v7;
}

void __58__FPDPushConnection__debugTopicsForApplicationIdentifier___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFA8];
  v3 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 setWithArray:v3];

  v5 = MEMORY[0x1E696AE18];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__FPDPushConnection__debugTopicsForApplicationIdentifier___block_invoke_2;
  v13[3] = &unk_1E83C1678;
  v14 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v13];
  v8 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__FPDPushConnection__debugTopicsForApplicationIdentifier___block_invoke_3;
  v10[3] = &unk_1E83C16A0;
  v11 = *(a1 + 48);
  v12 = v7;
  v9 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];
}

void __58__FPDPushConnection__debugTopicsForApplicationIdentifier___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v6 enabledTopics];
  v9 = [v8 filteredArrayUsingPredicate:*(a1 + 40)];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v7];
  [v5 setValue:v9 forKey:v10];

  v11 = *(a1 + 32);
  v14 = [v6 opportunisticTopics];

  v12 = [v14 filteredArrayUsingPredicate:*(a1 + 40)];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, opportunistic", v7];

  [v11 setValue:v12 forKey:v13];
}

- (void)updateTopicsForBundleIdentifier:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_pushQueue);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v4, @"pushkit.fileprovider"];
  v31[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

  if ([v4 isEqualToString:@"com.apple.FileProvider.TestingHarness"])
  {
    v7 = [(NSMutableDictionary *)self->_messageDelegates objectForKey:v4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 customPushTopics];

      v6 = v9;
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(NSMutableDictionary *)self->_topicsForBundleIdentifier objectForKeyedSubscript:v4];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSMutableDictionary *)self->_bundleIdentifierForTopic removeObjectForKey:*(*(&v25 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NSMutableDictionary *)self->_bundleIdentifierForTopic setObject:v4 forKey:*(*(&v21 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  [(NSMutableDictionary *)self->_topicsForBundleIdentifier setObject:v15 forKey:v4];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)setMessageDelegate:(id)a3 forApplicationBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  pushQueue = self->_pushQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__FPDPushConnection_setMessageDelegate_forApplicationBundleIdentifier___block_invoke;
  block[3] = &unk_1E83BDE60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(pushQueue, block);
}

- (void)updateTopicsForApplicationBundleIdentifier:(id)a3 providerIdentifier:(id)a4 requestToken:(BOOL)a5 environment:(id)a6
{
  v10 = a3;
  v11 = a4;
  pushQueue = self->_pushQueue;
  v13 = a6;
  dispatch_assert_queue_V2(pushQueue);
  v14 = [(FPDPushConnection *)self _pushConnectionWithEnvironmentName:v13];

  v15 = self->_pushQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__FPDPushConnection_updateTopicsForApplicationBundleIdentifier_providerIdentifier_requestToken_environment___block_invoke;
  block[3] = &unk_1E83C16C8;
  block[4] = self;
  v20 = v10;
  v23 = a5;
  v21 = v14;
  v22 = v11;
  v16 = v11;
  v17 = v14;
  v18 = v10;
  dispatch_async(v15, block);
}

void __108__FPDPushConnection_updateTopicsForApplicationBundleIdentifier_providerIdentifier_requestToken_environment___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = a1 + 40;
  v4 = [*(a1 + 32) topicsForApplicationBundleIdentifier:*(a1 + 40)];
  v5 = [v2 setWithArray:v4];

  v6 = [*(v3 + 8) opportunisticTopics];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  v11 = [*(v3 + 8) enabledTopics];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;

  if (*(v3 + 24) == 1)
  {
    v15 = [v5 anyObject];
    v16 = [v15 fp_isCloudDocsPushTopic];

    if (v16)
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __108__FPDPushConnection_updateTopicsForApplicationBundleIdentifier_providerIdentifier_requestToken_environment___block_invoke_cold_2(v3, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v24 = v5;
      v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v38;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v38 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [*(a1 + 48) requestTokenForTopic:*(*(&v37 + 1) + 8 * i) identifier:{&stru_1F4C2FFD0, v37}];
          }

          v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v26);
      }

      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __108__FPDPushConnection_updateTopicsForApplicationBundleIdentifier_providerIdentifier_requestToken_environment___block_invoke_cold_1(v24, v3);
      }
    }
  }

  v29 = [MEMORY[0x1E695DFA8] setWithArray:{v10, v37}];
  v30 = [MEMORY[0x1E695DFA8] setWithArray:v14];
  if ([MEMORY[0x1E69673F0] isProviderIDForeground:*(a1 + 56)])
  {
    [v30 unionSet:v5];
    [v29 minusSet:v5];
  }

  else
  {
    [v30 minusSet:v5];
    [v29 unionSet:v5];
  }

  v31 = [v10 count];
  if (v31 != [v29 count] || (v32 = objc_msgSend(v14, "count"), v32 != objc_msgSend(v30, "count")))
  {
    v33 = *(a1 + 48);
    v34 = [v30 allObjects];
    v35 = [v29 allObjects];
    [v33 setEnabledTopics:v34 ignoredTopics:MEMORY[0x1E695E0F0] opportunisticTopics:v35];
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_pushQueue);
  v10 = [(NSMutableDictionary *)self->_bundleIdentifierForTopic objectForKey:v9];
  v11 = [(FPDPushConnection *)self clientConnectionsForApplicationBundleIdentifier:v10];
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [FPDPushConnection connection:v9 didReceiveToken:v11 forTopic:v12 identifier:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * v17) remoteObjectProxy];
        [v18 fileProviderRegistrationSucceededWithDeviceToken:v8];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_pushQueue);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPDPushConnection connection:v7 didReceiveIncomingMessage:v8];
  }

  v9 = [v7 topic];
  v10 = [(NSMutableDictionary *)self->_bundleIdentifierForTopic objectForKey:v9];
  if (v10)
  {
    goto LABEL_8;
  }

  if ([v9 fp_isCloudDocsPushTopic])
  {
    WeakRetained = objc_loadWeakRetained(&self->_manager);
    v10 = [WeakRetained clouddocsExtensionIdentifier];

LABEL_8:
    v12 = [(NSMutableDictionary *)self->_messageDelegates objectForKey:v10];
    v13 = v12;
    if (v12)
    {
      payloadDeliveryQueue = self->_payloadDeliveryQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __58__FPDPushConnection_connection_didReceiveIncomingMessage___block_invoke;
      v17[3] = &unk_1E83BE0E0;
      v18 = v12;
      v19 = v7;
      v20 = self;
      v21 = v10;
      v22 = v9;
      v23 = v6;
      dispatch_async(payloadDeliveryQueue, v17);

      v15 = v18;
    }

    else
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [FPDPushConnection connection:didReceiveIncomingMessage:];
      }
    }

    goto LABEL_13;
  }

  if ([v9 fp_isTestPushTopic])
  {
    v10 = @"com.apple.FileProvider.TestingHarness";
    goto LABEL_8;
  }

  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [FPDPushConnection connection:didReceiveIncomingMessage:];
  }

  [v6 invalidateTokenForTopic:v9 identifier:&stru_1F4C2FFD0];
LABEL_13:
}

void __58__FPDPushConnection_connection_didReceiveIncomingMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__FPDPushConnection_connection_didReceiveIncomingMessage___block_invoke_2;
  v9[3] = &unk_1E83BE5A8;
  v8 = *(a1 + 48);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 40);
  [v2 didReceiveMessage:v3 completionHandler:v9];
}

void __58__FPDPushConnection_connection_didReceiveIncomingMessage___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v7 = *(a1 + 32);
  v2 = *(v7 + 24);
  block[2] = __58__FPDPushConnection_connection_didReceiveIncomingMessage___block_invoke_3;
  block[3] = &unk_1E83BE5A8;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  dispatch_async(v2, block);
}

void __58__FPDPushConnection_connection_didReceiveIncomingMessage___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) clientConnectionsForApplicationBundleIdentifier:*(a1 + 40)];
  if ([v2 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = v2;
    obj = v2;
    v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v25;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v25 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v24 + 1) + 8 * i);
          v8 = [v7 remoteObjectProxy];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __58__FPDPushConnection_connection_didReceiveIncomingMessage___block_invoke_86;
          v19[3] = &unk_1E83C16F0;
          v9 = *(a1 + 48);
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          v20 = v9;
          v21 = v10;
          v22 = v7;
          v23 = v11;
          v12 = [v8 remoteObjectProxyWithErrorHandler:v19];
          v13 = [*(a1 + 64) userInfo];
          [v12 fileProviderPayloadReceived:v13];
        }

        v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v4);
    }

    v2 = v17;
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Missing push connection for topic %@. This can happen if the provider doesn't register for pushes on startup. Invalidating push topic.", buf, 0xCu);
    }

    [*(a1 + 56) invalidateTokenForTopic:*(a1 + 48) identifier:&stru_1F4C2FFD0];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __58__FPDPushConnection_connection_didReceiveIncomingMessage___block_invoke_86(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 fp_prettyDescription];
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] Error sending push for topic %@: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 40) + 24);
  block[2] = __58__FPDPushConnection_connection_didReceiveIncomingMessage___block_invoke_87;
  block[3] = &unk_1E83BDE60;
  v11 = v7;
  v12 = *(a1 + 56);
  dispatch_async(v8, block);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateTopicsForProvider:(id)a3
{
  v4 = a3;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPDPushConnection *)v5 updateTopicsForProvider:v6, v7, v8, v9, v10, v11, v12];
  }

  pushQueue = self->_pushQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__FPDPushConnection_updateTopicsForProvider___block_invoke;
  v15[3] = &unk_1E83BE158;
  v15[4] = self;
  v16 = v4;
  v14 = v4;
  dispatch_async(pushQueue, v15);
}

void __45__FPDPushConnection_updateTopicsForProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained providerWithIdentifier:*(a1 + 40) reason:0];

  v4 = [v3 descriptor];
  v5 = [v4 bundleIdentifierForPushes];

  if (v5)
  {
    v6 = [*(a1 + 32) clientConnectionsForApplicationBundleIdentifier:v5];
    v7 = *(a1 + 32);
    v8 = [v6 firstObject];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__FPDPushConnection_updateTopicsForProvider___block_invoke_2;
    v11[3] = &unk_1E83C1650;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    [v7 performWithConnection:v8 block:v11];
  }
}

void __45__FPDPushConnection_updateTopicsForProvider___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(v11 + 24);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __45__FPDPushConnection_updateTopicsForProvider___block_invoke_89;
    v16[3] = &unk_1E83BF988;
    v16[4] = v11;
    v17 = v10;
    v18 = v8;
    v19 = v9;
    dispatch_async(v12, v16);
  }

  else
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Invalid push connection for app bundle identifier %@, not updating topics", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] FPDPushConnection accepted connection %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performWithConnection:block:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] couldn't find extension with identifier %@, trying application", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performWithConnection:block:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, v0, v1, "[ERROR] Couldn't find provider for registering bundle %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performWithConnection:block:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, v0, v1, "[ERROR] Couldn't find valid provider for connection %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __108__FPDPushConnection_updateTopicsForApplicationBundleIdentifier_providerIdentifier_requestToken_environment___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] requested tokens for topics %@ for application %@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __108__FPDPushConnection_updateTopicsForApplicationBundleIdentifier_providerIdentifier_requestToken_environment___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a2, a3, "[DEBUG] skipping token request for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)connection:(NSObject *)a3 didReceiveToken:forTopic:identifier:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 count];
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] received token for topic %@, informing %lu clients", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)connection:(void *)a1 didReceiveIncomingMessage:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 topic];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] received push for topic %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)connection:didReceiveIncomingMessage:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, v0, v1, "[ERROR] Received push for unregistered topic %@; invalidating token.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)connection:didReceiveIncomingMessage:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_FAULT, "[CRIT] No delegate found for topic %@ for bundle identifier %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateTopicsForProvider:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end