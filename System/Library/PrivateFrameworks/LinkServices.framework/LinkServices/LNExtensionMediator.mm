@interface LNExtensionMediator
+ (id)sharedQueue;
+ (void)getConnectionHostInterfaceForBundleIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)getWidgetKitXPCListenerEndpointForBundleIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)getXPCListenerEndpointForBundleIdentifier:(id)a3 extensionMediatorBundleIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation LNExtensionMediator

+ (id)sharedQueue
{
  if (sharedQueue_onceToken != -1)
  {
    dispatch_once(&sharedQueue_onceToken, &__block_literal_global_37);
  }

  v3 = sharedQueue_queue;

  return v3;
}

void __34__LNExtensionMediator_sharedQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.appintents.extension-mediator.internal-queue", v2);
  v1 = sharedQueue_queue;
  sharedQueue_queue = v0;
}

+ (void)getXPCListenerEndpointForBundleIdentifier:(id)a3 extensionMediatorBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 sharedQueue];
  dispatch_assert_queue_V2(v11);

  v12 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v24 = v9;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_INFO, "Fetching an XPC listener endpoint from an internal mediator (%@) for %@", buf, 0x16u);
  }

  v13 = [LNConnection alloc];
  v14 = [objc_alloc(MEMORY[0x1E69AC7B0]) initWithType:1 bundleIdentifier:v9 url:0];
  v22 = 0;
  v15 = [(LNConnection *)v13 initWithEffectiveBundleIdentifier:v14 appBundleIdentifier:0 processInstanceIdentifier:0 appIntentsEnabledOnly:0 userIdentity:0 error:&v22];
  v16 = v22;

  if (v15)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __117__LNExtensionMediator_getXPCListenerEndpointForBundleIdentifier_extensionMediatorBundleIdentifier_completionHandler___block_invoke;
    v19[3] = &unk_1E74B1838;
    v21 = v10;
    v20 = v8;
    [(LNConnection *)v15 getListenerEndpointForBundleIdentifier:v20 action:0 completionHandler:v19];
  }

  else
  {
    v17 = getLNLogCategoryExtensionMediator();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = v9;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Error fetching XPC listener endpoint from an internal mediator (%@) for %@: %@", buf, 0x20u);
    }

    (*(v10 + 2))(v10, 0, 0, v16);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __117__LNExtensionMediator_getXPCListenerEndpointForBundleIdentifier_extensionMediatorBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  v2 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "Successfully fetched XPC listener endpoint for %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)getWidgetKitXPCListenerEndpointForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_INFO, "Fetching an XPC listener endpoint from Chrono for %{public}@", &buf, 0xCu);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v8 = getCHSAppIntentsXPCListenerEndpointProviderClass_softClass;
  v22 = getCHSAppIntentsXPCListenerEndpointProviderClass_softClass;
  if (!getCHSAppIntentsXPCListenerEndpointProviderClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v24 = __getCHSAppIntentsXPCListenerEndpointProviderClass_block_invoke;
    v25 = &unk_1E74B26D0;
    v26 = &v19;
    __getCHSAppIntentsXPCListenerEndpointProviderClass_block_invoke(&buf);
    v8 = v20[3];
  }

  v9 = v8;
  _Block_object_dispose(&v19, 8);
  v10 = [[v8 alloc] initWithBundleIdentifier:v5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__LNExtensionMediator_getWidgetKitXPCListenerEndpointForBundleIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E74B2230;
  v17 = v10;
  v18 = v6;
  v16 = v5;
  v11 = v10;
  v12 = v6;
  v13 = v5;
  [v11 getAppIntentsXPCListenerEndpointWithCompletion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __92__LNExtensionMediator_getWidgetKitXPCListenerEndpointForBundleIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
    v7 = getLNLogCategoryExtensionMediator();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_INFO, "Successfully fetched XPC listener endpoint for %{public}@", &v12, 0xCu);
    }
  }

  else
  {
    v9 = getLNLogCategoryExtensionMediator();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Error fetching XPC listener endpoint for %{public}@: %@", &v12, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)getConnectionHostInterfaceForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E74B1810;
  v12 = v6;
  v13 = v7;
  v14 = a1;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v77[1] = *MEMORY[0x1E69E9840];
  v2 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v72 = v3;
  }

  v4 = objc_alloc(MEMORY[0x1E69635D0]);
  v5 = *(a1 + 32);
  v70 = 0;
  v6 = [v4 initWithBundleIdentifier:v5 error:&v70];
  v7 = v70;
  if (v6)
  {
    v8 = [v6 entitlements];
    v9 = [v8 objectForKey:@"com.apple.private.appintents.extension-mediator.bundle-identifier" ofClass:objc_opt_class()];

    if (v9)
    {
      v10 = *(a1 + 32);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_14;
      v68[3] = &unk_1E74B1798;
      v11 = *(a1 + 48);
      v69 = *(a1 + 40);
      [v11 getXPCListenerEndpointForBundleIdentifier:v10 extensionMediatorBundleIdentifier:v9 completionHandler:v68];

LABEL_33:
      goto LABEL_34;
    }

    v66 = v7;
    v67 = 0;
    v12 = [LNExtensionHostConfigurator extensionProcessWithExtensionRecord:v6 extensionType:&v67 error:&v66];
    v13 = v66;

    if (v67 == 1)
    {
      v14 = *(a1 + 32);
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_2;
      v64[3] = &unk_1E74B1798;
      v15 = *(a1 + 48);
      v65 = *(a1 + 40);
      [v15 getWidgetKitXPCListenerEndpointForBundleIdentifier:v14 completionHandler:v64];

LABEL_32:
      v7 = v13;
      goto LABEL_33;
    }

    if (v12)
    {
      v16 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:v12];
      v63 = 0;
      v17 = [MEMORY[0x1E69C75D0] handleForPredicate:v16 error:&v63];
      v18 = v63;

      if (v18)
      {
        (*(*(a1 + 40) + 16))();
        v13 = v18;
      }

      else
      {
        v20 = @"com.apple.siri";
        v21 = @"AppIntentsExtensionConnection";
        v22 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.siri" name:@"AppIntentsExtensionConnection"];
        v77[0] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];

        v24 = objc_alloc(MEMORY[0x1E69C7548]);
        v25 = [MEMORY[0x1E69C7640] targetWithProcessIdentifier:v17];
        v44 = v23;
        v26 = [v24 initWithExplanation:@"Extension connection" target:v25 attributes:v23];

        v62 = 0;
        v45 = v26;
        LOBYTE(v23) = [v26 acquireWithError:&v62];
        v13 = v62;
        v27 = getLNLogCategoryExtensionMediator();
        v28 = v27;
        if (v23)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v72 = @"com.apple.siri";
            v73 = 2114;
            v74 = @"AppIntentsExtensionConnection";
            _os_log_impl(&dword_19763D000, v28, OS_LOG_TYPE_INFO, "Acquired assertion %{public}@:%{public}@", buf, 0x16u);
          }

          v61 = v13;
          v29 = [v12 newXPCConnectionWithError:&v61];
          v30 = v61;

          if (v30)
          {
            [v45 invalidate];
            v31 = getLNLogCategoryExtensionMediator();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v72 = @"com.apple.siri";
              v73 = 2114;
              v74 = @"AppIntentsExtensionConnection";
              _os_log_impl(&dword_19763D000, v31, OS_LOG_TYPE_INFO, "Invalidated assertion %{public}@:%{public}@", buf, 0x16u);
            }

            (*(*(a1 + 40) + 16))();
            v32 = v45;
          }

          else
          {
            v33 = *(a1 + 32);
            v34 = LNConnectionHostXPCInterface();
            [v29 ln_configureWithBundleIdentifier:v33 interface:v34];

            [v29 setInterruptionHandler:&__block_literal_global_9508];
            [v29 setInvalidationHandler:&__block_literal_global_27_9509];
            [v29 resume];
            v35 = getLNLogCategoryExtensionMediator();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = *(a1 + 32);
              *buf = 138543362;
              v72 = v36;
            }

            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_28;
            v56[3] = &unk_1E74B23B0;
            v32 = v45;
            v37 = v45;
            v57 = v37;
            v38 = @"com.apple.siri";
            v58 = @"com.apple.siri";
            v39 = @"AppIntentsExtensionConnection";
            v59 = @"AppIntentsExtensionConnection";
            v60 = *(a1 + 40);
            v40 = [v29 synchronousRemoteObjectProxyWithErrorHandler:v56];
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_30;
            v46[3] = &unk_1E74B17E8;
            v55 = *(a1 + 48);
            v47 = *(a1 + 32);
            v48 = v12;
            v49 = v29;
            v50 = v37;
            v41 = @"com.apple.siri";
            v51 = @"com.apple.siri";
            v42 = @"AppIntentsExtensionConnection";
            v52 = @"AppIntentsExtensionConnection";
            v54 = *(a1 + 40);
            v53 = v16;
            [v40 getListenerEndpointWithCompletionHandler:v46];

            v30 = 0;
          }

          v13 = v30;
        }

        else
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v72 = @"com.apple.siri";
            v73 = 2114;
            v74 = @"AppIntentsExtensionConnection";
            v75 = 2114;
            v76 = v13;
            _os_log_impl(&dword_19763D000, v28, OS_LOG_TYPE_ERROR, "Failed to acquire assertion %{public}@:%{public}@: %{public}@", buf, 0x20u);
          }

          [v45 invalidate];
          (*(*(a1 + 40) + 16))();
        }
      }
    }

    else
    {
      v19 = *(a1 + 40);
      if (v13)
      {
        (*(v19 + 16))(v19, 0, 0, 0, v13);
        goto LABEL_32;
      }

      v16 = LNConnectionErrorWithCode(1014);
      (*(v19 + 16))(v19, 0, 0, 0, v16);
    }

    goto LABEL_32;
  }

  (*(*(a1 + 40) + 16))();
