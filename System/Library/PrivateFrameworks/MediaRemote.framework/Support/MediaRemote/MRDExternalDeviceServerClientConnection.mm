@interface MRDExternalDeviceServerClientConnection
- (BOOL)_wantsLibraryCommands;
- (BOOL)hasAccessToPlayerPath:(id)path;
- (BOOL)isAllowedToSendMessageType:(unint64_t)type;
- (BOOL)isDestinationLocal;
- (BOOL)removePendingPlaybackSessionMigrateEvent:(id)event;
- (MRAVEndpoint)destinationEndpoint;
- (MRDExternalDeviceServerClientConnection)initWithConnection:(id)connection replyQueue:(id)queue;
- (MRDExternalDeviceServerClientConnectionDelegate)serverDelegate;
- (NSArray)discoverySessionConfigurations;
- (NSArray)registeredVirtualVoiceInputDevices;
- (NSArray)virtualTouchDevices;
- (NSString)debugDescription;
- (NSString)description;
- (id)exportContentItemArtworkUpdates:(id)updates forPlayerPath:(id)path;
- (id)exportContentItems:(id)items forPlayerPath:(id)path;
- (id)exportNowPlayingState:(id)state forPlayerPath:(id)path;
- (id)exportPlaybackQueue:(id)queue forPlayerPath:(id)path;
- (id)exportSupportedCommands:(id)commands;
- (id)gameControllerWithID:(unint64_t)d;
- (id)label;
- (id)outputDevicesForEndpoint:(id)endpoint;
- (id)virtualTouchDeviceWithID:(unint64_t)d;
- (unint64_t)addGameController:(id)controller;
- (unint64_t)addVirtualTouchDevice:(id)device;
- (unint64_t)virtualTouchIDWithPackedID:(unint64_t)d;
- (unsigned)connectOptions;
- (unsigned)discoveryModeForConfiguration:(id)configuration;
- (void)_handleEndpointDidDisconnect:(id)disconnect;
- (void)addLyricsEvent:(id)event;
- (void)addPendingPlaybackSessionMigrateEvent:(id)event playerPath:(id)path;
- (void)addRegisteredVirtualVoiceInputDevice:(unsigned int)device;
- (void)addVolumeEvent:(_MRHIDButtonEvent)event;
- (void)dealloc;
- (void)flushLyricsEvents:(id)events;
- (void)flushPendingPlaybackSessionMigrateEvents:(id)events;
- (void)flushVolumeEvents:(id)events;
- (void)gameController:(id)controller propertiesDidChange:(id)change;
- (void)localizeDestinationOrigin:(id)origin completion:(id)completion;
- (void)localizeDestinationPlayerPath:(id)path completion:(id)completion;
- (void)removeAllVirtualTouchDevices;
- (void)removeGameController:(unint64_t)controller;
- (void)removeLyricsEvent:(id)event;
- (void)requestConnectedDestinationEndpoint:(id)endpoint;
- (void)requestDestinationEndpoint:(id)endpoint;
- (void)setDestinationEndpoint:(id)endpoint;
- (void)setLabel:(id)label;
- (void)unregisterAllVirtualVoiceInputDevices;
@end

@implementation MRDExternalDeviceServerClientConnection

