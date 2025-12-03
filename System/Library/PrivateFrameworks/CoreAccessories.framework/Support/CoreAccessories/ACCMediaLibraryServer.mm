@interface ACCMediaLibraryServer
+ (id)sharedServer;
- (ACCMediaLibraryServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification;
- (BOOL)_isDifferentLibraryList:(id)list otherList:(id)otherList;
- (BOOL)findMediaLibraryInfoSync:(id)sync block:(id)block;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)nexUpdateStartFull:(id)full accessory:(id)accessory;
- (void)accessoryMediaLibraryDetached:(id)detached;
- (void)accessoryMediaLibraryUpdate:(id)update windowPerLibrary:(unsigned int)library;
- (void)confirmPlaylistContentUpdate:(id)update library:(id)library lastRevision:(id)revision;
- (void)confirmUpdate:(id)update library:(id)library lastRevision:(id)revision updateCount:(unsigned int)count;
- (void)dealloc;
- (void)handleMediaLibraryList:(id)list provider:(id)provider xpcConn:(id)conn;
- (void)iterateAttachedConnectionsSync:(id)sync;
- (void)iterateMediaLibraryProviderListSync:(id)sync;
- (void)playAllSongs:(id)songs library:(id)library startItem:(unint64_t)item;
- (void)playCollection:(id)collection library:(id)library collection:(unint64_t)a5 type:(int)type startIndex:(unsigned int)index;
- (void)playCollection:(id)collection library:(id)library collection:(unint64_t)a5 type:(int)type startItem:(unint64_t)item;
- (void)playCurrentSelection:(id)selection library:(id)library;
- (void)playItems:(id)items library:(id)library itemList:(id)list startIndex:(unsigned int)index;
- (void)requestMediaLibraryUpdate:(id)update;
- (void)resetUpdate:(id)update accessory:(id)accessory;
- (void)sendAvailableLibrariesToAccessory:(id)accessory;
- (void)startMediaLibraryUpdate:(id)update library:(id)library lastRevision:(id)revision mediaItemProperties:(unint64_t)properties playlistProperties:(unint64_t)playlistProperties playlistContentStyle:(int)style playlistContentProperties:(unint64_t)contentProperties reqOptions:(unint64_t)self0;
- (void)stopAllMediaLibraryUpdate:(id)update;
- (void)stopMediaLibraryUpdate:(id)update library:(id)library;
@end

@implementation ACCMediaLibraryServer

- (ACCMediaLibraryServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = ACCMediaLibraryServer;
  v7 = [(ACCFeatureServer *)&v18 initWithXPCServiceName:nameCopy andFeatureNotification:notification];
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
    *buf = 138412802;
    v20 = nameCopy;
    v21 = 2080;
    notificationCopy = notification;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initWithXPCServiceName: serviceName='%@' notification='%s' self=%@", buf, 0x20u);
  }

  if (v7)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    mediaLibraryProviderInfoList = v7->_mediaLibraryProviderInfoList;
    v7->_mediaLibraryProviderInfoList = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    mediaLibraryProviderInfoListByProviderUID = v7->_mediaLibraryProviderInfoListByProviderUID;
    v7->_mediaLibraryProviderInfoListByProviderUID = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    registeredAccessoryConnections = v7->_registeredAccessoryConnections;
    v7->_registeredAccessoryConnections = v15;
  }

  return v7;
}

- (void)dealloc
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
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc: self=%@", buf, 0xCu);
  }

  mediaLibraryProviderInfoList = self->_mediaLibraryProviderInfoList;
  self->_mediaLibraryProviderInfoList = 0;

  mediaLibraryProviderInfoListByProviderUID = self->_mediaLibraryProviderInfoListByProviderUID;
  self->_mediaLibraryProviderInfoListByProviderUID = 0;

  registeredAccessoryConnections = self->_registeredAccessoryConnections;
  self->_registeredAccessoryConnections = 0;

  v9.receiver = self;
  v9.super_class = ACCMediaLibraryServer;
  [(ACCFeatureServer *)&v9 dealloc];
}

