@interface DMFPolicyMonitor
+ (NSSet)allEffectivePolicyTypes;
+ (id)policyMonitor;
+ (id)remoteInterface;
- (DMFPolicyMonitor)init;
- (DMFPolicyMonitor)initWithXPCConnection:(id)a3;
- (id)allExpiredScreenTimeBudgetsWithError:(id *)a3;
- (id)requestCommunicationPoliciesForBundleIdentifiers:(id)a3 withError:(id *)a4;
- (id)requestPoliciesForBundleIdentifiers:(id)a3 withError:(id *)a4;
- (id)requestPoliciesForTypes:(id)a3 withError:(id *)a4;
- (void)_dispatchRequest:(id)a3;
- (void)addRegistration:(id)a3 forPolicyMonitorIdentifier:(id)a4 completionHandler:(id)a5;
- (void)allExpiredScreenTimeBudgetsWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)invalidatePolicyMonitor:(id)a3;
- (void)requestCommunicationPoliciesForBundleIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)requestPoliciesForBundleIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)requestPoliciesForCategoryIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)requestPoliciesForTypes:(id)a3 completionHandler:(id)a4;
- (void)requestPoliciesForWebsiteURLs:(id)a3 completionHandler:(id)a4;
@end

@implementation DMFPolicyMonitor

+ (id)policyMonitor
{
  if (policyMonitor_onceToken != -1)
  {
    +[DMFPolicyMonitor policyMonitor];
  }

  v3 = policyMonitor_policyMonitor;

  return v3;
}

uint64_t __33__DMFPolicyMonitor_policyMonitor__block_invoke()
{
  policyMonitor_policyMonitor = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (DMFPolicyMonitor)init
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.dmd.policy" options:4096];
  v4 = [(DMFPolicyMonitor *)self initWithXPCConnection:v3];

  return v4;
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_0 != -1)
  {
    +[DMFPolicyMonitor remoteInterface];
  }

  v3 = remoteInterface_remoteInterface_0;

  return v3;
}

void __35__DMFPolicyMonitor_remoteInterface__block_invoke()
{
  v14[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F57C2A80];
  v1 = remoteInterface_remoteInterface_0;
  remoteInterface_remoteInterface_0 = v0;

  v2 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v5 setWithArray:v6];

  v8 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v10 = [v8 setWithArray:v9];

  [remoteInterface_remoteInterface_0 setClasses:v4 forSelector:sel_addRegistration_replyHandler_ argumentIndex:0 ofReply:1];
  [remoteInterface_remoteInterface_0 setClasses:v4 forSelector:sel_requestPoliciesForTypes_replyHandler_ argumentIndex:0 ofReply:1];
  [remoteInterface_remoteInterface_0 setClasses:v7 forSelector:sel_requestPoliciesForWebsiteURLs_replyHandler_ argumentIndex:0 ofReply:0];
  [remoteInterface_remoteInterface_0 setClasses:v10 forSelector:sel_requestPoliciesForWebsiteURLs_replyHandler_ argumentIndex:0 ofReply:1];

  v11 = *MEMORY[0x1E69E9840];
}

- (DMFPolicyMonitor)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = DMFPolicyMonitor;
  v6 = [(DMFPolicyMonitor *)&v28 init];
  if (v6)
  {
    v7 = objc_opt_new();
    notificationTokensByPolicyMonitorIdentifier = v6->_notificationTokensByPolicyMonitorIdentifier;
    v6->_notificationTokensByPolicyMonitorIdentifier = v7;

    v9 = objc_opt_new();
    pendingRequests = v6->_pendingRequests;
    v6->_pendingRequests = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);

    v13 = dispatch_queue_create("com.apple.dmf.policy.first-unlock", v12);
    firstUnlockQueue = v6->_firstUnlockQueue;
    v6->_firstUnlockQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);

    v17 = dispatch_queue_create("com.apple.dmf.policy.registration-callback", v16);
    registrationCallbackQueue = v6->_registrationCallbackQueue;
    v6->_registrationCallbackQueue = v17;

    v19 = +[DMFPolicyMonitor mobileKeyBagFirstUnlockNotificationName];
    if (!+[DMFPolicyMonitor hasFirstUnlocked]&& v19)
    {
      out_token = 0;
      v20 = v6->_firstUnlockQueue;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __42__DMFPolicyMonitor_initWithXPCConnection___block_invoke;
      v25[3] = &unk_1E8616AA8;
      v21 = v6;
      v26 = v21;
      if (notify_register_dispatch(v19, &out_token, v20, v25))
      {
        v22 = DMFPolicyLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [DMFPolicyMonitor initWithXPCConnection:v22];
        }
      }

      else
      {
        v21->_firstUnlockToken = out_token;
      }
    }

    objc_storeStrong(&v6->_xpcConnection, a3);
    v23 = [objc_opt_class() remoteInterface];
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v23];

    [(NSXPCConnection *)v6->_xpcConnection resume];
  }

  return v6;
}

