@interface MRDAVOutputContextExternalDevice
+ (id)_resolveReason:(id)a3 uid:(id)a4 name:(id)a5 requestID:(id)a6;
+ (void)_createPlayerAndWaitForCanBeNowPlaying:(id)a3 deviceInfo:(id)a4 completion:(id)a5;
+ (void)_createPlayerAndWaitForConnection:(id)a3 command:(id)a4 deviceInfo:(id)a5 completion:(id)a6;
+ (void)_createPlayerForClient:(id)a3 playerPath:(id)a4 deviceInfo:(id)a5 completion:(id)a6;
+ (void)_reportStreamCountAnalytics;
+ (void)initialize;
+ (void)prewarm;
+ (void)prewarmApp:(id)a3 origin:(id)a4 deviceInfo:(id)a5;
+ (void)prewarmSoon;
- (BOOL)verifyCreatedPlayerPath:(id)a3 forClient:(id)a4 error:(id *)a5;
- (MRAVOutputDevice)designatedGroupLeader;
- (MRDAVOutputContextExternalDevice)initWithOutputContext:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)_createResolvedPlayerPathFromPlayerPath:(id)a3;
- (id)_generateDeviceInfoWithDesignatedGroupLeader:(id)a3 outputContext:(id)a4;
- (id)_resolveReason:(id)a3;
- (id)customOrigin;
- (id)deviceInfo;
- (id)dictionaryRepresentation;
- (id)lastConnectionError;
- (id)name;
- (id)outputDeviceForUID:(id)a3 error:(id *)a4;
- (id)supportedMessages;
- (id)uid;
- (unsigned)connectionState;
- (void)_createPlayerAndWaitForCanBeNowPlaying:(id)a3 completion:(id)a4;
- (void)_createPlayerAndWaitForConnection:(id)a3 command:(id)a4 completion:(id)a5;
- (void)_handlePlaybackQueueRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5;
- (void)_handlePlaybackSessionMigrateBeginRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5;
- (void)_handlePlaybackSessionMigrateEndRequest:(id)a3 error:(id)a4 setPlaybackSessionCommandStatus:(id)a5 forPlayerPath:(id)a6 completion:(id)a7;
- (void)_handlePlaybackSessionMigratePostRequest:(id)a3 setPlaybackSessionCommandID:(id)a4 forPlayerPath:(id)a5 completion:(id)a6;
- (void)_handlePlaybackSessionMigrateRequest:(id)a3 request:(id)a4 forPlayerPath:(id)a5 completion:(id)a6;
- (void)_handlePlaybackSessionRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5;
- (void)_handleRemoteCommand:(unsigned int)a3 withOptions:(id)a4 playerPath:(id)a5 completion:(id)a6;
- (void)_notifyActiveSessionMaybeWillBeHijackedByNativePlaybackFromOutputContextModification:(id)a3;
- (void)_onQueue_clearLocalOriginForwaderWithReason:(id)a3;
- (void)_onQueue_destroyPlayerPathsForOrigin:(id)a3;
- (void)_onQueue_forwardOriginToLocalOrigin:(id)a3;
- (void)_reevaluateDeviceInfo;
- (void)_sendMessageForPlayerPath:(id)a3 timeout:(double)a4 reason:(id)a5 factory:(id)a6 completion:(id)a7;
- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)anyDeviceInfoDidChangeNotification:(id)a3;
- (void)cleanUp;
- (void)clusterController:(id)a3 clusterTypeDidChange:(unsigned int)a4;
- (void)commitOutputDeviceToContextIfNeededWithDetails:(id)a3 completion:(id)a4;
- (void)connectWithOptions:(unsigned int)a3 userInfo:(id)a4 completion:(id)a5;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)destroyPlayersForClient:(id)a3 origin:(id)a4;
- (void)disconnect:(id)a3;
- (void)localClusterTypeDidChangeNotification:(id)a3;
- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5;
- (void)muteOutputDeviceVolume:(BOOL)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)outputContextRequestToAddLocalOutputDeviceNotification:(id)a3;
- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5;
- (void)registerForNotifications;
- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)sendMessageWithType:(unint64_t)a3 playerPath:(id)a4 timeout:(double)a5 reason:(id)a6 factory:(id)a7 completion:(id)a8;
- (void)setConnectionState:(unsigned int)a3;
- (void)setDesignatedGroupLeader:(id)a3;
- (void)setDeviceInfo:(id)a3;
- (void)setOrigin:(id)a3;
- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)updateDesignatedGroupLeader:(id)a3;
@end

@implementation MRDAVOutputContextExternalDevice

- (MRDAVOutputContextExternalDevice)initWithOutputContext:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = MRDAVOutputContextExternalDevice;
  v6 = [(MRDAVOutputContextExternalDevice *)&v22 _init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MRDAVOutputContextExternalDevice.serialQueue", v7);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("MRDAVOutputContextExternalDevice.workerQueue", v10);
    workerQueue = v6->_workerQueue;
    v6->_workerQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("MRDAVOutputContextExternalDevice.notificationQueue", v13);
    notificationQueue = v6->_notificationQueue;
    v6->_notificationQueue = v14;

    objc_storeStrong(&v6->_outputContext, a3);
    v6->_connectionState = 3;
    v16 = [[MROutputContextController alloc] initWithOutputContext:v5];
    outputContextController = v6->_outputContextController;
    v6->_outputContextController = v16;

    [(MRDAVOutputContextExternalDevice *)v6 registerForNotifications];
    v18 = +[MRAVClusterController sharedController];
    [v18 registerObserver:v6];

    v19 = MRLogCategoryConnections();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(MRDAVOutputContextExternalDevice *)v6 outputContext];
      *buf = 138543618;
      v24 = v6;
      v25 = 2114;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating outputContextExternalDevice for outputContext %{public}@", buf, 0x16u);
    }
  }

  return v6;
}

- (void)dealloc
{
  serialQueue = self->_serialQueue;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10014B3AC;
  v8 = &unk_1004B6D08;
  v9 = self;
  msv_dispatch_sync_on_queue();
  v4.receiver = self;
  v4.super_class = MRDAVOutputContextExternalDevice;
  [(MRDAVOutputContextExternalDevice *)&v4 dealloc];
}

