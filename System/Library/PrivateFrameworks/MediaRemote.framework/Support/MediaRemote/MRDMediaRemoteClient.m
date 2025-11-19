@interface MRDMediaRemoteClient
- ($115C4C562B26FF47E01F9F4EA65B5887)realToken;
- (BOOL)canBeNowPlaying;
- (BOOL)hasRequestedLegacyNowPlayingInfo;
- (BOOL)isAllowedAccessToDataFromPlayerPath:(id)a3;
- (BOOL)isEntitledFor:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInCriticalSection;
- (BOOL)notificationRequiresTaskAssertionForPlayerPath:(id)a3;
- (BOOL)removePendingPlaybackSessionMigrateEvent:(id)a3;
- (BOOL)takeAssertion:(int64_t)a3 forReason:(id)a4 duration:(double)a5;
- (BOOL)takeAssertionAndBlessForReason:(id)a3;
- (MRDMediaRemoteClient)initWithConnection:(id)a3;
- (MRDPairingHandler)pairingHandler;
- (MRDXPCMessageHandling)messageHandler;
- (NSArray)applicationPickedRoutes;
- (NSData)auditToken;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)displayName;
- (NSString)processName;
- (id)createNowPlayingClient;
- (void)_handleXPCMessage:(id)a3;
- (void)_invalidate;
- (void)_postNotification:(id)a3;
- (void)_relayXPCMessage:(id)a3 andReply:(BOOL)a4 resultCallback:(id)a5;
- (void)_resumeConnection;
- (void)_sendInProcessRemoteControlCommand:(id)a3 withCompletionBlock:(id)a4;
- (void)_waitForNativeEndpointWithTimeout:(double)a3 completion:(id)a4;
- (void)addPendingPlaybackSessionMigrateEvent:(id)a3 playerPath:(id)a4;
- (void)flushPendingPlaybackSessionMigrateEvents:(id)a3;
- (void)invalidateCriticalSectionAssertionForRequestID:(id)a3;
- (void)pauseNotifications;
- (void)postNotification:(id)a3;
- (void)relayXPCMessage:(id)a3 andReply:(BOOL)a4 resultCallback:(id)a5;
- (void)resumeNotifications;
- (void)sendRemoteControlCommand:(id)a3 withCompletionBlock:(id)a4;
- (void)setApplicationPickedRoutes:(id)a3;
- (void)setDeclaringAirplayActive:(BOOL)a3;
- (void)setKeepAlive:(BOOL)a3;
- (void)setOutputDeviceDiscoveryMode:(unsigned int)a3;
- (void)setRouteDiscoveryMode:(unsigned int)a3;
- (void)setWantsAssertionsForNotificationsWithPlayerPath:(id)a3;
- (void)takeCriticalSectionAssertionForRequestID:(id)a3 completion:(id)a4;
@end

@implementation MRDMediaRemoteClient

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MRDMediaRemoteClient *)self bundleIdentifier];
  v6 = [NSString stringWithFormat:@"<%@ %p, bundleIdentifier = %@, pid = %ld, entitlements=%lu>", v4, self, v5, [(MRDMediaRemoteClient *)self pid], self->_entitlements];

  return v6;
}

- (NSData)auditToken
{
  [(MRDMediaRemoteClient *)self realToken];
  v2 = [NSData dataWithBytes:&v4 length:32];

  return v2;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)realToken
{
  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  v4 = [(MRXPCConnection *)self->_connection connection];
  xpc_connection_get_audit_token();

  return result;
}

- (BOOL)isInCriticalSection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000765C;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)resumeNotifications
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10003523C;
  v17 = sub_100035AD4;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007A58;
  block[3] = &unk_1004B6958;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(serialQueue, block);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v14[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(MRDMediaRemoteClient *)self _postNotification:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v13, 8);
}

- (BOOL)hasRequestedLegacyNowPlayingInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001755C;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)displayName
{
  v3 = [(MRDMediaRemoteClient *)self bundleIdentifier];
  v4 = [NSString stringWithFormat:@"%@-%ld", v3, [(MRDMediaRemoteClient *)self pid]];

  return v4;
}

- (void)_invalidate
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"MRDMediaRemoteClientDidInvalidate" object:self];
}

