@interface MRDAVOutputContextExternalDevice
+ (id)_resolveReason:(id)reason uid:(id)uid name:(id)name requestID:(id)d;
+ (void)_createPlayerAndWaitForCanBeNowPlaying:(id)playing deviceInfo:(id)info completion:(id)completion;
+ (void)_createPlayerAndWaitForConnection:(id)connection command:(id)command deviceInfo:(id)info completion:(id)completion;
+ (void)_createPlayerForClient:(id)client playerPath:(id)path deviceInfo:(id)info completion:(id)completion;
+ (void)_reportStreamCountAnalytics;
+ (void)initialize;
+ (void)prewarm;
+ (void)prewarmApp:(id)app origin:(id)origin deviceInfo:(id)info;
+ (void)prewarmSoon;
- (BOOL)verifyCreatedPlayerPath:(id)path forClient:(id)client error:(id *)error;
- (MRAVOutputDevice)designatedGroupLeader;
- (MRDAVOutputContextExternalDevice)initWithOutputContext:(id)context;
- (NSString)debugDescription;
- (NSString)description;
- (id)_createResolvedPlayerPathFromPlayerPath:(id)path;
- (id)_generateDeviceInfoWithDesignatedGroupLeader:(id)leader outputContext:(id)context;
- (id)_resolveReason:(id)reason;
- (id)customOrigin;
- (id)deviceInfo;
- (id)dictionaryRepresentation;
- (id)lastConnectionError;
- (id)name;
- (id)outputDeviceForUID:(id)d error:(id *)error;
- (id)supportedMessages;
- (id)uid;
- (unsigned)connectionState;
- (void)_createPlayerAndWaitForCanBeNowPlaying:(id)playing completion:(id)completion;
- (void)_createPlayerAndWaitForConnection:(id)connection command:(id)command completion:(id)completion;
- (void)_handlePlaybackQueueRequest:(id)request forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionMigrateBeginRequest:(id)request forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionMigrateEndRequest:(id)request error:(id)error setPlaybackSessionCommandStatus:(id)status forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionMigratePostRequest:(id)request setPlaybackSessionCommandID:(id)d forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionMigrateRequest:(id)request request:(id)a4 forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionRequest:(id)request forPlayerPath:(id)path completion:(id)completion;
- (void)_handleRemoteCommand:(unsigned int)command withOptions:(id)options playerPath:(id)path completion:(id)completion;
- (void)_notifyActiveSessionMaybeWillBeHijackedByNativePlaybackFromOutputContextModification:(id)modification;
- (void)_onQueue_clearLocalOriginForwaderWithReason:(id)reason;
- (void)_onQueue_destroyPlayerPathsForOrigin:(id)origin;
- (void)_onQueue_forwardOriginToLocalOrigin:(id)origin;
- (void)_reevaluateDeviceInfo;
- (void)_sendMessageForPlayerPath:(id)path timeout:(double)timeout reason:(id)reason factory:(id)factory completion:(id)completion;
- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)anyDeviceInfoDidChangeNotification:(id)notification;
- (void)cleanUp;
- (void)clusterController:(id)controller clusterTypeDidChange:(unsigned int)change;
- (void)commitOutputDeviceToContextIfNeededWithDetails:(id)details completion:(id)completion;
- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
- (void)dealloc;
- (void)destroyPlayersForClient:(id)client origin:(id)origin;
- (void)disconnect:(id)disconnect;
- (void)localClusterTypeDidChangeNotification:(id)notification;
- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion;
- (void)muteOutputDeviceVolume:(BOOL)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)outputContextRequestToAddLocalOutputDeviceNotification:(id)notification;
- (void)ping:(double)ping callback:(id)callback withQueue:(id)queue;
- (void)registerForNotifications;
- (void)removeFromParentGroup:(id)group queue:(id)queue completion:(id)completion;
- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)requestMicrophoneConnectionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)sendMessageWithType:(unint64_t)type playerPath:(id)path timeout:(double)timeout reason:(id)reason factory:(id)factory completion:(id)completion;
- (void)setConnectionState:(unsigned int)state;
- (void)setDesignatedGroupLeader:(id)leader;
- (void)setDeviceInfo:(id)info;
- (void)setOrigin:(id)origin;
- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)updateDesignatedGroupLeader:(id)leader;
@end

@implementation MRDAVOutputContextExternalDevice

- (MRDAVOutputContextExternalDevice)initWithOutputContext:(id)context
{
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = MRDAVOutputContextExternalDevice;
  _init = [(MRDAVOutputContextExternalDevice *)&v22 _init];
  if (_init)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MRDAVOutputContextExternalDevice.serialQueue", v7);
    serialQueue = _init->_serialQueue;
    _init->_serialQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("MRDAVOutputContextExternalDevice.workerQueue", v10);
    workerQueue = _init->_workerQueue;
    _init->_workerQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("MRDAVOutputContextExternalDevice.notificationQueue", v13);
    notificationQueue = _init->_notificationQueue;
    _init->_notificationQueue = v14;

    objc_storeStrong(&_init->_outputContext, context);
    _init->_connectionState = 3;
    v16 = [[MROutputContextController alloc] initWithOutputContext:contextCopy];
    outputContextController = _init->_outputContextController;
    _init->_outputContextController = v16;

    [(MRDAVOutputContextExternalDevice *)_init registerForNotifications];
    v18 = +[MRAVClusterController sharedController];
    [v18 registerObserver:_init];

    v19 = MRLogCategoryConnections();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      outputContext = [(MRDAVOutputContextExternalDevice *)_init outputContext];
      *buf = 138543618;
      v24 = _init;
      v25 = 2114;
      v26 = outputContext;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating outputContextExternalDevice for outputContext %{public}@", buf, 0x16u);
    }
  }

  return _init;
}

- (void)dealloc
{
  serialQueue = self->_serialQueue;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10014B3AC;
  v8 = &unk_1004B6D08;
  selfCopy = self;
  msv_dispatch_sync_on_queue();
  v4.receiver = self;
  v4.super_class = MRDAVOutputContextExternalDevice;
  [(MRDAVOutputContextExternalDevice *)&v4 dealloc];
}

+ (void)initialize
{
  v3 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v3 supportMultiplayerHost];

  if (supportMultiplayerHost)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10014B4E4;
    v8[3] = &unk_1004B82A0;
    v8[4] = self;
    sub_10019FEE8(&_dispatch_main_q, v8);
    v5 = +[NSNotificationCenter defaultCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014B4EC;
    v7[3] = &unk_1004BED20;
    v7[4] = self;
    v6 = [v5 addObserverForName:kMRMediaRemotePlayerIsPlayingDidChangeNotification object:0 queue:0 usingBlock:v7];
  }
}

