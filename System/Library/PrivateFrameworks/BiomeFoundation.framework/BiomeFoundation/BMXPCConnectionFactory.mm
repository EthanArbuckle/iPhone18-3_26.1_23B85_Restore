@interface BMXPCConnectionFactory
+ (BMXPCConnectionFactoryDelegate)delegate;
+ (id)connectionToMachService:(unint64_t)service endpoint:(id)endpoint useCase:(id)case;
+ (id)defaultQueue;
+ (id)globalStrongConnectionCache;
+ (id)globalWeakConnectionCache;
+ (id)remoteObjectInterfaceForMachServiceType:(unint64_t)type;
+ (void)_configureConnection:(id)connection serviceType:(unint64_t)type useCase:(id)case;
- (BMXPCConnectionFactory)initWithType:(unint64_t)type domain:(unint64_t)domain user:(unsigned int)user useCase:(id)case options:(unsigned __int8)options;
- (BMXPCConnectionFactoryDelegate)delegate;
- (BOOL)connectionIsCrossUser;
- (BOOL)currentProcessCanDirectlyConnectCrossUser;
- (id)_legacyUserDomainConnection;
- (id)_newConnection;
- (id)_proxyConnectionThroughCoreDuet;
- (id)_regularConnection;
- (id)_requestConnectionFromCaller;
- (id)coreDuetMachService;
- (id)machServiceName;
- (id)makeConnectionWrapper;
- (unint64_t)_connectionFlags;
- (unsigned)user;
- (void)_configureConnection:(id)connection;
- (void)_newConnection;
@end

@implementation BMXPCConnectionFactory

- (id)makeConnectionWrapper
{
  v3 = [[_BMXPCConnectionCacheKey alloc] initWithServiceType:self->_serviceType domain:self->_domain user:self->_user useCase:self->_useCase flags:[(BMXPCConnectionFactory *)self _connectionFlags]];
  user = self->_user;
  if (user == getuid() && (-[BMXPCConnectionFactory delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 shouldCacheConnectionToMachService:self->_serviceType domain:self->_domain useCase:self->_useCase], v5, v6))
  {
    globalStrongConnectionCache = [objc_opt_class() globalStrongConnectionCache];
    v8 = globalStrongConnectionCache;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __47__BMXPCConnectionFactory_makeConnectionWrapper__block_invoke;
    v20 = &unk_1E796B728;
    selfCopy = self;
    v9 = &v17;
  }

  else
  {
    globalStrongConnectionCache = [objc_opt_class() globalWeakConnectionCache];
    v8 = globalStrongConnectionCache;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __47__BMXPCConnectionFactory_makeConnectionWrapper__block_invoke_2;
    v15 = &unk_1E796B728;
    selfCopy2 = self;
    v9 = &v12;
  }

  v10 = [globalStrongConnectionCache cachedObjectWithKey:v3 missHandler:{v9, v12, v13, v14, v15, selfCopy2, v17, v18, v19, v20, selfCopy}];

  return v10;
}

- (unint64_t)_connectionFlags
{
  v3 = +[BMProcess current];
  if ([v3 processType] == 4 || objc_msgSend(v3, "processType") == 5)
  {
    v4 = 1;
    goto LABEL_4;
  }

  if ([(NSString *)self->_useCase isEqual:@"__coreduet__"])
  {
    machServiceName = [(BMXPCConnectionFactory *)self machServiceName];
    if ([v3 canPerformGlobalMachLookup:machServiceName report:1])
    {

LABEL_12:
      v4 = 0;
      goto LABEL_4;
    }

    coreDuetMachService = [(BMXPCConnectionFactory *)self coreDuetMachService];
    v9 = [v3 canPerformGlobalMachLookup:coreDuetMachService report:0];

    v10 = (v9 & 1) == 0;
    v11 = 2;
  }

  else
  {
    if (self->_serviceType > 1 || (self->_options & 1) == 0)
    {
      goto LABEL_12;
    }

    machServiceName2 = [(BMXPCConnectionFactory *)self machServiceName];
    if ([v3 canPerformGlobalMachLookup:machServiceName2 report:1])
    {

      goto LABEL_12;
    }

    v12 = [v3 canPerformGlobalMachLookup:@"com.apple.biome.PublicStreamAccessService" report:0];

    v10 = v12 == 0;
    v11 = 0x10000;
  }

  if (v10)
  {
    v4 = 0;
  }

  else
  {
    v4 = v11;
  }

LABEL_4:

  return v4;
}