- (void)iterateAttachedConnectionsSync:(id)sync
{
  syncCopy = sync;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_registeredAccessoryConnections allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(allValues);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 1;
      accessoryUID = [v10 accessoryUID];
      syncCopy[2](syncCopy, accessoryUID, &v12);

      if (v12 != 1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)iterateMediaLibraryProviderListSync:(id)sync
{
  syncCopy = sync;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_mediaLibraryProviderInfoList allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(allValues);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 1;
      syncCopy[2](syncCopy, v10, &v11);
      if (v11 != 1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)findMediaLibraryInfoSync:(id)sync block:(id)block
{
  syncCopy = sync;
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __56__ACCMediaLibraryServer_findMediaLibraryInfoSync_block___block_invoke;
  v11[3] = &unk_100229C68;
  v8 = syncCopy;
  v12 = v8;
  v9 = blockCopy;
  v13 = v9;
  v14 = &v15;
  [(ACCMediaLibraryServer *)self iterateMediaLibraryProviderListSync:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __56__ACCMediaLibraryServer_findMediaLibraryInfoSync_block___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *a3 = 1;
  v8 = v5;
  v6 = [v5 mediaLibraryList];
  v7 = [v6 objectForKey:a1[4]];

  if (v7)
  {
    (*(a1[5] + 16))();
    *a3 = 0;
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (void)sendAvailableLibrariesToAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sendAvailableLibrariesToAccessory: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x2020000000;
  v44 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __59__ACCMediaLibraryServer_sendAvailableLibrariesToAccessory___block_invoke;
  v31[3] = &unk_100229C90;
  p_buf = &buf;
  v8 = accessoryCopy;
  v32 = v8;
  [(ACCMediaLibraryServer *)self iterateMediaLibraryProviderListSync:v31];
  if (gLogObjects && gNumLogObjects >= 5)
  {
    v9 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(&buf + 1) + 24);
    mediaLibraryProviderInfoList = self->_mediaLibraryProviderInfoList;
    *v40 = 138412802;
    *&v40[4] = v8;
    *&v40[12] = 2048;
    *&v40[14] = v11;
    *&v40[22] = 2112;
    v41 = mediaLibraryProviderInfoList;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sendAvailableLibrariesToAccessory: %@ count=%zu _mediaLibraryProviderInfoList=%@", v40, 0x20u);
  }

  v13 = objc_alloc_init(NSMutableArray);
  *v40 = 0;
  *&v40[8] = v40;
  *&v40[16] = 0x2020000000;
  LODWORD(v41) = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __59__ACCMediaLibraryServer_sendAvailableLibrariesToAccessory___block_invoke_75;
  v26[3] = &unk_100229CB8;
  v14 = v8;
  v27 = v14;
  v29 = v40;
  v30 = &buf;
  v15 = v13;
  v28 = v15;
  [(ACCMediaLibraryServer *)self iterateMediaLibraryProviderListSync:v26];
  v16 = +[ACCMediaLibraryServer sharedServer];
  if (gLogObjects && gNumLogObjects >= 5)
  {
    v17 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = *(*(&buf + 1) + 24);
    registeredAccessoryConnections = self->_registeredAccessoryConnections;
    *v34 = 138412802;
    v35 = v14;
    v36 = 2048;
    v37 = v19;
    v38 = 2112;
    v39 = registeredAccessoryConnections;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "sendAvailableLibrariesToAccessory: %@ count=%zu _registeredAccessoryConnections=%@", v34, 0x20u);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __59__ACCMediaLibraryServer_sendAvailableLibrariesToAccessory___block_invoke_77;
  v23[3] = &unk_100229CE0;
  v21 = v14;
  v24 = v21;
  v22 = v15;
  v25 = v22;
  [v16 iterateAttachedConnectionsSync:v23];

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&buf, 8);
}

void __59__ACCMediaLibraryServer_sendAvailableLibrariesToAccessory___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *a3 = 1;
  v6 = [v5 mediaLibraryList];
  *(*(*(a1 + 40) + 8) + 24) += [v6 count];

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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(*(*(a1 + 40) + 8) + 24);
    v12 = [v5 mediaLibraryList];
    v13 = 138412802;
    v14 = v10;
    v15 = 2048;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sendAvailableLibrariesToAccessory: %@ count=%zu mlInfo=%@", &v13, 0x20u);
  }
}