+ (void)initialize
{
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 supportMultiplayerHost];

  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10014B4E4;
    v8[3] = &unk_1004B82A0;
    v8[4] = a1;
    sub_10019FEE8(&_dispatch_main_q, v8);
    v5 = +[NSNotificationCenter defaultCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014B4EC;
    v7[3] = &unk_1004BED20;
    v7[4] = a1;
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
  block[4] = a1;
  dispatch_after(v3, v4, block);
}

+ (void)prewarm
{
  v3 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [v5 localOriginClient];
  v7 = [v6 defaultSupportedCommandsDataForClient:v3];

  v8 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
  v9 = +[MRDMediaRemoteServer server];
  v10 = [v9 nowPlayingServer];
  v11 = [v10 localOriginClient];
  v12 = [v11 defaultSupportedCommandsDataForClient:v8];

  if (!v7 || !v12)
  {
    v13 = +[MRDAVOutputContextManager sharedManager];
    v14 = [v13 outputContextForOutputDeviceUID:@"PREWARM-DUMMY-DEVICE"];

    if (!v14)
    {
      [a1 prewarmSoon];
      goto LABEL_12;
    }

    v34 = v8;
    v15 = objc_alloc_init(MRDeviceInfo);
    [v15 setDeviceUID:@"PREWARM-DUMMY-DEVICE"];
    [v15 setName:@"PREWARM-DUMMY-DEVICE"];
    v16 = +[MRDMediaRemoteServer server];
    [v16 nowPlayingServer];
    v33 = v3;
    v18 = v17 = a1;
    [v18 localOriginClient];
    v19 = v7;
    v21 = v20 = v14;
    v22 = [v21 deviceInfo];
    v23 = [v22 identifier];
    [v15 setIdentifier:v23];

    v24 = v20;
    v7 = v19;

    a1 = v17;
    v3 = v33;

    v25 = [v24 contextID];
    [v15 setRoutingContextID:v25];

    v26 = [MROrigin alloc];
    v27 = [v15 name];
    v28 = [v26 initWithIdentifier:1463898701 type:1 displayName:v27];

    v29 = +[MRDMediaRemoteServer server];
    v30 = [v29 nowPlayingServer];
    [v30 registerOrigin:v28 deviceInfo:v15];

    if (!v19)
    {
      [a1 prewarmApp:v33 origin:v28 deviceInfo:v15];
    }

    v8 = v34;
    if (!v12)
    {
      v31 = +[MRUserSettings currentSettings];
      v32 = [v31 prewarmPodcasts];

      if (v32)
      {
        [a1 prewarmApp:v34 origin:v28 deviceInfo:v15];
      }
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BA28;
  block[3] = &unk_1004B82A0;
  block[4] = a1;
  if (qword_100529568 != -1)
  {
    dispatch_once(&qword_100529568, block);
  }

LABEL_12:
}

+ (void)prewarmApp:(id)a3 origin:(id)a4 deviceInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = +[NSDate now];
  v12 = +[NSUUID UUID];
  v13 = [v12 UUIDString];

  v14 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"prewarmApp", v13];
  v15 = v14;
  if (v8)
  {
    [v14 appendFormat:@" for %@", v8];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v17 = [[MRClient alloc] initWithBundleIdentifier:v8];
  v18 = [[MRPlayerPath alloc] initWithOrigin:v10 client:v17 player:0];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10014BDB8;
  v22[3] = &unk_1004BED48;
  v23 = v8;
  v24 = @"prewarmApp";
  v25 = v13;
  v26 = v11;
  v19 = v11;
  v20 = v13;
  v21 = v8;
  [a1 _createPlayerAndWaitForCanBeNowPlaying:v18 deviceInfo:v9 completion:v22];
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

- (void)setConnectionState:(unsigned int)a3
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
  v13 = self;
  v14 = v16;
  v15 = a3;
  msv_dispatch_sync_on_queue();
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014CE5C;
  v7[3] = &unk_1004B8848;
  v8 = a3;
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

- (void)updateDesignatedGroupLeader:(id)a3
{
  if (self->_disconnectionError)
  {
    v4 = MRLogCategoryConnections();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to updateDesignatedGroupLeader on previously disconnected device: %@", &v5, 0xCu);
    }
  }

  else
  {

    [(MRDAVOutputContextExternalDevice *)self setDesignatedGroupLeader:a3];
  }
}

- (void)setDeviceInfo:(id)a3
{
  v4 = a3;
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
  v23 = self;
  v6 = v4;
  v24 = v6;
  msv_dispatch_sync_on_queue();
  v7 = [v6 routingContextID];

  if (v7)
  {
    v8 = [(MRDAVOutputContextExternalDevice *)self origin];
    if (v8)
    {
      v9 = +[MRDMediaRemoteServer server];
      v10 = [v9 nowPlayingServer];
      [v10 updateDeviceInfo:v6 origin:v8];
    }

    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014D460;
    block[3] = &unk_1004B7798;
    v18 = &v26;
    v16 = v6;
    v17 = self;
    dispatch_async(notificationQueue, block);
  }

  else
  {
    v12 = [NSError alloc];
    v13 = [v27[5] routingContextID];
    v14 = [v6 routingContextID];
    v8 = [v12 initWithMRError:32 format:{@"Invalid routingContextID detected. From %@ to %@", v13, v14}];

    [(MRDAVOutputContextExternalDevice *)self disconnect:v8];
  }

  _Block_object_dispose(&v26, 8);
}

- (void)setOrigin:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_origin)
  {
    [(MRDAVOutputContextExternalDevice *)self _onQueue_destroyPlayerPathsForOrigin:?];
    [(MRDAVOutputContextExternalDevice *)self _onQueue_clearLocalOriginForwaderWithReason:@"Clear Origin"];
    v6 = +[MRDMediaRemoteServer server];
    v7 = [v6 nowPlayingServer];
    [v7 unregisterOrigin:self->_origin];

    airplayPublisher = self->_airplayPublisher;
    self->_airplayPublisher = 0;
  }

  objc_storeStrong(&self->_origin, a3);
  if (v5)
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
    v17 = [v16 nowPlayingServer];
    v18 = [v17 originClientForOrigin:v5];

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
    v20 = [v19 supportAirPlayLeaderInfoSync];

    if (v20)
    {
      v21 = [MRDAirPlayLeaderInfoPublisher alloc];
      v22 = self->_origin;
      v23 = [(MRDAVOutputContextExternalDevice *)self outputContext];
      v24 = [(MRDAirPlayLeaderInfoPublisher *)v21 initWithOrigin:v22 outputContext:v23];
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

- (void)setDesignatedGroupLeader:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (void)_handleRemoteCommand:(unsigned int)a3 withOptions:(id)a4 playerPath:(id)a5 completion:(id)a6
{
  v9 = a4;
  v57 = a5;
  v10 = a6;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_1000351BC;
  v90 = sub_100035A94;
  v52 = v9;
  v91 = [v9 copy];
  v11 = +[NSDate now];
  v12 = [v87[5] objectForKeyedSubscript:kMRMediaRemoteOptionCommandID];
  v13 = [NSString alloc];
  v14 = +[NSUUID UUID];
  v15 = [v14 UUIDString];
  v16 = [v13 initWithFormat:@"%@:%@", v12, v15];

  v17 = [v57 client];
  v18 = [v17 bundleIdentifier];
  v19 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
  v55 = [v18 isEqualToString:v19];

  v20 = [[NSString alloc] initWithFormat:@"<%@:%p> %@ isAP=%{BOOL}u", objc_opt_class(), self, v57, v55];
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
  v83 = self;
  v54 = v16;
  v84 = v54;
  v47 = v10;
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
  v30 = [v29 routingServer];
  v31 = [v30 hostedRoutingService];
  v32 = [v31 hostedRoutingController];
  v33 = [v32 discoverySession];
  v34 = [v33 localEndpointConnection];

  if (v34)
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
    v36 = v57;
    v68 = v36;
    v71 = a3;
    v72 = v55;
    v37 = objc_retainBlock(v66);
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10014FFB4;
    v61[3] = &unk_1004BBA20;
    v65 = a3;
    v62 = v36;
    v38 = v53;
    v63 = v38;
    v39 = v37;
    v64 = v39;
    v40 = objc_retainBlock(v61);
    v41 = +[MRDMediaRemoteServer server];
    v42 = [v41 routingServer];
    v43 = [v42 airplayActive];

    if (a3 == 132 || (v55 & v43) == 1 && a3 != 122 && a3 != 133)
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

- (id)_createResolvedPlayerPathFromPlayerPath:(id)a3
{
  v4 = a3;
  v5 = +[MRUserSettings currentSettings];
  v6 = [v5 supportMultiplayerHost];

  v7 = v4;
  if ((v6 & 1) == 0)
  {
    v8 = [MRPlayerPath alloc];
    v9 = +[MROrigin localOrigin];
    v10 = [v4 client];
    v11 = [v4 player];
    v7 = [v8 initWithOrigin:v9 client:v10 player:v11];
  }

  v12 = [v4 client];

  if (!v12)
  {
    v13 = [MRPlayerPath alloc];
    v14 = [v7 origin];
    v15 = [MRClient alloc];
    v16 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    v17 = [v15 initWithBundleIdentifier:v16];
    v18 = [v13 initWithOrigin:v14 client:v17 player:0];

    v7 = v18;
  }

  v19 = +[MRUserSettings currentSettings];
  v20 = [v19 homepodDemoMode];

  if (v20)
  {
    v21 = [MRPlayerPath alloc];
    v22 = +[MROrigin localOrigin];
    v23 = [v7 client];
    v24 = [v7 player];
    v25 = [v21 initWithOrigin:v22 client:v23 player:v24];

    v7 = v25;
  }

  v26 = +[MRDMediaRemoteServer server];
  v27 = [v26 deviceInfo];

  LOBYTE(v26) = [v27 isAirPlayActive];
  v28 = [v4 client];
  v29 = [v28 bundleIdentifier];
  v30 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
  v31 = [v29 isEqualToString:v30];

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

- (void)_createPlayerAndWaitForConnection:(id)a3 command:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = [(MRDAVOutputContextExternalDevice *)self deviceInfo];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100150B2C;
  v14[3] = &unk_1004BEEA8;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [v11 _createPlayerAndWaitForConnection:v10 command:v9 deviceInfo:v12 completion:v14];
}

+ (void)_createPlayerAndWaitForConnection:(id)a3 command:(id)a4 deviceInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v53 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[NSDate now];
  v14 = +[NSUUID UUID];
  v15 = [v14 UUIDString];

  v16 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"createPlayerAndWaitForConnection", v15];
  v17 = v16;
  if (v10)
  {
    [v16 appendFormat:@" for %@", v10];
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v73 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v19 = _MRLogForCategory();
  v20 = [v15 hash];
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
  v22 = v15;
  v66 = v22;
  v67 = @"createPlayerAndWaitForConnection";
  v52 = v13;
  v68 = v52;
  v51 = v12;
  v69 = v51;
  v23 = objc_retainBlock(v65);
  v24 = [MRBlockGuard alloc];
  v50 = a1;
  v25 = objc_opt_class();
  v26 = [v11 WHAIdentifier];
  v54 = v11;
  v27 = [v11 name];
  v28 = [v25 _resolveReason:@"createPlayerAndWaitForConnection" uid:v26 name:v27 requestID:v22];
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
  v35 = [v34 nowPlayingServer];
  v36 = [v35 queryExistingPlayerPath:v10];

  v37 = [v10 client];
  v38 = [v37 bundleIdentifier];
  v39 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
  v40 = [v38 isEqualToString:v39];

  if (v40)
  {
    (v33[2])(v33, v10, 0);
    v41 = v53;
    goto LABEL_19;
  }

  v42 = [v36 playerClient];

  v41 = v53;
  if (v42)
  {
    v43 = [v36 playerClient];
    v44 = [v43 playerPath];
    (v33[2])(v33, v44, 0);

LABEL_12:
    goto LABEL_19;
  }

  v45 = [v10 client];
  v46 = [v45 bundleIdentifier];

  if (!v46)
  {
    v43 = [[NSError alloc] initWithMRError:35 format:{@"Could not find application in playerPath %@", v10}];
    (v33[2])(v33, 0, v43);
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = kMRMediaRemoteOptionCommandType;
    v71 = v53;
    v47 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  }

  else
  {
    v47 = 0;
  }

  v48 = [v10 client];
  v49 = [v48 bundleIdentifier];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100151884;
  v55[3] = &unk_1004BEEF8;
  v58 = v33;
  v56 = v10;
  v59 = v50;
  v57 = v54;
  sub_10019E5FC(v49, 0, v47, v55, 7.0);

LABEL_19:
}

- (void)_createPlayerAndWaitForCanBeNowPlaying:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(MRDAVOutputContextExternalDevice *)self deviceInfo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100151A48;
  v11[3] = &unk_1004BEEA8;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v8 _createPlayerAndWaitForCanBeNowPlaying:v7 deviceInfo:v9 completion:v11];
}