- (MRDMediaRemoteClient)initWithConnection:(id)a3
{
  v70 = a3;
  v91.receiver = self;
  v91.super_class = MRDMediaRemoteClient;
  v71 = [(MRDMediaRemoteClient *)&v91 init];
  if (!v71)
  {
    goto LABEL_58;
  }

  v89 = 0u;
  v90 = 0u;
  xpc_connection_get_audit_token();
  *location = 0u;
  v88 = 0u;
  v4 = sub_100007074(location);
  bundleIdentifier = v71->_bundleIdentifier;
  v71->_bundleIdentifier = v4;

  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_10017E03C;
  v85[3] = &unk_1004C0098;
  v6 = v71;
  v86 = v6;
  v68 = objc_retainBlock(v85);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017E0D8;
  block[3] = &unk_1004B6D08;
  val = v6;
  v84 = val;
  if (qword_1005295E8 != -1)
  {
    dispatch_once(&qword_1005295E8, block);
  }

  v7 = (v68[2])(v68, @"serialQueue");
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);
  v10 = val[2];
  val[2] = v9;

  objc_storeStrong(val + 3, qword_1005295D8);
  objc_storeStrong(val + 4, qword_1005295E0);
  v11 = [[MRXPCConnection alloc] initWithConnection:v70 queue:val[4] defaultReplyQueue:val[4]];
  v12 = val[21];
  val[21] = v11;

  v13 = [[MRPlaybackQueueClient alloc] initWithQueue:val[2]];
  v14 = val[27];
  val[27] = v13;

  v15 = objc_alloc_init(NSMutableArray);
  v16 = val[8];
  val[8] = v15;

  v17 = objc_alloc_init(NSOperationQueue);
  v18 = val[9];
  val[9] = v17;

  [val[9] setMaxConcurrentOperationCount:1];
  *(val + 112) = 0;
  v19 = objc_alloc_init(NSMutableArray);
  v20 = val[15];
  val[15] = v19;

  v21 = objc_alloc_init(NSMutableDictionary);
  v22 = val[16];
  val[16] = v21;

  v23 = [MRXPCConnectionMonitor alloc];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = [(MRXPCConnectionMonitor *)v23 initWithXPCConnection:v70 label:v25];
  v27 = val[13];
  val[13] = v26;

  [val[13] setDelegate:val];
  objc_initWeak(location, val);
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_10017E208;
  v81[3] = &unk_1004C00C0;
  objc_copyWeak(&v82, location);
  [val[21] setMessageHandler:v81];
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_10017E264;
  v79[3] = &unk_1004C00C0;
  objc_copyWeak(&v80, location);
  [val[21] setInvalidationHandler:v79];
  v28 = xpc_copy_entitlement_for_token();

  if (v28)
  {
    goto LABEL_7;
  }

  v29 = [val bundleIdentifier];
  v30 = [v29 isEqualToString:@"com.apple.AssistantServices"];

  if ((v30 & 1) != 0 || ([val bundleIdentifier], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEqualToString:", @"com.apple.lskdd"), v31, v32))
  {
LABEL_7:
    val[10] = (val[10] | 2);
  }

  v33 = xpc_copy_entitlement_for_token();

  if (v33)
  {
    val[10] = (val[10] | 8);
  }

  v34 = xpc_copy_entitlement_for_token();

  if (v34)
  {
    val[10] = (val[10] | 0x10);
  }

  v35 = xpc_copy_entitlement_for_token();

  if (v35 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v36 supportMultiplayerHost], v36, v37))
  {
    val[10] = (val[10] | 0x20);
  }

  v38 = xpc_copy_entitlement_for_token();

  if (v38)
  {
    val[10] = (val[10] | 0x80);
  }

  v39 = xpc_copy_entitlement_for_token();

  if (v39)
  {
    val[10] = (val[10] | 0x100);
  }

  v40 = xpc_copy_entitlement_for_token();

  if (v40)
  {
    val[10] = (val[10] | 0x800);
  }

  v41 = xpc_copy_entitlement_for_token();
  if (v41 || [(NSString *)v71->_bundleIdentifier hasPrefix:@"com.apple."])
  {

LABEL_24:
    val[10] = (val[10] | 0x200);
    goto LABEL_25;
  }

  v66 = +[MRUserSettings currentSettings];
  v67 = [v66 supportsNativeThirdPartyApps];

  if ((v67 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  v42 = xpc_copy_entitlement_for_token();

  if (v42)
  {
    val[10] = (val[10] | 0x600);
  }

  v43 = xpc_copy_entitlement_for_token();

  if (v43)
  {
    val[10] = (val[10] | 0x1000);
  }

  v44 = xpc_copy_entitlement_for_token();
  if (v44)
  {
  }

  else
  {
    v45 = +[MRUserSettings currentSettings];
    v46 = [v45 supportsNativeThirdPartyApps];

    if (v46)
    {
      goto LABEL_33;
    }
  }

  val[10] = (val[10] | 0x2000);
LABEL_33:
  v47 = xpc_copy_entitlement_for_token();

  if (v47)
  {
    val[10] = (val[10] | 0x4000);
  }

  v48 = xpc_copy_entitlement_for_token();
  if (v48)
  {
  }

  else
  {
    v49 = +[MRUserSettings currentSettings];
    v50 = [v49 supportsNativeThirdPartyApps];

    if (v50)
    {
      goto LABEL_39;
    }
  }

  val[10] = (val[10] | 0x1A000);
LABEL_39:
  xdict = xpc_copy_entitlement_for_token();
  if (xdict)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v51 = [&off_1004E0F28 countByEnumeratingWithState:&v75 objects:v92 count:16];
    if (v51)
    {
      v52 = 0;
      v73 = *v76;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v76 != v73)
          {
            objc_enumerationMutation(&off_1004E0F28);
          }

          v54 = *(*(&v75 + 1) + 8 * i);
          v55 = v54;
          v56 = xpc_dictionary_get_array(xdict, [v54 UTF8String]);
          v57 = v56;
          if (v56)
          {
            count = xpc_array_get_count(v56);
            if (count >= 1)
            {
              v59 = 0;
              v60 = count & 0x7FFFFFFF;
              while (1)
              {
                v61 = [NSString stringWithUTF8String:xpc_array_get_string(v57, v59)];
                v62 = [v61 isEqualToString:@"com.apple.PairingManager"];

                if (v62)
                {
                  break;
                }

                if (v60 == ++v59)
                {
                  goto LABEL_53;
                }
              }

              ++v52;
            }
          }

          else
          {
            v63 = v54;
            v52 += xpc_dictionary_get_BOOL(xdict, [v54 UTF8String]);
          }

LABEL_53:
        }

        v51 = [&off_1004E0F28 countByEnumeratingWithState:&v75 objects:v92 count:16];
      }

      while (v51);
      if (v52 == 4)
      {
        val[10] = (val[10] | 4);
      }
    }
  }

  v64 = [val[21] connection];
  xpc_connection_resume(v64);

  objc_destroyWeak(&v80);
  objc_destroyWeak(&v82);
  objc_destroyWeak(location);