void __59__ACCMediaLibraryServer_sendAvailableLibrariesToAccessory___block_invoke_75(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *a3 = 1;
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
    v9 = a1[4];
    *buf = 138412546;
    v39 = v9;
    v40 = 2112;
    *v41 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendAvailableLibrariesToAccessory: %@ mlInfo=%@", buf, 0x16u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = v5;
  v10 = [v5 mediaLibraryList];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = gLogObjects;
        v18 = gNumLogObjects;
        if (gLogObjects)
        {
          v19 = gNumLogObjects <= 4;
        }

        else
        {
          v19 = 1;
        }

        v20 = !v19;
        if (*(*(a1[7] + 8) + 24) <= *(*(a1[6] + 8) + 24))
        {
          if (v20)
          {
            v28 = *(gLogObjects + 32);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v28 = &_os_log_default;
            v29 = &_os_log_default;
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v30 = a1[4];
            v31 = *(*(a1[6] + 8) + 24);
            v32 = *(*(a1[7] + 8) + 24);
            *buf = 138413058;
            v39 = v30;
            v40 = 1024;
            *v41 = v31;
            *&v41[4] = 2048;
            *&v41[6] = v32;
            v42 = 2112;
            v43 = v16;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "sendAvailableLibrariesToAccessory: %@ index beyond count! %d/%zu libInfo=%@", buf, 0x26u);
          }

          goto LABEL_41;
        }

        if (v20)
        {
          v21 = *(gLogObjects + 32);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v39 = v17;
            v40 = 1024;
            *v41 = v18;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v22 = &_os_log_default;
          v21 = &_os_log_default;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = a1[4];
          v24 = *(*(a1[6] + 8) + 24);
          v25 = *(*(a1[7] + 8) + 24);
          *buf = 138413058;
          v39 = v23;
          v40 = 1024;
          *v41 = v24;
          *&v41[4] = 2048;
          *&v41[6] = v25;
          v42 = 2112;
          v43 = v16;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "sendAvailableLibrariesToAccessory: %@ index=%d/%zu libInfo=%@", buf, 0x26u);
        }

        v26 = a1[5];
        v27 = [v16 copyDict];
        [v26 addObject:v27];

        ++*(*(a1[6] + 8) + 24);
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_41:
}

uint64_t __59__ACCMediaLibraryServer_sendAvailableLibrariesToAccessory___block_invoke_77(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  *a3 = 1;
  v9 = v5;
  if (!*(a1 + 32) || (v7 = [v5 isEqualToString:?], v6 = v9, v7))
  {
    platform_mediaLibrary_infoUpdateHandler(v6, *(a1 + 40));
  }

  return _objc_release_x3();
}

- (void)handleMediaLibraryList:(id)list provider:(id)provider xpcConn:(id)conn
{
  listCopy = list;
  providerCopy = provider;
  connCopy = conn;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 5;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v43 = listCopy;
    v44 = 2112;
    v45 = providerCopy;
    v46 = 2048;
    v47 = [connCopy hash];
    v48 = 2048;
    v49 = [connCopy hash];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handleMediaLibraryList: libraryList=%@ providerUID=%@ xpcConn.hash=%lu(%lxh)", buf, 0x2Au);
  }

  v14 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [connCopy hash]);
  v15 = [(NSMutableDictionary *)self->_mediaLibraryProviderInfoList objectForKey:v14];
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

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = [connCopy hash];
    v19 = [connCopy hash];
    *buf = 138413058;
    v43 = providerCopy;
    v44 = 2048;
    v45 = v18;
    v46 = 2048;
    v47 = v19;
    v48 = 2112;
    v49 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "handleMediaLibraryList: providerUID=%@ xpcConn.hash=%lu(%lxh) mlInfo=%@", buf, 0x2Au);
  }

  if (v15)
  {
    [v15 setProviderUID:providerCopy];
    mediaLibraryList = [v15 mediaLibraryList];
    allValues = [mediaLibraryList allValues];
    v22 = [(ACCMediaLibraryServer *)self _isDifferentLibraryList:allValues otherList:listCopy];

    if (v22)
    {
      v34 = v14;
      selfCopy = self;
      v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(listCopy, "count")}];
      [v15 setMediaLibraryList:0];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = listCopy;
      v24 = listCopy;
      v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v38;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v38 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v37 + 1) + 8 * i);
            mediaLibraryUID = [v29 mediaLibraryUID];
            [v23 setObject:v29 forKey:mediaLibraryUID];
          }

          v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v26);
      }

      [v15 setMediaLibraryList:v23];
      if (gLogObjects && gNumLogObjects >= 5)
      {
        v31 = *(gLogObjects + 32);
        p_isa = &selfCopy->super.super.isa;
      }

      else
      {
        p_isa = &selfCopy->super.super.isa;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v31 = &_os_log_default;
        v33 = &_os_log_default;
      }

      listCopy = v36;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v43 = providerCopy;
        v44 = 2112;
        v45 = v15;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "handleMediaLibraryList: providerUID=%@ mlInfo=%@", buf, 0x16u);
      }

      [p_isa[8] setObject:v15 forKey:providerCopy];
      [p_isa sendAvailableLibrariesToAccessory:0];

      v14 = v34;
    }
  }
}

