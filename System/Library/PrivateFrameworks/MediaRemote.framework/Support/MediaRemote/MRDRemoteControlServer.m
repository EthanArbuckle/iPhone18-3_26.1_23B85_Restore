@interface MRDRemoteControlServer
- (BOOL)_applicationIsRunning:(id)a3;
- (BOOL)_checkAndMaybeUpdateNowPlayingAppStackPopRateLimitingWithInterval:(double)a3;
- (BOOL)_clearQueuedCommand:(id)a3 forUnavailableApplicationWithDisplayID:(id)a4;
- (BOOL)_isCommandCacheable:(unsigned int)a3;
- (MRDRemoteControlServer)init;
- (NSArray)remoteControlClients;
- (NSMutableDictionary)applicationConnections;
- (id)_attributedCommand:(id)a3 forClient:(id)a4;
- (id)_contextuallyAwareDestinationAppDisplayIDForCommand:(id)a3;
- (id)_createBroadcastCommandPlayerPathForClient:(id)a3;
- (id)_createBroadcastCommandResponseFromStatuses:(id)a3 forClient:(id)a4;
- (id)_destinationClientForRemoteControlCommand:(id)a3;
- (id)_effectiveContextIDForCommand:(id)a3;
- (id)_enqueuedCommandsForDisplayID:(id)a3;
- (id)_onQueue_createAndActivateConnection:(id)a3 forClient:(id)a4;
- (id)_onQueue_presentDialogWithTitle:(id)a3 message:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 completion:(id)a7;
- (id)_persistPlaybackSessionAndUpdateOptionsForSessionPreloadCommand:(id)a3 forClient:(id)a4 error:(id *)a5;
- (id)_populateApplicationSpecificDataForPrepareForSetQueueCommand:(id)a3 forClient:(id)a4;
- (id)_remoteControlContextForCommand:(id)a3;
- (id)_resolveCommandBeforeSend:(id)a3 toClient:(id)a4 error:(id *)a5;
- (id)_resolvedLocalDeviceDestinationAppDisplayIdentifierForCommand:(id)a3;
- (void)_cleanUpPersistedSessionForSessionPreloadCommand:(id)a3;
- (void)_clearAllQueuedCommandsForReason:(id)a3;
- (void)_clientDidConnectNotification:(id)a3;
- (void)_enqueueCommand:(id)a3 forApplication:(id)a4 withCompletion:(id)a5;
- (void)_enqueueCommand:(id)a3 forUnavailableApplicationWithDisplayID:(id)a4;
- (void)_forwardCommand:(id)a3 completion:(id)a4;
- (void)_handleApplicationConnectionDidInvalidateNotification:(id)a3;
- (void)_handleBroadcastCommandMessage:(id)a3 fromClient:(id)a4;
- (void)_handleCloseApplicationConnectionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleCreateApplicationConnectionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleDismissMediaControlsCommandMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetPendingCommandsMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePlayerIsPlayingDidChangeNotification:(id)a3;
- (void)_handlePresentMediaControlsCommandMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePrewarmMediaControlsCommandMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRestrictCommandClientsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSendApplicationConnectionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSendCommandMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSendPlaybackSessionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSendPlaybackSessionMigrateBeginMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSendPlaybackSessionMigrateEndMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSendPlaybackSessionMigratePostMessage:(id)a3 fromClient:(id)a4;
- (void)_handleTriggerAudioFadeMessage:(id)a3 fromClient:(id)a4;
- (void)_performCommandProcessingAfterSend:(id)a3;
- (void)_sendExternalCommand:(id)a3 withCompletionHandler:(id)a4;
- (void)_sendLocalCommand:(id)a3 withCompletionHandler:(id)a4;
- (void)_sendQueuedCommandsForDestinationClient:(id)a3;
- (void)_sendRemoteControlCommand:(id)a3 completion:(id)a4;
- (void)_sendRemoteControlCommand:(id)a3 toDestinationClient:(id)a4 withCompletion:(id)a5;
- (void)_sendRemoteControlCommand:(id)a3 toDestinationClient:(id)a4 withLegacyCompletion:(id)a5;
- (void)_shouldIgnoreCommand:(id)a3 completion:(id)a4;
- (void)broadcastRemoteControlCommand:(id)a3 completion:(id)a4;
- (void)clearContextsForClient:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)dealloc;
- (void)handleClientBoundApplicationConnectionMessage:(id)a3;
- (void)handleInvalidateApplicationConnectionMessage:(id)a3;
- (void)handleServerBoundApplicationConnectionMessage:(id)a3;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
- (void)phoneCallObserver:(id)a3 callDidChange:(id)a4;
- (void)registerIncomingApplicationConnection:(id)a3 clientBoundMessageHandler:(id)a4 completion:(id)a5;
- (void)sendRemoteControlCommand:(id)a3 completion:(id)a4;
- (void)sendRemoteControlCommand:(id)a3 toClients:(id)a4 completion:(id)a5;
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

- (void)sendRemoteControlCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isAVRCPCommand])
  {
    if ([(MRDPhoneCallObserver *)self->_callObserver callControllerWillHandleCommandForBargeCalls:v6])
    {
      v8 = [[MRCommandResult alloc] initWithHandlerStatuses:&off_1004E0E20 sendError:0];
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Yielding AVRCP command to bargeCallHandler", buf, 2u);
      }

      if (v7)
      {
        v7[2](v7, v8);
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
      v15 = v7;
      v16 = v10;
      v13 = v6;
      v14 = self;
      [(MRDPhoneCallObserver *)callObserver handleMediaRemoteCommand:v13 completion:v12];
    }
  }

  else
  {
    [(MRDRemoteControlServer *)self _sendRemoteControlCommand:v6 completion:v7];
  }
}