void __42__DMFPolicyMonitor_initWithXPCConnection___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pendingRequests];
  v3 = [v2 count];

  v4 = DMFPolicyLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1DBFFF000, v4, OS_LOG_TYPE_DEFAULT, "Policy monitor detected first-unlock with pending requests", buf, 2u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [*(a1 + 32) pendingRequests];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }

    v4 = [*(a1 + 32) pendingRequests];
    [v4 removeAllObjects];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1DBFFF000, v4, OS_LOG_TYPE_DEFAULT, "Policy monitor dectected first-unlock without pending requests", buf, 2u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_firstUnlockToken))
  {
    notify_cancel(self->_firstUnlockToken);
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = DMFPolicyMonitor;
  [(DMFPolicyMonitor *)&v3 dealloc];
}

+ (NSSet)allEffectivePolicyTypes
{
  if (allEffectivePolicyTypes_onceToken != -1)
  {
    +[DMFPolicyMonitor allEffectivePolicyTypes];
  }

  v3 = allEffectivePolicyTypes_allTypes;

  return v3;
}

void __43__DMFPolicyMonitor_allEffectivePolicyTypes__block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"applications";
  v5[1] = @"applicationcategories";
  v5[2] = @"categories";
  v5[3] = @"icloudaccountlogout";
  v5[4] = @"websites";
  v5[5] = @"websitecategories";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = allEffectivePolicyTypes_allTypes;
  allEffectivePolicyTypes_allTypes = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addRegistration:(id)a3 forPolicyMonitorIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identifier];
  v12 = [(DMFPolicyMonitor *)self xpcConnection];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke;
  v34[3] = &unk_1E8616AD0;
  v13 = v11;
  v35 = v13;
  v14 = v10;
  v36 = v14;
  v15 = [v12 remoteObjectProxyWithErrorHandler:v34];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_119;
  v28[3] = &unk_1E8616B20;
  v33 = v14;
  v29 = v13;
  v30 = self;
  v16 = v8;
  v31 = v16;
  v32 = v9;
  v17 = v9;
  v18 = v14;
  v19 = v13;
  v20 = MEMORY[0x1E128DE70](v28);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_122;
  v24[3] = &unk_1E8616B48;
  v25 = v15;
  v26 = v16;
  v27 = v20;
  v21 = v20;
  v22 = v16;
  v23 = v15;
  [(DMFPolicyMonitor *)self _dispatchRequest:v24];
}

