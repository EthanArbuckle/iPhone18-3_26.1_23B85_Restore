@interface FBServiceFacilityServer
+ (id)sharedInstance;
+ (id)sharedInstanceDomain;
- (BOOL)_lock_areFacilityPrerequisitesSatisfied:(id)satisfied;
- (FBServiceFacilityServer)init;
- (id)_initWithDomain:(id)domain;
- (void)_facilityQueue_facility:(id)queue_facility handleMessage:(id)message client:(id)client;
- (void)_lock_evaluateSuspendedFacility:(id)facility;
- (void)addFacility:(id)facility;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)noteMilestoneReached:(id)reached;
- (void)removeFacility:(id)facility;
@end

@implementation FBServiceFacilityServer

+ (id)sharedInstanceDomain
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__FBServiceFacilityServer_sharedInstanceDomain__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (sharedInstanceDomain_onceToken != -1)
  {
    dispatch_once(&sharedInstanceDomain_onceToken, v4);
  }

  v2 = sharedInstanceDomain___domain;

  return v2;
}

+ (id)sharedInstance
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__FBServiceFacilityServer_sharedInstance__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, v4);
  }

  v2 = sharedInstance___instance_0;

  return v2;
}

void __41__FBServiceFacilityServer_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = +[FBServiceFacilityServer sharedInstanceDomain];
  if (!v2)
  {
    __41__FBServiceFacilityServer_sharedInstance__block_invoke_cold_1(a1);
  }

  v5 = v2;
  v3 = [[FBServiceFacilityServer alloc] _initWithDomain:v2];
  v4 = sharedInstance___instance_0;
  sharedInstance___instance_0 = v3;
}

void __47__FBServiceFacilityServer_sharedInstanceDomain__block_invoke(uint64_t a1)
{
  v10 = [MEMORY[0x1E698F508] bootstrapConfiguration];
  v2 = [MEMORY[0x1E699FCB0] identifier];
  v3 = [v10 domainsContainingServiceIdentifier:v2];

  if ([v3 count])
  {
    if ([v3 count] != 1)
    {
      __47__FBServiceFacilityServer_sharedInstanceDomain__block_invoke_cold_1(v3, a1);
    }

    v4 = [v3 anyObject];
    v5 = sharedInstanceDomain___domain;
    sharedInstanceDomain___domain = v4;
  }

  v6 = [MEMORY[0x1E698E6D0] environmentAliases];
  v7 = [MEMORY[0x1E698F498] defaultShellMachName];
  v8 = [v6 resolveMachService:v7];
  v9 = [v10 domainForMachName:v8];

  if (v9 && v9 != sharedInstanceDomain___domain)
  {
    __47__FBServiceFacilityServer_sharedInstanceDomain__block_invoke_cold_2(a1);
  }
}

- (FBServiceFacilityServer)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBServiceFacilityServer"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"FBServiceFacilityServer.m";
    v17 = 1024;
    v18 = 116;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithDomain:(id)domain
{
  domainCopy = domain;
  if (!domainCopy)
  {
    [FBServiceFacilityServer _initWithDomain:a2];
  }

  v7 = domainCopy;
  v25.receiver = self;
  v25.super_class = FBServiceFacilityServer;
  v8 = [(FBServiceFacilityServer *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_domain, domain);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_pendingConnects = v9->_lock_pendingConnects;
    v9->_lock_pendingConnects = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_completedMilestones = v9->_lock_completedMilestones;
    v9->_lock_completedMilestones = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_facilitiesByIdentifier = v9->_lock_facilitiesByIdentifier;
    v9->_lock_facilitiesByIdentifier = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_suspendedFacilitiesByIdentifier = v9->_lock_suspendedFacilitiesByIdentifier;
    v9->_lock_suspendedFacilitiesByIdentifier = v16;

    v18 = MEMORY[0x1E698F4B8];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __43__FBServiceFacilityServer__initWithDomain___block_invoke;
    v23[3] = &unk_1E783B740;
    v19 = v9;
    v24 = v19;
    v20 = [v18 listenerWithConfigurator:v23];
    serviceListener = v19->_serviceListener;
    v19->_serviceListener = v20;

    FBSSetServiceFacilityManager();
  }

  return v9;
}

