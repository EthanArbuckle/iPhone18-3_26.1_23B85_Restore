@interface LNConnection
+ (LNConnectionOptions)defaultOptions;
+ (void)fetchEntitiesFromActiveApplicationsWithInteractionIDs:(id)ds bundleIdentifiers:(id)identifiers completionHandler:(id)handler;
+ (void)fetchEntitiesFromActiveApplicationsWithInteractionIDs:(id)ds completionHandler:(id)handler;
+ (void)invalidateAllConnections;
+ (void)resolveEntitiesForInteractionIDs:(id)ds bundleIdentifier:(id)identifier completionHandler:(id)handler;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)allowsExtendingTimeoutOnProgressUpdates;
- (BOOL)connectUsingProcessIdentifierWithOptions:(id)options;
- (BOOL)isDaemon;
- (BOOL)isPerformActionOperationPending;
- (BOOL)refreshWithOptions:(id)options;
- (BOOL)shouldRefreshWithOptions:(id)options;
- (BOOL)targetIsBeingDebugged;
- (LNConnection)initWithBundleIdentifier:(id)identifier metadataVersion:(int64_t)version error:(id *)error;
- (LNConnectionHostInterface)connectionInterface;
- (LNWatchdogTimer)idleTimer;
- (NSMapTable)executors;
- (NSMutableSet)connectionOperations;
- (NSSet)currentConnectionOperations;
- (NSString)description;
- (NSString)logPrefix;
- (NSURL)bundleURL;
- (id)executorForAction:(id)action interactionMode:(int64_t)mode label:(id)label delegate:(id)delegate;
- (id)executorForAction:(id)action label:(id)label delegate:(id)delegate;
- (id)executorForAction:(id)action metadata:(id)metadata appBundleIdentifier:(id)identifier options:(id)options delegate:(id)delegate;
- (id)executorForAction:(id)action metadata:(id)metadata options:(id)options delegate:(id)delegate;
- (id)executorForAction:(id)action options:(id)options delegate:(id)delegate;
- (id)operationWithIdentifier:(id)identifier;
- (id)optionsForAction:(id)action interactionMode:(int64_t)mode source:(unsigned __int16)source sourceOverride:(id)override assistantDismissalPolicy:(int64_t)policy;
- (void)_invalidateAllAssertions;
- (void)acquireAssertionsForConnectionOperation:(id)operation;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)cancelIdleTimeout;
- (void)cancelTimeoutForOperationWithIdentifier:(id)identifier;
- (void)closeWithError:(id)error;
- (void)completeWithError:(id)error;
- (void)connectUsingListenerEndpoint:(id)endpoint auditToken:(id *)token;
- (void)connectWithOptions:(id)options;
- (void)connectionOperation:(id)operation didFinishWithError:(id)error;
- (void)connectionOperationWillStart:(id)start;
- (void)createAsyncIteratorForSequence:(id)sequence options:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)enqueueConnectionOperation:(id)operation;
- (void)exportEntities:(id)entities metadata:(id)metadata withConfiguration:(id)configuration completionHandler:(id)handler;
- (void)extendIdleTimeout;
- (void)extendTimeoutForOperationWithIdentifier:(id)identifier;
- (void)fetchActionAppContextForAction:(id)action completionHandler:(id)handler;
- (void)fetchActionForAppShortcutIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchActionForAutoShortcutPhrase:(id)phrase completionHandler:(id)handler;
- (void)fetchActionOutputValue:(id)value completionHandler:(id)handler;
- (void)fetchAppShortcutParametersForMangledName:(id)name withCompletionHandler:(id)handler;
- (void)fetchAppShortcutParametersWithCompletionHandler:(id)handler;
- (void)fetchDefaultValueForAction:(id)action actionMetadata:(id)metadata parameterIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchDestinationMDMAccountIdentifierForAction:(id)action completionHandler:(id)handler;
- (void)fetchDisplayRepresentationForActions:(id)actions completionHandler:(id)handler;
- (void)fetchEntityURL:(id)l completionHandler:(id)handler;
- (void)fetchListenerEndpointFromApplicationServiceWithCompletionHandler:(id)handler;
- (void)fetchOptionsDefaultValueForAction:(id)action completionHandler:(id)handler;
- (void)fetchOptionsForAction:(id)action actionMetadata:(id)metadata parameterMetadata:(id)parameterMetadata optionsProviderReference:(id)reference searchTerm:(id)term localeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchStateForAppIntentIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)identifier forEntityIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchSuggestedActionsForStartWorkoutAction:(id)action completionHandler:(id)handler;
- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)handler;
- (void)fetchSuggestedActionsWithSiriLanguageCode:(id)code completionHandler:(id)handler;
- (void)fetchSuggestedFocusActionsForActionMetadata:(id)metadata suggestionContext:(id)context completionHandler:(id)handler;
- (void)fetchURLForEnumWithIdentifier:(id)identifier caseIdentifier:(id)caseIdentifier completionHandler:(id)handler;
- (void)fetchURLsForEnumWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchValueForPropertyWithIdentifier:(id)identifier entity:(id)entity completionHandler:(id)handler;
- (void)fetchViewActionsWithCompletionHandler:(id)handler;
- (void)fetchViewEntitiesWithInteractionIDs:(id)ds completionHandler:(id)handler;
- (void)fetchViewEntitiesWithOptions:(id)options interactionIDs:(id)ds completionHandler:(id)handler;
- (void)getConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler;
- (void)getListenerEndpointForBundleIdentifier:(id)identifier action:(id)action completionHandler:(id)handler;
- (void)invalidateAssertionsForConnectionOperation:(id)operation;
- (void)linkUndoManager:(id)manager completionHandler:(id)handler;
- (void)nextAsyncIteratorResults:(id)results completionHandler:(id)handler;
- (void)performAllEntitiesQueryWithEntityMangledTypeName:(id)name completionHandler:(id)handler;
- (void)performConfigurableQuery:(id)query completionHandler:(id)handler;
- (void)performGetConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler;
- (void)performQuery:(id)query completionHandler:(id)handler;
- (void)performSuggestedEntitiesQueryWithEntityMangledTypeName:(id)name completionHandler:(id)handler;
- (void)performSuggestedResultsQueryWithEntityType:(id)type completionHandler:(id)handler;
- (void)releaseAsyncSequence:(id)sequence completionHandler:(id)handler;
- (void)removeConnectionOperation:(id)operation;
- (void)setAuditToken:(id *)token;
- (void)setConnected;
- (void)setDisconnectedWithError:(id)error;
- (void)setIdleTimer;
- (void)setState:(int64_t)state;
- (void)setUpConnectionContextWithCompletionHandler:(id)handler;
- (void)setXPCConnection:(id)connection;
- (void)stageContextWithRequest:(id)request completionHandler:(id)handler;
- (void)updateAppShortcutParametersWithCompletionHandler:(id)handler;
- (void)updateProperties:(id)properties withQuery:(id)query completionHandler:(id)handler;
@end

@implementation LNConnection

- (void)setIdleTimer
{
  queue = [(LNConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__LNConnection_setIdleTimer__block_invoke;
  block[3] = &unk_1E74B2318;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  if (([(LNConnection *)self isMemberOfClass:objc_opt_class()]& 1) == 0 && ([(LNConnection *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    v3 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      logPrefix = [(LNConnection *)self logPrefix];
      *buf = 138543362;
      v15 = logPrefix;
      _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "%{public}@ Invalidating RunningBoard Assertions", buf, 0xCu);
    }

    [(LNConnection *)self _invalidateAllAssertions];
    v5 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      logPrefix2 = [(LNConnection *)self logPrefix];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v15 = logPrefix2;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ Invalidating XPC connection on %{public}@ dealloc", buf, 0x16u);
    }

    [(NSXPCConnection *)self->_xpcConnection invalidate];
    v9 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      logPrefix3 = [(LNConnection *)self logPrefix];
      *buf = 138543362;
      v15 = logPrefix3;
      _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_INFO, "%{public}@ Invalidating process monitor on dealloc", buf, 0xCu);
    }

    processMonitor = [(LNConnection *)self processMonitor];
    [processMonitor invalidate];
  }

  v13.receiver = self;
  v13.super_class = LNConnection;
  [(LNConnection *)&v13 dealloc];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)setConnected
{
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(LNConnection *)self state]!= 1 && [(LNConnection *)self state]!= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:505 description:{@"Invalid parameter not satisfying: %@", @"self.state == LNConnectionStateConnecting || self.state == LNConnectionStateRefreshing"}];
  }

  [(LNConnection *)self setState:3];

  [(LNConnection *)self completeWithError:0];
}

- (LNConnectionHostInterface)connectionInterface
{
  objc_initWeak(&location, self);
  xpcConnection = [(LNConnection *)self xpcConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__LNConnection_connectionInterface__block_invoke;
  v6[3] = &unk_1E74B2778;
  objc_copyWeak(&v7, &location);
  v4 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

- (NSString)logPrefix
{
  v2 = MEMORY[0x1E696AEC0];
  bundleIdentifier = [(LNConnection *)self bundleIdentifier];
  v4 = [v2 stringWithFormat:@"[%@]", bundleIdentifier];

  return v4;
}

+ (LNConnectionOptions)defaultOptions
{
  [self connectionOptionsClass];
  v2 = objc_opt_new();

  return v2;
}

void __28__LNConnection_setIdleTimer__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [LNWatchdogTimer alloc];
  v3 = *&LNConnectionIdleTimeout;
  v4 = [*(a1 + 32) queue];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __28__LNConnection_setIdleTimer__block_invoke_2;
  v12 = &unk_1E74B2438;
  objc_copyWeak(&v13, &location);
  v5 = [(LNWatchdogTimer *)v2 initWithTimeoutInterval:v4 onQueue:&v9 timeoutHandler:v3];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = [*(a1 + 32) idleTimer];
  [v8 start];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (LNWatchdogTimer)idleTimer
{
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  idleTimer = self->_idleTimer;

  return idleTimer;
}

- (NSMutableSet)connectionOperations
{
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  connectionOperations = self->_connectionOperations;

  return connectionOperations;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[5].var0[6];
  *retstr->var0 = *&self[5].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)extendIdleTimeout
{
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  idleTimer = [(LNConnection *)self idleTimer];

  if (idleTimer)
  {
    idleTimer2 = [(LNConnection *)self idleTimer];
    [idleTimer2 reset];
  }
}

+ (void)invalidateAllConnections
{
  v2 = +[LNConnectionManager sharedInstance];
  [v2 invalidateAllConnections];
}

- (void)exportEntities:(id)entities metadata:(id)metadata withConfiguration:(id)configuration completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  sub_197648238(0, &qword_1EAF3ECB0, 0x1E69AC7C8);
  v10 = sub_19774F120();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  metadataCopy = metadata;
  configurationCopy = configuration;
  selfCopy = self;
  sub_197668A30(v10, metadataCopy, configurationCopy, sub_197669AB0, v11);
}

- (void)stageContextWithRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_19766A2AC(requestCopy, sub_19766AD34, v7);
}

- (void)linkUndoManager:(id)manager completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  managerCopy = manager;
  selfCopy = self;
  sub_19767004C(managerCopy, sub_197670A0C, v7);
}

- (void)fetchURLForEnumWithIdentifier:(id)identifier caseIdentifier:(id)caseIdentifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_19774EF50();
  v9 = v8;
  v10 = sub_19774EF50();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  selfCopy = self;
  sub_197671174(v7, v9, v10, v12, sub_1976728F8, v13);
}

- (void)fetchURLsForEnumWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_19774EF50();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_19767159C(v6, v8, sub_1976728E0, v9);
}

- (void)fetchValueForPropertyWithIdentifier:(id)identifier entity:(id)entity completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_19774EF50();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  entityCopy = entity;
  selfCopy = self;
  sub_197679200(v8, v10, entityCopy, sub_197669AB0, v11);
}

- (void)updateProperties:(id)properties withQuery:(id)query completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  sub_19767C65C();
  v8 = sub_19774F120();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  queryCopy = query;
  selfCopy = self;
  sub_19767BBF0(v8, queryCopy, sub_197670A0C, v9);
}

- (void)fetchEntityURL:(id)l completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  lCopy = l;
  selfCopy = self;
  sub_1976A82FC(lCopy, sub_1976728F8, v7);
}

- (void)fetchActionOutputValue:(id)value completionHandler:(id)handler
{
  valueCopy = value;
  handlerCopy = handler;
  if ([valueCopy isDeferred])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__LNConnection_FetchActionOutputValue__fetchActionOutputValue_completionHandler___block_invoke;
    v9[3] = &unk_1E74B1B10;
    v12 = handlerCopy;
    v10 = valueCopy;
    selfCopy = self;
    [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v9];
  }

  else
  {
    value = [valueCopy value];
    (*(handlerCopy + 2))(handlerCopy, value, 0);
  }
}