LABEL_58:
  return v71;
}

- (NSString)processName
{
  processName = self->_processName;
  if (!processName)
  {
    v4 = proc_pidpath([(MRDMediaRemoteClient *)self pid], buffer, 0x1000u);
    if (v4 >= 1)
    {
      v5 = [[NSString alloc] initWithBytes:buffer length:v4 encoding:4];
      v6 = [v5 lastPathComponent];
      v7 = [v6 copy];
      v8 = self->_processName;
      self->_processName = v7;
    }

    processName = self->_processName;
  }

  return processName;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(MRDMediaRemoteClient *)self bundleIdentifier];
  v5 = [(MRDMediaRemoteClient *)self pid];
  v6 = [(MRDMediaRemoteClient *)self euid];
  entitlements = self->_entitlements;
  connection = self->_connection;
  connectionMonitor = self->_connectionMonitor;
  v10 = MRCreateIndentedDebugDescriptionFromObject();
  v11 = [NSMutableString stringWithFormat:@"<%@ %p {\n    bundle identifier = %@\n    pid = %ld\n    euid = %ld\n    entitlements=%ld\n    xpc connection = %@\n    connection monitor = %@\n", v3, self, v4, v5, v6, entitlements, connection, v10];

  if (self->_currentTaskAssertion)
  {
    [v11 appendFormat:@"    current task assertion = %@\n", self->_currentTaskAssertion];
  }

  if ([(NSMutableArray *)self->_assertions count])
  {
    assertions = self->_assertions;
    v13 = MRCreateIndentedDebugDescriptionFromArray();
    [v11 appendFormat:@"    assertions = %@\n", v13];
  }

  if (self->_routeDiscoveryMode)
  {
    v14 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
    [v11 appendFormat:@"    route discovery mode = %@\n", v14];
  }

  if ([(NSArray *)self->_applicationPickedRoutes count])
  {
    [v11 appendFormat:@"    application picked routes = %@\n", self->_applicationPickedRoutes];
  }

  if (self->_hardwareRemoteBehavior)
  {
    v15 = MRMediaRemoteCopyHardwareRemoteBehaviorDescription();
    [v11 appendFormat:@"    hardware remote behavior = %@\n", v15];
  }

  if (self->_hasRequestedLegacyNowPlayingInfo)
  {
    [v11 appendFormat:@"    has requested legacy nowPlayingInfo = %s\n", "YES"];
  }

  if (self->_hasRequestedSupportedCommands)
  {
    [v11 appendFormat:@"    has requested supported commands = %s\n", "YES"];
  }

  if (self->_declaringAirplayActive)
  {
    [v11 appendFormat:@"    declaringAirplayActive = YES\n"];
  }

  if (self->_nowPlayingAirPlaySession)
  {
    [v11 appendFormat:@"    nowPlayingAirPlaySession = %@\n", self->_nowPlayingAirPlaySession];
  }

  if ([(NSMutableArray *)self->_subscribedWakingPlayerPaths count])
  {
    subscribedWakingPlayerPaths = self->_subscribedWakingPlayerPaths;
    v17 = MRCreateIndentedDebugDescriptionFromArray();
    [v11 appendFormat:@"    subscribedWakingPlayerPaths = %@\n", v17];
  }

  if (self->_playbackQueueRequests)
  {
    v18 = MRCreateIndentedDebugDescriptionFromObject();
    [v11 appendFormat:@"    playbackQueueRequests = %@\n", v18];
  }

  [v11 appendString:@"}\n"];
  [v11 appendFormat:@"}>"];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MRDMediaRemoteClient *)self pid];
    v7 = [v5 pid];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setRouteDiscoveryMode:(unsigned int)a3
{
  if (self->_routeDiscoveryMode != a3)
  {
    self->_routeDiscoveryMode = a3;
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client switched route discovery mode to: %lu", &v5, 0xCu);
    }
  }
}

