@interface MRDExternalDeviceServerClientConnection
- (BOOL)_wantsLibraryCommands;
- (BOOL)hasAccessToPlayerPath:(id)a3;
- (BOOL)isAllowedToSendMessageType:(unint64_t)a3;
- (BOOL)isDestinationLocal;
- (BOOL)removePendingPlaybackSessionMigrateEvent:(id)a3;
- (MRAVEndpoint)destinationEndpoint;
- (MRDExternalDeviceServerClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4;
- (MRDExternalDeviceServerClientConnectionDelegate)serverDelegate;
- (NSArray)discoverySessionConfigurations;
- (NSArray)registeredVirtualVoiceInputDevices;
- (NSArray)virtualTouchDevices;
- (NSString)debugDescription;
- (NSString)description;
- (id)exportContentItemArtworkUpdates:(id)a3 forPlayerPath:(id)a4;
- (id)exportContentItems:(id)a3 forPlayerPath:(id)a4;
- (id)exportNowPlayingState:(id)a3 forPlayerPath:(id)a4;
- (id)exportPlaybackQueue:(id)a3 forPlayerPath:(id)a4;
- (id)exportSupportedCommands:(id)a3;
- (id)gameControllerWithID:(unint64_t)a3;
- (id)label;
- (id)outputDevicesForEndpoint:(id)a3;
- (id)virtualTouchDeviceWithID:(unint64_t)a3;
- (unint64_t)addGameController:(id)a3;
- (unint64_t)addVirtualTouchDevice:(id)a3;
- (unint64_t)virtualTouchIDWithPackedID:(unint64_t)a3;
- (unsigned)connectOptions;
- (unsigned)discoveryModeForConfiguration:(id)a3;
- (void)_handleEndpointDidDisconnect:(id)a3;
- (void)addLyricsEvent:(id)a3;
- (void)addPendingPlaybackSessionMigrateEvent:(id)a3 playerPath:(id)a4;
- (void)addRegisteredVirtualVoiceInputDevice:(unsigned int)a3;
- (void)addVolumeEvent:(_MRHIDButtonEvent)a3;
- (void)dealloc;
- (void)flushLyricsEvents:(id)a3;
- (void)flushPendingPlaybackSessionMigrateEvents:(id)a3;
- (void)flushVolumeEvents:(id)a3;
- (void)gameController:(id)a3 propertiesDidChange:(id)a4;
- (void)localizeDestinationOrigin:(id)a3 completion:(id)a4;
- (void)localizeDestinationPlayerPath:(id)a3 completion:(id)a4;
- (void)removeAllVirtualTouchDevices;
- (void)removeGameController:(unint64_t)a3;
- (void)removeLyricsEvent:(id)a3;
- (void)requestConnectedDestinationEndpoint:(id)a3;
- (void)requestDestinationEndpoint:(id)a3;
- (void)setDestinationEndpoint:(id)a3;
- (void)setLabel:(id)a3;
- (void)unregisterAllVirtualVoiceInputDevices;
@end

@implementation MRDExternalDeviceServerClientConnection

- (MRAVEndpoint)destinationEndpoint
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_destinationEndpoint;
  objc_sync_exit(v2);

  return v3;
}

- (MRDExternalDeviceServerClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4
{
  v25.receiver = self;
  v25.super_class = MRDExternalDeviceServerClientConnection;
  v4 = [(MRDExternalDeviceServerClientConnection *)&v25 initWithConnection:a3 replyQueue:a4];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(v4 + 2);
    *(v4 + 2) = v7;

    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(Name, v11);
    v13 = *(v4 + 3);
    *(v4 + 3) = v12;

    v14 = [[MRPlaybackQueueClient alloc] initWithQueue:*(v4 + 3)];
    v15 = *(v4 + 17);
    *(v4 + 17) = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = *(v4 + 4);
    *(v4 + 4) = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = *(v4 + 6);
    *(v4 + 6) = v18;

    v20 = objc_alloc_init(NSMutableArray);
    v21 = *(v4 + 8);
    *(v4 + 8) = v20;

    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = *(v4 + 14);
    *(v4 + 14) = v22;

    *(v4 + 9) = 0;
    *(v4 + 20) = 0;
    *(v4 + 84) = 0;
    *(v4 + 23) = 0;
    *(v4 + 20) = 0;
    *(v4 + 28) = 0x3FFF;
  }

  return v4;
}