void __81__LNConnection_FetchActionOutputValue__fetchActionOutputValue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchActionOutputValueOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchActionOutputValueOperation *)v3 initWithConnectionInterface:v7 actionOutput:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchDestinationMDMAccountIdentifierForAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__LNConnection_FetchMDMProperties__fetchDestinationMDMAccountIdentifierForAction_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = actionCopy;
  v8 = actionCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __100__LNConnection_FetchMDMProperties__fetchDestinationMDMAccountIdentifierForAction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchMDMPropertiesConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchMDMPropertiesConnectionOperation *)v3 initWithConnectionInterface:v7 action:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchAppShortcutParametersForMangledName:(id)name withCompletionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __107__LNConnection_FetchAppShortcutParameters__fetchAppShortcutParametersForMangledName_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  v11 = nameCopy;
  v12 = handlerCopy;
  v10[4] = self;
  v8 = nameCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __107__LNConnection_FetchAppShortcutParameters__fetchAppShortcutParametersForMangledName_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [LNFetchAppShortcutParametersConnectionOperation alloc];
    v4 = [*(a1 + 32) queue];
    v5 = [(LNFetchAppShortcutParametersConnectionOperation *)v3 initWithConnectionInterface:v6 queue:v4 appShortcutProviderMangledName:*(a1 + 40) completionHandler:*(a1 + 48)];

    [*(a1 + 32) enqueueConnectionOperation:v5];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchAppShortcutParametersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __92__LNConnection_FetchAppShortcutParameters__fetchAppShortcutParametersWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E74B1AC0;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v6];
}

void __92__LNConnection_FetchAppShortcutParameters__fetchAppShortcutParametersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [LNFetchAppShortcutParametersConnectionOperation alloc];
    v4 = [*(a1 + 32) queue];
    v5 = [(LNFetchAppShortcutParametersConnectionOperation *)v3 initWithConnectionInterface:v6 queue:v4 appShortcutProviderMangledName:0 completionHandler:*(a1 + 40)];

    [*(a1 + 32) enqueueConnectionOperation:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchDisplayRepresentationForActions:(id)actions completionHandler:(id)handler
{
  actionsCopy = actions;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__LNConnection_FetchDisplayRepresentation__fetchDisplayRepresentationForActions_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = actionsCopy;
  v8 = actionsCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __99__LNConnection_FetchDisplayRepresentation__fetchDisplayRepresentationForActions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchDisplayRepresentationConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchDisplayRepresentationConnectionOperation *)v3 initWithConnectionInterface:v7 actions:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)getListenerEndpointForBundleIdentifier:(id)identifier action:(id)action completionHandler:(id)handler
{
  identifierCopy = identifier;
  actionCopy = action;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__LNConnection_FetchListenerEndpoint__getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke;
  v14[3] = &unk_1E74B28E0;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = actionCopy;
  v17 = handlerCopy;
  v11 = actionCopy;
  v12 = identifierCopy;
  v13 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v14];
}

void __103__LNConnection_FetchListenerEndpoint__getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [LNFetchListenerEndpointConnectionOperation alloc];
    v4 = [*(a1 + 32) queue];
    v5 = [(LNFetchListenerEndpointConnectionOperation *)v3 initWithConnectionInterface:v6 queue:v4 bundleIdentifier:*(a1 + 40) action:*(a1 + 48) completionHandler:*(a1 + 56)];

    [*(a1 + 32) enqueueConnectionOperation:v5];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)fetchOptionsForAction:(id)action actionMetadata:(id)metadata parameterMetadata:(id)parameterMetadata optionsProviderReference:(id)reference searchTerm:(id)term localeIdentifier:(id)identifier completionHandler:(id)handler
{
  actionCopy = action;
  metadataCopy = metadata;
  parameterMetadataCopy = parameterMetadata;
  referenceCopy = reference;
  termCopy = term;
  identifierCopy = identifier;
  handlerCopy = handler;
  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  if ([effectiveBundleIdentifiers count] != 1)
  {
    goto LABEL_15;
  }

  v45 = identifierCopy;
  v46 = actionCopy;
  effectiveBundleIdentifiers2 = [metadataCopy effectiveBundleIdentifiers];
  firstObject = [effectiveBundleIdentifiers2 firstObject];
  if ([firstObject type] != 3)
  {

    identifierCopy = v45;
    actionCopy = v46;
LABEL_15:

    goto LABEL_16;
  }

  [parameterMetadataCopy name];
  v25 = v44 = referenceCopy;
  v26 = [v25 isEqualToString:@"app"];

  referenceCopy = v44;
  identifierCopy = v45;
  actionCopy = v46;
  if (v26)
  {
    effectiveBundleIdentifiers3 = [metadataCopy effectiveBundleIdentifiers];
    firstObject2 = [effectiveBundleIdentifiers3 firstObject];

    bundleIdentifier = [firstObject2 bundleIdentifier];
    v30 = bundleIdentifier;
    if (bundleIdentifier != @"com.apple.UIKitCore")
    {
      if (!bundleIdentifier || (v31 = [(__CFString *)bundleIdentifier isEqualToString:@"com.apple.UIKitCore"], v30, (v31 & 1) == 0))
      {
        bundleIdentifier2 = [firstObject2 bundleIdentifier];
        v33 = bundleIdentifier2;
        if (bundleIdentifier2 != @"com.apple.UIKit")
        {
          if (!bundleIdentifier2 || (v34 = [(__CFString *)bundleIdentifier2 isEqualToString:@"com.apple.UIKit"], v33, (v34 & 1) == 0))
          {
            bundleIdentifier3 = [firstObject2 bundleIdentifier];
            if (bundleIdentifier3 != @"com.apple.AppKit")
            {
              v36 = bundleIdentifier3;
              if (!bundleIdentifier3)
              {

LABEL_23:
                v40 = MEMORY[0x1E69635F8];
                effectiveBundleIdentifier = [(LNConnection *)self effectiveBundleIdentifier];
                [effectiveBundleIdentifier url];
                v43 = v42 = firstObject2;
                v56 = 0;
                v39 = [v40 ln_dynamicOptionsWithAppsImplementingFrameworkAtURL:v43 matchingSearchTerm:termCopy options:0 error:&v56];
                v38 = v56;

                firstObject2 = v42;
                goto LABEL_21;
              }

              v37 = [(__CFString *)bundleIdentifier3 isEqualToString:@"com.apple.AppKit"];

              if ((v37 & 1) == 0)
              {
                goto LABEL_23;
              }

LABEL_20:
              v57 = 0;
              v39 = [MEMORY[0x1E69635F8] ln_dynamicOptionsWithAppsImplementingFrameworkAtURL:0 matchingSearchTerm:termCopy options:0 error:&v57];
              v38 = v57;
LABEL_21:
              actionCopy = v46;
              handlerCopy[2](handlerCopy, v39, v38);

              referenceCopy = v44;
              identifierCopy = v45;
              goto LABEL_17;
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_16:
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __156__LNConnection_FetchOptions__fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler___block_invoke;
  v47[3] = &unk_1E74B0980;
  v55 = handlerCopy;
  v48 = actionCopy;
  v49 = metadataCopy;
  v50 = parameterMetadataCopy;
  v51 = referenceCopy;
  v52 = termCopy;
  v53 = identifierCopy;
  selfCopy = self;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v47];

  v38 = v55;
LABEL_17:
}

void __156__LNConnection_FetchOptions__fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (v12)
  {
    v3 = [LNFetchOptionsConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = [*(a1 + 80) queue];
    v11 = [(LNFetchOptionsConnectionOperation *)v3 initWithConnectionInterface:v12 action:v4 actionMetadata:v5 parameterMetadata:v6 optionsProviderReference:v7 searchTerm:v8 localeIdentifier:v9 queue:v10 completionHandler:*(a1 + 88)];

    [*(a1 + 80) enqueueConnectionOperation:v11];
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }
}

- (void)fetchActionForAppShortcutIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__LNConnection_FetchActionForAutoShortcutPhrase__fetchActionForAppShortcutIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = identifierCopy;
  v8 = identifierCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __104__LNConnection_FetchActionForAutoShortcutPhrase__fetchActionForAppShortcutIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchActionForAppShortcutIdentifierOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchActionForAppShortcutIdentifierOperation *)v3 initWithConnectionInterface:v7 appShortcutIdentifier:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchActionForAutoShortcutPhrase:(id)phrase completionHandler:(id)handler
{
  phraseCopy = phrase;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__LNConnection_FetchActionForAutoShortcutPhrase__fetchActionForAutoShortcutPhrase_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = phraseCopy;
  v8 = phraseCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __101__LNConnection_FetchActionForAutoShortcutPhrase__fetchActionForAutoShortcutPhrase_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchActionForAutoShortcutPhraseOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchActionForAutoShortcutPhraseOperation *)v3 initWithConnectionInterface:v7 autoShortcutPhrase:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)releaseAsyncSequence:(id)sequence completionHandler:(id)handler
{
  sequenceCopy = sequence;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__LNConnection_AsyncSequence__releaseAsyncSequence_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = sequenceCopy;
  v8 = sequenceCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __70__LNConnection_AsyncSequence__releaseAsyncSequence_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNAsyncSequenceReleaseOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNAsyncSequenceReleaseOperation *)v3 initWithConnectionInterface:v7 sequence:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)nextAsyncIteratorResults:(id)results completionHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__LNConnection_AsyncSequence__nextAsyncIteratorResults_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = resultsCopy;
  v8 = resultsCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __74__LNConnection_AsyncSequence__nextAsyncIteratorResults_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNAsyncIteratorNextResultsOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNAsyncIteratorNextResultsOperation *)v3 initWithConnectionInterface:v7 iterator:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)createAsyncIteratorForSequence:(id)sequence options:(id)options completionHandler:(id)handler
{
  sequenceCopy = sequence;
  optionsCopy = options;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__LNConnection_AsyncSequence__createAsyncIteratorForSequence_options_completionHandler___block_invoke;
  v14[3] = &unk_1E74B28E0;
  v15 = sequenceCopy;
  v16 = optionsCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = optionsCopy;
  v12 = sequenceCopy;
  v13 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v14];
}