+ (void)_createPlayerAndWaitForCanBeNowPlaying:(id)a3 deviceInfo:(id)a4 completion:(id)a5
{
  v34 = a3;
  v7 = a4;
  v8 = a5;
  v9 = +[NSDate now];
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];

  v12 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"createPlayerAndWaitForCanBeNowPlaying", v11];
  v13 = v12;
  if (v34)
  {
    [v12 appendFormat:@" for %@", v34];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v15 = _MRLogForCategory();
  v16 = [v11 hash];
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
  v17 = v11;
  v46 = v17;
  v47 = @"createPlayerAndWaitForCanBeNowPlaying";
  v18 = v9;
  v48 = v18;
  v33 = v8;
  v49 = v33;
  p_buf = &buf;
  v19 = objc_retainBlock(v45);
  v20 = [MRBlockGuard alloc];
  v21 = objc_opt_class();
  v22 = [v7 WHAIdentifier];
  v23 = [v7 name];
  v24 = [v21 _resolveReason:@"createPlayerAndWaitForCanBeNowPlaying" uid:v22 name:v23 requestID:v17];
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
  [v30 _createPlayerAndWaitForConnection:v34 command:0 deviceInfo:v7 completion:v35];

  _Block_object_dispose(&buf, 8);
}

+ (void)_createPlayerForClient:(id)a3 playerPath:(id)a4 deviceInfo:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = +[NSDate now];
  v14 = +[NSUUID UUID];
  v15 = [v14 UUIDString];

  v16 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"createPlayer", v15];
  v17 = v16;
  if (v9)
  {
    [v16 appendFormat:@" for %@", v9];
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v19 = _MRLogForCategory();
  v20 = [v15 hash];
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
  v23 = [v22 threadDictionary];
  v24 = [v23 objectForKeyedSubscript:@"migrateRequest"];

  if (v24)
  {
    v25 = [v24 startEvent:@"CreatePlayer" role:3];
    v26 = [v10 routingContextID];
    [v24 addEventInput:v26 withKey:@"routingContextID" toEventID:v25];
  }

  else
  {
    LODWORD(v25) = 0;
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100152E40;
  v38[3] = &unk_1004BEFE8;
  v39 = v15;
  v40 = v9;
  v41 = v13;
  v42 = v24;
  v44 = v25;
  v43 = v11;
  v27 = v11;
  v28 = v24;
  v29 = v13;
  v30 = v9;
  v31 = v15;
  v32 = objc_retainBlock(v38);
  [v12 takeAssertion:1 forReason:@"CreatePlayer" duration:30.0];
  v33 = MRCreateXPCMessage();
  MRAddDeviceInfoToXPCMessage();
  MRAddPlayerPathToXPCMessage();
  v34 = [v12 connection];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001532F0;
  v36[3] = &unk_1004BF010;
  v37 = v32;
  v35 = v32;
  [v34 sendMessage:v33 queue:&_dispatch_main_q reply:v36];
}

- (void)sendMessageWithType:(unint64_t)a3 playerPath:(id)a4 timeout:(double)a5 reason:(id)a6 factory:(id)a7 completion:(id)a8
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100153498;
  v18[3] = &unk_1004BF038;
  v19 = a7;
  v20 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015352C;
  v16[3] = &unk_1004BF010;
  v17 = a8;
  v14 = v17;
  v15 = v19;
  [(MRDAVOutputContextExternalDevice *)self _sendMessageForPlayerPath:a4 timeout:a6 reason:v18 factory:v16 completion:a5];
}