void __43__FBServiceFacilityServer__initWithDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v6 = a2;
  v4 = [v3 identifier];
  [v6 setDomain:v4];

  v5 = [MEMORY[0x1E699FCB0] identifier];
  [v6 setService:v5];

  [v6 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this is a singleton, yo"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FBServiceFacilityServer dealloc]"];
    v4 = 138544130;
    v5 = v3;
    v6 = 2114;
    v7 = @"FBServiceFacilityServer.m";
    v8 = 1024;
    v9 = 142;
    v10 = 2114;
    v11 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v4, 0x26u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  contextCopy = context;
  v9 = +[FBProcessManager sharedInstance];
  remoteToken = [connectionCopy remoteToken];
  v11 = remoteToken;
  if (remoteToken)
  {
    [remoteToken realToken];
  }

  else
  {
    memset(v31, 0, sizeof(v31));
  }

  v12 = [v9 registerProcessForAuditToken:v31];

  os_unfair_lock_lock(&self->_lock);
  v13 = [contextCopy decodeStringForKey:*MEMORY[0x1E699F9E0]];

  if (v13 && ([(NSMutableDictionary *)self->_lock_facilitiesByIdentifier objectForKey:v13], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    v16 = [FBServiceFacilityServerClientHandle alloc];
    identifier = [v15 identifier];
    v18 = [(FBServiceFacilityServerClientHandle *)v16 initWithFacilityID:identifier connection:connectionCopy];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __69__FBServiceFacilityServer_listener_didReceiveConnection_withContext___block_invoke;
    v28[3] = &unk_1E783B7B8;
    v28[4] = self;
    v19 = v15;
    v29 = v19;
    v20 = v18;
    v30 = v20;
    [connectionCopy _configureConnection:v28];
    if ([(FBServiceFacilityServer *)self _lock_areFacilityPrerequisitesSatisfied:v19])
    {
      [connectionCopy activate];
    }

    else
    {
      lock_pendingConnects = self->_lock_pendingConnects;
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __69__FBServiceFacilityServer_listener_didReceiveConnection_withContext___block_invoke_4;
      v26 = &unk_1E783B580;
      v27 = connectionCopy;
      v22 = [_FBServiceFacilityServerPendingConnection pendingConnectionToFacility:v19 completion:&v23];
      [(NSMutableSet *)lock_pendingConnects addObject:v22, v23, v24, v25, v26];
    }
  }

  else
  {
    [connectionCopy invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __69__FBServiceFacilityServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__FBServiceFacilityServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v10[3] = &unk_1E783B768;
  v4 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v4;
  v12 = *(a1 + 48);
  v5 = a2;
  [v5 setMessageHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__FBServiceFacilityServer_listener_didReceiveConnection_withContext___block_invoke_3;
  v7[3] = &unk_1E783B790;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v5 setErrorHandler:v7];
  v6 = [*(a1 + 40) queue];
  [v5 setQueue:v6];
}

void __69__FBServiceFacilityServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 queue_clientDidDisconnect:v3];
  [v4 invalidate];
}