- (MRAVEndpoint)destinationEndpoint
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_destinationEndpoint;
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRDExternalDeviceServerClientConnection)initWithConnection:(id)connection replyQueue:(id)queue
{
  v25.receiver = self;
  v25.super_class = MRDExternalDeviceServerClientConnection;
  v4 = [(MRDExternalDeviceServerClientConnection *)&v25 initWithConnection:connection replyQueue:queue];
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
  connection = [(MRDExternalDeviceServerClientConnection *)self connection];
  v6 = [v3 initWithFormat:@"<%@:%p %@", v4, self, connection];

  destinationOutputDeviceUID = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];

  if (destinationOutputDeviceUID)
  {
    destinationOutputDeviceUID2 = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];
    [v6 appendFormat:@"destination=%@", destinationOutputDeviceUID2];
  }

  destinationGroupUID = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID];

  if (destinationGroupUID)
  {
    destinationGroupUID2 = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID];
    [v6 appendFormat:@"destinationGroup=%@", destinationGroupUID2];
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
  deviceInfo = [(MRDExternalDeviceServerClientConnection *)self deviceInfo];
  v25 = MRCreateIndentedDebugDescriptionFromObject();
  supportedMessages = [(MRDExternalDeviceServerClientConnection *)self supportedMessages];
  lastSupportedMessageType = [supportedMessages lastSupportedMessageType];
  virtualTouchDevices = self->_virtualTouchDevices;
  v19 = MRCreateIndentedDebugDescriptionFromArray();
  registeredVirtualVoiceInputDevices = self->_registeredVirtualVoiceInputDevices;
  v7 = MRCreateIndentedDebugDescriptionFromArray();
  playbackQueueRequests = self->_playbackQueueRequests;
  pinPairingToken = self->_pinPairingToken;
  sessionPeer = self->_sessionPeer;
  WeakRetained = objc_loadWeakRetained(&self->_serverDelegate);
  subscribedPlayerPaths = [(MRDExternalDeviceServerClientConnection *)self subscribedPlayerPaths];
  v9 = MRCreateIndentedDebugDescriptionFromArray();
  destinationOutputDeviceUID = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];
  destinationGroupUID = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID];
  destinationEndpoint = [(MRDExternalDeviceServerClientConnection *)self destinationEndpoint];
  connection = [(MRDExternalDeviceServerClientConnection *)self connection];
  v14 = v3;
  v23 = v3;
  v15 = connection;
  v16 = [NSString stringWithFormat:@"<%@ %p {\n    deviceInfo = %@\n    lastSupportedMessageType = %ld\n    virtualTouchDevices = %@\n    registeredVirtualVoiceInputDevices = %@\n    playbackQueueRequests = %@\n    sessionPeer = %@\n    pinPairingToken = %@\n    serverDelegate = %@\n    registeredUpdates = %@\n    subscribedPlayerPaths = %@\n    destinationOutputDeviceUID = %@\n    destinationGroupID = %@\n    destinationEndpoint = %@\n    connection = %@\n}>", v26, self, v25, lastSupportedMessageType, v19, v7, playbackQueueRequests, sessionPeer, pinPairingToken, WeakRetained, v14, v9, destinationOutputDeviceUID, destinationGroupUID, destinationEndpoint, connection];

  return v16;
}

- (unsigned)connectOptions
{
  connectUserInfo = [(MRDExternalDeviceServerClientConnection *)self connectUserInfo];
  v3 = [connectUserInfo objectForKeyedSubscript:@"ConnectOptions"];
  intValue = [v3 intValue];

  return intValue;
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

- (void)setLabel:(id)label
{
  labelCopy = label;
  obj = self;
  objc_sync_enter(obj);
  label = obj->_label;
  obj->_label = labelCopy;

  objc_sync_exit(obj);
}

- (id)label
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_label;
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)addGameController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_gameControllerDeviceIDCounter + 1;
  self->_gameControllerDeviceIDCounter = v5;
  serialQueue = self->_serialQueue;
  v7 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A56E0;
  block[3] = &unk_1004B6AC0;
  block[4] = self;
  v12 = controllerCopy;
  v13 = v5;
  v8 = controllerCopy;
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

- (id)gameControllerWithID:(unint64_t)d
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
  block[6] = d;
  dispatch_sync(serialQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)removeGameController:(unint64_t)controller
{
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A5958;
  v4[3] = &unk_1004B7650;
  v4[4] = self;
  v4[5] = controller;
  dispatch_sync(serialQueue, v4);
}

- (unint64_t)addVirtualTouchDevice:(id)device
{
  deviceCopy = device;
  v5 = self->_deviceIDCounter + 1;
  self->_deviceIDCounter = v5;
  serialQueue = self->_serialQueue;
  v7 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5A88;
  block[3] = &unk_1004B6AC0;
  block[4] = self;
  v11 = deviceCopy;
  v12 = v5;
  v8 = deviceCopy;
  dispatch_sync(serialQueue, block);

  return v7;
}

- (id)virtualTouchDeviceWithID:(unint64_t)d
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
  block[6] = d;
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

- (void)addRegisteredVirtualVoiceInputDevice:(unsigned int)device
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5FBC;
  block[3] = &unk_1004B87D0;
  block[4] = self;
  deviceCopy = device;
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

