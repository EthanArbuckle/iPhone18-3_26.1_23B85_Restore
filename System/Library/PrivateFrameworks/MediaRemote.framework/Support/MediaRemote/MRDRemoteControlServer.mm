@interface MRDRemoteControlServer
- (BOOL)_applicationIsRunning:(id)running;
- (BOOL)_checkAndMaybeUpdateNowPlayingAppStackPopRateLimitingWithInterval:(double)interval;
- (BOOL)_clearQueuedCommand:(id)command forUnavailableApplicationWithDisplayID:(id)d;
- (BOOL)_isCommandCacheable:(unsigned int)cacheable;
- (MRDRemoteControlServer)init;
- (NSArray)remoteControlClients;
- (NSMutableDictionary)applicationConnections;
- (id)_attributedCommand:(id)command forClient:(id)client;
- (id)_contextuallyAwareDestinationAppDisplayIDForCommand:(id)command;
- (id)_createBroadcastCommandPlayerPathForClient:(id)client;
- (id)_createBroadcastCommandResponseFromStatuses:(id)statuses forClient:(id)client;
- (id)_destinationClientForRemoteControlCommand:(id)command;
- (id)_effectiveContextIDForCommand:(id)command;
- (id)_enqueuedCommandsForDisplayID:(id)d;
- (id)_onQueue_createAndActivateConnection:(id)connection forClient:(id)client;
- (id)_onQueue_presentDialogWithTitle:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle completion:(id)completion;
- (id)_persistPlaybackSessionAndUpdateOptionsForSessionPreloadCommand:(id)command forClient:(id)client error:(id *)error;
- (id)_populateApplicationSpecificDataForPrepareForSetQueueCommand:(id)command forClient:(id)client;
- (id)_remoteControlContextForCommand:(id)command;
- (id)_resolveCommandBeforeSend:(id)send toClient:(id)client error:(id *)error;
- (id)_resolvedLocalDeviceDestinationAppDisplayIdentifierForCommand:(id)command;
- (void)_cleanUpPersistedSessionForSessionPreloadCommand:(id)command;
- (void)_clearAllQueuedCommandsForReason:(id)reason;
- (void)_clientDidConnectNotification:(id)notification;
- (void)_enqueueCommand:(id)command forApplication:(id)application withCompletion:(id)completion;
- (void)_enqueueCommand:(id)command forUnavailableApplicationWithDisplayID:(id)d;
- (void)_forwardCommand:(id)command completion:(id)completion;
- (void)_handleApplicationConnectionDidInvalidateNotification:(id)notification;
- (void)_handleBroadcastCommandMessage:(id)message fromClient:(id)client;
- (void)_handleCloseApplicationConnectionMessage:(id)message fromClient:(id)client;
- (void)_handleCreateApplicationConnectionMessage:(id)message fromClient:(id)client;
- (void)_handleDismissMediaControlsCommandMessage:(id)message fromClient:(id)client;
- (void)_handleGetPendingCommandsMessage:(id)message fromClient:(id)client;
- (void)_handlePlayerIsPlayingDidChangeNotification:(id)notification;
- (void)_handlePresentMediaControlsCommandMessage:(id)message fromClient:(id)client;
- (void)_handlePrewarmMediaControlsCommandMessage:(id)message fromClient:(id)client;
- (void)_handleRestrictCommandClientsMessage:(id)message fromClient:(id)client;
- (void)_handleSendApplicationConnectionMessage:(id)message fromClient:(id)client;
- (void)_handleSendCommandMessage:(id)message fromClient:(id)client;
- (void)_handleSendPlaybackSessionMessage:(id)message fromClient:(id)client;
- (void)_handleSendPlaybackSessionMigrateBeginMessage:(id)message fromClient:(id)client;
- (void)_handleSendPlaybackSessionMigrateEndMessage:(id)message fromClient:(id)client;
- (void)_handleSendPlaybackSessionMigratePostMessage:(id)message fromClient:(id)client;
- (void)_handleTriggerAudioFadeMessage:(id)message fromClient:(id)client;
- (void)_performCommandProcessingAfterSend:(id)send;
- (void)_sendExternalCommand:(id)command withCompletionHandler:(id)handler;
- (void)_sendLocalCommand:(id)command withCompletionHandler:(id)handler;
- (void)_sendQueuedCommandsForDestinationClient:(id)client;
- (void)_sendRemoteControlCommand:(id)command completion:(id)completion;
- (void)_sendRemoteControlCommand:(id)command toDestinationClient:(id)client withCompletion:(id)completion;
- (void)_sendRemoteControlCommand:(id)command toDestinationClient:(id)client withLegacyCompletion:(id)completion;
- (void)_shouldIgnoreCommand:(id)command completion:(id)completion;
- (void)broadcastRemoteControlCommand:(id)command completion:(id)completion;
- (void)clearContextsForClient:(id)client;
- (void)collectDiagnostic:(id)diagnostic;
- (void)dealloc;
- (void)handleClientBoundApplicationConnectionMessage:(id)message;
- (void)handleInvalidateApplicationConnectionMessage:(id)message;
- (void)handleServerBoundApplicationConnectionMessage:(id)message;
- (void)handleXPCMessage:(id)message fromClient:(id)client;
- (void)phoneCallObserver:(id)observer callDidChange:(id)change;
- (void)registerIncomingApplicationConnection:(id)connection clientBoundMessageHandler:(id)handler completion:(id)completion;
- (void)sendRemoteControlCommand:(id)command completion:(id)completion;
- (void)sendRemoteControlCommand:(id)command toClients:(id)clients completion:(id)completion;
@end

@implementation MRDRemoteControlServer