void __88__LNConnection_AsyncSequence__createAsyncIteratorForSequence_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [LNAsyncIteratorCreateOperation alloc];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) queue];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __88__LNConnection_AsyncSequence__createAsyncIteratorForSequence_options_completionHandler___block_invoke_2;
    v13 = &unk_1E74B0C60;
    v8 = *(a1 + 56);
    v14 = *(a1 + 48);
    v15 = v8;
    v9 = [(LNAsyncIteratorCreateOperation *)v4 initWithConnectionInterface:v3 sequence:v5 options:v6 queue:v7 completionHandler:&v10];

    [*(a1 + 48) enqueueConnectionOperation:{v9, v10, v11, v12, v13}];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __88__LNConnection_AsyncSequence__createAsyncIteratorForSequence_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [[LNAsyncIterator alloc] initWithReference:v6 connection:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)performAllEntitiesQueryWithEntityMangledTypeName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__LNConnection_PerformQuery_Deprecated__performAllEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = nameCopy;
  v8 = nameCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __108__LNConnection_PerformQuery_Deprecated__performAllEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [LNPerformAllResultsQueryOperation alloc];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) queue];
    v9 = [(LNPerformAllResultsQueryOperation *)v6 initWithConnectionInterface:v10 entityMangledTypeName:v7 queue:v8 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v9];
  }

  else
  {
    if (!v5)
    {
      v5 = LNConnectionErrorWithCode(1003);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)performSuggestedEntitiesQueryWithEntityMangledTypeName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __114__LNConnection_PerformQuery_Deprecated__performSuggestedEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = nameCopy;
  v8 = nameCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __114__LNConnection_PerformQuery_Deprecated__performSuggestedEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [LNPerformSuggestedResultsQueryOperation alloc];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) queue];
    v9 = [(LNPerformSuggestedResultsQueryOperation *)v6 initWithConnectionInterface:v10 entityMangledTypeName:v7 queue:v8 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v9];
  }

  else
  {
    if (!v5)
    {
      v5 = LNConnectionErrorWithCode(1003);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)performSuggestedResultsQueryWithEntityType:(id)type completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__LNConnection_PerformQuery_Deprecated__performSuggestedResultsQueryWithEntityType_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = typeCopy;
  v8 = typeCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __102__LNConnection_PerformQuery_Deprecated__performSuggestedResultsQueryWithEntityType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [LNPerformSuggestedResultsQueryOperation alloc];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) queue];
    v9 = [(LNPerformSuggestedResultsQueryOperation *)v6 initWithConnectionInterface:v10 entityType:v7 queue:v8 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v9];
  }

  else
  {
    if (!v5)
    {
      v5 = LNConnectionErrorWithCode(1003);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)performQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__LNConnection_PerformQuery__performQuery_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = queryCopy;
  v8 = queryCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __61__LNConnection_PerformQuery__performQuery_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [LNPerformQueryConnectionOperation alloc];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) queue];
    v9 = [(LNPerformQueryConnectionOperation *)v6 initWithConnectionInterface:v10 query:v7 queue:v8 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v9];
  }

  else
  {
    if (!v5)
    {
      v5 = LNConnectionErrorWithCode(1003);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)performConfigurableQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__LNConnection_PerformQuery__performConfigurableQuery_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = queryCopy;
  v8 = queryCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __73__LNConnection_PerformQuery__performConfigurableQuery_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [LNPerformConfigurableQueryConnectionOperation alloc];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) queue];
    v9 = [(LNPerformConfigurableQueryConnectionOperation *)v6 initWithConnectionInterface:v10 query:v7 queue:v8 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v9];
  }

  else
  {
    if (!v5)
    {
      v5 = LNConnectionErrorWithCode(1003);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchActionAppContextForAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__LNConnection_FetchActionAppContext__fetchActionAppContextForAction_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = actionCopy;
  v8 = actionCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __88__LNConnection_FetchActionAppContext__fetchActionAppContextForAction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchActionAppContextConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchActionAppContextConnectionOperation *)v3 initWithConnectionInterface:v7 action:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchStateForAppIntentIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__LNConnection_FetchAppIntentState__fetchStateForAppIntentIdentifiers_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = identifiersCopy;
  v8 = identifiersCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __89__LNConnection_FetchAppIntentState__fetchStateForAppIntentIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchAppIntentStateConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchAppIntentStateConnectionOperation *)v3 initWithConnectionInterface:v7 appIntentIdentifiers:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchDefaultValueForAction:(id)action actionMetadata:(id)metadata parameterIdentifier:(id)identifier completionHandler:(id)handler
{
  actionCopy = action;
  metadataCopy = metadata;
  identifierCopy = identifier;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __122__LNConnection_FetchOptionsDefaultValue__fetchDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E74B1358;
  selfCopy = self;
  v23 = handlerCopy;
  v19 = actionCopy;
  v20 = metadataCopy;
  v21 = identifierCopy;
  v14 = identifierCopy;
  v15 = metadataCopy;
  v16 = actionCopy;
  v17 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v18];
}

void __122__LNConnection_FetchOptionsDefaultValue__fetchDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    v3 = [LNFetchParameterOptionDefaultValueConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) queue];
    v8 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)v3 initWithConnectionInterface:v9 action:v4 actionMetadata:v5 parameterIdentifier:v6 queue:v7 completionHandler:*(a1 + 64)];

    [*(a1 + 56) enqueueConnectionOperation:v8];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (void)fetchOptionsDefaultValueForAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__LNConnection_FetchOptionsDefaultValue__fetchOptionsDefaultValueForAction_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = actionCopy;
  v8 = actionCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __94__LNConnection_FetchOptionsDefaultValue__fetchOptionsDefaultValueForAction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchOptionsDefaultValueConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchOptionsDefaultValueConnectionOperation *)v3 initWithConnectionInterface:v7 action:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchSuggestedActionsForStartWorkoutAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__LNConnection_FetchSuggestedActions__fetchSuggestedActionsForStartWorkoutAction_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = actionCopy;
  v8 = actionCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __100__LNConnection_FetchSuggestedActions__fetchSuggestedActionsForStartWorkoutAction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchSuggestedActionsForStartWorkoutConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchSuggestedActionsForStartWorkoutConnectionOperation *)v3 initWithConnectionInterface:v7 action:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchSuggestedActionsWithSiriLanguageCode:(id)code completionHandler:(id)handler
{
  codeCopy = code;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__LNConnection_FetchSuggestedActions__fetchSuggestedActionsWithSiriLanguageCode_completionHandler___block_invoke;
  v10[3] = &unk_1E74B1B10;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = codeCopy;
  v8 = codeCopy;
  v9 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v10];
}

void __99__LNConnection_FetchSuggestedActions__fetchSuggestedActionsWithSiriLanguageCode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [LNFetchSuggestedActionsConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queue];
    v6 = [(LNFetchSuggestedActionsConnectionOperation *)v3 initWithConnectionInterface:v7 siriLanguageCode:v4 queue:v5 completionHandler:*(a1 + 48)];

    [*(a1 + 40) enqueueConnectionOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__LNConnection_FetchSuggestedActions__fetchSuggestedActionsFromViewWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E74B1AC0;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v6];
}

void __90__LNConnection_FetchSuggestedActions__fetchSuggestedActionsFromViewWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [LNFetchSuggestedActionsFromViewAppIntentConnectionOperation alloc];
    v4 = [*(a1 + 32) queue];
    v5 = [(LNFetchSuggestedActionsFromViewAppIntentConnectionOperation *)v3 initWithConnectionInterface:v6 queue:v4 completionHandler:*(a1 + 40)];

    [*(a1 + 32) enqueueConnectionOperation:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateAppShortcutParametersWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__LNConnection_AppShortcutParameters__updateAppShortcutParametersWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E74B1980;
  v11[4] = self;
  if ([LNEntitlementsValidator validateEntitlement:@"com.apple.private.appintents.update-app-shortcut-apps" forCurrentTaskWithValidator:v11])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__LNConnection_AppShortcutParameters__updateAppShortcutParametersWithCompletionHandler___block_invoke_9;
    v9[3] = &unk_1E74B1AC0;
    v9[4] = self;
    v10 = handlerCopy;
    [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v9];
    v5 = v10;
  }

  else
  {
    v6 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      bundleIdentifier = [(LNConnection *)self bundleIdentifier];
      *buf = 138543362;
      v13 = bundleIdentifier;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_ERROR, "Unable to update App Shortcuts for %{public}@ because the current process isn't entitled to do so.", buf, 0xCu);
    }

    v5 = LNConnectionErrorWithCode(1004);
    (*(handlerCopy + 2))(handlerCopy, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __88__LNConnection_AppShortcutParameters__updateAppShortcutParametersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [*(a1 + 32) bundleIdentifier];
    v5 = [v3 containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __88__LNConnection_AppShortcutParameters__updateAppShortcutParametersWithCompletionHandler___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [LNUpdateAppShortcutParametersOperation alloc];
    v7 = [*(a1 + 32) queue];
    v8 = [(LNUpdateAppShortcutParametersOperation *)v6 initWithConnectionInterface:v9 queue:v7 completionHandler:*(a1 + 40)];

    [*(a1 + 32) enqueueConnectionOperation:v8];
  }

  else
  {
    if (!v5)
    {
      v5 = LNConnectionErrorWithCode(1003);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)identifier forEntityIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (+[LNFeatureFlags isViewActionAnnotationEnabled])
  {
    v10 = getLNLogCategoryView();
    v11 = v10;
    if (&self->super.isa + 1 >= 2 && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19763D000, v11, OS_SIGNPOST_INTERVAL_BEGIN, self, "LinkServices_fetchStructuredData", "", buf, 2u);
    }

    defaultOptions = [objc_opt_class() defaultOptions];
    if (defaultOptions)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = defaultOptions;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = v13;

    [v15 setOpenApplicationPriority:2];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __111__LNConnection_FetchViewObjects__fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler___block_invoke;
    v16[3] = &unk_1E74B21C0;
    v19 = handlerCopy;
    identifierCopy = identifier;
    v17 = identifiersCopy;
    selfCopy = self;
    selfCopy2 = self;
    [(LNConnection *)self getConnectionInterfaceWithOptions:v15 completionHandler:v16];
  }

  else
  {
    v14 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v14, OS_LOG_TYPE_INFO, "Link/viewActions flag disabled. Structured data fetching skipped", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], 0);
  }
}

void __111__LNConnection_FetchViewObjects__fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [LNFetchStructuredDataConnectionOperation alloc];
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) queue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __111__LNConnection_FetchViewObjects__fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler___block_invoke_2;
    v14 = &unk_1E74B20B8;
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v15 = v8;
    v16 = v9;
    v10 = [(LNFetchStructuredDataConnectionOperation *)v4 initWithConnectionInterface:v3 typeIdentifier:v5 entityIdentifiers:v6 queue:v7 completionHandler:&v11];

    [*(a1 + 40) enqueueConnectionOperation:{v10, v11, v12, v13, v14}];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __111__LNConnection_FetchViewObjects__fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = getLNLogCategoryView();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "LinkServices_fetchStructuredData", "", v5, 2u);
  }
}

- (void)fetchViewActionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[LNFeatureFlags isViewActionAnnotationEnabled])
  {
    v5 = getLNLogCategoryView();
    v6 = v5;
    if (&self->super.isa + 1 >= 2 && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, self, "LinkServices_fetchViewActions", "", buf, 2u);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__LNConnection_FetchViewObjects__fetchViewActionsWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E74B2090;
    v8[4] = self;
    v9 = handlerCopy;
    selfCopy = self;
    [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v8];
  }

  else
  {
    v7 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_INFO, "Link/viewActions flag disabled. Action fetching skipped", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0], 0);
  }
}

void __72__LNConnection_FetchViewObjects__fetchViewActionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [LNFetchViewActionsConnectionOperation alloc];
    v5 = [*(a1 + 32) queue];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __72__LNConnection_FetchViewObjects__fetchViewActionsWithCompletionHandler___block_invoke_2;
    v12 = &unk_1E74B2040;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v13 = v6;
    v14 = v7;
    v8 = [(LNFetchViewActionsConnectionOperation *)v4 initWithConnectionInterface:v3 queue:v5 completionHandler:&v9];

    [*(a1 + 32) enqueueConnectionOperation:{v8, v9, v10, v11, v12}];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __72__LNConnection_FetchViewObjects__fetchViewActionsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = getLNLogCategoryView();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "LinkServices_fetchViewActions", "", v5, 2u);
  }
}

- (void)fetchViewEntitiesWithInteractionIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (+[LNFeatureFlags isViewActionAnnotationEnabled])
  {
    [(LNConnection *)self fetchViewEntitiesWithOptions:0 interactionIDs:dsCopy completionHandler:handlerCopy];
  }

  else
  {
    v8 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Link/viewActions flag disabled. Entity fetching skipped", v9, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0], 0);
  }
}

- (void)fetchViewEntitiesWithOptions:(id)options interactionIDs:(id)ds completionHandler:(id)handler
{
  optionsCopy = options;
  dsCopy = ds;
  handlerCopy = handler;
  if (+[LNFeatureFlags isViewActionAnnotationEnabled])
  {
    v11 = getLNLogCategoryView();
    v12 = v11;
    if (&self->super.isa + 1 >= 2 && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19763D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, self, "LinkServices_fetchViewEntitiesWithOptions", "", buf, 2u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __96__LNConnection_FetchViewObjects__fetchViewEntitiesWithOptions_interactionIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E74B2068;
    v17 = handlerCopy;
    v15 = dsCopy;
    selfCopy = self;
    selfCopy2 = self;
    [(LNConnection *)self getConnectionInterfaceWithOptions:optionsCopy completionHandler:v14];
  }

  else
  {
    v13 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_INFO, "Link/viewActions flag disabled. Entity fetching skipped", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0], 0);
  }
}