- (void)_sendRemoteControlCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  v9 = [v6 commandID];
  v10 = [v9 hash];

  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SendCommandDaemon", "", &buf, 2u);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100055164;
  v26[3] = &unk_1004B7270;
  v11 = v6;
  v27 = v11;
  v28 = self;
  v12 = v7;
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

- (void)broadcastRemoteControlCommand:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 playerPath];
  v8 = [v7 origin];
  v9 = [v8 isLocal];

  if (v9)
  {
    v10 = [(MRDRemoteControlServer *)self remoteControlClients];
    [(MRDRemoteControlServer *)self sendRemoteControlCommand:v11 toClients:v10 completion:v6];
  }

  else if (v6)
  {
    v6[2](v6, 3, 0);
  }
}

- (void)sendRemoteControlCommand:(id)a3 toClients:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100055FBC;
  v19[3] = &unk_1004B72E8;
  v20 = a5;
  v10 = v20;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000560A8;
  v14[3] = &unk_1004B73B0;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = objc_retainBlock(v19);
  v11 = v9;
  v12 = v18;
  v13 = v8;
  [(MRDRemoteControlServer *)self _shouldIgnoreCommand:v13 completion:v14];
}

- (void)clearContextsForClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (NSArray)remoteControlClients
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 allClients];

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

- (void)registerIncomingApplicationConnection:(id)a3 clientBoundMessageHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100056E5C;
  v15[3] = &unk_1004B7450;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async_and_wait(serialQueue, v15);
}

- (void)handleClientBoundApplicationConnectionMessage:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000572B4;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)handleServerBoundApplicationConnectionMessage:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000573E8;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)handleInvalidateApplicationConnectionMessage:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005751C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  xdict = a3;
  v6 = a4;
  switch(xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY"))
  {
    case 0x400000000000001uLL:
      [(MRDRemoteControlServer *)self _handleSendCommandMessage:xdict fromClient:v6];
      break;
    case 0x400000000000002uLL:
      [(MRDRemoteControlServer *)self _handleBroadcastCommandMessage:xdict fromClient:v6];
      break;
    case 0x400000000000003uLL:
      [(MRDRemoteControlServer *)self _handlePrewarmMediaControlsCommandMessage:xdict fromClient:v6];
      break;
    case 0x400000000000004uLL:
      [(MRDRemoteControlServer *)self _handlePresentMediaControlsCommandMessage:xdict fromClient:v6];
      break;
    case 0x400000000000005uLL:
      [(MRDRemoteControlServer *)self _handleDismissMediaControlsCommandMessage:xdict fromClient:v6];
      break;
    case 0x400000000000006uLL:
      [(MRDRemoteControlServer *)self _handleGetPendingCommandsMessage:xdict fromClient:v6];
      break;
    case 0x400000000000007uLL:
      [(MRDRemoteControlServer *)self _handleSendPlaybackSessionMessage:xdict fromClient:v6];
      break;
    case 0x400000000000008uLL:
      [(MRDRemoteControlServer *)self _handleSendPlaybackSessionMigrateBeginMessage:xdict fromClient:v6];
      break;
    case 0x400000000000009uLL:
      [(MRDRemoteControlServer *)self _handleSendPlaybackSessionMigrateEndMessage:xdict fromClient:v6];
      break;
    case 0x40000000000000AuLL:
      [(MRDRemoteControlServer *)self _handleSendPlaybackSessionMigratePostMessage:xdict fromClient:v6];
      break;
    case 0x40000000000000BuLL:
      [(MRDRemoteControlServer *)self _handleTriggerAudioFadeMessage:xdict fromClient:v6];
      break;
    case 0x40000000000000EuLL:
      [(MRDRemoteControlServer *)self _handleRestrictCommandClientsMessage:xdict fromClient:v6];
      break;
    case 0x40000000000000FuLL:
      [(MRDRemoteControlServer *)self _handleCreateApplicationConnectionMessage:xdict fromClient:v6];
      break;
    case 0x400000000000010uLL:
      [(MRDRemoteControlServer *)self _handleSendApplicationConnectionMessage:xdict fromClient:v6];
      break;
    case 0x400000000000011uLL:
      [(MRDRemoteControlServer *)self _handleCloseApplicationConnectionMessage:xdict fromClient:v6];
      break;
    default:
      break;
  }
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100057820;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)_handleSendCommandMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = sub_100057A98(v6, v7);
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received command from client %{public}@: %{public}@", buf, 0x16u);
  }

  v10 = _MRLogForCategory();
  v11 = [v8 commandID];
  v12 = [v11 hash];

  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "SendCommandXPCToDaemon", "", buf, 2u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100057CD0;
  v15[3] = &unk_1004B7478;
  v16 = v6;
  v17 = v8;
  v13 = v8;
  v14 = v6;
  [(MRDRemoteControlServer *)self sendRemoteControlCommand:v13 completion:v15];
}

- (void)_handleBroadcastCommandMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100057A98(v6, v7);
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received broadcast command from client %{public}@: %{public}@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100057F50;
  v11[3] = &unk_1004B74E0;
  v12 = v6;
  v10 = v6;
  [(MRDRemoteControlServer *)self broadcastRemoteControlCommand:v8 completion:v11];
}

- (void)_handlePrewarmMediaControlsCommandMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MRCreateDataFromXPCMessage();
  v9 = xpc_dictionary_get_value(v7, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY");

  remoteAlertWorkerQueue = self->_remoteAlertWorkerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058138;
  block[3] = &unk_1004B69D0;
  v15 = v6;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v6;
  dispatch_async(remoteAlertWorkerQueue, block);
}

- (void)_handlePresentMediaControlsCommandMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 displayName];
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Presenting remoteUIService for client: %@", buf, 0xCu);
  }

  remoteAlertWorkerQueue = self->_remoteAlertWorkerQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100058430;
  v13[3] = &unk_1004B68F0;
  v14 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  dispatch_async(remoteAlertWorkerQueue, v13);
}

- (void)_handleDismissMediaControlsCommandMessage:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 displayName];
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Destroying remoteUIService for client: %@", buf, 0xCu);
  }

  remoteAlertWorkerQueue = self->_remoteAlertWorkerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000586B0;
  block[3] = &unk_1004B6D08;
  v11 = v5;
  v9 = v5;
  dispatch_async(remoteAlertWorkerQueue, block);
}

- (void)_handleGetPendingCommandsMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  MRCreatePlayerPathFromXPCMessage();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005878C;
  v10[3] = &unk_1004B7508;
  v10[4] = self;
  v12 = v11 = v6;
  v8 = v12;
  v9 = v6;
  sub_100008278(v7, v10);
}

- (void)_handleSendPlaybackSessionMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MRDMediaRemoteServer server];
  v9 = [v8 nowPlayingServer];
  v10 = [v9 queryExistingPlayerPathForXPCMessage:v6 forClient:v7];

  v11 = [v10 unresolvedPlayerPath];
  v12 = [v11 client];
  v13 = [v12 bundleIdentifier];

  v14 = +[MRUserSettings currentSettings];
  [v14 launchApplicationTimeoutInterval];
  v16 = v15;

  v17 = [v10 playerPath];
  v18 = [v17 origin];
  v19 = [v18 isLocal];

  if (v19)
  {
    if (v13)
    {
      serialQueue = self->_serialQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100058DFC;
      block[3] = &unk_1004B68F0;
      block[4] = self;
      v21 = v13;
      v39 = v21;
      dispatch_async(serialQueue, block);
      v22 = MRCreateProtobufFromXPCMessage();
      v23 = [v22 request];
      v24 = +[NSThread currentThread];
      v25 = [v24 threadDictionary];
      [v25 setObject:v23 forKeyedSubscript:@"migrateRequest"];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100058E70;
      v31[3] = &unk_1004B7580;
      v32 = v6;
      v33 = v7;
      v34 = v23;
      v35 = v22;
      v36 = self;
      v37 = v21;
      v26 = v22;
      v27 = v23;
      sub_10019F130(v37, 0, v31, v16);

      v28 = v39;
LABEL_8:

      goto LABEL_9;
    }

    sub_100008278(v6, &stru_1004B75C0);
  }

  else
  {
    v29 = [v10 xpcClient];

    if (!v29)
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100058DA4;
      v40[3] = &unk_1004B6E08;
      v41 = v10;
      sub_100008278(v6, v40);
      v28 = v41;
      goto LABEL_8;
    }

    v30 = [v10 xpcClient];
    [v30 relayXPCMessage:v6 andReply:1];
  }

LABEL_9:
}

- (void)_handleSendPlaybackSessionMigrateBeginMessage:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MRDMediaRemoteServer server];
  v8 = [v7 nowPlayingServer];
  v13 = [v8 queryExistingPlayerPathForXPCMessage:v6 forClient:v5];

  v9 = MRCreateProtobufFromXPCMessage();
  v10 = [v9 request];
  v11 = [v9 playerPath];
  [v5 addPendingPlaybackSessionMigrateEvent:v10 playerPath:v11];

  v12 = [v13 xpcClient];
  [v12 relayXPCMessage:v6 andReply:1];
}

- (void)_handleSendPlaybackSessionMigrateEndMessage:(id)a3 fromClient:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = +[MRDMediaRemoteServer server];
  v7 = [v6 nowPlayingServer];
  v8 = [v7 queryExistingPlayerPathForXPCMessage:v13 forClient:v5];

  v9 = MRCreateProtobufFromXPCMessage();
  v10 = [v9 request];
  v11 = [v5 removePendingPlaybackSessionMigrateEvent:v10];

  if (v11)
  {
    v12 = [v8 xpcClient];
    [v12 relayXPCMessage:v13 andReply:1];
  }

  else
  {
    sub_100008278(v13, 0);
  }
}

- (void)_handleSendPlaybackSessionMigratePostMessage:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MRDMediaRemoteServer server];
  v8 = [v7 nowPlayingServer];
  v10 = [v8 queryExistingPlayerPathForXPCMessage:v6 forClient:v5];

  v9 = [v10 xpcClient];
  [v9 relayXPCMessage:v6 andReply:1];
}

- (void)_handleTriggerAudioFadeMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MRDMediaRemoteServer server];
  v9 = [v8 nowPlayingServer];
  v10 = [v9 queryExistingPlayerPathForXPCMessage:v6 forClient:v7];

  v11 = [v10 playerPath];
  v12 = [v11 origin];
  v13 = [v12 isLocal];

  if (v13)
  {
    v14 = MRCreateProtobufFromXPCMessage();
    if ([v14 fadeType])
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v10 playerPath];
        v17 = [v16 client];
        v18 = [v17 bundleIdentifier];
        *buf = 138477827;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Requesting fade in on next playback for client %{private}@", buf, 0xCu);
      }

      v19 = +[AVSystemController sharedAVSystemController];
      v20 = [v10 playerPath];
      v21 = [v20 client];
      v22 = [v21 bundleIdentifier];
      [v19 setAttribute:v22 forKey:AVSystemController_AllowAppToFadeInTemporarilyAttribute error:0];

      sub_100008278(v6, &stru_1004B7698);
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
      v26 = v6;
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
        v31 = [v10 playerPath];
        v32 = [v31 player];

        v33 = +[AVSystemController sharedAVSystemController];
        v34 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v32 audioSessionID]);
        [v33 setAttribute:v34 forKey:AVSystemController_InterruptAudioSessionIDForHandoff error:0];
      }

      else
      {
        v32 = +[AVSystemController sharedAVSystemController];
        [v32 setAttribute:0 forKey:AVSystemController_AppToInterruptCurrentNowPlayingSessionAttribute error:0];
      }

      objc_destroyWeak(&v38);
      objc_destroyWeak(&v41);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v23 = [v10 xpcClient];

    if (v23)
    {
      xpc_dictionary_set_uint64(v6, "MRXPC_MESSAGE_ID_KEY", 0x70000000000000AuLL);
      v24 = [v10 xpcClient];
      [v24 relayXPCMessage:v6 andReply:1];
    }
  }
}

- (void)_handleRestrictCommandClientsMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 entitlements] & 0x800) == 0)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1003A52CC();
    }

    sub_10000F9E4(v6, 3u);
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
  v22 = [(MRDRemoteControlServer *)self commandClientsRestriction];
  if (v21)
  {
    v23 = [MRDCommandClientRestriction restrictedTo:v20 by:v7];
    [(MRDRemoteControlServer *)self setCommandClientsRestriction:v23];

    v24 = _MRLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(MRDRemoteControlServer *)self commandClientsRestriction];
      *buf = 138412802;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v25;
      *&buf[22] = 2112;
      *&buf[24] = v22;
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
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[RestrictedCommandClients Mode] %@ requested to disable restriction. Previous state: %@", buf, 0x16u);
    }
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10005A324;
  v27[3] = &unk_1004B6E08;
  v28 = v20;
  v26 = v20;
  sub_100008278(v6, v27);
}

- (void)_handleCreateApplicationConnectionMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreateProtobufFromXPCMessage();
  v9 = [v8 context];
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
  v11 = v9;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  dispatch_async_and_wait(serialQueue, block);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005A5BC;
  v13[3] = &unk_1004B7770;
  v13[4] = v18;
  sub_100008278(v6, v13);

  _Block_object_dispose(v18, 8);
}

- (void)_handleCloseApplicationConnectionMessage:(id)a3 fromClient:(id)a4
{
  v5 = MRCreateProtobufFromXPCMessage();
  v6 = [v5 context];
  v7 = [v5 error];
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A710;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async_and_wait(serialQueue, block);
}

- (void)_handleSendApplicationConnectionMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreateProtobufFromXPCMessage();
  v9 = [v8 context];
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
  v11 = v9;
  v21 = v11;
  dispatch_async_and_wait(serialQueue, block);
  v12 = v30[5];
  if (v12)
  {
    v13 = [v12 type];
    v14 = v30[5];
    if (v13 == 1)
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
      v16 = [v11 identifier];
      sub_1003A530C(v16, buf, v15);
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
  sub_100008278(v6, v19);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

- (id)_onQueue_createAndActivateConnection:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = [v6 destinationPlayerPath];
  v9 = +[MRDMediaRemoteServer server];
  v10 = [v9 nowPlayingServer];
  v11 = [v8 origin];
  v12 = [v10 originClientForOrigin:v11];

  v13 = [v6 destinationPlayerPath];
  LOBYTE(v10) = [v13 isResolved];

  if (v10)
  {
    goto LABEL_7;
  }

  v14 = [v6 destinationPlayerPath];
  v15 = [v14 isSystemMediaApplication];

  if (v15)
  {
    v16 = [MRClient alloc];
    v17 = [v12 deviceInfo];
    v18 = [v17 systemMediaApplication];
  }

  else
  {
    v19 = [v6 destinationPlayerPath];
    v20 = [v19 isSystemPodcastsApplication];

    if (!v20)
    {
      goto LABEL_7;
    }

    v16 = [MRClient alloc];
    v17 = [v12 deviceInfo];
    v18 = [v17 systemPodcastApplication];
  }

  v21 = v18;
  v22 = [v16 initWithBundleIdentifier:v18];
  v23 = [v6 destinationPlayerPath];
  [v23 setClient:v22];

LABEL_7:
  v24 = [MRApplicationConnectionRequestInfo alloc];
  v25 = +[MRDMediaRemoteServer server];
  v26 = [v25 deviceInfo];
  v27 = [v7 createNowPlayingClient];
  v28 = [v24 initWithDeviceInfo:v26 client:v27];

  v29 = [v12 createNewApplicationConnectionCallback];
  if (v29)
  {
    v30 = [[MRDApplicationConnection alloc] initWithContext:v6];
    objc_initWeak(&location, v7);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10005AF54;
    v40[3] = &unk_1004B77C0;
    objc_copyWeak(&v41, &location);
    [(MRDApplicationConnection *)v30 setClientBoundMessageHandler:v40];
    v31 = [(MRDRemoteControlServer *)self applicationConnections];
    v32 = [v6 identifier];
    [v31 setObject:v30 forKeyedSubscript:v32];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10005B03C;
    v36[3] = &unk_1004B7810;
    v36[4] = self;
    v37 = v6;
    v38 = v7;
    v33 = v30;
    v39 = v33;
    (v29)[2](v29, v33, v28, v36);

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

- (void)_clientDidConnectNotification:(id)a3
{
  v4 = [a3 object];
  [(MRDRemoteControlServer *)self _sendQueuedCommandsForDestinationClient:v4];
}

- (void)_handlePlayerIsPlayingDidChangeNotification:(id)a3
{
  v12 = a3;
  v4 = [v12 userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isLocal])
  {
    v6 = [v12 userInfo];
    v7 = [v6 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = [v12 userInfo];
      v10 = MRGetPlayerPathFromUserInfo();

      v11 = [[NSString alloc] initWithFormat:@"%@ started playback", v10];
      [(MRDRemoteControlServer *)self _clearAllQueuedCommandsForReason:v11];
    }
  }
}

- (void)_handleApplicationConnectionDidInvalidateNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"MRDApplicationConnectionInvalidationReasonKey"];

  v8 = [v5 identifier];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v5;
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
  v13 = v8;
  v11 = v8;
  dispatch_async_and_wait(serialQueue, v12);
}