- (MRDRemoteControlServer)init
{
  v22.receiver = self;
  v22.super_class = MRDRemoteControlServer;
  v2 = [(MRDRemoteControlServer *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaremote.MRDRemoteControlServer", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    commandQueuesForDisplayIDs = v2->_commandQueuesForDisplayIDs;
    v2->_commandQueuesForDisplayIDs = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    remoteControlContexts = v2->_remoteControlContexts;
    v2->_remoteControlContexts = v8;

    v10 = +[NSMutableDictionary dictionary];
    redirectionCache = v2->_redirectionCache;
    v2->_redirectionCache = v10;

    v12 = objc_alloc_init(MRDPhoneCallObserver);
    callObserver = v2->_callObserver;
    v2->_callObserver = v12;

    [(MRDPhoneCallObserver *)v2->_callObserver setDelegate:v2];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create("com.apple.mediaremote.MRDMediaRemoteUIService", v15);
    remoteAlertWorkerQueue = v2->_remoteAlertWorkerQueue;
    v2->_remoteAlertWorkerQueue = v16;

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"_clientDidConnectNotification:" name:@"MRDMediaRemoteClientDidConnect" object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v2 selector:"_handlePlayerIsPlayingDidChangeNotification:" name:kMRMediaRemotePlayerIsPlayingDidChangeNotification object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v2 selector:"_handleApplicationConnectionDidInvalidateNotification:" name:@"MRDApplicationConnectionDidInvalidateNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if (notify_is_valid_token(self->_fadeOutNotificationToken))
  {
    notify_cancel(self->_fadeOutNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = MRDRemoteControlServer;
  [(MRDRemoteControlServer *)&v4 dealloc];
}

- (void)sendRemoteControlCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  if ([commandCopy isAVRCPCommand])
  {
    if ([(MRDPhoneCallObserver *)self->_callObserver callControllerWillHandleCommandForBargeCalls:commandCopy])
    {
      v8 = [[MRCommandResult alloc] initWithHandlerStatuses:&off_1004E0E20 sendError:0];
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Yielding AVRCP command to bargeCallHandler", buf, 2u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, v8);
      }
    }

    else
    {
      v10 = qos_class_self();
      callObserver = self->_callObserver;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100054BC4;
      v12[3] = &unk_1004B7220;
      v15 = completionCopy;
      v16 = v10;
      v13 = commandCopy;
      selfCopy = self;
      [(MRDPhoneCallObserver *)callObserver handleMediaRemoteCommand:v13 completion:v12];
    }
  }

  else
  {
    [(MRDRemoteControlServer *)self _sendRemoteControlCommand:commandCopy completion:completionCopy];
  }
}

- (void)_sendRemoteControlCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v8 = _MRLogForCategory();
  commandID = [commandCopy commandID];
  v10 = [commandID hash];

  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SendCommandDaemon", "", &buf, 2u);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100055164;
  v26[3] = &unk_1004B7270;
  v11 = commandCopy;
  v27 = v11;
  selfCopy = self;
  v12 = completionCopy;
  v29 = v12;
  v13 = objc_retainBlock(v26);
  v14 = [v11 mutableCopy];
  if (-[MRDRemoteControlServer _isCommandCacheCreating:](self, "_isCommandCacheCreating:", [v11 commandType]))
  {
    v15 = [(MRDRemoteControlServer *)self _effectiveContextIDForCommand:v11];
    if (v15)
    {
      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Got a cache creating command from assistant, context: %{public}@.", &buf, 0xCu);
      }

      serialQueue = self->_serialQueue;
      v25 = v15;
      msv_dispatch_sync_on_queue();
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x2020000000;
  v32 = 0;
  if (-[MRDRemoteControlServer _isCommandCacheable:](self, "_isCommandCacheable:", [v11 commandType]))
  {
    v18 = [(MRDRemoteControlServer *)self _effectiveContextIDForCommand:v11];
    v19 = v18;
    if (v18)
    {
      v20 = self->_serialQueue;
      v21 = v18;
      v22 = v11;
      v24 = v12;
      v23 = v14;
      msv_dispatch_sync_on_queue();
    }
  }

  if ((*(*(&buf + 1) + 24) & 1) == 0)
  {
    [(MRDRemoteControlServer *)self _forwardCommand:v14 completion:v13];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)broadcastRemoteControlCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  playerPath = [commandCopy playerPath];
  origin = [playerPath origin];
  isLocal = [origin isLocal];

  if (isLocal)
  {
    remoteControlClients = [(MRDRemoteControlServer *)self remoteControlClients];
    [(MRDRemoteControlServer *)self sendRemoteControlCommand:commandCopy toClients:remoteControlClients completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 3, 0);
  }
}

- (void)sendRemoteControlCommand:(id)command toClients:(id)clients completion:(id)completion
{
  commandCopy = command;
  clientsCopy = clients;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100055FBC;
  v19[3] = &unk_1004B72E8;
  completionCopy = completion;
  v10 = completionCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000560A8;
  v14[3] = &unk_1004B73B0;
  v15 = commandCopy;
  v16 = clientsCopy;
  selfCopy = self;
  v18 = objc_retainBlock(v19);
  v11 = clientsCopy;
  v12 = v18;
  v13 = commandCopy;
  [(MRDRemoteControlServer *)self _shouldIgnoreCommand:v13 completion:v14];
}

- (void)clearContextsForClient:(id)client
{
  clientCopy = client;
  serialQueue = self->_serialQueue;
  v7 = clientCopy;
  v6 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (NSArray)remoteControlClients
{
  v2 = +[MRDMediaRemoteServer server];
  allClients = [v2 allClients];

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = allClients;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 canBeNowPlaying])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)registerIncomingApplicationConnection:(id)connection clientBoundMessageHandler:(id)handler completion:(id)completion
{
  connectionCopy = connection;
  handlerCopy = handler;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100056E5C;
  v15[3] = &unk_1004B7450;
  v16 = connectionCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = handlerCopy;
  v14 = connectionCopy;
  dispatch_async_and_wait(serialQueue, v15);
}

- (void)handleClientBoundApplicationConnectionMessage:(id)message
{
  messageCopy = message;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000572B4;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)handleServerBoundApplicationConnectionMessage:(id)message
{
  messageCopy = message;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000573E8;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)handleInvalidateApplicationConnectionMessage:(id)message
{
  messageCopy = message;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005751C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)handleXPCMessage:(id)message fromClient:(id)client
{
  xdict = message;
  clientCopy = client;
  switch(xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY"))
  {
    case 0x400000000000001uLL:
      [(MRDRemoteControlServer *)self _handleSendCommandMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000002uLL:
      [(MRDRemoteControlServer *)self _handleBroadcastCommandMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000003uLL:
      [(MRDRemoteControlServer *)self _handlePrewarmMediaControlsCommandMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000004uLL:
      [(MRDRemoteControlServer *)self _handlePresentMediaControlsCommandMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000005uLL:
      [(MRDRemoteControlServer *)self _handleDismissMediaControlsCommandMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000006uLL:
      [(MRDRemoteControlServer *)self _handleGetPendingCommandsMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000007uLL:
      [(MRDRemoteControlServer *)self _handleSendPlaybackSessionMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000008uLL:
      [(MRDRemoteControlServer *)self _handleSendPlaybackSessionMigrateBeginMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000009uLL:
      [(MRDRemoteControlServer *)self _handleSendPlaybackSessionMigrateEndMessage:xdict fromClient:clientCopy];
      break;
    case 0x40000000000000AuLL:
      [(MRDRemoteControlServer *)self _handleSendPlaybackSessionMigratePostMessage:xdict fromClient:clientCopy];
      break;
    case 0x40000000000000BuLL:
      [(MRDRemoteControlServer *)self _handleTriggerAudioFadeMessage:xdict fromClient:clientCopy];
      break;
    case 0x40000000000000EuLL:
      [(MRDRemoteControlServer *)self _handleRestrictCommandClientsMessage:xdict fromClient:clientCopy];
      break;
    case 0x40000000000000FuLL:
      [(MRDRemoteControlServer *)self _handleCreateApplicationConnectionMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000010uLL:
      [(MRDRemoteControlServer *)self _handleSendApplicationConnectionMessage:xdict fromClient:clientCopy];
      break;
    case 0x400000000000011uLL:
      [(MRDRemoteControlServer *)self _handleCloseApplicationConnectionMessage:xdict fromClient:clientCopy];
      break;
    default:
      break;
  }
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100057820;
  v7[3] = &unk_1004B68F0;
  v8 = diagnosticCopy;
  selfCopy = self;
  v6 = diagnosticCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)_handleSendCommandMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  kdebug_trace();
  v8 = sub_100057A98(messageCopy, clientCopy);
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = clientCopy;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received command from client %{public}@: %{public}@", buf, 0x16u);
  }

  v10 = _MRLogForCategory();
  commandID = [v8 commandID];
  v12 = [commandID hash];

  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "SendCommandXPCToDaemon", "", buf, 2u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100057CD0;
  v15[3] = &unk_1004B7478;
  v16 = messageCopy;
  v17 = v8;
  v13 = v8;
  v14 = messageCopy;
  [(MRDRemoteControlServer *)self sendRemoteControlCommand:v13 completion:v15];
}

- (void)_handleBroadcastCommandMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = sub_100057A98(messageCopy, clientCopy);
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = clientCopy;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received broadcast command from client %{public}@: %{public}@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100057F50;
  v11[3] = &unk_1004B74E0;
  v12 = messageCopy;
  v10 = messageCopy;
  [(MRDRemoteControlServer *)self broadcastRemoteControlCommand:v8 completion:v11];
}

- (void)_handlePrewarmMediaControlsCommandMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  v8 = MRCreateDataFromXPCMessage();
  v9 = xpc_dictionary_get_value(messageCopy, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY");

  remoteAlertWorkerQueue = self->_remoteAlertWorkerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058138;
  block[3] = &unk_1004B69D0;
  v15 = clientCopy;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = clientCopy;
  dispatch_async(remoteAlertWorkerQueue, block);
}

- (void)_handlePresentMediaControlsCommandMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [clientCopy displayName];
    *buf = 138412290;
    v17 = displayName;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Presenting remoteUIService for client: %@", buf, 0xCu);
  }

  remoteAlertWorkerQueue = self->_remoteAlertWorkerQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100058430;
  v13[3] = &unk_1004B68F0;
  v14 = clientCopy;
  v15 = messageCopy;
  v11 = messageCopy;
  v12 = clientCopy;
  dispatch_async(remoteAlertWorkerQueue, v13);
}

- (void)_handleDismissMediaControlsCommandMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [clientCopy displayName];
    *buf = 138412290;
    v13 = displayName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Destroying remoteUIService for client: %@", buf, 0xCu);
  }

  remoteAlertWorkerQueue = self->_remoteAlertWorkerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000586B0;
  block[3] = &unk_1004B6D08;
  v11 = clientCopy;
  v9 = clientCopy;
  dispatch_async(remoteAlertWorkerQueue, block);
}

- (void)_handleGetPendingCommandsMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  MRCreatePlayerPathFromXPCMessage();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005878C;
  v10[3] = &unk_1004B7508;
  v10[4] = self;
  v12 = v11 = clientCopy;
  v8 = v12;
  v9 = clientCopy;
  sub_100008278(messageCopy, v10);
}

- (void)_handleSendPlaybackSessionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v8 nowPlayingServer];
  v10 = [nowPlayingServer queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];

  unresolvedPlayerPath = [v10 unresolvedPlayerPath];
  client = [unresolvedPlayerPath client];
  bundleIdentifier = [client bundleIdentifier];

  v14 = +[MRUserSettings currentSettings];
  [v14 launchApplicationTimeoutInterval];
  v16 = v15;

  playerPath = [v10 playerPath];
  origin = [playerPath origin];
  isLocal = [origin isLocal];

  if (isLocal)
  {
    if (bundleIdentifier)
    {
      serialQueue = self->_serialQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100058DFC;
      block[3] = &unk_1004B68F0;
      block[4] = self;
      v21 = bundleIdentifier;
      v39 = v21;
      dispatch_async(serialQueue, block);
      v22 = MRCreateProtobufFromXPCMessage();
      request = [v22 request];
      v24 = +[NSThread currentThread];
      threadDictionary = [v24 threadDictionary];
      [threadDictionary setObject:request forKeyedSubscript:@"migrateRequest"];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100058E70;
      v31[3] = &unk_1004B7580;
      v32 = messageCopy;
      v33 = clientCopy;
      v34 = request;
      v35 = v22;
      selfCopy = self;
      v37 = v21;
      v26 = v22;
      v27 = request;
      sub_10019F130(v37, 0, v31, v16);

      v28 = v39;
LABEL_8:

      goto LABEL_9;
    }

    sub_100008278(messageCopy, &stru_1004B75C0);
  }

  else
  {
    xpcClient = [v10 xpcClient];

    if (!xpcClient)
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100058DA4;
      v40[3] = &unk_1004B6E08;
      v41 = v10;
      sub_100008278(messageCopy, v40);
      v28 = v41;
      goto LABEL_8;
    }

    xpcClient2 = [v10 xpcClient];
    [xpcClient2 relayXPCMessage:messageCopy andReply:1];
  }

LABEL_9:
}

