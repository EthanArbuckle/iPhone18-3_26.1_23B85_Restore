@interface NPSManager
+ (BOOL)supportsWatch;
- (NPSManager)init;
- (id)connection;
- (void)dealloc;
- (void)invalidate;
- (void)synchronizeNanoDomain:(id)a3 keys:(id)a4 cloudEnabled:(BOOL)a5;
- (void)synchronizeUserDefaultsDomain:(id)a3 keys:(id)a4 container:(id)a5 appGroupContainer:(id)a6 cloudEnabled:(BOOL)a7;
- (void)unsafe_invalidate;
@end

@implementation NPSManager

- (NPSManager)init
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NPSManager;
  v2 = [(NPSManager *)&v10 init];
  if (v2)
  {
    v3 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v2;
      _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.nanoprefsync.NPSManager.%p", v2];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create([v4 UTF8String], v5);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)connection
{
  location[3] = *MEMORY[0x1E69E9840];
  if (NPSShouldRun() && [objc_opt_class() supportsWatch])
  {
    if (!self->_xpcConnection)
    {
      if (connection_onceToken != -1)
      {
        [NPSManager connection];
      }

      v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.nanoprefsync" options:4096];
      xpcConnection = self->_xpcConnection;
      self->_xpcConnection = v3;

      [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:connection_remoteObjectInterface];
      objc_initWeak(location, self);
      [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_70];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __24__NPSManager_connection__block_invoke_71;
      v9[3] = &unk_1E8129680;
      objc_copyWeak(&v10, location);
      [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v9];
      [(NSXPCConnection *)self->_xpcConnection resume];
      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }
  }

  else if (self->_xpcConnection)
  {
    [(NPSManager *)self unsafe_invalidate];
  }

  v5 = self->_xpcConnection;
  if (!v5)
  {
    v6 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[NPSManager connection]";
      _os_log_impl(&dword_1C0D93000, v6, OS_LOG_TYPE_DEFAULT, "%s: Can't get xpcConnection- either there's a daemon failure or the daemon can't be launched because no watches are paired", location, 0xCu);
    }

    v5 = self->_xpcConnection;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
  }

  [(NPSManager *)self unsafe_invalidate];
  v5.receiver = self;
  v5.super_class = NPSManager;
  [(NPSManager *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_invalidate
{
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

void __24__NPSManager_connection__block_invoke()
{
  v0 = MEMORY[0x1E696B0D0];
  v3 = &unk_1F403DC38;
  v1 = [v0 interfaceWithProtocol:v3];
  v2 = connection_remoteObjectInterface;
  connection_remoteObjectInterface = v1;
}

void __24__NPSManager_connection__block_invoke_2()
{
  v0 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C0D93000, v0, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v1, 2u);
  }
}

void __24__NPSManager_connection__block_invoke_71(uint64_t a1)
{
  v2 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C0D93000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__NPSManager_connection__block_invoke_72;
    block[3] = &unk_1E8129518;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__NPSManager_invalidate__block_invoke;
  block[3] = &unk_1E8129518;
  block[4] = self;
  dispatch_async(internalQueue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)synchronizeUserDefaultsDomain:(id)a3 keys:(id)a4 container:(id)a5 appGroupContainer:(id)a6 cloudEnabled:(BOOL)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    _os_log_impl(&dword_1C0D93000, v16, OS_LOG_TYPE_DEFAULT, "synchronizeUserDefaultsDomain: (%@); keys: (%@); container: (%@); appGroupContainer: (%@)", buf, 0x2Au);
  }

  internalQueue = self->_internalQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __90__NPSManager_synchronizeUserDefaultsDomain_keys_container_appGroupContainer_cloudEnabled___block_invoke;
  v23[3] = &unk_1E81296D0;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = a7;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  dispatch_sync(internalQueue, v23);

  v22 = *MEMORY[0x1E69E9840];
}

void __90__NPSManager_synchronizeUserDefaultsDomain_keys_container_appGroupContainer_cloudEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __90__NPSManager_synchronizeUserDefaultsDomain_keys_container_appGroupContainer_cloudEnabled___block_invoke_2;
  v13 = &unk_1E81296A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v14 = v8;
  v15 = v7;
  v9 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&v10];
  [v9 synchronizeUserDefaultsDomain:*(a1 + 40) keys:*(a1 + 48) container:*(a1 + 56) appGroupContainer:*(a1 + 64) cloudEnabled:{*(a1 + 72), v10, v11, v12, v13}];
}

void __90__NPSManager_synchronizeUserDefaultsDomain_keys_container_appGroupContainer_cloudEnabled___block_invoke_2(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    v10 = 138413314;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_1C0D93000, v4, OS_LOG_TYPE_DEFAULT, "domain: (%@); keys: (%@); container: (%@); appGroupContainer: (%@) failed with error %@", &v10, 0x34u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)synchronizeNanoDomain:(id)a3 keys:(id)a4 cloudEnabled:(BOOL)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[NPSManager synchronizeNanoDomain:keys:cloudEnabled:]";
    v21 = 2114;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "%s: (%{public}@); keys: (%@)", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__NPSManager_synchronizeNanoDomain_keys_cloudEnabled___block_invoke;
  v15[3] = &unk_1E8129720;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = a5;
  v12 = v9;
  v13 = v8;
  dispatch_sync(internalQueue, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void __54__NPSManager_synchronizeNanoDomain_keys_cloudEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __54__NPSManager_synchronizeNanoDomain_keys_cloudEnabled___block_invoke_2;
  v7 = &unk_1E81296F8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&v4];
  [v3 synchronizeNanoDomain:*(a1 + 40) keys:*(a1 + 48) cloudEnabled:{*(a1 + 56), v4, v5, v6, v7}];
}

void __54__NPSManager_synchronizeNanoDomain_keys_cloudEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C0D93000, v4, OS_LOG_TYPE_DEFAULT, "synchronizeNanoDomain: (%@); keys: (%@) failed with error %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (BOOL)supportsWatch
{
  if (supportsWatch_onceToken != -1)
  {
    +[NPSManager supportsWatch];
  }

  return supportsWatch_supportsWatch;
}

void __27__NPSManager_supportsWatch__block_invoke()
{
  if (MGGetBoolAnswer())
  {
    v1 = MGGetStringAnswer();
    if ([v1 isEqualToString:@"Watch"])
    {
      v0 = 1;
    }

    else
    {
      v0 = MGGetBoolAnswer();
    }

    supportsWatch_supportsWatch = v0;
  }
}

@end