LABEL_34:

  v43 = *MEMORY[0x1E69E9840];
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Unable to get synchronousRemoteObjectProxy, error: %{public}@", &v9, 0xCu);
  }

  [*(a1 + 32) invalidate];
  v5 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "Invalidated assertion %{public}@:%{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_30(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [a1[12] sharedQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_2_31;
  v17[3] = &unk_1E74B17C0;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v18 = v14;
  v19 = v13;
  v20 = a1[8];
  v21 = a1[9];
  v25 = a1[11];
  v22 = a1[10];
  v23 = v6;
  v24 = v7;
  v15 = v7;
  v16 = v6;
  dispatch_async(v8, v17);
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_2_31(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    LODWORD(v16[0]) = 138543362;
    *(v16 + 4) = v3;
    _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "Successfully fetched XPC listener endpoint for %{public}@", v16, 0xCu);
  }

  [*(a1 + 40) invalidate];
  [*(a1 + 48) invalidate];
  v4 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    LODWORD(v16[0]) = 138543362;
    *(v16 + 4) = v5;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Invalidated extension process and XPC connection for %{public}@", v16, 0xCu);
  }

  [*(a1 + 56) invalidate];
  v6 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    LODWORD(v16[0]) = 138543618;
    *(v16 + 4) = v7;
    WORD6(v16[0]) = 2114;
    *(v16 + 14) = v8;
    _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_INFO, "Invalidated assertion %{public}@:%{public}@", v16, 0x16u);
  }

  v9 = *(a1 + 104);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = MEMORY[0x1E695DEF0];
  v13 = *(a1 + 40);
  if (v13)
  {
    [v13 auditToken];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v14 = [v12 if_dataWithAuditToken:v16];
  (*(v9 + 16))(v9, v10, v11, v14, *(a1 + 96));

  v15 = *MEMORY[0x1E69E9840];
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_25()
{
  v0 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_19763D000, v0, OS_LOG_TYPE_INFO, "Extension Mediator XPC connection has been invalidated", v1, 2u);
  }
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_23()
{
  v0 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_19763D000, v0, OS_LOG_TYPE_INFO, "Extension Mediator XPC connection has been interrupted", v1, 2u);
  }
}

@end