- (void)_sendMessageForPlayerPath:(id)a3 timeout:(double)a4 reason:(id)a5 factory:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [MRBlockGuard alloc];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001537D0;
  v31[3] = &unk_1004B6FE8;
  v17 = v14;
  v32 = v17;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001537E8;
  v28[3] = &unk_1004BF060;
  v29 = [v16 initWithTimeout:v12 reason:v31 handler:a4];
  v30 = v17;
  v18 = v17;
  v19 = v29;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100153860;
  v23[3] = &unk_1004BF088;
  v24 = v12;
  v25 = self;
  v26 = v13;
  v27 = objc_retainBlock(v28);
  v20 = v27;
  v21 = v12;
  v22 = v13;
  [(MRDAVOutputContextExternalDevice *)self _createPlayerAndWaitForCanBeNowPlaying:v15 completion:v23];
}

- (void)_handlePlaybackQueueRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100153C2C;
  v28[3] = &unk_1004BBDE8;
  v10 = a5;
  v29 = v10;
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
  v17 = [v9 client];
  v18 = [v16 clientForPID:{objc_msgSend(v17, "processIdentifier")}];

  if (v18)
  {
    v19 = MRCreateXPCMessage();
    MRAddPlayerPathToXPCMessage();
    MRAddPlaybackQueueRequestToXPCMessage();
    v20 = [v8 description];
    [v18 takeAssertion:2 forReason:v20 duration:30.0];

    v21 = [v18 connection];
    workerQueue = self->_workerQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100153C54;
    v23[3] = &unk_1004BF060;
    v24 = v15;
    v25 = v14;
    [v21 sendMessage:v19 queue:workerQueue reply:v23];

LABEL_5:
    goto LABEL_6;
  }

  if ([v15 disarm])
  {
    v19 = [[NSError alloc] initWithMRError:4 format:{@"Could not find xpcClient for playerPath %@", v9}];
    (v14[2])(v14, 0, v19);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_handlePlaybackSessionRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MRDAVOutputContextExternalDevice *)self _resolveReason:@"_handlePlaybackSessionRequest"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100153E4C;
  v17[3] = &unk_1004BF0B0;
  v18 = v8;
  v19 = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100153E90;
  v15[3] = &unk_1004BF0D8;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(MRDAVOutputContextExternalDevice *)self sendMessageWithType:0x200000000000030 playerPath:v13 timeout:v11 reason:v17 factory:v15 completion:30.0];
}

