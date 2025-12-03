@interface CacheDeleteRemoteExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (CacheDeleteRemoteExtensionContext)init;
- (void)serviceCallback:(id)callback replyBlock:(id)block;
- (void)serviceCancelPurge:(id)purge;
- (void)serviceNotify:(id)notify replyBlock:(id)block;
- (void)servicePing:(id)ping;
@end

@implementation CacheDeleteRemoteExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_11);
  }

  v3 = qword_1ED76A118;

  return v3;
}

uint64_t __68__CacheDeleteRemoteExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  qword_1ED76A118 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F387C2E0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_1ED76A120 != -1)
  {
    dispatch_once(&qword_1ED76A120, &__block_literal_global_42_0);
  }

  v3 = qword_1ED76A128;

  return v3;
}

uint64_t __70__CacheDeleteRemoteExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  qword_1ED76A128 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F387CF60];

  return MEMORY[0x1EEE66BB8]();
}

- (CacheDeleteRemoteExtensionContext)init
{
  v6.receiver = self;
  v6.super_class = CacheDeleteRemoteExtensionContext;
  v2 = [(CacheDeleteRemoteExtensionContext *)&v6 init];
  if (v2)
  {
    v3 = CDGetLogHandle("client");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "ENTRY", v5, 2u);
    }
  }

  return v2;
}

void __70__CacheDeleteRemoteExtensionContext_servicePurgeable_info_replyBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "result: %@", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEFAULT, "calling completeRequestReturningItems", &v9, 2u);
  }

  v6 = [*(a1 + 32) serviceInfo];
  v7 = [v6 extensionContext];
  [v7 completeRequestReturningItems:0 completionHandler:&__block_literal_global_64_0];

  v8 = *MEMORY[0x1E69E9840];
}

void __70__CacheDeleteRemoteExtensionContext_servicePurgeable_info_replyBlock___block_invoke_61(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __66__CacheDeleteRemoteExtensionContext_servicePurge_info_replyBlock___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "result: %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = [*(a1 + 32) serviceInfo];
  v6 = [v5 extensionContext];
  [v6 completeRequestReturningItems:0 completionHandler:&__block_literal_global_75];

  v7 = *MEMORY[0x1E69E9840];
}

void __66__CacheDeleteRemoteExtensionContext_servicePurge_info_replyBlock___block_invoke_73(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)serviceCancelPurge:(id)purge
{
  purgeCopy = purge;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "cancelPurge", buf, 2u);
  }

  v5 = [CacheDeleteServiceListener cacheDeleteServiceListener:0 options:0];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__CacheDeleteRemoteExtensionContext_serviceCancelPurge___block_invoke;
    v7[3] = &unk_1E7F03218;
    v9 = purgeCopy;
    v8 = v5;
    [v8 serviceCancelPurge:v7];
  }

  else
  {
    v6 = CDGetLogHandle("client");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_ERROR, "No Listener!!", buf, 2u);
    }

    purgeCopy[2](purgeCopy);
  }
}

void __56__CacheDeleteRemoteExtensionContext_serviceCancelPurge___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v3 = [*(a1 + 32) serviceInfo];
  v2 = [v3 extensionContext];
  [v2 completeRequestReturningItems:0 completionHandler:&__block_literal_global_81];
}

void __56__CacheDeleteRemoteExtensionContext_serviceCancelPurge___block_invoke_2(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __69__CacheDeleteRemoteExtensionContext_servicePeriodic_info_replyBlock___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "result: %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = [*(a1 + 32) serviceInfo];
  v6 = [v5 extensionContext];
  [v6 completeRequestReturningItems:0 completionHandler:&__block_literal_global_84];

  v7 = *MEMORY[0x1E69E9840];
}

void __69__CacheDeleteRemoteExtensionContext_servicePeriodic_info_replyBlock___block_invoke_82(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)serviceCallback:(id)callback replyBlock:(id)block
{
  v12 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  blockCopy = block;
  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = callbackCopy;
    _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, "callback, urgency: %@", &v10, 0xCu);
  }

  v8 = [callbackCopy mutableCopy];
  [v8 setObject:@"Unsupported callback" forKeyedSubscript:@"CACHE_DELETE_ERROR"];
  blockCopy[2](blockCopy, v8);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)serviceNotify:(id)notify replyBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  notifyCopy = notify;
  blockCopy = block;
  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = notifyCopy;
    _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, "notify: %@", buf, 0xCu);
  }

  v8 = [CacheDeleteServiceListener cacheDeleteServiceListener:0 options:0];
  if (v8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__CacheDeleteRemoteExtensionContext_serviceNotify_replyBlock___block_invoke;
    v11[3] = &unk_1E7F03218;
    v13 = blockCopy;
    v12 = v8;
    [v12 serviceNotify:notifyCopy replyBlock:v11];
  }

  else
  {
    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "No Listener!!", buf, 2u);
    }

    blockCopy[2](blockCopy);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __62__CacheDeleteRemoteExtensionContext_serviceNotify_replyBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v3 = [*(a1 + 32) serviceInfo];
  v2 = [v3 extensionContext];
  [v2 completeRequestReturningItems:0 completionHandler:&__block_literal_global_93];
}

void __62__CacheDeleteRemoteExtensionContext_serviceNotify_replyBlock___block_invoke_2(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)servicePing:(id)ping
{
  pingCopy = ping;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "PING", v5, 2u);
  }

  pingCopy[2](pingCopy);
}

@end