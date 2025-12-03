@interface SHFUPluginMobileAsset
- (SHFUPluginMobileAsset)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options deviceProperties:(id)properties;
- (id)downloadCatalog;
- (id)findLastestAsset:(id *)asset;
- (void)downloadFirmwareWithOptions:(id)options;
- (void)findFirmwareWithOptions:(id)options remote:(BOOL)remote;
@end

@implementation SHFUPluginMobileAsset

- (SHFUPluginMobileAsset)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options deviceProperties:(id)properties
{
  v11.receiver = self;
  v11.super_class = SHFUPluginMobileAsset;
  v7 = [(SHFUPlugin *)&v11 initWithDeviceClass:class delegate:delegate info:info options:options deviceProperties:properties];
  if (v7)
  {
    v8 = [[NSNumber alloc] initWithBool:0];
    searchLocal = v7->_searchLocal;
    v7->_searchLocal = v8;
  }

  return v7;
}

- (id)downloadCatalog
{
  searchLocal = [(SHFUPluginMobileAsset *)self searchLocal];
  bOOLValue = [searchLocal BOOLValue];

  if (bOOLValue)
  {
    v5 = 0;
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_1000130D4;
    v40 = sub_1000130E4;
    v41 = 0;
    objc_initWeak(&location, self);
    v6 = dispatch_semaphore_create(0);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = -1;
    serialQueue = [(SHFUPlugin *)self serialQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000130EC;
    handler[3] = &unk_100024828;
    objc_copyWeak(v30, &location);
    v30[1] = "com.apple.MobileAsset.DownloadsReady";
    v29 = &v31;
    v8 = v6;
    v28 = v8;
    v9 = notify_register_dispatch("com.apple.MobileAsset.DownloadsReady", &v34, serialQueue, handler);

    v10 = objc_alloc_init(MADownloadOptions);
    [v10 setDiscretionary:0];
    [v10 setAllowsCellularAccess:1];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    do
    {
      v11 = dispatch_semaphore_create(0);
      mobileAssetType = [(SHFUPlugin *)self mobileAssetType];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000131D8;
      v17[3] = &unk_100024850;
      v22 = v9;
      v17[4] = self;
      v13 = v8;
      v18 = v13;
      v20 = &v36;
      v21 = &v23;
      v14 = v11;
      v19 = v14;
      [MAAsset startCatalogDownload:mobileAssetType options:v10 then:v17];

      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    }

    while ((v24[3] & 1) != 0);
    v15 = *(v32 + 6);
    if (v15 != -1)
    {
      notify_cancel(v15);
      *(v32 + 6) = -1;
    }

    v5 = v37[5];
    _Block_object_dispose(&v23, 8);

    objc_destroyWeak(v30);
    _Block_object_dispose(&v31, 8);

    objc_destroyWeak(&location);
    _Block_object_dispose(&v36, 8);
  }

  return v5;
}

- (id)findLastestAsset:(id *)asset
{
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100015E20(self);
  }

  if (!asset)
  {
    v24 = 0;
    goto LABEL_15;
  }

  downloadCatalog = [(SHFUPluginMobileAsset *)self downloadCatalog];
  v7 = [MAAssetQuery alloc];
  mobileAssetType = [(SHFUPlugin *)self mobileAssetType];
  v9 = [v7 initWithType:mobileAssetType];

  [v9 returnTypes:2];
  v10 = ASAttributeCompatibilityVersion;
  compatibilityVersion = [(SHFUPlugin *)self compatibilityVersion];
  stringValue = [compatibilityVersion stringValue];
  [v9 addKeyValuePair:v10 with:stringValue];

  queryMetaDataSync = [v9 queryMetaDataSync];
  if ((queryMetaDataSync & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    mobileAssetType2 = [(SHFUPlugin *)self mobileAssetType];
    v15 = [NSString stringWithFormat:@"MobileAsset query failed for %@. MAQueryResult = %ld", mobileAssetType2, queryMetaDataSync];

    v16 = [NSError alloc];
    errorDomain = [(SHFUPlugin *)self errorDomain];
    v49 = NSLocalizedDescriptionKey;
    v50 = v15;
    v18 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v19 = v16;
    v20 = errorDomain;
    v21 = 48;
  }

  else
  {
    logHandle2 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      sub_100015EAC(self);
    }

    results = [v9 results];
    v29 = [results count];

    if (v29)
    {
      logHandle3 = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEBUG))
      {
        sub_100015F38(v9);
      }

      v31 = ASAttributeContentVersion;
      aSAttributeContentVersion = [NSString stringWithFormat:@"SELF.attributes.%@ == %%@.@max.attributes.%@", ASAttributeContentVersion, ASAttributeContentVersion];
      results2 = [v9 results];
      v34 = [NSPredicate predicateWithFormat:aSAttributeContentVersion, results2];

      results3 = [v9 results];
      v36 = [results3 filteredArrayUsingPredicate:v34];

      if ([v36 count])
      {
        v24 = [v36 objectAtIndexedSubscript:0];
        v22 = 0;
      }

      else
      {
        v44 = [NSString stringWithFormat:@"Could not find asset with max %@", v31];
        v41 = [NSError alloc];
        errorDomain2 = [(SHFUPlugin *)self errorDomain];
        v45 = NSLocalizedDescriptionKey;
        v46 = v44;
        v43 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v22 = [v41 initWithDomain:errorDomain2 code:7 userInfo:v43];

        v24 = 0;
      }

      if (v24)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    compatibilityVersion2 = [(SHFUPlugin *)self compatibilityVersion];
    intValue = [compatibilityVersion2 intValue];
    mobileAssetType3 = [(SHFUPlugin *)self mobileAssetType];
    v15 = [NSString stringWithFormat:@"MAQueryResult = %ld. No assets with %@ %d found for domain %@", queryMetaDataSync, v10, intValue, mobileAssetType3];

    v40 = [NSError alloc];
    errorDomain = [(SHFUPlugin *)self errorDomain];
    v47 = NSLocalizedDescriptionKey;
    v48 = v15;
    v18 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v19 = v40;
    v20 = errorDomain;
    v21 = 2;
  }

  v22 = [v19 initWithDomain:v20 code:v21 userInfo:v18];