+ (void)prewarmSoon
{
  v3 = dispatch_time(0, 3000000000);
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014B6D4;
  block[3] = &unk_1004B82A0;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

+ (void)prewarm
{
  v3 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v4 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v4 nowPlayingServer];
  localOriginClient = [nowPlayingServer localOriginClient];
  v7 = [localOriginClient defaultSupportedCommandsDataForClient:v3];

  v8 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
  v9 = +[MRDMediaRemoteServer server];
  nowPlayingServer2 = [v9 nowPlayingServer];
  localOriginClient2 = [nowPlayingServer2 localOriginClient];
  v12 = [localOriginClient2 defaultSupportedCommandsDataForClient:v8];

  if (!v7 || !v12)
  {
    v13 = +[MRDAVOutputContextManager sharedManager];
    v14 = [v13 outputContextForOutputDeviceUID:@"PREWARM-DUMMY-DEVICE"];

    if (!v14)
    {
      [self prewarmSoon];
      goto LABEL_12;
    }

    v34 = v8;
    v15 = objc_alloc_init(MRDeviceInfo);
    [v15 setDeviceUID:@"PREWARM-DUMMY-DEVICE"];
    [v15 setName:@"PREWARM-DUMMY-DEVICE"];
    v16 = +[MRDMediaRemoteServer server];
    [v16 nowPlayingServer];
    v33 = v3;
    v18 = v17 = self;
    [v18 localOriginClient];
    v19 = v7;
    v21 = v20 = v14;
    deviceInfo = [v21 deviceInfo];
    identifier = [deviceInfo identifier];
    [v15 setIdentifier:identifier];

    v24 = v20;
    v7 = v19;

    self = v17;
    v3 = v33;

    contextID = [v24 contextID];
    [v15 setRoutingContextID:contextID];

    v26 = [MROrigin alloc];
    name = [v15 name];
    v28 = [v26 initWithIdentifier:1463898701 type:1 displayName:name];

    v29 = +[MRDMediaRemoteServer server];
    nowPlayingServer3 = [v29 nowPlayingServer];
    [nowPlayingServer3 registerOrigin:v28 deviceInfo:v15];

    if (!v19)
    {
      [self prewarmApp:v33 origin:v28 deviceInfo:v15];
    }

    v8 = v34;
    if (!v12)
    {
      v31 = +[MRUserSettings currentSettings];
      prewarmPodcasts = [v31 prewarmPodcasts];

      if (prewarmPodcasts)
      {
        [self prewarmApp:v34 origin:v28 deviceInfo:v15];
      }
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BA28;
  block[3] = &unk_1004B82A0;
  block[4] = self;
  if (qword_100529568 != -1)
  {
    dispatch_once(&qword_100529568, block);
  }

LABEL_12:
}

+ (void)prewarmApp:(id)app origin:(id)origin deviceInfo:(id)info
{
  appCopy = app;
  infoCopy = info;
  originCopy = origin;
  v11 = +[NSDate now];
  v12 = +[NSUUID UUID];
  uUIDString = [v12 UUIDString];

  v14 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"prewarmApp", uUIDString];
  v15 = v14;
  if (appCopy)
  {
    [v14 appendFormat:@" for %@", appCopy];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v17 = [[MRClient alloc] initWithBundleIdentifier:appCopy];
  v18 = [[MRPlayerPath alloc] initWithOrigin:originCopy client:v17 player:0];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10014BDB8;
  v22[3] = &unk_1004BED48;
  v23 = appCopy;
  v24 = @"prewarmApp";
  v25 = uUIDString;
  v26 = v11;
  v19 = v11;
  v20 = uUIDString;
  v21 = appCopy;
  [self _createPlayerAndWaitForCanBeNowPlaying:v18 deviceInfo:infoCopy completion:v22];
}

- (id)dictionaryRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000351BC;
  v10 = sub_100035A94;
  v11 = objc_alloc_init(NSMutableDictionary);
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

- (NSString)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000351BC;
  v9 = sub_100035A94;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (NSString)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000351BC;
  v9 = sub_100035A94;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)name
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000351BC;
  v9 = sub_100035A94;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)customOrigin
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000351BC;
  v9 = sub_100035A94;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)deviceInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000351BC;
  v9 = sub_100035A94;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (unsigned)connectionState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (void)setConnectionState:(unsigned int)state
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  serialQueue = self->_serialQueue;
  v17 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10014CE28;
  v12 = &unk_1004B8848;
  selfCopy = self;
  v14 = v16;
  stateCopy = state;
  msv_dispatch_sync_on_queue();
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014CE5C;
  v7[3] = &unk_1004B8848;
  stateCopy2 = state;
  v7[4] = self;
  v7[5] = v16;
  dispatch_async(notificationQueue, v7);
  _Block_object_dispose(v16, 8);
}

- (id)uid
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000351BC;
  v9 = sub_100035A94;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)updateDesignatedGroupLeader:(id)leader
{
  if (self->_disconnectionError)
  {
    v4 = MRLogCategoryConnections();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to updateDesignatedGroupLeader on previously disconnected device: %@", &v5, 0xCu);
    }
  }

  else
  {

    [(MRDAVOutputContextExternalDevice *)self setDesignatedGroupLeader:leader];
  }
}

- (void)setDeviceInfo:(id)info
{
  infoCopy = info;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000351BC;
  v30 = sub_100035A94;
  v31 = 0;
  serialQueue = self->_serialQueue;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10014D408;
  v22 = &unk_1004B7798;
  v25 = &v26;
  selfCopy = self;
  v6 = infoCopy;
  v24 = v6;
  msv_dispatch_sync_on_queue();
  routingContextID = [v6 routingContextID];

  if (routingContextID)
  {
    origin = [(MRDAVOutputContextExternalDevice *)self origin];
    if (origin)
    {
      v9 = +[MRDMediaRemoteServer server];
      nowPlayingServer = [v9 nowPlayingServer];
      [nowPlayingServer updateDeviceInfo:v6 origin:origin];
    }

    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014D460;
    block[3] = &unk_1004B7798;
    v18 = &v26;
    v16 = v6;
    selfCopy2 = self;
    dispatch_async(notificationQueue, block);
  }

  else
  {
    v12 = [NSError alloc];
    routingContextID2 = [v27[5] routingContextID];
    routingContextID3 = [v6 routingContextID];
    origin = [v12 initWithMRError:32 format:{@"Invalid routingContextID detected. From %@ to %@", routingContextID2, routingContextID3}];

    [(MRDAVOutputContextExternalDevice *)self disconnect:origin];
  }

  _Block_object_dispose(&v26, 8);
}

- (void)setOrigin:(id)origin
{
  originCopy = origin;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_origin)
  {
    [(MRDAVOutputContextExternalDevice *)self _onQueue_destroyPlayerPathsForOrigin:?];
    [(MRDAVOutputContextExternalDevice *)self _onQueue_clearLocalOriginForwaderWithReason:@"Clear Origin"];
    v6 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v6 nowPlayingServer];
    [nowPlayingServer unregisterOrigin:self->_origin];

    airplayPublisher = self->_airplayPublisher;
    self->_airplayPublisher = 0;
  }

  objc_storeStrong(&self->_origin, origin);
  if (originCopy)
  {
    objc_initWeak(location, self);
    v37[1] = _NSConcreteStackBlock;
    v37[2] = 3221225472;
    v37[3] = sub_10014DAF0;
    v37[4] = &unk_1004B8CC8;
    objc_copyWeak(&v38, location);
    MRMediaRemoteSetCommandHandler();
    origin = self->_origin;
    v36[1] = _NSConcreteStackBlock;
    v36[2] = 3221225472;
    v36[3] = sub_10014DC34;
    v36[4] = &unk_1004B8D18;
    objc_copyWeak(v37, location);
    MRMediaRemotePlaybackQueueDataSourceSetRequestCallback();
    v10 = self->_origin;
    v35[1] = _NSConcreteStackBlock;
    v35[2] = 3221225472;
    v35[3] = sub_10014DCEC;
    v35[4] = &unk_1004B8D68;
    objc_copyWeak(v36, location);
    MRMediaRemotePlaybackSessionSetRequestCallbackForOrigin();
    v11 = +[MRNowPlayingOriginClientManager sharedManager];
    v12 = [v11 originClientForOrigin:self->_origin];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10014DE20;
    v34[3] = &unk_1004B8DB8;
    objc_copyWeak(v35, location);
    [v12 setPlaybackSessionMigrateRequestCallback:v34];
    v13 = self->_origin;
    v32[1] = _NSConcreteStackBlock;
    v32[2] = 3221225472;
    v32[3] = sub_10014DF10;
    v32[4] = &unk_1004B8E08;
    objc_copyWeak(&v33, location);
    MRMediaRemotePlaybackSessionSetMigrateBeginCallbackForOrigin();
    v14 = self->_origin;
    v31[1] = _NSConcreteStackBlock;
    v31[2] = 3221225472;
    v31[3] = sub_10014DFF0;
    v31[4] = &unk_1004B8E58;
    objc_copyWeak(v32, location);
    MRMediaRemotePlaybackSessionSetMigrateFinalizeCallbackForOrigin();
    v15 = self->_origin;
    v30[1] = _NSConcreteStackBlock;
    v30[2] = 3221225472;
    v30[3] = sub_10014E100;
    v30[4] = &unk_1004B8EA8;
    objc_copyWeak(v31, location);
    MRMediaRemotePlaybackSessionSetMigratePostCallbackForOrigin();
    v16 = +[MRDMediaRemoteServer server];
    nowPlayingServer2 = [v16 nowPlayingServer];
    v18 = [nowPlayingServer2 originClientForOrigin:originCopy];

    if (_os_feature_enabled_impl())
    {
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_10014E1FC;
      v29 = &unk_1004BBE60;
      objc_copyWeak(v30, location);
      [v18 registerCreateNewApplicationConnectionCallback:&v26];
      objc_destroyWeak(v30);
    }

    else
    {
      [v18 registerCreateNewApplicationConnectionCallback:&stru_1004BED90];
    }

    v19 = [MRSharedSettings currentSettings:v26];
    supportAirPlayLeaderInfoSync = [v19 supportAirPlayLeaderInfoSync];

    if (supportAirPlayLeaderInfoSync)
    {
      v21 = [MRDAirPlayLeaderInfoPublisher alloc];
      v22 = self->_origin;
      outputContext = [(MRDAVOutputContextExternalDevice *)self outputContext];
      v24 = [(MRDAirPlayLeaderInfoPublisher *)v21 initWithOrigin:v22 outputContext:outputContext];
      v25 = self->_airplayPublisher;
      self->_airplayPublisher = v24;
    }

    if ([(MRAVOutputDevice *)self->_designatedGroupLeader isLocalDevice])
    {
      [(MRDAVOutputContextExternalDevice *)self _onQueue_forwardOriginToLocalOrigin:self->_origin];
    }

    objc_destroyWeak(v31);
    objc_destroyWeak(v32);
    objc_destroyWeak(&v33);
    objc_destroyWeak(v35);

    objc_destroyWeak(v36);
    objc_destroyWeak(v37);
    objc_destroyWeak(&v38);
    objc_destroyWeak(location);
  }
}