- (void)requestMediaLibraryUpdate:(id)update
{
  updateCopy = update;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = updateCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "requestMediaLibraryUpdate: accessoryUID=%@", buf, 0xCu);
  }

  v8 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __51__ACCMediaLibraryServer_requestMediaLibraryUpdate___block_invoke;
  v10[3] = &unk_100225A08;
  v10[4] = self;
  v11 = updateCopy;
  v9 = updateCopy;
  dispatch_async(v8, v10);
}

- (void)resetUpdate:(id)update accessory:(id)accessory
{
  updateCopy = update;
  v6 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:accessory];
  v7 = v6;
  if (v6)
  {
    nextUpdateStartFull = [v6 nextUpdateStartFull];
    v9 = [nextUpdateStartFull containsObject:updateCopy];

    if ((v9 & 1) == 0)
    {
      nextUpdateStartFull2 = [v7 nextUpdateStartFull];
      [nextUpdateStartFull2 addObject:updateCopy];
    }
  }
}

- (BOOL)nexUpdateStartFull:(id)full accessory:(id)accessory
{
  fullCopy = full;
  v7 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:accessory];
  v8 = v7;
  if (v7)
  {
    nextUpdateStartFull = [v7 nextUpdateStartFull];
    v10 = [nextUpdateStartFull containsObject:fullCopy];

    nextUpdateStartFull2 = [v8 nextUpdateStartFull];
    [nextUpdateStartFull2 removeObject:fullCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
    v30 = xpcServiceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New XPC connection for: %@", buf, 0xCu);
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCMediaLibraryXPCServerProtocol];
  [connectionCopy setExportedInterface:v12];

  v13 = [[ACCMediaLibraryServerRemote alloc] initWithXPCConnection:connectionCopy];
  [connectionCopy setExportedObject:v13];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCMediaLibraryXPCClientProtocol];
  [connectionCopy setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __60__ACCMediaLibraryServer_listener_shouldAcceptNewConnection___block_invoke;
  v24[3] = &unk_100227718;
  objc_copyWeak(&v25, &from);
  objc_copyWeak(&v26, &location);
  [connectionCopy setInvalidationHandler:v24];
  v15 = objc_alloc_init(_ACCMediaLibraryProviderInfo);
  [(_ACCMediaLibraryProviderInfo *)v15 setConnection:connectionCopy];
  [(_ACCMediaLibraryProviderInfo *)v15 setServerRemote:v13];
  v16 = [connectionCopy remoteObjectProxyWithErrorHandler:&__block_literal_global_34];
  [(_ACCMediaLibraryProviderInfo *)v15 setRemoteObject:v16];

  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [connectionCopy hash]);
  [(NSMutableDictionary *)self->_mediaLibraryProviderInfoList setObject:v15 forKey:v17];
  if (gLogObjects && gNumLogObjects >= 5)
  {
    v18 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v18 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(NSMutableDictionary *)self->_mediaLibraryProviderInfoList count];
    *buf = 134217984;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "There are now %lu MediaLibraryProvider(s).", buf, 0xCu);
  }

  [connectionCopy resume];
  v21 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__ACCMediaLibraryServer_listener_shouldAcceptNewConnection___block_invoke_174;
  block[3] = &unk_100225968;
  block[4] = self;
  dispatch_async(v21, block);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __60__ACCMediaLibraryServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
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
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v16 = 138412290;
    v17 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated! %@", &v16, 0xCu);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setInvalidationHandler:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 hash]);

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 mediaLibraryProviderInfoList];
  [v10 removeObjectForKey:v8];

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
    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v13 mediaLibraryProviderInfoList];
    v15 = [v14 count];
    v16 = 134217984;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "There are now %lu MediaLibraryProvider(s).", &v16, 0xCu);
  }
}

void __60__ACCMediaLibraryServer_listener_shouldAcceptNewConnection___block_invoke_172(id a1, NSError *a2)
{
  v2 = a2;
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
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC connection error!", &v8, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v6 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }
}

void __60__ACCMediaLibraryServer_listener_shouldAcceptNewConnection___block_invoke_174(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 32);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = __60__ACCMediaLibraryServer_listener_shouldAcceptNewConnection___block_invoke_2;
        v9[3] = &unk_100229D28;
        v9[4] = v7;
        [v8 iterateMediaLibraryProviderListSync:v9];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __60__ACCMediaLibraryServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 remoteObject];
  v6 = [*(a1 + 32) accessoryUID];
  [v5 accessoryMediaLibraryAttached:v6 windowPerLibrary:{objc_msgSend(*(a1 + 32), "windowPerLibrary")}];

  *a3 = 1;
}

void __72__ACCMediaLibraryServer_accessoryMediaLibraryAttached_windowPerLibrary___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 remoteObject];
  [v5 accessoryMediaLibraryAttached:*(a1 + 32) windowPerLibrary:*(a1 + 40)];

  *a3 = 1;
}