- (void)setOutputDeviceDiscoveryMode:(unsigned int)a3
{
  if (self->_outputDeviceDiscoveryMode != a3)
  {
    self->_outputDeviceDiscoveryMode = a3;
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client switched output device discovery mode to: %lu", &v5, 0xCu);
    }
  }
}

- (NSArray)applicationPickedRoutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003523C;
  v10 = sub_100035AD4;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017E920;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setApplicationPickedRoutes:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017EA04;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (MRDPairingHandler)pairingHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003523C;
  v10 = sub_100035AD4;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017EB38;
  v5[3] = &unk_1004B6958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setKeepAlive:(BOOL)a3
{
  if (self->_keepAlive != a3)
  {
    self->_keepAlive = a3;
  }
}

- (BOOL)canBeNowPlaying
{
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 nowPlayingServer];
  v5 = +[MROrigin localOrigin];
  v6 = [v4 originClientForOrigin:v5];

  v7 = [v6 existingNowPlayingClientForPid:{-[MRDMediaRemoteClient pid](self, "pid")}];
  LOBYTE(v3) = [v7 canBeNowPlaying];

  return v3;
}

- (void)setDeclaringAirplayActive:(BOOL)a3
{
  if (self->_declaringAirplayActive != a3)
  {
    self->_declaringAirplayActive = a3;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"MRDMediaRemoteClientDeclaringAirplayActiveDidChange" object:self];
  }
}

- (BOOL)isEntitledFor:(unint64_t)a3
{
  if ((a3 & ~self->_entitlements) != 0)
  {
    return [(MRDMediaRemoteClient *)self isMediaRemoteDaemon];
  }

  else
  {
    return 1;
  }
}

- (void)addPendingPlaybackSessionMigrateEvent:(id)a3 playerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017EDC8;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(serialQueue, block);
}

- (BOOL)removePendingPlaybackSessionMigrateEvent:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017EF38;
  block[3] = &unk_1004B78D8;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