LABEL_7:
  if (downloadCatalog)
  {
    v23 = downloadCatalog;
  }

  else
  {
    v23 = v22;
  }

  v24 = 0;
  *asset = v23;
LABEL_11:
  logHandle4 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEBUG))
  {
    sub_100015FC4(v24, logHandle4);
  }

LABEL_15:

  return v24;
}

- (void)findFirmwareWithOptions:(id)options remote:(BOOL)remote
{
  remoteCopy = remote;
  optionsCopy = options;
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100016054();
  }

  if (remoteCopy)
  {
    v8 = +[ASAsset nonUserInitiatedDownloadsAllowed]^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [NSNumber numberWithBool:v8];
  [(SHFUPluginMobileAsset *)self setSearchLocal:v9];

  v55 = 0;
  v10 = [(SHFUPluginMobileAsset *)self findLastestAsset:&v55];
  v11 = v55;
  v12 = v11;
  v13 = 0;
  if (v10 && !v11)
  {
    latestFirmwareVersions = [(SHFUPlugin *)self latestFirmwareVersions];
    attributes = [v10 attributes];
    v16 = [attributes objectForKeyedSubscript:@"FirmwareVersions"];
    [latestFirmwareVersions addEntriesFromDictionary:v16];

    delegate = [(SHFUPlugin *)self delegate];
    [(SHFUPlugin *)self batteryCheckDevice];
    v48 = v10;
    v19 = v18 = optionsCopy;
    bOOLValue = [v19 BOOLValue];
    logHandle2 = [(SHFUPlugin *)self logHandle];
    options = [(SHFUPlugin *)self options];
    v23 = [options objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
    errorDomain = [(SHFUPlugin *)self errorDomain];
    v54 = 0;
    v25 = [SHFUDevice getDevices:delegate hasPowerSource:bOOLValue logHandle:logHandle2 registryEntryID:v23 errorDomain:errorDomain error:&v54];
    v12 = v54;

    v13 = v25;
    optionsCopy = v18;
    v10 = v48;
  }

  if (v12)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_28;
  }

  v47 = v13;
  v49 = optionsCopy;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v28 = v13;
  v29 = [v28 countByEnumeratingWithState:&v50 objects:v68 count:16];
  if (!v29)
  {
    v26 = 0;
    v27 = 0;
    v12 = 0;
    goto LABEL_27;
  }

  v30 = v29;
  v31 = *v51;
  while (2)
  {
    for (i = 0; i != v30; i = i + 1)
    {
      if (*v51 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v50 + 1) + 8 * i);
      v34 = [(SHFUPlugin *)self deviceNeedsUpdate:v33];
      if (v34)
      {
        state = [v10 state];
        v12 = 0;
        v26 = 1;
        if (state > 6)
        {
          v27 = 1;
          goto LABEL_27;
        }

        v27 = 1;
        if (((1 << state) & 0x6C) == 0)
        {
          goto LABEL_27;
        }

        getLocalUrl = [v10 getLocalUrl];
        [(SHFUPlugin *)self setFirmwareDirectory:getLocalUrl];
        v12 = 0;
LABEL_26:

        v26 = 0;
        v27 = v34;
        goto LABEL_27;
      }

      latestFirmwareVersions2 = [(SHFUPlugin *)self latestFirmwareVersions];
      v36 = [v33 hardwareVersionSupportedBy:latestFirmwareVersions2];

      if ((v36 & 1) == 0)
      {
        getLocalUrl = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Device has HW revision ID %u which does not match FW files", [v33 hardwareVersion]);
        v39 = [NSError alloc];
        errorDomain2 = [(SHFUPlugin *)self errorDomain];
        v66 = NSLocalizedDescriptionKey;
        v67 = getLocalUrl;
        v41 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v12 = [v39 initWithDomain:errorDomain2 code:44 userInfo:v41];

        goto LABEL_26;
      }
    }

    v30 = [v28 countByEnumeratingWithState:&v50 objects:v68 count:16];
    v26 = 0;
    v27 = 0;
    v12 = 0;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v13 = v47;
  optionsCopy = v49;
LABEL_28:
  logHandle3 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
  {
    targetDevice = [(SHFUPlugin *)self targetDevice];
    *buf = 138413314;
    v57 = targetDevice;
    v58 = 1024;
    v59 = v12 == 0;
    v60 = 1024;
    v61 = v27;
    v62 = 1024;
    v63 = v26;
    v64 = 2112;
    v65 = v12;
    _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "findFirmware: target device %@ successful %d updateAvailable %d needsDownload %d error %@", buf, 0x28u);
  }

  delegate2 = [(SHFUPlugin *)self delegate];
  pluginInfo = [(SHFUPlugin *)self pluginInfo];
  if (v12)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

  [delegate2 didFind:v12 == 0 info:pluginInfo updateAvailable:v27 needsDownload:v26 error:v12];

  if ((v46 & 1) == 0)
  {
    [(SHFUPlugin *)self setError:v12];
    [(SHFUPlugin *)self setTransaction:0];
    [(SHFUPlugin *)self setSerialQueue:0];
  }
}

