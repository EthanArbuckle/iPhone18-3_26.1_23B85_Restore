@interface FBSServiceFacilityClient
+ (BSServiceConnectionEndpoint)defaultShellEndpoint;
- (BOOL)_isValid;
- (FBSServiceFacilityClient)init;
- (FBSServiceFacilityClient)initWithConfigurator:(id)configurator;
- (FBSServiceFacilityClient)initWithIdentifier:(id)identifier calloutQueue:(id)queue;
- (NSString)description;
- (void)_lock_activate;
- (void)_lock_invalidate;
- (void)_queue_handleError:(id)error;
- (void)_queue_handleMessage:(id)message;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)sendMessage:(id)message withType:(int64_t)type replyHandler:(id)handler waitForReply:(BOOL)reply timeout:(double)timeout;
- (void)setCalloutQueue:(id)queue;
- (void)setEndpoint:(id)endpoint;
- (void)setIdentifier:(id)identifier;
- (void)setInterface:(id)interface;
- (void)setInterfaceTarget:(id)target;
- (void)setServiceQuality:(id)quality;
@end

@implementation FBSServiceFacilityClient

+ (BSServiceConnectionEndpoint)defaultShellEndpoint
{
  environmentAliases = [off_1E76BC9E0 environmentAliases];
  defaultShellMachName = [off_1E76BCA30 defaultShellMachName];
  v4 = [environmentAliases resolveMachService:defaultShellMachName];
  v5 = +[FBSSystemServiceSpecification identifier];
  v6 = [off_1E76BCA30 endpointForMachName:v4 service:v5 instance:0];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[FBSSystemServiceSpecification identifier];
    v8 = [off_1E76BCA30 nullEndpointForService:v9 instance:0];
  }

  return v8;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(FBSServiceFacilityClient *)self _lock_invalidate];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_invalidate
{
  v0 = objc_opt_class();
  v5 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_6_3();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be invalidated before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_lock_activate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"say no to re-creating a denied connection"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __42__FBSServiceFacilityClient__lock_activate__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  os_unfair_lock_lock(v5 + 15);
  if (v3 && ((*v4)[18]._os_unfair_lock_opaque & 0x10000) == 0)
  {
    v6 = FBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *v4;
      *buf = 138543618;
      v26 = v8;
      v27 = 2048;
      v28 = v9;
      _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Service facility connection activation received.", buf, 0x16u);
    }

    if (([v3 decodeBoolForKey:@"fbs_accept"] & 1) == 0)
    {
      v10 = FBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = *v4;
        *buf = 138543618;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_impl(&dword_1A2DBB000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Service denied.", buf, 0x16u);
      }

      LOBYTE((*v4)[18]._os_unfair_lock_opaque) = 1;
      [*&(*v4)[16]._os_unfair_lock_opaque invalidate];
      v14 = *&(*v4)[16]._os_unfair_lock_opaque;
      *&(*v4)[16]._os_unfair_lock_opaque = 0;

      v15 = [MEMORY[0x1E695DF90] dictionary];
      v16 = [v3 decodeStringForKey:@"fbs_errorDesc"];
      if (v16)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Service denied: %@", v16];
        [v15 setObject:v16 forKey:*MEMORY[0x1E696A588]];
      }

      else
      {
        v17 = @"Service denied.";
      }

      [v15 setObject:v17 forKey:*MEMORY[0x1E696A578]];
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSServiceFacilityErrorDomain" code:1 userInfo:v15];
      v19 = FBLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __42__FBSServiceFacilityClient__lock_activate__block_invoke_cold_1(v4, v18);
      }

      v20 = *v4;
      v21 = *&(*v4)[12]._os_unfair_lock_opaque;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__FBSServiceFacilityClient__lock_activate__block_invoke_92;
      block[3] = &unk_1E76BCD60;
      block[4] = v20;
      v24 = v18;
      v22 = v18;
      dispatch_async(v21, block);
    }
  }

  os_unfair_lock_unlock(*v4 + 15);
}

- (FBSServiceFacilityClient)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you must use another initializer"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSServiceFacilityClient.m";
    v16 = 1024;
    v17 = 42;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSServiceFacilityClient)initWithIdentifier:(id)identifier calloutQueue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__FBSServiceFacilityClient_initWithIdentifier_calloutQueue___block_invoke;
  v12[3] = &unk_1E76BF8E0;
  v13 = identifierCopy;
  v14 = queueCopy;
  v8 = queueCopy;
  v9 = identifierCopy;
  v10 = [(FBSServiceFacilityClient *)self initWithConfigurator:v12];

  return v10;
}