- (void)flushPendingPlaybackSessionMigrateEvents:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_10003523C;
    v22 = sub_100035AD4;
    v23 = 0;
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017F1E8;
    block[3] = &unk_1004B6D30;
    block[4] = self;
    block[5] = &v18;
    dispatch_sync(serialQueue, block);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v19[5];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 first];
          v12 = [v10 second];
          v4[2](v4, v11, v12);
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(&v18, 8);
  }
}

- (BOOL)isAllowedAccessToDataFromPlayerPath:(id)a3
{
  v4 = a3;
  if ([(MRDMediaRemoteClient *)self isEntitledFor:1024])
  {
    goto LABEL_2;
  }

  v6 = [v4 origin];
  if ([v6 isLocal])
  {
    v7 = [v4 client];
    v8 = -[MRDMediaRemoteClient _shouldDenyAccessToUser:](self, "_shouldDenyAccessToUser:", [v7 processUserIdentifier]);

    if (v8)
    {
      v5 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v9 = [v4 origin];
  if (([v9 isLocal] & 1) == 0)
  {

LABEL_11:
    v5 = [(MRDMediaRemoteClient *)self isEntitledFor:512];
    goto LABEL_12;
  }

  v10 = [v4 client];
  v11 = [v10 processIdentifier];
  v12 = [(MRDMediaRemoteClient *)self pid];

  if (v11 != v12)
  {
    goto LABEL_11;
  }

LABEL_2:
  v5 = 1;
LABEL_12:

  return v5;
}

- (void)postNotification:(id)a3
{
  v4 = a3;
  if ([(MRDMediaRemoteClient *)self isMediaRemoteDaemon])
  {
    v5 = [v4 notification];
    v6 = [v4 userInfo];
    v7 = +[MRMediaRemoteServiceClient sharedServiceClient];
    MRNotificationServiceClientPostNotificationCallback();
  }

  else
  {
    objc_initWeak(&location, self);
    connectionMonitor = self->_connectionMonitor;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10017F4A8;
    v9[3] = &unk_1004C00E8;
    objc_copyWeak(&v11, &location);
    v9[4] = self;
    v10 = v4;
    [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)pauseNotifications
{
  if (![(MRDMediaRemoteClient *)self isInCriticalSection])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017F670;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (BOOL)notificationRequiresTaskAssertionForPlayerPath:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017F734;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  if (a3)
  {
    LOBYTE(a3) = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return a3 & 1;
}

- (void)setWantsAssertionsForNotificationsWithPlayerPath:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017F80C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (BOOL)takeAssertion:(int64_t)a3 forReason:(id)a4 duration:(double)a5
{
  v8 = a4;
  objc_initWeak(&location, self);
  v9 = [MRDTaskAssertion alloc];
  v10 = [(MRDMediaRemoteClient *)self pid];
  v11 = [(MRDMediaRemoteClient *)self bundleIdentifier];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10017FA3C;
  v20[3] = &unk_1004C0110;
  objc_copyWeak(&v21, &location);
  v12 = [(MRDTaskAssertion *)v9 initWithType:a3 pid:v10 bundleID:v11 name:v8 invalidationHandler:v20];

  if ([(MRDTaskAssertion *)v12 invalidateInDuration:a5])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017FB00;
    block[3] = &unk_1004C0138;
    objc_copyWeak(v19, &location);
    v19[1] = a3;
    v17 = v8;
    v19[2] = *&a5;
    v18 = v12;
    dispatch_async(serialQueue, block);

    objc_destroyWeak(v19);
  }

  v14 = [(MRDTaskAssertion *)v12 isValid];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v14;
}

- (BOOL)takeAssertionAndBlessForReason:(id)a3
{
  if ([(MRDMediaRemoteClient *)self takeAssertion:4 forReason:a3 duration:30.0])
  {
    v4 = [(MRDMediaRemoteClient *)self bundleIdentifier];
    v5 = sub_10019FC4C(v4);

    if (v5)
    {
      return 1;
    }

    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AC22C(self, v7);
    }
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AC1B4(self, v7);
    }
  }

  return 0;
}

- (void)takeCriticalSectionAssertionForRequestID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017FE64;
  block[3] = &unk_1004BBF10;
  objc_copyWeak(&v15, &location);
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)invalidateCriticalSectionAssertionForRequestID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001801FC;
  block[3] = &unk_1004B9630;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)sendRemoteControlCommand:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate now];
  v9 = [v6 playerPath];
  v62 = [v9 client];
  v10 = [v9 origin];
  v11 = [v10 isLocal];

  if (v11)
  {
    goto LABEL_36;
  }

  v12 = [v9 origin];
  v13 = [v12 isLocallyHosted];

  if (v13)
  {
    v14 = [v62 bundleIdentifier];
    v15 = [(MRDMediaRemoteClient *)self bundleIdentifier];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
LABEL_36:
      if (![v62 processIdentifier])
      {
        [v62 setProcessIdentifier:{-[MRDMediaRemoteClient pid](self, "pid")}];
      }
    }
  }

  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = sub_10003523C;
  v92 = sub_100035AD4;
  v93 = 0;
  v17 = [NSMutableString alloc];
  v18 = [v6 commandID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"sendRemoteControlCommand", v18];

  if (v9)
  {
    [(__CFString *)v19 appendFormat:@" for %@", v9];
  }

  v20 = _MRLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v95 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_100180DE8;
  v83[3] = &unk_1004C0188;
  v21 = v6;
  v84 = v21;
  v59 = v8;
  v85 = v59;
  v58 = v7;
  v86 = v58;
  v87 = &v88;
  v22 = objc_retainBlock(v83);
  v23 = [MRBlockGuard alloc];
  v24 = [v21 description];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_100181044;
  v81[3] = &unk_1004B6FE8;
  v25 = v22;
  v82 = v25;
  v26 = [v23 initWithTimeout:v24 reason:v81 handler:0.0];

  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_1001810C4;
  v78[3] = &unk_1004B78B0;
  v61 = v26;
  v79 = v61;
  v60 = v25;
  v80 = v60;
  v63 = objc_retainBlock(v78);
  if ([(MRDMediaRemoteClient *)self isMediaRemoteDaemon])
  {
    [(MRDMediaRemoteClient *)self _sendInProcessRemoteControlCommand:v21 withCompletionBlock:v63];
    goto LABEL_33;
  }

  [RBSProcessIdentifier identifierWithPid:[(MRDMediaRemoteClient *)self pid]];
  v55 = v77 = 0;
  v57 = [RBSProcessHandle handleForIdentifier:"handleForIdentifier:error:" error:?];
  v56 = 0;
  if (v57)
  {
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_100181128;
    v74[3] = &unk_1004C01D8;
    v75 = v57;
    v76 = v63;
    v27 = [RBSProcessMonitor monitorWithConfiguration:v74];
    v28 = v89[5];
    v89[5] = v27;

    v29 = v75;
  }

  else
  {
    v29 = [[NSString alloc] initWithFormat:@"Error fetching processHandle: %@", v56];
    v30 = _MRLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v21 commandID];
      *buf = 138543874;
      v95 = @"sendRemoteControlCommand";
      v96 = 2114;
      v97 = v31;
      v98 = 2112;
      v99 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v32 = [v9 origin];
  if ([v32 isLocallyHosted])
  {
    v33 = [v21 shouldImplicitlyLaunchApplication];

    if (!v33)
    {
      goto LABEL_23;
    }

    v34 = [(MRDMediaRemoteClient *)self bundleIdentifier];
    v35 = sub_10019FC4C(v34);

    if (!v35)
    {
      goto LABEL_23;
    }

    v32 = _MRLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v21 commandID];
      *buf = 138543362;
      v95 = v36;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Set AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute for command %{public}@", buf, 0xCu);
    }
  }

