@interface ACCNowPlayingServer
+ (id)sharedServer;
- (ACCNowPlayingServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (NSXPCConnection)activeConnection;
- (void)cancelRequestPlaybackQueueListInfo:(id)info requestID:(id)d;
- (void)sendUpdatedSubscriberList;
- (void)setPlaybackElapsedTime:(id)time;
- (void)setPlaybackQueueIndex:(id)index;
- (void)triggerMediaItemArtworkUpdate;
- (void)triggerMediaItemAttributesUpdate;
- (void)triggerPlaybackAttributesUpdate;
@end

@implementation ACCNowPlayingServer

- (ACCNowPlayingServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification
{
  v10.receiver = self;
  v10.super_class = ACCNowPlayingServer;
  v4 = [(ACCFeatureServer *)&v10 initWithXPCServiceName:name andFeatureNotification:notification];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    clientConnections = v4->_clientConnections;
    v4->_clientConnections = v5;

    activeConnection = v4->_activeConnection;
    v4->_activeConnection = 0;

    remoteObject = v4->_remoteObject;
    v4->_remoteObject = 0;
  }

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 5;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    xpcServiceName = self->super._xpcServiceName;
    *buf = 138412290;
    v34 = xpcServiceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Now Playing] New XPC connection for: %@", buf, 0xCu);
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AccessoryNowPlayingXPCServerProtocol];
  [connectionCopy setExportedInterface:v12];

  v13 = [[ACCNowPlayingServerRemote alloc] initWithXPCConnection:connectionCopy];
  [connectionCopy setExportedObject:v13];

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AccessoryNowPlayingXPCClientProtocol];
  [connectionCopy setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __58__ACCNowPlayingServer_listener_shouldAcceptNewConnection___block_invoke;
  v28[3] = &unk_100225C98;
  objc_copyWeak(&v29, &from);
  v28[4] = self;
  objc_copyWeak(&v30, &location);
  [connectionCopy setInvalidationHandler:v28];
  clientConnections = [(ACCNowPlayingServer *)self clientConnections];
  [clientConnections addObject:connectionCopy];

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v16 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v16 = &_os_log_default;
    v17 = &_os_log_default;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    clientConnections2 = [(ACCNowPlayingServer *)self clientConnections];
    v19 = [clientConnections2 count];
    *buf = 134217984;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[#Now Playing] There are now %lu client(s).", buf, 0xCu);
  }

  [connectionCopy resume];
  clientConnections3 = [(ACCNowPlayingServer *)self clientConnections];
  v21 = [clientConnections3 count] == 1;

  if (v21)
  {
    [(ACCNowPlayingServer *)self setActiveConnection:connectionCopy];
    activeConnection = [(ACCNowPlayingServer *)self activeConnection];
    v23 = [activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_1];
    [(ACCNowPlayingServer *)self setRemoteObject:v23];

    if (gLogObjects && gNumLogObjects >= 5)
    {
      v24 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v24 = &_os_log_default;
      v25 = &_os_log_default;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      remoteObject = [(ACCNowPlayingServer *)self remoteObject];
      [(ACCNowPlayingServer *)remoteObject listener:buf shouldAcceptNewConnection:v24];
    }
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __58__ACCNowPlayingServer_listener_shouldAcceptNewConnection___block_invoke(id *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 5);
    v20 = 138412290;
    v21 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Now Playing] XPC connection invalidated: %@", &v20, 0xCu);
  }

  v6 = objc_loadWeakRetained(a1 + 5);
  [v6 setInvalidationHandler:0];

  v7 = objc_loadWeakRetained(a1 + 5);
  v8 = [a1[4] activeConnection];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = objc_loadWeakRetained(a1 + 6);
    [v10 setActiveConnection:0];

    v11 = objc_loadWeakRetained(a1 + 6);
    [v11 setRemoteObject:0];
  }

  v12 = objc_loadWeakRetained(a1 + 6);
  v13 = [v12 clientConnections];
  v14 = objc_loadWeakRetained(a1 + 5);
  [v13 removeObject:v14];

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v15 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v15 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_loadWeakRetained(a1 + 6);
    v18 = [v17 clientConnections];
    v19 = [v18 count];
    v20 = 134217984;
    v21 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[#Now Playing] There are now %lu client(s).", &v20, 0xCu);
  }
}