- (MRAVOutputDevice)designatedGroupLeader
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000351BC;
  v9 = sub_100035A94;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)setDesignatedGroupLeader:(id)leader
{
  leaderCopy = leader;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000351BC;
  v14 = sub_100035A94;
  v15 = 0;
  serialQueue = self->_serialQueue;
  v6 = leaderCopy;
  v9 = v6;
  msv_dispatch_sync_on_queue();
  if (*(v17 + 24) == 1 && [v6 isLocalDevice])
  {
    v20 = MRExternalDeviceConnectionReasonUserInfoKey;
    v21 = @"Automatic NativeEndpoint Connection";
    v7 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [(MRDAVOutputContextExternalDevice *)self connectWithOptions:0 userInfo:v7];
LABEL_6:

    goto LABEL_7;
  }

  if (!v6)
  {
    v8 = [NSError alloc];
    v7 = [v8 initWithMRError:32 format:{@"OutputContextExternalDevice does not have a designatedGroupLeader. (PreviousGroupLeader=%@)", v11[5], _NSConcreteStackBlock, 3221225472, sub_10014EA0C, &unk_1004BCD20, 0, self, &v16, &v10}];
    [(MRDAVOutputContextExternalDevice *)self disconnect:v7];
    goto LABEL_6;
  }

LABEL_7:

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
}

- (void)_handleRemoteCommand:(unsigned int)command withOptions:(id)options playerPath:(id)path completion:(id)completion
{
  optionsCopy = options;
  pathCopy = path;
  completionCopy = completion;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_1000351BC;
  v90 = sub_100035A94;
  v52 = optionsCopy;
  v91 = [optionsCopy copy];
  v11 = +[NSDate now];
  v12 = [v87[5] objectForKeyedSubscript:kMRMediaRemoteOptionCommandID];
  v13 = [NSString alloc];
  v14 = +[NSUUID UUID];
  uUIDString = [v14 UUIDString];
  v16 = [v13 initWithFormat:@"%@:%@", v12, uUIDString];

  client = [pathCopy client];
  bundleIdentifier = [client bundleIdentifier];
  v19 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
  v55 = [bundleIdentifier isEqualToString:v19];

  v20 = [[NSString alloc] initWithFormat:@"<%@:%p> %@ isAP=%{BOOL}u", objc_opt_class(), self, pathCopy, v55];
  v21 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDAVOutputContextExternalDevice.handleRemoteCommand", v12];
  v22 = v21;
  if (v20)
  {
    [v21 appendFormat:@" for %@", v20];
  }

  v23 = _MRLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v93 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_10014F450;
  v78[3] = &unk_1004BEDB8;
  v49 = v20;
  v79 = v49;
  v80 = @"MRDAVOutputContextExternalDevice.handleRemoteCommand";
  v53 = v12;
  v81 = v53;
  v48 = v11;
  v82 = v48;
  selfCopy = self;
  v54 = v16;
  v84 = v54;
  v47 = completionCopy;
  v85 = v47;
  v24 = objc_retainBlock(v78);
  v25 = [MRBlockGuard alloc];
  workerQueue = self->_workerQueue;
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10014F888;
  v76[3] = &unk_1004B6FE8;
  v27 = v24;
  v77 = v27;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10014F8F0;
  v73[3] = &unk_1004B78B0;
  v51 = [v25 initWithTimeout:@"MRDAVOutputContextExternalDevice.handleRemoteCommand" reason:workerQueue queue:v76 handler:120.0];
  v74 = v51;
  v50 = v27;
  v75 = v50;
  v28 = objc_retainBlock(v73);
  v29 = +[MRDMediaRemoteServer server];
  routingServer = [v29 routingServer];
  hostedRoutingService = [routingServer hostedRoutingService];
  hostedRoutingController = [hostedRoutingService hostedRoutingController];
  discoverySession = [hostedRoutingController discoverySession];
  localEndpointConnection = [discoverySession localEndpointConnection];

  if (localEndpointConnection)
  {
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10014F954;
    v66[3] = &unk_1004BEE08;
    v66[4] = self;
    v67 = v54;
    v35 = v28;
    v69 = v35;
    v70 = &v86;
    v36 = pathCopy;
    v68 = v36;
    commandCopy = command;
    v72 = v55;
    v37 = objc_retainBlock(v66);
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10014FFB4;
    v61[3] = &unk_1004BBA20;
    commandCopy2 = command;
    v62 = v36;
    v38 = v53;
    v63 = v38;
    v39 = v37;
    v64 = v39;
    v40 = objc_retainBlock(v61);
    v41 = +[MRDMediaRemoteServer server];
    routingServer2 = [v41 routingServer];
    airplayActive = [routingServer2 airplayActive];

    if (command == 132 || (v55 & airplayActive) == 1 && command != 122 && command != 133)
    {
      (v40[2])(v40);
    }

    else
    {
      v45 = [MRRequestDetails alloc];
      v46 = [v45 initWithInitiator:MRRequestDetailsInitiatorUnknownAPIUsage requestID:v38 reason:@"MRDAVOutputContextExternalDevice.handleRemoteCommand"];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_100150254;
      v58[3] = &unk_1004BAB78;
      v59 = v35;
      v60 = v40;
      [(MRDAVOutputContextExternalDevice *)self commitOutputDeviceToContextIfNeededWithDetails:v46 completion:v58];
    }
  }

  else
  {
    v44 = [[MRCommandResult alloc] initWithErrorCode:140];
    (v28[2])(v28, v44);
  }

  _Block_object_dispose(&v86, 8);
}

- (id)_createResolvedPlayerPathFromPlayerPath:(id)path
{
  pathCopy = path;
  v5 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v5 supportMultiplayerHost];

  v7 = pathCopy;
  if ((supportMultiplayerHost & 1) == 0)
  {
    v8 = [MRPlayerPath alloc];
    v9 = +[MROrigin localOrigin];
    client = [pathCopy client];
    player = [pathCopy player];
    v7 = [v8 initWithOrigin:v9 client:client player:player];
  }

  client2 = [pathCopy client];

  if (!client2)
  {
    v13 = [MRPlayerPath alloc];
    origin = [v7 origin];
    v15 = [MRClient alloc];
    v16 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    v17 = [v15 initWithBundleIdentifier:v16];
    v18 = [v13 initWithOrigin:origin client:v17 player:0];

    v7 = v18;
  }

  v19 = +[MRUserSettings currentSettings];
  homepodDemoMode = [v19 homepodDemoMode];

  if (homepodDemoMode)
  {
    v21 = [MRPlayerPath alloc];
    v22 = +[MROrigin localOrigin];
    client3 = [v7 client];
    player2 = [v7 player];
    v25 = [v21 initWithOrigin:v22 client:client3 player:player2];

    v7 = v25;
  }

  v26 = +[MRDMediaRemoteServer server];
  deviceInfo = [v26 deviceInfo];

  LOBYTE(v26) = [deviceInfo isAirPlayActive];
  client4 = [pathCopy client];
  bundleIdentifier = [client4 bundleIdentifier];
  v30 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
  v31 = [bundleIdentifier isEqualToString:v30];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100150860;
  v35[3] = &unk_1004BEE58;
  v36 = v26;
  v37 = v31;
  v35[4] = self;
  if (sub_100150860(v35))
  {
    v32 = +[MROrigin localOrigin];
    v33 = [v7 playerPathByRedirectingToOrigin:v32];

    v7 = v33;
  }

  return v7;
}

- (void)_createPlayerAndWaitForConnection:(id)connection command:(id)command completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  connectionCopy = connection;
  v11 = objc_opt_class();
  deviceInfo = [(MRDAVOutputContextExternalDevice *)self deviceInfo];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100150B2C;
  v14[3] = &unk_1004BEEA8;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [v11 _createPlayerAndWaitForConnection:connectionCopy command:commandCopy deviceInfo:deviceInfo completion:v14];
}