- (unint64_t)virtualTouchIDWithPackedID:(unint64_t)d
{
  packedDeviceIDToDeviceIDMapping = self->_packedDeviceIDToDeviceIDMapping;
  v4 = [NSNumber numberWithUnsignedLongLong:d];
  v5 = [(NSMutableDictionary *)packedDeviceIDToDeviceIDMapping objectForKey:v4];
  longLongValue = [v5 longLongValue];

  return longLongValue;
}

- (void)addLyricsEvent:(id)event
{
  eventCopy = event;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A64A0;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)removeLyricsEvent:(id)event
{
  eventCopy = event;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A6554;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)flushLyricsEvents:(id)events
{
  eventsCopy = events;
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

        eventsCopy[2](eventsCopy, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)addVolumeEvent:(_MRHIDButtonEvent)event
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A698C;
  block[3] = &unk_1004B9D48;
  eventCopy = event;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)flushVolumeEvents:(id)events
{
  eventsCopy = events;
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
    eventsCopy[2](eventsCopy, 0xE90000000CLL, 0);
  }

  if (*(v8 + 24) == 1)
  {
    eventsCopy[2](eventsCopy, 0xEA0000000CLL, 0);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

- (void)addPendingPlaybackSessionMigrateEvent:(id)event playerPath:(id)path
{
  eventCopy = event;
  pathCopy = path;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6C58;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = eventCopy;
  v13 = pathCopy;
  v9 = pathCopy;
  v10 = eventCopy;
  dispatch_sync(serialQueue, block);
}

- (BOOL)removePendingPlaybackSessionMigrateEvent:(id)event
{
  eventCopy = event;
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
  v9 = eventCopy;
  v10 = &v11;
  v6 = eventCopy;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

- (void)flushPendingPlaybackSessionMigrateEvents:(id)events
{
  eventsCopy = events;
  if (eventsCopy)
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
          first = [v10 first];
          second = [v10 second];
          eventsCopy[2](eventsCopy, first, second);
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(&v18, 8);
  }
}

- (void)localizeDestinationPlayerPath:(id)path completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A71BC;
  v8[3] = &unk_1004B9D98;
  pathCopy = path;
  completionCopy = completion;
  v6 = pathCopy;
  v7 = completionCopy;
  [(MRDExternalDeviceServerClientConnection *)self requestConnectedDestinationEndpoint:v8];
}

- (void)localizeDestinationOrigin:(id)origin completion:(id)completion
{
  completionCopy = completion;
  originCopy = origin;
  v8 = [[MRPlayerPath alloc] initWithOrigin:originCopy client:0 player:0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A7384;
  v10[3] = &unk_1004B9DC0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MRDExternalDeviceServerClientConnection *)self localizeDestinationPlayerPath:v8 completion:v10];
}

- (void)requestConnectedDestinationEndpoint:(id)endpoint
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A7478;
  v4[3] = &unk_1004B9E10;
  selfCopy = self;
  endpointCopy = endpoint;
  v3 = endpointCopy;
  [(MRDExternalDeviceServerClientConnection *)selfCopy requestDestinationEndpoint:v4];
}

- (void)requestDestinationEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  destinationEndpoint = [(MRDExternalDeviceServerClientConnection *)self destinationEndpoint];
  if (destinationEndpoint)
  {
    if (endpointCopy)
    {
      endpointCopy[2](endpointCopy, destinationEndpoint);
    }
  }

  else
  {
    v6 = [MRDAutoConnectionControllerReason reasonWithType:4 string:@"ExternalDeviceServerDestination"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000A7710;
    v14 = &unk_1004B9E10;
    selfCopy = self;
    v16 = endpointCopy;
    v7 = objc_retainBlock(&v11);
    v8 = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID:v11];

    v9 = +[MRDAutoConnectionController sharedConnectionController];
    if (v8)
    {
      destinationGroupUID = [(MRDExternalDeviceServerClientConnection *)self destinationGroupUID];
      [v9 discoverGroup:destinationGroupUID reason:v6 queue:&_dispatch_main_q completion:v7];
    }

    else
    {
      destinationGroupUID = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];
      [v9 discoverOutputDevice:destinationGroupUID reason:v6 queue:&_dispatch_main_q completion:v7];
    }
  }
}