void __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    out_token = 0;
    v7 = [*(a1 + 32) UTF8String];
    v8 = [*(a1 + 40) registrationCallbackQueue];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_120;
    handler[3] = &unk_1E8616AF8;
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    LODWORD(v7) = notify_register_dispatch(v7, &out_token, v8, handler);

    if (v7)
    {
      v9 = DMFPolicyLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_119_cold_1((a1 + 32));
      }

      v10 = *(a1 + 64);
      if (v10)
      {
        v11 = DMFErrorWithCodeAndUserInfo(3904, 0);
        (*(v10 + 16))(v10, 0, v11);
      }
    }

    else
    {
      v14 = [*(a1 + 40) notificationTokensByPolicyMonitorIdentifier];
      objc_sync_enter(v14);
      v15 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
      v16 = [*(a1 + 40) notificationTokensByPolicyMonitorIdentifier];
      [v16 setObject:v15 forKeyedSubscript:*(a1 + 56)];

      objc_sync_exit(v14);
      v17 = DMFPolicyLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138543362;
        v26 = v18;
        _os_log_impl(&dword_1DBFFF000, v17, OS_LOG_TYPE_DEFAULT, "Successfully added registration with identifier %{public}@", buf, 0xCu);
      }

      v19 = *(a1 + 64);
      if (v19)
      {
        (*(v19 + 16))(v19, v5, 0);
      }
    }
  }

  else
  {
    v12 = DMFPolicyLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_cold_1(a1);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v6);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_120(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = DMFPolicyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1DBFFF000, v2, OS_LOG_TYPE_DEFAULT, "Received policy changed notification for registration %{public}@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) callback];

  if (v4)
  {
    v5 = [*(a1 + 40) callback];
    v5[2]();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidatePolicyMonitor:(id)a3
{
  v7 = a3;
  v4 = [(DMFPolicyMonitor *)self notificationTokensByPolicyMonitorIdentifier];
  objc_sync_enter(v4);
  v5 = [v4 objectForKeyedSubscript:v7];
  v6 = v5;
  if (v5)
  {
    notify_cancel([v5 intValue]);
    [v4 removeObjectForKey:v7];
  }

  objc_sync_exit(v4);
}

- (void)requestPoliciesForTypes:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMFPolicyMonitor *)self xpcConnection];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__DMFPolicyMonitor_requestPoliciesForTypes_completionHandler___block_invoke;
  v26[3] = &unk_1E8616AD0;
  v9 = v6;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  v11 = [v8 remoteObjectProxyWithErrorHandler:v26];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__DMFPolicyMonitor_requestPoliciesForTypes_completionHandler___block_invoke_123;
  v22[3] = &unk_1E8616B70;
  v12 = v9;
  v24 = self;
  v25 = v10;
  v23 = v12;
  v13 = v10;
  v14 = MEMORY[0x1E128DE70](v22);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__DMFPolicyMonitor_requestPoliciesForTypes_completionHandler___block_invoke_127;
  v18[3] = &unk_1E8616B48;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  v15 = v14;
  v16 = v12;
  v17 = v11;
  [(DMFPolicyMonitor *)self _dispatchRequest:v18];
}

void __62__DMFPolicyMonitor_requestPoliciesForTypes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__DMFPolicyMonitor_requestPoliciesForTypes_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __62__DMFPolicyMonitor_requestPoliciesForTypes_completionHandler___block_invoke_123(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 allKeys];
      v10 = [v9 componentsJoinedByString:{@", "}];
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully requested policy for types %{public}@", &v15, 0xCu);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = *(v11 + 16);
LABEL_10:
      v12();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__DMFPolicyMonitor_requestPoliciesForTypes_completionHandler___block_invoke_cold_1(a1);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      v12 = *(v13 + 16);
      goto LABEL_10;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)requestPoliciesForTypes:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v34 = 0;
  v35[0] = &v34;
  v35[1] = 0x3032000000;
  v35[2] = __Block_byref_object_copy__1;
  v35[3] = __Block_byref_object_dispose__1;
  v36 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  if (+[DMFPolicyMonitor hasFirstUnlocked])
  {
    v7 = [(DMFPolicyMonitor *)self xpcConnection];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__DMFPolicyMonitor_requestPoliciesForTypes_withError___block_invoke;
    v25[3] = &unk_1E8616B98;
    v8 = v6;
    v26 = v8;
    v27 = &v34;
    v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v25];

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __54__DMFPolicyMonitor_requestPoliciesForTypes_withError___block_invoke_128;
    v20 = &unk_1E8616BC0;
    v21 = self;
    v10 = v8;
    v22 = v10;
    v23 = &v34;
    v24 = &v28;
    v11 = MEMORY[0x1E128DE70](&v17);
    [v9 requestPoliciesForTypes:v10 replyHandler:{v11, v17, v18, v19, v20, v21}];

    v12 = v26;
  }

  else
  {
    v13 = DMFErrorWithCodeAndUserInfo(3950, 0);
    v14 = *(v35[0] + 40);
    *(v35[0] + 40) = v13;

    v12 = DMFPolicyLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DMFPolicyMonitor requestPoliciesForTypes:v6 withError:v35];
    }
  }

  if (a4)
  {
    *a4 = *(v35[0] + 40);
  }

  v15 = v29[5];
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);

  return v15;
}

void __54__DMFPolicyMonitor_requestPoliciesForTypes_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__DMFPolicyMonitor_requestPoliciesForTypes_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __54__DMFPolicyMonitor_requestPoliciesForTypes_withError___block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 allKeys];
      v10 = [v9 componentsJoinedByString:{@", "}];
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully requested policy for types %{public}@", &v17, 0xCu);
    }

    v11 = 56;
    v12 = v5;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__DMFPolicyMonitor_requestPoliciesForTypes_withError___block_invoke_128_cold_1(a1);
    }

    v11 = 48;
    v12 = v6;
  }

  v13 = *(*(a1 + v11) + 8);
  v14 = v12;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;

  v16 = *MEMORY[0x1E69E9840];
}