void __60__FBSServiceFacilityClient_initWithIdentifier_calloutQueue___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[FBSServiceFacilityClient defaultShellEndpoint];
  [v5 setEndpoint:v3];

  [v5 setIdentifier:*(a1 + 32)];
  v4 = [off_1E76BCA50 userInitiated];
  [v5 setServiceQuality:v4];

  if (*(a1 + 40))
  {
    [v5 setCalloutQueue:?];
  }
}

- (FBSServiceFacilityClient)initWithConfigurator:(id)configurator
{
  configuratorCopy = configurator;
  if (!configuratorCopy)
  {
    [FBSServiceFacilityClient initWithConfigurator:a2];
  }

  v6 = configuratorCopy;
  v29.receiver = self;
  v29.super_class = FBSServiceFacilityClient;
  v7 = [(FBSServiceFacilityClient *)&v29 init];
  if (v7)
  {
    (v6)[2](v6, v7);
    v8 = *(v7 + 1);
    *(v7 + 56) = 1;
    if (!v8)
    {
      [FBSServiceFacilityClient initWithConfigurator:a2];
    }

    v9 = *(v7 + 2);
    if (!v9)
    {
      [FBSServiceFacilityClient initWithConfigurator:a2];
    }

    if ((*(v7 + 4) == 0) != (*(v7 + 5) == 0))
    {
      [FBSServiceFacilityClient initWithConfigurator:a2];
    }

    *(v7 + 15) = 0;
    if (!*(v7 + 3))
    {
      utility = [off_1E76BCA50 utility];
      v11 = *(v7 + 3);
      *(v7 + 3) = utility;

      v9 = *(v7 + 2);
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBSServiceFacilityClient:%@", v9];
    serial = [off_1E76BC9B8 serial];
    v14 = [serial serviceClass:objc_msgSend(*(v7 + 3) relativePriority:{"serviceClass"), objc_msgSend(*(v7 + 3), "relativePriority")}];

    if (!*(v7 + 6))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"FBSServiceFacilityClientCallout:%@", *(v7 + 2)];
      objc_claimAutoreleasedReturnValue();
      BSDispatchQueueCreate();
    }

    NSClassFromString(&cfstr_Uisapplication_0.isa);
    *(v7 + 75) = objc_opt_isKindOfClass() & 1;
    v15 = FBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(FBSServiceFacilityClient *)v7 + 1 initWithConfigurator:v15];
    }

    v16 = *(v7 + 1);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __49__FBSServiceFacilityClient_initWithConfigurator___block_invoke;
    v27[3] = &unk_1E76BF908;
    v17 = v7;
    v28 = v17;
    v18 = [off_1E76BCA28 connectionWithEndpoint:v16 clientContextBuilder:v27];
    v19 = v17[8];
    v17[8] = v18;

    v20 = v17[8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __49__FBSServiceFacilityClient_initWithConfigurator___block_invoke_2;
    v24[3] = &unk_1E76BF980;
    v25 = v12;
    v26 = v17;
    v21 = v12;
    [v20 _configureConnection:v24];
    v22 = *(v7 + 5);
    *(v7 + 5) = 0;
  }

  return v7;
}

void __49__FBSServiceFacilityClient_initWithConfigurator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setName:*(a1 + 32)];
  v4 = [off_1E76BCA48 queueWithName:*(a1 + 32) serviceQuality:*(*(a1 + 40) + 24)];
  [v3 setQueue:v4];

  v5 = *(a1 + 40);
  if (v5[4])
  {
    [v3 setInterface:?];
    [v3 setInterfaceTarget:*(*(a1 + 40) + 40)];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__FBSServiceFacilityClient_initWithConfigurator___block_invoke_3;
    v12[3] = &unk_1E76BF930;
    v13 = v5;
    [v3 setMessageHandler:v12];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__FBSServiceFacilityClient_initWithConfigurator___block_invoke_4;
  v10[3] = &unk_1E76BF958;
  v11 = *(a1 + 40);
  [v3 setErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__FBSServiceFacilityClient_initWithConfigurator___block_invoke_5;
  v8[3] = &unk_1E76BE8F0;
  v9 = *(a1 + 40);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__FBSServiceFacilityClient_initWithConfigurator___block_invoke_6;
  v6[3] = &unk_1E76BE8F0;
  v7 = *(a1 + 40);
  [v3 setInvalidationHandler:v6];
}

void __49__FBSServiceFacilityClient_initWithConfigurator___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  os_unfair_lock_lock(v4 + 15);
  *(*(a1 + 32) + 73) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 60));
  [*(a1 + 32) _queue_handleError:v5];
}