- (void)accessoryMediaLibraryDetached:(id)detached
{
  detachedCopy = detached;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = detachedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MediaLibrary server, accessoryMediaLibraryDetached: connection %@", buf, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:detachedCopy];

  if (v8)
  {
    [(NSMutableDictionary *)self->_registeredAccessoryConnections removeObjectForKey:detachedCopy];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __55__ACCMediaLibraryServer_accessoryMediaLibraryDetached___block_invoke;
  v10[3] = &unk_100229D28;
  v11 = detachedCopy;
  v9 = detachedCopy;
  [(ACCMediaLibraryServer *)self iterateMediaLibraryProviderListSync:v10];
}

void __55__ACCMediaLibraryServer_accessoryMediaLibraryDetached___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 remoteObject];
  [v5 accessoryMediaLibraryDetached:*(a1 + 32)];

  *a3 = 1;
}

- (void)accessoryMediaLibraryUpdate:(id)update windowPerLibrary:(unsigned int)library
{
  updateCopy = update;
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
    *buf = 138412546;
    v15 = updateCopy;
    v16 = 1024;
    libraryCopy = library;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "MediaLibrary server, accessoryMediaLibraryUpdate: connection %@, windowPerLibrary %d", buf, 0x12u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __70__ACCMediaLibraryServer_accessoryMediaLibraryUpdate_windowPerLibrary___block_invoke;
  v11[3] = &unk_100229D50;
  v12 = updateCopy;
  libraryCopy2 = library;
  v10 = updateCopy;
  [(ACCMediaLibraryServer *)self iterateMediaLibraryProviderListSync:v11];
}

void __70__ACCMediaLibraryServer_accessoryMediaLibraryUpdate_windowPerLibrary___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 remoteObject];
  [v5 accessoryMediaLibraryUpdate:*(a1 + 32) windowPerLibrary:*(a1 + 40)];

  *a3 = 1;
}

- (void)startMediaLibraryUpdate:(id)update library:(id)library lastRevision:(id)revision mediaItemProperties:(unint64_t)properties playlistProperties:(unint64_t)playlistProperties playlistContentStyle:(int)style playlistContentProperties:(unint64_t)contentProperties reqOptions:(unint64_t)self0
{
  updateCopy = update;
  libraryCopy = library;
  revisionCopy = revision;
  if (gLogObjects)
  {
    v19 = gNumLogObjects < 5;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v21 = &_os_log_default;
    v20 = &_os_log_default;
  }

  else
  {
    v21 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138413570;
    v38 = updateCopy;
    v39 = 2112;
    v40 = libraryCopy;
    v41 = 2048;
    propertiesCopy = properties;
    v43 = 2048;
    playlistPropertiesCopy = playlistProperties;
    v45 = 2048;
    contentPropertiesCopy = contentProperties;
    v47 = 2112;
    v48 = revisionCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "MediaLibrary server, startMediaLibraryUpdate: connection %@, library %@, mediaItemProperties=%llxh playlistProperties=%llxh playlistContentProperties=%llxh, lastRevision %@", buf, 0x3Eu);
  }

  v22 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:updateCopy];

  if (v22)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __167__ACCMediaLibraryServer_startMediaLibraryUpdate_library_lastRevision_mediaItemProperties_playlistProperties_playlistContentStyle_playlistContentProperties_reqOptions___block_invoke;
    v28[3] = &unk_100229D78;
    v29 = updateCopy;
    v23 = libraryCopy;
    v30 = v23;
    v31 = revisionCopy;
    propertiesCopy2 = properties;
    styleCopy = style;
    playlistPropertiesCopy2 = playlistProperties;
    contentPropertiesCopy2 = contentProperties;
    optionsCopy = options;
    if (![(ACCMediaLibraryServer *)self findMediaLibraryInfoSync:v23 block:v28])
    {
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
        v27 = &_os_log_default;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "mediaLibrary %@ not found, did not call remoteObject", buf, 0xCu);
      }
    }

    v25 = v29;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v25 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v25 = &_os_log_default;
      v26 = &_os_log_default;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = updateCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "accessory %@ not registered", buf, 0xCu);
    }
  }
}

void __167__ACCMediaLibraryServer_startMediaLibraryUpdate_library_lastRevision_mediaItemProperties_playlistProperties_playlistContentStyle_playlistContentProperties_reqOptions___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 remoteObject];
  v3 = *(a1 + 72);
  [v4 startMediaLibraryUpdate:*(a1 + 32) library:*(a1 + 40) lastRevision:*(a1 + 48) mediaItemProperties:*(a1 + 56) playlistProperties:*(a1 + 64) playlistContentStyle:*(a1 + 88) playlistContentProperties:v3 reqOptions:*(a1 + 80)];
}