- (void)dealloc
{
  [(MRDExternalDeviceServerClientConnection *)self unregisterAllVirtualVoiceInputDevices];
  v3.receiver = self;
  v3.super_class = MRDExternalDeviceServerClientConnection;
  [(MRDExternalDeviceServerClientConnection *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = [(MRDExternalDeviceServerClientConnection *)self connection];
  v6 = [v3 initWithFormat:@"<%@:%p %@", v4, self, v5];

  v7 = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];

  if (v7)
  {
    v8 = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];
    [v6 appendFormat:@"destination=%@", v8];
  }

  v9 = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID];

  if (v9)
  {
    v10 = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID];
    [v6 appendFormat:@"destinationGroup=%@", v10];
  }

  [v6 appendString:@">"];

  return v6;
}

- (NSString)debugDescription
{
  v3 = objc_alloc_init(NSMutableString);
  if ([(MRDExternalDeviceServerClientConnection *)self registeredToNowPlayingUpdates])
  {
    [v3 appendString:@"NowPlaying "];
  }

  if ([(MRDExternalDeviceServerClientConnection *)self registeredToOutputDeviceUpdates])
  {
    [v3 appendString:@"OutputDevices "];
  }

  if ([(MRDExternalDeviceServerClientConnection *)self registeredToVolumeUpdates])
  {
    [v3 appendString:@"Volume "];
  }

  if ([(MRDExternalDeviceServerClientConnection *)self registeredKeyboardUpdates])
  {
    [v3 appendString:@"Keyboard "];
  }

  if ([(MRDExternalDeviceServerClientConnection *)self registeredToSystemEndpointUpdates])
  {
    [v3 appendString:@"SystemEndpointUpdates "];
  }

  v4 = objc_opt_class();
  v26 = NSStringFromClass(v4);
  v28 = [(MRDExternalDeviceServerClientConnection *)self deviceInfo];
  v25 = MRCreateIndentedDebugDescriptionFromObject();
  v27 = [(MRDExternalDeviceServerClientConnection *)self supportedMessages];
  v24 = [v27 lastSupportedMessageType];
  virtualTouchDevices = self->_virtualTouchDevices;
  v19 = MRCreateIndentedDebugDescriptionFromArray();
  registeredVirtualVoiceInputDevices = self->_registeredVirtualVoiceInputDevices;
  v7 = MRCreateIndentedDebugDescriptionFromArray();
  playbackQueueRequests = self->_playbackQueueRequests;
  pinPairingToken = self->_pinPairingToken;
  sessionPeer = self->_sessionPeer;
  WeakRetained = objc_loadWeakRetained(&self->_serverDelegate);
  v8 = [(MRDExternalDeviceServerClientConnection *)self subscribedPlayerPaths];
  v9 = MRCreateIndentedDebugDescriptionFromArray();
  v10 = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];
  v11 = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID];
  v12 = [(MRDExternalDeviceServerClientConnection *)self destinationEndpoint];
  v13 = [(MRDExternalDeviceServerClientConnection *)self connection];
  v14 = v3;
  v23 = v3;
  v15 = v13;
  v16 = [NSString stringWithFormat:@"<%@ %p {\n    deviceInfo = %@\n    lastSupportedMessageType = %ld\n    virtualTouchDevices = %@\n    registeredVirtualVoiceInputDevices = %@\n    playbackQueueRequests = %@\n    sessionPeer = %@\n    pinPairingToken = %@\n    serverDelegate = %@\n    registeredUpdates = %@\n    subscribedPlayerPaths = %@\n    destinationOutputDeviceUID = %@\n    destinationGroupID = %@\n    destinationEndpoint = %@\n    connection = %@\n}>", v26, self, v25, v24, v19, v7, playbackQueueRequests, sessionPeer, pinPairingToken, WeakRetained, v14, v9, v10, v11, v12, v13];

  return v16;
}

- (unsigned)connectOptions
{
  v2 = [(MRDExternalDeviceServerClientConnection *)self connectUserInfo];
  v3 = [v2 objectForKeyedSubscript:@"ConnectOptions"];
  v4 = [v3 intValue];

  return v4;
}

- (NSArray)virtualTouchDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003504C;
  v10 = sub_1000359DC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A532C;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)registeredVirtualVoiceInputDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003504C;
  v10 = sub_1000359DC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A5478;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  label = obj->_label;
  obj->_label = v4;

  objc_sync_exit(obj);
}