- (void)setEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (self->_configured)
  {
    [FBSServiceFacilityClient setEndpoint:a2];
  }

  v6 = endpointCopy;
  if (!endpointCopy)
  {
    [FBSServiceFacilityClient setEndpoint:a2];
  }

  service = [(BSServiceConnectionEndpoint *)endpointCopy service];
  v8 = +[FBSSystemServiceSpecification identifier];
  v9 = [service isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    [(FBSServiceFacilityClient *)v6 setEndpoint:a2];
  }

  endpoint = self->_endpoint;
  self->_endpoint = v6;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_configured)
  {
    [FBSServiceFacilityClient setIdentifier:a2];
  }

  if (!identifierCopy)
  {
    [FBSServiceFacilityClient setIdentifier:a2];
  }

  v8 = identifierCopy;
  v6 = [identifierCopy copy];
  facilityID = self->_facilityID;
  self->_facilityID = v6;
}

- (void)setServiceQuality:(id)quality
{
  qualityCopy = quality;
  if (self->_configured)
  {
    [FBSServiceFacilityClient setServiceQuality:a2];
  }

  if (!qualityCopy)
  {
    [FBSServiceFacilityClient setServiceQuality:a2];
  }

  serviceQuality = self->_serviceQuality;
  self->_serviceQuality = qualityCopy;

  MEMORY[0x1EEE66BB8](qualityCopy, serviceQuality);
}

- (void)setInterface:(id)interface
{
  interfaceCopy = interface;
  if (self->_configured)
  {
    [FBSServiceFacilityClient setInterface:a2];
  }

  if (!interfaceCopy)
  {
    [FBSServiceFacilityClient setInterface:a2];
  }

  interface = self->_interface;
  self->_interface = interfaceCopy;

  MEMORY[0x1EEE66BB8](interfaceCopy, interface);
}

- (void)setInterfaceTarget:(id)target
{
  targetCopy = target;
  if (self->_configured)
  {
    [FBSServiceFacilityClient setInterfaceTarget:a2];
  }

  if (!targetCopy)
  {
    [FBSServiceFacilityClient setInterfaceTarget:a2];
  }

  configOnly_interfaceTarget = self->_configOnly_interfaceTarget;
  self->_configOnly_interfaceTarget = targetCopy;

  MEMORY[0x1EEE66BB8](targetCopy, configOnly_interfaceTarget);
}

- (void)setCalloutQueue:(id)queue
{
  queueCopy = queue;
  if (self->_configured)
  {
    [FBSServiceFacilityClient setCalloutQueue:a2];
  }

  if (!queueCopy)
  {
    [FBSServiceFacilityClient setCalloutQueue:a2];
  }

  calloutQueue = self->_calloutQueue;
  self->_calloutQueue = queueCopy;

  MEMORY[0x1EEE66BB8](queueCopy, calloutQueue);
}

- (void)activate
{
  os_unfair_lock_lock(&self->_lock);
  [(FBSServiceFacilityClient *)self _lock_activate];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)description
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_facilityID withName:@"facilityID"];
  build = [v3 build];

  return build;
}

- (void)sendMessage:(id)message withType:(int64_t)type replyHandler:(id)handler waitForReply:(BOOL)reply timeout:(double)timeout
{
  replyCopy = reply;
  messageCopy = message;
  handlerCopy = handler;
  if (!messageCopy)
  {
    [FBSServiceFacilityClient sendMessage:a2 withType:? replyHandler:? waitForReply:? timeout:?];
  }

  v14 = handlerCopy;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated || self->_lock_connectionDenied)
  {
    v15 = 0;
  }

  else
  {
    v15 = self->_lock_connection;
    [(FBSServiceFacilityClient *)self _lock_activate];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v14)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83__FBSServiceFacilityClient_sendMessage_withType_replyHandler_waitForReply_timeout___block_invoke;
    v21[3] = &unk_1E76BF9A8;
    v21[4] = self;
    v23 = replyCopy;
    v22 = v14;
    createMessage = [(BSServiceConnection *)v15 createMessageWithCompletion:v21];
  }

  else
  {
    createMessage = [(BSServiceConnection *)v15 createMessage];
  }

  [createMessage encodeInt64:type forKey:@"message"];
  payload = [messageCopy payload];
  [createMessage encodeXPCObject:payload forKey:@"fbs_message"];

  if (createMessage)
  {
    if (replyCopy)
    {
      [createMessage sendSynchronously];
    }

    else
    {
      [createMessage send];
    }
  }

  else if (v14)
  {
    calloutQueue = self->_calloutQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__FBSServiceFacilityClient_sendMessage_withType_replyHandler_waitForReply_timeout___block_invoke_3;
    v19[3] = &unk_1E76BD318;
    v20 = v14;
    dispatch_async(calloutQueue, v19);
  }
}