- (void)stopMediaLibraryUpdate:(id)update library:(id)library
{
  updateCopy = update;
  libraryCopy = library;
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = updateCopy;
    v20 = 2112;
    v21 = libraryCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MediaLibrary server, stopMediaLibraryUpdate: connection %@, library %@", buf, 0x16u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __56__ACCMediaLibraryServer_stopMediaLibraryUpdate_library___block_invoke;
  v15[3] = &unk_100229DA0;
  v11 = updateCopy;
  v16 = v11;
  v12 = libraryCopy;
  v17 = v12;
  if (![(ACCMediaLibraryServer *)self findMediaLibraryInfoSync:v12 block:v15])
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v13 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "mediaLibrary %@ not found, did not call remoteObject", buf, 0xCu);
    }
  }
}

void __56__ACCMediaLibraryServer_stopMediaLibraryUpdate_library___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObject];
  [v3 stopMediaLibraryUpdate:*(a1 + 32) library:*(a1 + 40)];
}

- (void)stopAllMediaLibraryUpdate:(id)update
{
  updateCopy = update;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCMediaLibraryServer *)updateCopy stopAllMediaLibraryUpdate:v7];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __51__ACCMediaLibraryServer_stopAllMediaLibraryUpdate___block_invoke;
  v9[3] = &unk_100229D28;
  v10 = updateCopy;
  v8 = updateCopy;
  [(ACCMediaLibraryServer *)self iterateMediaLibraryProviderListSync:v9];
}

void __51__ACCMediaLibraryServer_stopAllMediaLibraryUpdate___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 remoteObject];
  [v5 stopAllMediaLibraryUpdate:*(a1 + 32)];

  *a3 = 1;
}

- (void)confirmUpdate:(id)update library:(id)library lastRevision:(id)revision updateCount:(unsigned int)count
{
  updateCopy = update;
  libraryCopy = library;
  revisionCopy = revision;
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

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v27 = updateCopy;
    v28 = 2112;
    v29 = libraryCopy;
    v30 = 2112;
    v31 = revisionCopy;
    v32 = 1024;
    countCopy = count;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "MediaLibrary server, confirmUpdate: accessoryUID %@, library %@, lastRevision %@, count %d", buf, 0x26u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __72__ACCMediaLibraryServer_confirmUpdate_library_lastRevision_updateCount___block_invoke;
  v21[3] = &unk_100229DC8;
  v16 = updateCopy;
  v22 = v16;
  v17 = libraryCopy;
  v23 = v17;
  v18 = revisionCopy;
  v24 = v18;
  countCopy2 = count;
  if (![(ACCMediaLibraryServer *)self findMediaLibraryInfoSync:v17 block:v21])
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v19 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "mediaLibrary %@ not found, did not call remoteObject", buf, 0xCu);
    }
  }
}

void __72__ACCMediaLibraryServer_confirmUpdate_library_lastRevision_updateCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 5;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = 138413058;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MediaLibrary server, confirmUpdate: accessoryUID %@, library %@, lastRevision %@, count %d", &v12, 0x26u);
  }

  v11 = [v3 remoteObject];
  [v11 confirmUpdate:*(a1 + 32) library:*(a1 + 40) lastRevision:*(a1 + 48) updateCount:*(a1 + 56)];
}

- (void)confirmPlaylistContentUpdate:(id)update library:(id)library lastRevision:(id)revision
{
  updateCopy = update;
  libraryCopy = library;
  revisionCopy = revision;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 5;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v24 = updateCopy;
    v25 = 2112;
    v26 = libraryCopy;
    v27 = 2112;
    v28 = revisionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "MediaLibrary server, confirmPlaylistContentUpdate: accessoryUID %@, library %@, lastRevision %@", buf, 0x20u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __75__ACCMediaLibraryServer_confirmPlaylistContentUpdate_library_lastRevision___block_invoke;
  v19[3] = &unk_100229DF0;
  v14 = updateCopy;
  v20 = v14;
  v15 = libraryCopy;
  v21 = v15;
  v16 = revisionCopy;
  v22 = v16;
  if (![(ACCMediaLibraryServer *)self findMediaLibraryInfoSync:v15 block:v19])
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v17 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "mediaLibrary %@ not found, did not call remoteObject", buf, 0xCu);
    }
  }
}

