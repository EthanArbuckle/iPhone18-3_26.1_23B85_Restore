@interface FBSSceneSnapshotAction
- (BOOL)_remainsActionable;
- (BOOL)snapshotRequest:(id)request performWithContext:(id)context;
- (FBSSceneSnapshotAction)initWithRequests:(id)requests expirationInterval:(double)interval responseHandler:(id)handler;
- (FBSSceneSnapshotAction)initWithXPCDictionary:(id)dictionary;
- (double)expirationInterval;
- (void)_executeNextRequest;
- (void)_finishAllRequests;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)executeRequestsWithHandler:(id)handler completionHandler:(id)completionHandler expirationHandler:(id)expirationHandler;
- (void)invalidate;
- (void)setInvalidationHandler:(id)handler;
- (void)setNullificationHandler:(id)handler;
@end

@implementation FBSSceneSnapshotAction

- (FBSSceneSnapshotAction)initWithRequests:(id)requests expirationInterval:(double)interval responseHandler:(id)handler
{
  requestsCopy = requests;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = handlerCopy;
    v11 = objc_alloc_init(off_1E76BCA00);
    [off_1E76BC978 responderWithHandler:v10];
    objc_claimAutoreleasedReturnValue();
    BSFloatGreaterThanFloat();
  }

  [FBSSceneSnapshotAction initWithRequests:a2 expirationInterval:self responseHandler:?];
}

- (void)executeRequestsWithHandler:(id)handler completionHandler:(id)completionHandler expirationHandler:(id)expirationHandler
{
  expirationHandlerCopy = expirationHandler;
  callOutQueue = self->super._callOutQueue;
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  [(BSServiceQueue *)callOutQueue assertBarrierOnQueue];
  [(FBSSceneSnapshotAction *)self setRequestHandler:handlerCopy];

  [(FBSSceneSnapshotAction *)self setCompletionHandler:completionHandlerCopy];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __89__FBSSceneSnapshotAction_executeRequestsWithHandler_completionHandler_expirationHandler___block_invoke;
  v16 = &unk_1E76BDA90;
  selfCopy = self;
  v18 = expirationHandlerCopy;
  v12 = expirationHandlerCopy;
  BSDispatchBlockCreateWithCurrentQualityOfService();
}

uint64_t __89__FBSSceneSnapshotAction_executeRequestsWithHandler_completionHandler_expirationHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setExpired:1];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(*(a1 + 32) + 72) cancelRequest];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;

  objc_sync_exit(v2);
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (double)expirationInterval
{
  info = [(FBSSceneSnapshotAction *)self info];
  v3 = [info objectForSetting:1];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you can't use the invalidation handler on this class"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"FBSSceneSnapshotAction.m";
    v18 = 1024;
    v19 = 101;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setNullificationHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you can't use the nullification handler on this class"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"FBSSceneSnapshotAction.m";
    v18 = 1024;
    v19 = 105;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

- (void)invalidate
{
  if (self->_responder)
  {
    responder = self->_responder;

    [(BSActionResponder *)responder annul];
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = FBSSceneSnapshotAction;
    [(FBSSceneSnapshotAction *)&v5 invalidate];
  }
}

- (BOOL)_remainsActionable
{
  if ([(FBSSceneSnapshotAction *)self isExpired])
  {
    return 0;
  }

  return [(FBSSceneSnapshotAction *)self isValid];
}

- (void)_finishAllRequests
{
  requestHandler = self->_requestHandler;
  self->_requestHandler = 0;

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2]();
    v5 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  v7.receiver = self;
  v7.super_class = FBSSceneSnapshotAction;
  [(FBSSceneSnapshotAction *)&v7 setNullificationHandler:0];
  v6 = FBSSceneSnapshotActionResponseForErrorCode(0);
  [(FBSSceneSnapshotAction *)self sendResponse:v6];
}

- (void)_executeNextRequest
{
  [(BSServiceQueue *)self->super._callOutQueue assertBarrierOnQueue];
  if ([(FBSSceneSnapshotAction *)self _remainsActionable])
  {
    firstObject = [(NSMutableArray *)self->_requests firstObject];
    if (firstObject)
    {
      [(NSMutableArray *)self->_requests removeObjectAtIndex:0];
      identifier = [(FBSScene *)self->super._scene identifier];
      [firstObject setSceneID:identifier];

      [firstObject setDelegate:self];
      v4 = objc_autoreleasePoolPush();
      requestHandler = self->_requestHandler;
      if (requestHandler)
      {
        requestHandler[2](requestHandler, firstObject);
      }

      objc_autoreleasePoolPop(v4);
      [firstObject setDelegate:0];
      [(FBSSceneSnapshotAction *)self _executeNextRequest];
    }

    else
    {
      [(FBSSceneSnapshotAction *)self _finishAllRequests];
    }
  }

  else
  {

    [(FBSSceneSnapshotAction *)self _finishAllRequests];
  }
}

- (BOOL)snapshotRequest:(id)request performWithContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  _remainsActionable = [(FBSSceneSnapshotAction *)self _remainsActionable];
  if (_remainsActionable)
  {
    [(BSServiceQueue *)self->super._callOutQueue assertBarrierOnQueue];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_outgoingRequestHandle)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot have existing request handle"];
      v17 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v23 = 138544642;
        v24 = v19;
        v25 = 2114;
        v26 = v21;
        v27 = 2048;
        v28 = selfCopy;
        v29 = 2114;
        v30 = @"FBSSceneSnapshotAction.m";
        v31 = 1024;
        v32 = 181;
        v33 = 2114;
        v34 = v16;
        _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v23, 0x3Au);
      }

      v22 = v16;
      [v16 UTF8String];
      _bs_set_crash_log_message();
    }

    v11 = [[FBSSceneSnapshotRequestHandle alloc] initWithRequestType:1 context:contextCopy];
    outgoingRequestHandle = selfCopy->_outgoingRequestHandle;
    selfCopy->_outgoingRequestHandle = v11;

    objc_sync_exit(selfCopy);
    [(FBSSceneSnapshotRequestHandle *)selfCopy->_outgoingRequestHandle performRequestForScene:selfCopy->super._scene];
    v13 = selfCopy;
    objc_sync_enter(v13);
    v14 = selfCopy->_outgoingRequestHandle;
    selfCopy->_outgoingRequestHandle = 0;

    objc_sync_exit(v13);
  }

  return _remainsActionable;
}

- (FBSSceneSnapshotAction)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6.receiver = self;
  v6.super_class = FBSSceneSnapshotAction;
  if ([(FBSSceneSnapshotAction *)&v6 initWithXPCDictionary:dictionaryCopy])
  {
    BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v3.receiver = self;
  v3.super_class = FBSSceneSnapshotAction;
  [(FBSSceneSnapshotAction *)&v3 encodeWithXPCDictionary:dictionary];
  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
}

- (void)initWithRequests:(const char *)a1 expirationInterval:(uint64_t)a2 responseHandler:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSSceneSnapshotAction.m";
    v16 = 1024;
    v17 = 40;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end