void __58__ACCNowPlayingServer_listener_shouldAcceptNewConnection___block_invoke_73(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCNowPlayingServer_listener_shouldAcceptNewConnection___block_invoke_73_cold_2(v2, v5);
  }
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  clientConnections = [(ACCNowPlayingServer *)self clientConnections];
  if ([clientConnections count])
  {
    clientConnections2 = [(ACCNowPlayingServer *)self clientConnections];
    v7 = [clientConnections2 objectAtIndexedSubscript:0];
    v8 = [v7 isEqual:connectionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)sendUpdatedSubscriberList
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 5;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#Now Playing] sendUpdatedSubscriberList...", v9, 2u);
  }

  remoteObject = [(ACCNowPlayingServer *)self remoteObject];
  subFeatureSubscribers = [(ACCFeatureServer *)self subFeatureSubscribers];
  allObjects = [subFeatureSubscribers allObjects];
  [remoteObject updateSubscriberList:allObjects WithReply:&__block_literal_global_77];
}

void __48__ACCNowPlayingServer_sendUpdatedSubscriberList__block_invoke(id a1, BOOL a2)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __48__ACCNowPlayingServer_sendUpdatedSubscriberList__block_invoke_cold_2();
  }
}

- (void)triggerMediaItemAttributesUpdate
{
  remoteObject = [(ACCNowPlayingServer *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCNowPlayingServer *)self remoteObject];
    [remoteObject2 triggerMediaItemAttributesUpdateWithReply:&__block_literal_global_79];
  }

  else
  {
    remoteObject2 = dispatch_get_global_queue(0, 0);
    dispatch_async(remoteObject2, &__block_literal_global_82);
  }
}

void __55__ACCNowPlayingServer_triggerMediaItemAttributesUpdate__block_invoke(id a1, BOOL a2)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __55__ACCNowPlayingServer_triggerMediaItemAttributesUpdate__block_invoke_cold_2();
  }
}

void __55__ACCNowPlayingServer_triggerMediaItemAttributesUpdate__block_invoke_80(id a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects < 5;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#Now Playing] No clients connected, sending default media item attributes...", v5, 2u);
  }

  v4 = platform_nowPlaying_copyDefaultMediaItemAttributes();
  platform_nowPlaying_mediaItemAttributesUpdate(v4);
}

- (void)triggerMediaItemArtworkUpdate
{
  remoteObject = [(ACCNowPlayingServer *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCNowPlayingServer *)self remoteObject];
    [remoteObject2 triggerMediaItemArtworkUpdateWithReply:&__block_literal_global_84];
  }

  else
  {
    remoteObject2 = dispatch_get_global_queue(0, 0);
    dispatch_async(remoteObject2, &__block_literal_global_87);
  }
}

void __52__ACCNowPlayingServer_triggerMediaItemArtworkUpdate__block_invoke(id a1, BOOL a2)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__ACCNowPlayingServer_triggerMediaItemArtworkUpdate__block_invoke_cold_2();
  }
}

void __52__ACCNowPlayingServer_triggerMediaItemArtworkUpdate__block_invoke_85(id a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects < 5;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#Now Playing] #Artwork No clients connected, sending default media item artwork...", v5, 2u);
  }

  v4 = platform_nowPlaying_copyDefaultMediaItemArtwork();
  platform_nowPlaying_mediaItemArtworkUpdate(v4);
}

