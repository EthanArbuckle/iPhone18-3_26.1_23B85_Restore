@interface SHFUPluginMobileAsset
- (SHFUPluginMobileAsset)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6 deviceProperties:(id)a7;
- (id)downloadCatalog;
- (id)findLastestAsset:(id *)a3;
- (void)downloadFirmwareWithOptions:(id)a3;
- (void)findFirmwareWithOptions:(id)a3 remote:(BOOL)a4;
@end

@implementation SHFUPluginMobileAsset

- (SHFUPluginMobileAsset)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6 deviceProperties:(id)a7
{
  v11.receiver = self;
  v11.super_class = SHFUPluginMobileAsset;
  v7 = [(SHFUPlugin *)&v11 initWithDeviceClass:a3 delegate:a4 info:a5 options:a6 deviceProperties:a7];
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
  v3 = [(SHFUPluginMobileAsset *)self searchLocal];
  v4 = [v3 BOOLValue];

  if (v4)
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
    v7 = [(SHFUPlugin *)self serialQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000130EC;
    handler[3] = &unk_100024828;
    objc_copyWeak(v30, &location);
    v30[1] = "com.apple.MobileAsset.DownloadsReady";
    v29 = &v31;
    v8 = v6;
    v28 = v8;
    v9 = notify_register_dispatch("com.apple.MobileAsset.DownloadsReady", &v34, v7, handler);

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
      v12 = [(SHFUPlugin *)self mobileAssetType];
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
      [MAAsset startCatalogDownload:v12 options:v10 then:v17];

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

- (id)findLastestAsset:(id *)a3
{
  v5 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100015E20(self);
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_15;
  }

  v6 = [(SHFUPluginMobileAsset *)self downloadCatalog];
  v7 = [MAAssetQuery alloc];
  v8 = [(SHFUPlugin *)self mobileAssetType];
  v9 = [v7 initWithType:v8];

  [v9 returnTypes:2];
  v10 = ASAttributeCompatibilityVersion;
  v11 = [(SHFUPlugin *)self compatibilityVersion];
  v12 = [v11 stringValue];
  [v9 addKeyValuePair:v10 with:v12];

  v13 = [v9 queryMetaDataSync];
  if ((v13 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v14 = [(SHFUPlugin *)self mobileAssetType];
    v15 = [NSString stringWithFormat:@"MobileAsset query failed for %@. MAQueryResult = %ld", v14, v13];

    v16 = [NSError alloc];
    v17 = [(SHFUPlugin *)self errorDomain];
    v49 = NSLocalizedDescriptionKey;
    v50 = v15;
    v18 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v19 = v16;
    v20 = v17;
    v21 = 48;
  }

  else
  {
    v27 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_100015EAC(self);
    }

    v28 = [v9 results];
    v29 = [v28 count];

    if (v29)
    {
      v30 = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        sub_100015F38(v9);
      }

      v31 = ASAttributeContentVersion;
      v32 = [NSString stringWithFormat:@"SELF.attributes.%@ == %%@.@max.attributes.%@", ASAttributeContentVersion, ASAttributeContentVersion];
      v33 = [v9 results];
      v34 = [NSPredicate predicateWithFormat:v32, v33];

      v35 = [v9 results];
      v36 = [v35 filteredArrayUsingPredicate:v34];

      if ([v36 count])
      {
        v24 = [v36 objectAtIndexedSubscript:0];
        v22 = 0;
      }

      else
      {
        v44 = [NSString stringWithFormat:@"Could not find asset with max %@", v31];
        v41 = [NSError alloc];
        v42 = [(SHFUPlugin *)self errorDomain];
        v45 = NSLocalizedDescriptionKey;
        v46 = v44;
        v43 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v22 = [v41 initWithDomain:v42 code:7 userInfo:v43];

        v24 = 0;
      }

      if (v24)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    v37 = [(SHFUPlugin *)self compatibilityVersion];
    v38 = [v37 intValue];
    v39 = [(SHFUPlugin *)self mobileAssetType];
    v15 = [NSString stringWithFormat:@"MAQueryResult = %ld. No assets with %@ %d found for domain %@", v13, v10, v38, v39];

    v40 = [NSError alloc];
    v17 = [(SHFUPlugin *)self errorDomain];
    v47 = NSLocalizedDescriptionKey;
    v48 = v15;
    v18 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v19 = v40;
    v20 = v17;
    v21 = 2;
  }

  v22 = [v19 initWithDomain:v20 code:v21 userInfo:v18];

LABEL_7:
  if (v6)
  {
    v23 = v6;
  }

  else
  {
    v23 = v22;
  }

  v24 = 0;
  *a3 = v23;
LABEL_11:
  v25 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_100015FC4(v24, v25);
  }

LABEL_15:

  return v24;
}