- (void)phoneCallObserver:(id)a3 callDidChange:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005B610;
  v4[3] = &unk_1004B7838;
  v4[4] = self;
  [a3 numberOfActivePhoneCalls:{v4, a4}];
}

- (void)_forwardCommand:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 playerPath];
  v8 = [v7 origin];
  if ([v8 isLocal])
  {
    v9 = +[MRUserSettings currentSettings];
    v10 = [v9 supportMultiplayerHost];

    if ((v10 & 1) == 0)
    {
      [(MRDRemoteControlServer *)self _sendLocalCommand:v11 withCompletionHandler:v6];
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(MRDRemoteControlServer *)self _sendExternalCommand:v11 withCompletionHandler:v6];
LABEL_6:
}

- (void)_sendLocalCommand:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 commandType];
  v9 = +[MRDMediaRemoteServer server];
  v10 = [v7 mutableCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005B81C;
  v14[3] = &unk_1004B7860;
  v19 = v8;
  v15 = v10;
  v16 = v9;
  v17 = self;
  v18 = v6;
  v11 = v6;
  v12 = v9;
  v13 = v10;
  [(MRDRemoteControlServer *)self _shouldIgnoreCommand:v13 completion:v14];
}

- (void)_sendExternalCommand:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MRDMediaRemoteServer server];
  v9 = [v6 playerPath];
  v10 = [v9 origin];
  v11 = [v8 clientWithRegisteredCustomOrigin:v10];
  if (v11)
  {
    [(MRDRemoteControlServer *)self _sendRemoteControlCommand:v6 toDestinationClient:v11 withCompletion:v7];
  }

  else
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The client that registered the custom origin %{public}@ no longer exists, so this command will be ignored.", &v14, 0xCu);
    }

    if (v7)
    {
      v13 = [MRCommandResult commandResultWithSendError:6];
      v7[2](v7, v13);
    }
  }
}

- (void)_sendRemoteControlCommand:(id)a3 toDestinationClient:(id)a4 withLegacyCompletion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005BEAC;
  v9[3] = &unk_1004B7888;
  v10 = a5;
  v8 = v10;
  [(MRDRemoteControlServer *)self _sendRemoteControlCommand:a3 toDestinationClient:a4 withCompletion:v9];
}

- (void)_sendRemoteControlCommand:(id)a3 toDestinationClient:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MRBlockGuard alloc];
  v12 = [v8 commandID];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10005C124;
  v28[3] = &unk_1004B6FE8;
  v13 = v10;
  v29 = v13;
  v14 = [v11 initWithTimeout:v12 reason:v28 handler:0.0];

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
  v21 = v8;
  v22 = self;
  v23 = v9;
  v24 = objc_retainBlock(v25);
  v17 = v9;
  v18 = v24;
  v19 = v8;
  [(MRDRemoteControlServer *)self _shouldIgnoreCommand:v19 completion:v20];
}

- (void)_enqueueCommand:(id)a3 forApplication:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 _setCompletionHandler:v10];
  [(MRDRemoteControlServer *)self _enqueueCommand:v8 forUnavailableApplicationWithDisplayID:v9];
  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = v9;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Destination app %{public}@ not available for command %{public}@, and command requested a launch. Enqueueing command for later execution.", buf, 0x16u);
  }

  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_10005D500;
  v28 = &unk_1004B69A8;
  v29 = self;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = objc_retainBlock(&v25);
  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = [v14 commandID];
  [v16 setObject:v17 forKeyedSubscript:kMRMediaRemoteOptionCommandID];

  v18 = [v14 senderID];
  [v16 setObject:v18 forKeyedSubscript:kMRMediaRemoteOptionSenderID];

  v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 appOptions]);
  [v16 setObject:v19 forKeyedSubscript:kMRMediaRemoteOptionSendOptionsNumber];

  v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 commandType]);
  [v16 setObject:v20 forKeyedSubscript:kMRMediaRemoteOptionCommandType];

  v21 = [NSString alloc];
  [v14 commandType];
  v22 = MRMediaRemoteCopyCommandDescription();
  v23 = [v14 commandID];
  v24 = [v21 initWithFormat:@"command<%@>=%@", v22, v23, v25, v26, v27, v28, v29];

  sub_10019DCC4(v13, v24, v16, v15);
}

- (void)_enqueueCommand:(id)a3 forUnavailableApplicationWithDisplayID:(id)a4
{
  v27 = a4;
  v5 = a3;
  kdebug_trace();
  v6 = [v5 mutableCopy];
  v7 = [MRPlayerPath alloc];
  v8 = [v5 playerPath];
  v9 = [v8 origin];
  v10 = [MRClient alloc];
  v11 = [v5 playerPath];
  v12 = [v11 client];
  v13 = [v12 bundleIdentifier];
  v14 = [v10 initWithBundleIdentifier:v13];
  v15 = [v5 unresolvedPlayerPath];

  v16 = [v15 player];
  v17 = [v7 initWithOrigin:v9 client:v14 player:v16];
  [v6 setPlayerPath:v17];

  serialQueue = self->_serialQueue;
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10005DD08;
  v34 = &unk_1004B69D0;
  v35 = self;
  v36 = v27;
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

- (void)_sendQueuedCommandsForDestinationClient:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v22 = v6;
  v23 = self;
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

        v13 = [v11 _completionHandler];
        [(MRDRemoteControlServer *)self _sendRemoteControlCommand:v11 toDestinationClient:v6 withCompletion:v13];
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v35 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v25, 8);
}