void __96__LNConnection_FetchViewObjects__fetchViewEntitiesWithOptions_interactionIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [LNFetchViewEntitiesConnectionOperation alloc];
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) queue];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __96__LNConnection_FetchViewObjects__fetchViewEntitiesWithOptions_interactionIDs_completionHandler___block_invoke_2;
    v12 = &unk_1E74B2040;
    v7 = *(a1 + 48);
    v14 = *(a1 + 56);
    v13 = v7;
    v8 = [(LNFetchViewEntitiesConnectionOperation *)v4 initWithConnectionInterface:v3 interactionIDs:v5 queue:v6 completionHandler:&v9];

    [*(a1 + 40) enqueueConnectionOperation:{v8, v9, v10, v11, v12}];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __96__LNConnection_FetchViewObjects__fetchViewEntitiesWithOptions_interactionIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = getLNLogCategoryView();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "LinkServices_fetchViewEntitiesWithOptions", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)resolveEntitiesForInteractionIDs:(id)ds bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = getLNLogCategoryView();
  v11 = os_signpost_id_generate(v10);

  v12 = getLNLogCategoryView();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LinkServices_resolveEntitiesForInteractionIDs", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__LNConnection_FetchViewObjects__resolveEntitiesForInteractionIDs_bundleIdentifier_completionHandler___block_invoke;
  aBlock[3] = &unk_1E74B2040;
  v47 = v11;
  v14 = handlerCopy;
  v46 = v14;
  v15 = _Block_copy(aBlock);
  if (+[LNFeatureFlags isViewActionAnnotationEnabled])
  {
    v16 = [dsCopy copy];
    v17 = [identifierCopy copy];
    v18 = [v16 count];
    v19 = getLNLogCategoryView();
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v49 = v16;
        v50 = 2112;
        v51 = v17;
        _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_INFO, "Requesting entities for identifiers %@ from %@", buf, 0x16u);
      }

      v21 = getLNLogCategoryView();
      v22 = os_signpost_id_generate(v21);

      v23 = getLNLogCategoryView();
      v24 = v23;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19763D000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "LinkServices_establishViewFetchConnection", "", buf, 2u);
      }

      v25 = [LNConnectionPolicy policyWithBundleIdentifier:v17];
      v44 = 0;
      v26 = [v25 connectionWithError:&v44];
      v39 = v44;
      v27 = getLNLogCategoryView();
      v28 = v27;
      if (v26)
      {
        v38 = v25;
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19763D000, v28, OS_SIGNPOST_INTERVAL_END, v22, "LinkServices_establishViewFetchConnection", "", buf, 2u);
        }

        v29 = objc_opt_new();
        [v29 setSceneless:0];
        [v29 setOpenApplicationPriority:2];
        v30 = getLNLogCategoryView();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v49 = v17;
          v50 = 2112;
          v51 = v16;
          _os_log_impl(&dword_19763D000, v30, OS_LOG_TYPE_INFO, "Fetching entities from %@ for interactionIDs %@", buf, 0x16u);
        }

        v31 = getLNLogCategoryView();
        v32 = os_signpost_id_generate(v31);

        v33 = getLNLogCategoryView();
        v34 = v33;
        if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19763D000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "LinkServices_fetchViewEntitiesWithOptions", "", buf, 2u);
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __102__LNConnection_FetchViewObjects__resolveEntitiesForInteractionIDs_bundleIdentifier_completionHandler___block_invoke_35;
        v40[3] = &unk_1E74B21E8;
        v43 = v32;
        v41 = v17;
        v42 = v15;
        [v26 fetchViewEntitiesWithOptions:v29 interactionIDs:v16 completionHandler:v40];

        v25 = v38;
        v35 = v39;
      }

      else
      {
        v35 = v39;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v49 = v17;
          v50 = 2114;
          v51 = v39;
          _os_log_impl(&dword_19763D000, v28, OS_LOG_TYPE_ERROR, "Error establishing connection with %@ to fetch view entities: %{public}@", buf, 0x16u);
        }

        (*(v15 + 2))(v15, MEMORY[0x1E695E0F0], v39);
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_ERROR, "No interactionIDs were provided, exiting.", buf, 2u);
      }

      (*(v15 + 2))(v15, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v36 = getLNLogCategoryView();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v36, OS_LOG_TYPE_INFO, "Link/viewActions flag disabled. Entity fetching skipped", buf, 2u);
    }

    (*(v15 + 2))(v15, MEMORY[0x1E695E0F0], 0);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __102__LNConnection_FetchViewObjects__resolveEntitiesForInteractionIDs_bundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = getLNLogCategoryView();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "LinkServices_resolveEntitiesForInteractionIDs", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __102__LNConnection_FetchViewObjects__resolveEntitiesForInteractionIDs_bundleIdentifier_completionHandler___block_invoke_35(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getLNLogCategoryView();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "LinkServices_fetchViewEntitiesWithOptions", "", &v13, 2u);
  }

  if (v6)
  {
    v10 = getLNLogCategoryView();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_ERROR, "Error fetching entities from %@: %@", &v13, 0x16u);
    }
  }

  (*(a1[5] + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)fetchEntitiesFromActiveApplicationsWithInteractionIDs:(id)ds bundleIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v87 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v11 = getLNLogCategoryView();
  v12 = v11;
  if (self + 1 >= 2 && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, self, "LinkServices_fetchEntitiesFromActiveApplications", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke;
  aBlock[3] = &unk_1E74B20B8;
  selfCopy = self;
  v13 = handlerCopy;
  v81 = v13;
  v14 = _Block_copy(aBlock);
  if (+[LNFeatureFlags isViewActionAnnotationEnabled])
  {
    if (identifiersCopy && [identifiersCopy count])
    {
      v15 = identifiersCopy;
LABEL_18:
      v24 = getLNLogCategoryView();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = dsCopy;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_19763D000, v24, OS_LOG_TYPE_INFO, "Requesting entities for identifiers %@ for bundles %@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v84 = __Block_byref_object_copy__12786;
      v85 = __Block_byref_object_dispose__12787;
      v86 = objc_alloc_init(MEMORY[0x1E695DFD8]);
      v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v74 = 0;
      v75 = &v74;
      v76 = 0x2810000000;
      v77 = &unk_197781967;
      v78 = 0;
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = __Block_byref_object_copy__12786;
      v72 = __Block_byref_object_dispose__12787;
      v73 = 0;
      v62 = 0;
      v63 = &v62;
      v64 = 0x3032000000;
      v65 = __Block_byref_object_copy__12786;
      v66 = __Block_byref_object_dispose__12787;
      v67 = 0;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_15;
      v61[3] = &unk_1E74B26D0;
      v61[4] = &v68;
      v26 = _Block_copy(v61);
      configurationForDefaultMainDisplayMonitor = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
      [configurationForDefaultMainDisplayMonitor setNeedsUserInteractivePriority:1];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_2;
      v50[3] = &unk_1E74B2170;
      v56 = &v74;
      v57 = &v68;
      v58 = &v62;
      v28 = v26;
      v54 = v28;
      v59 = buf;
      identifiersCopy = v15;
      v51 = identifiersCopy;
      v29 = v25;
      v52 = v29;
      v53 = dsCopy;
      selfCopy2 = self;
      v30 = v14;
      v55 = v30;
      [configurationForDefaultMainDisplayMonitor setTransitionHandler:v50];
      v31 = getLNLogCategoryView();
      v32 = v31;
      if (self + 1 >= 2 && os_signpost_enabled(v31))
      {
        *v49 = 0;
        _os_signpost_emit_with_name_impl(&dword_19763D000, v32, OS_SIGNPOST_INTERVAL_BEGIN, self, "LinkServices_invokeFBSDisplayLayoutMonitor", "", v49, 2u);
      }

      os_unfair_lock_lock(v75 + 8);
      v33 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
      v34 = v69[5];
      v69[5] = v33;

      v35 = [LNWatchdogTimer alloc];
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_32;
      v44 = &unk_1E74B2198;
      v47 = &v74;
      v48 = &v68;
      v36 = v28;
      v45 = v36;
      v46 = v30;
      v37 = [(LNWatchdogTimer *)v35 initWithTimeoutInterval:&v41 timeoutHandler:0.5];
      v38 = v63[5];
      v63[5] = v37;

      [v63[5] start];
      os_unfair_lock_unlock(v75 + 8);

      _Block_object_dispose(&v62, 8);
      _Block_object_dispose(&v68, 8);

      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_25;
    }

    v17 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_DEBUG, "No bundleIDs provided, using all enabled applications", buf, 2u);
    }

    v18 = getLNLogCategoryView();
    v19 = v18;
    if (self + 1 >= 2 && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19763D000, v19, OS_SIGNPOST_INTERVAL_BEGIN, self, "LinkServices_fetchMetadataBundles", "", buf, 2u);
    }

    v20 = objc_alloc_init(LNMetadataProvider);
    v79 = 0;
    v15 = [(LNMetadataProvider *)v20 bundlesWithError:&v79];
    v21 = v79;

    v22 = getLNLogCategoryView();
    v23 = v22;
    if (self + 1 >= 2 && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19763D000, v23, OS_SIGNPOST_INTERVAL_END, self, "LinkServices_fetchMetadataBundles", "", buf, 2u);
    }

    if (v15 && [v15 count])
    {

      goto LABEL_18;
    }

    v39 = getLNLogCategoryView();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v39, OS_LOG_TYPE_ERROR, "Aborting early because no bundles could be found to query", buf, 2u);
    }

    (*(v14 + 2))(v14, 0, v21);
    identifiersCopy = v15;
  }

  else
  {
    v16 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v16, OS_LOG_TYPE_INFO, "Link/viewActions flag disabled. Action fetching skipped", buf, 2u);
    }

    (*(v14 + 2))(v14, MEMORY[0x1E695E0F8], 0);
  }

LABEL_25:

  v40 = *MEMORY[0x1E69E9840];
}

void __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = getLNLogCategoryView();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "LinkServices_fetchEntitiesFromActiveApplications", "", v11, 2u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_15(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v90 = *MEMORY[0x1E69E9840];
  v59 = a2;
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock((*(*(a1 + 72) + 8) + 32));
  v60 = v7;
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
    if (v7)
    {
      v58 = v8;
      os_unfair_lock_lock((*(*(a1 + 72) + 8) + 32));
      [*(*(*(a1 + 88) + 8) + 40) cancel];
      (*(*(a1 + 56) + 16))();
      os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
      v9 = MEMORY[0x1E695DFD8];
      v10 = [v7 elements];
      v11 = [v10 if_compactMap:&__block_literal_global_12793];
      v12 = [v9 setWithArray:v11];
      v13 = *(*(a1 + 96) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = getLNLogCategoryView();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19763D000, v15, OS_LOG_TYPE_INFO, "Querying all entities for each application", &buf, 2u);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v16 = *(a1 + 32);
      v17 = [v16 countByEnumeratingWithState:&v75 objects:v89 count:16];
      if (v17)
      {
        v18 = *v76;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v76 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v75 + 1) + 8 * i);
            if ([*(*(*(a1 + 96) + 8) + 40) containsObject:v20])
            {
              v21 = *(a1 + 48);
              if (v21)
              {
                [*(a1 + 40) setObject:v21 forKeyedSubscript:v20];
              }

              else
              {
                v23 = objc_opt_new();
                [*(a1 + 40) setObject:v23 forKeyedSubscript:v20];
              }
            }

            else
            {
              v22 = getLNLogCategoryView();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v20;
                _os_log_impl(&dword_19763D000, v22, OS_LOG_TYPE_DEBUG, "Filtering out offscreen bundle %@", &buf, 0xCu);
              }
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v75 objects:v89 count:16];
        }

        while (v17);
      }

      v24 = getLNLogCategoryView();
      v25 = v24;
      v26 = *(a1 + 104);
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_19763D000, v25, OS_SIGNPOST_INTERVAL_END, v26, "LinkServices_invokeFBSDisplayLayoutMonitor", "", &buf, 2u);
      }

      v27 = getLNLogCategoryView();
      v28 = v27;
      v29 = *(a1 + 104);
      if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_19763D000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v29, "LinkServices_establishViewFetchConnections", "", &buf, 2u);
      }

      v30 = [*(a1 + 40) allKeys];
      v31 = [v30 if_compactMap:&__block_literal_global_24];

      v32 = getLNLogCategoryView();
      v33 = v32;
      v34 = *(a1 + 104);
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_19763D000, v33, OS_SIGNPOST_INTERVAL_END, v34, "LinkServices_establishViewFetchConnections", "", &buf, 2u);
      }

      v62 = objc_opt_new();
      [v62 setSceneless:0];
      [v62 setOpenApplicationPriority:2];
      v35 = getLNLogCategoryView();
      v36 = v35;
      v37 = *(a1 + 104);
      if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_19763D000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v37, "LinkServices_aggregatingEntities", "", &buf, 2u);
      }

      v38 = getLNLogCategoryView();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [*(a1 + 40) allKeys];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v39;
        _os_log_impl(&dword_19763D000, v38, OS_LOG_TYPE_DEFAULT, "Aggregating entities from bundles %@", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v85 = 0x3032000000;
      v86 = __Block_byref_object_copy__12786;
      v87 = __Block_byref_object_dispose__12787;
      v88 = objc_alloc_init(LNViewEntityAggregationResult);
      v40 = dispatch_group_create();
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = v31;
      v41 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v41)
      {
        v42 = *v72;
        do
        {
          v43 = 0;
          do
          {
            if (*v72 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v71 + 1) + 8 * v43);
            dispatch_group_enter(v40);
            v45 = *(a1 + 40);
            v46 = [v44 bundleIdentifier];
            v47 = [v45 objectForKeyedSubscript:v46];

            v48 = getLNLogCategoryView();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = [v44 bundleIdentifier];
              *v79 = 138412546;
              v80 = v49;
              v81 = 2112;
              v82 = v47;
              _os_log_impl(&dword_19763D000, v48, OS_LOG_TYPE_INFO, "Fetching entities from %@ for interactionIDs %@", v79, 0x16u);
            }

            v50 = getLNLogCategoryView();
            v51 = v50;
            if (v44 + 1 >= 2 && os_signpost_enabled(v50))
            {
              *v79 = 0;
              _os_signpost_emit_with_name_impl(&dword_19763D000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v44, "LinkServices_fetchViewEntitiesWithOptions", "", v79, 2u);
            }

            if ([v47 count])
            {
              v52 = v47;
            }

            else
            {
              v52 = 0;
            }

            v67[0] = MEMORY[0x1E69E9820];
            v67[1] = 3221225472;
            v67[2] = __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_27;
            v67[3] = &unk_1E74B2120;
            p_buf = &buf;
            v67[4] = v44;
            v68 = v40;
            v70 = v44;
            [v44 fetchViewEntitiesWithOptions:v62 interactionIDs:v52 completionHandler:v67];

            ++v43;
          }

          while (v41 != v43);
          v53 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
          v41 = v53;
        }

        while (v53);
      }

      v54 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_28;
      block[3] = &unk_1E74B2148;
      v66 = *(a1 + 104);
      v64 = *(a1 + 64);
      v65 = &buf;
      dispatch_group_notify(v40, v54, block);

      _Block_object_dispose(&buf, 8);
      v8 = v58;
    }
  }

  else
  {
    v55 = v8;
    v56 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19763D000, v56, OS_LOG_TYPE_ERROR, "Detected second call to transition handler before first has completed.", &buf, 2u);
    }

    os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
    v8 = v55;
  }

  v57 = *MEMORY[0x1E69E9840];
}

