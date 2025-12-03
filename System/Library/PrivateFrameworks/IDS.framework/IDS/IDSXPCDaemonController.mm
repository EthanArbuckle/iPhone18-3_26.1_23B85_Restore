@interface IDSXPCDaemonController
+ (id)onQueueWeakSharedInstance;
+ (id)weakSharedInstance;
+ (void)asyncWeakSharedInstance:(id)instance;
+ (void)performDaemonControllerTask:(id)task;
- (id)_collaboratorWithIdentifier:(id)identifier interface:(id)interface timeout:(double)timeout errorHandler:(id)handler resolverBlock:(id)block;
- (id)_daemonProxyWithErrorHandler:(id)handler;
- (id)_initWithQueue:(id)queue isSync:(BOOL)sync connectionCreationBlock:(id)block;
- (id)_sync_collaboratorWithIdentifier:(id)identifier errorHandler:(id)handler resolverBlock:(id)block;
- (id)_timingOutDaemonProxyWithTimeout:(double)timeout errorHandler:(id)handler;
- (id)activityMonitorCollaboratorWithErrorHandler:(id)handler;
- (id)baaSignerCollaboratorForTopic:(id)topic withErrorHandler:(id)handler;
- (id)diagnosticHandlingCollaboratorWithErrorHandler:(id)handler;
- (id)eventReportingCollaboratorWithErrorHandler:(id)handler;
- (id)featureTogglerCollaboratorForService:(id)service withErrorHandler:(id)handler;
- (id)firewallCollaboratorForService:(id)service withErrorHandler:(id)handler;
- (id)groupSessionKeyValueDeliveryProviderCollaboratorWithErrorHandler:(id)handler;
- (id)interalTestingCollaboratorWithErrorHandler:(id)handler;
- (id)keyTransparencyCollaboratorWithErrorHandler:(id)handler;
- (id)offGridMessengerCollaboratorWithErrorHandler:(id)handler;
- (id)offGridStateManagerCollaboratorWithErrorHandler:(id)handler;
- (id)opportunisticCollaboratorWithErrorHandler:(id)handler;
- (id)pairedDeviceManagerCollaboratorWithErrorHandler:(id)handler;
- (id)pairingCollaboratorWithTimeout:(double)timeout errorHandler:(id)handler;
- (id)phoneNumberCredentialVendorCollaboratorWithErrorHandler:(id)handler;
- (id)pinnedIdentityCollaboratorWithErrorHandler:(id)handler;
- (id)registrationCollaboratorWithErrorHandler:(id)handler;
- (id)reunionSyncCollaboratorWithErrorHandler:(id)handler;
- (id)serverMessagingCollaboratorWithErrorHandler:(id)handler;
- (void)activateWithCompletion:(id)completion;
- (void)addInterruptionHandler:(id)handler forTarget:(id)target;
- (void)dealloc;
- (void)performTask:(id)task;
- (void)removeInterruptionHandlerForTarget:(id)target;
@end

@implementation IDSXPCDaemonController

+ (id)onQueueWeakSharedInstance
{
  WeakRetained = objc_loadWeakRetained(&qword_1ED5DDD70);

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(&qword_1ED5DDD70);
  }

  else
  {
    v4 = [IDSXPCDaemonController alloc];
    v5 = +[IDSInternalQueueController sharedInstance];
    queue = [v5 queue];
    v3 = [(IDSXPCDaemonController *)v4 initWithQueue:queue];

    objc_storeWeak(&qword_1ED5DDD70, v3);
  }

  return v3;
}

+ (id)weakSharedInstance
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00754;
  v11 = sub_195A03D50;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A8E608;
  v6[3] = &unk_1E7441338;
  v6[4] = &v7;
  v6[5] = self;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (void)asyncWeakSharedInstance:(id)instance
{
  instanceCopy = instance;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A8E70C;
  v7[3] = &unk_1E7440988;
  v8 = instanceCopy;
  selfCopy = self;
  v6 = instanceCopy;
  [v5 performBlock:v7];
}

+ (void)performDaemonControllerTask:(id)task
{
  taskCopy = task;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A8E824;
  v7[3] = &unk_1E7440988;
  v8 = taskCopy;
  selfCopy = self;
  v6 = taskCopy;
  [v5 performBlock:v7];
}