- (void)addFacility:(id)facility
{
  v19 = *MEMORY[0x1E69E9840];
  facilityCopy = facility;
  identifier = [facilityCopy identifier];
  if (!identifier)
  {
    [FBServiceFacilityServer addFacility:a2];
  }

  v7 = identifier;
  queue = [facilityCopy queue];

  if (!queue)
  {
    [FBServiceFacilityServer addFacility:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_lock_facilitiesByIdentifier objectForKey:v7];

  if (v9)
  {
    [(FBServiceFacilityServer *)v7 addFacility:a2];
  }

  v10 = FBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    succinctDescription = [facilityCopy succinctDescription];
    v15 = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = succinctDescription;
    _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding facility: %{public}@", &v15, 0x16u);
  }

  [(NSMutableDictionary *)self->_lock_facilitiesByIdentifier setObject:facilityCopy forKey:v7];
  [(NSMutableDictionary *)self->_lock_suspendedFacilitiesByIdentifier setObject:facilityCopy forKey:v7];
  [(FBServiceFacilityServer *)self _lock_evaluateSuspendedFacility:facilityCopy];
  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeFacility:(id)facility
{
  v15 = *MEMORY[0x1E69E9840];
  facilityCopy = facility;
  identifier = [facilityCopy identifier];
  if (identifier)
  {
    v6 = FBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      succinctDescription = [facilityCopy succinctDescription];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = succinctDescription;
      _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing facility: %{public}@", &v11, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_lock_facilitiesByIdentifier removeObjectForKey:identifier];
    [(NSMutableDictionary *)self->_lock_suspendedFacilitiesByIdentifier removeObjectForKey:identifier];
    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)noteMilestoneReached:(id)reached
{
  v23 = *MEMORY[0x1E69E9840];
  reachedCopy = reached;
  v5 = FBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v20 = v7;
    v21 = 2114;
    v22 = reachedCopy;
    _os_log_impl(&dword_1A89DD000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Milestone reached: %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_completedMilestones addObject:reachedCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_lock_suspendedFacilitiesByIdentifier allValues];
  v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        [(FBServiceFacilityServer *)self _lock_evaluateSuspendedFacility:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_facilityQueue_facility:(id)queue_facility handleMessage:(id)message client:(id)client
{
  v30 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  clientCopy = client;
  v9 = *MEMORY[0x1E699F9E8];
  queue_facilityCopy = queue_facility;
  v11 = [messageCopy decodeInt64ForKey:v9];
  if (v11 == 0x636F6E6E656374)
  {
    v12 = FBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      prettyProcessDescription = [clientCopy prettyProcessDescription];
      facilityID = [clientCopy facilityID];
      v24 = 138543874;
      v25 = v14;
      v26 = 2114;
      v27 = prettyProcessDescription;
      v28 = 2114;
      v29 = facilityID;
      _os_log_impl(&dword_1A89DD000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Client %{public}@ connected to service %{public}@", &v24, 0x20u);
    }

    createReply = [messageCopy createReply];
    v18 = [MEMORY[0x1E699FCF8] messageWithBSXPCMessage:messageCopy ownReply:0];
    v19 = [queue_facilityCopy queue_clientDidConnect:clientCopy withMessage:v18];

    [createReply encodeBool:v19 forKey:*MEMORY[0x1E699F9F0]];
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = @"Connection rejected by service facility";
    }

    [createReply encodeObject:v20 forKey:*MEMORY[0x1E699F9D8]];
    [createReply send];
    if ((v19 & 1) == 0)
    {
      [clientCopy invalidate];
    }
  }

  else
  {
    v21 = v11;
    v22 = [MEMORY[0x1E699FCF8] messageWithBSXPCMessage:messageCopy ownReply:1];
    [queue_facilityCopy queue_handleMessage:v22 withType:v21 fromClient:clientCopy];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)_lock_areFacilityPrerequisitesSatisfied:(id)satisfied
{
  satisfiedCopy = satisfied;
  os_unfair_lock_assert_owner(&self->_lock);
  _prerequisiteMilestones = [satisfiedCopy _prerequisiteMilestones];

  if (_prerequisiteMilestones && [_prerequisiteMilestones count])
  {
    v6 = [_prerequisiteMilestones isSubsetOfSet:self->_lock_completedMilestones];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_lock_evaluateSuspendedFacility:(id)facility
{
  v29 = *MEMORY[0x1E69E9840];
  facilityCopy = facility;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(FBServiceFacilityServer *)self _lock_areFacilityPrerequisitesSatisfied:facilityCopy])
  {
    v5 = FBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      identifier = [facilityCopy identifier];
      *buf = 138543618;
      v26 = v7;
      v27 = 2114;
      v28 = identifier;
      _os_log_impl(&dword_1A89DD000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting facility: %{public}@", buf, 0x16u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allObjects = [(NSMutableSet *)self->_lock_pendingConnects allObjects];
    v10 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(allObjects);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          facility = [v14 facility];

          if (facility == facilityCopy)
          {
            completion = [v14 completion];
            completion[2]();

            [(NSMutableSet *)self->_lock_pendingConnects removeObject:v14];
          }
        }

        v11 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    lock_suspendedFacilitiesByIdentifier = self->_lock_suspendedFacilitiesByIdentifier;
    identifier2 = [facilityCopy identifier];
    [(NSMutableDictionary *)lock_suspendedFacilitiesByIdentifier removeObjectForKey:identifier2];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __41__FBServiceFacilityServer_sharedInstance__block_invoke_cold_1(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E699FCB0] identifier];
  [MEMORY[0x1E698F508] bootstrapConfiguration];
  v16 = v15 = v3;
  v4 = [v2 stringWithFormat:@"must have a valid domain for %@ : bootstrapConfiguration = %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v6 = *(a1 + 40);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 40);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __47__FBServiceFacilityServer_sharedInstanceDomain__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E699FCB0] identifier];
  v17 = a1;
  v5 = [v4 stringWithFormat:@"must have one and only one domain specify %@ : domains=%@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(*(a2 + 32));
    v7 = *(a2 + 40);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a2 + 40);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, 2u);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __47__FBServiceFacilityServer_sharedInstanceDomain__block_invoke_cold_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E699FCB0] identifier];
  v3 = [v2 stringWithFormat:@"if we own the defaultShellMachName then %@ must be registered there"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 32));
    v5 = *(a1 + 40);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 40);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, v14, v15, 2u);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"domain", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addFacility:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"duplicate facility with identifier %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addFacility:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[facility queue] != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addFacility:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identifier != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end