- (void)_handlePlaybackSessionMigrateRequest:(id)a3 request:(id)a4 forPlayerPath:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[NSThread currentThread];
  v15 = [v14 threadDictionary];
  [v15 setObject:v11 forKeyedSubscript:@"migrateRequest"];

  v16 = [MRRequestDetails alloc];
  v17 = MRRequestDetailsInitiatorUnknownAPIUsage;
  v18 = [v11 requestID];
  v19 = [v16 initWithInitiator:v17 requestID:v18 reason:@"_handlePlaybackSessionMigrateRequest"];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10015404C;
  v24[3] = &unk_1004BF150;
  v28 = v10;
  v29 = v13;
  v25 = v11;
  v26 = v12;
  v27 = self;
  v20 = v10;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  [(MRDAVOutputContextExternalDevice *)self commitOutputDeviceToContextIfNeededWithDetails:v19 completion:v24];
}

- (void)_handlePlaybackSessionMigrateBeginRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(MRDAVOutputContextExternalDevice *)self _resolveReason:@"_handlePlaybackSessionMigrateBeginRequest"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100154590;
  v16[3] = &unk_1004BF178;
  v17 = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001545F8;
  v14[3] = &unk_1004BF0D8;
  v15 = v9;
  v12 = v9;
  v13 = v8;
  [(MRDAVOutputContextExternalDevice *)self sendMessageWithType:0x400000000000008 playerPath:v10 timeout:v11 reason:v16 factory:v14 completion:30.0];
}

- (void)_handlePlaybackSessionMigrateEndRequest:(id)a3 error:(id)a4 setPlaybackSessionCommandStatus:(id)a5 forPlayerPath:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a6;
  v17 = [(MRDAVOutputContextExternalDevice *)self _resolveReason:@"_handlePlaybackSessionMigrateEndRequest"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001547A8;
  v24[3] = &unk_1004BF1A0;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100154814;
  v22[3] = &unk_1004BF0D8;
  v23 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  [(MRDAVOutputContextExternalDevice *)self sendMessageWithType:0x400000000000009 playerPath:v16 timeout:v17 reason:v24 factory:v22 completion:30.0];
}

- (void)_handlePlaybackSessionMigratePostRequest:(id)a3 setPlaybackSessionCommandID:(id)a4 forPlayerPath:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MRDAVOutputContextExternalDevice *)self _resolveReason:@"_handlePlaybackSessionMigratePostRequest"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001549AC;
  v21[3] = &unk_1004BF1A0;
  v22 = v10;
  v23 = v12;
  v24 = v11;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001549F4;
  v19[3] = &unk_1004BF0D8;
  v20 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  v18 = v10;
  [(MRDAVOutputContextExternalDevice *)self sendMessageWithType:0x40000000000000ALL playerPath:v17 timeout:v14 reason:v21 factory:v19 completion:30.0];
}

- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSDate now];
  v17 = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  v18 = [NSString alloc];
  v19 = objc_opt_class();
  v38 = v17;
  v20 = [v17 debugName];
  v21 = [v18 initWithFormat:@"%@:%p-%@>", v19, self, v20];

  v22 = [NSMutableString alloc];
  v23 = [v13 requestID];
  v24 = [v22 initWithFormat:@"%@<%@>", @"OutputContextExtenalDevice.setOutputDeviceVolume", v23];

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
  v54 = a3;
  v37 = v21;
  v48 = v37;
  v49 = @"OutputContextExtenalDevice.setOutputDeviceVolume";
  v26 = v13;
  v50 = v26;
  v27 = v16;
  v51 = v27;
  v28 = v14;
  v52 = v28;
  v29 = v15;
  v53 = v29;
  v30 = objc_retainBlock(v47);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100155284;
  v42[3] = &unk_1004BC028;
  v42[4] = self;
  v46 = a3;
  v31 = v12;
  v43 = v31;
  v32 = v26;
  v44 = v32;
  v33 = v30;
  v45 = v33;
  v34 = objc_retainBlock(v42);
  v35 = [(MRAVConcreteOutputContext *)self->_outputContext outputDeviceUIDs];
  v36 = [v35 count];

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

- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v37 = a4;
  v12 = a5;
  v13 = a6;
  v35 = a7;
  v14 = +[NSDate now];
  v15 = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  v16 = [NSString alloc];
  v17 = objc_opt_class();
  v38 = v15;
  v18 = [v15 debugName];
  v19 = [v16 initWithFormat:@"%@:%p-%@>", v17, self, v18];

  v20 = [NSMutableString alloc];
  v21 = [v12 requestID];
  v22 = [v20 initWithFormat:@"%@<%@>", @"OutputContextExtenalDevice.adjustOutputDeviceVolume", v21];

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
  v54 = a3;
  v36 = v19;
  v48 = v36;
  v49 = @"OutputContextExtenalDevice.adjustOutputDeviceVolume";
  v24 = v12;
  v50 = v24;
  v25 = v14;
  v51 = v25;
  v26 = v13;
  v52 = v26;
  v27 = v35;
  v53 = v27;
  v28 = objc_retainBlock(v47);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100155B94;
  v42[3] = &unk_1004BF218;
  v42[4] = self;
  v46 = a3;
  v29 = v37;
  v43 = v29;
  v30 = v24;
  v44 = v30;
  v31 = v28;
  v45 = v31;
  v32 = objc_retainBlock(v42);
  v33 = [(MRAVConcreteOutputContext *)self->_outputContext outputDeviceUIDs];
  v34 = [v33 count];

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