+ (id)globalWeakConnectionCache
{
  if (globalWeakConnectionCache_onceToken != -1)
  {
    +[BMXPCConnectionFactory globalWeakConnectionCache];
  }

  v3 = globalWeakConnectionCache_cache;

  return v3;
}

id __47__BMXPCConnectionFactory_makeConnectionWrapper__block_invoke_2(uint64_t a1)
{
  v2 = [BMXPCConnectionWrapper alloc];
  v3 = [*(a1 + 32) _newConnection];
  v4 = [(BMXPCConnectionWrapper *)v2 _initWithConnection:v3];

  return v4;
}

- (id)_newConnection
{
  v3 = __biome_log_for_category(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BMXPCConnectionFactory *)self _newConnection];
  }

  _connectionFlags = [(BMXPCConnectionFactory *)self _connectionFlags];
  if (_connectionFlags)
  {
    [(BMXPCConnectionFactory *)self _requestConnectionFromCaller];
    return objc_claimAutoreleasedReturnValue();
  }

  else if ((_connectionFlags & 2) != 0)
  {
    [(BMXPCConnectionFactory *)self _proxyConnectionThroughCoreDuet];
    return objc_claimAutoreleasedReturnValue();
  }

  else
  {
    if ((_connectionFlags & 0x10000) != 0)
    {
      [(BMXPCConnectionFactory *)self _legacyUserDomainConnection];
    }

    else
    {
      [(BMXPCConnectionFactory *)self _regularConnection];
    }

    return objc_claimAutoreleasedReturnValue();
  }
}

+ (BMXPCConnectionFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&_delegate);

  return WeakRetained;
}

- (id)_regularConnection
{
  v3 = MEMORY[0x1E696B0B8];
  machServiceName = [(BMXPCConnectionFactory *)self machServiceName];
  defaultQueue = [objc_opt_class() defaultQueue];
  v6 = [v3 bm_connectionWithMachServiceName:machServiceName queue:defaultQueue options:4096];

  [(BMXPCConnectionFactory *)self _configureConnection:v6];

  return v6;
}

- (id)machServiceName
{
  serviceType = self->_serviceType;
  if (serviceType < 2)
  {
    v3 = &BMMachServiceNameSystemAccessService;
    if (self->_domain != 1)
    {
      v3 = &BMMachServiceNameUserAccessService;
    }

    goto LABEL_10;
  }

  if (serviceType != 2)
  {
    v7 = 0;
    goto LABEL_12;
  }

  if (self->_domain || (+[BMProcess current](BMProcess, "current"), v4 = objc_claimAutoreleasedReturnValue(), v5 = @"com.apple.biome.compute.source.user", v6 = [v4 canPerformGlobalMachLookup:@"com.apple.biome.compute.source.user" report:1], v4, (v6 & 1) == 0))
  {
    v3 = &BMMachServiceNameSystemComputeSourceService;
LABEL_10:
    v5 = *v3;
  }

  v7 = v5;
LABEL_12:

  return v7;
}

+ (id)defaultQueue
{
  if (defaultQueue_onceToken != -1)
  {
    +[BMXPCConnectionFactory defaultQueue];
  }

  v3 = defaultQueue_queue;

  return v3;
}