- (void)requestPoliciesForBundleIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMFPolicyMonitor *)self xpcConnection];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke;
  v26[3] = &unk_1E8616AD0;
  v9 = v6;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  v11 = [v8 remoteObjectProxyWithErrorHandler:v26];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke_129;
  v22[3] = &unk_1E8616B70;
  v12 = v9;
  v24 = self;
  v25 = v10;
  v23 = v12;
  v13 = v10;
  v14 = MEMORY[0x1E128DE70](v22);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke_130;
  v18[3] = &unk_1E8616B48;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  v15 = v14;
  v16 = v12;
  v17 = v11;
  [(DMFPolicyMonitor *)self _dispatchRequest:v18];
}

void __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke_129(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) count];
      v14 = 134217984;
      v15 = v9;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully requested policies for %lu bundleIdentifiers", &v14, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_10:
      v11();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1();
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)requestPoliciesForBundleIdentifiers:(id)a3 withError:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__1;
  v32[3] = __Block_byref_object_dispose__1;
  v33 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  if (+[DMFPolicyMonitor hasFirstUnlocked])
  {
    v7 = [(DMFPolicyMonitor *)self xpcConnection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __66__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_withError___block_invoke;
    v22[3] = &unk_1E8616B98;
    v8 = v6;
    v23 = v8;
    v24 = &v31;
    v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v22];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_withError___block_invoke_131;
    v18[3] = &unk_1E8616BE8;
    v10 = v8;
    v19 = v10;
    v20 = &v31;
    v21 = &v25;
    v11 = MEMORY[0x1E128DE70](v18);
    [v9 requestPoliciesForBundleIdentifiers:v10 replyHandler:v11];

    v12 = v23;
  }

  else
  {
    v13 = DMFErrorWithCodeAndUserInfo(3950, 0);
    v14 = *(v32[0] + 40);
    *(v32[0] + 40) = v13;

    v12 = DMFPolicyLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v6 count];
      [DMFPolicyMonitor requestPoliciesForBundleIdentifiers:v32 withError:?];
    }
  }

  if (a4)
  {
    *a4 = *(v32[0] + 40);
  }

  v15 = v26[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __66__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_withError___block_invoke_131(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) count];
      v16 = 134217984;
      v17 = v9;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully requested policies for %lu bundleIdentifiers", &v16, 0xCu);
    }

    v10 = 48;
    v11 = v5;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1();
    }

    v10 = 40;
    v11 = v6;
  }

  v12 = *(*(a1 + v10) + 8);
  v13 = v11;
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)requestCommunicationPoliciesForBundleIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMFPolicyMonitor *)self xpcConnection];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke;
  v26[3] = &unk_1E8616AD0;
  v9 = v6;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  v11 = [v8 remoteObjectProxyWithErrorHandler:v26];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke_132;
  v22[3] = &unk_1E8616B70;
  v12 = v9;
  v24 = self;
  v25 = v10;
  v23 = v12;
  v13 = v10;
  v14 = MEMORY[0x1E128DE70](v22);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke_133;
  v18[3] = &unk_1E8616B48;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  v15 = v14;
  v16 = v12;
  v17 = v11;
  [(DMFPolicyMonitor *)self _dispatchRequest:v18];
}