- (id)_initWithQueue:(id)queue isSync:(BOOL)sync connectionCreationBlock:(id)block
{
  syncCopy = sync;
  v40 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  blockCopy = block;
  v11 = _IDSRunningInDaemon();
  v12 = [MEMORY[0x1E69A5270] xpc];
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B32F44(self, v13);
    }

    selfCopy2 = 0;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Alloc'ing IDSXPCDaemonController {pointer: %p}", buf, 0xCu);
    }

    v37.receiver = self;
    v37.super_class = IDSXPCDaemonController;
    v15 = [(IDSXPCDaemonController *)&v37 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_queue, queue);
      v17 = blockCopy[2](blockCopy);
      v18 = +[IDSXPCDaemonInterface interface];
      [v17 setRemoteObjectInterface:v18];

      objc_initWeak(buf, v16);
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = sub_195A8EBC4;
      v34 = &unk_1E743EDC8;
      objc_copyWeak(&v36, buf);
      v19 = v16;
      v35 = v19;
      [v17 setInterruptionHandler:&v31];
      v20 = [IDSXPCConnection alloc];
      if (syncCopy)
      {
        v21 = [(IDSXPCConnection *)v20 initForSyncMessagingWithQueue:queueCopy takingOverAndResumingConnection:v17, v31, v32, v33, v34];
        connection = v19->_connection;
        v19->_connection = v21;

        v19->_sync = 1;
        v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
        syncCollaboratorDictionary = v19->_syncCollaboratorDictionary;
        v19->_syncCollaboratorDictionary = v23;

        v25 = 0;
      }

      else
      {
        v26 = [(IDSXPCConnection *)v20 initWithQueue:queueCopy takingOverAndResumingConnection:v17, v31, v32, v33, v34];
        v27 = v19->_connection;
        v19->_connection = v26;

        v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      collaboratorPromiseDictionary = v19->_collaboratorPromiseDictionary;
      v19->_collaboratorPromiseDictionary = v25;

      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    self = v16;
    selfCopy2 = self;
  }

  v29 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc'ing IDSXPCDaemonController {pointer: %p}", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = IDSXPCDaemonController;
  [(IDSXPCDaemonController *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Activating daemon controller", v9, 2u);
  }

  if (self->_sync)
  {
    connection = [(IDSXPCDaemonController *)self connection];
    v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:completionCopy];
    [v7 activateWithCompletion:completionCopy];
  }

  else
  {
    queue = [(IDSXPCDaemonController *)self queue];
    dispatch_assert_queue_V2(queue);

    connection = [(IDSXPCDaemonController *)self _daemonProxyWithErrorHandler:completionCopy];
    [connection activateWithCompletion:completionCopy];
  }
}

- (id)pairingCollaboratorWithTimeout:(double)timeout errorHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[IDSXPCPairingInterface interface];
  v8 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"pairing" interface:v7 timeout:handlerCopy errorHandler:&unk_1F09E63E0 resolverBlock:timeout];

  return v8;
}

- (id)pairedDeviceManagerCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCPairedDeviceManagerInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"pairedDeviceManager" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6400 resolverBlock:60.0];

  return v6;
}

- (id)reunionSyncCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCReunionSyncInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"reunionSync" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6420 resolverBlock:60.0];

  return v6;
}

- (id)opportunisticCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCOpportunisticInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"opportunistic" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6440 resolverBlock:60.0];

  return v6;
}

- (id)registrationCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCRegistrationInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"registration" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6460 resolverBlock:60.0];

  return v6;
}

- (id)activityMonitorCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCActivityMonitorInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"activityMonitor" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6480 resolverBlock:3600.0];

  return v6;
}

- (id)serverMessagingCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCServerMessagingInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"serverMessaging" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E64A0 resolverBlock:3600.0];

  return v6;
}

- (id)offGridMessengerCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCOffGridMessengerInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"offgridMessenger" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E64C0 resolverBlock:3600.0];

  return v6;
}

- (id)offGridStateManagerCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCOffGridStateManagerInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"offgridStateManager" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E64E0 resolverBlock:3600.0];

  return v6;
}

- (id)keyTransparencyCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCKeyTransparencyInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"keyTransparency" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6500 resolverBlock:3600.0];

  return v6;
}

