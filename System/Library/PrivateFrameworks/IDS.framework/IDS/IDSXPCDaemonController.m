@interface IDSXPCDaemonController
+ (id)onQueueWeakSharedInstance;
+ (id)weakSharedInstance;
+ (void)asyncWeakSharedInstance:(id)a3;
+ (void)performDaemonControllerTask:(id)a3;
- (id)_collaboratorWithIdentifier:(id)a3 interface:(id)a4 timeout:(double)a5 errorHandler:(id)a6 resolverBlock:(id)a7;
- (id)_daemonProxyWithErrorHandler:(id)a3;
- (id)_initWithQueue:(id)a3 isSync:(BOOL)a4 connectionCreationBlock:(id)a5;
- (id)_sync_collaboratorWithIdentifier:(id)a3 errorHandler:(id)a4 resolverBlock:(id)a5;
- (id)_timingOutDaemonProxyWithTimeout:(double)a3 errorHandler:(id)a4;
- (id)activityMonitorCollaboratorWithErrorHandler:(id)a3;
- (id)baaSignerCollaboratorForTopic:(id)a3 withErrorHandler:(id)a4;
- (id)diagnosticHandlingCollaboratorWithErrorHandler:(id)a3;
- (id)eventReportingCollaboratorWithErrorHandler:(id)a3;
- (id)featureTogglerCollaboratorForService:(id)a3 withErrorHandler:(id)a4;
- (id)firewallCollaboratorForService:(id)a3 withErrorHandler:(id)a4;
- (id)groupSessionKeyValueDeliveryProviderCollaboratorWithErrorHandler:(id)a3;
- (id)interalTestingCollaboratorWithErrorHandler:(id)a3;
- (id)keyTransparencyCollaboratorWithErrorHandler:(id)a3;
- (id)offGridMessengerCollaboratorWithErrorHandler:(id)a3;
- (id)offGridStateManagerCollaboratorWithErrorHandler:(id)a3;
- (id)opportunisticCollaboratorWithErrorHandler:(id)a3;
- (id)pairedDeviceManagerCollaboratorWithErrorHandler:(id)a3;
- (id)pairingCollaboratorWithTimeout:(double)a3 errorHandler:(id)a4;
- (id)phoneNumberCredentialVendorCollaboratorWithErrorHandler:(id)a3;
- (id)pinnedIdentityCollaboratorWithErrorHandler:(id)a3;
- (id)registrationCollaboratorWithErrorHandler:(id)a3;
- (id)reunionSyncCollaboratorWithErrorHandler:(id)a3;
- (id)serverMessagingCollaboratorWithErrorHandler:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)addInterruptionHandler:(id)a3 forTarget:(id)a4;
- (void)dealloc;
- (void)performTask:(id)a3;
- (void)removeInterruptionHandlerForTarget:(id)a3;
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
    v6 = [v5 queue];
    v3 = [(IDSXPCDaemonController *)v4 initWithQueue:v6];

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
  v6[5] = a1;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (void)asyncWeakSharedInstance:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A8E70C;
  v7[3] = &unk_1E7440988;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 performBlock:v7];
}

+ (void)performDaemonControllerTask:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A8E824;
  v7[3] = &unk_1E7440988;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 performBlock:v7];
}

- (id)_initWithQueue:(id)a3 isSync:(BOOL)a4 connectionCreationBlock:(id)a5
{
  v6 = a4;
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = _IDSRunningInDaemon();
  v12 = [MEMORY[0x1E69A5270] xpc];
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B32F44(self, v13);
    }

    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v39 = self;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Alloc'ing IDSXPCDaemonController {pointer: %p}", buf, 0xCu);
    }

    v37.receiver = self;
    v37.super_class = IDSXPCDaemonController;
    v15 = [(IDSXPCDaemonController *)&v37 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_queue, a3);
      v17 = v10[2](v10);
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
      if (v6)
      {
        v21 = [(IDSXPCConnection *)v20 initForSyncMessagingWithQueue:v9 takingOverAndResumingConnection:v17, v31, v32, v33, v34];
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
        v26 = [(IDSXPCConnection *)v20 initWithQueue:v9 takingOverAndResumingConnection:v17, v31, v32, v33, v34];
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
    v14 = self;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc'ing IDSXPCDaemonController {pointer: %p}", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = IDSXPCDaemonController;
  [(IDSXPCDaemonController *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Activating daemon controller", v9, 2u);
  }

  if (self->_sync)
  {
    v6 = [(IDSXPCDaemonController *)self connection];
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v4];
    [v7 activateWithCompletion:v4];
  }

  else
  {
    v8 = [(IDSXPCDaemonController *)self queue];
    dispatch_assert_queue_V2(v8);

    v6 = [(IDSXPCDaemonController *)self _daemonProxyWithErrorHandler:v4];
    [v6 activateWithCompletion:v4];
  }
}