- (void)_handleSendPlaybackSessionMigrateBeginMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  v7 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v7 nowPlayingServer];
  v13 = [nowPlayingServer queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];

  v9 = MRCreateProtobufFromXPCMessage();
  request = [v9 request];
  playerPath = [v9 playerPath];
  [clientCopy addPendingPlaybackSessionMigrateEvent:request playerPath:playerPath];

  xpcClient = [v13 xpcClient];
  [xpcClient relayXPCMessage:messageCopy andReply:1];
}

- (void)_handleSendPlaybackSessionMigrateEndMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v6 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v6 nowPlayingServer];
  v8 = [nowPlayingServer queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];

  v9 = MRCreateProtobufFromXPCMessage();
  request = [v9 request];
  v11 = [clientCopy removePendingPlaybackSessionMigrateEvent:request];

  if (v11)
  {
    xpcClient = [v8 xpcClient];
    [xpcClient relayXPCMessage:messageCopy andReply:1];
  }

  else
  {
    sub_100008278(messageCopy, 0);
  }
}

- (void)_handleSendPlaybackSessionMigratePostMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  v7 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v7 nowPlayingServer];
  v10 = [nowPlayingServer queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];

  xpcClient = [v10 xpcClient];
  [xpcClient relayXPCMessage:messageCopy andReply:1];
}

- (void)_handleTriggerAudioFadeMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v8 nowPlayingServer];
  v10 = [nowPlayingServer queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];

  playerPath = [v10 playerPath];
  origin = [playerPath origin];
  isLocal = [origin isLocal];

  if (isLocal)
  {
    v14 = MRCreateProtobufFromXPCMessage();
    if ([v14 fadeType])
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        playerPath2 = [v10 playerPath];
        client = [playerPath2 client];
        bundleIdentifier = [client bundleIdentifier];
        *buf = 138477827;
        v43 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Requesting fade in on next playback for client %{private}@", buf, 0xCu);
      }

      v19 = +[AVSystemController sharedAVSystemController];
      playerPath3 = [v10 playerPath];
      client2 = [playerPath3 client];
      bundleIdentifier2 = [client2 bundleIdentifier];
      [v19 setAttribute:bundleIdentifier2 forKey:AVSystemController_AllowAppToFadeInTemporarilyAttribute error:0];

      sub_100008278(messageCopy, &stru_1004B7698);
    }

    else
    {
      objc_initWeak(buf, self);
      v25 = [MRBlockGuard alloc];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100059BA4;
      v39[3] = &unk_1004B7608;
      objc_copyWeak(&v41, buf);
      v26 = messageCopy;
      v40 = v26;
      v27 = [v25 initWithTimeout:@"Did not receive fade out notification" reason:v39 handler:1.0];
      serialQueue = self->_serialQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100059C8C;
      handler[3] = &unk_1004B7678;
      v29 = v27;
      v36 = v29;
      objc_copyWeak(&v38, buf);
      v37 = v26;
      notify_register_dispatch("com.apple.mediaexperience.fadeoutappliedforplaybackhandoff", &self->_fadeOutNotificationToken, serialQueue, handler);
      v30 = +[MRUserSettings currentSettings];
      LODWORD(v26) = [v30 supportMultiplayerHost];

      if (v26)
      {
        playerPath4 = [v10 playerPath];
        player = [playerPath4 player];

        v33 = +[AVSystemController sharedAVSystemController];
        v34 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [player audioSessionID]);
        [v33 setAttribute:v34 forKey:AVSystemController_InterruptAudioSessionIDForHandoff error:0];
      }

      else
      {
        player = +[AVSystemController sharedAVSystemController];
        [player setAttribute:0 forKey:AVSystemController_AppToInterruptCurrentNowPlayingSessionAttribute error:0];
      }

      objc_destroyWeak(&v38);
      objc_destroyWeak(&v41);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    xpcClient = [v10 xpcClient];

    if (xpcClient)
    {
      xpc_dictionary_set_uint64(messageCopy, "MRXPC_MESSAGE_ID_KEY", 0x70000000000000AuLL);
      xpcClient2 = [v10 xpcClient];
      [xpcClient2 relayXPCMessage:messageCopy andReply:1];
    }
  }
}