- (BOOL)_clearQueuedCommand:(id)a3 forUnavailableApplicationWithDisplayID:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v7;
  v14 = v6;
  v15 = &v16;
  v9 = v6;
  v10 = v7;
  dispatch_sync(serialQueue, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (void)_clearAllQueuedCommandsForReason:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E4CC;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (id)_enqueuedCommandsForDisplayID:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_resolvedLocalDeviceDestinationAppDisplayIdentifierForCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 destinationAppDisplayID];
  if (([v5 isEqualToString:kMRMediaRemoteSystemMediaApplicationDisplayIdentifier] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.Fuse"))
  {
    v6 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    goto LABEL_4;
  }

  if ([v5 isEqualToString:kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier])
  {
    v6 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    goto LABEL_4;
  }

  if ([v5 isEqualToString:kMRMediaRemoteSystemBooksApplicationDisplayIdentifier])
  {
    v6 = MRMediaRemoteCopyLocalDeviceSystemBooksApplicationDisplayID();
    goto LABEL_4;
  }

  if ([v4 isContextSensitive])
  {
    v6 = [(MRDRemoteControlServer *)self _contextuallyAwareDestinationAppDisplayIDForCommand:v4];
LABEL_4:
    v7 = v6;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v7 = v5;
LABEL_6:
  if ([v7 isEqualToString:@"com.apple.mediaremoted"])
  {
    v8 = v5;

    v7 = v8;
  }

  return v7;
}

- (id)_destinationClientForRemoteControlCommand:(id)a3
{
  v4 = a3;
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v4 destinationAppProcessID];
  v7 = [(MRDRemoteControlServer *)self _resolvedLocalDeviceDestinationAppDisplayIdentifierForCommand:v4];
  v8 = v7;
  if (v6)
  {
    if (!v7 || ([v4 destinationAppDisplayID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v10))
    {
      v11 = [v5 clientForPID:v6];
LABEL_7:
      v12 = v11;
      goto LABEL_8;
    }

LABEL_6:
    v11 = [v5 clientForBundleIdentifier:v8];
    goto LABEL_7;
  }

  if (v7)
  {
    goto LABEL_6;
  }

  if ([v4 isNavigational])
  {
    v12 = [v5 frontmostClient];
    if (!v12)
    {
LABEL_21:
      v11 = [v5 localNowPlayingClient];
      goto LABEL_7;
    }
  }

  else
  {
    if (![v4 isContextSensitive])
    {
      goto LABEL_21;
    }

    v14 = [(MRDRemoteControlServer *)self _contextuallyAwareDestinationAppDisplayIDForCommand:v4];
    if (v14)
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v4 contextID];
        v17 = 138543618;
        v18 = v14;
        v19 = 2114;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Using previously routed app %{public}@ for context %{public}@", &v17, 0x16u);
      }

      v12 = [v5 clientForBundleIdentifier:v14];
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      goto LABEL_21;
    }
  }

LABEL_8:

  return v12;
}

- (id)_remoteControlContextForCommand:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100034FB0;
  v16 = sub_10003599C;
  v17 = 0;
  v5 = [v4 contextID];
  v6 = v5;
  if (v5)
  {
    serialQueue = self->_serialQueue;
    v10 = v5;
    v11 = v4;
    msv_dispatch_sync_on_queue();
  }

  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)_contextuallyAwareDestinationAppDisplayIDForCommand:(id)a3
{
  v4 = a3;
  v5 = [(MRDRemoteControlServer *)self _remoteControlContextForCommand:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 routedCommands];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v7 reverseObjectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 isContextSensitive])
          {
            v13 = [v12 routedAppDisplayID];
            v9 = [v13 copy];

            v14 = [v4 destinationAppDisplayID];
            v15 = v14;
            if (v9 == v14)
            {
            }

            else
            {
              v16 = [v9 isEqual:v14];

              if ((v16 & 1) == 0 && qword_1005291D0 != -1)
              {
                sub_1003A54A8();
              }
            }

            goto LABEL_21;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    if (![v4 isContextSensitive])
    {
      v9 = 0;
      goto LABEL_23;
    }

    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A54D0();
    }

    v9 = 0;
  }

LABEL_23:

  return v9;
}

- (void)_shouldIgnoreCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = [v6 commandType];
  if (!sub_10019D8A4(v8))
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (![v6 isAVRCPCommand])
  {
    if (sub_10019D88C(v8))
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
    v14 = [v13 expanseSessionActive];

    v10 &= v14 ^ 1;
  }

  else
  {
  }

  if (![v6 alwaysIgnoreDuringSharePlay])
  {
    goto LABEL_20;
  }

  v15 = +[MRUserSettings currentSettings];
  if (([v15 supportExpanseMigration] & 1) == 0)
  {

LABEL_20:
    if (([v6 alwaysIgnoreDuringCall] | v10))
    {
      callObserver = self->_callObserver;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10005F430;
      v20[3] = &unk_1004B7A38;
      v22 = v7;
      v21 = v6;
      [(MRDPhoneCallObserver *)callObserver numberOfActivePhoneCalls:v20];
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }

    goto LABEL_23;
  }

  v16 = +[MRExpanseManager sharedManager];
  v17 = [v16 expanseSessionHasActiveActivity];

  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignoring command because of active SharePlay activity.", buf, 2u);
  }

  (*(v7 + 2))(v7, 1);
LABEL_23:
}

