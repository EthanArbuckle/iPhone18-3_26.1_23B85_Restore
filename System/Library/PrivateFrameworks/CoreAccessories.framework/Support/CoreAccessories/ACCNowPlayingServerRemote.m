@interface ACCNowPlayingServerRemote
- (ACCNowPlayingServerRemote)initWithXPCConnection:(id)a3;
- (void)initConnection:(id)a3;
- (void)mediaItemArtworkHasChanged:(id)a3 withReply:(id)a4;
- (void)mediaItemAttributesHaveChanged:(id)a3 withReply:(id)a4;
- (void)playbackAttributesHaveChanged:(id)a3 withReply:(id)a4;
- (void)playbackQueueListChanged;
- (void)playbackQueueListInfoResponse:(id)a3 requestID:(id)a4 info:(id)a5;
@end

@implementation ACCNowPlayingServerRemote

- (ACCNowPlayingServerRemote)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACCNowPlayingServerRemote;
  v6 = [(ACCNowPlayingServerRemote *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_XPCConnection, a3);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)initConnection:(id)a3
{
  v4 = a3;
  v5 = +[ACCNowPlayingServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ACCNowPlayingServerRemote *)self XPCConnection];
    v7 = [v5 performSelector:"shouldAcceptXPCConnection:" withObject:v6] != 0;
  }

  else
  {
    v7 = 0;
  }

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
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Now Playing] Client has called initConnection method!", v14, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v11 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#Now Playing] shouldStayConnected: %d", v14, 8u);
  }

  if (v7)
  {
    v13 = +[ACCNowPlayingServer sharedServer];
    [v13 sendUpdatedSubscriberList];
  }

  v4[2](v4, v7);
}

- (void)mediaItemAttributesHaveChanged:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[#Now Playing] Received mediaItemAttributes update: %@", &v11, 0xCu);
  }

  v10 = platform_nowPlaying_mediaItemAttributesUpdate(v5);
  if (v6)
  {
    v6[2](v6, v10);
  }
}

- (void)mediaItemArtworkHasChanged:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = [v5 length];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[#Now Playing] #Artwork Received mediaItemArtwork update: %lu bytes", &v11, 0xCu);
  }

  v10 = platform_nowPlaying_mediaItemArtworkUpdate(v5);
  if (v6)
  {
    v6[2](v6, v10);
  }
}

- (void)playbackAttributesHaveChanged:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[#Now Playing] Received playbackAttributes update: %@", &v11, 0xCu);
  }

  v10 = platform_nowPlaying_playbackAttributesUpdate(v5);
  if (v6)
  {
    v6[2](v6, v10);
  }
}

- (void)playbackQueueListChanged
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#Now Playing] Received playbackQueueListChanged", v5, 2u);
  }

  platform_nowPlaying_playbackQueueListChanged(1u);
}

- (void)playbackQueueListInfoResponse:(id)a3 requestID:(id)a4 info:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[#Now Playing] Received playbackQueueListInfoResponse: %@ requestID: %@ info: %@", &v13, 0x20u);
  }

  platform_nowPlaying_playbackQueueListInfoResponse(v7, v9);
}

@end