- (void)_handleRestrictCommandClientsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  if (([clientCopy entitlements] & 0x800) == 0)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1003A52CC();
    }

    sub_10000F9E4(messageCopy, 3u);
  }

  v9 = MRCreateDataFromXPCMessage();
  v10 = MRCreateArrayFromData();
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *buf = v11;
  *&buf[16] = v11;
  v12 = [NSData dataWithBytes:buf length:32];
  memset(buf, 0, sizeof(buf));
  v13 = [NSData dataWithBytes:buf length:32];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10005A2D0;
  v29[3] = &unk_1004B7700;
  v14 = v12;
  v30 = v14;
  v15 = v13;
  v31 = v15;
  v16 = [v10 msv_filter:v29];
  v17 = v16;
  v18 = &__NSArray0__struct;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [NSSet setWithArray:v19];

  v21 = [v20 count];
  commandClientsRestriction = [(MRDRemoteControlServer *)self commandClientsRestriction];
  if (v21)
  {
    v23 = [MRDCommandClientRestriction restrictedTo:v20 by:clientCopy];
    [(MRDRemoteControlServer *)self setCommandClientsRestriction:v23];

    v24 = _MRLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      commandClientsRestriction2 = [(MRDRemoteControlServer *)self commandClientsRestriction];
      *buf = 138412802;
      *&buf[4] = clientCopy;
      *&buf[12] = 2112;
      *&buf[14] = commandClientsRestriction2;
      *&buf[22] = 2112;
      *&buf[24] = commandClientsRestriction;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[RestrictedCommandClients Mode] %@ requested to enable restrictions: %@. Previous state: %@", buf, 0x20u);
    }
  }

  else
  {
    [(MRDRemoteControlServer *)self setCommandClientsRestriction:0];
    v24 = _MRLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = clientCopy;
      *&buf[12] = 2112;
      *&buf[14] = commandClientsRestriction;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[RestrictedCommandClients Mode] %@ requested to disable restriction. Previous state: %@", buf, 0x16u);
    }
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10005A324;
  v27[3] = &unk_1004B6E08;
  v28 = v20;
  v26 = v20;
  sub_100008278(messageCopy, v27);
}

- (void)_handleCreateApplicationConnectionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = MRCreateProtobufFromXPCMessage();
  context = [v8 context];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100034FB0;
  v18[4] = sub_10003599C;
  v19 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A56C;
  block[3] = &unk_1004B7748;
  v17 = v18;
  block[4] = self;
  v11 = context;
  v15 = v11;
  v12 = clientCopy;
  v16 = v12;
  dispatch_async_and_wait(serialQueue, block);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005A5BC;
  v13[3] = &unk_1004B7770;
  v13[4] = v18;
  sub_100008278(messageCopy, v13);

  _Block_object_dispose(v18, 8);
}

- (void)_handleCloseApplicationConnectionMessage:(id)message fromClient:(id)client
{
  v5 = MRCreateProtobufFromXPCMessage();
  context = [v5 context];
  error = [v5 error];
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A710;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = context;
  v13 = error;
  v9 = error;
  v10 = context;
  dispatch_async_and_wait(serialQueue, block);
}

- (void)_handleSendApplicationConnectionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = MRCreateProtobufFromXPCMessage();
  context = [v8 context];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100034FB0;
  v33 = sub_10003599C;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100034FB0;
  v27 = sub_10003599C;
  v28 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005AA60;
  block[3] = &unk_1004B7798;
  v22 = &v29;
  block[4] = self;
  v11 = context;
  v21 = v11;
  dispatch_async_and_wait(serialQueue, block);
  v12 = v30[5];
  if (v12)
  {
    type = [v12 type];
    v14 = v30[5];
    if (type == 1)
    {
      [v14 handleClientBoundMessage:v8];
    }

    else
    {
      [v14 handleServerBoundMessage:v8];
    }
  }

  else
  {
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      identifier = [v11 identifier];
      sub_1003A530C(identifier, buf, v15);
    }

    v17 = [[NSError alloc] initWithMRError:1];
    v18 = v24[5];
    v24[5] = v17;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005AAE4;
  v19[3] = &unk_1004B7770;
  v19[4] = &v23;
  sub_100008278(messageCopy, v19);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

- (id)_onQueue_createAndActivateConnection:(id)connection forClient:(id)client
{
  connectionCopy = connection;
  clientCopy = client;
  dispatch_assert_queue_V2(self->_serialQueue);
  destinationPlayerPath = [connectionCopy destinationPlayerPath];
  v9 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v9 nowPlayingServer];
  origin = [destinationPlayerPath origin];
  v12 = [nowPlayingServer originClientForOrigin:origin];

  destinationPlayerPath2 = [connectionCopy destinationPlayerPath];
  LOBYTE(nowPlayingServer) = [destinationPlayerPath2 isResolved];

  if (nowPlayingServer)
  {
    goto LABEL_7;
  }

  destinationPlayerPath3 = [connectionCopy destinationPlayerPath];
  isSystemMediaApplication = [destinationPlayerPath3 isSystemMediaApplication];

  if (isSystemMediaApplication)
  {
    v16 = [MRClient alloc];
    deviceInfo = [v12 deviceInfo];
    systemMediaApplication = [deviceInfo systemMediaApplication];
  }

  else
  {
    destinationPlayerPath4 = [connectionCopy destinationPlayerPath];
    isSystemPodcastsApplication = [destinationPlayerPath4 isSystemPodcastsApplication];

    if (!isSystemPodcastsApplication)
    {
      goto LABEL_7;
    }

    v16 = [MRClient alloc];
    deviceInfo = [v12 deviceInfo];
    systemMediaApplication = [deviceInfo systemPodcastApplication];
  }

  v21 = systemMediaApplication;
  v22 = [v16 initWithBundleIdentifier:systemMediaApplication];
  destinationPlayerPath5 = [connectionCopy destinationPlayerPath];
  [destinationPlayerPath5 setClient:v22];

LABEL_7:
  v24 = [MRApplicationConnectionRequestInfo alloc];
  v25 = +[MRDMediaRemoteServer server];
  deviceInfo2 = [v25 deviceInfo];
  createNowPlayingClient = [clientCopy createNowPlayingClient];
  v28 = [v24 initWithDeviceInfo:deviceInfo2 client:createNowPlayingClient];

  createNewApplicationConnectionCallback = [v12 createNewApplicationConnectionCallback];
  if (createNewApplicationConnectionCallback)
  {
    v30 = [[MRDApplicationConnection alloc] initWithContext:connectionCopy];
    objc_initWeak(&location, clientCopy);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10005AF54;
    v40[3] = &unk_1004B77C0;
    objc_copyWeak(&v41, &location);
    [(MRDApplicationConnection *)v30 setClientBoundMessageHandler:v40];
    applicationConnections = [(MRDRemoteControlServer *)self applicationConnections];
    identifier = [connectionCopy identifier];
    [applicationConnections setObject:v30 forKeyedSubscript:identifier];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10005B03C;
    v36[3] = &unk_1004B7810;
    v36[4] = self;
    v37 = connectionCopy;
    v38 = clientCopy;
    v33 = v30;
    v39 = v33;
    (createNewApplicationConnectionCallback)[2](createNewApplicationConnectionCallback, v33, v28, v36);

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);

    v34 = 0;
  }

  else
  {
    v34 = [[NSError alloc] initWithMRError:14];
  }

  return v34;
}

- (void)_clientDidConnectNotification:(id)notification
{
  object = [notification object];
  [(MRDRemoteControlServer *)self _sendQueuedCommandsForDestinationClient:object];
}

- (void)_handlePlayerIsPlayingDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isLocal])
  {
    userInfo2 = [notificationCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
    bOOLValue = [v7 BOOLValue];

    if (bOOLValue)
    {
      userInfo3 = [notificationCopy userInfo];
      v10 = MRGetPlayerPathFromUserInfo();

      v11 = [[NSString alloc] initWithFormat:@"%@ started playback", v10];
      [(MRDRemoteControlServer *)self _clearAllQueuedCommandsForReason:v11];
    }
  }
}