void __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_32(void *a1)
{
  os_unfair_lock_lock((*(a1[6] + 8) + 32));
  if (*(*(a1[7] + 8) + 40))
  {
    (*(a1[4] + 16))();
    os_unfair_lock_unlock((*(a1[6] + 8) + 32));
    v2 = a1[5];
    v4 = LNConnectionErrorWithCode(2200);
    (*(v2 + 16))(v2, 0, v4);
  }

  else
  {
    v3 = (*(a1[6] + 8) + 32);

    os_unfair_lock_unlock(v3);
  }
}

void __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [v6 bundleIdentifier];
  [v5 addResults:v8 error:v7 forBundle:v9];

  dispatch_group_leave(*(a1 + 40));
  v10 = getLNLogCategoryView();
  v11 = v10;
  v12 = *(a1 + 56);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v11, OS_SIGNPOST_INTERVAL_END, v12, "LinkServices_fetchViewEntitiesWithOptions", "", v13, 2u);
  }
}

void __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_28(void *a1)
{
  v3 = getLNLogCategoryView();
  v4 = v3;
  v5 = a1[6];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v4, OS_SIGNPOST_INTERVAL_END, v5, "LinkServices_aggregatingEntities", "", buf, 2u);
  }

  v6 = getLNLogCategoryView();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_DEFAULT, "Entity aggregation completed", v12, 2u);
  }

  v7 = a1[4];
  v8 = [*(*(a1[5] + 8) + 40) entities];
  v9 = [v8 count];
  if (v9)
  {
    v1 = [*(*(a1[5] + 8) + 40) entities];
    v10 = [v1 copy];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(*(a1[5] + 8) + 40) error];
  (*(v7 + 16))(v7, v10, v11);

  if (v9)
  {
  }
}

id __124__LNConnection_FetchViewObjects__fetchEntitiesFromActiveApplicationsWithInteractionIDs_bundleIdentifiers_completionHandler___block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [LNConnectionPolicy policyWithBundleIdentifier:v2];
  v9 = 0;
  v4 = [v3 connectionWithError:&v9];
  v5 = v9;
  if (!v4)
  {
    v6 = getLNLogCategoryView();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v2;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_ERROR, "Error establishing connection with %@ to fetch view entities: %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)fetchEntitiesFromActiveApplicationsWithInteractionIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (+[LNFeatureFlags isViewActionAnnotationEnabled])
  {
    [self fetchEntitiesFromActiveApplicationsWithInteractionIDs:dsCopy bundleIdentifiers:0 completionHandler:handlerCopy];
  }

  else
  {
    v8 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Link/viewActions flag disabled. Entity fetching skipped", v9, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], 0);
  }
}

- (void)setAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_auditToken.val[4] = *&token->var0[4];
  *self->_auditToken.val = v3;
}

- (void)invalidateAssertionsForConnectionOperation:(id)operation
{
  v24 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    *buf = 138543618;
    v19 = logPrefix;
    v20 = 2114;
    v21 = operationCopy;
    _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_INFO, "%{public}@ Invalidating assertions for %{public}@", buf, 0x16u);
  }

  if ([operationCopy priority])
  {
    assertionsMapTable = [(LNConnection *)self assertionsMapTable];
    v9 = [assertionsMapTable objectForKey:operationCopy];

    [v9 removeObserver:self];
    if ([v9 isValid])
    {
      v17 = 0;
      v10 = [v9 invalidateWithError:&v17];
      v11 = v17;
      if ((v10 & 1) == 0)
      {
        v12 = getLNLogCategoryConnection();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          logPrefix2 = [(LNConnection *)self logPrefix];
          *buf = 138543874;
          v19 = logPrefix2;
          v20 = 2114;
          v21 = operationCopy;
          v22 = 2114;
          v23 = v11;
          _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to invalidate process assertion for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v11 = 0;
    }

    assertionsMapTable2 = [(LNConnection *)self assertionsMapTable];
    [assertionsMapTable2 removeObjectForKey:operationCopy];
  }

  else
  {
    v11 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      logPrefix3 = [(LNConnection *)self logPrefix];
      *buf = 138543618;
      v19 = logPrefix3;
      v20 = 2114;
      v21 = operationCopy;
      _os_log_impl(&dword_19763D000, v11, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ has no priority and thus no associated assertion", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)acquireAssertionsForConnectionOperation:(id)operation
{
  v49 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([operationCopy priority])
  {
    v6 = MEMORY[0x1E698E620];
    [(LNConnection *)self auditToken];
    logPrefix6 = [v6 tokenFromAuditToken:buf];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(logPrefix6, "pid")}];
    v41 = 0;
    v9 = [MEMORY[0x1E69C75D0] handleForIdentifier:v8 error:&v41];
    v10 = v41;
    if (!v9)
    {
      v13 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        logPrefix = [(LNConnection *)self logPrefix];
        *buf = 138543874;
        v44 = logPrefix;
        v45 = 2114;
        v46 = v8;
        v47 = 2114;
        v48 = v10;
        _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Unable to get process handle for pid %{public}@, %{public}@", buf, 0x20u);
      }

      [operationCopy finishWithError:v10];
      goto LABEL_29;
    }

    if ([v9 isDaemon])
    {
      v11 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        logPrefix2 = [(LNConnection *)self logPrefix];
        *buf = 138543618;
        v44 = logPrefix2;
        v45 = 2114;
        v46 = v8;
        _os_log_impl(&dword_19763D000, v11, OS_LOG_TYPE_INFO, "%{public}@ pid %{public}@ is a daemon; assertion is not required", buf, 0x16u);
      }

LABEL_29:
      goto LABEL_30;
    }

    priority = [operationCopy priority];
    v16 = @"Application connection";
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = @"Extension connection";

      v18 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        logPrefix3 = [(LNConnection *)self logPrefix];
        *buf = 138543362;
        v44 = logPrefix3;
        _os_log_impl(&dword_19763D000, v18, OS_LOG_TYPE_INFO, "%{public}@ Will acquire extension assertion due to the connection type", buf, 0xCu);
      }

      v20 = @"com.apple.siri";
      v21 = @"com.apple.siri";
      v39 = @"Extension connection";
      v22 = 3;
    }

    else
    {
      v23 = @"com.apple.siri";
      if (priority == 3)
      {
        v23 = @"com.apple.siri.pushtotalk";
      }

      v20 = v23;
      v22 = priority - 1;
      v39 = @"Application connection";
      if ((priority - 1) > 3)
      {
        v24 = 0;
        goto LABEL_21;
      }
    }

    v24 = off_1E74B0A08[v22];
LABEL_21:
    v37 = v24;
    v38 = v20;
    v25 = [MEMORY[0x1E69C7560] attributeWithDomain:v20 name:?];
    v42 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];

    v27 = objc_alloc(MEMORY[0x1E69C7548]);
    v28 = [MEMORY[0x1E69C7640] targetWithProcessIdentifier:v9];
    v29 = [v27 initWithExplanation:v39 target:v28 attributes:v26];

    v40 = 0;
    LOBYTE(v28) = [v29 acquireWithError:&v40];
    v10 = v40;
    v30 = getLNLogCategoryConnection();
    v31 = v30;
    if (v28)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        logPrefix4 = [(LNConnection *)self logPrefix];
        *buf = 138543874;
        v44 = logPrefix4;
        v45 = 2114;
        v46 = v8;
        v47 = 2114;
        v48 = operationCopy;
        _os_log_impl(&dword_19763D000, v31, OS_LOG_TYPE_INFO, "%{public}@ Successfully acquired process assertion (pid: %{public}@) for %{public}@", buf, 0x20u);
      }

      [v29 addObserver:self];
      assertionsMapTable = [(LNConnection *)self assertionsMapTable];
      [assertionsMapTable setObject:v29 forKey:operationCopy];

      v34 = v37;
    }

    else
    {
      v34 = v37;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        logPrefix5 = [(LNConnection *)self logPrefix];
        *buf = 138543874;
        v44 = logPrefix5;
        v45 = 2114;
        v46 = v37;
        v47 = 2114;
        v48 = v10;
        _os_log_impl(&dword_19763D000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Failed to acquire assertion %{public}@: %{public}@", buf, 0x20u);
      }

      [v29 invalidate];
      [operationCopy finishWithError:v10];
    }

    goto LABEL_29;
  }

  v10 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    logPrefix6 = [(LNConnection *)self logPrefix];
    *buf = 138543362;
    v44 = logPrefix6;
    _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_INFO, "%{public}@ Connection has no background or foreground priority; assertion not required", buf, 0xCu);
LABEL_30:
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  errorCopy = error;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(LNConnection *)self activity];
  os_activity_scope_enter(activity, &state);

  queue = [(LNConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__LNConnection_assertion_didInvalidateWithError___block_invoke;
  block[3] = &unk_1E74B2460;
  block[4] = self;
  v13 = errorCopy;
  v14 = assertionCopy;
  v10 = assertionCopy;
  v11 = errorCopy;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

void __49__LNConnection_assertion_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [*(a1 + 32) processMonitor];
  v3 = [v2 states];

  v4 = [v3 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (!v4)
  {

LABEL_12:
    v9 = LNConnectionErrorWithCode(1003);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [*(a1 + 32) assertionsMapTable];
    v10 = [v12 copy];

    v13 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [*(a1 + 32) assertionsMapTable];
          v19 = [v18 objectForKey:v17];
          v20 = *(a1 + 48);

          if (v19 == v20)
          {
            [v17 finishWithError:v9];
          }
        }

        v14 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }

    goto LABEL_21;
  }

  v5 = v4;
  v6 = *v27;
  v7 = 1;
  do
  {
    for (j = 0; j != v5; ++j)
    {
      if (*v27 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v7 &= [*(*(&v26 + 1) + 8 * j) taskState];
    }

    v5 = [v3 countByEnumeratingWithState:&v26 objects:v35 count:16];
  }

  while (v5);

  if (v7)
  {
    goto LABEL_12;
  }

  v9 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [*(a1 + 32) logPrefix];
    v11 = *(a1 + 40);
    *buf = 138543618;
    v32 = v10;
    v33 = 2114;
    v34 = v11;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Application process assertion was dropped after timeout: %{public}@", buf, 0x16u);
LABEL_21:
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (NSMapTable)executors
{
  os_unfair_lock_lock(&self->_executorsLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __25__LNConnection_executors__block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(NSMapTable *)self->_executors copy];
  v3[2](v3);

  return v4;
}

- (id)executorForAction:(id)action options:(id)options delegate:(id)delegate
{
  actionCopy = action;
  optionsCopy = options;
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_executorsLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__LNConnection_executorForAction_options_delegate___block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  v12 = [[LNActionExecutor alloc] initWithAction:actionCopy connection:self options:optionsCopy];
  [(LNActionExecutor *)v12 setDelegate:delegateCopy];
  executors = self->_executors;
  identifier = [(LNActionExecutor *)v12 identifier];
  [(NSMapTable *)executors setObject:v12 forKey:identifier];

  os_activity_scope_leave(&state);
  v11[2](v11);

  return v12;
}

- (BOOL)allowsExtendingTimeoutOnProgressUpdates
{
  xpcConnection = [(LNConnection *)self xpcConnection];
  v3 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = [LNEntitlementsValidator validateEntitlement:@"com.apple.private.appintents.extend-timeout-on-progress-updates" auditToken:v6 validator:&__block_literal_global_170];

  return v4;
}

uint64_t __55__LNConnection_allowsExtendingTimeoutOnProgressUpdates__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)closeWithError:(id)error
{
  errorCopy = error;
  queue = [(LNConnection *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__LNConnection_closeWithError___block_invoke;
  v7[3] = &unk_1E74B27A0;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __31__LNConnection_closeWithError___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = getLNLogCategoryConnection();
  v4 = v3;
  if (v2)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v5 = [*(a1 + 40) bundleIdentifier];
    v6 = *(a1 + 32);
    *buf = 138543618;
    v26 = v5;
    v27 = 2114;
    v28 = v6;
    v7 = "Connection to %{public}@ closed due to error %{public}@";
    v8 = v4;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v5 = [*(a1 + 40) bundleIdentifier];
    *buf = 138543362;
    v26 = v5;
    v7 = "Connection to %{public}@ closed";
    v8 = v4;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
  }

  _os_log_impl(&dword_19763D000, v8, v9, v7, buf, v10);

LABEL_7:
  [*(a1 + 40) cancelIdleTimeout];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [*(a1 + 40) currentConnectionOperations];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v20 + 1) + 8 * i) finishWithError:*(a1 + 32)];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v16 = [*(a1 + 40) manager];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [*(a1 + 40) manager];
    [v18 connection:*(a1 + 40) didCloseWithError:*(a1 + 32)];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)cancelIdleTimeout
{
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  idleTimer = [(LNConnection *)self idleTimer];

  if (idleTimer)
  {
    idleTimer2 = [(LNConnection *)self idleTimer];
    [idleTimer2 cancel];
  }
}

