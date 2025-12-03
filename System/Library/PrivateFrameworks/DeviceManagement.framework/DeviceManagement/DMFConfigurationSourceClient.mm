@interface DMFConfigurationSourceClient
+ (id)activeRestrictionsURL;
+ (id)setOfActiveRestrictionUUIDs;
+ (void)setOfActiveRestrictionUUIDs;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DMFConfigurationSourceClient)init;
- (DMFConfigurationSourceClient)initWithConnection:(id)connection organizationIdentifier:(id)identifier displayName:(id)name localMachServiceName:(id)serviceName;
- (DMFConfigurationSourceClientDelegate)delegate;
- (DMFReportingRequirements)reportingRequirements;
- (NSString)debugDescription;
- (NSString)description;
- (id)stateDescription;
- (void)assetResolutionOperationDidFinish:(id)finish completion:(id)completion;
- (void)configurationEngineRequestedAsset:(id)asset completion:(id)completion;
- (void)configurationEventsDidChange:(id)change completion:(id)completion;
- (void)configurationStatusDidChange:(id)change completion:(id)completion;
- (void)dealloc;
- (void)enqueueOperationToReportEvents:(id)events completion:(id)completion;
- (void)enqueueOperationToReportStatusChange:(id)change completion:(id)completion;
- (void)enqueueOperationToResolveAsset:(id)asset completion:(id)completion;
- (void)eventsReportingOperationDidFinish:(id)finish completion:(id)completion;
- (void)invalidate;
- (void)registerConfigurationSourceIfNeeded;
- (void)registrationOperationDidFinish:(id)finish;
- (void)resume;
- (void)setReportingRequirements:(id)requirements;
- (void)statusReportingOperationDidFinish:(id)finish completion:(id)completion;
@end

@implementation DMFConfigurationSourceClient

- (DMFConfigurationSourceClient)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DMFConfigurationSourceClient.m" lineNumber:60 description:{@"%@ cannot call %@", self, v5}];

  return [(DMFConfigurationSourceClient *)self initWithConnection:0 organizationIdentifier:0 displayName:0 localMachServiceName:0];
}

- (DMFConfigurationSourceClient)initWithConnection:(id)connection organizationIdentifier:(id)identifier displayName:(id)name localMachServiceName:(id)serviceName
{
  connectionCopy = connection;
  identifierCopy = identifier;
  nameCopy = name;
  serviceNameCopy = serviceName;
  if (!connectionCopy)
  {
    [DMFConfigurationSourceClient initWithConnection:organizationIdentifier:displayName:localMachServiceName:];
  }

  if (![identifierCopy length])
  {
    [DMFConfigurationSourceClient initWithConnection:organizationIdentifier:displayName:localMachServiceName:];
  }

  if (![nameCopy length])
  {
    [DMFConfigurationSourceClient initWithConnection:organizationIdentifier:displayName:localMachServiceName:];
  }

  v44.receiver = self;
  v44.super_class = DMFConfigurationSourceClient;
  v15 = [(DMFConfigurationSourceClient *)&v44 init];
  v16 = v15;
  if (v15)
  {
    v17 = [(DMFConfigurationSourceClient *)v15 description];
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    serialQueue = v16->_serialQueue;
    v16->_serialQueue = v18;

    v20 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v16->_serialQueue);
    registerConfigurationSource = v16->_registerConfigurationSource;
    v16->_registerConfigurationSource = v20;

    objc_initWeak(&location, v16);
    v22 = v16->_registerConfigurationSource;
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __107__DMFConfigurationSourceClient_initWithConnection_organizationIdentifier_displayName_localMachServiceName___block_invoke;
    v41 = &unk_1E8616210;
    objc_copyWeak(&v42, &location);
    dispatch_source_set_event_handler(v22, &v38);
    v23 = [(DMFConfigurationSourceClient *)v16 registerConfigurationSource:v38];
    dispatch_resume(v23);

    objc_storeStrong(&v16->_connection, connection);
    if (serviceNameCopy)
    {
      anonymousListener = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:serviceNameCopy];
    }

    else
    {
      anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    }

    listener = v16->_listener;
    v16->_listener = anonymousListener;

    [(NSXPCListener *)v16->_listener setDelegate:v16];
    [(NSXPCListener *)v16->_listener _setQueue:v16->_serialQueue];
    v26 = objc_opt_new();
    operationQueue = v16->_operationQueue;
    v16->_operationQueue = v26;

    v28 = [(DMFConfigurationSourceClient *)v16 description];
    [(CATOperationQueue *)v16->_operationQueue setName:v28];

    [(CATOperationQueue *)v16->_operationQueue setUnderlyingQueue:v16->_serialQueue];
    v29 = [nameCopy copy];
    configurationSourceName = v16->_configurationSourceName;
    v16->_configurationSourceName = v29;

    v31 = [identifierCopy copy];
    organizationIdentifier = v16->_organizationIdentifier;
    v16->_organizationIdentifier = v31;

    v33 = [serviceNameCopy copy];
    machServiceName = v16->_machServiceName;
    v16->_machServiceName = v33;

    v35 = objc_opt_new();
    reportingRequirementsLock = v16->_reportingRequirementsLock;
    v16->_reportingRequirementsLock = v35;

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __107__DMFConfigurationSourceClient_initWithConnection_organizationIdentifier_displayName_localMachServiceName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained registerConfigurationSourceIfNeeded];
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (DMFReportingRequirements)reportingRequirements
{
  v3 = self->_reportingRequirementsLock;
  objc_sync_enter(v3);
  v4 = self->_reportingRequirements;
  objc_sync_exit(v3);

  return v4;
}