- (void)_handleApplicationConnectionDidInvalidateNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"MRDApplicationConnectionInvalidationReasonKey"];

  identifier = [object identifier];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = object;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlServer] applicationConnectionDidInvalidate - connection: %@, reason: %@", buf, 0x16u);
  }

  serialQueue = self->_serialQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005B544;
  v12[3] = &unk_1004B68F0;
  v12[4] = self;
  v13 = identifier;
  v11 = identifier;
  dispatch_async_and_wait(serialQueue, v12);
}

- (void)phoneCallObserver:(id)observer callDidChange:(id)change
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005B610;
  v4[3] = &unk_1004B7838;
  v4[4] = self;
  [observer numberOfActivePhoneCalls:{v4, change}];
}

- (void)_forwardCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  playerPath = [commandCopy playerPath];
  origin = [playerPath origin];
  if ([origin isLocal])
  {
    v9 = +[MRUserSettings currentSettings];
    supportMultiplayerHost = [v9 supportMultiplayerHost];

    if ((supportMultiplayerHost & 1) == 0)
    {
      [(MRDRemoteControlServer *)self _sendLocalCommand:commandCopy withCompletionHandler:completionCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(MRDRemoteControlServer *)self _sendExternalCommand:commandCopy withCompletionHandler:completionCopy];
LABEL_6:
}

- (void)_sendLocalCommand:(id)command withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  commandCopy = command;
  commandType = [commandCopy commandType];
  v9 = +[MRDMediaRemoteServer server];
  v10 = [commandCopy mutableCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005B81C;
  v14[3] = &unk_1004B7860;
  v19 = commandType;
  v15 = v10;
  v16 = v9;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = v9;
  v13 = v10;
  [(MRDRemoteControlServer *)self _shouldIgnoreCommand:v13 completion:v14];
}

- (void)_sendExternalCommand:(id)command withCompletionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  v8 = +[MRDMediaRemoteServer server];
  playerPath = [commandCopy playerPath];
  origin = [playerPath origin];
  v11 = [v8 clientWithRegisteredCustomOrigin:origin];
  if (v11)
  {
    [(MRDRemoteControlServer *)self _sendRemoteControlCommand:commandCopy toDestinationClient:v11 withCompletion:handlerCopy];
  }

  else
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = origin;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The client that registered the custom origin %{public}@ no longer exists, so this command will be ignored.", &v14, 0xCu);
    }

    if (handlerCopy)
    {
      v13 = [MRCommandResult commandResultWithSendError:6];
      handlerCopy[2](handlerCopy, v13);
    }
  }
}

- (void)_sendRemoteControlCommand:(id)command toDestinationClient:(id)client withLegacyCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005BEAC;
  v9[3] = &unk_1004B7888;
  completionCopy = completion;
  v8 = completionCopy;
  [(MRDRemoteControlServer *)self _sendRemoteControlCommand:command toDestinationClient:client withCompletion:v9];
}

- (void)_sendRemoteControlCommand:(id)command toDestinationClient:(id)client withCompletion:(id)completion
{
  commandCopy = command;
  clientCopy = client;
  completionCopy = completion;
  v11 = [MRBlockGuard alloc];
  commandID = [commandCopy commandID];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10005C124;
  v28[3] = &unk_1004B6FE8;
  v13 = completionCopy;
  v29 = v13;
  v14 = [v11 initWithTimeout:commandID reason:v28 handler:0.0];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005C190;
  v25[3] = &unk_1004B78B0;
  v26 = v14;
  v27 = v13;
  v15 = v13;
  v16 = v14;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10005C1F8;
  v20[3] = &unk_1004B73B0;
  v21 = commandCopy;
  selfCopy = self;
  v23 = clientCopy;
  v24 = objc_retainBlock(v25);
  v17 = clientCopy;
  v18 = v24;
  v19 = commandCopy;
  [(MRDRemoteControlServer *)self _shouldIgnoreCommand:v19 completion:v20];
}

- (void)_enqueueCommand:(id)command forApplication:(id)application withCompletion:(id)completion
{
  commandCopy = command;
  applicationCopy = application;
  completionCopy = completion;
  [commandCopy _setCompletionHandler:completionCopy];
  [(MRDRemoteControlServer *)self _enqueueCommand:commandCopy forUnavailableApplicationWithDisplayID:applicationCopy];
  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = applicationCopy;
    v35 = 2114;
    v36 = commandCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Destination app %{public}@ not available for command %{public}@, and command requested a launch. Enqueueing command for later execution.", buf, 0x16u);
  }

  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_10005D500;
  v28 = &unk_1004B69A8;
  selfCopy = self;
  v30 = commandCopy;
  v31 = applicationCopy;
  v32 = completionCopy;
  v12 = completionCopy;
  v13 = applicationCopy;
  v14 = commandCopy;
  v15 = objc_retainBlock(&v25);
  v16 = objc_alloc_init(NSMutableDictionary);
  commandID = [v14 commandID];
  [v16 setObject:commandID forKeyedSubscript:kMRMediaRemoteOptionCommandID];

  senderID = [v14 senderID];
  [v16 setObject:senderID forKeyedSubscript:kMRMediaRemoteOptionSenderID];

  v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 appOptions]);
  [v16 setObject:v19 forKeyedSubscript:kMRMediaRemoteOptionSendOptionsNumber];

  v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 commandType]);
  [v16 setObject:v20 forKeyedSubscript:kMRMediaRemoteOptionCommandType];

  v21 = [NSString alloc];
  [v14 commandType];
  v22 = MRMediaRemoteCopyCommandDescription();
  commandID2 = [v14 commandID];
  selfCopy = [v21 initWithFormat:@"command<%@>=%@", v22, commandID2, v25, v26, v27, v28, selfCopy];

  sub_10019DCC4(v13, selfCopy, v16, v15);
}

- (void)_enqueueCommand:(id)command forUnavailableApplicationWithDisplayID:(id)d
{
  dCopy = d;
  commandCopy = command;
  kdebug_trace();
  v6 = [commandCopy mutableCopy];
  v7 = [MRPlayerPath alloc];
  playerPath = [commandCopy playerPath];
  origin = [playerPath origin];
  v10 = [MRClient alloc];
  playerPath2 = [commandCopy playerPath];
  client = [playerPath2 client];
  bundleIdentifier = [client bundleIdentifier];
  v14 = [v10 initWithBundleIdentifier:bundleIdentifier];
  unresolvedPlayerPath = [commandCopy unresolvedPlayerPath];

  player = [unresolvedPlayerPath player];
  v17 = [v7 initWithOrigin:origin client:v14 player:player];
  [v6 setPlayerPath:v17];

  serialQueue = self->_serialQueue;
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10005DD08;
  v34 = &unk_1004B69D0;
  selfCopy = self;
  v36 = dCopy;
  v37 = v6;
  msv_dispatch_sync_on_queue();
  v19 = +[MRUserSettings currentSettings];
  [v19 queuedCommandsTimeoutInterval];
  v21 = v20;

  v22 = dispatch_time(0, (v21 * 1000000000.0));
  v23 = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DD88;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v29 = v36;
  v30 = v37;
  v24 = v37;
  v25 = v36;
  dispatch_after(v22, v23, block);
}

- (void)_sendQueuedCommandsForDestinationClient:(id)client
{
  clientCopy = client;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100034FB0;
  v29 = sub_10003599C;
  v30 = 0;
  serialQueue = self->_serialQueue;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10005E228;
  v21 = &unk_1004B78D8;
  v6 = clientCopy;
  v22 = v6;
  selfCopy = self;
  v24 = &v25;
  msv_dispatch_sync_on_queue();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v26[5];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v35 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        kdebug_trace();
        v12 = _MRLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v32 = v11;
          v33 = 2114;
          v34 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending previously queued command %{public}@ to client %{public}@.", buf, 0x16u);
        }

        _completionHandler = [v11 _completionHandler];
        [(MRDRemoteControlServer *)self _sendRemoteControlCommand:v11 toDestinationClient:v6 withCompletion:_completionHandler];
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v35 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v25, 8);
}