- (BOOL)_checkAndMaybeUpdateNowPlayingAppStackPopRateLimitingWithInterval:(double)a3
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
  *&block[6] = a3;
  dispatch_sync(serialQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)_applicationIsRunning:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v7 = v4;
  msv_dispatch_sync_on_queue();
  LOBYTE(serialQueue) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return serialQueue;
}

- (id)_createBroadcastCommandResponseFromStatuses:(id)a3 forClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_MRSendCommandResultMessageProtobuf);
  v8 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
  [v7 setPlayerPath:v8];

  v9 = +[MROrigin localOrigin];
  v10 = [v9 protobuf];
  v11 = [v7 playerPath];
  [v11 setOrigin:v10];

  v12 = objc_alloc_init(_MRNowPlayingClientProtobuf);
  v13 = [v7 playerPath];
  [v13 setClient:v12];

  v14 = [v6 pid];
  v15 = [v7 playerPath];
  v16 = [v15 client];
  [v16 setProcessIdentifier:v14];

  v17 = [v6 bundleIdentifier];
  v18 = [v7 playerPath];
  v19 = [v18 client];
  [v19 setBundleIdentifier:v17];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v5;
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

- (id)_createBroadcastCommandPlayerPathForClient:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MRClient);
  v5 = [v3 pid];

  [v4 setProcessIdentifier:v5];
  v6 = [MRPlayerPath alloc];
  v7 = +[MROrigin localOrigin];
  v8 = [v6 initWithOrigin:v7 client:v4 player:0];

  return v8;
}

- (BOOL)_isCommandCacheable:(unsigned int)a3
{
  result = 1;
  if (a3 > 0x1A || ((1 << a3) & 0x6000001) == 0)
  {
    return a3 == 134;
  }

  return result;
}

- (id)_effectiveContextIDForCommand:(id)a3
{
  v3 = a3;
  v4 = [v3 optionValueForKey:kMRMediaRemoteOptionIsRedirectingCommand];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 optionValueForKey:kMRMediaRemoteOptionCommandSequenceUUID];
    if ([v7 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = [v3 optionValueForKey:kMRMediaRemoteOptionContextID];
    }

    v6 = v8;
  }

  return v6;
}

- (id)_resolveCommandBeforeSend:(id)a3 toClient:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 mutableCopy];
  v11 = kMRMediaRemoteOptionClientPreferredLanguages;
  v12 = [v10 optionValueForKey:kMRMediaRemoteOptionClientPreferredLanguages];

  if (!v12)
  {
    v13 = +[NSLocale preferredLanguages];
    v14 = [v13 componentsJoinedByString:{@", "}];

    [v10 setOptionValue:v14 forKey:v11];
  }

  if ([v8 commandType] == 136)
  {
    v15 = [(MRDRemoteControlServer *)self _persistPlaybackSessionAndUpdateOptionsForSessionPreloadCommand:v10 forClient:v9 error:a5];
  }

  else if ([v8 commandType] == 132)
  {
    v15 = [(MRDRemoteControlServer *)self _populateApplicationSpecificDataForPrepareForSetQueueCommand:v10 forClient:v9];
  }

  else
  {
    [v8 commandType];
    if (MRMediaRemoteCommandSupportsAttribution())
    {
      v15 = [(MRDRemoteControlServer *)self _attributedCommand:v10 forClient:v9];
    }

    else
    {
      v15 = v8;
    }
  }

  v16 = v15;

  return v16;
}

- (void)_performCommandProcessingAfterSend:(id)a3
{
  v4 = a3;
  if ([v4 commandType] == 136)
  {
    [(MRDRemoteControlServer *)self _cleanUpPersistedSessionForSessionPreloadCommand:v4];
  }
}

- (id)_populateApplicationSpecificDataForPrepareForSetQueueCommand:(id)a3 forClient:(id)a4
{
  v4 = a3;
  v5 = [v4 optionValueForKey:kMRMediaRemoteOptionPrepareForSetQueueIsProactive];
  v6 = [v5 BOOLValue];

  v7 = [v4 optionValueForKey:kMRMediaRemoteOptionPrepareForSetQueueProactiveReason];
  if ((v6 & 1) == 0)
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v54 = v4;
      v21 = "Not populating PPFSQ command options - command is not proactive - command: %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
    }

LABEL_12:

    v22 = v4;
    goto LABEL_34;
  }

  v8 = [v4 playerPath];
  v9 = [v8 isSystemMediaApplication];

  v10 = _MRLogForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if ((v9 & 1) == 0)
  {
    if (v11)
    {
      *buf = 138412290;
      v54 = v4;
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
    v56 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Ready to populate PPFSQ, reason: %@, command: %@", buf, 0x16u);
  }

  v12 = +[MRDMediaRemoteServer server];
  v13 = [v12 nowPlayingServer];
  v14 = [v13 localOriginClient];

  v15 = [v14 nowPlayingClients];
  v16 = [v15 msv_firstWhere:&stru_1004B7AC8];

  v17 = [v16 activePlayerClient];
  v18 = [v17 supportedRemoteControlCommands];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v23 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    v20 = [v14 defaultSupportedCommandsForClient:v23];
  }

  v24 = [v20 msv_firstWhere:&stru_1004B7B08];
  v25 = [v24 options];
  v26 = [v25 objectForKeyedSubscript:kMRMediaRemoteCommandInfoProactiveCommandOptions];

  if (v26)
  {
    v43 = v24;
    v44 = v20;
    v45 = v17;
    v46 = v16;
    v47 = v14;
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
          v34 = [v4 options];
          v35 = [v34 objectForKeyedSubscript:v33];

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
            [v4 setOptionValue:v37 forKey:v33];

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
      v54 = v4;
      v55 = 2048;
      v56 = v39;
      v57 = 2112;
      v58 = v27;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Finished populating PPFSQ command options for command %@ - populated %lu keys: %@", buf, 0x20u);
    }

    v22 = [v4 copy];
    v14 = v47;
    v7 = v48;
    v17 = v45;
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
      v54 = v4;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Not populating PPFSQ command options - no data provided - command: %@", buf, 0xCu);
    }

    v22 = v4;
  }