- (void)muteOutputDeviceVolume:(BOOL)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v37 = a4;
  v12 = a5;
  v13 = a6;
  v35 = a7;
  v14 = +[NSDate now];
  v15 = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  v16 = [NSString alloc];
  v17 = objc_opt_class();
  v38 = v15;
  v18 = [v15 debugName];
  v19 = [v16 initWithFormat:@"%@:%p-%@>", v17, self, v18];

  v20 = [NSMutableString alloc];
  v21 = [v12 requestID];
  v22 = [v20 initWithFormat:@"%@<%@>", @"OutputContextExtenalDevice.muteOutputDeviceVolume", v21];

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
  v54 = a3;
  v36 = v19;
  v48 = v36;
  v49 = @"OutputContextExtenalDevice.muteOutputDeviceVolume";
  v24 = v12;
  v50 = v24;
  v25 = v14;
  v51 = v25;
  v26 = v13;
  v52 = v26;
  v27 = v35;
  v53 = v27;
  v28 = objc_retainBlock(v47);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1001564AC;
  v42[3] = &unk_1004BF268;
  v42[4] = self;
  v46 = a3;
  v29 = v37;
  v43 = v29;
  v30 = v24;
  v44 = v30;
  v31 = v28;
  v45 = v31;
  v32 = objc_retainBlock(v42);
  v33 = [(MRAVConcreteOutputContext *)self->_outputContext outputDeviceUIDs];
  v34 = [v33 count];

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

- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 requestDetails];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100156648;
  v15[3] = &unk_1004BF290;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [(MRDAVOutputContextExternalDevice *)self commitOutputDeviceToContextIfNeededWithDetails:v11 completion:v15];
}

- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100156764;
  block[3] = &unk_1004B79A0;
  v8 = a4;
  v6 = v8;
  dispatch_sync(a5, block);
}

- (void)connectWithOptions:(unsigned int)a3 userInfo:(id)a4 completion:(id)a5
{
  v36 = a5;
  v7 = a4;
  v8 = +[NSDate now];
  v9 = [(MRDAVOutputContextExternalDevice *)self deviceInfo];
  v10 = [v7 objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v11 = [v7 objectForKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];

  v12 = [NSString alloc];
  v13 = objc_opt_class();
  v14 = [v9 WHAIdentifier];
  v15 = [v9 name];
  v16 = [v12 initWithFormat:@"%@:%p-%@:%@", v13, self, v14, v15];

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
  v22 = [v21 UTF8String];
  v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v24 = dispatch_queue_attr_make_with_qos_class(v23, v20, 0);
  v25 = dispatch_queue_create_with_target_V2(v22, v24, self->_notificationQueue);

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
  v49 = v36;
  v47 = v8;
  v27 = v25;
  v28 = v36;
  v29 = v8;
  v30 = v16;
  v31 = objc_retainBlock(v43);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100156F24;
  block[3] = &unk_1004BAAD8;
  v41 = v9;
  v42 = v31;
  block[4] = self;
  v39 = @"OutputContextExternalDevice.connectWithOptions";
  v40 = v26;
  v33 = v9;
  v34 = v26;
  v35 = v31;
  dispatch_sync(serialQueue, block);
}

- (id)_generateDeviceInfoWithDesignatedGroupLeader:(id)a3 outputContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MRDMediaRemoteServer server];
  v8 = [v7 nowPlayingServer];
  v9 = [v8 localOriginClient];
  v10 = [v9 deviceInfo];

  if ([v5 isLocalDevice])
  {
    v11 = v10;
  }

  else
  {
    v11 = [[MRDeviceInfo alloc] initWithOutputDevice:v5];
    v12 = [v6 outputDevices];
    v13 = [v12 firstObject];
    v14 = [v13 groupID];
    if (v14)
    {
      [v11 setGroupUID:v14];
    }

    else
    {
      v15 = [v5 groupID];
      [v11 setGroupUID:v15];
    }

    [v11 setAirPlayActive:1];
    [v11 setProxyGroupPlayer:1];
    [v11 setSupportsOutputContextSync:{objc_msgSend(v10, "supportsOutputContextSync")}];
    v16 = [v10 identifier];
    [v11 setIdentifier:v16];

    v17 = [v10 systemMediaApplication];
    [v11 setSystemMediaApplication:v17];

    v18 = [v10 systemPodcastApplication];
    [v11 setSystemPodcastApplication:v18];

    v19 = [v10 systemBooksApplication];
    [v11 setSystemBooksApplication:v19];

    [v11 setSupportsSharedQueue:{objc_msgSend(v10, "supportsSharedQueue")}];
    [v11 setSharedQueueVersion:{objc_msgSend(v10, "sharedQueueVersion")}];
    [v11 setSupportsMultiplayer:{objc_msgSend(v10, "supportsMultiplayer")}];
    v20 = [v10 buildVersion];
    [v11 setBuildVersion:v20];

    [v11 setProtocolVersion:{objc_msgSend(v10, "protocolVersion")}];
    v21 = [v10 computerName];
    [v11 setComputerName:v21];

    [v11 setDeviceClass:{objc_msgSend(v10, "deviceClass")}];
  }

  v22 = [v6 outputDevices];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100157664;
  v27[3] = &unk_1004B9AF8;
  v28 = v5;
  v23 = v5;
  v24 = [v22 msv_compactMap:v27];

  [v11 setGroupedDevices:v24];
  [v11 setGroupLogicalDeviceCount:{objc_msgSend(v24, "count")}];
  v25 = [v6 contextID];
  [v11 setRoutingContextID:v25];

  return v11;
}