- (void)downloadFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100016104();
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000130D4;
  v31 = sub_1000130E4;
  v32 = 0;
  obj = 0;
  v6 = [(SHFUPluginMobileAsset *)self findLastestAsset:&obj];
  objc_storeStrong(&v32, obj);
  if (v6 && !v28[5])
  {
    v7 = objc_alloc_init(MADownloadOptions);
    [v7 setDiscretionary:0];
    [v7 setAllowsCellularAccess:1];
    v8 = dispatch_semaphore_create(0);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000142AC;
    v20 = &unk_100024878;
    v24 = &v33;
    selfCopy = self;
    v22 = v6;
    v25 = &v27;
    v9 = v8;
    v23 = v9;
    [v22 startDownload:v7 then:&v17];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  v10 = [(SHFUPlugin *)self logHandle:v17];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    targetDevice = [(SHFUPlugin *)self targetDevice];
    v12 = *(v34 + 24);
    v13 = v28[5];
    *buf = 138412802;
    v38 = targetDevice;
    v39 = 1024;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "downloadFirmware: target device %@ successful %d error %@", buf, 0x1Cu);
  }

  delegate = [(SHFUPlugin *)self delegate];
  v15 = *(v34 + 24);
  pluginInfo = [(SHFUPlugin *)self pluginInfo];
  [delegate didDownload:v15 info:pluginInfo error:v28[5]];

  if ((v34[3] & 1) == 0)
  {
    [(SHFUPlugin *)self setError:v28[5]];
    [(SHFUPlugin *)self setTransaction:0];
    [(SHFUPlugin *)self setSerialQueue:0];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

@end