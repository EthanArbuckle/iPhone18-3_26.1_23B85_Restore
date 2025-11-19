@interface NFMRemoteFindLocally
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NFMRemoteFindLocally)init;
- (unsigned)_behaviorModeOverride;
- (void)_cleanUpSession;
- (void)_initializeSessionIfNeeded;
- (void)_startPhoneRangingSession;
- (void)_tellPhoneToPlaySoundWithBehavior:(unsigned __int16)a3;
- (void)didPlaySound:(id)a3;
- (void)didPlaySoundAndFlashLED:(id)a3;
- (void)handleSendSharedConfiguration:(id)a3;
- (void)handleSharedConfigurationResponse:(id)a3;
- (void)handleStopPhoneRanging:(id)a3;
- (void)pingMyWatchCapabilityDidChange;
- (void)playNearbySoundOnPhone;
- (void)playSound:(id)a3;
- (void)playSoundAndFlash:(id)a3;
- (void)playSoundAndFlashRemotely;
- (void)playSoundRemotely;
- (void)session:(id)a3 didGenerateShareableConfigurationData:(id)a4 forObject:(id)a5;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5;
- (void)sessionSuspensionEnded:(id)a3;
- (void)sessionWasSuspended:(id)a3;
- (void)startRangingOnPhone;
- (void)stopRangingOnPhone;
@end

@implementation NFMRemoteFindLocally

- (NFMRemoteFindLocally)init
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v24 = 79;
    v25 = 2080;
    v26 = "[NFMRemoteFindLocally init]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v22.receiver = self;
  v22.super_class = NFMRemoteFindLocally;
  v4 = [(NFMRemoteFindLocally *)&v22 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("NFMRemoteFindLocally-SerialQueue", v5);
    serialQueue = v4->_serialQueue;
    v4->_serialQueue = v6;

    v8 = objc_alloc_init(NFMPlayCommands);
    playCommands = v4->_playCommands;
    v4->_playCommands = v8;

    v10 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.findmylocaldevice"];
    [v10 setProtobufAction:"playSound:" forIncomingRequestsOfType:1];
    [v10 setProtobufAction:"playSoundAndFlash:" forIncomingRequestsOfType:2];
    [v10 setProtobufAction:"didPlaySound:" forIncomingResponsesOfType:1];
    [v10 setProtobufAction:"didPlaySoundAndFlashLED:" forIncomingResponsesOfType:2];
    [v10 setProtobufAction:"handleSendSharedConfiguration:" forIncomingRequestsOfType:4];
    [v10 setProtobufAction:"handleSharedConfigurationResponse:" forIncomingResponsesOfType:4];
    [v10 setProtobufAction:"handleStopPhoneRanging:" forIncomingRequestsOfType:5];
    [v10 addDelegate:v4 queue:v4->_serialQueue];
    gizmoService = v4->_gizmoService;
    v4->_gizmoService = v10;
    v12 = v10;

    v13 = nfm_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "########### SETUP COMP-SIDE DAEMON", buf, 2u);
    }

    v14 = [NSXPCListener alloc];
    v15 = [v14 initWithMachServiceName:NFMFindLocalDeviceServerName];
    localListener = v4->_localListener;
    v4->_localListener = v15;

    [(NSXPCListener *)v4->_localListener setDelegate:v4];
    [(NSXPCListener *)v4->_localListener resume];
    v17 = +[NSMutableDictionary dictionary];
    localConnections = v4->_localConnections;
    v4->_localConnections = v17;

    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_10000C3B8);
    v19 = objc_alloc_init(NFMPingMyWatchCoordinator);
    pingMyWatchCoordinator = v4->_pingMyWatchCoordinator;
    v4->_pingMyWatchCoordinator = v19;

    [(NFMPingMyWatchCoordinator *)v4->_pingMyWatchCoordinator setDelegate:v4];
    [(NFMPingMyWatchCoordinator *)v4->_pingMyWatchCoordinator updatePingMyWatchSupportStateIfNeeded];
  }

  return v4;
}