void __28__LNConnection_setIdleTimer__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ([(os_activity_t *)WeakRetained targetIsBeingDebugged]& 1) == 0)
  {
    v5.opaque[0] = 0;
    v5.opaque[1] = 0;
    os_activity_scope_enter(v2[20], &v5);
    v3 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v7 = v2;
      _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Closing idle connection (%{public}@)", buf, 0xCu);
    }

    [(os_activity_t *)v2 closeWithError:0];
    os_activity_scope_leave(&v5);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)connectionOperation:(id)operation didFinishWithError:(id)error
{
  operationCopy = operation;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([operationCopy invalidateAssertionsOnCompletion])
  {
    [(LNConnection *)self invalidateAssertionsForConnectionOperation:operationCopy];
  }

  v8 = operationCopy;
  if (v8 && ([v8 conformsToProtocol:&unk_1F0BE0140] & 1) != 0)
  {
    [v8 invalidateRuntimeAssertions];
    v7 = v8;
  }

  else
  {

    v7 = 0;
  }

  [(LNConnection *)self removeConnectionOperation:v8];
}

- (void)connectionOperationWillStart:(id)start
{
  startCopy = start;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = startCopy;
  if (v7 && ([v7 conformsToProtocol:&unk_1F0BE0140] & 1) != 0)
  {
    [v7 acquireRuntimeAssertions];
    v6 = v7;
  }

  else
  {

    v6 = 0;
  }

  [(LNConnection *)self acquireAssertionsForConnectionOperation:v7];
}

- (void)fetchListenerEndpointFromApplicationServiceWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    processInstanceIdentifier = [(LNConnection *)self processInstanceIdentifier];
    *buf = 138543618;
    v23 = logPrefix;
    v24 = 2114;
    v25 = processInstanceIdentifier;
    _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_INFO, "%{public}@ Fetching XPC listener endpoint for processInstanceIdentifier: %{public}@ from ApplicationService", buf, 0x16u);
  }

  processInstanceIdentifier2 = [(LNConnection *)self processInstanceIdentifier];

  if (processInstanceIdentifier2)
  {
    v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.autoShortcut" options:0];
    v11 = LNDaemonApplicationXPCInterface();
    [v10 setRemoteObjectInterface:v11];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __81__LNConnection_fetchListenerEndpointFromApplicationServiceWithCompletionHandler___block_invoke;
    v21[3] = &unk_1E74B2318;
    v21[4] = self;
    [v10 setInvalidationHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __81__LNConnection_fetchListenerEndpointFromApplicationServiceWithCompletionHandler___block_invoke_115;
    v20[3] = &unk_1E74B2318;
    v20[4] = self;
    [v10 setInterruptionHandler:v20];
    queue2 = [(LNConnection *)self queue];
    [v10 _setQueue:queue2];

    [v10 resume];
    remoteObjectProxy = [v10 remoteObjectProxy];
    processInstanceIdentifier3 = [(LNConnection *)self processInstanceIdentifier];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__LNConnection_fetchListenerEndpointFromApplicationServiceWithCompletionHandler___block_invoke_116;
    v17[3] = &unk_1E74B2410;
    v18 = v10;
    v19 = handlerCopy;
    v15 = v10;
    [remoteObjectProxy fetchListenerEndpointForProcessInstanceIdentifier:processInstanceIdentifier3 reply:v17];
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNConnectionErrorDomain" code:2302 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __81__LNConnection_fetchListenerEndpointFromApplicationServiceWithCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) logPrefix];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "%{public}@ ApplicationService connection invalidated", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __81__LNConnection_fetchListenerEndpointFromApplicationServiceWithCompletionHandler___block_invoke_115(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) logPrefix];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "%{public}@ ApplicationService connection interrupted", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __81__LNConnection_fetchListenerEndpointFromApplicationServiceWithCompletionHandler___block_invoke_116(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)connectUsingProcessIdentifierWithOptions:(id)options
{
  v16 = *MEMORY[0x1E69E9840];
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  processInstanceIdentifier = [(LNConnection *)self processInstanceIdentifier];

  if (processInstanceIdentifier)
  {
    v6 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      logPrefix = [(LNConnection *)self logPrefix];
      processInstanceIdentifier2 = [(LNConnection *)self processInstanceIdentifier];
      *buf = 138543618;
      v13 = logPrefix;
      v14 = 2114;
      v15 = processInstanceIdentifier2;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_INFO, "%{public}@ Connecting using processInstanceIdentifier: %{public}@ from ApplicationService", buf, 0x16u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__LNConnection_connectUsingProcessIdentifierWithOptions___block_invoke;
    v11[3] = &unk_1E74B23D8;
    v11[4] = self;
    [(LNConnection *)self fetchListenerEndpointFromApplicationServiceWithCompletionHandler:v11];
  }

  result = processInstanceIdentifier != 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __57__LNConnection_connectUsingProcessIdentifierWithOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [v5 xpcListenerEndpoint];
    [v6 auditToken];
    [v7 connectUsingListenerEndpoint:v8 auditToken:&v9];
  }

  else
  {
    [v7 setDisconnectedWithError:a3];
  }
}

- (void)connectUsingListenerEndpoint:(id)endpoint auditToken:(id *)token
{
  v26 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    *buf = 138543362;
    *&buf[4] = logPrefix;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_INFO, "%{public}@ Establishing a direct connection to the target process via a listener endpoint", buf, 0xCu);
  }

  if (!endpointCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:689 description:{@"Invalid parameter not satisfying: %@", @"listenerEndpoint"}];
  }

  if ([(LNConnection *)self state]!= 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:690 description:{@"Invalid parameter not satisfying: %@", @"self.state == LNConnectionStateConnecting"}];
  }

  v11 = *&token->var0[4];
  *buf = *token->var0;
  v25 = v11;
  [(LNConnection *)self setAuditToken:buf];
  v12 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
  [(LNConnection *)self setXPCConnection:v12];

  xpcConnection = [(LNConnection *)self xpcConnection];
  bundleIdentifier = [(LNConnection *)self bundleIdentifier];
  v15 = LNConnectionHostXPCInterface();
  [xpcConnection ln_configureWithBundleIdentifier:bundleIdentifier interface:v15];

  xpcConnection2 = [(LNConnection *)self xpcConnection];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [xpcConnection2 _setUUID:uUID];

  xpcConnection3 = [(LNConnection *)self xpcConnection];
  [xpcConnection3 resume];

  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__LNConnection_connectUsingListenerEndpoint_auditToken___block_invoke;
  v22[3] = &unk_1E74B2778;
  objc_copyWeak(&v23, buf);
  [(LNConnection *)self setUpConnectionContextWithCompletionHandler:v22];
  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x1E69E9840];
}

void __56__LNConnection_connectUsingListenerEndpoint_auditToken___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_ERROR, "Failed to set connection context: %@", &v9, 0xCu);
    }

    v7 = [v5 xpcConnection];
    [v7 invalidate];

    [v5 setDisconnectedWithError:v3];
  }

  else
  {
    [WeakRetained setConnected];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setUpConnectionContextWithCompletionHandler:(id)handler
{
  v91[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = MEMORY[0x1E6963620];
  bundleIdentifier = [(LNConnection *)self bundleIdentifier];
  v8 = [v6 bundleRecordWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  effectiveBundleIdentifier = [(LNConnection *)self effectiveBundleIdentifier];
  v10 = [effectiveBundleIdentifier url];
  if (v10)
  {
    effectiveBundleIdentifier2 = [(LNConnection *)self effectiveBundleIdentifier];
    v12 = [effectiveBundleIdentifier2 type] == 3;
  }

  else
  {
    v12 = 0;
  }

  v71 = handlerCopy;
  if (v8)
  {
    effectiveBundleIdentifier3 = [(LNConnection *)self effectiveBundleIdentifier];
    v14 = [effectiveBundleIdentifier3 url];
    if (v14)
    {
      v15 = v12;
      v16 = [v8 URL];
      fileReferenceURL = [v16 fileReferenceURL];
      effectiveBundleIdentifier4 = [(LNConnection *)self effectiveBundleIdentifier];
      v19 = [effectiveBundleIdentifier4 url];
      fileReferenceURL2 = [v19 fileReferenceURL];
      v21 = fileReferenceURL;
      v22 = fileReferenceURL2;
      v23 = v22;
      if (v21 == v22)
      {
        LOBYTE(v24) = 0;
      }

      else
      {
        LOBYTE(v24) = 1;
        if (v21 && v22)
        {
          v24 = [v21 isEqual:v22] ^ 1;
        }
      }

      v69 = v24;

      v12 = v15;
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    v69 = 0;
  }

  v25 = @"IntentStartupGrant";
  v26 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    *buf = 138543362;
    v84 = logPrefix;
    _os_log_impl(&dword_19763D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ [Context Setup] Process assertions requested for context setup", buf, 0xCu);
  }

  v28 = MEMORY[0x1E698E620];
  [(LNConnection *)self auditToken];
  v70 = [v28 tokenFromAuditToken:buf];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v70, "pid")}];
  v82 = 0;
  v30 = [MEMORY[0x1E69C75D0] handleForIdentifier:v29 error:&v82];
  v31 = v82;
  if ([v30 isDaemon])
  {
    v32 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      [(LNConnection *)self logPrefix];
      v34 = v33 = v12;
      *buf = 138543874;
      v84 = v34;
      v85 = 2114;
      v86 = v29;
      v87 = 2114;
      v88 = @"IntentStartupGrant";
      _os_log_impl(&dword_19763D000, v32, OS_LOG_TYPE_INFO, "%{public}@ [Context Setup] pid %{public}@ is a daemon; assertion %{public}@ is NOT required", buf, 0x20u);

      v12 = v33;
    }

LABEL_27:
    v44 = 0;
    v68 = v31;
LABEL_28:

    v50 = [LNConnectionContext alloc];
    userIdentity = [(LNConnection *)self userIdentity];
    if ((v12 | v69))
    {
      effectiveBundleIdentifier5 = [(LNConnection *)self effectiveBundleIdentifier];
      v53 = [(LNConnectionContext *)v50 initWithUserIdentity:userIdentity effectiveBundleIdentifier:effectiveBundleIdentifier5];
    }

    else
    {
      v53 = [(LNConnectionContext *)v50 initWithUserIdentity:userIdentity effectiveBundleIdentifier:0];
    }

    v54 = v8;

    v55 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      logPrefix2 = [(LNConnection *)self logPrefix];
      *buf = 138543618;
      v84 = logPrefix2;
      v85 = 2112;
      v86 = v53;
      _os_log_impl(&dword_19763D000, v55, OS_LOG_TYPE_INFO, "%{public}@ [Context Setup] Updating connection connection context with: %@", buf, 0x16u);
    }

    xpcConnection = [(LNConnection *)self xpcConnection];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __60__LNConnection_setUpConnectionContextWithCompletionHandler___block_invoke;
    v77[3] = &unk_1E74B2388;
    v58 = v44;
    v78 = v58;
    selfCopy = self;
    v59 = @"IntentStartupGrant";
    v80 = @"IntentStartupGrant";
    v60 = [xpcConnection remoteObjectProxyWithErrorHandler:v77];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __60__LNConnection_setUpConnectionContextWithCompletionHandler___block_invoke_104;
    v72[3] = &unk_1E74B23B0;
    v61 = v58;
    v73 = v61;
    selfCopy2 = self;
    v62 = @"IntentStartupGrant";
    v75 = @"IntentStartupGrant";
    v63 = v71;
    v76 = v71;
    [v60 updateConnectionContext:v53 completionHandler:v72];

    v37 = v78;
    v45 = v68;
    goto LABEL_34;
  }

  if (!v30)
  {
    v32 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      logPrefix3 = [(LNConnection *)self logPrefix];
      *buf = 138544130;
      v84 = logPrefix3;
      v85 = 2114;
      v86 = v29;
      v87 = 2114;
      v88 = v31;
      v89 = 2114;
      v90 = @"IntentStartupGrant";
      _os_log_impl(&dword_19763D000, v32, OS_LOG_TYPE_ERROR, "%{public}@ [Context Setup] Unable to get process handle for pid %{public}@, %{public}@; Process assertion %{public}@ was NOT acquired", buf, 0x2Au);
    }

    goto LABEL_27;
  }

  v66 = v12;
  v67 = v8;
  v35 = @"com.apple.siri";
  v36 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.siri" name:@"IntentStartupGrant"];
  v91[0] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:1];

  v38 = objc_alloc(MEMORY[0x1E69C7548]);
  v39 = MEMORY[0x1E696AEC0];
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v42 = [v39 stringWithFormat:@"Setting up %@ with context", v41];
  v43 = [MEMORY[0x1E69C7640] targetWithProcessIdentifier:v30];
  v44 = [v38 initWithExplanation:v42 target:v43 attributes:v37];

  v81 = 0;
  LOBYTE(v41) = [v44 acquireWithError:&v81];
  v45 = v81;

  v46 = getLNLogCategoryConnection();
  v47 = v46;
  if (v41)
  {
    v68 = v45;
    v8 = v67;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      logPrefix4 = [(LNConnection *)self logPrefix];
      *buf = 138543874;
      v84 = logPrefix4;
      v85 = 2114;
      v86 = @"IntentStartupGrant";
      v87 = 2114;
      v88 = v29;
      _os_log_impl(&dword_19763D000, v47, OS_LOG_TYPE_INFO, "%{public}@ [Context Setup] Successfully acquired process assertion %{public}@ (pid: %{public}@)", buf, 0x20u);
    }

    v32 = @"com.apple.siri";
    v12 = v66;
    goto LABEL_28;
  }

  v54 = v67;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    logPrefix5 = [(LNConnection *)self logPrefix];
    *buf = 138543874;
    v84 = logPrefix5;
    v85 = 2114;
    v86 = @"IntentStartupGrant";
    v87 = 2114;
    v88 = v45;
    _os_log_impl(&dword_19763D000, v47, OS_LOG_TYPE_ERROR, "%{public}@ [Context Setup] Failed to acquire assertion %{public}@: %{public}@", buf, 0x20u);
  }

  [v44 invalidate];
  v63 = v71;
  (v71)[2](v71, v45);
  v61 = 0;
  v53 = @"com.apple.siri";