+ (void)_createPlayerAndWaitForConnection:(id)connection command:(id)command deviceInfo:(id)info completion:(id)completion
{
  connectionCopy = connection;
  commandCopy = command;
  infoCopy = info;
  completionCopy = completion;
  v13 = +[NSDate now];
  v14 = +[NSUUID UUID];
  uUIDString = [v14 UUIDString];

  v16 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"createPlayerAndWaitForConnection", uUIDString];
  v17 = v16;
  if (connectionCopy)
  {
    [v16 appendFormat:@" for %@", connectionCopy];
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v73 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v19 = _MRLogForCategory();
  v20 = [uUIDString hash];
  if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "createPlayerAndWaitForConnection", "", buf, 2u);
    }
  }

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1001512EC;
  v65[3] = &unk_1004BEED0;
  v22 = uUIDString;
  v66 = v22;
  v67 = @"createPlayerAndWaitForConnection";
  v52 = v13;
  v68 = v52;
  v51 = completionCopy;
  v69 = v51;
  v23 = objc_retainBlock(v65);
  v24 = [MRBlockGuard alloc];
  selfCopy = self;
  v25 = objc_opt_class();
  wHAIdentifier = [infoCopy WHAIdentifier];
  v54 = infoCopy;
  name = [infoCopy name];
  v28 = [v25 _resolveReason:@"createPlayerAndWaitForConnection" uid:wHAIdentifier name:name requestID:v22];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1001517F4;
  v63[3] = &unk_1004B6FE8;
  v29 = v23;
  v64 = v29;
  v30 = [v24 initWithTimeout:v28 reason:v63 handler:8.0];

  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10015180C;
  v60[3] = &unk_1004BAAB0;
  v31 = v30;
  v61 = v31;
  v32 = v29;
  v62 = v32;
  v33 = objc_retainBlock(v60);
  v34 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v34 nowPlayingServer];
  v36 = [nowPlayingServer queryExistingPlayerPath:connectionCopy];

  client = [connectionCopy client];
  bundleIdentifier = [client bundleIdentifier];
  v39 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
  v40 = [bundleIdentifier isEqualToString:v39];

  if (v40)
  {
    (v33[2])(v33, connectionCopy, 0);
    v41 = commandCopy;
    goto LABEL_19;
  }

  playerClient = [v36 playerClient];

  v41 = commandCopy;
  if (playerClient)
  {
    playerClient2 = [v36 playerClient];
    playerPath = [playerClient2 playerPath];
    (v33[2])(v33, playerPath, 0);

LABEL_12:
    goto LABEL_19;
  }

  client2 = [connectionCopy client];
  bundleIdentifier2 = [client2 bundleIdentifier];

  if (!bundleIdentifier2)
  {
    playerClient2 = [[NSError alloc] initWithMRError:35 format:{@"Could not find application in playerPath %@", connectionCopy}];
    (v33[2])(v33, 0, playerClient2);
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = kMRMediaRemoteOptionCommandType;
    v71 = commandCopy;
    v47 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  }

  else
  {
    v47 = 0;
  }

  client3 = [connectionCopy client];
  bundleIdentifier3 = [client3 bundleIdentifier];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100151884;
  v55[3] = &unk_1004BEEF8;
  v58 = v33;
  v56 = connectionCopy;
  v59 = selfCopy;
  v57 = v54;
  sub_10019E5FC(bundleIdentifier3, 0, v47, v55, 7.0);

LABEL_19:
}

- (void)_createPlayerAndWaitForCanBeNowPlaying:(id)playing completion:(id)completion
{
  completionCopy = completion;
  playingCopy = playing;
  v8 = objc_opt_class();
  deviceInfo = [(MRDAVOutputContextExternalDevice *)self deviceInfo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100151A48;
  v11[3] = &unk_1004BEEA8;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v8 _createPlayerAndWaitForCanBeNowPlaying:playingCopy deviceInfo:deviceInfo completion:v11];
}

+ (void)_createPlayerAndWaitForCanBeNowPlaying:(id)playing deviceInfo:(id)info completion:(id)completion
{
  playingCopy = playing;
  infoCopy = info;
  completionCopy = completion;
  v9 = +[NSDate now];
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];

  v12 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"createPlayerAndWaitForCanBeNowPlaying", uUIDString];
  v13 = v12;
  if (playingCopy)
  {
    [v12 appendFormat:@" for %@", playingCopy];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v15 = _MRLogForCategory();
  v16 = [uUIDString hash];
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "createPlayerAndWaitForCanBeNowPlaying", "", &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v52 = 0x3032000000;
  v53 = sub_1000351BC;
  v54 = sub_100035A94;
  v55 = 0;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100152178;
  v45[3] = &unk_1004BEF48;
  v17 = uUIDString;
  v46 = v17;
  v47 = @"createPlayerAndWaitForCanBeNowPlaying";
  v18 = v9;
  v48 = v18;
  v33 = completionCopy;
  v49 = v33;
  p_buf = &buf;
  v19 = objc_retainBlock(v45);
  v20 = [MRBlockGuard alloc];
  v21 = objc_opt_class();
  wHAIdentifier = [infoCopy WHAIdentifier];
  name = [infoCopy name];
  v24 = [v21 _resolveReason:@"createPlayerAndWaitForCanBeNowPlaying" uid:wHAIdentifier name:name requestID:v17];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100152658;
  v43[3] = &unk_1004B6FE8;
  v25 = v19;
  v44 = v25;
  v26 = [v20 initWithTimeout:v24 reason:v43 handler:8.0];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100152674;
  v40[3] = &unk_1004BEF70;
  v27 = v26;
  v41 = v27;
  v28 = v25;
  v42 = v28;
  v29 = objc_retainBlock(v40);
  v30 = objc_opt_class();
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100152708;
  v35[3] = &unk_1004BEFC0;
  v39 = &buf;
  v31 = v29;
  v38 = v31;
  v36 = @"createPlayerAndWaitForCanBeNowPlaying";
  v32 = v17;
  v37 = v32;
  [v30 _createPlayerAndWaitForConnection:playingCopy command:0 deviceInfo:infoCopy completion:v35];

  _Block_object_dispose(&buf, 8);
}

+ (void)_createPlayerForClient:(id)client playerPath:(id)path deviceInfo:(id)info completion:(id)completion
{
  pathCopy = path;
  infoCopy = info;
  completionCopy = completion;
  clientCopy = client;
  v13 = +[NSDate now];
  v14 = +[NSUUID UUID];
  uUIDString = [v14 UUIDString];

  v16 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"createPlayer", uUIDString];
  v17 = v16;
  if (pathCopy)
  {
    [v16 appendFormat:@" for %@", pathCopy];
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v19 = _MRLogForCategory();
  v20 = [uUIDString hash];
  if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "CreatePlayer", "", buf, 2u);
    }
  }

  v22 = +[NSThread currentThread];
  threadDictionary = [v22 threadDictionary];
  v24 = [threadDictionary objectForKeyedSubscript:@"migrateRequest"];

  if (v24)
  {
    v25 = [v24 startEvent:@"CreatePlayer" role:3];
    routingContextID = [infoCopy routingContextID];
    [v24 addEventInput:routingContextID withKey:@"routingContextID" toEventID:v25];
  }

  else
  {
    LODWORD(v25) = 0;
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100152E40;
  v38[3] = &unk_1004BEFE8;
  v39 = uUIDString;
  v40 = pathCopy;
  v41 = v13;
  v42 = v24;
  v44 = v25;
  v43 = completionCopy;
  v27 = completionCopy;
  v28 = v24;
  v29 = v13;
  v30 = pathCopy;
  v31 = uUIDString;
  v32 = objc_retainBlock(v38);
  [clientCopy takeAssertion:1 forReason:@"CreatePlayer" duration:30.0];
  v33 = MRCreateXPCMessage();
  MRAddDeviceInfoToXPCMessage();
  MRAddPlayerPathToXPCMessage();
  connection = [clientCopy connection];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001532F0;
  v36[3] = &unk_1004BF010;
  v37 = v32;
  v35 = v32;
  [connection sendMessage:v33 queue:&_dispatch_main_q reply:v36];
}

- (void)sendMessageWithType:(unint64_t)type playerPath:(id)path timeout:(double)timeout reason:(id)reason factory:(id)factory completion:(id)completion
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100153498;
  v18[3] = &unk_1004BF038;
  factoryCopy = factory;
  typeCopy = type;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015352C;
  v16[3] = &unk_1004BF010;
  completionCopy = completion;
  v14 = completionCopy;
  v15 = factoryCopy;
  [(MRDAVOutputContextExternalDevice *)self _sendMessageForPlayerPath:path timeout:reason reason:v18 factory:v16 completion:timeout];
}

- (void)_sendMessageForPlayerPath:(id)path timeout:(double)timeout reason:(id)reason factory:(id)factory completion:(id)completion
{
  reasonCopy = reason;
  factoryCopy = factory;
  completionCopy = completion;
  pathCopy = path;
  v16 = [MRBlockGuard alloc];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001537D0;
  v31[3] = &unk_1004B6FE8;
  v17 = completionCopy;
  v32 = v17;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001537E8;
  v28[3] = &unk_1004BF060;
  v29 = [v16 initWithTimeout:reasonCopy reason:v31 handler:timeout];
  v30 = v17;
  v18 = v17;
  v19 = v29;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100153860;
  v23[3] = &unk_1004BF088;
  v24 = reasonCopy;
  selfCopy = self;
  v26 = factoryCopy;
  v27 = objc_retainBlock(v28);
  v20 = v27;
  v21 = reasonCopy;
  v22 = factoryCopy;
  [(MRDAVOutputContextExternalDevice *)self _createPlayerAndWaitForCanBeNowPlaying:pathCopy completion:v23];
}