- (void)playSoundAndFlash:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001B98;
  v5[3] = &unk_10000C3E0;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)playSound:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001ED8;
  v5[3] = &unk_10000C3E0;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)didPlaySound:(id)a3
{
  v4 = a3;
  v5 = [NFMProtoDidPlaySoundResponse alloc];
  v6 = [v4 data];
  v7 = [v5 initWithData:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSMutableDictionary *)self->_localConnections allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) remoteObjectProxy];
        [v13 playedSound:{objc_msgSend(v7, "didPlay")}];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)didPlaySoundAndFlashLED:(id)a3
{
  v4 = a3;
  v5 = [NFMProtoDidPlaySoundAndFlashLEDResponse alloc];
  v6 = [v4 data];
  v7 = [v5 initWithData:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSMutableDictionary *)self->_localConnections allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) remoteObjectProxy];
        [v13 playedSoundAndLED:{objc_msgSend(v7, "didPlay")}];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)handleSendSharedConfiguration:(id)a3
{
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = 278;
    v11 = 2080;
    v12 = "[NFMRemoteFindLocally handleSendSharedConfiguration:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v10, 0x12u);
  }

  v6 = [NFMProtoSendSharedConfiguration alloc];
  v7 = [v4 data];

  v8 = [v6 initWithData:v7];
  v9 = [v8 sharedConfiguration];
  [(NFMRemoteFindLocally *)self setSharedConfigData:v9];

  [(NFMRemoteFindLocally *)self _initializeSessionIfNeeded];
  [(NFMRemoteFindLocally *)self _startRangingSession];
}

- (void)handleSharedConfigurationResponse:(id)a3
{
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109378;
    v13[1] = 287;
    v14 = 2080;
    v15 = "[NFMRemoteFindLocally handleSharedConfigurationResponse:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v13, 0x12u);
  }

  v6 = [NFMProtoSendSharedConfiguration alloc];
  v7 = [v4 data];

  v8 = [v6 initWithData:v7];
  v9 = [v8 sharedConfiguration];
  v10 = [(NFMRemoteFindLocally *)self session];
  v11 = [v10 findingNotifier];
  v12 = [(NFMRemoteFindLocally *)self token];
  [v11 notifyDiscoveredNearbyObjectWithToken:v12 sharedConfigurationData:v9];
}

- (void)handleStopPhoneRanging:(id)a3
{
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    buf = 0x12704000202;
    v9 = 2080;
    v10 = "[NFMRemoteFindLocally handleStopPhoneRanging:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s", &buf, 0x12u);
  }

  [(NFMRemoteFindLocally *)self _initializeSessionIfNeeded];
  objc_initWeak(&buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002AC8;
  v6[3] = &unk_10000C430;
  v6[4] = self;
  objc_copyWeak(&v7, &buf);
  [NFMTokenManager getTokenWithCompletionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&buf);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nfm_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = 318;
    LOWORD(v21) = 2080;
    *(&v21 + 2) = "[NFMRemoteFindLocally listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "########### %d %s", buf, 0x12u);
  }

  v9 = [v7 valueForEntitlement:NFMFindLocalDeviceEntitlementName];
  objc_initWeak(&location, self);
  *buf = 0;
  *&v21 = buf;
  *(&v21 + 1) = 0x3032000000;
  v22 = sub_100002EC0;
  v23 = sub_100002ED0;
  v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 processIdentifier]);
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v9 BOOLValue])
  {
    v10 = [(NFMRemoteFindLocally *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002ED8;
    block[3] = &unk_10000C4D0;
    v15 = v7;
    v16 = self;
    objc_copyWeak(&v18, &location);
    v17 = buf;
    dispatch_async(v10, block);

    objc_destroyWeak(&v18);
    v11 = v15;
    v12 = 1;
  }

  else
  {
    v11 = nfm_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000067A0();
    }

    v12 = 0;
  }

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);

  return v12;
}

- (void)playSoundRemotely
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = 371;
    v5 = 2080;
    v6 = "[NFMRemoteFindLocally playSoundRemotely]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s", v4, 0x12u);
  }

  [(NFMRemoteFindLocally *)self _tellPhoneToPlaySoundWithBehavior:[(NFMRemoteFindLocally *)self _behaviorModeOverride]];
}

- (void)playSoundAndFlashRemotely
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = 378;
    v5 = 2080;
    v6 = "[NFMRemoteFindLocally playSoundAndFlashRemotely]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s", v4, 0x12u);
  }

  [(NFMRemoteFindLocally *)self _tellPhoneToPlaySoundWithBehavior:1];
}

- (void)playNearbySoundOnPhone
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = 385;
    v5 = 2080;
    v6 = "[NFMRemoteFindLocally playNearbySoundOnPhone]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s", v4, 0x12u);
  }

  [(NFMRemoteFindLocally *)self _tellPhoneToPlaySoundWithBehavior:3];
}