void __83__FBSServiceFacilityClient_sendMessage_withType_replyHandler_waitForReply_timeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [FBSXPCMessage messageWithBSXPCMessage:v5 ownReply:0];
  }

  else
  {
    v7 = 0;
  }

  if (*(*(a1 + 32) + 75) == 1 && v7 == 0)
  {
    v7 = objc_alloc_init(FBSXPCMessage);
  }

  if (*(a1 + 48) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 32) + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__FBSServiceFacilityClient_sendMessage_withType_replyHandler_waitForReply_timeout___block_invoke_2;
    v10[3] = &unk_1E76BD750;
    v12 = *(a1 + 40);
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

- (BOOL)_isValid
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return !lock_invalidated;
}

uint64_t __42__FBSServiceFacilityClient__lock_activate__block_invoke_92(uint64_t a1)
{
  [*(a1 + 32) handleError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)_queue_handleError:(id)error
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A588];
  v14[0] = *MEMORY[0x1E696A578];
  v14[1] = v5;
  v15[0] = @"Service suspended: the connection with the service host has been interrupted.";
  v15[1] = @"The connection with the service host has been interrupted.";
  v14[2] = *MEMORY[0x1E696AA08];
  v15[2] = error;
  v6 = MEMORY[0x1E695DF20];
  errorCopy = error;
  v8 = [v6 dictionaryWithObjects:v15 forKeys:v14 count:3];
  v9 = [v4 errorWithDomain:@"FBSServiceFacilityErrorDomain" code:2 userInfo:v8];

  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__FBSServiceFacilityClient__queue_handleError___block_invoke;
  block[3] = &unk_1E76BCD60;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(calloutQueue, block);
}

uint64_t __47__FBSServiceFacilityClient__queue_handleError___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  result = [*(a1 + 32) _isValid];
  if (result)
  {
    v4 = FBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__FBSServiceFacilityClient__queue_handleError___block_invoke_cold_1(v2, a1);
    }

    return [*(a1 + 32) handleError:*(a1 + 40)];
  }

  return result;
}

- (void)_queue_handleMessage:(id)message
{
  messageCopy = message;
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FBSServiceFacilityClient__queue_handleMessage___block_invoke;
  v7[3] = &unk_1E76BCD60;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(calloutQueue, v7);
}

void __49__FBSServiceFacilityClient__queue_handleMessage___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) _isValid])
  {
    v3 = [*(a1 + 40) decodeInt64ForKey:@"message"];
    v4 = [FBSXPCMessage messageWithBSXPCMessage:*(a1 + 40) ownReply:1];
    v5 = FBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __49__FBSServiceFacilityClient__queue_handleMessage___block_invoke_cold_1();
    }

    [*v2 handleMessage:v4 withType:v3];
  }
}

- (void)initWithConfigurator:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_DEBUG, "Creating service facility connection with %@", &v3, 0xCu);
}

- (void)initWithConfigurator:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"if an interface is specified you must also specify the target"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithConfigurator:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configuration error: facilityID was not specified"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithConfigurator:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configuration error: endpoint was not specified"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithConfigurator:(char *)a1 .cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"block", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setEndpoint:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the endpoint specifies an incompatible service : endpoint=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setEndpoint:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"endpoint", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setEndpoint:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"untimely configuration call"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setIdentifier:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"untimely configuration call"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setServiceQuality:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"serviceQuality", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setServiceQuality:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"untimely configuration call"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setInterface:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"interface", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setInterface:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"untimely configuration call"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setInterfaceTarget:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"target", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setInterfaceTarget:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"untimely configuration call"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCalloutQueue:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"calloutQueue", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCalloutQueue:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"untimely configuration call"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)sendMessage:(char *)a1 withType:replyHandler:waitForReply:timeout:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"fbs_message", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __42__FBSServiceFacilityClient__lock_activate__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 localizedDescription];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_6_3();
  _os_log_error_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 0x20u);
}

void __47__FBSServiceFacilityClient__queue_handleError___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [*(a2 + 40) localizedDescription];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_6_3();
  _os_log_error_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 0x20u);
}

void __49__FBSServiceFacilityClient__queue_handleMessage___block_invoke_cold_1()
{
  v0 = objc_opt_class();
  v5 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_6_3();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
}

@end