- (BOOL)_clearQueuedCommand:(id)command forUnavailableApplicationWithDisplayID:(id)d
{
  commandCopy = command;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  serialQueue = self->_serialQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005E3BC;
  v12[3] = &unk_1004B79C8;
  v12[4] = self;
  v13 = dCopy;
  v14 = commandCopy;
  v15 = &v16;
  v9 = commandCopy;
  v10 = dCopy;
  dispatch_sync(serialQueue, v12);
  LOBYTE(commandCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return commandCopy;
}

- (void)_clearAllQueuedCommandsForReason:(id)reason
{
  reasonCopy = reason;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E4CC;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)_enqueuedCommandsForDisplayID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100034FB0;
  v16 = sub_10003599C;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E904;
  block[3] = &unk_1004B7798;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_resolvedLocalDeviceDestinationAppDisplayIdentifierForCommand:(id)command
{
  commandCopy = command;
  destinationAppDisplayID = [commandCopy destinationAppDisplayID];
  if (([destinationAppDisplayID isEqualToString:kMRMediaRemoteSystemMediaApplicationDisplayIdentifier] & 1) != 0 || objc_msgSend(destinationAppDisplayID, "isEqualToString:", @"com.apple.Fuse"))
  {
    v6 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    goto LABEL_4;
  }

  if ([destinationAppDisplayID isEqualToString:kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier])
  {
    v6 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    goto LABEL_4;
  }

  if ([destinationAppDisplayID isEqualToString:kMRMediaRemoteSystemBooksApplicationDisplayIdentifier])
  {
    v6 = MRMediaRemoteCopyLocalDeviceSystemBooksApplicationDisplayID();
    goto LABEL_4;
  }

  if ([commandCopy isContextSensitive])
  {
    v6 = [(MRDRemoteControlServer *)self _contextuallyAwareDestinationAppDisplayIDForCommand:commandCopy];
LABEL_4:
    v7 = v6;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v7 = destinationAppDisplayID;
LABEL_6:
  if ([v7 isEqualToString:@"com.apple.mediaremoted"])
  {
    v8 = destinationAppDisplayID;

    v7 = v8;
  }

  return v7;
}

- (id)_destinationClientForRemoteControlCommand:(id)command
{
  commandCopy = command;
  v5 = +[MRDMediaRemoteServer server];
  destinationAppProcessID = [commandCopy destinationAppProcessID];
  v7 = [(MRDRemoteControlServer *)self _resolvedLocalDeviceDestinationAppDisplayIdentifierForCommand:commandCopy];
  v8 = v7;
  if (destinationAppProcessID)
  {
    if (!v7 || ([commandCopy destinationAppDisplayID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v10))
    {
      localNowPlayingClient = [v5 clientForPID:destinationAppProcessID];
LABEL_7:
      frontmostClient = localNowPlayingClient;
      goto LABEL_8;
    }

LABEL_6:
    localNowPlayingClient = [v5 clientForBundleIdentifier:v8];
    goto LABEL_7;
  }

  if (v7)
  {
    goto LABEL_6;
  }

  if ([commandCopy isNavigational])
  {
    frontmostClient = [v5 frontmostClient];
    if (!frontmostClient)
    {
LABEL_21:
      localNowPlayingClient = [v5 localNowPlayingClient];
      goto LABEL_7;
    }
  }

  else
  {
    if (![commandCopy isContextSensitive])
    {
      goto LABEL_21;
    }

    v14 = [(MRDRemoteControlServer *)self _contextuallyAwareDestinationAppDisplayIDForCommand:commandCopy];
    if (v14)
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        contextID = [commandCopy contextID];
        v17 = 138543618;
        v18 = v14;
        v19 = 2114;
        v20 = contextID;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Using previously routed app %{public}@ for context %{public}@", &v17, 0x16u);
      }

      frontmostClient = [v5 clientForBundleIdentifier:v14];
    }

    else
    {
      frontmostClient = 0;
    }

    if (!frontmostClient)
    {
      goto LABEL_21;
    }
  }

LABEL_8:

  return frontmostClient;
}

- (id)_remoteControlContextForCommand:(id)command
{
  commandCopy = command;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100034FB0;
  v16 = sub_10003599C;
  v17 = 0;
  contextID = [commandCopy contextID];
  v6 = contextID;
  if (contextID)
  {
    serialQueue = self->_serialQueue;
    v10 = contextID;
    v11 = commandCopy;
    msv_dispatch_sync_on_queue();
  }

  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)_contextuallyAwareDestinationAppDisplayIDForCommand:(id)command
{
  commandCopy = command;
  v5 = [(MRDRemoteControlServer *)self _remoteControlContextForCommand:commandCopy];
  v6 = v5;
  if (v5)
  {
    routedCommands = [v5 routedCommands];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    reverseObjectEnumerator = [routedCommands reverseObjectEnumerator];
    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 isContextSensitive])
          {
            routedAppDisplayID = [v12 routedAppDisplayID];
            v9 = [routedAppDisplayID copy];

            destinationAppDisplayID = [commandCopy destinationAppDisplayID];
            v15 = destinationAppDisplayID;
            if (v9 == destinationAppDisplayID)
            {
            }

            else
            {
              v16 = [v9 isEqual:destinationAppDisplayID];

              if ((v16 & 1) == 0 && qword_1005291D0 != -1)
              {
                sub_1003A54A8();
              }
            }

            goto LABEL_21;
          }
        }

        v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  else
  {
    if (![commandCopy isContextSensitive])
    {
      v9 = 0;
      goto LABEL_23;
    }

    routedCommands = _MRLogForCategory();
    if (os_log_type_enabled(routedCommands, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A54D0();
    }

    v9 = 0;
  }

LABEL_23:

  return v9;
}