LABEL_34:

  v64 = *MEMORY[0x1E69E9840];
}

void __60__LNConnection_setUpConnectionContextWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = getLNLogCategoryConnection();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = [*(a1 + 40) logPrefix];
      v8 = *(a1 + 48);
      v11 = 138543874;
      v12 = v7;
      v13 = 2114;
      v14 = v3;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ [Context Setup] Remote object proxy error: %{public}@; Process assertion %{public}@ invalidated", &v11, 0x20u);
    }

    [*(a1 + 32) invalidate];
  }

  else
  {
    if (v6)
    {
      v9 = [*(a1 + 40) logPrefix];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ [Context Setup] Remote object proxy error: %{public}@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __60__LNConnection_setUpConnectionContextWithCompletionHandler___block_invoke_104(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 40) logPrefix];
      v6 = *(a1 + 48);
      v15 = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "%{public}@ [Context Setup] Process assertion %{public}@ invalidated", &v15, 0x16u);
    }

    [*(a1 + 32) invalidate];
  }

  v7 = getLNLogCategoryConnection();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) logPrefix];
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v3;
      v10 = "%{public}@ [Context Setup] Finished context setup with error: %{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
LABEL_10:
      _os_log_impl(&dword_19763D000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 40) logPrefix];
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@ [Context Setup] Finished context setup";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_10;
  }

  (*(*(a1 + 56) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)isDaemon
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698E620];
  [(LNConnection *)self auditToken];
  v4 = [v3 tokenFromAuditToken:buf];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "pid")}];
  v13 = 0;
  v6 = [MEMORY[0x1E69C75D0] handleForIdentifier:v5 error:&v13];
  v7 = v13;
  if (v6)
  {
    isDaemon = [v6 isDaemon];
  }

  else
  {
    v9 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      logPrefix = [(LNConnection *)self logPrefix];
      *buf = 138543874;
      v15 = logPrefix;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Unable to get process handle for pid %{public}@, %{public}@", buf, 0x20u);
    }

    isDaemon = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return isDaemon;
}

- (BOOL)isPerformActionOperationPending
{
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  connectionOperations = [(LNConnection *)self connectionOperations];
  v5 = [connectionOperations objectsPassingTest:&__block_literal_global_13333];
  v6 = [v5 count] != 0;

  return v6;
}

uint64_t __47__LNConnection_isPerformActionOperationPending__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)targetIsBeingDebugged
{
  [(LNConnection *)self auditToken];
  if (LNPIDForAuditToken(&v3) < 1)
  {
    return 0;
  }

  else
  {
    return BSPIDIsBeingDebugged();
  }
}

- (void)extendTimeoutForOperationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:554 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  queue = [(LNConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__LNConnection_extendTimeoutForOperationWithIdentifier___block_invoke;
  block[3] = &unk_1E74B27A0;
  block[4] = self;
  v10 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(queue, block);
}

void __56__LNConnection_extendTimeoutForOperationWithIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) operationWithIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 extendTimeout];
    [*(a1 + 32) extendIdleTimeout];
    [*(a1 + 32) invalidateAssertionsForConnectionOperation:v3];
    [*(a1 + 32) acquireAssertionsForConnectionOperation:v3];
  }

  else
  {
    v4 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) logPrefix];
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Operation not found: unable to extend timeout for operation with identifier %{public}@.", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancelTimeoutForOperationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:539 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  queue = [(LNConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__LNConnection_cancelTimeoutForOperationWithIdentifier___block_invoke;
  block[3] = &unk_1E74B27A0;
  block[4] = self;
  v10 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(queue, block);
}

void __56__LNConnection_cancelTimeoutForOperationWithIdentifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) operationWithIdentifier:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) invalidateAssertionsForConnectionOperation:v2];
    [v2 cancelTimeout];
    [*(a1 + 32) cancelIdleTimeout];
  }

  else
  {
    v3 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) logPrefix];
      v5 = *(a1 + 40);
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Operation not found: unable to cancel timeout for operation with identifier %{public}@.", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (NSSet)currentConnectionOperations
{
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  connectionOperations = [(LNConnection *)self connectionOperations];
  v5 = [connectionOperations copy];

  return v5;
}

- (id)operationWithIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:521 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  connectionOperations = [(LNConnection *)self connectionOperations];
  v8 = [connectionOperations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(connectionOperations);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [identifier isEqual:identifierCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      v8 = [connectionOperations countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setDisconnectedWithError:(id)error
{
  errorCopy = error;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(LNConnection *)self state]!= 3 && [(LNConnection *)self state]!= 1 && [(LNConnection *)self state]!= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:513 description:{@"Invalid parameter not satisfying: %@", @"self.state == LNConnectionStateConnected || self.state == LNConnectionStateConnecting || self.state == LNConnectionStateRefreshing"}];
  }

  [(LNConnection *)self setState:0];
  [(LNConnection *)self completeWithError:errorCopy];
}

- (BOOL)refreshWithOptions:(id)options
{
  optionsCopy = options;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(LNConnection *)self state]!= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:492 description:{@"Invalid parameter not satisfying: %@", @"self.state == LNConnectionStateConnected"}];
  }

  v7 = [(LNConnection *)self shouldRefreshWithOptions:optionsCopy];
  if (v7)
  {
    [(LNConnection *)self setState:2];
  }

  else
  {
    [(LNConnection *)self completeWithError:0];
  }

  return v7;
}

- (BOOL)shouldRefreshWithOptions:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(LNConnection *)self state]!= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:469 description:{@"Invalid parameter not satisfying: %@", @"self.state == LNConnectionStateConnected"}];
  }

  userIdentity = [(LNConnection *)self userIdentity];

  if (userIdentity)
  {
    goto LABEL_4;
  }

  effectiveBundleIdentifier = [(LNConnection *)self effectiveBundleIdentifier];
  if (effectiveBundleIdentifier)
  {
    v12 = effectiveBundleIdentifier;
    effectiveBundleIdentifier2 = [(LNConnection *)self effectiveBundleIdentifier];
    type = [effectiveBundleIdentifier2 type];

    if (type == 3)
    {
      goto LABEL_4;
    }
  }

  currentOptions = [(LNConnection *)self currentOptions];
  v16 = optionsCopy;
  v17 = v16;
  if (currentOptions != v16)
  {
    if (v16 && currentOptions)
    {
      v18 = [currentOptions isEqual:v16];

      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

LABEL_14:
  v19 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v17;
    _os_log_impl(&dword_19763D000, v19, OS_LOG_TYPE_INFO, "Options %{public}@ haven't changed, skipping refresh", buf, 0xCu);
  }

  v8 = 0;
LABEL_5:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)connectWithOptions:(id)options
{
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(LNConnection *)self state])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:462 description:{@"Invalid parameter not satisfying: %@", @"self.state == LNConnectionStateDisconnected"}];
  }

  [(LNConnection *)self setState:1];
}

- (void)completeWithError:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  if ([(LNConnection *)self state]&& [(LNConnection *)self state]!= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:440 description:{@"Invalid parameter not satisfying: %@", @"self.state == LNConnectionStateDisconnected || self.state == LNConnectionStateConnected"}];
  }

  getConnectionInterfaceCompletionHandler = [(LNConnection *)self getConnectionInterfaceCompletionHandler];
  v8 = getConnectionInterfaceCompletionHandler == 0;

  if (!v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __34__LNConnection_completeWithError___block_invoke;
    aBlock[3] = &unk_1E74B2318;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    if (errorCopy)
    {
      v10 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        logPrefix = [(LNConnection *)self logPrefix];
        localizedDescription = [errorCopy localizedDescription];
        *buf = 138543874;
        v20 = logPrefix;
        v21 = 2114;
        v22 = errorCopy;
        v23 = 2114;
        v24 = localizedDescription;
        _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Unable to get connection interface: %{public}@ (%{public}@)", buf, 0x20u);
      }

      getConnectionInterfaceCompletionHandler2 = [(LNConnection *)self getConnectionInterfaceCompletionHandler];
      (getConnectionInterfaceCompletionHandler2)[2](getConnectionInterfaceCompletionHandler2, 0, errorCopy);
    }

    else
    {
      getConnectionInterfaceCompletionHandler2 = [(LNConnection *)self getConnectionInterfaceCompletionHandler];
      connectionInterface = [(LNConnection *)self connectionInterface];
      (getConnectionInterfaceCompletionHandler2)[2](getConnectionInterfaceCompletionHandler2, connectionInterface, 0);
    }

    v9[2](v9);
  }

  os_activity_scope_leave(&state);

  v15 = *MEMORY[0x1E69E9840];
}