- (void)disconnect:(id)a3
{
  v4 = a3;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ disconnecting with error %{public}@", buf, 0x16u);
  }

  serialQueue = self->_serialQueue;
  v7 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [[NSError alloc] initWithMRError:3];
  (*(a5 + 2))(v6, v7);
}

- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001579C0;
  block[3] = &unk_1004B79A0;
  v8 = a5;
  v6 = v8;
  dispatch_async(a4, block);
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100157AE0;
  v9[3] = &unk_1004BF2E0;
  v10 = a6;
  v8 = v10;
  [MRDCreateEndpointRequest createEndpointWithOutputDeviceUIDs:a3 timeout:a4 details:v9 groupUIDCompletion:30.0];
}

- (id)supportedMessages
{
  v2 = [[MRSupportedProtocolMessages alloc] initWithLastSupportedMessageType:139];

  return v2;
}

- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100157CEC;
  v17 = &unk_1004BAD10;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = objc_retainBlock(&v14);
  v11 = [MRDMediaRemoteServer server:v14];
  v12 = [v11 groupSessionServer];

  if (v12)
  {
    [v12 requestGroupSessionWithCompletion:v10];
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

- (void)outputContextRequestToAddLocalOutputDeviceNotification:(id)a3
{
  v6 = a3;
  v4 = [v6 userInfo];
  v5 = [v4 objectForKeyedSubscript:MRAVOutputContextModificationInitiatorUserInfoKey];

  if (([v5 isEqualToString:@"Prewarm"] & 1) == 0)
  {
    [(MRDAVOutputContextExternalDevice *)self _notifyActiveSessionMaybeWillBeHijackedByNativePlaybackFromOutputContextModification:v6];
  }
}

- (void)_notifyActiveSessionMaybeWillBeHijackedByNativePlaybackFromOutputContextModification:(id)a3
{
  v3 = a3;
  v9 = objc_alloc_init(NSMutableDictionary);
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:MRAVOutputContextModificationIdentifierUserInfoKey];
  [v9 setObject:v5 forKeyedSubscript:kMRMediaRemoteOptionCommandID];

  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:MRAVOutputContextModificationInitiatorUserInfoKey];
  [v9 setObject:v7 forKeyedSubscript:kMRMediaRemoteOptionSenderID];

  v8 = [v3 name];

  [v9 setObject:v8 forKeyedSubscript:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];
  [objc_opt_class() _sendCommandPreview:0 options:v9 playerPath:0];
}

- (void)anyDeviceInfoDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isLocal])
  {
    [(MRDAVOutputContextExternalDevice *)self _reevaluateDeviceInfo];
  }
}

- (void)localClusterTypeDidChangeNotification:(id)a3
{
  v4 = [a3 object];
  if (v4 != self)
  {
    v7 = v4;
    v5 = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
    v6 = [v5 isLocalDevice];

    if (!v6)
    {
      return;
    }

    v8 = [[NSError alloc] initWithMRError:32 format:@"Local device changed clusterType in discovery"];
    [(MRDAVOutputContextExternalDevice *)self disconnect:v8];
    v4 = v8;
  }
}

- (void)clusterController:(id)a3 clusterTypeDidChange:(unsigned int)a4
{
  v6 = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  v7 = [v6 isLocalDevice];

  if (v7)
  {
    v8 = MRLogCategoryConnections();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = self;
      v16 = 1024;
      v17 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Local device changed clusterType to: %u", buf, 0x12u);
    }

    v9 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001584C0;
    v12[3] = &unk_1004BF320;
    v13 = a4;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100158540;
    v10[3] = &unk_1004BF348;
    v10[4] = self;
    v11 = a4;
    [v9 searchEndpointsWithPredicate:v12 timeout:@"clusterTypeDidChange" reason:0 queue:v10 completion:30.0];
  }
}

- (void)_reevaluateDeviceInfo
{
  v5 = [(MRDAVOutputContextExternalDevice *)self designatedGroupLeader];
  v3 = [(MRDAVOutputContextExternalDevice *)self outputContext];
  v4 = [(MRDAVOutputContextExternalDevice *)self _generateDeviceInfoWithDesignatedGroupLeader:v5 outputContext:v3];
  [(MRDAVOutputContextExternalDevice *)self setDeviceInfo:v4];
}

- (void)cleanUp
{
  dispatch_assert_queue_V2(self->_serialQueue);
  designatedGroupLeader = self->_designatedGroupLeader;
  self->_designatedGroupLeader = 0;

  [(MRDAVOutputContextExternalDevice *)self setOrigin:0];
}

- (id)outputDeviceForUID:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v8 = v6;
  v13 = v8;
  dispatch_sync(serialQueue, block);
  v9 = v16[5];
  if (a4 && !v9)
  {
    *a4 = [[NSError alloc] initWithMRError:39];
    v9 = v16[5];
  }

  v10 = v9;

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)commitOutputDeviceToContextIfNeededWithDetails:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate now];
  v9 = [NSMutableString alloc];
  v10 = [v6 requestID];
  v11 = [v9 initWithFormat:@"%@<%@>", @"commitOutputDeviceToContextIfNeededWithDetails", v10];

  if (self)
  {
    [v11 appendFormat:@" for %@", self];
  }

  v12 = [v6 reason];

  if (v12)
  {
    v13 = [v6 reason];
    [v11 appendFormat:@" because %@", v13];
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
  v15 = v6;
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
  v26 = v7;
  v19 = v7;
  v20 = v17;
  v21 = v15;
  dispatch_sync(serialQueue, block);
}

- (void)_onQueue_forwardOriginToLocalOrigin:(id)a3
{
  v4 = a3;
  if (self->_origin && !self->_originForwarder)
  {
    v5 = MRLogCategoryConnections();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[MROrigin localOrigin];
      v7 = [(MRDAVOutputContextExternalDevice *)self outputContext];
      v12 = 138544130;
      v13 = self;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Begin Forwarding Origin Data from %{public}@ to %{public}@ for outputContext %{public}@", &v12, 0x2Au);
    }

    v8 = [MRDOriginForwarder alloc];
    v9 = +[MROrigin localOrigin];
    v10 = [(MRDOriginForwarder *)v8 initWithOrigin:v4 destinationOrigin:v9];
    originForwarder = self->_originForwarder;
    self->_originForwarder = v10;
  }
}