void __75__ACCMediaLibraryServer_confirmPlaylistContentUpdate_library_lastRevision___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 5;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MediaLibrary server, confirmPlaylistContentUpdate: accessoryUID %@, library %@, lastRevision %@", &v11, 0x20u);
  }

  v10 = [v3 remoteObject];
  [v10 confirmPlaylistContentUpdate:a1[4] library:a1[5] lastRevision:a1[6]];
}

- (void)playCurrentSelection:(id)selection library:(id)library
{
  selectionCopy = selection;
  libraryCopy = library;
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
    [ACCMediaLibraryServer playCurrentSelection:library:];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __54__ACCMediaLibraryServer_playCurrentSelection_library___block_invoke;
  v15[3] = &unk_100229DA0;
  v11 = selectionCopy;
  v16 = v11;
  v12 = libraryCopy;
  v17 = v12;
  if (![(ACCMediaLibraryServer *)self findMediaLibraryInfoSync:v12 block:v15])
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v13 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "mediaLibrary %@ not found, did not call remoteObject", buf, 0xCu);
    }
  }
}

void __54__ACCMediaLibraryServer_playCurrentSelection_library___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObject];
  [v3 playCurrentSelection:*(a1 + 32) library:*(a1 + 40)];
}

- (void)playItems:(id)items library:(id)library itemList:(id)list startIndex:(unsigned int)index
{
  itemsCopy = items;
  libraryCopy = library;
  listCopy = list;
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
    *buf = 138413058;
    v27 = itemsCopy;
    v28 = 2112;
    v29 = libraryCopy;
    v30 = 2048;
    v31 = [listCopy count];
    v32 = 1024;
    indexCopy = index;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "MediaLibrary server, playItems: accessoryUID %@, library %@, count %lu, startIndex %d", buf, 0x26u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __63__ACCMediaLibraryServer_playItems_library_itemList_startIndex___block_invoke;
  v21[3] = &unk_100229DC8;
  v16 = itemsCopy;
  v22 = v16;
  v17 = libraryCopy;
  v23 = v17;
  v18 = listCopy;
  v24 = v18;
  indexCopy2 = index;
  if (![(ACCMediaLibraryServer *)self findMediaLibraryInfoSync:v17 block:v21])
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v19 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "mediaLibrary %@ not found, did not call remoteObject", buf, 0xCu);
    }
  }
}

void __63__ACCMediaLibraryServer_playItems_library_itemList_startIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObject];
  [v3 playItems:*(a1 + 32) library:*(a1 + 40) itemList:*(a1 + 48) startIndex:*(a1 + 56)];
}

- (void)playCollection:(id)collection library:(id)library collection:(unint64_t)a5 type:(int)type startItem:(unint64_t)item
{
  collectionCopy = collection;
  libraryCopy = library;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 5;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v16 = &_os_log_default;
    v15 = &_os_log_default;
  }

  else
  {
    v16 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v28 = collectionCopy;
    v29 = 2112;
    v30 = libraryCopy;
    v31 = 2048;
    v32 = a5;
    v33 = 2048;
    typeCopy = type;
    v35 = 2048;
    itemCopy = item;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "MediaLibrary server, playCollection with startItem: accessoryUID %@, library %@, collection %llu, type %ld, startItem %llu", buf, 0x34u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __74__ACCMediaLibraryServer_playCollection_library_collection_type_startItem___block_invoke;
  v21[3] = &unk_100229E18;
  v17 = collectionCopy;
  v22 = v17;
  v18 = libraryCopy;
  v23 = v18;
  v24 = a5;
  typeCopy2 = type;
  itemCopy2 = item;
  if (![(ACCMediaLibraryServer *)self findMediaLibraryInfoSync:v18 block:v21])
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v19 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "mediaLibrary %@ not found, did not call remoteObject", buf, 0xCu);
    }
  }
}

void __74__ACCMediaLibraryServer_playCollection_library_collection_type_startItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObject];
  [v3 playCollection:*(a1 + 32) library:*(a1 + 40) collection:*(a1 + 48) type:*(a1 + 64) startItem:*(a1 + 56)];
}