LABEL_23:
  v37 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v37, "MRXPC_MESSAGE_ID_KEY", 0x800000000000001uLL);
  xpc_dictionary_set_uint64(v37, "MRXPC_COMMAND_KEY", [v21 commandType]);
  v38 = [v21 optionsData];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
    xpc_dictionary_set_data(v37, "MRXPC_COMMAND_OPTIONS_KEY", [v39 bytes], objc_msgSend(v39, "length"));
  }

  MRAddPlayerPathToXPCMessage();
  objc_initWeak(buf, self);
  v41 = [v21 commandID];
  v42 = [NSString stringWithFormat:@"Sending remote control command %@", v41];

  v43 = [MRDTaskAssertion alloc];
  v44 = [(MRDMediaRemoteClient *)self pid];
  v45 = [(MRDMediaRemoteClient *)self bundleIdentifier];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100181354;
  v72[3] = &unk_1004C0110;
  objc_copyWeak(&v73, buf);
  v46 = [(MRDTaskAssertion *)v43 initWithType:1 pid:v44 bundleID:v45 name:v42 invalidationHandler:v72];

  v47 = [(MRDMediaRemoteClient *)self isEntitledFor:0x4000];
  v48 = 10.0;
  if (v47)
  {
    v48 = 30.0;
  }

  if ([(MRDTaskAssertion *)v46 invalidateInDuration:v48])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100181418;
    block[3] = &unk_1004B9630;
    objc_copyWeak(&v71, buf);
    v70 = v46;
    dispatch_async(serialQueue, block);

    objc_destroyWeak(&v71);
  }

  v50 = _MRLogForCategory();
  v51 = [v21 commandID];
  v52 = [v51 hash];

  if ((v52 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    *v68 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_BEGIN, v52, "SendCommandXPCToApp", "", v68, 2u);
  }

  kdebug_trace();
  v53 = [(MRXPCConnection *)self->_connection connection];
  workerQueue = self->_workerQueue;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10018146C;
  v64[3] = &unk_1004C0200;
  v65 = v21;
  v66 = self;
  v67 = v63;
  sub_10001FD5C(v53, v37, workerQueue, v64);

  objc_destroyWeak(&v73);
  objc_destroyWeak(buf);