- (void)_shouldIgnoreCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  if (!completionCopy)
  {
    goto LABEL_23;
  }

  commandType = [commandCopy commandType];
  if (!sub_10019D8A4(commandType))
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![commandCopy isAVRCPCommand])
  {
    if (sub_10019D88C(commandType))
    {
      v11 = +[MRDMediaRemoteServer server];
      v10 = [v11 shouldSendCommandsDuringPhoneCall] ^ 1;

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Command is an AVRCP command: skipping straight to call observer check to determine whether we should ignore the command or not.", buf, 2u);
  }

  v10 = 1;
LABEL_10:
  v12 = +[MRUserSettings currentSettings];
  if ([v12 supportExpanseMigration])
  {
    v13 = +[MRExpanseManager sharedManager];
    expanseSessionActive = [v13 expanseSessionActive];

    v10 &= expanseSessionActive ^ 1;
  }

  else
  {
  }

  if (![commandCopy alwaysIgnoreDuringSharePlay])
  {
    goto LABEL_20;
  }

  v15 = +[MRUserSettings currentSettings];
  if (([v15 supportExpanseMigration] & 1) == 0)
  {

LABEL_20:
    if (([commandCopy alwaysIgnoreDuringCall] | v10))
    {
      callObserver = self->_callObserver;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10005F430;
      v20[3] = &unk_1004B7A38;
      v22 = completionCopy;
      v21 = commandCopy;
      [(MRDPhoneCallObserver *)callObserver numberOfActivePhoneCalls:v20];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    goto LABEL_23;
  }

  v16 = +[MRExpanseManager sharedManager];
  expanseSessionHasActiveActivity = [v16 expanseSessionHasActiveActivity];

  if (!expanseSessionHasActiveActivity)
  {
    goto LABEL_20;
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignoring command because of active SharePlay activity.", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 1);
LABEL_23:
}

- (BOOL)_checkAndMaybeUpdateNowPlayingAppStackPopRateLimitingWithInterval:(double)interval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F608;
  block[3] = &unk_1004B7A60;
  block[4] = self;
  block[5] = &v7;
  *&block[6] = interval;
  dispatch_sync(serialQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)_applicationIsRunning:(id)running
{
  runningCopy = running;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v7 = runningCopy;
  msv_dispatch_sync_on_queue();
  LOBYTE(serialQueue) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return serialQueue;
}

- (id)_createBroadcastCommandResponseFromStatuses:(id)statuses forClient:(id)client
{
  statusesCopy = statuses;
  clientCopy = client;
  v7 = objc_alloc_init(_MRSendCommandResultMessageProtobuf);
  v8 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
  [v7 setPlayerPath:v8];

  v9 = +[MROrigin localOrigin];
  protobuf = [v9 protobuf];
  playerPath = [v7 playerPath];
  [playerPath setOrigin:protobuf];

  v12 = objc_alloc_init(_MRNowPlayingClientProtobuf);
  playerPath2 = [v7 playerPath];
  [playerPath2 setClient:v12];

  v14 = [clientCopy pid];
  playerPath3 = [v7 playerPath];
  client = [playerPath3 client];
  [client setProcessIdentifier:v14];

  bundleIdentifier = [clientCopy bundleIdentifier];
  playerPath4 = [v7 playerPath];
  client2 = [playerPath4 client];
  [client2 setBundleIdentifier:bundleIdentifier];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = statusesCopy;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addHandlerReturnStatus:{objc_msgSend(v25, "intValue", v27)}];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  return v7;
}

- (id)_createBroadcastCommandPlayerPathForClient:(id)client
{
  clientCopy = client;
  v4 = objc_alloc_init(MRClient);
  v5 = [clientCopy pid];

  [v4 setProcessIdentifier:v5];
  v6 = [MRPlayerPath alloc];
  v7 = +[MROrigin localOrigin];
  v8 = [v6 initWithOrigin:v7 client:v4 player:0];

  return v8;
}

- (BOOL)_isCommandCacheable:(unsigned int)cacheable
{
  result = 1;
  if (cacheable > 0x1A || ((1 << cacheable) & 0x6000001) == 0)
  {
    return cacheable == 134;
  }

  return result;
}

- (id)_effectiveContextIDForCommand:(id)command
{
  commandCopy = command;
  v4 = [commandCopy optionValueForKey:kMRMediaRemoteOptionIsRedirectingCommand];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = 0;
  }

  else
  {
    v7 = [commandCopy optionValueForKey:kMRMediaRemoteOptionCommandSequenceUUID];
    if ([v7 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = [commandCopy optionValueForKey:kMRMediaRemoteOptionContextID];
    }

    v6 = v8;
  }

  return v6;
}

- (id)_resolveCommandBeforeSend:(id)send toClient:(id)client error:(id *)error
{
  sendCopy = send;
  clientCopy = client;
  v10 = [sendCopy mutableCopy];
  v11 = kMRMediaRemoteOptionClientPreferredLanguages;
  v12 = [v10 optionValueForKey:kMRMediaRemoteOptionClientPreferredLanguages];

  if (!v12)
  {
    v13 = +[NSLocale preferredLanguages];
    v14 = [v13 componentsJoinedByString:{@", "}];

    [v10 setOptionValue:v14 forKey:v11];
  }

  if ([sendCopy commandType] == 136)
  {
    v15 = [(MRDRemoteControlServer *)self _persistPlaybackSessionAndUpdateOptionsForSessionPreloadCommand:v10 forClient:clientCopy error:error];
  }

  else if ([sendCopy commandType] == 132)
  {
    v15 = [(MRDRemoteControlServer *)self _populateApplicationSpecificDataForPrepareForSetQueueCommand:v10 forClient:clientCopy];
  }

  else
  {
    [sendCopy commandType];
    if (MRMediaRemoteCommandSupportsAttribution())
    {
      v15 = [(MRDRemoteControlServer *)self _attributedCommand:v10 forClient:clientCopy];
    }

    else
    {
      v15 = sendCopy;
    }
  }

  v16 = v15;

  return v16;
}

- (void)_performCommandProcessingAfterSend:(id)send
{
  sendCopy = send;
  if ([sendCopy commandType] == 136)
  {
    [(MRDRemoteControlServer *)self _cleanUpPersistedSessionForSessionPreloadCommand:sendCopy];
  }
}

- (id)_populateApplicationSpecificDataForPrepareForSetQueueCommand:(id)command forClient:(id)client
{
  commandCopy = command;
  v5 = [commandCopy optionValueForKey:kMRMediaRemoteOptionPrepareForSetQueueIsProactive];
  bOOLValue = [v5 BOOLValue];

  v7 = [commandCopy optionValueForKey:kMRMediaRemoteOptionPrepareForSetQueueProactiveReason];
  if ((bOOLValue & 1) == 0)
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v54 = commandCopy;
      v21 = "Not populating PPFSQ command options - command is not proactive - command: %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
    }

LABEL_12:

    v22 = commandCopy;
    goto LABEL_34;
  }

  playerPath = [commandCopy playerPath];
  isSystemMediaApplication = [playerPath isSystemMediaApplication];

  v10 = _MRLogForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if ((isSystemMediaApplication & 1) == 0)
  {
    if (v11)
    {
      *buf = 138412290;
      v54 = commandCopy;
      v21 = "Not populating PPFSQ command options - playerPath is not systemMediaApplication - command: %@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    *buf = 138412546;
    v54 = v7;
    v55 = 2112;
    v56 = commandCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Ready to populate PPFSQ, reason: %@, command: %@", buf, 0x16u);
  }

  v12 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v12 nowPlayingServer];
  localOriginClient = [nowPlayingServer localOriginClient];

  nowPlayingClients = [localOriginClient nowPlayingClients];
  v16 = [nowPlayingClients msv_firstWhere:&stru_1004B7AC8];

  activePlayerClient = [v16 activePlayerClient];
  supportedRemoteControlCommands = [activePlayerClient supportedRemoteControlCommands];
  v19 = supportedRemoteControlCommands;
  if (supportedRemoteControlCommands)
  {
    v20 = supportedRemoteControlCommands;
  }

  else
  {
    v23 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    v20 = [localOriginClient defaultSupportedCommandsForClient:v23];
  }

  v24 = [v20 msv_firstWhere:&stru_1004B7B08];
  options = [v24 options];
  v26 = [options objectForKeyedSubscript:kMRMediaRemoteCommandInfoProactiveCommandOptions];

  if (v26)
  {
    v43 = v24;
    v44 = v20;
    v45 = activePlayerClient;
    v46 = v16;
    v47 = localOriginClient;
    v48 = v7;
    v27 = objc_alloc_init(NSMutableArray);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = v26;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v50;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v49 + 1) + 8 * i);
          options2 = [commandCopy options];
          v35 = [options2 objectForKeyedSubscript:v33];

          if (v35)
          {
            v36 = _MRLogForCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = v33;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Not setting key '%@' for PPFSQ - key already populated", buf, 0xCu);
            }
          }

          else
          {
            v37 = [v28 objectForKeyedSubscript:v33];
            [commandCopy setOptionValue:v37 forKey:v33];

            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v30);
    }

    v38 = _MRLogForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = [v27 count];
      *buf = 138412802;
      v54 = commandCopy;
      v55 = 2048;
      v56 = v39;
      v57 = 2112;
      v58 = v27;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Finished populating PPFSQ command options for command %@ - populated %lu keys: %@", buf, 0x20u);
    }

    v22 = [commandCopy copy];
    localOriginClient = v47;
    v7 = v48;
    activePlayerClient = v45;
    v16 = v46;
    v24 = v43;
    v20 = v44;
    v26 = v42;
  }

  else
  {
    v40 = _MRLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v54 = commandCopy;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Not populating PPFSQ command options - no data provided - command: %@", buf, 0xCu);
    }

    v22 = commandCopy;
  }