- (id)label
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_label;
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)addGameController:(id)a3
{
  v4 = a3;
  v5 = self->_gameControllerDeviceIDCounter + 1;
  self->_gameControllerDeviceIDCounter = v5;
  serialQueue = self->_serialQueue;
  v7 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A56E0;
  block[3] = &unk_1004B6AC0;
  block[4] = self;
  v12 = v4;
  v13 = v5;
  v8 = v4;
  dispatch_sync(serialQueue, block);
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceConnection(Server)] Added gamecontroller with deviceID: %llu", buf, 0xCu);
  }

  return v7;
}

- (id)gameControllerWithID:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003504C;
  serialQueue = self->_serialQueue;
  v11 = sub_1000359DC;
  v12 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5854;
  block[3] = &unk_1004B6980;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(serialQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)removeGameController:(unint64_t)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A5958;
  v4[3] = &unk_1004B7650;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(serialQueue, v4);
}

- (unint64_t)addVirtualTouchDevice:(id)a3
{
  v4 = a3;
  v5 = self->_deviceIDCounter + 1;
  self->_deviceIDCounter = v5;
  serialQueue = self->_serialQueue;
  v7 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5A88;
  block[3] = &unk_1004B6AC0;
  block[4] = self;
  v11 = v4;
  v12 = v5;
  v8 = v4;
  dispatch_sync(serialQueue, block);

  return v7;
}

- (id)virtualTouchDeviceWithID:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003504C;
  serialQueue = self->_serialQueue;
  v11 = sub_1000359DC;
  v12 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5C34;
  block[3] = &unk_1004B7A60;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)removeAllVirtualTouchDevices
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5E24;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)addRegisteredVirtualVoiceInputDevice:(unsigned int)a3
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5FBC;
  block[3] = &unk_1004B87D0;
  block[4] = self;
  v9 = a3;
  dispatch_sync(serialQueue, block);
  objc_initWeak(&location, self);
  v5 = &_dispatch_main_q;
  objc_copyWeak(&v6, &location);
  MRVirtualVoiceInputSetRecordingStateCallback();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)unregisterAllVirtualVoiceInputDevices
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10003504C;
  v17 = sub_1000359DC;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6340;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(serialQueue, block);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v14[5];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 unsignedIntValue];
        MRVirtualVoiceInputSetRecordingStateCallback();
        [v7 unsignedIntValue];
        MRVirtualVoiceInputUnregisterDevice();
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v13, 8);
}

- (unint64_t)virtualTouchIDWithPackedID:(unint64_t)a3
{
  packedDeviceIDToDeviceIDMapping = self->_packedDeviceIDToDeviceIDMapping;
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)packedDeviceIDToDeviceIDMapping objectForKey:v4];
  v6 = [v5 longLongValue];

  return v6;
}

- (void)addLyricsEvent:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A64A0;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)removeLyricsEvent:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A6554;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)flushLyricsEvents:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10003504C;
  v19 = sub_1000359DC;
  v20 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A68AC;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(serialQueue, block);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v16[5];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)addVolumeEvent:(_MRHIDButtonEvent)a3
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A698C;
  block[3] = &unk_1004B9D48;
  v5 = a3;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)flushVolumeEvents:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  serialQueue = self->_serialQueue;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6B40;
  block[3] = &unk_1004B9D70;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v7;
  dispatch_sync(serialQueue, block);
  if (*(v12 + 24) == 1)
  {
    v4[2](v4, 0xE90000000CLL, 0);
  }

  if (*(v8 + 24) == 1)
  {
    v4[2](v4, 0xEA0000000CLL, 0);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

- (void)addPendingPlaybackSessionMigrateEvent:(id)a3 playerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6C58;
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
  serialQueue = self->_serialQueue;
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6DD8;
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
    v21 = sub_10003504C;
    v22 = sub_1000359DC;
    v23 = 0;
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A7098;
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

- (void)localizeDestinationPlayerPath:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A71BC;
  v8[3] = &unk_1004B9D98;
  v9 = a3;
  v10 = a4;
  v6 = v9;
  v7 = v10;
  [(MRDExternalDeviceServerClientConnection *)self requestConnectedDestinationEndpoint:v8];
}