- (void)_handlePlaybackQueueRequest:(id)request forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  pathCopy = path;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100153C2C;
  v28[3] = &unk_1004BBDE8;
  completionCopy = completion;
  v29 = completionCopy;
  v11 = objc_retainBlock(v28);
  v12 = [MRBlockGuard alloc];
  v13 = [(MRDAVOutputContextExternalDevice *)self _resolveReason:@"_handlePlaybackQueueRequest"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100153C3C;
  v26[3] = &unk_1004B6FE8;
  v14 = v11;
  v27 = v14;
  v15 = [v12 initWithTimeout:v13 reason:v26 handler:7.0];

  v16 = +[MRDMediaRemoteServer server];
  client = [pathCopy client];
  v18 = [v16 clientForPID:{objc_msgSend(client, "processIdentifier")}];

  if (v18)
  {
    v19 = MRCreateXPCMessage();
    MRAddPlayerPathToXPCMessage();
    MRAddPlaybackQueueRequestToXPCMessage();
    v20 = [requestCopy description];
    [v18 takeAssertion:2 forReason:v20 duration:30.0];

    connection = [v18 connection];
    workerQueue = self->_workerQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100153C54;
    v23[3] = &unk_1004BF060;
    v24 = v15;
    v25 = v14;
    [connection sendMessage:v19 queue:workerQueue reply:v23];

LABEL_5:
    goto LABEL_6;
  }

  if ([v15 disarm])
  {
    v19 = [[NSError alloc] initWithMRError:4 format:{@"Could not find xpcClient for playerPath %@", pathCopy}];
    (v14[2])(v14, 0, v19);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_handlePlaybackSessionRequest:(id)request forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  pathCopy = path;
  completionCopy = completion;
  v11 = [(MRDAVOutputContextExternalDevice *)self _resolveReason:@"_handlePlaybackSessionRequest"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100153E4C;
  v17[3] = &unk_1004BF0B0;
  v18 = requestCopy;
  v19 = pathCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100153E90;
  v15[3] = &unk_1004BF0D8;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = pathCopy;
  v14 = requestCopy;
  [(MRDAVOutputContextExternalDevice *)self sendMessageWithType:0x200000000000030 playerPath:v13 timeout:v11 reason:v17 factory:v15 completion:30.0];
}

- (void)_handlePlaybackSessionMigrateRequest:(id)request request:(id)a4 forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  v11 = a4;
  pathCopy = path;
  completionCopy = completion;
  v14 = +[NSThread currentThread];
  threadDictionary = [v14 threadDictionary];
  [threadDictionary setObject:v11 forKeyedSubscript:@"migrateRequest"];

  v16 = [MRRequestDetails alloc];
  v17 = MRRequestDetailsInitiatorUnknownAPIUsage;
  requestID = [v11 requestID];
  v19 = [v16 initWithInitiator:v17 requestID:requestID reason:@"_handlePlaybackSessionMigrateRequest"];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10015404C;
  v24[3] = &unk_1004BF150;
  v28 = requestCopy;
  v29 = completionCopy;
  v25 = v11;
  v26 = pathCopy;
  selfCopy = self;
  v20 = requestCopy;
  v21 = pathCopy;
  v22 = v11;
  v23 = completionCopy;
  [(MRDAVOutputContextExternalDevice *)self commitOutputDeviceToContextIfNeededWithDetails:v19 completion:v24];
}

- (void)_handlePlaybackSessionMigrateBeginRequest:(id)request forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  pathCopy = path;
  v11 = [(MRDAVOutputContextExternalDevice *)self _resolveReason:@"_handlePlaybackSessionMigrateBeginRequest"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100154590;
  v16[3] = &unk_1004BF178;
  v17 = requestCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001545F8;
  v14[3] = &unk_1004BF0D8;
  v15 = completionCopy;
  v12 = completionCopy;
  v13 = requestCopy;
  [(MRDAVOutputContextExternalDevice *)self sendMessageWithType:0x400000000000008 playerPath:pathCopy timeout:v11 reason:v16 factory:v14 completion:30.0];
}

- (void)_handlePlaybackSessionMigrateEndRequest:(id)request error:(id)error setPlaybackSessionCommandStatus:(id)status forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  errorCopy = error;
  statusCopy = status;
  completionCopy = completion;
  pathCopy = path;
  v17 = [(MRDAVOutputContextExternalDevice *)self _resolveReason:@"_handlePlaybackSessionMigrateEndRequest"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001547A8;
  v24[3] = &unk_1004BF1A0;
  v25 = requestCopy;
  v26 = errorCopy;
  v27 = statusCopy;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100154814;
  v22[3] = &unk_1004BF0D8;
  v23 = completionCopy;
  v18 = completionCopy;
  v19 = statusCopy;
  v20 = errorCopy;
  v21 = requestCopy;
  [(MRDAVOutputContextExternalDevice *)self sendMessageWithType:0x400000000000009 playerPath:pathCopy timeout:v17 reason:v24 factory:v22 completion:30.0];
}

- (void)_handlePlaybackSessionMigratePostRequest:(id)request setPlaybackSessionCommandID:(id)d forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  dCopy = d;
  pathCopy = path;
  completionCopy = completion;
  v14 = [(MRDAVOutputContextExternalDevice *)self _resolveReason:@"_handlePlaybackSessionMigratePostRequest"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001549AC;
  v21[3] = &unk_1004BF1A0;
  v22 = requestCopy;
  v23 = pathCopy;
  v24 = dCopy;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001549F4;
  v19[3] = &unk_1004BF0D8;
  v20 = completionCopy;
  v15 = completionCopy;
  v16 = dCopy;
  v17 = pathCopy;
  v18 = requestCopy;
  [(MRDAVOutputContextExternalDevice *)self sendMessageWithType:0x40000000000000ALL playerPath:v17 timeout:v14 reason:v21 factory:v19 completion:30.0];
}

- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v16 = +[NSDate now];
  designatedGroupLeader = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  v18 = [NSString alloc];
  v19 = objc_opt_class();
  v38 = designatedGroupLeader;
  debugName = [designatedGroupLeader debugName];
  v21 = [v18 initWithFormat:@"%@:%p-%@>", v19, self, debugName];

  v22 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v24 = [v22 initWithFormat:@"%@<%@>", @"OutputContextExtenalDevice.setOutputDeviceVolume", requestID];

  if (v21)
  {
    [v24 appendFormat:@" for %@", v21];
  }

  v25 = _MRLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v56 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100154E14;
  v47[3] = &unk_1004BF1C8;
  volumeCopy = volume;
  v37 = v21;
  v48 = v37;
  v49 = @"OutputContextExtenalDevice.setOutputDeviceVolume";
  v26 = detailsCopy;
  v50 = v26;
  v27 = v16;
  v51 = v27;
  v28 = queueCopy;
  v52 = v28;
  v29 = completionCopy;
  v53 = v29;
  v30 = objc_retainBlock(v47);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100155284;
  v42[3] = &unk_1004BC028;
  v42[4] = self;
  volumeCopy2 = volume;
  v31 = dCopy;
  v43 = v31;
  v32 = v26;
  v44 = v32;
  v33 = v30;
  v45 = v33;
  v34 = objc_retainBlock(v42);
  outputDeviceUIDs = [(MRAVConcreteOutputContext *)self->_outputContext outputDeviceUIDs];
  v36 = [outputDeviceUIDs count];

  if (v36 || ![(MRAVOutputDevice *)self->_designatedGroupLeader isLocalDevice])
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1001552F8;
    v39[3] = &unk_1004BAB78;
    v40 = v33;
    v41 = v34;
    [(MRDAVOutputContextExternalDevice *)self commitOutputDeviceToContextIfNeededWithDetails:v32 completion:v39];
  }

  else
  {
    (v34[2])(v34);
  }
}

- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v14 = +[NSDate now];
  designatedGroupLeader = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  v16 = [NSString alloc];
  v17 = objc_opt_class();
  v38 = designatedGroupLeader;
  debugName = [designatedGroupLeader debugName];
  v19 = [v16 initWithFormat:@"%@:%p-%@>", v17, self, debugName];

  v20 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v22 = [v20 initWithFormat:@"%@<%@>", @"OutputContextExtenalDevice.adjustOutputDeviceVolume", requestID];

  if (v19)
  {
    [v22 appendFormat:@" for %@", v19];
  }

  v23 = _MRLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v56 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10015572C;
  v47[3] = &unk_1004BF1F0;
  volumeCopy = volume;
  v36 = v19;
  v48 = v36;
  v49 = @"OutputContextExtenalDevice.adjustOutputDeviceVolume";
  v24 = detailsCopy;
  v50 = v24;
  v25 = v14;
  v51 = v25;
  v26 = queueCopy;
  v52 = v26;
  v27 = completionCopy;
  v53 = v27;
  v28 = objc_retainBlock(v47);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100155B94;
  v42[3] = &unk_1004BF218;
  v42[4] = self;
  volumeCopy2 = volume;
  v29 = dCopy;
  v43 = v29;
  v30 = v24;
  v44 = v30;
  v31 = v28;
  v45 = v31;
  v32 = objc_retainBlock(v42);
  outputDeviceUIDs = [(MRAVConcreteOutputContext *)self->_outputContext outputDeviceUIDs];
  v34 = [outputDeviceUIDs count];

  if (v34 || ![(MRAVOutputDevice *)self->_designatedGroupLeader isLocalDevice])
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100155C08;
    v39[3] = &unk_1004BAB78;
    v40 = v31;
    v41 = v32;
    [(MRDAVOutputContextExternalDevice *)self commitOutputDeviceToContextIfNeededWithDetails:v30 completion:v39];
  }

  else
  {
    (v32[2])(v32);
  }
}

- (void)muteOutputDeviceVolume:(BOOL)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v14 = +[NSDate now];
  designatedGroupLeader = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  v16 = [NSString alloc];
  v17 = objc_opt_class();
  v38 = designatedGroupLeader;
  debugName = [designatedGroupLeader debugName];
  v19 = [v16 initWithFormat:@"%@:%p-%@>", v17, self, debugName];

  v20 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v22 = [v20 initWithFormat:@"%@<%@>", @"OutputContextExtenalDevice.muteOutputDeviceVolume", requestID];

  if (v19)
  {
    [v22 appendFormat:@" for %@", v19];
  }

  v23 = _MRLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v56 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10015603C;
  v47[3] = &unk_1004BF240;
  volumeCopy = volume;
  v36 = v19;
  v48 = v36;
  v49 = @"OutputContextExtenalDevice.muteOutputDeviceVolume";
  v24 = detailsCopy;
  v50 = v24;
  v25 = v14;
  v51 = v25;
  v26 = queueCopy;
  v52 = v26;
  v27 = completionCopy;
  v53 = v27;
  v28 = objc_retainBlock(v47);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1001564AC;
  v42[3] = &unk_1004BF268;
  v42[4] = self;
  volumeCopy2 = volume;
  v29 = dCopy;
  v43 = v29;
  v30 = v24;
  v44 = v30;
  v31 = v28;
  v45 = v31;
  v32 = objc_retainBlock(v42);
  outputDeviceUIDs = [(MRAVConcreteOutputContext *)self->_outputContext outputDeviceUIDs];
  v34 = [outputDeviceUIDs count];

  if (v34 || ![(MRAVOutputDevice *)self->_designatedGroupLeader isLocalDevice])
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100156520;
    v39[3] = &unk_1004BAB78;
    v40 = v31;
    v41 = v32;
    [(MRDAVOutputContextExternalDevice *)self commitOutputDeviceToContextIfNeededWithDetails:v30 completion:v39];
  }

  else
  {
    (v32[2])(v32);
  }
}

- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  requestDetails = [requestCopy requestDetails];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100156648;
  v15[3] = &unk_1004BF290;
  v15[4] = self;
  v16 = requestCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = queueCopy;
  v13 = requestCopy;
  v14 = completionCopy;
  [(MRDAVOutputContextExternalDevice *)self commitOutputDeviceToContextIfNeededWithDetails:requestDetails completion:v15];
}

- (void)ping:(double)ping callback:(id)callback withQueue:(id)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100156764;
  block[3] = &unk_1004B79A0;
  callbackCopy = callback;
  v6 = callbackCopy;
  dispatch_sync(queue, block);
}

- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v8 = +[NSDate now];
  deviceInfo = [(MRDAVOutputContextExternalDevice *)self deviceInfo];
  v10 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v11 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];

  v12 = [NSString alloc];
  v13 = objc_opt_class();
  wHAIdentifier = [deviceInfo WHAIdentifier];
  name = [deviceInfo name];
  v16 = [v12 initWithFormat:@"%@:%p-%@:%@", v13, self, wHAIdentifier, name];

  v17 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"OutputContextExternalDevice.connectWithOptions", v10];
  v18 = v17;
  if (v16)
  {
    [v17 appendFormat:@" for %@", v16];
  }

  if (v11)
  {
    [v18 appendFormat:@" because %@", v11];
  }

  v37 = v11;
  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v52 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v20 = qos_class_self();
  v21 = [[NSString alloc] initWithFormat:@"com.apple.mediaremote.outputContextExternalDevice.connect.%@", v10];
  uTF8String = [v21 UTF8String];
  v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v24 = dispatch_queue_attr_make_with_qos_class(v23, v20, 0);
  v25 = dispatch_queue_create_with_target_V2(uTF8String, v24, self->_notificationQueue);

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100156B84;
  v43[3] = &unk_1004BF2B8;
  v50 = v20;
  v44 = @"OutputContextExternalDevice.connectWithOptions";
  v26 = v10;
  v45 = v26;
  v46 = v16;
  v48 = v25;
  v49 = completionCopy;
  v47 = v8;
  v27 = v25;
  v28 = completionCopy;
  v29 = v8;
  v30 = v16;
  v31 = objc_retainBlock(v43);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100156F24;
  block[3] = &unk_1004BAAD8;
  v41 = deviceInfo;
  v42 = v31;
  block[4] = self;
  v39 = @"OutputContextExternalDevice.connectWithOptions";
  v40 = v26;
  v33 = deviceInfo;
  v34 = v26;
  v35 = v31;
  dispatch_sync(serialQueue, block);
}

- (id)_generateDeviceInfoWithDesignatedGroupLeader:(id)leader outputContext:(id)context
{
  leaderCopy = leader;
  contextCopy = context;
  v7 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v7 nowPlayingServer];
  localOriginClient = [nowPlayingServer localOriginClient];
  deviceInfo = [localOriginClient deviceInfo];

  if ([leaderCopy isLocalDevice])
  {
    v11 = deviceInfo;
  }

  else
  {
    v11 = [[MRDeviceInfo alloc] initWithOutputDevice:leaderCopy];
    outputDevices = [contextCopy outputDevices];
    firstObject = [outputDevices firstObject];
    groupID = [firstObject groupID];
    if (groupID)
    {
      [v11 setGroupUID:groupID];
    }

    else
    {
      groupID2 = [leaderCopy groupID];
      [v11 setGroupUID:groupID2];
    }

    [v11 setAirPlayActive:1];
    [v11 setProxyGroupPlayer:1];
    [v11 setSupportsOutputContextSync:{objc_msgSend(deviceInfo, "supportsOutputContextSync")}];
    identifier = [deviceInfo identifier];
    [v11 setIdentifier:identifier];

    systemMediaApplication = [deviceInfo systemMediaApplication];
    [v11 setSystemMediaApplication:systemMediaApplication];

    systemPodcastApplication = [deviceInfo systemPodcastApplication];
    [v11 setSystemPodcastApplication:systemPodcastApplication];

    systemBooksApplication = [deviceInfo systemBooksApplication];
    [v11 setSystemBooksApplication:systemBooksApplication];

    [v11 setSupportsSharedQueue:{objc_msgSend(deviceInfo, "supportsSharedQueue")}];
    [v11 setSharedQueueVersion:{objc_msgSend(deviceInfo, "sharedQueueVersion")}];
    [v11 setSupportsMultiplayer:{objc_msgSend(deviceInfo, "supportsMultiplayer")}];
    buildVersion = [deviceInfo buildVersion];
    [v11 setBuildVersion:buildVersion];

    [v11 setProtocolVersion:{objc_msgSend(deviceInfo, "protocolVersion")}];
    computerName = [deviceInfo computerName];
    [v11 setComputerName:computerName];

    [v11 setDeviceClass:{objc_msgSend(deviceInfo, "deviceClass")}];
  }

  outputDevices2 = [contextCopy outputDevices];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100157664;
  v27[3] = &unk_1004B9AF8;
  v28 = leaderCopy;
  v23 = leaderCopy;
  v24 = [outputDevices2 msv_compactMap:v27];

  [v11 setGroupedDevices:v24];
  [v11 setGroupLogicalDeviceCount:{objc_msgSend(v24, "count")}];
  contextID = [contextCopy contextID];
  [v11 setRoutingContextID:contextID];

  return v11;
}

- (void)disconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ disconnecting with error %{public}@", buf, 0x16u);
  }

  serialQueue = self->_serialQueue;
  v7 = disconnectCopy;
  msv_dispatch_sync_on_queue();
}

