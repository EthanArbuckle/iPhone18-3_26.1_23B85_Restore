@interface ACCNowPlayingServer
+ (id)sharedServer;
- (ACCNowPlayingServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (NSXPCConnection)activeConnection;
- (void)cancelRequestPlaybackQueueListInfo:(id)a3 requestID:(id)a4;
- (void)sendUpdatedSubscriberList;
- (void)setPlaybackElapsedTime:(id)a3;
- (void)setPlaybackQueueIndex:(id)a3;
- (void)triggerMediaItemArtworkUpdate;
- (void)triggerMediaItemAttributesUpdate;
- (void)triggerPlaybackAttributesUpdate;
@end

@implementation ACCNowPlayingServer

- (ACCNowPlayingServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4
{
  v10.receiver = self;
  v10.super_class = ACCNowPlayingServer;
  v4 = [(ACCFeatureServer *)&v10 initWithXPCServiceName:a3 andFeatureNotification:a4];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [v7 setExportedInterface:v12];

  v13 = [[ACCNowPlayingServerRemote alloc] initWithXPCConnection:v7];
  [v7 setExportedObject:v13];

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AccessoryNowPlayingXPCClientProtocol];
  [v7 setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __58__ACCNowPlayingServer_listener_shouldAcceptNewConnection___block_invoke;
  v28[3] = &unk_100225C98;
  objc_copyWeak(&v29, &from);
  v28[4] = self;
  objc_copyWeak(&v30, &location);
  [v7 setInvalidationHandler:v28];
  v15 = [(ACCNowPlayingServer *)self clientConnections];
  [v15 addObject:v7];

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
    v18 = [(ACCNowPlayingServer *)self clientConnections];
    v19 = [v18 count];
    *buf = 134217984;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[#Now Playing] There are now %lu client(s).", buf, 0xCu);
  }

  [v7 resume];
  v20 = [(ACCNowPlayingServer *)self clientConnections];
  v21 = [v20 count] == 1;

  if (v21)
  {
    [(ACCNowPlayingServer *)self setActiveConnection:v7];
    v22 = [(ACCNowPlayingServer *)self activeConnection];
    v23 = [v22 remoteObjectProxyWithErrorHandler:&__block_literal_global_1];
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
      v26 = [(ACCNowPlayingServer *)self remoteObject];
      [(ACCNowPlayingServer *)v26 listener:buf shouldAcceptNewConnection:v24];
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

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [(ACCNowPlayingServer *)self clientConnections];
  if ([v5 count])
  {
    v6 = [(ACCNowPlayingServer *)self clientConnections];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 isEqual:v4];
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

  v6 = [(ACCNowPlayingServer *)self remoteObject];
  v7 = [(ACCFeatureServer *)self subFeatureSubscribers];
  v8 = [v7 allObjects];
  [v6 updateSubscriberList:v8 WithReply:&__block_literal_global_77];
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
  v3 = [(ACCNowPlayingServer *)self remoteObject];

  if (v3)
  {
    v4 = [(ACCNowPlayingServer *)self remoteObject];
    [v4 triggerMediaItemAttributesUpdateWithReply:&__block_literal_global_79];
  }

  else
  {
    v4 = dispatch_get_global_queue(0, 0);
    dispatch_async(v4, &__block_literal_global_82);
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
  v3 = [(ACCNowPlayingServer *)self remoteObject];

  if (v3)
  {
    v4 = [(ACCNowPlayingServer *)self remoteObject];
    [v4 triggerMediaItemArtworkUpdateWithReply:&__block_literal_global_84];
  }

  else
  {
    v4 = dispatch_get_global_queue(0, 0);
    dispatch_async(v4, &__block_literal_global_87);
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
  v3 = [(ACCNowPlayingServer *)self remoteObject];

  if (v3)
  {
    v4 = [(ACCNowPlayingServer *)self remoteObject];
    [v4 triggerPlaybackAttributesUpdateWithReply:&__block_literal_global_89];
  }

  else
  {
    v4 = dispatch_get_global_queue(0, 0);
    dispatch_async(v4, &__block_literal_global_92);
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

- (void)cancelRequestPlaybackQueueListInfo:(id)a3 requestID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACCNowPlayingServer *)self remoteObject];

  if (v8)
  {
    v9 = [(ACCNowPlayingServer *)self remoteObject];
    [v9 cancelRequestPlaybackQueueListInfo:v6 requestID:v7];
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

      v9 = &_os_log_default;
      v11 = &_os_log_default;
    }

    else
    {
      v9 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Now Playing] No clients connected, ignore cancel for accessoryUID %@, requestID %@", &v12, 0x16u);
    }
  }
}

- (void)setPlaybackElapsedTime:(id)a3
{
  v4 = a3;
  v5 = [(ACCNowPlayingServer *)self remoteObject];
  [v5 setPlaybackElapsedTime:v4 withReply:&__block_literal_global_96];
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

- (void)setPlaybackQueueIndex:(id)a3
{
  v4 = a3;
  v5 = [(ACCNowPlayingServer *)self remoteObject];
  [v5 setPlaybackQueueIndex:v4 withReply:&__block_literal_global_98];
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
  v3 = [(ACCNowPlayingServer *)self clientConnections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ACCNowPlayingServer *)self clientConnections];
    v6 = [v5 objectAtIndexedSubscript:0];
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
  block[4] = a1;
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