- (void)_onQueue_clearLocalOriginForwaderWithReason:(id)a3
{
  v4 = a3;
  if (self->_originForwarder)
  {
    v5 = MRLogCategoryConnections();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v71 = self;
      v72 = 2112;
      v73 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Begin clearing all localOrigin nowPlayingData because %@", buf, 0x16u);
    }

    v51 = self;
    v52 = v4;

    v6 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
    v7 = +[MRNowPlayingOriginClientManager sharedManager];
    v8 = +[MROrigin localOrigin];
    v9 = [v7 originClientForOrigin:v8];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v54 = v9;
    v10 = [v9 nowPlayingClients];
    v11 = [v10 countByEnumeratingWithState:&v63 objects:v69 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v63 + 1) + 8 * i);
          v16 = [v15 client];
          v17 = [v16 bundleIdentifier];
          v18 = [v17 isEqualToString:v6];

          if ((v18 & 1) == 0)
          {
            v19 = [v15 playerPath];
            [v54 removeClient:v19];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v63 objects:v69 count:16];
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
    v23 = [v22 nowPlayingClientRequests];
    v24 = [v23 countByEnumeratingWithState:&v59 objects:v68 count:16];
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
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v59 + 1) + 8 * j);
          v29 = [v28 client];
          v30 = [v29 bundleIdentifier];
          v31 = [v30 isEqualToString:v6];

          if ((v31 & 1) == 0)
          {
            v32 = [MRPlayerPath alloc];
            v33 = +[MROrigin anyOrigin];
            v34 = [v28 client];
            v35 = [v32 initWithOrigin:v33 client:v34 player:0];

            [v53 removeClient:v35];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v25);
    }

    v36 = +[MRDMediaRemoteServer server];
    v37 = [v36 nowPlayingServer];
    v38 = [v37 localOriginClient];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v39 = [v38 nowPlayingClients];
    v40 = [v39 countByEnumeratingWithState:&v55 objects:v67 count:16];
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
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v55 + 1) + 8 * k);
          v45 = [v44 client];
          v46 = [v45 bundleIdentifier];
          v47 = [v46 isEqualToString:v6];

          if ((v47 & 1) == 0)
          {
            v48 = [v44 client];
            [v38 removeNowPlayingClientForClient:v48];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v41);
    }

    v49 = MRLogCategoryConnections();
    v4 = v52;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v71 = v51;
      v72 = 2112;
      v73 = v52;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ End clearing all localOrigin nowPlayingData because %@", buf, 0x16u);
    }

    originForwarder = v51->_originForwarder;
    v51->_originForwarder = 0;
  }
}

- (id)_resolveReason:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MRDAVOutputContextExternalDevice *)self uid];
  v7 = [(MRDAVOutputContextExternalDevice *)self name];
  v8 = [v5 _resolveReason:v4 uid:v6 name:v7 requestID:0];

  return v8;
}

+ (id)_resolveReason:(id)a3 uid:(id)a4 name:(id)a5 requestID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[NSString alloc] initWithFormat:@"OutputContextExternalDevice-%@-%@:%@<%@>", v11, v10, v12, v9];

  return v13;
}

- (void)_onQueue_destroyPlayerPathsForOrigin:(id)a3
{
  v4 = a3;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = self;
    v31 = 2114;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Destroying playerPaths for origin: %{public}@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = +[MRDMediaRemoteServer server];
  v7 = [v6 allClients];

  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
        }

        [(MRDAVOutputContextExternalDevice *)self destroyPlayersForClient:*(*(&v24 + 1) + 8 * i) origin:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if ([(NSMutableDictionary *)self->_pendingCommandCompletions count])
  {
    v12 = [(NSMutableDictionary *)self->_pendingCommandCompletions allValues];
    v13 = [v12 copy];

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

- (void)destroyPlayersForClient:(id)a3 origin:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = MRCreateXPCMessage();
  MRAddOriginToXPCMessage();

  v7 = [v6 connection];

  [v7 sendMessage:v8 queue:0 reply:0];
}

- (BOOL)verifyCreatedPlayerPath:(id)a3 forClient:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v12 = [v8 origin];
  v13 = v11;
  v14 = v12;
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
    v29 = self;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ Origin changed while creating player: %{public}@  - Destroying", buf, 0x16u);
  }

  v18 = [v8 origin];
  [(MRDAVOutputContextExternalDevice *)self destroyPlayersForClient:v9 origin:v18];

  v19 = 0;
  if (a5)
  {
    *a5 = [[NSError alloc] initWithMRError:6];
  }

LABEL_9:
  _Block_object_dispose(&v22, 8);

  return v19;
}

+ (void)_reportStreamCountAnalytics
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 nowPlayingServer];

  v5 = [v4 localOriginClient];
  v6 = [v5 deviceInfo];
  v7 = +[MRDMediaRemoteServer server];
  v8 = [v7 routingServer];
  v9 = [v8 hostedRoutingService];
  v10 = [v9 hostedRoutingController];

  v29 = v10;
  v11 = [v10 availableEndpoints];
  v12 = [v11 msv_filter:&stru_1004BF3D8];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10015AAE0;
  v33[3] = &unk_1004BF400;
  v28 = v4;
  v34 = v28;
  v13 = [v12 msv_compactMap:v33];
  if ([v6 considerLocalOriginAsSeperateStream])
  {
    v14 = [v13 arrayByAddingObject:v5];

    v13 = v14;
  }

  v15 = [v13 msv_filter:&stru_1004BF420];
  v16 = [v12 msv_filter:&stru_1004BF440];
  v30 = v5;
  if ([v6 considerLocalOriginAsSeperateStream])
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

  v22 = [v19 deviceInfo];
  v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v22 isAirPlayActive]);
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
    v32 = v6;
    v26 = [v15 msv_map:v31];
    [v2 setObject:v26 forKeyedSubscript:@"playing_player_paths_debug"];
  }

  v27 = v2;
  MRAnalyticsSendEvent();
}

@end