- (void)removeFromParentGroup:(id)group queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v7 = [[NSError alloc] initWithMRError:3];
  (*(completion + 2))(completionCopy, v7);
}

- (void)requestMicrophoneConnectionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001579C0;
  block[3] = &unk_1004B79A0;
  completionCopy = completion;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100157AE0;
  v9[3] = &unk_1004BF2E0;
  completionCopy = completion;
  v8 = completionCopy;
  [MRDCreateEndpointRequest createEndpointWithOutputDeviceUIDs:ds timeout:details details:v9 groupUIDCompletion:30.0];
}

- (id)supportedMessages
{
  v2 = [[MRSupportedProtocolMessages alloc] initWithLastSupportedMessageType:139];

  return v2;
}

- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100157CEC;
  v17 = &unk_1004BAD10;
  v8 = queueCopy;
  v18 = v8;
  v9 = completionCopy;
  v19 = v9;
  v10 = objc_retainBlock(&v14);
  v11 = [MRDMediaRemoteServer server:v14];
  groupSessionServer = [v11 groupSessionServer];

  if (groupSessionServer)
  {
    [groupSessionServer requestGroupSessionWithCompletion:v10];
  }

  else
  {
    v13 = [[NSError alloc] initWithMRError:6 description:@"Feature not enabled"];
    (v10[2])(v10, 0, v13);
  }
}

- (id)lastConnectionError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000351BC;
  v10 = sub_100035A94;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100157EE8;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)registerForNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"outputContextDataSourceOutputDevicesDidChangeNotification:" name:MROutputContextDataSourceDidReloadNotification object:self->_outputContextController];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"outputContextRequestToAddLocalOutputDeviceNotification:" name:MRAVOutputContextModificationRequestToAddLocalDeviceNotification object:self->_outputContext];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"anyDeviceInfoDidChangeNotification:" name:kMRDeviceInfoDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"localClusterTypeDidChangeNotification:" name:@"MRDAVOutputContextExternalDeviceDiscoveryLocalClusterTypeDidChangeNotification" object:0];
}

- (void)outputContextRequestToAddLocalOutputDeviceNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:MRAVOutputContextModificationInitiatorUserInfoKey];

  if (([v5 isEqualToString:@"Prewarm"] & 1) == 0)
  {
    [(MRDAVOutputContextExternalDevice *)self _notifyActiveSessionMaybeWillBeHijackedByNativePlaybackFromOutputContextModification:notificationCopy];
  }
}

- (void)_notifyActiveSessionMaybeWillBeHijackedByNativePlaybackFromOutputContextModification:(id)modification
{
  modificationCopy = modification;
  v9 = objc_alloc_init(NSMutableDictionary);
  userInfo = [modificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:MRAVOutputContextModificationIdentifierUserInfoKey];
  [v9 setObject:v5 forKeyedSubscript:kMRMediaRemoteOptionCommandID];

  userInfo2 = [modificationCopy userInfo];
  v7 = [userInfo2 objectForKeyedSubscript:MRAVOutputContextModificationInitiatorUserInfoKey];
  [v9 setObject:v7 forKeyedSubscript:kMRMediaRemoteOptionSenderID];

  name = [modificationCopy name];

  [v9 setObject:name forKeyedSubscript:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];
  [objc_opt_class() _sendCommandPreview:0 options:v9 playerPath:0];
}

- (void)anyDeviceInfoDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isLocal])
  {
    [(MRDAVOutputContextExternalDevice *)self _reevaluateDeviceInfo];
  }
}

- (void)localClusterTypeDidChangeNotification:(id)notification
{
  object = [notification object];
  if (object != self)
  {
    v7 = object;
    designatedGroupLeader = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
    isLocalDevice = [designatedGroupLeader isLocalDevice];

    if (!isLocalDevice)
    {
      return;
    }

    v8 = [[NSError alloc] initWithMRError:32 format:@"Local device changed clusterType in discovery"];
    [(MRDAVOutputContextExternalDevice *)self disconnect:v8];
    object = v8;
  }
}

- (void)clusterController:(id)controller clusterTypeDidChange:(unsigned int)change
{
  designatedGroupLeader = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  isLocalDevice = [designatedGroupLeader isLocalDevice];

  if (isLocalDevice)
  {
    v8 = MRLogCategoryConnections();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 1024;
      changeCopy = change;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Local device changed clusterType to: %u", buf, 0x12u);
    }

    v9 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001584C0;
    v12[3] = &unk_1004BF320;
    changeCopy2 = change;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100158540;
    v10[3] = &unk_1004BF348;
    v10[4] = self;
    changeCopy3 = change;
    [v9 searchEndpointsWithPredicate:v12 timeout:@"clusterTypeDidChange" reason:0 queue:v10 completion:30.0];
  }
}

- (void)_reevaluateDeviceInfo
{
  designatedGroupLeader = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  outputContext = [(MRDAVOutputContextExternalDevice *)self outputContext];
  v4 = [(MRDAVOutputContextExternalDevice *)self _generateDeviceInfoWithDesignatedGroupLeader:designatedGroupLeader outputContext:outputContext];
  [(MRDAVOutputContextExternalDevice *)self setDeviceInfo:v4];
}

- (void)cleanUp
{
  dispatch_assert_queue_V2(self->_serialQueue);
  designatedGroupLeader = self->_designatedGroupLeader;
  self->_designatedGroupLeader = 0;

  [(MRDAVOutputContextExternalDevice *)self setOrigin:0];
}

- (id)outputDeviceForUID:(id)d error:(id *)error
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000351BC;
  v19 = sub_100035A94;
  v20 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100158904;
  block[3] = &unk_1004B7798;
  v14 = &v15;
  block[4] = self;
  v8 = dCopy;
  v13 = v8;
  dispatch_sync(serialQueue, block);
  v9 = v16[5];
  if (error && !v9)
  {
    *error = [[NSError alloc] initWithMRError:39];
    v9 = v16[5];
  }

  v10 = v9;

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)commitOutputDeviceToContextIfNeededWithDetails:(id)details completion:(id)completion
{
  detailsCopy = details;
  completionCopy = completion;
  v8 = +[NSDate now];
  v9 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v11 = [v9 initWithFormat:@"%@<%@>", @"commitOutputDeviceToContextIfNeededWithDetails", requestID];

  if (self)
  {
    [v11 appendFormat:@" for %@", self];
  }

  reason = [detailsCopy reason];

  if (reason)
  {
    reason2 = [detailsCopy reason];
    [v11 appendFormat:@" because %@", reason2];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100158C8C;
  v27[3] = &unk_1004B7810;
  v27[4] = self;
  v28 = @"commitOutputDeviceToContextIfNeededWithDetails";
  v15 = detailsCopy;
  v29 = v15;
  v30 = v8;
  v16 = v8;
  v17 = objc_retainBlock(v27);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001590C4;
  block[3] = &unk_1004BF398;
  block[4] = self;
  v23 = @"commitOutputDeviceToContextIfNeededWithDetails";
  v24 = v15;
  v25 = v17;
  v26 = completionCopy;
  v19 = completionCopy;
  v20 = v17;
  v21 = v15;
  dispatch_sync(serialQueue, block);
}

- (void)_onQueue_forwardOriginToLocalOrigin:(id)origin
{
  originCopy = origin;
  if (self->_origin && !self->_originForwarder)
  {
    v5 = MRLogCategoryConnections();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[MROrigin localOrigin];
      outputContext = [(MRDAVOutputContextExternalDevice *)self outputContext];
      v12 = 138544130;
      selfCopy = self;
      v14 = 2114;
      v15 = originCopy;
      v16 = 2114;
      v17 = v6;
      v18 = 2114;
      v19 = outputContext;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Begin Forwarding Origin Data from %{public}@ to %{public}@ for outputContext %{public}@", &v12, 0x2Au);
    }

    v8 = [MRDOriginForwarder alloc];
    v9 = +[MROrigin localOrigin];
    v10 = [(MRDOriginForwarder *)v8 initWithOrigin:originCopy destinationOrigin:v9];
    originForwarder = self->_originForwarder;
    self->_originForwarder = v10;
  }
}