void __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke_132(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) count];
      v14 = 134217984;
      v15 = v9;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully requested communication policies for %lu bundleIdentifiers", &v14, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_10:
      v11();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1();
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)requestCommunicationPoliciesForBundleIdentifiers:(id)a3 withError:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__1;
  v32[3] = __Block_byref_object_dispose__1;
  v33 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  if (+[DMFPolicyMonitor hasFirstUnlocked])
  {
    v7 = [(DMFPolicyMonitor *)self xpcConnection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __79__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_withError___block_invoke;
    v22[3] = &unk_1E8616B98;
    v8 = v6;
    v23 = v8;
    v24 = &v31;
    v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v22];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_withError___block_invoke_134;
    v18[3] = &unk_1E8616BE8;
    v10 = v8;
    v19 = v10;
    v20 = &v31;
    v21 = &v25;
    v11 = MEMORY[0x1E128DE70](v18);
    [v9 requestCommunicationPoliciesForBundleIdentifiers:v10 replyHandler:v11];

    v12 = v23;
  }

  else
  {
    v13 = DMFErrorWithCodeAndUserInfo(3950, 0);
    v14 = *(v32[0] + 40);
    *(v32[0] + 40) = v13;

    v12 = DMFPolicyLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v6 count];
      [DMFPolicyMonitor requestCommunicationPoliciesForBundleIdentifiers:v32 withError:?];
    }
  }

  if (a4)
  {
    *a4 = *(v32[0] + 40);
  }

  v15 = v26[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __79__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __79__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_withError___block_invoke_134(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) count];
      v16 = 134217984;
      v17 = v9;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully requested communication policies for %lu bundleIdentifiers", &v16, 0xCu);
    }

    v10 = 48;
    v11 = v5;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1();
    }

    v10 = 40;
    v11 = v6;
  }

  v12 = *(*(a1 + v10) + 8);
  v13 = v11;
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)requestPoliciesForCategoryIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMFPolicyMonitor *)self xpcConnection];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76__DMFPolicyMonitor_requestPoliciesForCategoryIdentifiers_completionHandler___block_invoke;
  v26[3] = &unk_1E8616AD0;
  v9 = v6;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  v11 = [v8 remoteObjectProxyWithErrorHandler:v26];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76__DMFPolicyMonitor_requestPoliciesForCategoryIdentifiers_completionHandler___block_invoke_135;
  v22[3] = &unk_1E8616B70;
  v12 = v9;
  v24 = self;
  v25 = v10;
  v23 = v12;
  v13 = v10;
  v14 = MEMORY[0x1E128DE70](v22);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__DMFPolicyMonitor_requestPoliciesForCategoryIdentifiers_completionHandler___block_invoke_136;
  v18[3] = &unk_1E8616B48;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  v15 = v14;
  v16 = v12;
  v17 = v11;
  [(DMFPolicyMonitor *)self _dispatchRequest:v18];
}

void __76__DMFPolicyMonitor_requestPoliciesForCategoryIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__DMFPolicyMonitor_requestPoliciesForCategoryIdentifiers_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __76__DMFPolicyMonitor_requestPoliciesForCategoryIdentifiers_completionHandler___block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) count];
      v14 = 134217984;
      v15 = v9;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully requested policies for %lu categoryIdentifiers", &v14, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_10:
      v11();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__DMFPolicyMonitor_requestPoliciesForCategoryIdentifiers_completionHandler___block_invoke_cold_1();
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)requestPoliciesForWebsiteURLs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMFPolicyMonitor *)self xpcConnection];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__DMFPolicyMonitor_requestPoliciesForWebsiteURLs_completionHandler___block_invoke;
  v26[3] = &unk_1E8616AD0;
  v9 = v6;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  v11 = [v8 remoteObjectProxyWithErrorHandler:v26];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__DMFPolicyMonitor_requestPoliciesForWebsiteURLs_completionHandler___block_invoke_137;
  v22[3] = &unk_1E8616B70;
  v12 = v9;
  v24 = self;
  v25 = v10;
  v23 = v12;
  v13 = v10;
  v14 = MEMORY[0x1E128DE70](v22);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__DMFPolicyMonitor_requestPoliciesForWebsiteURLs_completionHandler___block_invoke_138;
  v18[3] = &unk_1E8616B48;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  v15 = v14;
  v16 = v12;
  v17 = v11;
  [(DMFPolicyMonitor *)self _dispatchRequest:v18];
}

void __68__DMFPolicyMonitor_requestPoliciesForWebsiteURLs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__DMFPolicyMonitor_requestPoliciesForWebsiteURLs_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __68__DMFPolicyMonitor_requestPoliciesForWebsiteURLs_completionHandler___block_invoke_137(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) count];
      v14 = 134217984;
      v15 = v9;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully requested policies for %lu websiteURLs", &v14, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_10:
      v11();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__DMFPolicyMonitor_requestPoliciesForWebsiteURLs_completionHandler___block_invoke_cold_1();
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMFPolicyMonitor *)self firstUnlockQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__DMFPolicyMonitor__dispatchRequest___block_invoke;
  v7[3] = &unk_1E86162A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __37__DMFPolicyMonitor__dispatchRequest___block_invoke(uint64_t a1)
{
  if (+[DMFPolicyMonitor hasFirstUnlocked])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v4 = [*(a1 + 32) pendingRequests];
    v3 = MEMORY[0x1E128DE70](*(a1 + 40));
    [v4 addObject:v3];
  }
}

- (id)allExpiredScreenTimeBudgetsWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v4 = [(DMFPolicyMonitor *)self xpcConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithError___block_invoke;
  v10[3] = &unk_1E8616870;
  v10[4] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithError___block_invoke_139;
  v9[3] = &unk_1E8616C10;
  v9[4] = &v17;
  v9[5] = &v11;
  v6 = MEMORY[0x1E128DE70](v9);
  [v5 allExpiredScreenTimeBudgetsShouldBeSynchronous:1 replyHandler:v6];
  if (a3)
  {
    *a3 = v18[5];
  }

  v7 = v12[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __57__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __57__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithError___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully got identifiers. Result: %@{public}", &v15, 0xCu);
    }

    v9 = 40;
    v10 = v5;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithError___block_invoke_cold_1();
    }

    v9 = 32;
    v10 = v6;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  v14 = *MEMORY[0x1E69E9840];
}

- (void)allExpiredScreenTimeBudgetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DMFPolicyMonitor *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E86168E8;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithCompletionHandler___block_invoke_141;
  v10[3] = &unk_1E8616C38;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  v9 = MEMORY[0x1E128DE70](v10);
  [v7 allExpiredScreenTimeBudgetsShouldBeSynchronous:0 replyHandler:v9];
}

void __69__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFPolicyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithError___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __69__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithCompletionHandler___block_invoke_141(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMFPolicyLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1DBFFF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully got identifiers. Result: %@{public}", &v13, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_10:
      v10();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithError___block_invoke_cold_1();
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v10 = *(v11 + 16);
      goto LABEL_10;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1DBFFF000, v1, v2, "Failed to add registration %{public}@ with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __81__DMFPolicyMonitor_addRegistration_forPolicyMonitorIdentifier_completionHandler___block_invoke_119_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1DBFFF000, v2, v3, "Failed to add registration %{public}@ with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __62__DMFPolicyMonitor_requestPoliciesForTypes_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1DBFFF000, v1, v2, "Failed to request policy for types %{public}@ with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)requestPoliciesForTypes:(uint64_t)a1 withError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_1DBFFF000, v3, v4, "Failed to request policy for types %{public}@ with error: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

void __54__DMFPolicyMonitor_requestPoliciesForTypes_withError___block_invoke_128_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1DBFFF000, v2, v3, "Failed to request policy for types %{public}@ with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __74__DMFPolicyMonitor_requestPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DBFFF000, v2, v3, "Failed to request policies for %lu bundleIdentifiers with error: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestPoliciesForBundleIdentifiers:(uint64_t)a1 withError:.cold.1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10(a1);
  OUTLINED_FUNCTION_8(3.8521e-34, v1, v2, v3);
  _os_log_error_impl(&dword_1DBFFF000, v5, OS_LOG_TYPE_ERROR, "Failed to request policies for %lu bundleIdentifierswith error: %{public}@", v4, 0x16u);
}

void __87__DMFPolicyMonitor_requestCommunicationPoliciesForBundleIdentifiers_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DBFFF000, v2, v3, "Failed to request communication policies for %lu bundleIdentifiers with error: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestCommunicationPoliciesForBundleIdentifiers:(uint64_t)a1 withError:.cold.1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10(a1);
  OUTLINED_FUNCTION_8(3.8521e-34, v1, v2, v3);
  _os_log_error_impl(&dword_1DBFFF000, v5, OS_LOG_TYPE_ERROR, "Failed to request communication policies for %lu bundleIdentifierswith error: %{public}@", v4, 0x16u);
}

void __76__DMFPolicyMonitor_requestPoliciesForCategoryIdentifiers_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DBFFF000, v2, v3, "Failed to request policies for %lu categoryIdentifiers with error: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __68__DMFPolicyMonitor_requestPoliciesForWebsiteURLs_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DBFFF000, v2, v3, "Failed to request policies for %lu websiteURLs with error: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __57__DMFPolicyMonitor_allExpiredScreenTimeBudgetsWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1DBFFF000, v0, v1, "Failed to get identifiers with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end