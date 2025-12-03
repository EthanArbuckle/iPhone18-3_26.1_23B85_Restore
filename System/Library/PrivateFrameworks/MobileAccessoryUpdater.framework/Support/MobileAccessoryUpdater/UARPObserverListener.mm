@interface UARPObserverListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)xpcConnectionHasEntitlement:(id)entitlement;
- (UARPObserverListener)initWithManager:(id)manager dispatchQueue:(id)queue;
- (void)addAccessoryID:(id)d assetID:(id)iD;
- (void)addObserver:(id)observer withEndpoint:(id)endpoint;
- (void)clearDropboxForModelNumber:(id)number withFusing:(id)fusing;
- (void)dealloc;
- (void)firmwareUpdateProgressForAccessoryID:(id)d assetID:(id)iD bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)removeAccessoryID:(id)d;
- (void)removeObserver:(id)observer;
- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status;
@end

@implementation UARPObserverListener

- (UARPObserverListener)initWithManager:(id)manager dispatchQueue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = UARPObserverListener;
  v9 = [(UARPObserverListener *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, manager);
    objc_storeStrong(&v10->_internalQueue, queue);
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
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
  v10 = connectionCopy;
  v11 = &v12;
  v7 = connectionCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return internalQueue;
}

- (BOOL)xpcConnectionHasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v5 = [entitlementCopy valueForEntitlement:@"com.apple.accessoryupdater.launchauhelper.entitled"];
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
      sub_10004F4D4(xpcLog, entitlementCopy);
    }

    v6 = 0;
  }

  return v6;
}

- (void)addObserver:(id)observer withEndpoint:(id)endpoint
{
  observerCopy = observer;
  endpointCopy = endpoint;
  v8 = [(NSMutableDictionary *)self->_registeredObservers objectForKey:observerCopy];
  if (v8)
  {
    xpcLog = self->_xpcLog;
    if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
    {
      sub_10004F560(observerCopy, xpcLog);
    }
  }

  [(NSMutableDictionary *)self->_registeredObservers setObject:endpointCopy forKey:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = [(NSMutableDictionary *)self->_registeredObservers objectForKey:observerCopy];
  if (v5)
  {
    xpcLog = self->_xpcLog;
    if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
    {
      sub_10004F5D8(observerCopy, xpcLog);
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_registeredObservers removeObjectForKey:observerCopy];
  }
}

- (void)clearDropboxForModelNumber:(id)number withFusing:(id)fusing
{
  numberCopy = number;
  fusingCopy = fusing;
  v7 = numberCopy;
  v8 = &MGCopyAnswer_ptr;
  v9 = [UARPSupportedAccessory findByAppleModelNumber:v7];
  mobileAssetAppleModelNumber = [v9 mobileAssetAppleModelNumber];

  mobileAssetAppleModelNumber2 = v7;
  if (mobileAssetAppleModelNumber)
  {
    mobileAssetAppleModelNumber2 = [v9 mobileAssetAppleModelNumber];
  }

  if (sub_100037FC0(mobileAssetAppleModelNumber2, fusingCopy))
  {
    v26 = v9;
    v27 = v7;
    v29 = +[AUDeveloperSettingsDatabase sharedDatabase];
    accessoriesDictionary = [v29 accessoriesDictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = [accessoriesDictionary countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(accessoriesDictionary);
          }

          v31 = *(*(&v33 + 1) + 8 * i);
          v15 = [accessoriesDictionary objectForKeyedSubscript:?];
          v16 = [v15 objectForKeyedSubscript:@"modelNumber"];
          v32 = [v15 objectForKeyedSubscript:@"fusing"];
          v17 = [v8[315] findByAppleModelNumber:v16];
          mobileAssetAppleModelNumber3 = [v17 mobileAssetAppleModelNumber];

          if (mobileAssetAppleModelNumber3)
          {
            mobileAssetAppleModelNumber4 = [v17 mobileAssetAppleModelNumber];

            v16 = mobileAssetAppleModelNumber4;
          }

          if ([v16 isEqualToString:mobileAssetAppleModelNumber2] && (!fusingCopy || objc_msgSend(fusingCopy, "isEqualToString:", v32)))
          {
            v20 = [NSMutableDictionary dictionaryWithDictionary:v15];
            [v20 setObject:0 forKeyedSubscript:@"dropboxVersion"];
            [NSDictionary dictionaryWithDictionary:v20];
            v21 = accessoriesDictionary;
            v22 = mobileAssetAppleModelNumber2;
            v23 = v8;
            v25 = v24 = fusingCopy;
            [v29 addAccessoryWithSerialNumber:v31 info:v25];

            fusingCopy = v24;
            v8 = v23;
            mobileAssetAppleModelNumber2 = v22;
            accessoriesDictionary = v21;
            v13 = v28;
          }
        }

        v30 = [accessoriesDictionary countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v30);
    }

    v9 = v26;
    v7 = v27;
  }
}

- (void)addAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[UARPObserverListener addAccessoryID:assetID:]";
    v17 = 2112;
    v18 = dCopy;
    v19 = 2112;
    v20 = iDCopy;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F12C;
  block[3] = &unk_1000814D8;
  block[4] = self;
  v13 = dCopy;
  v14 = iDCopy;
  v10 = iDCopy;
  v11 = dCopy;
  dispatch_async(internalQueue, block);
}

- (void)removeAccessoryID:(id)d
{
  dCopy = d;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[UARPObserverListener removeAccessoryID:]";
    v12 = 2112;
    v13 = dCopy;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002F410;
  v8[3] = &unk_100081438;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(internalQueue, v8);
}

- (void)firmwareUpdateProgressForAccessoryID:(id)d assetID:(id)iD bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  dCopy = d;
  iDCopy = iD;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v22 = "[UARPObserverListener firmwareUpdateProgressForAccessoryID:assetID:bytesSent:bytesTotal:]";
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = iDCopy;
    v27 = 2048;
    sentCopy = sent;
    v29 = 2048;
    totalCopy = total;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@, bytesSent=%lu, bytesTotal=%lu", buf, 0x34u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F748;
  block[3] = &unk_100081CF0;
  block[4] = self;
  v17 = dCopy;
  v18 = iDCopy;
  sentCopy2 = sent;
  totalCopy2 = total;
  v14 = iDCopy;
  v15 = dCopy;
  dispatch_async(internalQueue, block);
}

- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status
{
  dCopy = d;
  iDCopy = iD;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v11 = xpcLog;
    *buf = 136315906;
    v20 = "[UARPObserverListener stagingCompleteForAccessoryID:assetID:status:]";
    v21 = 2112;
    v22 = dCopy;
    v23 = 2112;
    v24 = iDCopy;
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
  v16 = dCopy;
  v17 = iDCopy;
  statusCopy = status;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_async(internalQueue, v15);
}

@end