- (void)_tellPhoneToPlaySoundWithBehavior:(unsigned __int16)a3
{
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v10 = 392;
    v11 = 2080;
    v12 = "[NFMRemoteFindLocally _tellPhoneToPlaySoundWithBehavior:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v6 = [(NFMRemoteFindLocally *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003864;
  v7[3] = &unk_10000C4F8;
  v8 = a3;
  v7[4] = self;
  dispatch_async(v6, v7);
}

- (unsigned)_behaviorModeOverride
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"behaviorMode"];

  if (v3 >= 5)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)startRangingOnPhone
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v7 = 437;
    v8 = 2080;
    v9 = "[NFMRemoteFindLocally startRangingOnPhone]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v4 = [(NFMRemoteFindLocally *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003AD8;
  block[3] = &unk_10000C520;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)stopRangingOnPhone
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v7 = 447;
    v8 = 2080;
    v9 = "[NFMRemoteFindLocally stopRangingOnPhone]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v4 = [(NFMRemoteFindLocally *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C34;
  block[3] = &unk_10000C520;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)session:(id)a3 didGenerateShareableConfigurationData:(id)a4 forObject:(id)a5
{
  v6 = a4;
  v7 = nfm_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = 471;
    v15 = 2080;
    v16 = "[NFMRemoteFindLocally session:didGenerateShareableConfigurationData:forObject:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v8 = [(NFMRemoteFindLocally *)self serialQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003E5C;
  v10[3] = &unk_10000C3E0;
  v11 = v6;
  v12 = self;
  v9 = v6;
  dispatch_async(v8, v10);
}

- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5
{
  v6 = nfm_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = 496;
    v8 = 2080;
    v9 = "[NFMRemoteFindLocally session:didRemoveNearbyObjects:withReason:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%d %s: Invalidating session", v7, 0x12u);
  }

  [(NFMRemoteFindLocally *)self _cleanUpSession];
}

- (void)sessionWasSuspended:(id)a3
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = 502;
    v5 = 2080;
    v6 = "[NFMRemoteFindLocally sessionWasSuspended:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s: Ignoring", v4, 0x12u);
  }
}

- (void)sessionSuspensionEnded:(id)a3
{
  v4 = nfm_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 507;
    v6 = 2080;
    v7 = "[NFMRemoteFindLocally sessionSuspensionEnded:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%d %s", v5, 0x12u);
  }

  [(NFMRemoteFindLocally *)self _startRangingSession];
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = 513;
    v7 = 2080;
    v8 = "[NFMRemoteFindLocally session:didInvalidateWithError:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s: Invalidating session", v6, 0x12u);
  }

  [(NFMRemoteFindLocally *)self _cleanUpSession];
}

- (void)_startPhoneRangingSession
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004310;
  v3[3] = &unk_10000C430;
  v3[4] = self;
  objc_copyWeak(&v4, &location);
  [NFMTokenManager getTokenWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_initializeSessionIfNeeded
{
  v3 = [(NFMRemoteFindLocally *)self session];

  if (!v3)
  {
    v4 = nfm_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "initializing NI session", v9, 2u);
    }

    v5 = objc_alloc_init(NISession);
    [(NFMRemoteFindLocally *)self setSession:v5];
  }

  v6 = [(NFMRemoteFindLocally *)self session];
  [v6 setDelegate:self];

  v7 = [(NFMRemoteFindLocally *)self serialQueue];
  v8 = [(NFMRemoteFindLocally *)self session];
  [v8 setDelegateQueue:v7];
}

- (void)_cleanUpSession
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 586;
    v6 = 2080;
    v7 = "[NFMRemoteFindLocally _cleanUpSession]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s", v5, 0x12u);
  }

  v4 = [(NFMRemoteFindLocally *)self session];
  [v4 invalidate];

  [(NFMRemoteFindLocally *)self setSession:0];
}

- (void)pingMyWatchCapabilityDidChange
{
  v2 = +[CHSControlService sharedInstance];
  [v2 reloadControlsForExtension:@"com.apple.Bridge.BridgeWidgetExtension" kind:@"com.apple.PingMyWatchControlCenterUI.swiftUI" reason:@"pingMyWatchCapabilityDidChange"];

  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "########### Reloaded PingMyWatch control", v4, 2u);
  }
}

@end