- (void)localizeDestinationOrigin:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MRPlayerPath alloc] initWithOrigin:v7 client:0 player:0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A7384;
  v10[3] = &unk_1004B9DC0;
  v11 = v6;
  v9 = v6;
  [(MRDExternalDeviceServerClientConnection *)self localizeDestinationPlayerPath:v8 completion:v10];
}

- (void)requestConnectedDestinationEndpoint:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A7478;
  v4[3] = &unk_1004B9E10;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MRDExternalDeviceServerClientConnection *)v5 requestDestinationEndpoint:v4];
}

- (void)requestDestinationEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(MRDExternalDeviceServerClientConnection *)self destinationEndpoint];
  if (v5)
  {
    if (v4)
    {
      v4[2](v4, v5);
    }
  }

  else
  {
    v6 = [MRDAutoConnectionControllerReason reasonWithType:4 string:@"ExternalDeviceServerDestination"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000A7710;
    v14 = &unk_1004B9E10;
    v15 = self;
    v16 = v4;
    v7 = objc_retainBlock(&v11);
    v8 = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID:v11];

    v9 = +[MRDAutoConnectionController sharedConnectionController];
    if (v8)
    {
      v10 = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID];
      [v9 discoverGroup:v10 reason:v6 queue:&_dispatch_main_q completion:v7];
    }

    else
    {
      v10 = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];
      [v9 discoverOutputDevice:v10 reason:v6 queue:&_dispatch_main_q completion:v7];
    }
  }
}

- (BOOL)isDestinationLocal
{
  v3 = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];

  if (!v3)
  {
    return 1;
  }

  v4 = +[MROrigin localOrigin];
  v5 = [MRDeviceInfoRequest deviceInfoForOrigin:v4];

  v6 = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];
  v7 = [v5 WHAIdentifier];
  v8 = [v6 isEqualToString:v7];

  return v8;
}

- (void)setDestinationEndpoint:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  destinationEndpoint = v6->_destinationEndpoint;
  if (destinationEndpoint != v5)
  {
    if (destinationEndpoint)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 removeObserver:v6 name:MRAVEndpointDidDisconnectNotification object:v6->_destinationEndpoint];

      v9 = v6->_destinationEndpoint;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(MRAVEndpoint *)v9 debugName];

    if (v10)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(MRAVEndpoint *)v6->_destinationEndpoint debugName];
        v13 = [(MRAVEndpoint *)v5 debugName];
        *buf = 138544130;
        v25 = v6;
        v26 = 2114;
        v27 = @"destinationEndpoint";
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", buf, 0x2Au);
      }
    }

    else
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(MRAVEndpoint *)v5 debugName];
        *buf = 138543874;
        v25 = v6;
        v26 = 2114;
        v27 = @"destinationEndpoint";
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
      }
    }

    objc_storeStrong(&v6->_destinationEndpoint, a3);
    if (v6->_destinationEndpoint || (v15 = [[NSError alloc] initWithMRError:24], -[MRDExternalDeviceServerClientConnection disconnectWithError:](v6, "disconnectWithError:", v15), v15, v6->_destinationEndpoint))
    {
      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:v6 selector:"_handleEndpointDidDisconnect:" name:MRAVEndpointDidDisconnectNotification object:v6->_destinationEndpoint];
    }

    if ([(NSString *)v6->_label length])
    {
      v17 = [(MRAVEndpoint *)v6->_destinationEndpoint debugName];
      label = v6->_label;
      v6->_label = v17;
    }

    else
    {
      label = [(MRDExternalDeviceServerClientConnection *)v6 label];
      v19 = [(MRAVEndpoint *)v6->_destinationEndpoint debugName];
      v20 = v19;
      v21 = &stru_1004D2058;
      if (label)
      {
        v21 = label;
      }

      v22 = [NSString stringWithFormat:@"%@-%@", v21, v19];
      v23 = v6->_label;
      v6->_label = v22;
    }
  }

  objc_sync_exit(v6);
}

- (BOOL)_wantsLibraryCommands
{
  v3 = [(MRDExternalDeviceServerClientConnection *)self deviceInfo];
  v4 = [v3 isGizmo];

  if (v4)
  {
    return 1;
  }

  v6 = [(MRDExternalDeviceServerClientConnection *)self deviceInfo];
  v7 = [v6 bundleIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.TVRemote"];

  return v8;
}

- (id)exportNowPlayingState:(id)a3 forPlayerPath:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v6 = a4;
    v7 = v4;
    v4 = [v7 copy];
    v8 = [v7 supportedCommands];
    v9 = [(MRDExternalDeviceServerClientConnection *)self exportSupportedCommands:v8];
    [v4 setSupportedCommands:v9];

    v10 = [v7 playbackQueue];

    v11 = [(MRDExternalDeviceServerClientConnection *)self exportPlaybackQueue:v10 forPlayerPath:v6];

    [v4 setPlaybackQueue:v11];
  }

  return v4;
}