LABEL_34:

  return v22;
}

- (id)_persistPlaybackSessionAndUpdateOptionsForSessionPreloadCommand:(id)command forClient:(id)client error:(id *)error
{
  commandCopy = command;
  clientCopy = client;
  v9 = kMRMediaRemoteOptionPlaybackSessionData;
  v10 = [commandCopy optionValueForKey:kMRMediaRemoteOptionPlaybackSessionData];
  v11 = [[MRPlaybackSession alloc] initWithData:v10];
  v12 = v11;
  if (v11 && ([v11 identifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = NSTemporaryDirectory();
    v15 = [NSURL fileURLWithPath:v14];

    v16 = +[NSFileManager defaultManager];
    v34 = 0;
    [v16 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v34];
    v17 = v34;

    if (v17)
    {
      if (error)
      {
        v18 = v17;
        v19 = 0;
        *error = v17;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      identifier = [v12 identifier];
      v21 = [v15 URLByAppendingPathComponent:identifier];

      playbackSessionData = [v12 playbackSessionData];
      v33 = 0;
      [playbackSessionData writeToURL:v21 options:1 error:&v33];
      v17 = v33;

      if (v17)
      {
        if (error)
        {
          v23 = v17;
          v19 = 0;
          *error = v17;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        if (clientCopy)
        {
          [clientCopy realToken];
        }

        path = [v21 path];
        [path UTF8String];
        v25 = sandbox_extension_issue_file_to_process();

        v26 = [NSString stringWithCString:v25 encoding:4, 0, 0, 0, 0];
        free(v25);
        path2 = [v21 path];
        [commandCopy setOptionValue:path2 forKey:kMRMediaRemoteOptionPlaybackSessionFilePath];

        identifier2 = [v12 identifier];
        [commandCopy setOptionValue:identifier2 forKey:kMRMediaRemoteOptionPlaybackSessionIdentifier];

        type = [v12 type];
        [commandCopy setOptionValue:type forKey:kMRMediaRemoteOptionPlaybackSessionType];

        revision = [v12 revision];
        [commandCopy setOptionValue:revision forKey:kMRMediaRemoteOptionPlaybackSessionRevision];

        metadata = [v12 metadata];
        [commandCopy setOptionValue:metadata forKey:kMRMediaRemoteOptionPlaybackSessionMetadata];

        [commandCopy setOptionValue:0 forKey:v9];
        [commandCopy setOptionValue:v26 forKey:kMRMediaRemoteOptionSandboxExtensionToken];
        v19 = [commandCopy copy];
      }
    }
  }

  else
  {
    v19 = 0;
    if (error)
    {
      *error = [[NSError alloc] initWithMRError:2];
    }
  }

  return v19;
}

- (void)_cleanUpPersistedSessionForSessionPreloadCommand:(id)command
{
  v5 = [command optionValueForKey:kMRMediaRemoteOptionPlaybackSessionFilePath];
  v3 = [NSURL fileURLWithPath:v5];
  v4 = +[NSFileManager defaultManager];
  [v4 removeItemAtURL:v3 error:0];
}

- (id)_onQueue_presentDialogWithTitle:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle completion:(id)completion
{
  completionCopy = completion;
  alternateButtonTitleCopy = alternateButtonTitle;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  v17 = objc_alloc_init(MSVSystemDialogOptions);
  [v17 setAlertHeader:titleCopy];

  [v17 setAlertMessage:messageCopy];
  [v17 setDefaultButtonTitle:buttonTitleCopy];

  [v17 setAlternateButtonTitle:alternateButtonTitleCopy];
  [v17 setShowAsTopmost:1];
  [v17 setForceModalAlertAppearance:1];
  [v17 setShowOnLockscreen:1];
  [v17 setDismissOverlaysOnLockscreen:0];
  v18 = [[MSVSystemDialog alloc] initWithOptions:v17];
  [(MSVSystemDialog *)self->_remoteControlDialog dismiss];
  objc_storeStrong(&self->_remoteControlDialog, v18);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100060A14;
  v24[3] = &unk_1004B79F0;
  v19 = v18;
  v25 = v19;
  v26 = completionCopy;
  v20 = completionCopy;
  dispatch_async(&_dispatch_main_q, v24);
  v21 = v26;
  v22 = v19;

  return v19;
}

- (id)_attributedCommand:(id)command forClient:(id)client
{
  commandCopy = command;
  v5 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v5 nowPlayingServer];
  playerPath = [commandCopy playerPath];
  v8 = [nowPlayingServer queryExistingPlayerPath:playerPath];

  originClient = [v8 originClient];
  deviceInfo = [originClient deviceInfo];
  buildVersion = [deviceInfo buildVersion];
  v12 = [buildVersion hasPrefix:@"21J"];

  if (!v12)
  {
    playerPath2 = [commandCopy playerPath];
    client = [playerPath2 client];
    bundleIdentifier = [client bundleIdentifier];
    IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

    if (IsSystemMediaApplication)
    {
      options = [commandCopy options];
      v18 = [options objectForKeyedSubscript:kMRMediaRemoteOptionOriginatedFromRemoteDevice];
      bOOLValue = [v18 BOOLValue];

      if (bOOLValue)
      {
        v20 = kMRMediaRemoteOptionApplicationUserIdentity;
        v21 = [commandCopy optionValueForKey:kMRMediaRemoteOptionApplicationUserIdentity];
        v22 = [[MRUserIdentity alloc] initWithProtobufData:v21];
        if (v22)
        {
          v23 = v22;
          playerClient = [v8 playerClient];
          participantDataSource = [playerClient participantDataSource];
          v26 = [participantDataSource donateAttribution:v23];

          [commandCopy setOptionValue:v26 forKey:kMRMediaRemoteOptionAssociatedParticipantIdentifier];
          [commandCopy setOptionValue:0 forKey:v20];
          v27 = commandCopy;

          goto LABEL_14;
        }
      }

      else
      {
        options2 = [commandCopy options];
        v21 = [options2 objectForKeyedSubscript:kMRMediaRemoteOptionHomeKitUserIdentifier];

        v29 = +[MRDMusicUserStateCenter sharedCenter];
        v30 = v29;
        if (v21)
        {
          [v29 identityForHomeUserIdentifier:v21];
        }

        else
        {
          [v29 localActiveIdentity];
        }
        v31 = ;

        if (v31)
        {
          playerPath3 = [commandCopy playerPath];
          origin = [playerPath3 origin];
          isLocal = [origin isLocal];

          if (isLocal)
          {
            protobufData = [MRPlaybackQueueParticipant expectedIdentifierForUserIdentity:v31 withRandomData:0];
            v36 = &kMRMediaRemoteOptionAssociatedParticipantIdentifier;
          }

          else
          {
            protobufData = [v31 protobufData];
            v36 = &kMRMediaRemoteOptionApplicationUserIdentity;
          }

          [commandCopy setOptionValue:protobufData forKey:*v36];

          v39 = commandCopy;
          goto LABEL_14;
        }
      }
    }
  }

  v37 = commandCopy;
LABEL_14:

  return commandCopy;
}

- (NSMutableDictionary)applicationConnections
{
  applicationConnections = self->_applicationConnections;
  if (!applicationConnections)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_applicationConnections;
    self->_applicationConnections = v4;

    applicationConnections = self->_applicationConnections;
  }

  return applicationConnections;
}

@end