- (void)playCollection:(id)collection library:(id)library collection:(unint64_t)a5 type:(int)type startIndex:(unsigned int)index
{
  collectionCopy = collection;
  libraryCopy = library;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 5;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v16 = &_os_log_default;
    v15 = &_os_log_default;
  }

  else
  {
    v16 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v28 = collectionCopy;
    v29 = 2112;
    v30 = libraryCopy;
    v31 = 2048;
    v32 = a5;
    v33 = 2048;
    typeCopy = type;
    v35 = 1024;
    indexCopy = index;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "MediaLibrary server, playCollection with startIndex: accessoryUID %@, library %@, collection %llu, type %ld, startIndex %u", buf, 0x30u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __75__ACCMediaLibraryServer_playCollection_library_collection_type_startIndex___block_invoke;
  v21[3] = &unk_100229E40;
  v17 = collectionCopy;
  v22 = v17;
  v18 = libraryCopy;
  v23 = v18;
  v24 = a5;
  typeCopy2 = type;
  indexCopy2 = index;
  if (![(ACCMediaLibraryServer *)self findMediaLibraryInfoSync:v18 block:v21])
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v19 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "mediaLibrary %@ not found, did not call remoteObject", buf, 0xCu);
    }
  }
}

void __75__ACCMediaLibraryServer_playCollection_library_collection_type_startIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObject];
  [v3 playCollection:*(a1 + 32) library:*(a1 + 40) collection:*(a1 + 48) type:*(a1 + 56) startIndex:*(a1 + 60)];
}

- (void)playAllSongs:(id)songs library:(id)library startItem:(unint64_t)item
{
  songsCopy = songs;
  libraryCopy = library;
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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ACCMediaLibraryServer playAllSongs:library:startItem:];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __56__ACCMediaLibraryServer_playAllSongs_library_startItem___block_invoke;
  v17[3] = &unk_100229E68;
  v13 = songsCopy;
  v18 = v13;
  v14 = libraryCopy;
  v19 = v14;
  itemCopy = item;
  if (![(ACCMediaLibraryServer *)self findMediaLibraryInfoSync:v14 block:v17])
  {
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
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "mediaLibrary %@ not found, did not call remoteObject", buf, 0xCu);
    }
  }
}

void __56__ACCMediaLibraryServer_playAllSongs_library_startItem___block_invoke(void *a1, void *a2)
{
  v3 = [a2 remoteObject];
  [v3 playAllSongs:a1[4] library:a1[5] startItem:a1[6]];
}

- (BOOL)_isDifferentLibraryList:(id)list otherList:(id)otherList
{
  listCopy = list;
  otherListCopy = otherList;
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
    *buf = 138412546;
    v42 = listCopy;
    v43 = 2112;
    v44 = otherListCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_isDifferentLibraryList: list1=%@ list2=%@", buf, 0x16u);
  }

  if (listCopy && otherListCopy)
  {
    v10 = objc_alloc_init(NSMutableSet);
    v11 = objc_alloc_init(NSMutableSet);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = listCopy;
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          mediaLibraryUID = [*(*(&v37 + 1) + 8 * i) mediaLibraryUID];
          if (mediaLibraryUID)
          {
            [v10 addObject:mediaLibraryUID];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v14);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = otherListCopy;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          mediaLibraryUID2 = [*(*(&v33 + 1) + 8 * j) mediaLibraryUID];
          if (mediaLibraryUID2)
          {
            [v11 addObject:mediaLibraryUID2];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v47 count:16];
      }

      while (v20);
    }

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
      v27 = &_os_log_default;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v28 = [v10 isEqual:v11];
      *buf = 138412802;
      v42 = v10;
      v43 = 2112;
      v44 = v11;
      v45 = 1024;
      v46 = v28;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "_isDifferentLibraryList: set1=%@ set2=%@ [set1 isEqual:set2]=%d", buf, 0x1Cu);
    }

    v29 = [v10 isEqual:v11]^ 1;
  }

  else
  {
    if (gLogObjects)
    {
      v25 = gNumLogObjects <= 4;
    }

    else
    {
      v25 = 1;
    }

    v26 = !v25;
    if ((listCopy != 0) == (otherListCopy != 0))
    {
      if (v26)
      {
        v10 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v10 = &_os_log_default;
        v31 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_isDifferentLibraryList: return false", buf, 2u);
      }

      LOBYTE(v29) = 0;
    }

    else
    {
      if (v26)
      {
        v10 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v10 = &_os_log_default;
        v30 = &_os_log_default;
      }

      LOBYTE(v29) = 1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_isDifferentLibraryList: return true", buf, 2u);
      }
    }
  }

  return v29;
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37__ACCMediaLibraryServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedServer_once_9 != -1)
  {
    dispatch_once(&sharedServer_once_9, block);
  }

  v2 = sharedServer_sharedInstance_9;

  return v2;
}

uint64_t __37__ACCMediaLibraryServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_9 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.medialibrary" andFeatureNotification:"com.apple.accessories.medialibrary.availability-changed"];

  return _objc_release_x1();
}

- (void)stopAllMediaLibraryUpdate:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "MediaLibrary server, stopAllMediaLibraryUpdate: connection %@", &v2, 0xCu);
}

@end