LABEL_34:

  return v22;
}

- (id)_persistPlaybackSessionAndUpdateOptionsForSessionPreloadCommand:(id)a3 forClient:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = kMRMediaRemoteOptionPlaybackSessionData;
  v10 = [v7 optionValueForKey:kMRMediaRemoteOptionPlaybackSessionData];
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
      if (a5)
      {
        v18 = v17;
        v19 = 0;
        *a5 = v17;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v20 = [v12 identifier];
      v21 = [v15 URLByAppendingPathComponent:v20];

      v22 = [v12 playbackSessionData];
      v33 = 0;
      [v22 writeToURL:v21 options:1 error:&v33];
      v17 = v33;

      if (v17)
      {
        if (a5)
        {
          v23 = v17;
          v19 = 0;
          *a5 = v17;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        if (v8)
        {
          [v8 realToken];
        }

        v24 = [v21 path];
        [v24 UTF8String];
        v25 = sandbox_extension_issue_file_to_process();

        v26 = [NSString stringWithCString:v25 encoding:4, 0, 0, 0, 0];
        free(v25);
        v27 = [v21 path];
        [v7 setOptionValue:v27 forKey:kMRMediaRemoteOptionPlaybackSessionFilePath];

        v28 = [v12 identifier];
        [v7 setOptionValue:v28 forKey:kMRMediaRemoteOptionPlaybackSessionIdentifier];

        v29 = [v12 type];
        [v7 setOptionValue:v29 forKey:kMRMediaRemoteOptionPlaybackSessionType];

        v30 = [v12 revision];
        [v7 setOptionValue:v30 forKey:kMRMediaRemoteOptionPlaybackSessionRevision];

        v31 = [v12 metadata];
        [v7 setOptionValue:v31 forKey:kMRMediaRemoteOptionPlaybackSessionMetadata];

        [v7 setOptionValue:0 forKey:v9];
        [v7 setOptionValue:v26 forKey:kMRMediaRemoteOptionSandboxExtensionToken];
        v19 = [v7 copy];
      }
    }
  }

  else
  {
    v19 = 0;
    if (a5)
    {
      *a5 = [[NSError alloc] initWithMRError:2];
    }
  }

  return v19;
}

- (void)_cleanUpPersistedSessionForSessionPreloadCommand:(id)a3
{
  v5 = [a3 optionValueForKey:kMRMediaRemoteOptionPlaybackSessionFilePath];
  v3 = [NSURL fileURLWithPath:v5];
  v4 = +[NSFileManager defaultManager];
  [v4 removeItemAtURL:v3 error:0];
}

- (id)_onQueue_presentDialogWithTitle:(id)a3 message:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(MSVSystemDialogOptions);
  [v17 setAlertHeader:v16];

  [v17 setAlertMessage:v15];
  [v17 setDefaultButtonTitle:v14];

  [v17 setAlternateButtonTitle:v13];
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
  v26 = v12;
  v20 = v12;
  dispatch_async(&_dispatch_main_q, v24);
  v21 = v26;
  v22 = v19;

  return v19;
}

- (id)_attributedCommand:(id)a3 forClient:(id)a4
{
  v4 = a3;
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v4 playerPath];
  v8 = [v6 queryExistingPlayerPath:v7];

  v9 = [v8 originClient];
  v10 = [v9 deviceInfo];
  v11 = [v10 buildVersion];
  v12 = [v11 hasPrefix:@"21J"];

  if (!v12)
  {
    v13 = [v4 playerPath];
    v14 = [v13 client];
    v15 = [v14 bundleIdentifier];
    IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

    if (IsSystemMediaApplication)
    {
      v17 = [v4 options];
      v18 = [v17 objectForKeyedSubscript:kMRMediaRemoteOptionOriginatedFromRemoteDevice];
      v19 = [v18 BOOLValue];

      if (v19)
      {
        v20 = kMRMediaRemoteOptionApplicationUserIdentity;
        v21 = [v4 optionValueForKey:kMRMediaRemoteOptionApplicationUserIdentity];
        v22 = [[MRUserIdentity alloc] initWithProtobufData:v21];
        if (v22)
        {
          v23 = v22;
          v24 = [v8 playerClient];
          v25 = [v24 participantDataSource];
          v26 = [v25 donateAttribution:v23];

          [v4 setOptionValue:v26 forKey:kMRMediaRemoteOptionAssociatedParticipantIdentifier];
          [v4 setOptionValue:0 forKey:v20];
          v27 = v4;

          goto LABEL_14;
        }
      }

      else
      {
        v28 = [v4 options];
        v21 = [v28 objectForKeyedSubscript:kMRMediaRemoteOptionHomeKitUserIdentifier];

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
          v32 = [v4 playerPath];
          v33 = [v32 origin];
          v34 = [v33 isLocal];

          if (v34)
          {
            v35 = [MRPlaybackQueueParticipant expectedIdentifierForUserIdentity:v31 withRandomData:0];
            v36 = &kMRMediaRemoteOptionAssociatedParticipantIdentifier;
          }

          else
          {
            v35 = [v31 protobufData];
            v36 = &kMRMediaRemoteOptionApplicationUserIdentity;
          }

          [v4 setOptionValue:v35 forKey:*v36];

          v39 = v4;
          goto LABEL_14;
        }
      }
    }
  }

  v37 = v4;
LABEL_14:

  return v4;
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