@interface ACCMediaLibraryServerRemote
- (ACCMediaLibraryServerRemote)initWithXPCConnection:(id)a3;
- (void)initConnection:(id)a3;
- (void)notify:(id)a3 stateChange:(int)a4 enabled:(BOOL)a5;
- (void)notifyAvailableLibraries:(id)a3 provider:(id)a4;
- (void)resetUpdate:(id)a3 accessory:(id)a4;
- (void)update:(id)a3 revision:(id)a4 content:(id)a5 accessory:(id)a6;
- (void)update:(id)a3 updates:(id)a4 accessory:(id)a5;
@end

@implementation ACCMediaLibraryServerRemote

- (ACCMediaLibraryServerRemote)initWithXPCConnection:(id)a3
{
  v5 = a3;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = [v5 hash];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "initWithXPCConnection: XPCConnection=%lu", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = ACCMediaLibraryServerRemote;
  v9 = [(ACCMediaLibraryServerRemote *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (v5)
    {
      objc_storeStrong(&v9->_XPCConnection, a3);
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)initConnection:(id)a3
{
  v4 = a3;
  v5 = +[ACCMediaLibraryServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ACCMediaLibraryServerRemote *)self XPCConnection];
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
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client has called initConnection method!", v14, 2u);
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
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "shouldStayConnected: %d", v14, 8u);
  }

  if (v7)
  {
    v13 = +[ACCMediaLibraryServer sharedServer];
    [v13 sendUpdatedSubscriberList];
  }

  v4[2](v4, v7);
}

- (void)notifyAvailableLibraries:(id)a3 provider:(id)a4
{
  v5 = a3;
  v22 = a4;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received notifyAvailableLibrarie mediaLibraries: %@", buf, 0xCu);
  }

  v23 = [v5 count];
  v9 = objc_alloc_init(NSMutableArray);
  v10 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v25;
LABEL_13:
    v16 = 0;
    if (v23 >= v14)
    {
      v17 = &v23[-v14];
    }

    else
    {
      v17 = 0;
    }

    while (1)
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(v11);
      }

      if (v17 == v16)
      {
        break;
      }

      v18 = [[ACCMediaLibraryUpdateLibraryInfo alloc] initWithDict:*(*(&v24 + 1) + 8 * v16)];
      [v9 addObject:v18];
      v19 = [(ACCMediaLibraryUpdateLibraryInfo *)v18 copyDict];
      [v10 addObject:v19];

      ++v14;
      if (v13 == ++v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  v20 = +[ACCMediaLibraryServer sharedServer];
  [v20 handleMediaLibraryList:v9 provider:v22 xpcConn:self->_XPCConnection];
}

- (void)notify:(id)a3 stateChange:(int)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
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
    *buf = 134218240;
    v18 = a4;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received notifyStateChange: statechange: %ld : %d", buf, 0x12u);
  }

  v11 = +[ACCMediaLibraryServer sharedServer];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __58__ACCMediaLibraryServerRemote_notify_stateChange_enabled___block_invoke;
  v13[3] = &unk_100229570;
  v14 = v7;
  v15 = a4;
  v16 = v5;
  v12 = v7;
  [v11 iterateAttachedConnectionsSync:v13];
}

unint64_t __58__ACCMediaLibraryServerRemote_notify_stateChange_enabled___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = platform_mediaLibrary_libraryStateUpdateHandler(a2, *(a1 + 32), *(a1 + 40), *(a1 + 44));
  *a3 = 1;
  return result;
}

- (void)update:(id)a3 updates:(id)a4 accessory:(id)a5
{
  v26 = a3;
  v7 = a4;
  v25 = a5;
  v24 = [v7 count];
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = v25;
    v33 = 2112;
    v34 = v26;
    v35 = 2048;
    v36 = v24;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MediaLibrary server remote update:updates:accessory: accessoryUID %@, library %@, count=%zu", buf, 0x20u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = gLogObjects;
        v19 = gNumLogObjects;
        if (gLogObjects)
        {
          v20 = gNumLogObjects < 5;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v32 = v18;
            v33 = 1024;
            LODWORD(v34) = v19;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v21 = &_os_log_default;
          v22 = &_os_log_default;
        }

        else
        {
          v22 = *(gLogObjects + 32);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413314;
          v32 = v25;
          v33 = 2112;
          v34 = v26;
          v35 = 2048;
          v36 = v14;
          v37 = 2048;
          v38 = v24;
          v39 = 2112;
          v40 = v17;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "MediaLibrary server remote update:updates:accessory: accessoryUID %@, library %@, index=%zu / count=%zu info=%@", buf, 0x34u);
        }

        ++v14;
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v13);
  }

  v23 = +[ACCMediaLibraryServer sharedServer];
  platform_mediaLibrary_updateHandler(v25, v26, [v23 nexUpdateStartFull:v26 accessory:v25], v11);
}

- (void)update:(id)a3 revision:(id)a4 content:(id)a5 accessory:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 5;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v15 = &_os_log_default;
    v14 = &_os_log_default;
  }

  else
  {
    v15 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138413058;
    v22 = v12;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "MediaLibrary server remote update:revision:content:accessory: accessory=%@ library=%@ revision=%@ infoDict=%@", &v21, 0x2Au);
  }

  v16 = [v11 objectForKey:@"ACCMediaLibraryUpdatePlaylistContentStyle"];
  v17 = [v16 unsignedCharValue];

  v18 = [v11 objectForKey:@"ACCMediaLibraryUpdatePlaylistPersistentID"];
  v19 = [v18 unsignedLongLongValue];

  v20 = [v11 objectForKey:@"ACCMediaLibraryUpdatePlaylistItemList"];
  platform_mediaLibrary_updatePlaylistContentHandler(v12, v9, v10, v19, v17, v20);
}

- (void)resetUpdate:(id)a3 accessory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ACCMediaLibraryServer sharedServer];
  [v7 resetUpdate:v6 accessory:v5];
}

@end