- (void)triggerPlaybackAttributesUpdate
{
  remoteObject = [(ACCNowPlayingServer *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCNowPlayingServer *)self remoteObject];
    [remoteObject2 triggerPlaybackAttributesUpdateWithReply:&__block_literal_global_89];
  }

  else
  {
    remoteObject2 = dispatch_get_global_queue(0, 0);
    dispatch_async(remoteObject2, &__block_literal_global_92);
  }
}

void __54__ACCNowPlayingServer_triggerPlaybackAttributesUpdate__block_invoke(id a1, BOOL a2)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__ACCNowPlayingServer_triggerPlaybackAttributesUpdate__block_invoke_cold_2();
  }
}

void __54__ACCNowPlayingServer_triggerPlaybackAttributesUpdate__block_invoke_90(id a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects < 5;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#Now Playing] No clients connected, sending default playback attributes...", v5, 2u);
  }

  v4 = platform_nowPlaying_copyDefaultPlaybackAttributes();
  platform_nowPlaying_playbackAttributesUpdate(v4);
}

void __92__ACCNowPlayingServer_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke(id a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects < 5;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#Now Playing] No clients connected, sending playback queue list not available...", v4, 2u);
  }

  platform_nowPlaying_playbackQueueListChanged(0);
}

- (void)cancelRequestPlaybackQueueListInfo:(id)info requestID:(id)d
{
  infoCopy = info;
  dCopy = d;
  remoteObject = [(ACCNowPlayingServer *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCNowPlayingServer *)self remoteObject];
    [remoteObject2 cancelRequestPlaybackQueueListInfo:infoCopy requestID:dCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 5;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      remoteObject2 = &_os_log_default;
      v11 = &_os_log_default;
    }

    else
    {
      remoteObject2 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(remoteObject2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = infoCopy;
      v14 = 2112;
      v15 = dCopy;
      _os_log_impl(&_mh_execute_header, remoteObject2, OS_LOG_TYPE_DEFAULT, "[#Now Playing] No clients connected, ignore cancel for accessoryUID %@, requestID %@", &v12, 0x16u);
    }
  }
}

- (void)setPlaybackElapsedTime:(id)time
{
  timeCopy = time;
  remoteObject = [(ACCNowPlayingServer *)self remoteObject];
  [remoteObject setPlaybackElapsedTime:timeCopy withReply:&__block_literal_global_96];
}

void __46__ACCNowPlayingServer_setPlaybackElapsedTime___block_invoke(id a1, BOOL a2)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __46__ACCNowPlayingServer_setPlaybackElapsedTime___block_invoke_cold_2();
  }
}

- (void)setPlaybackQueueIndex:(id)index
{
  indexCopy = index;
  remoteObject = [(ACCNowPlayingServer *)self remoteObject];
  [remoteObject setPlaybackQueueIndex:indexCopy withReply:&__block_literal_global_98];
}

void __45__ACCNowPlayingServer_setPlaybackQueueIndex___block_invoke(id a1, BOOL a2)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __45__ACCNowPlayingServer_setPlaybackQueueIndex___block_invoke_cold_2();
  }
}

- (NSXPCConnection)activeConnection
{
  clientConnections = [(ACCNowPlayingServer *)self clientConnections];
  v4 = [clientConnections count];

  if (v4)
  {
    clientConnections2 = [(ACCNowPlayingServer *)self clientConnections];
    v6 = [clientConnections2 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __35__ACCNowPlayingServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedServer_once != -1)
  {
    dispatch_once(&sharedServer_once, block);
  }

  v2 = sharedServer_sharedInstance;

  return v2;
}

uint64_t __35__ACCNowPlayingServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.now-playing" andFeatureNotification:"com.apple.accessories.now-playing.availability-changed"];

  return _objc_release_x1();
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[#Now Playing] Get remote object: %@", buf, 0xCu);
}

void __58__ACCNowPlayingServer_listener_shouldAcceptNewConnection___block_invoke_73_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[#Now Playing] XPC connection error: %@", &v2, 0xCu);
}

@end