- (id)pairingCollaboratorWithTimeout:(double)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = +[IDSXPCPairingInterface interface];
  v8 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"pairing" interface:v7 timeout:v6 errorHandler:&unk_1F09E63E0 resolverBlock:a3];

  return v8;
}

- (id)pairedDeviceManagerCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCPairedDeviceManagerInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"pairedDeviceManager" interface:v5 timeout:v4 errorHandler:&unk_1F09E6400 resolverBlock:60.0];

  return v6;
}

- (id)reunionSyncCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCReunionSyncInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"reunionSync" interface:v5 timeout:v4 errorHandler:&unk_1F09E6420 resolverBlock:60.0];

  return v6;
}

- (id)opportunisticCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCOpportunisticInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"opportunistic" interface:v5 timeout:v4 errorHandler:&unk_1F09E6440 resolverBlock:60.0];

  return v6;
}

- (id)registrationCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCRegistrationInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"registration" interface:v5 timeout:v4 errorHandler:&unk_1F09E6460 resolverBlock:60.0];

  return v6;
}

- (id)activityMonitorCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCActivityMonitorInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"activityMonitor" interface:v5 timeout:v4 errorHandler:&unk_1F09E6480 resolverBlock:3600.0];

  return v6;
}

- (id)serverMessagingCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCServerMessagingInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"serverMessaging" interface:v5 timeout:v4 errorHandler:&unk_1F09E64A0 resolverBlock:3600.0];

  return v6;
}

- (id)offGridMessengerCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCOffGridMessengerInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"offgridMessenger" interface:v5 timeout:v4 errorHandler:&unk_1F09E64C0 resolverBlock:3600.0];

  return v6;
}

- (id)offGridStateManagerCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCOffGridStateManagerInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"offgridStateManager" interface:v5 timeout:v4 errorHandler:&unk_1F09E64E0 resolverBlock:3600.0];

  return v6;
}

- (id)keyTransparencyCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCKeyTransparencyInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"keyTransparency" interface:v5 timeout:v4 errorHandler:&unk_1F09E6500 resolverBlock:3600.0];

  return v6;
}

- (id)pinnedIdentityCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCPinnedIdentityInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"pinnedIdentity" interface:v5 timeout:v4 errorHandler:&unk_1F09E6520 resolverBlock:3600.0];

  return v6;
}

- (id)phoneNumberCredentialVendorCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCPhoneNumberCredentialVendorInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"phoneNumberCredentialVendor" interface:v5 timeout:v4 errorHandler:&unk_1F09E6540 resolverBlock:3600.0];

  return v6;
}

- (id)firewallCollaboratorForService:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = a4;
  v9 = [v7 stringWithFormat:@"firewall-%@", v6];
  v10 = +[IDSXPCFirewallInterface interface];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A8F86C;
  v14[3] = &unk_1E74413A0;
  v15 = v6;
  v11 = v6;
  v12 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:v9 interface:v10 timeout:v8 errorHandler:v14 resolverBlock:60.0];

  return v12;
}

- (id)groupSessionKeyValueDeliveryProviderCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCGroupSessionKeyValueDeliveryProviderInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"groupSessionKeyValueDeliveryProvider" interface:v5 timeout:v4 errorHandler:&unk_1F09E6560 resolverBlock:60.0];

  return v6;
}

- (id)featureTogglerCollaboratorForService:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSXPCFeatureTogglerInterface interface];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A8FA20;
  v12[3] = &unk_1E74413A0;
  v13 = v6;
  v9 = v6;
  v10 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"featuretoggler" interface:v8 timeout:v7 errorHandler:v12 resolverBlock:60.0];

  return v10;
}

- (id)baaSignerCollaboratorForTopic:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSXPCBAASignerInterface interface];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A8FB38;
  v12[3] = &unk_1E74413A0;
  v13 = v6;
  v9 = v6;
  v10 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"baasigner" interface:v8 timeout:v7 errorHandler:v12 resolverBlock:60.0];

  return v10;
}

- (id)eventReportingCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCEventReportingInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"eventReporting" interface:v5 timeout:v4 errorHandler:&unk_1F09E6580 resolverBlock:60.0];

  return v6;
}

- (id)interalTestingCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCInternalTestingInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"internalTesting" interface:v5 timeout:v4 errorHandler:&unk_1F09E65A0 resolverBlock:60.0];

  return v6;
}

- (id)diagnosticHandlingCollaboratorWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSXPCDiagnosticHandlingInterface interface];
  v6 = [(IDSXPCDaemonController *)self _collaboratorWithIdentifier:@"diagnosticHandling" interface:v5 timeout:v4 errorHandler:&unk_1F09E65C0 resolverBlock:60.0];

  return v6;
}