- (void)_onQueue_clearLocalOriginForwaderWithReason:(id)reason
{
  reasonCopy = reason;
  if (self->_originForwarder)
  {
    v5 = MRLogCategoryConnections();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v72 = 2112;
      v73 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Begin clearing all localOrigin nowPlayingData because %@", buf, 0x16u);
    }

    selfCopy2 = self;
    v52 = reasonCopy;

    v6 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
    v7 = +[MRNowPlayingOriginClientManager sharedManager];
    v8 = +[MROrigin localOrigin];
    v9 = [v7 originClientForOrigin:v8];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v54 = v9;
    nowPlayingClients = [v9 nowPlayingClients];
    v11 = [nowPlayingClients countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v64;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v64 != v13)
          {
            objc_enumerationMutation(nowPlayingClients);
          }

          v15 = *(*(&v63 + 1) + 8 * i);
          client = [v15 client];
          bundleIdentifier = [client bundleIdentifier];
          v18 = [bundleIdentifier isEqualToString:v6];

          if ((v18 & 1) == 0)
          {
            playerPath = [v15 playerPath];
            [v54 removeClient:playerPath];
          }
        }

        v12 = [nowPlayingClients countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v12);
    }

    v20 = +[MRNowPlayingOriginClientManager sharedManager];
    v21 = +[MRPlayerPath localPlayerPath];
    v22 = [v20 existingOriginClientRequestsForPlayerPath:v21];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v53 = v22;
    nowPlayingClientRequests = [v22 nowPlayingClientRequests];
    v24 = [nowPlayingClientRequests countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v60;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v60 != v26)
          {
            objc_enumerationMutation(nowPlayingClientRequests);
          }

          v28 = *(*(&v59 + 1) + 8 * j);
          client2 = [v28 client];
          bundleIdentifier2 = [client2 bundleIdentifier];
          v31 = [bundleIdentifier2 isEqualToString:v6];

          if ((v31 & 1) == 0)
          {
            v32 = [MRPlayerPath alloc];
            v33 = +[MROrigin anyOrigin];
            client3 = [v28 client];
            v35 = [v32 initWithOrigin:v33 client:client3 player:0];

            [v53 removeClient:v35];
          }
        }

        v25 = [nowPlayingClientRequests countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v25);
    }

    v36 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v36 nowPlayingServer];
    localOriginClient = [nowPlayingServer localOriginClient];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    nowPlayingClients2 = [localOriginClient nowPlayingClients];
    v40 = [nowPlayingClients2 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v56;
      do
      {
        for (k = 0; k != v41; k = k + 1)
        {
          if (*v56 != v42)
          {
            objc_enumerationMutation(nowPlayingClients2);
          }

          v44 = *(*(&v55 + 1) + 8 * k);
          client4 = [v44 client];
          bundleIdentifier3 = [client4 bundleIdentifier];
          v47 = [bundleIdentifier3 isEqualToString:v6];

          if ((v47 & 1) == 0)
          {
            client5 = [v44 client];
            [localOriginClient removeNowPlayingClientForClient:client5];
          }
        }

        v41 = [nowPlayingClients2 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v41);
    }

    v49 = MRLogCategoryConnections();
    reasonCopy = v52;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = selfCopy2;
      v72 = 2112;
      v73 = v52;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ End clearing all localOrigin nowPlayingData because %@", buf, 0x16u);
    }

    originForwarder = selfCopy2->_originForwarder;
    selfCopy2->_originForwarder = 0;
  }
}

- (id)_resolveReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_class();
  v6 = [(MRDAVOutputContextExternalDevice *)self uid];
  name = [(MRDAVOutputContextExternalDevice *)self name];
  v8 = [v5 _resolveReason:reasonCopy uid:v6 name:name requestID:0];

  return v8;
}

+ (id)_resolveReason:(id)reason uid:(id)uid name:(id)name requestID:(id)d
{
  dCopy = d;
  nameCopy = name;
  uidCopy = uid;
  reasonCopy = reason;
  dCopy = [[NSString alloc] initWithFormat:@"OutputContextExternalDevice-%@-%@:%@<%@>", uidCopy, nameCopy, reasonCopy, dCopy];

  return dCopy;
}

- (void)_onQueue_destroyPlayerPathsForOrigin:(id)origin
{
  originCopy = origin;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v31 = 2114;
    v32 = originCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Destroying playerPaths for origin: %{public}@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = +[MRDMediaRemoteServer server];
  allClients = [v6 allClients];

  v8 = [allClients countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(allClients);
        }

        [(MRDAVOutputContextExternalDevice *)self destroyPlayersForClient:*(*(&v24 + 1) + 8 * i) origin:originCopy];
      }

      v9 = [allClients countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if ([(NSMutableDictionary *)self->_pendingCommandCompletions count])
  {
    allValues = [(NSMutableDictionary *)self->_pendingCommandCompletions allValues];
    v13 = [allValues copy];

    [(NSMutableDictionary *)self->_pendingCommandCompletions removeAllObjects];
    disconnectionError = self->_disconnectionError;
    if (disconnectionError)
    {
      v15 = [(NSError *)disconnectionError mr_errorByEnvelopingWithMRError:136];
    }

    else
    {
      v16 = [[NSError alloc] initWithMRError:105];
      v15 = [v16 mr_errorByEnvelopingWithMRError:136];
    }

    v17 = [[MRCommandResult alloc] initWithError:v15];
    workerQueue = self->_workerQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10015A240;
    v21[3] = &unk_1004B68F0;
    v22 = v13;
    v23 = v17;
    v19 = v17;
    v20 = v13;
    dispatch_async(workerQueue, v21);
  }
}

- (void)destroyPlayersForClient:(id)client origin:(id)origin
{
  originCopy = origin;
  clientCopy = client;
  v8 = MRCreateXPCMessage();
  MRAddOriginToXPCMessage();

  connection = [clientCopy connection];

  [connection sendMessage:v8 queue:0 reply:0];
}

- (BOOL)verifyCreatedPlayerPath:(id)path forClient:(id)client error:(id *)error
{
  pathCopy = path;
  clientCopy = client;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000351BC;
  v26 = sub_100035A94;
  v27 = 0;
  serialQueue = self->_serialQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10015A644;
  v21[3] = &unk_1004B6D30;
  v21[4] = self;
  v21[5] = &v22;
  dispatch_sync(serialQueue, v21);
  v11 = v23[5];
  origin = [pathCopy origin];
  v13 = v11;
  v14 = origin;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_8;
  }

  v16 = [v13 isEqual:v14];

  if (v16)
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v17 = MRLogCategoryConnections();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy = self;
    v30 = 2114;
    v31 = pathCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ Origin changed while creating player: %{public}@  - Destroying", buf, 0x16u);
  }

  origin2 = [pathCopy origin];
  [(MRDAVOutputContextExternalDevice *)self destroyPlayersForClient:clientCopy origin:origin2];

  v19 = 0;
  if (error)
  {
    *error = [[NSError alloc] initWithMRError:6];
  }

LABEL_9:
  _Block_object_dispose(&v22, 8);

  return v19;
}

+ (void)_reportStreamCountAnalytics
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v3 nowPlayingServer];

  localOriginClient = [nowPlayingServer localOriginClient];
  deviceInfo = [localOriginClient deviceInfo];
  v7 = +[MRDMediaRemoteServer server];
  routingServer = [v7 routingServer];
  hostedRoutingService = [routingServer hostedRoutingService];
  hostedRoutingController = [hostedRoutingService hostedRoutingController];

  v29 = hostedRoutingController;
  availableEndpoints = [hostedRoutingController availableEndpoints];
  v12 = [availableEndpoints msv_filter:&stru_1004BF3D8];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10015AAE0;
  v33[3] = &unk_1004BF400;
  v28 = nowPlayingServer;
  v34 = v28;
  v13 = [v12 msv_compactMap:v33];
  if ([deviceInfo considerLocalOriginAsSeperateStream])
  {
    v14 = [v13 arrayByAddingObject:localOriginClient];

    v13 = v14;
  }

  v15 = [v13 msv_filter:&stru_1004BF420];
  v16 = [v12 msv_filter:&stru_1004BF440];
  v30 = localOriginClient;
  if ([deviceInfo considerLocalOriginAsSeperateStream])
  {
    v17 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    v18 = [v16 arrayByAddingObject:v17];

    v16 = v18;
  }

  v19 = [v15 msv_firstWhere:&stru_1004BF480];
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 count]);
  [v2 setObject:v20 forKeyedSubscript:@"stream_count"];

  v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 count]);
  [v2 setObject:v21 forKeyedSubscript:@"stream_count_can_handoff"];

  deviceInfo2 = [v19 deviceInfo];
  v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deviceInfo2 isAirPlayActive]);
  [v2 setObject:v23 forKeyedSubscript:@"is_local_receiver"];

  v24 = [NSNumber numberWithInt:v19 != 0];
  [v2 setObject:v24 forKeyedSubscript:@"is_local_playing"];

  if (MSVDeviceOSIsInternalInstall())
  {
    v25 = [v16 msv_map:&stru_1004BF4A0];
    [v2 setObject:v25 forKeyedSubscript:@"handoffable_endpoints_debug"];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10015ABF8;
    v31[3] = &unk_1004BF4C8;
    v32 = deviceInfo;
    v26 = [v15 msv_map:v31];
    [v2 setObject:v26 forKeyedSubscript:@"playing_player_paths_debug"];
  }

  v27 = v2;
  MRAnalyticsSendEvent();
}

@end