- (void)findFirmwareWithOptions:(id)a3 remote:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100016054();
  }

  if (v4)
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
    v14 = [(SHFUPlugin *)self latestFirmwareVersions];
    v15 = [v10 attributes];
    v16 = [v15 objectForKeyedSubscript:@"FirmwareVersions"];
    [v14 addEntriesFromDictionary:v16];

    v17 = [(SHFUPlugin *)self delegate];
    [(SHFUPlugin *)self batteryCheckDevice];
    v48 = v10;
    v19 = v18 = v6;
    v20 = [v19 BOOLValue];
    v21 = [(SHFUPlugin *)self logHandle];
    v22 = [(SHFUPlugin *)self options];
    v23 = [v22 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
    v24 = [(SHFUPlugin *)self errorDomain];
    v54 = 0;
    v25 = [SHFUDevice getDevices:v17 hasPowerSource:v20 logHandle:v21 registryEntryID:v23 errorDomain:v24 error:&v54];
    v12 = v54;

    v13 = v25;
    v6 = v18;
    v10 = v48;
  }

  if (v12)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_28;
  }

  v47 = v13;
  v49 = v6;
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
        v37 = [v10 state];
        v12 = 0;
        v26 = 1;
        if (v37 > 6)
        {
          v27 = 1;
          goto LABEL_27;
        }

        v27 = 1;
        if (((1 << v37) & 0x6C) == 0)
        {
          goto LABEL_27;
        }

        v38 = [v10 getLocalUrl];
        [(SHFUPlugin *)self setFirmwareDirectory:v38];
        v12 = 0;
LABEL_26:

        v26 = 0;
        v27 = v34;
        goto LABEL_27;
      }

      v35 = [(SHFUPlugin *)self latestFirmwareVersions];
      v36 = [v33 hardwareVersionSupportedBy:v35];

      if ((v36 & 1) == 0)
      {
        v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Device has HW revision ID %u which does not match FW files", [v33 hardwareVersion]);
        v39 = [NSError alloc];
        v40 = [(SHFUPlugin *)self errorDomain];
        v66 = NSLocalizedDescriptionKey;
        v67 = v38;
        v41 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v12 = [v39 initWithDomain:v40 code:44 userInfo:v41];

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
  v6 = v49;
LABEL_28:
  v42 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [(SHFUPlugin *)self targetDevice];
    *buf = 138413314;
    v57 = v43;
    v58 = 1024;
    v59 = v12 == 0;
    v60 = 1024;
    v61 = v27;
    v62 = 1024;
    v63 = v26;
    v64 = 2112;
    v65 = v12;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "findFirmware: target device %@ successful %d updateAvailable %d needsDownload %d error %@", buf, 0x28u);
  }

  v44 = [(SHFUPlugin *)self delegate];
  v45 = [(SHFUPlugin *)self pluginInfo];
  if (v12)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

  [v44 didFind:v12 == 0 info:v45 updateAvailable:v27 needsDownload:v26 error:v12];

  if ((v46 & 1) == 0)
  {
    [(SHFUPlugin *)self setError:v12];
    [(SHFUPlugin *)self setTransaction:0];
    [(SHFUPlugin *)self setSerialQueue:0];
  }
}

- (void)downloadFirmwareWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
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
    v21 = self;
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
    v11 = [(SHFUPlugin *)self targetDevice];
    v12 = *(v34 + 24);
    v13 = v28[5];
    *buf = 138412802;
    v38 = v11;
    v39 = 1024;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "downloadFirmware: target device %@ successful %d error %@", buf, 0x1Cu);
  }

  v14 = [(SHFUPlugin *)self delegate];
  v15 = *(v34 + 24);
  v16 = [(SHFUPlugin *)self pluginInfo];
  [v14 didDownload:v15 info:v16 error:v28[5]];

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