- (BMXPCConnectionFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_requestConnectionFromCaller
{
  v3 = _os_activity_create(&dword_1AC15D000, "Proxying connection through caller", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if (!currentConnection)
  {
    v5 = __biome_log_for_category(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(BMXPCConnectionFactory *)v5 _requestConnectionFromCaller];
    }
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_93];
  domain = self->_domain;
  user = [(BMXPCConnectionFactory *)self user];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__BMXPCConnectionFactory__requestConnectionFromCaller__block_invoke_94;
  v13[3] = &unk_1E796B770;
  v13[4] = &v14;
  [v6 requestBiomeEndpointForAppScopedService:domain user:user reply:v13];

  v9 = v15[5];
  if (v9)
  {
    v10 = MEMORY[0x1E696B0B8];
    defaultQueue = [objc_opt_class() defaultQueue];
    v9 = [v10 bm_connectionWithListenerEndpoint:v9 queue:defaultQueue];

    [(BMXPCConnectionFactory *)self _configureConnection:v9];
  }

  _Block_object_dispose(&v14, 8);

  os_activity_scope_leave(&state);

  return v9;
}

- (unsigned)user
{
  if (self->_domain == 1)
  {
    return 0;
  }

  else
  {
    return self->_user;
  }
}

uint64_t __51__BMXPCConnectionFactory_globalWeakConnectionCache__block_invoke()
{
  v0 = +[BMCache weakCache];
  v1 = globalWeakConnectionCache_cache;
  globalWeakConnectionCache_cache = v0;

  v2 = globalWeakConnectionCache_cache;

  return [v2 setIsExpiredBlock:&__block_literal_global_6];
}

void __38__BMXPCConnectionFactory_defaultQueue__block_invoke()
{
  attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_get_global_queue(21, 2uLL);
  v1 = dispatch_queue_create_with_target_V2("com.apple.Biome.ResponseQueue", attr, v0);
  v2 = defaultQueue_queue;
  defaultQueue_queue = v1;
}

void __54__BMXPCConnectionFactory__requestConnectionFromCaller__block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __biome_log_for_category(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__BMXPCConnectionFactory__requestConnectionFromCaller__block_invoke_94_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

+ (id)connectionToMachService:(unint64_t)service endpoint:(id)endpoint useCase:(id)case
{
  v7 = MEMORY[0x1E696B0B8];
  caseCopy = case;
  v9 = [v7 bm_connectionWithListenerEndpoint:endpoint queue:0];
  [BMXPCConnectionFactory _configureConnection:v9 serviceType:service useCase:caseCopy];

  v10 = [[BMXPCConnectionWrapper alloc] _initWithConnection:v9];

  return v10;
}

- (BMXPCConnectionFactory)initWithType:(unint64_t)type domain:(unint64_t)domain user:(unsigned int)user useCase:(id)case options:(unsigned __int8)options
{
  caseCopy = case;
  v17.receiver = self;
  v17.super_class = BMXPCConnectionFactory;
  v14 = [(BMXPCConnectionFactory *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_serviceType = type;
    v14->_domain = domain;
    v14->_user = user;
    objc_storeStrong(&v14->_useCase, case);
    v15->_options = options;
  }

  return v15;
}

+ (id)globalStrongConnectionCache
{
  if (globalStrongConnectionCache_onceToken != -1)
  {
    +[BMXPCConnectionFactory globalStrongConnectionCache];
  }

  v3 = globalStrongConnectionCache_cache;

  return v3;
}

uint64_t __53__BMXPCConnectionFactory_globalStrongConnectionCache__block_invoke()
{
  v0 = +[BMCache strongCache];
  v1 = globalStrongConnectionCache_cache;
  globalStrongConnectionCache_cache = v0;

  v2 = globalStrongConnectionCache_cache;

  return [v2 setIsExpiredBlock:&__block_literal_global_10];
}

id __47__BMXPCConnectionFactory_makeConnectionWrapper__block_invoke(uint64_t a1)
{
  v2 = [BMXPCConnectionWrapper alloc];
  v3 = [*(a1 + 32) _newConnection];
  v4 = [(BMXPCConnectionWrapper *)v2 _initWithConnection:v3];

  return v4;
}

- (id)coreDuetMachService
{
  v2 = get_DKMachServiceName();

  return v2;
}

+ (id)remoteObjectInterfaceForMachServiceType:(unint64_t)type
{
  if (!type)
  {
    v3 = &protocolRef_BMAccessServer;
LABEL_10:
    v4 = *v3;
    goto LABEL_12;
  }

  if (type != 2)
  {
    if (type != 1)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v3 = &protocolRef_BMFileServer;
    goto LABEL_10;
  }

  v4 = NSProtocolFromString(&cfstr_Bmcomputesourc.isa);
  if (v4)
  {
LABEL_12:
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v4];
    goto LABEL_13;
  }

  v4 = __biome_log_for_category(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [BMXPCConnectionFactory remoteObjectInterfaceForMachServiceType:v4];
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (BOOL)connectionIsCrossUser
{
  if (self->_domain)
  {
    return 0;
  }

  user = self->_user;
  return user != geteuid();
}

- (BOOL)currentProcessCanDirectlyConnectCrossUser
{
  if (!getuid())
  {
    return 1;
  }

  v2 = +[BMProcess current];
  v3 = [v2 BOOLForEntitlement:@"com.apple.private.xpc.launchd.per-user-lookup"];

  return v3;
}

- (id)_proxyConnectionThroughCoreDuet
{
  v3 = _os_activity_create(&dword_1AC15D000, "Proxying connection through CoreDuet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = get_DKMachServiceName();
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v4 options:4096];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v6 = get_DKDaemonInterfaceSymbolLoc_ptr;
  v29 = get_DKDaemonInterfaceSymbolLoc_ptr;
  if (!get_DKDaemonInterfaceSymbolLoc_ptr)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __get_DKDaemonInterfaceSymbolLoc_block_invoke;
    v22 = &unk_1E796AC10;
    v23 = &v26;
    v7 = CoreDuetLibrary();
    v27[3] = dlsym(v7, "_DKDaemonInterface");
    get_DKDaemonInterfaceSymbolLoc_ptr = *(*(v23 + 1) + 24);
    v6 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (v6)
  {
    v8 = v6();
    [v5 setRemoteObjectInterface:v8];

    [v5 resume];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__3;
    v23 = __Block_byref_object_dispose__3;
    v24 = 0;
    v9 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_89];
    v10 = self->_domain == 1;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__BMXPCConnectionFactory__proxyConnectionThroughCoreDuet__block_invoke_90;
    v18[3] = &unk_1E796B770;
    v18[4] = &v19;
    [v9 requestBiomeEndpoint:v10 reply:v18];

    v11 = *(v20 + 40);
    if (v11)
    {
      v12 = MEMORY[0x1E696B0B8];
      defaultQueue = [objc_opt_class() defaultQueue];
      v14 = [v12 bm_connectionWithListenerEndpoint:v11 queue:defaultQueue];

      [(BMXPCConnectionFactory *)self _configureConnection:v14];
      [v5 invalidate];
    }

    else
    {
      [v5 invalidate];
      v14 = 0;
    }

    _Block_object_dispose(&v19, 8);

    os_activity_scope_leave(&state);

    return v14;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSXPCInterface *__softlink__DKDaemonInterface(void)"];
    [currentHandler handleFailureInFunction:v17 file:@"BMXPCConnectionFactory.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

void __57__BMXPCConnectionFactory__proxyConnectionThroughCoreDuet__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __biome_log_for_category(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57__BMXPCConnectionFactory__proxyConnectionThroughCoreDuet__block_invoke_cold_1();
  }
}

void __57__BMXPCConnectionFactory__proxyConnectionThroughCoreDuet__block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __biome_log_for_category(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__BMXPCConnectionFactory__proxyConnectionThroughCoreDuet__block_invoke_90_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __54__BMXPCConnectionFactory__requestConnectionFromCaller__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __biome_log_for_category(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__BMXPCConnectionFactory__requestConnectionFromCaller__block_invoke_cold_1();
  }
}

- (id)_legacyUserDomainConnection
{
  v3 = MEMORY[0x1E696B0B8];
  defaultQueue = [objc_opt_class() defaultQueue];
  v5 = [v3 bm_connectionWithMachServiceName:@"com.apple.biome.PublicStreamAccessService" queue:defaultQueue options:4096];

  [(BMXPCConnectionFactory *)self _configureConnection:v5];

  return v5;
}

- (void)_configureConnection:(id)connection
{
  connectionCopy = connection;
  [objc_opt_class() _configureConnection:connectionCopy serviceType:self->_serviceType useCase:self->_useCase];
}

+ (void)_configureConnection:(id)connection serviceType:(unint64_t)type useCase:(id)case
{
  caseCopy = case;
  connectionCopy = connection;
  v9 = [self remoteObjectInterfaceForMachServiceType:type];
  [connectionCopy setRemoteObjectInterface:v9];

  defaultQueue = [self defaultQueue];
  [connectionCopy _setQueue:defaultQueue];

  [connectionCopy activate];
  [connectionCopy setBm_exportedUseCase:caseCopy];
}

- (void)_newConnection
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = BMStringForServiceDomain(*(self + 16));
  lowercaseString = [v4 lowercaseString];
  v6 = *(self + 8);
  v7 = @"file server";
  if (!v6)
  {
    v7 = @"access server";
  }

  if (v6 == 2)
  {
    v8 = @"compute source server";
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v11 = 138543618;
  v12 = lowercaseString;
  v13 = 2114;
  v14 = v9;
  _os_log_debug_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_DEBUG, "New connection to %{public}@ %{public}@", &v11, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __57__BMXPCConnectionFactory__proxyConnectionThroughCoreDuet__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0(&dword_1AC15D000, v0, v1, "Failed to connect to CoreDuet with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__BMXPCConnectionFactory__proxyConnectionThroughCoreDuet__block_invoke_90_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0(&dword_1AC15D000, v0, v1, "Proxy connection through CoreDuet with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__BMXPCConnectionFactory__requestConnectionFromCaller__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0(&dword_1AC15D000, v0, v1, "Failed to connect to service client with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__BMXPCConnectionFactory__requestConnectionFromCaller__block_invoke_94_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0(&dword_1AC15D000, v0, v1, "Proxy connection through service client with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end