- (void)setReportingRequirements:(id)requirements
{
  v4 = [requirements copy];
  v5 = self->_reportingRequirementsLock;
  objc_sync_enter(v5);
  reportingRequirements = self->_reportingRequirements;
  self->_reportingRequirements = v4;
  v7 = v4;

  objc_sync_exit(v5);
  registerConfigurationSource = [(DMFConfigurationSourceClient *)self registerConfigurationSource];
  dispatch_source_merge_data(registerConfigurationSource, 1uLL);
}

- (void)resume
{
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__DMFConfigurationSourceClient_resume__block_invoke;
  v5[3] = &unk_1E8616238;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(serialQueue, v5);
}

void __38__DMFConfigurationSourceClient_resume__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) state])
  {
    __38__DMFConfigurationSourceClient_resume__block_invoke_cold_1();
  }

  [*v1 setState:1];
  v2 = [*v1 listener];
  [v2 resume];

  v3 = [*v1 registerConfigurationSource];
  dispatch_source_merge_data(v3, 1uLL);
}

- (void)invalidate
{
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__DMFConfigurationSourceClient_invalidate__block_invoke;
  block[3] = &unk_1E86160F8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __42__DMFConfigurationSourceClient_invalidate__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) state] || (objc_msgSend(*(a1 + 32), "isInvalid") & 1) == 0)
  {
    v2 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v29 = v3;
      _os_log_impl(&dword_1DBFFF000, v2, OS_LOG_TYPE_INFO, "Invalidating configuration source %{public}@...", buf, 0xCu);
    }

    v4 = dispatch_group_create();
    v5 = [*(a1 + 32) listener];
    [v5 invalidate];

    v6 = [*(a1 + 32) incomingConnection];

    if (v6)
    {
      dispatch_group_enter(v4);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __42__DMFConfigurationSourceClient_invalidate__block_invoke_28;
      v26[3] = &unk_1E86160F8;
      v27 = v4;
      v7 = [*(a1 + 32) incomingConnection];
      [v7 setInvalidationHandler:v26];

      v8 = [*(a1 + 32) incomingConnection];
      [v8 invalidate];
    }

    v9 = [*(a1 + 32) operationQueue];
    [v9 cancelAllOperations];

    dispatch_group_enter(v4);
    v10 = MEMORY[0x1E696AAE0];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __42__DMFConfigurationSourceClient_invalidate__block_invoke_2;
    v24[3] = &unk_1E86160F8;
    v11 = v4;
    v25 = v11;
    v12 = [v10 blockOperationWithBlock:v24];
    v13 = [*(a1 + 32) operationQueue];
    v14 = [v13 operations];
    [v12 cat_addDependencies:v14];

    v15 = [*(a1 + 32) operationQueue];
    [v15 addOperation:v12];

    dispatch_group_enter(v11);
    v16 = [*(a1 + 32) serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__DMFConfigurationSourceClient_invalidate__block_invoke_3;
    block[3] = &unk_1E86160F8;
    v23 = v11;
    v17 = v11;
    dispatch_async(v16, block);

    v18 = [*(a1 + 32) registerConfigurationSource];
    dispatch_suspend(v18);

    v19 = [*(a1 + 32) serialQueue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __42__DMFConfigurationSourceClient_invalidate__block_invoke_4;
    v21[3] = &unk_1E86160F8;
    v21[4] = *(a1 + 32);
    dispatch_group_notify(v17, v19, v21);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __42__DMFConfigurationSourceClient_invalidate__block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setState:4];
  v2 = [*(a1 + 32) registerConfigurationSource];
  dispatch_source_cancel(v2);

  v3 = [*(a1 + 32) registerConfigurationSource];
  dispatch_resume(v3);

  [*(a1 + 32) setRegisterConfigurationSource:0];
  v4 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1DBFFF000, v4, OS_LOG_TYPE_INFO, "Did invalidate configuration source: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)stateDescription
{
  state = [(DMFConfigurationSourceClient *)self state];
  if (state - 1 > 3)
  {
    return @"notStarted";
  }

  else
  {
    return off_1E8616258[state - 1];
  }
}

- (NSString)debugDescription
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"stateDescription";
  v7[1] = @"name";
  v7[2] = @"machService";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSString)description
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"name";
  v7[1] = @"machService";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)registerConfigurationSourceIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  connection = [self connection];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)registrationOperationDidFinish:(id)finish
{
  v17 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  registerConfigurationSource = [(DMFConfigurationSourceClient *)self registerConfigurationSource];
  dispatch_resume(registerConfigurationSource);

  if (![(DMFConfigurationSourceClient *)self isInvalid])
  {
    if ([(DMFConfigurationSourceClient *)self state]== 1)
    {
      [(DMFConfigurationSourceClient *)self setState:2];
      v7 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v15 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1DBFFF000, v7, OS_LOG_TYPE_INFO, "Configuration source resumed %{public}@", &v15, 0xCu);
      }
    }

    error = [finishCopy error];

    v9 = DMFConfigurationEngineLog();
    delegate2 = v9;
    if (!error)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1DBFFF000, delegate2, OS_LOG_TYPE_INFO, "Registered as a configuration source: %{public}@", &v15, 0xCu);
      }

      goto LABEL_13;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DMFConfigurationSourceClient *)self registrationOperationDidFinish:finishCopy];
    }

    delegate = [(DMFConfigurationSourceClient *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(DMFConfigurationSourceClient *)self delegate];
      error2 = [finishCopy error];
      [delegate2 configurationSourceDidFailToRegister:self withError:error2];

LABEL_13:
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)enqueueOperationToReportStatusChange:(id)change completion:(id)completion
{
  changeCopy = change;
  completionCopy = completion;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  delegate = [(DMFConfigurationSourceClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && (-[DMFConfigurationSourceClient delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), [v10 operationToSendStatusUpdate:changeCopy], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    if (completionCopy)
    {
      v12 = MEMORY[0x1E128DE70](completionCopy);
      serialQueue2 = [(DMFConfigurationSourceClient *)self serialQueue];
      [v11 addTarget:self selector:sel_statusReportingOperationDidFinish_completion_ forOperationEvents:6 userInfo:v12 delegateQueue:serialQueue2];
    }

    operationQueue = [(DMFConfigurationSourceClient *)self operationQueue];
    [operationQueue addOperation:v11];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TODO" code:1010 userInfo:0];
    completionCopy[2](completionCopy, v11);
  }
}

- (void)statusReportingOperationDidFinish:(id)finish completion:(id)completion
{
  completionCopy = completion;
  finishCopy = finish;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  error = [finishCopy error];

  completionCopy[2](completionCopy, error);
}

- (void)enqueueOperationToReportEvents:(id)events completion:(id)completion
{
  eventsCopy = events;
  completionCopy = completion;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  delegate = [(DMFConfigurationSourceClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && (-[DMFConfigurationSourceClient delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), [v10 operationToSendEvents:eventsCopy], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    if (completionCopy)
    {
      v12 = MEMORY[0x1E128DE70](completionCopy);
      serialQueue2 = [(DMFConfigurationSourceClient *)self serialQueue];
      [v11 addTarget:self selector:sel_eventsReportingOperationDidFinish_completion_ forOperationEvents:6 userInfo:v12 delegateQueue:serialQueue2];
    }

    operationQueue = [(DMFConfigurationSourceClient *)self operationQueue];
    [operationQueue addOperation:v11];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TODO" code:1010 userInfo:0];
    completionCopy[2](completionCopy, v11);
  }
}

- (void)eventsReportingOperationDidFinish:(id)finish completion:(id)completion
{
  completionCopy = completion;
  finishCopy = finish;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  error = [finishCopy error];

  completionCopy[2](completionCopy, error);
}

- (void)enqueueOperationToResolveAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  delegate = [(DMFConfigurationSourceClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && (-[DMFConfigurationSourceClient delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), [v10 operationToResolveAsset:assetCopy], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = MEMORY[0x1E128DE70](completionCopy);
    serialQueue2 = [(DMFConfigurationSourceClient *)self serialQueue];
    [v11 addTarget:self selector:sel_assetResolutionOperationDidFinish_completion_ forOperationEvents:6 userInfo:v12 delegateQueue:serialQueue2];

    operationQueue = [(DMFConfigurationSourceClient *)self operationQueue];
    [operationQueue addOperation:v11];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TODO" code:1010 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)assetResolutionOperationDidFinish:(id)finish completion:(id)completion
{
  completionCopy = completion;
  finishCopy = finish;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  resultObject = [finishCopy resultObject];
  error = [finishCopy error];

  completionCopy[2](completionCopy, resultObject, error);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v7 = [connectionCopy valueForEntitlement:@"application-identifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 isEqualToString:@"com.apple.dmd"] & 1) == 0)
  {
    v9 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DMFConfigurationSourceClient listener:shouldAcceptNewConnection:];
    }

    v8 = 0;
    goto LABEL_8;
  }

  if (![(DMFConfigurationSourceClient *)self isInvalid])
  {
    incomingConnection = [(DMFConfigurationSourceClient *)self incomingConnection];
    [incomingConnection invalidate];

    [(DMFConfigurationSourceClient *)self setIncomingConnection:connectionCopy];
    serialQueue2 = [(DMFConfigurationSourceClient *)self serialQueue];
    [connectionCopy _setQueue:serialQueue2];

    v14 = DMFConfigurationSourceClientXPCInterface();
    [connectionCopy setExportedInterface:v14];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
    v9 = DMFConfigurationEngineLog();
    v8 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = connectionCopy;
      _os_log_impl(&dword_1DBFFF000, v9, OS_LOG_TYPE_INFO, "new connection %{public}@", &v15, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)configurationStatusDidChange:(id)change completion:(id)completion
{
  changeCopy = change;
  completionCopy = completion;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if ([(DMFConfigurationSourceClient *)self isInvalid])
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    [(DMFConfigurationSourceClient *)self enqueueOperationToReportStatusChange:changeCopy completion:completionCopy];
  }
}

- (void)configurationEventsDidChange:(id)change completion:(id)completion
{
  changeCopy = change;
  completionCopy = completion;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if ([(DMFConfigurationSourceClient *)self isInvalid])
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    [(DMFConfigurationSourceClient *)self enqueueOperationToReportEvents:changeCopy completion:completionCopy];
  }
}

- (void)configurationEngineRequestedAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  serialQueue = [(DMFConfigurationSourceClient *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if ([(DMFConfigurationSourceClient *)self isInvalid])
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    [(DMFConfigurationSourceClient *)self enqueueOperationToResolveAsset:assetCopy completion:completionCopy];
  }
}

+ (id)activeRestrictionsURL
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DFF8];
    v9[0] = v2;
    v9[1] = @"Library";
    v9[2] = @"dmd";
    v9[3] = @"ConfigurationEngine";
    v9[4] = @"ActiveRestrictions.plist";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
    v6 = [v4 fileURLWithPathComponents:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)setOfActiveRestrictionUUIDs
{
  activeRestrictionsURL = [self activeRestrictionsURL];
  if (activeRestrictionsURL)
  {
    v15 = 0;
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:activeRestrictionsURL options:0 error:&v15];
    v4 = v15;
    if (!v3)
    {
      v5 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[(DMFConfigurationSourceClient *)v4];
      }

      v8 = 0;
      v6 = v4;
      goto LABEL_24;
    }

    v14 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v14];
    v6 = v14;

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [MEMORY[0x1E695DFD8] setWithArray:v5];
LABEL_17:
        v8 = v7;
LABEL_24:

        goto LABEL_25;
      }

      v12 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[DMFConfigurationSourceClient setOfActiveRestrictionUUIDs];
      }
    }

    else
    {
      domain = [v6 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A250]])
      {
        code = [v6 code];

        if (code == 4)
        {
          v11 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            +[(DMFConfigurationSourceClient *)v11];
          }

          v7 = [MEMORY[0x1E695DFD8] set];
          goto LABEL_17;
        }
      }

      else
      {
      }

      v12 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[(DMFConfigurationSourceClient *)v6];
      }
    }

    v8 = 0;
    goto LABEL_24;
  }

  v6 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[(DMFConfigurationSourceClient *)v6];
  }

  v8 = 0;
LABEL_25:

  return v8;
}

- (DMFConfigurationSourceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConnection:organizationIdentifier:displayName:localMachServiceName:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:@"connection" object:? file:? lineNumber:? description:?];
}

- (void)initWithConnection:organizationIdentifier:displayName:localMachServiceName:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:@"organizationIdentifier.length > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithConnection:organizationIdentifier:displayName:localMachServiceName:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:@"displayName.length > 0" object:? file:? lineNumber:? description:?];
}

void __38__DMFConfigurationSourceClient_resume__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:? lineNumber:? description:?];
}

- (void)registrationOperationDidFinish:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 error];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1DBFFF000, v0, OS_LOG_TYPE_ERROR, "rejecting incoming connection from %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)setOfActiveRestrictionUUIDs
{
  v8 = *MEMORY[0x1E69E9840];
  verboseDescription = [self verboseDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end