LABEL_33:
  _Block_object_dispose(&v88, 8);
}

- (void)relayXPCMessage:(id)a3 andReply:(BOOL)a4 resultCallback:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  relayingMessages = self->_relayingMessages;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10018175C;
  v13[3] = &unk_1004C0228;
  objc_copyWeak(&v16, &location);
  v13[4] = self;
  v11 = v8;
  v14 = v11;
  v17 = a4;
  v12 = v9;
  v15 = v12;
  [(NSOperationQueue *)relayingMessages addOperationWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_relayXPCMessage:(id)a3 andReply:(BOOL)a4 resultCallback:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(MRXPCConnection *)self->_connection connection];

  if (v10)
  {
    uint64 = xpc_dictionary_get_uint64(v8, "MRXPC_MESSAGE_ID_KEY");
    if (uint64 == 0x700000000000002)
    {
      v12 = @"RequestPlaybackQueue";
    }

    else if (uint64 == 0x500000000000001)
    {
      v12 = @"BeginLoadingBrowsableContent";
    }

    else
    {
      v12 = [[NSString alloc] initWithFormat:@"%llu", uint64];
    }

    v24 = v12;
    v13 = [NSString stringWithFormat:@"Relaying XPC message %@ to client %@", v12, self];
    v14 = [MRDTaskAssertion alloc];
    v15 = [(MRDMediaRemoteClient *)self pid];
    v16 = [(MRDMediaRemoteClient *)self bundleIdentifier];
    v17 = [(MRDTaskAssertion *)v14 initWithType:2 pid:v15 bundleID:v16 name:v13];

    v18 = 10.0;
    if (v6)
    {
      v18 = 29.0;
    }

    if ([(MRDTaskAssertion *)v17 invalidateInDuration:v18])
    {
      serialQueue = self->_serialQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100181B64;
      block[3] = &unk_1004B68F0;
      block[4] = self;
      v33 = v17;
      dispatch_sync(serialQueue, block);
    }

    v20 = xpc_dictionary_create(0, 0, 0);
    sub_10001FCC8(v20, v8);
    objc_initWeak(&location, self);
    v21 = [(MRXPCConnection *)self->_connection connection];
    xpcQueue = self->_xpcQueue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100181CD0;
    v25[3] = &unk_1004C0250;
    v28 = v9;
    v30 = v6;
    v26 = v8;
    objc_copyWeak(&v29, &location);
    v23 = v17;
    v27 = v23;
    sub_10001FD5C(v21, v20, xpcQueue, v25);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else if (v6)
  {
    sub_10000BEE0(v8, "MRXPC_ERROR_CODE_KEY", 1, 4, 0);
  }
}

- (id)createNowPlayingClient
{
  v3 = [MRClient alloc];
  v4 = [(MRDMediaRemoteClient *)self pid];
  v5 = [(MRDMediaRemoteClient *)self bundleIdentifier];
  v6 = [v3 initWithProcessIdentifier:v4 bundleIdentifier:v5];

  return v6;
}

- (void)_handleXPCMessage:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_messageHandler);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_messageHandler);
    [v5 handleXPCMessage:v6 fromClient:self];
  }
}