- (id)pinnedIdentityCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCPinnedIdentityInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"pinnedIdentity" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6520 resolverBlock:3600.0];

  return v6;
}

- (id)phoneNumberCredentialVendorCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCPhoneNumberCredentialVendorInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"phoneNumberCredentialVendor" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6540 resolverBlock:3600.0];

  return v6;
}

- (id)firewallCollaboratorForService:(id)service withErrorHandler:(id)handler
{
  serviceCopy = service;
  v7 = MEMORY[0x1E696AEC0];
  handlerCopy = handler;
  serviceCopy = [v7 stringWithFormat:@"firewall-%@", serviceCopy];
  v10 = +[IDSXPCFirewallInterface interface];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A8F86C;
  v14[3] = &unk_1E74413A0;
  v15 = serviceCopy;
  v11 = serviceCopy;
  v12 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:serviceCopy interface:v10 timeout:handlerCopy errorHandler:v14 resolverBlock:60.0];

  return v12;
}

- (id)groupSessionKeyValueDeliveryProviderCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCGroupSessionKeyValueDeliveryProviderInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"groupSessionKeyValueDeliveryProvider" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6560 resolverBlock:60.0];

  return v6;
}

- (id)featureTogglerCollaboratorForService:(id)service withErrorHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  v8 = +[IDSXPCFeatureTogglerInterface interface];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A8FA20;
  v12[3] = &unk_1E74413A0;
  v13 = serviceCopy;
  v9 = serviceCopy;
  v10 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"featuretoggler" interface:v8 timeout:handlerCopy errorHandler:v12 resolverBlock:60.0];

  return v10;
}

- (id)baaSignerCollaboratorForTopic:(id)topic withErrorHandler:(id)handler
{
  topicCopy = topic;
  handlerCopy = handler;
  v8 = +[IDSXPCBAASignerInterface interface];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A8FB38;
  v12[3] = &unk_1E74413A0;
  v13 = topicCopy;
  v9 = topicCopy;
  v10 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"baasigner" interface:v8 timeout:handlerCopy errorHandler:v12 resolverBlock:60.0];

  return v10;
}

- (id)eventReportingCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCEventReportingInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"eventReporting" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E6580 resolverBlock:60.0];

  return v6;
}

- (id)interalTestingCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCInternalTestingInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"internalTesting" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E65A0 resolverBlock:60.0];

  return v6;
}

- (id)diagnosticHandlingCollaboratorWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSXPCDiagnosticHandlingInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"diagnosticHandling" interface:v5 timeout:handlerCopy errorHandler:&unk_1F09E65C0 resolverBlock:60.0];

  return v6;
}

