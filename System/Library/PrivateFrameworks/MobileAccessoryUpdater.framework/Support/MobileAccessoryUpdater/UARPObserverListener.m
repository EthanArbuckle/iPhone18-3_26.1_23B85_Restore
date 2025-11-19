@interface UARPObserverListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)xpcConnectionHasEntitlement:(id)a3;
- (UARPObserverListener)initWithManager:(id)a3 dispatchQueue:(id)a4;
- (void)addAccessoryID:(id)a3 assetID:(id)a4;
- (void)addObserver:(id)a3 withEndpoint:(id)a4;
- (void)clearDropboxForModelNumber:(id)a3 withFusing:(id)a4;
- (void)dealloc;
- (void)firmwareUpdateProgressForAccessoryID:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)removeAccessoryID:(id)a3;
- (void)removeObserver:(id)a3;
- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5;
@end

@implementation UARPObserverListener

- (UARPObserverListener)initWithManager:(id)a3 dispatchQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = UARPObserverListener;
  v9 = [(UARPObserverListener *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, a3);
    objc_storeStrong(&v10->_internalQueue, a4);
    v11 = os_log_create("com.apple.accessoryupdater.uarp", "observer");
    xpcLog = v10->_xpcLog;
    v10->_xpcLog = v11;

    v13 = objc_opt_new();
    registeredObservers = v10->_registeredObservers;
    v10->_registeredObservers = v13;

    v15 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accessoryupdater.observer"];
    listener = v10->_listener;
    v10->_listener = v15;

    [(NSXPCListener *)v10->_listener setDelegate:v10];
    [(NSXPCListener *)v10->_listener resume];
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = UARPObserverListener;
  [(UARPObserverListener *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E820;
  block[3] = &unk_100081CC8;
  block[4] = self;
  v10 = v5;
  v11 = &v12;
  v7 = v5;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return internalQueue;
}

- (BOOL)xpcConnectionHasEntitlement:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForEntitlement:@"com.apple.accessoryupdater.launchauhelper.entitled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
  {
    v6 = 1;
  }

  else
  {
    xpcLog = self->_xpcLog;
    if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
    {
      sub_10004F4D4(xpcLog, v4);
    }

    v6 = 0;
  }

  return v6;
}

- (void)addObserver:(id)a3 withEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_registeredObservers objectForKey:v6];
  if (v8)
  {
    xpcLog = self->_xpcLog;
    if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
    {
      sub_10004F560(v6, xpcLog);
    }
  }

  [(NSMutableDictionary *)self->_registeredObservers setObject:v7 forKey:v6];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_registeredObservers objectForKey:v4];
  if (v5)
  {
    xpcLog = self->_xpcLog;
    if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
    {
      sub_10004F5D8(v4, xpcLog);
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_registeredObservers removeObjectForKey:v4];
  }
}

- (void)clearDropboxForModelNumber:(id)a3 withFusing:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = &MGCopyAnswer_ptr;
  v9 = [UARPSupportedAccessory findByAppleModelNumber:v7];
  v10 = [v9 mobileAssetAppleModelNumber];

  v11 = v7;
  if (v10)
  {
    v11 = [v9 mobileAssetAppleModelNumber];
  }

  if (sub_100037FC0(v11, v6))
  {
    v26 = v9;
    v27 = v7;
    v29 = +[AUDeveloperSettingsDatabase sharedDatabase];
    v12 = [v29 accessoriesDictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v30)
    {
      v13 = *v34;
      v28 = *v34;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v31 = *(*(&v33 + 1) + 8 * i);
          v15 = [v12 objectForKeyedSubscript:?];
          v16 = [v15 objectForKeyedSubscript:@"modelNumber"];
          v32 = [v15 objectForKeyedSubscript:@"fusing"];
          v17 = [v8[315] findByAppleModelNumber:v16];
          v18 = [v17 mobileAssetAppleModelNumber];

          if (v18)
          {
            v19 = [v17 mobileAssetAppleModelNumber];

            v16 = v19;
          }

          if ([v16 isEqualToString:v11] && (!v6 || objc_msgSend(v6, "isEqualToString:", v32)))
          {
            v20 = [NSMutableDictionary dictionaryWithDictionary:v15];
            [v20 setObject:0 forKeyedSubscript:@"dropboxVersion"];
            [NSDictionary dictionaryWithDictionary:v20];
            v21 = v12;
            v22 = v11;
            v23 = v8;
            v25 = v24 = v6;
            [v29 addAccessoryWithSerialNumber:v31 info:v25];

            v6 = v24;
            v8 = v23;
            v11 = v22;
            v12 = v21;
            v13 = v28;
          }
        }

        v30 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v30);
    }

    v9 = v26;
    v7 = v27;
  }
}

- (void)addAccessoryID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[UARPObserverListener addAccessoryID:assetID:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F12C;
  block[3] = &unk_1000814D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(internalQueue, block);
}

- (void)removeAccessoryID:(id)a3
{
  v4 = a3;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[UARPObserverListener removeAccessoryID:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002F410;
  v8[3] = &unk_100081438;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(internalQueue, v8);
}

- (void)firmwareUpdateProgressForAccessoryID:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v22 = "[UARPObserverListener firmwareUpdateProgressForAccessoryID:assetID:bytesSent:bytesTotal:]";
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = a5;
    v29 = 2048;
    v30 = a6;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@, bytesSent=%lu, bytesTotal=%lu", buf, 0x34u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F748;
  block[3] = &unk_100081CF0;
  block[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = a5;
  v20 = a6;
  v14 = v11;
  v15 = v10;
  dispatch_async(internalQueue, block);
}

- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v11 = xpcLog;
    *buf = 136315906;
    v20 = "[UARPObserverListener stagingCompleteForAccessoryID:assetID:status:]";
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = UARPFirmwareStagingCompletionStatusToString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@ status=%s", buf, 0x2Au);
  }

  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002FA88;
  v15[3] = &unk_100081D18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = a5;
  v13 = v9;
  v14 = v8;
  dispatch_async(internalQueue, v15);
}

@end