- (id)exportSupportedCommands:(id)a3
{
  v4 = a3;
  if ([(MRDExternalDeviceServerClientConnection *)self _wantsLibraryCommands])
  {
    v5 = v4;
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A7DBC;
    v7[3] = &unk_1004B9E38;
    v8 = &off_1004E0E80;
    v5 = [v4 msv_filter:v7];
  }

  return v5;
}

- (id)exportPlaybackQueue:(id)a3 forPlayerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 range];
    v10 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:v8, v9];
    v11 = MRPlaybackQueueCreateFromRequest();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v11 contentItems];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v21 + 1) + 8 * i) metadata];
          [v17 setDeviceSpecificUserInfo:0];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    v18 = [(MRDExternalDeviceServerClientConnection *)self playbackQueueRequests];
    v19 = [v18 existingSubscriptionControllerForPlayerPath:v7];

    [v19 subscribeToPlaybackQueue:v11 forRequest:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)exportContentItems:(id)a3 forPlayerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(MRDExternalDeviceServerClientConnection *)self playbackQueueRequests];
    v9 = [v8 existingSubscriptionControllerForPlayerPath:v7];

    [v9 filteredContentItemsBySubscriptionsForContentItems:v6];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v22 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v19 + 1) + 8 * v14) metadata];
          [v15 setDeviceSpecificUserInfo:0];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ([v10 count])
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (id)exportContentItemArtworkUpdates:(id)a3 forPlayerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(MRDExternalDeviceServerClientConnection *)self playbackQueueRequests];
    v9 = [v8 existingSubscriptionControllerForPlayerPath:v7];

    v10 = [v9 filteredContentItemsBySubscriptionsForContentItems:v6];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 count])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (unsigned)discoveryModeForConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_discoveryModes objectForKeyedSubscript:v4];
  v7 = [v6 intValue];

  objc_sync_exit(v5);
  return v7;
}

- (NSArray)discoverySessionConfigurations
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_discoveryModes allKeys];
  objc_sync_exit(v2);

  return v3;
}

- (id)outputDevicesForEndpoint:(id)a3
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_10003504C;
  v9[4] = sub_1000359DC;
  v10 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A8510;
  v8[3] = &unk_1004B9E60;
  v8[4] = self;
  v8[5] = v9;
  v5 = objc_retainBlock(v8);
  if ((v5[2])())
  {
    [v4 resolvedOutputDevices];
  }

  else
  {
    [v4 outputDevices];
  }
  v6 = ;

  _Block_object_dispose(v9, 8);

  return v6;
}

- (BOOL)hasAccessToPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [(MRDExternalDeviceServerClientConnection *)self connection];
  v6 = [v5 hasAccessToPlayerPath:v4];

  return v6;
}

- (BOOL)isAllowedToSendMessageType:(unint64_t)a3
{
  v4 = [(MRDExternalDeviceServerClientConnection *)self connection];
  LOBYTE(a3) = [v4 isAllowedToSendMessageType:a3];

  return a3;
}

- (void)_handleEndpointDidDisconnect:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NSUnderlyingErrorKey];

  [(MRDExternalDeviceServerClientConnection *)self disconnectWithError:v5];
  [(MRDExternalDeviceServerClientConnection *)self setDestinationEndpoint:0];
}

- (void)gameController:(id)a3 propertiesDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8890;
  block[3] = &unk_1004B78D8;
  block[4] = self;
  v9 = v6;
  v14 = v9;
  v15 = &v16;
  dispatch_sync(serialQueue, block);
  if (v17[3])
  {
    WeakRetained = objc_loadWeakRetained(&self->_serverDelegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_serverDelegate);
      [v12 externalDeviceClient:self gameController:v17[3] propertiesChanged:v7];
    }
  }

  _Block_object_dispose(&v16, 8);
}

- (MRDExternalDeviceServerClientConnectionDelegate)serverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serverDelegate);

  return WeakRetained;
}

@end