- (void)_resumeConnection
{
  v3 = [(MRXPCConnection *)self->_connection connection];
  v4 = MRCreateXPCMessage();
  xpc_connection_send_message(v3, v4);

  v5 = +[MRDMediaRemoteServer server];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018206C;
  v6[3] = &unk_1004C0278;
  v6[4] = self;
  [v5 restoreClientState:self handler:v6];
}

- (void)_postNotification:(id)a3
{
  v12 = a3;
  v4 = [v12 userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  if ([(MRDMediaRemoteClient *)self isAllowedAccessToDataFromPlayerPath:v5])
  {
    v6 = [v12 userInfo];
    v7 = MRGetPlayerPathFromUserInfo();
    v8 = [(MRDMediaRemoteClient *)self notificationRequiresTaskAssertionForPlayerPath:v7];

    if (v8)
    {
      v9 = +[MRUserSettings currentSettings];
      [v9 wakingPlayerPathAssertionDuration];
      [(MRDMediaRemoteClient *)self takeAssertion:4 forReason:@"WakingPlayerPathNotification" duration:?];
    }

    v10 = [(MRXPCConnection *)self->_connection connection];
    v11 = [v12 xpcMessage];
    xpc_connection_send_message(v10, v11);
  }
}

- (void)_waitForNativeEndpointWithTimeout:(double)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[NSDate date];
  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];

  v9 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDMediaRemoteClient.waitForNativeEndpointWithTimeout", v8];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001828C4;
  v38[3] = &unk_1004B71F8;
  v11 = v8;
  v39 = v11;
  v12 = v6;
  v40 = v12;
  v13 = v5;
  v41 = v13;
  v14 = objc_retainBlock(v38);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = sub_10003523C;
  v45 = sub_100035AD4;
  v46 = 0;
  v15 = [MRBlockGuard alloc];
  v16 = qos_class_self();
  v17 = dispatch_get_global_queue(v16, 0);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001829C8;
  v35[3] = &unk_1004BE660;
  v18 = v14;
  v36 = v18;
  p_buf = &buf;
  v19 = [v15 initWithTimeout:@"MRDMediaRemoteClient.waitForNativeEndpointWithTimeout" reason:v17 queue:v35 handler:a3];

  v20 = +[NSNotificationCenter defaultCenter];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100182A38;
  v31[3] = &unk_1004C02A0;
  v21 = v19;
  v32 = v21;
  v22 = v18;
  v33 = v22;
  v34 = &buf;
  v23 = [v20 addObserverForName:@"MRDHostedRoutingControllerNativeEndpointDidChangeNotification" object:0 queue:0 usingBlock:v31];
  v24 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v23;

  v25 = +[MRDMediaRemoteServer server];
  v26 = [v25 routingServer];
  v27 = [v26 hostedRoutingService];
  v28 = [v27 hostedRoutingController];

  v29 = [v28 nativeEndpoint];
  LOBYTE(v25) = v29 == 0;

  if ((v25 & 1) == 0 && [v21 disarm])
  {
    v30 = +[NSNotificationCenter defaultCenter];
    [v30 removeObserver:*(*(&buf + 1) + 40)];

    v22[2](v22);
  }

  _Block_object_dispose(&buf, 8);
}

- (void)_sendInProcessRemoteControlCommand:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 playerPath];
  v9 = [v8 origin];
  if (![v9 isLocal])
  {
    goto LABEL_6;
  }

  v10 = +[MRUserSettings currentSettings];
  if (([v10 supportMultiplayerHost] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v11 = +[MRUserSettings currentSettings];
  v12 = [v11 homepodDemoMode];

  if (v12)
  {
LABEL_7:
    [v6 commandType];
    v16 = [v6 options];
    MRServiceClientRemoteCommandCallback();

    goto LABEL_8;
  }

  v13 = +[MRDSettings currentSettings];
  [v13 nativeEndpointWaitInterval];
  v15 = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100182C80;
  v17[3] = &unk_1004B8190;
  v20 = v7;
  v18 = v6;
  v19 = v8;
  [(MRDMediaRemoteClient *)self _waitForNativeEndpointWithTimeout:v17 completion:v15];

LABEL_8:
}

- (MRDXPCMessageHandling)messageHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_messageHandler);

  return WeakRetained;
}

@end