- (void)performTask:(id)task
{
  taskCopy = task;
  queue = [(IDSXPCDaemonController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A8FDD0;
  v7[3] = &unk_1E743F110;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(queue, v7);
}

- (void)addInterruptionHandler:(id)handler forTarget:(id)target
{
  handlerCopy = handler;
  targetCopy = target;
  if (handlerCopy && targetCopy)
  {
    interruptionHandlerByTarget = self->_interruptionHandlerByTarget;
    if (!interruptionHandlerByTarget)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v9 = self->_interruptionHandlerByTarget;
      self->_interruptionHandlerByTarget = weakToStrongObjectsMapTable;

      interruptionHandlerByTarget = self->_interruptionHandlerByTarget;
    }

    v10 = MEMORY[0x19A8BBEF0](handlerCopy);
    [(NSMapTable *)interruptionHandlerByTarget setObject:v10 forKey:targetCopy];
  }
}

- (void)removeInterruptionHandlerForTarget:(id)target
{
  targetCopy = target;
  if (targetCopy)
  {
    [(NSMapTable *)self->_interruptionHandlerByTarget removeObjectForKey:targetCopy];
    if (![(NSMapTable *)self->_interruptionHandlerByTarget count])
    {
      interruptionHandlerByTarget = self->_interruptionHandlerByTarget;
      self->_interruptionHandlerByTarget = 0;
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)_daemonProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(IDSXPCDaemonController *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A8FFD8;
  v9[3] = &unk_1E74413C8;
  v9[4] = self;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)_timingOutDaemonProxyWithTimeout:(double)timeout errorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(IDSXPCDaemonController *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A90124;
  v11[3] = &unk_1E74413C8;
  v11[4] = self;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [connection remoteObjectProxyWithTimeoutInSeconds:v11 errorHandler:timeout];

  return v9;
}

- (id)_collaboratorWithIdentifier:(id)identifier interface:(id)interface timeout:(double)timeout errorHandler:(id)handler resolverBlock:(id)block
{
  v55 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  interfaceCopy = interface;
  handlerCopy = handler;
  blockCopy = block;
  v16 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2048;
    *&buf[14] = timeout;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_INFO, "Get collaborator {identifier: %{public}@, timeout: %f}", buf, 0x16u);
  }

  if (self->_sync)
  {
    remoteObjectProxy = [(IDSXPCDaemonController *)self _sync_collaboratorWithIdentifier:identifierCopy errorHandler:handlerCopy resolverBlock:blockCopy];
  }

  else
  {
    queue = [(IDSXPCDaemonController *)self queue];
    dispatch_assert_queue_V2(queue);

    v19 = [IDSXPCConnectionRemoteObjectPromise alloc];
    queue2 = [(IDSXPCDaemonController *)self queue];
    v38 = [(IDSXPCConnectionRemoteObjectPromise *)v19 initWithInterface:interfaceCopy queue:queue2];

    collaboratorPromiseDictionary = [(IDSXPCDaemonController *)self collaboratorPromiseDictionary];
    promise = [collaboratorPromiseDictionary objectForKeyedSubscript:identifierCopy];

    v23 = &off_195B53000;
    if (!promise)
    {
      v24 = [MEMORY[0x1E69A5270] xpc];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = identifierCopy;
        _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "Creating collaborator promise {identifier: %{public}@}", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v54 = 0;
      v25 = objc_alloc(MEMORY[0x1E69956D0]);
      queue3 = [(IDSXPCDaemonController *)self queue];
      v27 = [v25 initWithQueue:queue3];

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_195A90648;
      v48[3] = &unk_1E74405A8;
      v52 = buf;
      v28 = v27;
      v49 = v28;
      selfCopy = self;
      v29 = identifierCopy;
      v51 = v29;
      v37 = [(IDSXPCDaemonController *)self _timingOutDaemonProxyWithTimeout:v48 errorHandler:timeout];
      connection = [(IDSXPCDaemonController *)self connection];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = sub_195A906D4;
      v44[3] = &unk_1E74413F0;
      v47 = buf;
      v31 = v28;
      v45 = v31;
      v32 = connection;
      v46 = v32;
      blockCopy[2](blockCopy, v37, v44);
      promise = [v31 promise];
      collaboratorPromiseDictionary2 = [(IDSXPCDaemonController *)self collaboratorPromiseDictionary];
      [collaboratorPromiseDictionary2 setObject:promise forKeyedSubscript:v29];

      _Block_object_dispose(buf, 8);
      v23 = &off_195B53000;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = *(v23 + 499);
    v39[2] = sub_195A9076C;
    v39[3] = &unk_1E7441418;
    timeoutCopy = timeout;
    v42 = handlerCopy;
    v39[4] = self;
    v40 = identifierCopy;
    v41 = v38;
    v34 = v38;
    [promise registerResultBlock:v39];
    remoteObjectProxy = [(IDSXPCConnectionRemoteObjectPromise *)v34 remoteObjectProxy];
  }

  v35 = *MEMORY[0x1E69E9840];

  return remoteObjectProxy;
}

- (id)_sync_collaboratorWithIdentifier:(id)identifier errorHandler:(id)handler resolverBlock:(id)block
{
  identifierCopy = identifier;
  handlerCopy = handler;
  blockCopy = block;
  v11 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_INFO, "Get sync collaborator", buf, 2u);
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = sub_195A00754;
  v26 = sub_195A03D50;
  v27 = 0;
  connection = [(IDSXPCDaemonController *)self connection];
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A90C18;
  v18[3] = &unk_1E7441440;
  v14 = handlerCopy;
  v20 = v14;
  v21 = buf;
  v18[4] = self;
  v15 = identifierCopy;
  v19 = v15;
  blockCopy[2](blockCopy, v13, v18);
  v16 = *(v23 + 5);

  _Block_object_dispose(buf, 8);

  return v16;
}

@end