void __34__LNConnection_completeWithError___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setGetConnectionInterfaceCompletionHandler:0];
  v2 = [*(a1 + 32) getConnectionInterfaceQueue];
  [v2 setSuspended:0];

  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) logPrefix];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "%{public}@ Resuming the getConnectionInterface queue", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)performGetConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    *buf = 138543618;
    v30 = logPrefix;
    v31 = 2114;
    v32 = optionsCopy;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_INFO, "%{public}@ Getting connection interface with options: %{public}@", buf, 0x16u);
  }

  v11 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    logPrefix2 = [(LNConnection *)self logPrefix];
    state = [(LNConnection *)self state];
    if ((state - 1) > 2)
    {
      v14 = @"Not Connected";
    }

    else
    {
      v14 = off_1E74B24A0[state - 1];
    }

    *buf = 138543618;
    v30 = logPrefix2;
    v31 = 2114;
    v32 = v14;
  }

  v15 = [handlerCopy copy];
  [(LNConnection *)self setGetConnectionInterfaceCompletionHandler:v15];

  if (!optionsCopy)
  {
    optionsCopy = [objc_opt_class() defaultOptions];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__LNConnection_performGetConnectionInterfaceWithOptions_completionHandler___block_invoke;
  aBlock[3] = &unk_1E74B27A0;
  aBlock[4] = self;
  v16 = optionsCopy;
  v28 = v16;
  v17 = _Block_copy(aBlock);
  if ([(__CFString *)v16 authenticationPolicy]== 1)
  {
    v18 = [LNUnlockService alloc];
    queue2 = [(LNConnection *)self queue];
    v20 = [(LNUnlockService *)v18 initWithQueue:queue2];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__LNConnection_performGetConnectionInterfaceWithOptions_completionHandler___block_invoke_2;
    v23[3] = &unk_1E74B2340;
    v24 = v20;
    selfCopy = self;
    v26 = v17;
    v21 = v20;
    [(LNUnlockService *)v21 requestUnlockIfNeeded:v23];
  }

  else
  {
    v17[2](v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __75__LNConnection_performGetConnectionInterfaceWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  if (v2)
  {
    if (v2 == 3)
    {
      [*(a1 + 32) refreshWithOptions:*(a1 + 40)];
    }
  }

  else
  {
    [*(a1 + 32) connectWithOptions:*(a1 + 40)];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 setCurrentOptions:v4];
}

void __75__LNConnection_performGetConnectionInterfaceWithOptions_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = LNConnectionErrorWithCode(1900);
    [v4 completeWithError:v5];
  }
}

- (void)getConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(LNConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__LNConnection_getConnectionInterfaceWithOptions_completionHandler___block_invoke;
  block[3] = &unk_1E74B2580;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

void __68__LNConnection_getConnectionInterfaceWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getConnectionInterfaceQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__LNConnection_getConnectionInterfaceWithOptions_completionHandler___block_invoke_2;
  v4[3] = &unk_1E74B2580;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 addOperationWithBlock:v4];
}

uint64_t __68__LNConnection_getConnectionInterfaceWithOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) getConnectionInterfaceQueue];
  [v2 setSuspended:1];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v3 performGetConnectionInterfaceWithOptions:v4 completionHandler:v5];
}

- (void)removeConnectionOperation:(id)operation
{
  operationCopy = operation;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  connectionOperations = [(LNConnection *)self connectionOperations];
  [connectionOperations removeObject:operationCopy];

  [operationCopy setConnection:0];
}

- (void)enqueueConnectionOperation:(id)operation
{
  operationCopy = operation;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  connectionOperations = [(LNConnection *)self connectionOperations];
  [connectionOperations addObject:operationCopy];

  [operationCopy setConnection:self];
  [(LNConnection *)self extendIdleTimeout];
  activity = [operationCopy activity];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__LNConnection_enqueueConnectionOperation___block_invoke;
  block[3] = &unk_1E74B2318;
  v10 = operationCopy;
  v8 = operationCopy;
  os_activity_apply(activity, block);
}

void __35__LNConnection_connectionInterface__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [WeakRetained logPrefix];
    *buf = 138543618;
    v19 = v6;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Remote object proxy error: %{public}@", buf, 0x16u);
  }

  if ([WeakRetained state] == 3)
  {
    [WeakRetained setDisconnectedWithError:v3];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [WeakRetained currentConnectionOperations];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) finishWithError:v3];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setXPCConnection:(id)connection
{
  connectionCopy = connection;
  activity = [(LNConnection *)self activity];
  bundleIdentifier = [(LNConnection *)self bundleIdentifier];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(activity, &state);
  objc_storeStrong(&self->_xpcConnection, connection);
  objc_initWeak(&location, self);
  queue = [(LNConnection *)self queue];
  [connectionCopy _setQueue:queue];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__LNConnection_setXPCConnection___block_invoke;
  v11[3] = &unk_1E74B22C8;
  v11[4] = activity;
  objc_copyWeak(&v12, &location);
  [connectionCopy setInterruptionHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__LNConnection_setXPCConnection___block_invoke_69;
  v9[3] = &unk_1E74B22F0;
  v9[4] = activity;
  objc_copyWeak(&v10, &location);
  v9[5] = bundleIdentifier;
  [connectionCopy setInvalidationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
}

void __33__LNConnection_setXPCConnection___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [WeakRetained logPrefix];
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_ERROR, "%{public}@ XPC connection has been interrupted", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v5 = [WeakRetained xpcConnection];
    [v5 invalidate];

    [WeakRetained setXPCConnection:0];
    [WeakRetained setState:0];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [WeakRetained currentConnectionOperations];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = LNConnectionErrorWithCode(1004);
          [v10 finishWithError:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }

  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x1E69E9840];
}

void __33__LNConnection_setXPCConnection___block_invoke_69(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    *buf = 138543362;
    v19 = v4;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "[%{public}@] XPC connection has been invalidated", buf, 0xCu);
  }

  if (WeakRetained)
  {
    [WeakRetained setXPCConnection:0];
    [WeakRetained setState:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [WeakRetained currentConnectionOperations];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = LNConnectionErrorWithCode(1005);
          [v9 finishWithError:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setState:(int64_t)state
{
  v22 = *MEMORY[0x1E69E9840];
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  state = self->_state;
  if (state == state)
  {
    goto LABEL_27;
  }

  if (state > 1)
  {
    if (state == 2)
    {
      if (!state || state == 3)
      {
        goto LABEL_18;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"state == LNConnectionStateConnected || state == LNConnectionStateDisconnected"}];
    }

    else
    {
      if (state != 3 || (state & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        goto LABEL_18;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"state == LNConnectionStateDisconnected || state == LNConnectionStateRefreshing"}];
    }

    goto LABEL_17;
  }

  if (state)
  {
    if (state != 1 || !state || state == 3)
    {
      goto LABEL_18;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"state == LNConnectionStateConnected || state == LNConnectionStateDisconnected"}];
    goto LABEL_17;
  }

  if (state != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"state == LNConnectionStateConnecting"}];
LABEL_17:
  }

LABEL_18:
  v9 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    v11 = logPrefix;
    v12 = self->_state - 1;
    if (v12 > 2)
    {
      v13 = @"Not Connected";
    }

    else
    {
      v13 = off_1E74B24A0[v12];
    }

    if ((state - 1) > 2)
    {
      v14 = @"Not Connected";
    }

    else
    {
      v14 = off_1E74B24A0[state - 1];
    }

    *buf = 138543874;
    v17 = logPrefix;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
  }

  self->_state = state;
LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
}

- (id)optionsForAction:(id)action interactionMode:(int64_t)mode source:(unsigned __int16)source sourceOverride:(id)override assistantDismissalPolicy:(int64_t)policy
{
  actionCopy = action;
  defaultOptions = [objc_opt_class() defaultOptions];
  systemProtocols = [actionCopy systemProtocols];
  audioStartingProtocol = [MEMORY[0x1E69ACA48] audioStartingProtocol];
  if ([systemProtocols containsObject:audioStartingProtocol])
  {
  }

  else
  {
    systemProtocols2 = [actionCopy systemProtocols];
    audioRecordingProtocol = [MEMORY[0x1E69ACA48] audioRecordingProtocol];
    v13 = [systemProtocols2 containsObject:audioRecordingProtocol];

    if (!v13)
    {
      goto LABEL_5;
    }
  }

  [defaultOptions setInitiatesAudioSession:1];
LABEL_5:

  return defaultOptions;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

- (void)_invalidateAllAssertions
{
  v15 = *MEMORY[0x1E69E9840];
  objectEnumerator = [(NSMapTable *)self->_assertionsMapTable objectEnumerator];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 removeObserver:self];
        [v8 invalidate];
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_assertionsMapTable removeAllObjects];

  v9 = *MEMORY[0x1E69E9840];
}

void __137__LNConnection_initWithEffectiveBundleIdentifier_appBundleIdentifier_processInstanceIdentifier_appIntentsEnabledOnly_userIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C7610];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 predicateMatchingBundleIdentifier:v3];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v4 setPredicates:v6];

  v7 = [MEMORY[0x1E69C7630] descriptor];
  [v7 setValues:1];
  [v4 setStateDescriptor:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)executorForAction:(id)action interactionMode:(int64_t)mode label:(id)label delegate:(id)delegate
{
  delegateCopy = delegate;
  labelCopy = label;
  actionCopy = action;
  v13 = objc_opt_new();
  [v13 setClientLabel:labelCopy];

  [v13 setInteractionMode:mode];
  [v13 setSource:0];
  v14 = [(LNConnection *)self executorForAction:actionCopy options:v13 delegate:delegateCopy];

  return v14;
}

- (id)executorForAction:(id)action label:(id)label delegate:(id)delegate
{
  delegateCopy = delegate;
  labelCopy = label;
  actionCopy = action;
  v11 = objc_opt_new();
  [v11 setClientLabel:labelCopy];

  [v11 setInteractionMode:0];
  [v11 setSource:0];
  v12 = [(LNConnection *)self executorForAction:actionCopy options:v11 delegate:delegateCopy];

  return v12;
}

- (id)executorForAction:(id)action metadata:(id)metadata options:(id)options delegate:(id)delegate
{
  delegateCopy = delegate;
  optionsCopy = options;
  actionCopy = action;
  effectiveBundleIdentifiers = [metadata effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v15 = [array if_firstObjectPassingTest:&__block_literal_global_358];
  bundleIdentifier = [v15 bundleIdentifier];
  appBundleIdentifier = self->_appBundleIdentifier;
  self->_appBundleIdentifier = bundleIdentifier;

  v18 = [(LNConnection *)self executorForAction:actionCopy options:optionsCopy delegate:delegateCopy];

  return v18;
}

- (id)executorForAction:(id)action metadata:(id)metadata appBundleIdentifier:(id)identifier options:(id)options delegate:(id)delegate
{
  objc_storeStrong(&self->_appBundleIdentifier, identifier);
  delegateCopy = delegate;
  optionsCopy = options;
  actionCopy = action;
  v14 = [(LNConnection *)self executorForAction:actionCopy options:optionsCopy delegate:delegateCopy];

  return v14;
}

- (LNConnection)initWithBundleIdentifier:(id)identifier metadataVersion:(int64_t)version error:(id *)error
{
  v7 = MEMORY[0x1E6963620];
  identifierCopy = identifier;
  v9 = [v7 bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = objc_alloc(MEMORY[0x1E69AC7B0]);
  v12 = [v9 URL];
  v13 = [v11 initWithType:isKindOfClass & 1 bundleIdentifier:identifierCopy url:v12];

  v14 = +[LNConnectionManager sharedInstance];
  v15 = [v14 connectionForEffectiveBundleIdentifier:v13 appBundleIdentifier:0 processInstanceIdentifier:0 mangledTypeName:0 userIdentity:0 error:error];

  return v15;
}

- (NSURL)bundleURL
{
  effectiveBundleIdentifier = [(LNConnection *)self effectiveBundleIdentifier];
  v3 = [effectiveBundleIdentifier url];

  return v3;
}

- (void)fetchSuggestedFocusActionsForActionMetadata:(id)metadata suggestionContext:(id)context completionHandler:(id)handler
{
  metadataCopy = metadata;
  contextCopy = context;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __124__LNConnection_FetchSuggestedFocusActions__fetchSuggestedFocusActionsForActionMetadata_suggestionContext_completionHandler___block_invoke;
  v14[3] = &unk_1E74B28E0;
  v15 = metadataCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = metadataCopy;
  v13 = handlerCopy;
  [(LNConnection *)self getConnectionInterfaceWithOptions:0 completionHandler:v14];
}

void __124__LNConnection_FetchSuggestedFocusActions__fetchSuggestedFocusActionsForActionMetadata_suggestionContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = [LNFetchSuggestedFocusActionsConnectionOperation alloc];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) queue];
    v7 = [(LNFetchSuggestedFocusActionsConnectionOperation *)v3 initWithConnectionInterface:v8 actionMetadata:v4 suggestionContext:v5 queue:v6 completionHandler:*(a1 + 56)];

    [*(a1 + 48) enqueueConnectionOperation:v7];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

@end