- (void)performTask:(id)a3
{
  v4 = a3;
  v5 = [(IDSXPCDaemonController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A8FDD0;
  v7[3] = &unk_1E743F110;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)addInterruptionHandler:(id)a3 forTarget:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11 && v6)
  {
    interruptionHandlerByTarget = self->_interruptionHandlerByTarget;
    if (!interruptionHandlerByTarget)
    {
      v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v9 = self->_interruptionHandlerByTarget;
      self->_interruptionHandlerByTarget = v8;

      interruptionHandlerByTarget = self->_interruptionHandlerByTarget;
    }

    v10 = MEMORY[0x19A8BBEF0](v11);
    [(NSMapTable *)interruptionHandlerByTarget setObject:v10 forKey:v6];
  }
}

- (void)removeInterruptionHandlerForTarget:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMapTable *)self->_interruptionHandlerByTarget removeObjectForKey:v4];
    if (![(NSMapTable *)self->_interruptionHandlerByTarget count])
    {
      interruptionHandlerByTarget = self->_interruptionHandlerByTarget;
      self->_interruptionHandlerByTarget = 0;
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)_daemonProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(IDSXPCDaemonController *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A8FFD8;
  v9[3] = &unk_1E74413C8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)_timingOutDaemonProxyWithTimeout:(double)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = [(IDSXPCDaemonController *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A90124;
  v11[3] = &unk_1E74413C8;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 remoteObjectProxyWithTimeoutInSeconds:v11 errorHandler:a3];

  return v9;
}

- (id)_collaboratorWithIdentifier:(id)a3 interface:(id)a4 timeout:(double)a5 errorHandler:(id)a6 resolverBlock:(id)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = a5;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_INFO, "Get collaborator {identifier: %{public}@, timeout: %f}", buf, 0x16u);
  }

  if (self->_sync)
  {
    v17 = [(IDSXPCDaemonController *)self _sync_collaboratorWithIdentifier:v12 errorHandler:v14 resolverBlock:v15];
  }

  else
  {
    v18 = [(IDSXPCDaemonController *)self queue];
    dispatch_assert_queue_V2(v18);

    v19 = [IDSXPCConnectionRemoteObjectPromise alloc];
    v20 = [(IDSXPCDaemonController *)self queue];
    v38 = [(IDSXPCConnectionRemoteObjectPromise *)v19 initWithInterface:v13 queue:v20];

    v21 = [(IDSXPCDaemonController *)self collaboratorPromiseDictionary];
    v22 = [v21 objectForKeyedSubscript:v12];

    v23 = &off_195B53000;
    if (!v22)
    {
      v24 = [MEMORY[0x1E69A5270] xpc];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "Creating collaborator promise {identifier: %{public}@}", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v54 = 0;
      v25 = objc_alloc(MEMORY[0x1E69956D0]);
      v26 = [(IDSXPCDaemonController *)self queue];
      v27 = [v25 initWithQueue:v26];

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_195A90648;
      v48[3] = &unk_1E74405A8;
      v52 = buf;
      v28 = v27;
      v49 = v28;
      v50 = self;
      v29 = v12;
      v51 = v29;
      v37 = [(IDSXPCDaemonController *)self _timingOutDaemonProxyWithTimeout:v48 errorHandler:a5];
      v30 = [(IDSXPCDaemonController *)self connection];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = sub_195A906D4;
      v44[3] = &unk_1E74413F0;
      v47 = buf;
      v31 = v28;
      v45 = v31;
      v32 = v30;
      v46 = v32;
      v15[2](v15, v37, v44);
      v22 = [v31 promise];
      v33 = [(IDSXPCDaemonController *)self collaboratorPromiseDictionary];
      [v33 setObject:v22 forKeyedSubscript:v29];

      _Block_object_dispose(buf, 8);
      v23 = &off_195B53000;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = *(v23 + 499);
    v39[2] = sub_195A9076C;
    v39[3] = &unk_1E7441418;
    v43 = a5;
    v42 = v14;
    v39[4] = self;
    v40 = v12;
    v41 = v38;
    v34 = v38;
    [v22 registerResultBlock:v39];
    v17 = [(IDSXPCConnectionRemoteObjectPromise *)v34 remoteObjectProxy];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_sync_collaboratorWithIdentifier:(id)a3 errorHandler:(id)a4 resolverBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v12 = [(IDSXPCDaemonController *)self connection];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A90C18;
  v18[3] = &unk_1E7441440;
  v14 = v9;
  v20 = v14;
  v21 = buf;
  v18[4] = self;
  v15 = v8;
  v19 = v15;
  v10[2](v10, v13, v18);
  v16 = *(v23 + 5);

  _Block_object_dispose(buf, 8);

  return v16;
}

@end