- (BOOL)isDestinationLocal
{
  destinationOutputDeviceUID = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];

  if (!destinationOutputDeviceUID)
  {
    return 1;
  }

  v4 = +[MROrigin localOrigin];
  v5 = [MRDeviceInfoRequest deviceInfoForOrigin:v4];

  destinationOutputDeviceUID2 = [(MRDExternalDeviceServerClientConnection *)self destinationOutputDeviceUID];
  wHAIdentifier = [v5 WHAIdentifier];
  v8 = [destinationOutputDeviceUID2 isEqualToString:wHAIdentifier];

  return v8;
}

- (void)setDestinationEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  destinationEndpoint = selfCopy->_destinationEndpoint;
  if (destinationEndpoint != endpointCopy)
  {
    if (destinationEndpoint)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 removeObserver:selfCopy name:MRAVEndpointDidDisconnectNotification object:selfCopy->_destinationEndpoint];

      v9 = selfCopy->_destinationEndpoint;
    }

    else
    {
      v9 = 0;
    }

    debugName = [(MRAVEndpoint *)v9 debugName];

    if (debugName)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        debugName2 = [(MRAVEndpoint *)selfCopy->_destinationEndpoint debugName];
        debugName3 = [(MRAVEndpoint *)endpointCopy debugName];
        *buf = 138544130;
        v25 = selfCopy;
        v26 = 2114;
        v27 = @"destinationEndpoint";
        v28 = 2112;
        v29 = debugName2;
        v30 = 2112;
        v31 = debugName3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", buf, 0x2Au);
      }
    }

    else
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        debugName4 = [(MRAVEndpoint *)endpointCopy debugName];
        *buf = 138543874;
        v25 = selfCopy;
        v26 = 2114;
        v27 = @"destinationEndpoint";
        v28 = 2112;
        v29 = debugName4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
      }
    }

    objc_storeStrong(&selfCopy->_destinationEndpoint, endpoint);
    if (selfCopy->_destinationEndpoint || (v15 = [[NSError alloc] initWithMRError:24], -[MRDExternalDeviceServerClientConnection disconnectWithError:](selfCopy, "disconnectWithError:", v15), v15, selfCopy->_destinationEndpoint))
    {
      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:selfCopy selector:"_handleEndpointDidDisconnect:" name:MRAVEndpointDidDisconnectNotification object:selfCopy->_destinationEndpoint];
    }

    if ([(NSString *)selfCopy->_label length])
    {
      debugName5 = [(MRAVEndpoint *)selfCopy->_destinationEndpoint debugName];
      label = selfCopy->_label;
      selfCopy->_label = debugName5;
    }

    else
    {
      label = [(MRDExternalDeviceServerClientConnection *)selfCopy label];
      debugName6 = [(MRAVEndpoint *)selfCopy->_destinationEndpoint debugName];
      v20 = debugName6;
      v21 = &stru_1004D2058;
      if (label)
      {
        v21 = label;
      }

      v22 = [NSString stringWithFormat:@"%@-%@", v21, debugName6];
      v23 = selfCopy->_label;
      selfCopy->_label = v22;
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_wantsLibraryCommands
{
  deviceInfo = [(MRDExternalDeviceServerClientConnection *)self deviceInfo];
  isGizmo = [deviceInfo isGizmo];

  if (isGizmo)
  {
    return 1;
  }

  deviceInfo2 = [(MRDExternalDeviceServerClientConnection *)self deviceInfo];
  bundleIdentifier = [deviceInfo2 bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:@"com.apple.TVRemote"];

  return v8;
}

- (id)exportNowPlayingState:(id)state forPlayerPath:(id)path
{
  stateCopy = state;
  if (state)
  {
    pathCopy = path;
    v7 = stateCopy;
    stateCopy = [v7 copy];
    supportedCommands = [v7 supportedCommands];
    v9 = [(MRDExternalDeviceServerClientConnection *)self exportSupportedCommands:supportedCommands];
    [stateCopy setSupportedCommands:v9];

    playbackQueue = [v7 playbackQueue];

    v11 = [(MRDExternalDeviceServerClientConnection *)self exportPlaybackQueue:playbackQueue forPlayerPath:pathCopy];

    [stateCopy setPlaybackQueue:v11];
  }

  return stateCopy;
}

- (id)exportSupportedCommands:(id)commands
{
  commandsCopy = commands;
  if ([(MRDExternalDeviceServerClientConnection *)self _wantsLibraryCommands])
  {
    v5 = commandsCopy;
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A7DBC;
    v7[3] = &unk_1004B9E38;
    v8 = &off_1004E0E80;
    v5 = [commandsCopy msv_filter:v7];
  }

  return v5;
}

- (id)exportPlaybackQueue:(id)queue forPlayerPath:(id)path
{
  queueCopy = queue;
  pathCopy = path;
  if (queueCopy)
  {
    range = [queueCopy range];
    v10 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:range, v9];
    v11 = MRPlaybackQueueCreateFromRequest();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    contentItems = [v11 contentItems];
    v13 = [contentItems countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(contentItems);
          }

          metadata = [*(*(&v21 + 1) + 8 * i) metadata];
          [metadata setDeviceSpecificUserInfo:0];
        }

        v14 = [contentItems countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    playbackQueueRequests = [(MRDExternalDeviceServerClientConnection *)self playbackQueueRequests];
    v19 = [playbackQueueRequests existingSubscriptionControllerForPlayerPath:pathCopy];

    [v19 subscribeToPlaybackQueue:v11 forRequest:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)exportContentItems:(id)items forPlayerPath:(id)path
{
  itemsCopy = items;
  pathCopy = path;
  if ([itemsCopy count])
  {
    playbackQueueRequests = [(MRDExternalDeviceServerClientConnection *)self playbackQueueRequests];
    v9 = [playbackQueueRequests existingSubscriptionControllerForPlayerPath:pathCopy];

    [v9 filteredContentItemsBySubscriptionsForContentItems:itemsCopy];
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

          metadata = [*(*(&v19 + 1) + 8 * v14) metadata];
          [metadata setDeviceSpecificUserInfo:0];

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

- (id)exportContentItemArtworkUpdates:(id)updates forPlayerPath:(id)path
{
  updatesCopy = updates;
  pathCopy = path;
  if ([updatesCopy count])
  {
    playbackQueueRequests = [(MRDExternalDeviceServerClientConnection *)self playbackQueueRequests];
    v9 = [playbackQueueRequests existingSubscriptionControllerForPlayerPath:pathCopy];

    v10 = [v9 filteredContentItemsBySubscriptionsForContentItems:updatesCopy];
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

- (unsigned)discoveryModeForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_discoveryModes objectForKeyedSubscript:configurationCopy];
  intValue = [v6 intValue];

  objc_sync_exit(selfCopy);
  return intValue;
}

- (NSArray)discoverySessionConfigurations
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_discoveryModes allKeys];
  objc_sync_exit(selfCopy);

  return allKeys;
}

- (id)outputDevicesForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
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
    [endpointCopy resolvedOutputDevices];
  }

  else
  {
    [endpointCopy outputDevices];
  }
  v6 = ;

  _Block_object_dispose(v9, 8);

  return v6;
}

- (BOOL)hasAccessToPlayerPath:(id)path
{
  pathCopy = path;
  connection = [(MRDExternalDeviceServerClientConnection *)self connection];
  v6 = [connection hasAccessToPlayerPath:pathCopy];

  return v6;
}

- (BOOL)isAllowedToSendMessageType:(unint64_t)type
{
  connection = [(MRDExternalDeviceServerClientConnection *)self connection];
  LOBYTE(type) = [connection isAllowedToSendMessageType:type];

  return type;
}

- (void)_handleEndpointDidDisconnect:(id)disconnect
{
  userInfo = [disconnect userInfo];
  v5 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  [(MRDExternalDeviceServerClientConnection *)self disconnectWithError:v5];
  [(MRDExternalDeviceServerClientConnection *)self setDestinationEndpoint:0];
}

- (void)gameController:(id)controller propertiesDidChange:(id)change
{
  controllerCopy = controller;
  changeCopy = change;
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
  v9 = controllerCopy;
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
      [v12 externalDeviceClient:self gameController:v17[3] propertiesChanged:changeCopy];
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