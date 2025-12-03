@interface UARPMobileAssetManager
- (BOOL)_updateFusingforAccessory:(id)accessory;
- (BOOL)performFirmwareAssetQuery:(id)query;
- (BOOL)performIsRoamingEnabledCheck;
- (BOOL)updateAssetSettingsForAccessory:(id)accessory checkForUpdate:(BOOL)update automaticUpdatesDisabled:(BOOL *)disabled;
- (UARPMobileAssetManager)initWithManager:(id)manager queue:(id)queue;
- (id)assetWithMaxVersion:(id)version;
- (id)getAssetBundle:(id)bundle;
- (id)getAssetVersionForMAAsset:(id)asset;
- (id)profileAssetOverrideSettings;
- (int64_t)downloadFirmwareForAccessory:(id)accessory assetID:(id)d mobileAsset:(id)asset;
- (int64_t)downloadRemoteFirmwareForAccessory:(id)accessory assetID:(id)d mobileAsset:(id)asset;
- (int64_t)performDownload:(id)download accessory:(id)accessory assetID:(id)d supplementalAsset:(BOOL)asset;
- (int64_t)performRemoteQueryForAccessory:(id)accessory;
- (int64_t)uarpAssetLocationType:(unint64_t)type;
- (void)_mergePartnerAccessoriesInAssetSettings:(id)settings;
- (void)cleanupAssetCache;
- (void)dealloc;
- (void)handleFirmwareAssetQueryCompletion:(id)completion result:(int64_t)result forAccessory:(id)accessory downstreamAppleModelNumber:(id)number;
- (void)handleMobileAssetDownloadCompletion:(id)completion status:(int64_t)status accessory:(id)accessory assetID:(id)d;
- (void)handleSupplementalAssetDownloadCompletion:(id)completion result:(int64_t)result forAccessory:(id)accessory;
- (void)handleSupplementalAssetQueryCompletion:(id)completion result:(int64_t)result forAccessory:(id)accessory;
- (void)notifyFirmwareUpdateAvailabilityStatus:(int64_t)status accessory:(id)accessory downstreamAppleModelNumber:(id)number;
- (void)performQuery:(id)query assetType:(id)type supplementalAsset:(BOOL)asset downstreamAppleModelNumber:(id)number;
- (void)performRemoteDownstreamAssetQuery:(id)query appleModelNumbers:(id)numbers;
- (void)performRemoteSupplementalAssetQuery:(id)query supplementalAssets:(id)assets;
- (void)updateAccessoryInfoInDatabaseIfNeeded:(id)needed serialNumber:(id)number accessory:(id)accessory updatePartnerSerialNumbers:(BOOL)numbers;
- (void)updateSettingsDatabaseForAccessory:(id)accessory;
@end

@implementation UARPMobileAssetManager

- (UARPMobileAssetManager)initWithManager:(id)manager queue:(id)queue
{
  v8.receiver = self;
  v8.super_class = UARPMobileAssetManager;
  v6 = [(UARPMobileAssetManager *)&v8 init];
  if (v6)
  {
    v6->_log = os_log_create("com.apple.accessoryupdater.uarp", "mobileAssetManager");
    v6->_assetManager = manager;
    v6->_queue = queue;
    v6->_delegateQueue = dispatch_queue_create("com.apple.aam.uarpMobileAssetManager.queue", 0);
    [(UARPMobileAssetManager *)v6 cleanupAssetCache];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPMobileAssetManager;
  [(UARPMobileAssetManager *)&v3 dealloc];
}

- (void)cleanupAssetCache
{
  v3 = objc_opt_new();
  v4 = InternalStorageDirectoryPath();
  v5 = [NSString stringWithFormat:@"%@A", v4];
  v6 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtPath:"enumeratorAtPath:", v4];
  nextObject = [(NSDirectoryEnumerator *)v6 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v35[0] = v4;
      v35[1] = nextObject2;
      v9 = [NSString pathWithComponents:[NSArray arrayWithObjects:v35 count:2]];
      if ([(NSString *)v9 hasPrefix:v5])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = nextObject2;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Removing legacy mobile asset download at %@", buf, 0xCu);
        }

        [v3 addObject:v9];
      }

      nextObject2 = [(NSDirectoryEnumerator *)v6 nextObject];
    }

    while (nextObject2);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v3);
        }

        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:*(*(&v27 + 1) + 8 * i), 0];
      }

      v12 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  [v3 removeAllObjects];
  v15 = [+[NSString stringWithFormat:](NSString stringByStandardizingPath:@"%@/%s"];
  v16 = sub_100019CA0(v15, 0, 2592000.0);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * j);
        v22 = self->_log;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Removing current mobile asset download at %@", buf, 0xCu);
        }

        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v21, 0];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }
}

- (int64_t)downloadFirmwareForAccessory:(id)accessory assetID:(id)d mobileAsset:(id)asset
{
  if (asset)
  {
    return [(UARPMobileAssetManager *)self downloadRemoteFirmwareForAccessory:accessory assetID:d mobileAsset:?];
  }

  else
  {
    return 4;
  }
}

- (void)updateSettingsDatabaseForAccessory:(id)accessory
{
  if ([+[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory findByAppleModelNumber:{objc_msgSend(objc_msgSend(accessory, "accessoryID"), "modelNumber")), "supportsInternalSettings"}])
  {
    v5 = 0;
    [(UARPMobileAssetManager *)self updateAssetSettingsForAccessory:accessory checkForUpdate:0 automaticUpdatesDisabled:&v5];
  }
}

- (BOOL)performIsRoamingEnabledCheck
{
  v10 = 0;
  if (dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 16))
  {
    v3 = objc_alloc_init(CoreTelephonyClient);
    v4 = v3;
    if (v3 && (v5 = [v3 getCurrentDataServiceDescriptorSync:&v10]) != 0)
    {
      v6 = [v4 getInternationalDataAccessSync:v5 error:&v10];
    }

    else
    {
      v6 = 0;
    }

    v7 = v10;
    if (v10)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Failed to get international data status %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  return v6;
}

- (id)profileAssetOverrideSettings
{
  v3 = [NSURL fileURLWithPath:@"/Library/Managed Preferences/mobile/com.apple.AUDeveloperSettings.plist"];
  v17 = 0;
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3 error:&v17];
  if (!v4)
  {
    v10 = v17;
    if (v17)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v19 = "[UARPMobileAssetManager(Query) profileAssetOverrideSettings]";
        v20 = 2114;
        v21 = v3;
        v22 = 2114;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Failed to read managedPrefs at %{public}@ error %{public}@", buf, 0x20u);
      }
    }

    return 0;
  }

  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:@"models"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100053248();
    }

    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v5 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_1000532BC();
          }

          return 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (int64_t)uarpAssetLocationType:(unint64_t)type
{
  v3 = 13;
  if (type == 7)
  {
    v3 = 11;
  }

  if (type == 6)
  {
    v3 = 14;
  }

  if ((type & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v4 = 11;
  }

  else
  {
    v4 = v3;
  }

  if (type >= 2)
  {
    return v4;
  }

  else
  {
    return 12;
  }
}

- (BOOL)_updateFusingforAccessory:(id)accessory
{
  v5 = +[AUDeveloperSettingsDatabase sharedDatabase];
  v6 = [objc_msgSend(v5 "accessoriesDictionary")];
  if (v6)
  {
    v7 = v6;
    v8 = +[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory, "findByAppleModelNumber:", [objc_msgSend(accessory "accessoryID")]);
    if (![v8 fusingOverrideUnfused] || (objc_msgSend(objc_msgSend(objc_msgSend(accessory, "accessoryID"), "hwFusingType"), "isEqualToString:", @"unfused") & 1) == 0)
    {
      v9 = [v7 mutableCopy];
      v10 = [v9 objectForKeyedSubscript:@"fusing"];
      v11 = [v9 objectForKeyedSubscript:?];
      v12 = [objc_msgSend(objc_msgSend(accessory "accessoryID")];
      v13 = v12 != 0;
      if (!v12)
      {
LABEL_24:

        return v13;
      }

      v22 = v11;
      if ([objc_msgSend(objc_msgSend(accessory "accessoryID")])
      {
        v14 = 1;
      }

      else if ([objc_msgSend(objc_msgSend(accessory "accessoryID")])
      {
        v14 = 0;
      }

      else
      {
        if (![objc_msgSend(objc_msgSend(accessory "accessoryID")])
        {
          goto LABEL_15;
        }

        v14 = 2;
      }

      [v9 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004EB4(v14)), @"fusing"}];
LABEL_15:
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        accessoryID = [accessory accessoryID];
        v25 = 2114;
        v26 = v10;
        v27 = 2114;
        v28 = [v9 objectForKeyedSubscript:@"fusing"];
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updating HW Fusing for %{public}@, from %{public}@ to %{public}@", buf, 0x20u);
      }

      if (MGGetBoolAnswer() && ([objc_msgSend(objc_msgSend(accessory "accessoryID")] & 1) == 0)
      {
        [v9 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004FFC(0)), @"assetLocation"}];
        v17 = 0;
        if (![objc_msgSend(v8 "supplementalAssets")])
        {
          goto LABEL_21;
        }
      }

      else
      {
        v17 = 2;
        [v9 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004FFC(2uLL)), @"assetLocation"}];
        if (![objc_msgSend(v8 "supplementalAssets")])
        {
LABEL_21:
          v18 = self->_log;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            accessoryID2 = [accessory accessoryID];
            v20 = [v9 objectForKeyedSubscript:@"assetLocation"];
            *buf = 138543874;
            accessoryID = accessoryID2;
            v25 = 2114;
            v26 = v22;
            v27 = 2114;
            v28 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating Asset Location for %{public}@, from %{public}@ to %{public}@", buf, 0x20u);
          }

          [v5 addAccessoryWithSerialNumber:objc_msgSend(objc_msgSend(accessory info:{"accessoryID"), "serialNumber"), +[NSDictionary dictionaryWithDictionary:](NSDictionary, "dictionaryWithDictionary:", v9)}];
          goto LABEL_24;
        }
      }

      [v9 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004FFC(v17)), @"supplementalAssetLocation"}];
      goto LABEL_21;
    }
  }

  else
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      accessoryID = [accessory accessoryID];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not updating fusing for %@ no Entry in Database", buf, 0xCu);
    }
  }

  return 0;
}

- (void)_mergePartnerAccessoriesInAssetSettings:(id)settings
{
  v4 = [(UARPMobileAssetManager *)self _updateFusingforAccessory:?];
  v36 = [objc_msgSend(settings "accessoryID")];
  if (!v36)
  {
    return;
  }

  v35 = +[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory, "findByAppleModelNumber:", [objc_msgSend(settings "accessoryID")]);
  v38 = +[AUDeveloperSettingsDatabase sharedDatabase];
  v5 = [objc_msgSend(v38 "accessoriesDictionary")];
  v6 = [objc_msgSend(settings "accessoryID")];
  HIDWORD(v31) = v4;
  if (![v6 count])
  {
    v6 = sub_100005678([objc_msgSend(settings "accessoryID")]);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v45 = v6;
      v46 = 2114;
      accessoryID = [settings accessoryID];
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Found Partner Serial Numbers updated to %{public}@ for accessory %{public}@", buf, 0x16u);
    }
  }

  v34 = v5;
  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    accessoryID2 = [settings accessoryID];
    *buf = 138543618;
    v45 = v6;
    v46 = 2114;
    accessoryID = accessoryID2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using reported Partner Serial Numbers %{public}@ for accessory %{public}@", buf, 0x16u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v6;
  LODWORD(v31) = v5 == 0;
  v11 = [v6 countByEnumeratingWithState:&v39 objects:v43 count:{16, v31}];
  if (!v11)
  {
LABEL_25:
    if (v34)
    {
      return;
    }

    goto LABEL_46;
  }

  v12 = v11;
  v13 = *v40;
LABEL_9:
  v14 = 0;
  while (1)
  {
    if (*v40 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v39 + 1) + 8 * v14);
    v16 = [objc_msgSend(v38 "accessoriesDictionary")];
    v17 = [v16 objectForKey:@"fusing"];
    if (v17)
    {
      if (![v15 isEqualToString:{objc_msgSend(objc_msgSend(settings, "accessoryID"), "serialNumber")}])
      {
        break;
      }
    }

    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v45 = v15;
      v46 = 2114;
      accessoryID = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unexpected Accessory Entry for %{public}@ with fusing %{public}@", buf, 0x16u);
    }

LABEL_23:
    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v12)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  if ([v17 caseInsensitiveCompare:v36] && ((objc_msgSend(v36, "isEqualToString:", @"prod") & 1) != 0 || !objc_msgSend(v17, "caseInsensitiveCompare:", @"prod")))
  {
    if (([v35 supportsVersions] & 1) == 0)
    {
      v19 = [v16 objectForKeyedSubscript:@"name"];
      v20 = self->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [objc_msgSend(settings "accessoryID")];
        *buf = 138412546;
        v45 = v21;
        v46 = 2112;
        accessoryID = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Overriding friendly name %@, from Partner Accessory %@", buf, 0x16u);
      }

      [objc_msgSend(settings "accessoryID")];
    }

    goto LABEL_23;
  }

  v22 = [v16 objectForKeyedSubscript:@"partnerSerialNumbers"];
  v23 = [v34 objectForKeyedSubscript:@"partnerSerialNumbers"];
  v24 = +[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory, "findByAppleModelNumber:", [v16 objectForKey:@"modelNumber"]);
  if (v24)
  {
    v25 = v32;
    if (([v24 supportsVersions] & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100053330();
      }

      v22 = 0;
    }
  }

  else
  {
    v25 = v32;
  }

  if ((v23 == 0) | v33 & 1 && (v22 || ![objc_msgSend(settings "accessoryID")]))
  {
    v25 = 0;
    v26 = v15;
    v15 = [objc_msgSend(settings "accessoryID")];
  }

  else
  {
    v26 = [objc_msgSend(settings "accessoryID")];
  }

  v27 = self->_log;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v45 = v26;
    v46 = 2112;
    accessoryID = v15;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Keeping Entry for %@, instead of %@", buf, 0x16u);
  }

  if (!v15)
  {
    if (!v25)
    {
      return;
    }

LABEL_46:
    v29 = self->_log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      accessoryID3 = [settings accessoryID];
      *buf = 138412290;
      v45 = accessoryID3;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Added Entry for %@ in AUDeveloperSettingsDatabase", buf, 0xCu);
    }

    -[UARPMobileAssetManager updateAccessoryInfoInDatabaseIfNeeded:serialNumber:accessory:updatePartnerSerialNumbers:](self, "updateAccessoryInfoInDatabaseIfNeeded:serialNumber:accessory:updatePartnerSerialNumbers:", 0, [objc_msgSend(settings "accessoryID")], settings, 1);
    [settings checkDropbox];
    return;
  }

  v28 = self->_log;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v15;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Removing Entry from AUDeveloperSettingsDatabase with serialNumber %@", buf, 0xCu);
  }

  [v38 removeAccessoryWithSerialNumber:v15];
  if (v25)
  {
    goto LABEL_46;
  }
}

- (BOOL)updateAssetSettingsForAccessory:(id)accessory checkForUpdate:(BOOL)update automaticUpdatesDisabled:(BOOL *)disabled
{
  updateCopy = update;
  *disabled = 0;
  if (![objc_msgSend(accessory "accessoryID")])
  {
    v15 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v15)
    {
      return v15;
    }

    sub_10005354C(accessory);
    goto LABEL_43;
  }

  v36 = updateCopy;
  [(UARPMobileAssetManager *)self _mergePartnerAccessoriesInAssetSettings:accessory];
  sub_1000065C4([objc_msgSend(accessory "accessoryID")]);
  v9 = +[AUDeveloperSettingsDatabase sharedDatabase];
  selfCopy = self;
  v11 = [objc_msgSend(v9 "accessoriesDictionary")];
  disabledCopy = disabled;
  accessoryCopy = accessory;
  selfCopy2 = self;
  if (v11)
  {
    log = self->_log;
    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = [objc_msgSend(accessory "accessoryID")];
      *&buf[12] = 2112;
      *&buf[14] = sub_100032D90(v11, 0);
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Entry found in AUDeveloperSettingsDatabase Accessory:%@ assetLocation:%@", buf, 0x16u);
    }

    [v11 objectForKeyedSubscript:@"modelNumber"];
    v13 = [objc_msgSend(accessory "accessoryID")];
    v14 = v11;
LABEL_6:
    [(os_log_t *)selfCopy2 updateAccessoryInfoInDatabaseIfNeeded:v11 serialNumber:v13 accessory:accessoryCopy updatePartnerSerialNumbers:v14 != 0];
    v11 = [objc_msgSend(v9 "accessoriesDictionary")];
    goto LABEL_32;
  }

  v16 = [objc_msgSend(accessory "accessoryID")];
  v17 = [objc_msgSend(accessory "accessoryID")];
  if (![v17 count])
  {
    v17 = sub_100005678([objc_msgSend(accessory "accessoryID")]);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v18)
  {
    v19 = *v42;
LABEL_13:
    v20 = 0;
    while (1)
    {
      if (*v42 != v19)
      {
        objc_enumerationMutation(v17);
      }

      v13 = *(*(&v41 + 1) + 8 * v20);
      v21 = [objc_msgSend(objc_msgSend(v9 "accessoriesDictionary")];
      if (v21)
      {
        if (([v13 isEqualToString:{objc_msgSend(objc_msgSend(accessoryCopy, "accessoryID"), "serialNumber")}] & 1) == 0 && (!objc_msgSend(v21, "caseInsensitiveCompare:", v16) || (objc_msgSend(v16, "isEqualToString:", @"prod") & 1) == 0 && objc_msgSend(v21, "caseInsensitiveCompare:", @"prod")))
        {
          break;
        }
      }

      if (v18 == ++v20)
      {
        v18 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v18)
        {
          goto LABEL_13;
        }

        goto LABEL_29;
      }
    }

    sub_1000065C4(v13);
    v11 = [objc_msgSend(v9 "accessoriesDictionary")];
    if (!v11)
    {
      goto LABEL_29;
    }

    v22 = selfCopy2[1];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_100032D90(v11, 0);
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Entry found in AUDeveloperSettingsDatabase Partner Accessory:%@ assetLocation:%@", buf, 0x16u);
    }

    v24 = [objc_msgSend(objc_msgSend(accessoryCopy "accessoryID")];
    v14 = 0;
    if (v24)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_29:
    if (os_log_type_enabled(selfCopy2[1], OS_LOG_TYPE_ERROR))
    {
      sub_1000533A4(accessoryCopy);
    }

    v11 = 0;
    *disabledCopy = 1;
  }

LABEL_32:
  if (sub_100005DF0([accessoryCopy accessoryID]))
  {
    v25 = selfCopy2[1];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [accessoryCopy identifier];
      *buf = 138412290;
      *&buf[4] = identifier;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Entry found in AUDeveloperSettingsDatabase Accessory:%@ with OTA Update disabled, not attempting update", buf, 0xCu);
    }

    *disabledCopy = 1;
  }

  v27 = [v11 objectForKeyedSubscript:@"fusing"];
  v28 = disabledCopy;
  if (!v27 || (v28 = disabledCopy, [v27 isEqualToString:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", sub_100004EB4(3uLL))}]))
  {
    if (os_log_type_enabled(selfCopy2[1], OS_LOG_TYPE_ERROR))
    {
      sub_100053450(accessoryCopy);
      v28 = disabledCopy;
    }

    *v28 = 1;
  }

  if (!v36 || *v28 || [objc_msgSend(accessoryCopy "assetID")] != 3 && objc_msgSend(objc_msgSend(accessoryCopy, "assetID"), "type") != 11 && objc_msgSend(objc_msgSend(accessoryCopy, "assetID"), "type") != 12 && objc_msgSend(objc_msgSend(accessoryCopy, "assetID"), "type") != 13 && objc_msgSend(objc_msgSend(accessoryCopy, "assetID"), "type") != 14)
  {
    goto LABEL_43;
  }

  v29 = sub_100032D90(v11, 0);
  if (v29)
  {
    v30 = sub_100005020([v11 objectForKeyedSubscript:@"assetLocation"]);
    v31 = [NSURL URLWithString:v29];
    if ((-[NSURL isEqual:](v31, "isEqual:", [objc_msgSend(accessoryCopy "assetID")]) & 1) == 0)
    {
      v32 = selfCopy2[1];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [accessoryCopy identifier];
        v34 = [objc_msgSend(accessoryCopy "assetID")];
        *buf = 138412802;
        *&buf[4] = identifier2;
        *&buf[12] = 2112;
        *&buf[14] = v34;
        *&buf[22] = 2112;
        v46 = v29;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Overriding asset location for %@ from %@ to %@", buf, 0x20u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      v46 = sub_10003449C;
      v47 = sub_1000344AC;
      v48 = [[UARPAssetID alloc] initWithLocationType:-[os_log_t uarpAssetLocationType:](selfCopy2 remoteURL:{"uarpAssetLocationType:", v30), v31}];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000344B8;
      block[3] = &unk_1000817B0;
      block[4] = selfCopy2;
      block[5] = accessoryCopy;
      block[6] = buf;
      dispatch_async([(os_log_t *)selfCopy2 delegateQueue], block);
      _Block_object_dispose(buf, 8);
      LOBYTE(v15) = 1;
      return v15;
    }

LABEL_43:
    LOBYTE(v15) = 0;
    return v15;
  }

  if (os_log_type_enabled(selfCopy2[1], OS_LOG_TYPE_ERROR))
  {
    sub_1000534D8();
  }

  LOBYTE(v15) = 0;
  *disabledCopy = 1;
  return v15;
}

- (void)updateAccessoryInfoInDatabaseIfNeeded:(id)needed serialNumber:(id)number accessory:(id)accessory updatePartnerSerialNumbers:(BOOL)numbers
{
  numbersCopy = numbers;
  v36 = +[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory, "findByAppleModelNumber:", [objc_msgSend(accessory "accessoryID")]);
  if (needed)
  {
    v10 = numbersCopy;
    numberCopy = number;
    v12 = [needed objectForKeyedSubscript:@"fusing"];
    v13 = [NSString stringWithUTF8String:sub_100004EB4(3uLL)];
    v14 = [needed mutableCopy];
    if (![v12 isEqualToString:v13] || !objc_msgSend(objc_msgSend(accessory, "accessoryID"), "hwFusingType"))
    {
      v16 = v36;
      if ([objc_msgSend(v36 "supplementalAssets")])
      {
        number = numberCopy;
        if (![v14 objectForKeyedSubscript:@"supplementalAssetLocation"])
        {
          MGGetBoolAnswer();
          [v14 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004FFC(2uLL)), @"supplementalAssetLocation"}];
        }
      }

      else
      {
        number = numberCopy;
      }

      numbersCopy = v10;
      goto LABEL_34;
    }

    if ([objc_msgSend(objc_msgSend(accessory "accessoryID")])
    {
      v15 = 0;
    }

    else if ([objc_msgSend(objc_msgSend(accessory "accessoryID")])
    {
      v15 = 1;
    }

    else if ([objc_msgSend(objc_msgSend(accessory "accessoryID")])
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      identifier = [accessory identifier];
      v40 = 2080;
      v41 = sub_100004EB4(v15);
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updating fusing type for %@ to %s", buf, 0x16u);
    }

    [v14 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004EB4(v15)), @"fusing"}];
    number = numberCopy;
    numbersCopy = v10;
  }

  else
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    if ([objc_msgSend(objc_msgSend(accessory "accessoryID")])
    {
      v15 = 0;
    }

    else if ([objc_msgSend(objc_msgSend(accessory "accessoryID")])
    {
      v15 = 1;
    }

    else if ([objc_msgSend(objc_msgSend(accessory "accessoryID")])
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    [v14 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004EB4(v15)), @"fusing"}];
    v17 = [objc_msgSend(objc_msgSend(accessory "accessoryID")];
    [v14 setObject:v17 forKeyedSubscript:@"activeVersion"];

    v18 = [objc_msgSend(objc_msgSend(accessory "accessoryID")];
    [v14 setObject:v18 forKeyedSubscript:@"hwRevision"];
  }

  if (!MGGetBoolAnswer() || (v15 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    [v14 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004FFC(2uLL)), @"assetLocation"}];
    v16 = v36;
    if ([objc_msgSend(v36 "supplementalAssets")])
    {
      v20 = 2;
      goto LABEL_33;
    }
  }

  else
  {
    [v14 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004FFC(0)), @"assetLocation"}];
    v16 = v36;
    if ([objc_msgSend(v36 "supplementalAssets")])
    {
      v20 = 0;
LABEL_33:
      [v14 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", sub_100004FFC(v20)), @"supplementalAssetLocation"}];
    }
  }

LABEL_34:
  v21 = [v14 objectForKeyedSubscript:@"name"];
  if (![objc_msgSend(objc_msgSend(accessory "accessoryID")] || (v22 = objc_msgSend(objc_msgSend(accessory, "accessoryID"), "friendlyName"), (objc_msgSend(v22, "isEqualToString:", kUARPDefaultFriendlyNameUnknown) & 1) != 0))
  {
    if (v21)
    {
      goto LABEL_43;
    }

    v23 = [NSMutableString alloc];
    v24 = v16 ? [v16 modelName] : kUARPDefaultDisplayNameAccessory;
    number = [v23 initWithFormat:@"%@ (%@)", v24, number];
    if (!number)
    {
      goto LABEL_43;
    }

LABEL_42:
    [v14 setObject:+[NSString stringWithString:](NSString forKeyedSubscript:{"stringWithString:", number), @"name"}];

    goto LABEL_43;
  }

  v25 = numbersCopy;
  numberCopy2 = number;
  number = [objc_msgSend(objc_msgSend(accessory "accessoryID")];
  modelName = [v16 modelName];
  v29 = kUARPSupportedAccessoryCaseModelNameIdentifier;
  if ([modelName containsString:kUARPSupportedAccessoryCaseModelNameIdentifier])
  {
    [number appendFormat:@" (%@)", v29];
  }

  number = numberCopy2;
  numbersCopy = v25;
  if (number)
  {
    goto LABEL_42;
  }

LABEL_43:
  v30 = [objc_msgSend(objc_msgSend(accessory "accessoryID")];
  if (v30)
  {
    v31 = v30;
    [v14 setObject:v30 forKeyedSubscript:@"modelNumber"];
  }

  if (([objc_msgSend(needed objectForKeyedSubscript:{@"activeVersion", "isEqualToString:", objc_msgSend(objc_msgSend(accessory, "accessoryID"), "firmwareVersion")}] & 1) == 0)
  {
    v32 = [objc_msgSend(objc_msgSend(accessory "accessoryID")];
    [v14 setObject:v32 forKeyedSubscript:@"activeVersion"];
  }

  if (([objc_msgSend(needed objectForKeyedSubscript:{@"hwRevision", "isEqualToString:", objc_msgSend(objc_msgSend(accessory, "accessoryID"), "hwRevision")}] & 1) == 0)
  {
    v33 = [objc_msgSend(objc_msgSend(accessory "accessoryID")];
    [v14 setObject:v33 forKeyedSubscript:@"hwRevision"];
  }

  if (numbersCopy && [objc_msgSend(accessory "accessoryID")])
  {
    v34 = [objc_msgSend(objc_msgSend(accessory "accessoryID")];
    [v14 setObject:v34 forKeyedSubscript:@"partnerSerialNumbers"];
  }

  [v14 setObject:objc_msgSend(-[UARPMobileAssetManager profileAssetOverrideSettings](self forKeyedSubscript:{"profileAssetOverrideSettings"), "objectForKeyedSubscript:", objc_msgSend(accessory, "identifier")), @"assetURLOverride"}];
  v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 supportsDeveloperSettings]);
  [v14 setObject:v35 forKeyedSubscript:kUARPSupportedAccessoryKeySupportsDeveloperSettings];
  [+[AUDeveloperSettingsDatabase sharedDatabase](AUDeveloperSettingsDatabase "sharedDatabase")];
}

- (BOOL)performFirmwareAssetQuery:(id)query
{
  v5 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%@.%@", @"com.apple.MobileAsset.UARP", [query identifier]);
  v6 = +[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory, "findByAppleModelNumber:", [objc_msgSend(query "accessoryID")]);
  v12 = 0;
  if ([objc_msgSend(objc_msgSend(query "accessoryID")] && objc_msgSend(objc_msgSend(objc_msgSend(query, "accessoryID"), "hwFusingType"), "caseInsensitiveCompare:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", UARPAccessoryHardwareFusingToString())))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v14 = [objc_msgSend(query "accessoryID")];
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      accessoryID = [query accessoryID];
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Appending hwFusingType %{public}@ to assetType %{public}@ for accessory:%{public}@", buf, 0x20u);
    }

    -[NSMutableString appendFormat:](v5, "appendFormat:", @"-%@", [objc_msgSend(query "accessoryID")]);
  }

  if ([objc_msgSend(query "assetID")] || !objc_msgSend(v6, "supportsInternalSettings"))
  {
    goto LABEL_21;
  }

  if ([(UARPMobileAssetManager *)self updateAssetSettingsForAccessory:query checkForUpdate:1 automaticUpdatesDisabled:&v12])
  {
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ((v12 & 1) == 0)
  {
LABEL_21:
    if ([objc_msgSend(objc_msgSend(objc_msgSend(query "assetID")])
    {
      v9 = self->_log;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [objc_msgSend(query "assetID")];
        accessoryID2 = [query accessoryID];
        *buf = 138412802;
        v14 = v10;
        v15 = 2112;
        v16 = v5;
        v17 = 2112;
        accessoryID = accessoryID2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Pointing MobileAsset URL to %@, assetType %@ for accessory:%@", buf, 0x20u);
      }

      [objc_msgSend(query "assetID")];
      ASSetAssetServerURLForAssetType();
    }

    [(UARPMobileAssetManager *)self performQuery:query assetType:v5 supplementalAsset:0 downstreamAppleModelNumber:0];
    return 1;
  }

LABEL_12:
  [(UARPMobileAssetManager *)self notifyFirmwareUpdateAvailabilityStatus:6 accessory:query downstreamAppleModelNumber:0];
  return 1;
}

- (int64_t)performRemoteQueryForAccessory:(id)accessory
{
  if ([(UARPMobileAssetManager *)self performFirmwareAssetQuery:?])
  {
    v5 = +[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory, "findByAppleModelNumber:", [objc_msgSend(accessory "accessoryID")]);
    if (v5)
    {
      v6 = v5;
      -[UARPMobileAssetManager performRemoteSupplementalAssetQuery:supplementalAssets:](self, "performRemoteSupplementalAssetQuery:supplementalAssets:", accessory, [v5 supplementalAssets]);
      -[UARPMobileAssetManager performRemoteDownstreamAssetQuery:appleModelNumbers:](self, "performRemoteDownstreamAssetQuery:appleModelNumbers:", accessory, [v6 downstreamAppleModelNumbers]);
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Skipping supplemental/downstream asset queries this iteration", v9, 2u);
    }
  }

  return 0;
}

- (void)performQuery:(id)query assetType:(id)type supplementalAsset:(BOOL)asset downstreamAppleModelNumber:(id)number
{
  v11 = [[MAAssetQuery alloc] initWithType:type];
  v12 = objc_alloc_init(MADownloadOptions);
  [v12 setDiscretionary:0];
  v13 = [objc_msgSend(query "accessoryID")];
  uarpDownloadOnCellularAllowed = 0;
  if (v13)
  {
    uarpDownloadOnCellularAllowed = self->_uarpDownloadOnCellularAllowed;
  }

  [v12 setAllowsCellularAccess:uarpDownloadOnCellularAllowed];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000351A0;
  v15[3] = &unk_100081EC8;
  v15[4] = self;
  v15[5] = query;
  assetCopy = asset;
  v15[6] = type;
  v15[7] = v11;
  v15[8] = number;
  [MAAsset startCatalogDownload:type options:v12 then:v15];
}

- (void)notifyFirmwareUpdateAvailabilityStatus:(int64_t)status accessory:(id)accessory downstreamAppleModelNumber:(id)number
{
  if (number)
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v9 = [objc_msgSend(accessory "assetID")];
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v10)
    {
      v11 = *v28;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          if ([objc_msgSend(v13 "modelNumber")])
          {
            if (v13)
            {
              [objc_msgSend(objc_msgSend(accessory "assetID")];
            }

            goto LABEL_13;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
    assetID = [objc_msgSend(accessory "assetID")];
    [assetID restoreDefaultStatus];
    [assetID setModelNumber:number];
  }

  else
  {
    assetID = [accessory assetID];
  }

  [assetID setLocalURL:0];
  [assetID setDownloadStatus:0];
  [assetID setUpdateAvailabilityStatus:status];
  if (status != 6)
  {
    goto LABEL_24;
  }

  v15 = kUARPAssetLocationTypeMobileAssetServerMesuStr;
  v16 = [kUARPAssetLocationTypeMobileAssetServerMesuStr stringByAppendingPathComponent:kUARPAssetLocationTypeMobileAssetServerAirPodsPublicSeed];
  v17 = [v15 stringByAppendingPathComponent:kUARPAssetLocationTypeMobileAssetServerAirPodsDeveloperSeed];
  if (([objc_msgSend(objc_msgSend(assetID "remoteURL")] & 1) == 0 && !objc_msgSend(objc_msgSend(objc_msgSend(assetID, "remoteURL"), "absoluteString"), "isEqualToString:", v17))
  {
    goto LABEL_24;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [objc_msgSend(accessory "accessoryID")];
    *buf = 138543362;
    *&buf[4] = v19;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Did not find an available asset for %{public}@. Falling back to Customer.", buf, 0xCu);
  }

  v20 = sub_100032B6C(2, 0);
  if (v20)
  {
    v21 = [NSURL URLWithString:v20];
    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [objc_msgSend(accessory "accessoryID")];
      v24 = [objc_msgSend(accessory "assetID")];
      *buf = 138543874;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      *&buf[22] = 2114;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Overriding fallback asset location for %{public}@ from %{public}@ to %{public}@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v32 = sub_10003449C;
    v33 = sub_1000344AC;
    v34 = [[UARPAssetID alloc] initWithLocationType:-[UARPMobileAssetManager uarpAssetLocationType:](self remoteURL:{"uarpAssetLocationType:", 2), v21}];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000358D4;
    block[3] = &unk_1000817B0;
    block[4] = self;
    block[5] = accessory;
    block[6] = buf;
    dispatch_async([(UARPMobileAssetManager *)self delegateQueue], block);
    _Block_object_dispose(buf, 8);
  }

  else
  {
LABEL_24:
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100035940;
    v25[3] = &unk_100081B58;
    v25[4] = self;
    v25[5] = accessory;
    v25[6] = assetID;
    v25[7] = number;
    dispatch_async([(UARPMobileAssetManager *)self delegateQueue], v25);
  }
}

- (void)handleFirmwareAssetQueryCompletion:(id)completion result:(int64_t)result forAccessory:(id)accessory downstreamAppleModelNumber:(id)number
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    resultCopy = result;
    v60 = 2112;
    numberCopy3 = [accessory accessoryID];
    v62 = 2112;
    numberCopy4 = number;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "MobileAsset query status:%ld for accessory %@ / %@", buf, 0x20u);
  }

  if (!number)
  {
    assetID = [accessory assetID];
LABEL_19:
    numberCopy2 = [accessory identifier];
    goto LABEL_21;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = [objc_msgSend(accessory "assetID")];
  v12 = [v11 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v54;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v53 + 1) + 8 * i);
        if ([objc_msgSend(v16 "modelNumber")])
        {
          if (v16)
          {
            [objc_msgSend(objc_msgSend(accessory "assetID")];
          }

          goto LABEL_15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
  assetID = [objc_msgSend(accessory "assetID")];
  [assetID restoreDefaultStatus];
  [assetID setModelNumber:number];
  v18 = [UARPSupportedAccessory findByAppleModelNumber:number];
  if ([v18 mobileAssetAppleModelNumber])
  {
    numberCopy2 = [v18 mobileAssetAppleModelNumber];
    if (numberCopy2)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  numberCopy2 = number;
LABEL_21:
  v20 = sub_100032A1C([accessory accessoryID]);
  if (result)
  {
    v21 = sub_100002B4C(numberCopy2, [objc_msgSend(accessory "accessoryID")], v20);
    if (v21)
    {
      v22 = v21;
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(NSURL *)v22 description];
        accessoryID = [accessory accessoryID];
        modelNumber = [assetID modelNumber];
        *buf = 138543874;
        resultCopy = v24;
        v60 = 2114;
        numberCopy3 = accessoryID;
        v62 = 2114;
        numberCopy4 = modelNumber;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using latest asset from cache %{public}@ for accessory %{public}@ / %{public}@", buf, 0x20u);
      }

      [assetID setAssetVersion:{sub_100002A1C(-[NSURL path](v22, "path"))}];
      [assetID setLocalURL:v22];
      [assetID setDownloadStatus:1];
      [assetID setUpdateAvailabilityStatus:3];
      delegateQueue = [(UARPMobileAssetManager *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100036138;
      block[3] = &unk_100081B58;
      block[4] = self;
      block[5] = accessory;
      block[6] = assetID;
      block[7] = number;
      v28 = block;
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  results = [completion results];
  v30 = self->_log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    accessoryID2 = [accessory accessoryID];
    *buf = 138412802;
    resultCopy = accessoryID2;
    v60 = 2112;
    numberCopy3 = number;
    v62 = 2112;
    numberCopy4 = results;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "MobileAsset query response for accessory %@ / %@: %@", buf, 0x20u);
  }

  if (!results)
  {
LABEL_38:
    selfCopy2 = self;
    v44 = 6;
LABEL_39:
    [(UARPMobileAssetManager *)selfCopy2 notifyFirmwareUpdateAvailabilityStatus:v44 accessory:accessory downstreamAppleModelNumber:number];
    return;
  }

  v32 = self->_log;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Mobile Asset Filtering moved to Uploader. Finding Max Asset from all the (unfiltered) assets.", buf, 2u);
  }

  v33 = [(UARPMobileAssetManager *)self assetWithMaxVersion:results];
  if (!v33)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000535CC();
    }

    selfCopy2 = self;
    v44 = 8;
    goto LABEL_39;
  }

  v34 = v33;
  v35 = sub_100002B4C(numberCopy2, [objc_msgSend(accessory "accessoryID")], v20);
  if (v35)
  {
    v36 = v35;
    v37 = [(UARPMobileAssetManager *)self getAssetVersionForMAAsset:v34];
    v38 = sub_100002A1C([(NSURL *)v36 path]);
    if ([v37 isEqualToString:v38])
    {
      [assetID setAssetVersion:v38];
      [assetID setLocalURL:v36];
      [assetID setDownloadStatus:1];
      [assetID setUpdateAvailabilityStatus:3];
      [accessory analyticsSetDownloadAvailableForAssetID:assetID];
      v39 = self->_log;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [(NSURL *)v36 description];
        accessoryID3 = [accessory accessoryID];
        modelNumber2 = [assetID modelNumber];
        *buf = 138543874;
        resultCopy = v40;
        v60 = 2114;
        numberCopy3 = accessoryID3;
        v62 = 2114;
        numberCopy4 = modelNumber2;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Using matching asset from cache %{public}@ for accessory %{public}@ / %{public}@", buf, 0x20u);
      }

      delegateQueue = [(UARPMobileAssetManager *)self delegateQueue];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10003618C;
      v51[3] = &unk_100081B58;
      v51[4] = self;
      v51[5] = accessory;
      v51[6] = assetID;
      v51[7] = number;
      v28 = v51;
      goto LABEL_26;
    }
  }

  if (!number)
  {
    [accessory setAsset:v34];
  }

  v45 = [objc_msgSend(v34 "attributes")];
  if (v45)
  {
    [assetID processUARPDeploymentRules:v45];
  }

  [assetID setAssetVersion:{-[UARPMobileAssetManager getAssetVersionForMAAsset:](self, "getAssetVersionForMAAsset:", v34)}];
  v46 = self->_log;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    assetVersion = [assetID assetVersion];
    accessoryID4 = [accessory accessoryID];
    *buf = 138412802;
    resultCopy = assetVersion;
    v60 = 2112;
    numberCopy3 = accessoryID4;
    v62 = 2112;
    numberCopy4 = number;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Firmware Version %@ available on MobileAsset for accessory %@ / %@", buf, 0x20u);
  }

  [accessory analyticsSetDownloadAvailableForAssetID:assetID];
  if (([objc_msgSend(accessory "accessoryID")] & 1) == 0 && objc_msgSend(v34, "state") != 2)
  {
    [assetID setLocalURL:0];
    [completion assetType];
    [assetID setRemoteURL:ASServerURLForAssetType()];
    [assetID setDownloadStatus:0];
    [assetID setUpdateAvailabilityStatus:1];
    [accessory analyticsSetDownloadConsentRequestedForAssetID:assetID];
    delegateQueue = [(UARPMobileAssetManager *)self delegateQueue];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000361E0;
    v50[3] = &unk_100081B58;
    v50[4] = self;
    v50[5] = accessory;
    v50[6] = assetID;
    v50[7] = number;
    v28 = v50;
LABEL_26:
    dispatch_async(delegateQueue, v28);
    return;
  }

  [(UARPMobileAssetManager *)self downloadFirmwareForAccessory:accessory assetID:assetID mobileAsset:v34];
}

- (id)assetWithMaxVersion:(id)version
{
  if ([version count] <= 1)
  {

    return [version firstObject];
  }

  else
  {
    v21 = 0uLL;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [version countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (!v5)
    {
      return 0;
    }

    v7 = v5;
    v16 = 0;
    v8 = *v18;
    *&v6 = 138412546;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(version);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 state] != 3)
        {
          v11 = [(UARPMobileAssetManager *)self getAssetVersionForMAAsset:v10];
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            state = [v10 state];
            *buf = v15;
            *&buf[4] = v11;
            *&buf[12] = 2048;
            *&buf[14] = state;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Comparing asset with version %@ / state %ld", buf, 0x16u);
          }

          *buf = 0;
          *&buf[8] = 0;
          [UARPSuperBinaryAsset versionFromString:v11 version:buf];
          if (uarpVersionCompare(&v21, buf) == 1)
          {
            v21 = *buf;
            v16 = v10;
          }
        }
      }

      v7 = [version countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
    return v16;
  }
}

- (int64_t)performDownload:(id)download accessory:(id)accessory assetID:(id)d supplementalAsset:(BOOL)asset
{
  assetCopy = asset;
  state = [download state];
  if (state == 1 || state == 4)
  {
    v12 = objc_alloc_init(MADownloadOptions);
    [v12 setDiscretionary:0];
    v13 = [objc_msgSend(accessory "accessoryID")];
    uarpDownloadOnCellularAllowed = 0;
    if (v13)
    {
      uarpDownloadOnCellularAllowed = self->_uarpDownloadOnCellularAllowed;
    }

    [v12 setAllowsCellularAccess:uarpDownloadOnCellularAllowed];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000365B4;
    v17[3] = &unk_100081EA0;
    v18 = assetCopy;
    v17[4] = self;
    v17[5] = download;
    v17[6] = accessory;
    v17[7] = d;
    [download startDownload:v12 then:v17];
    goto LABEL_12;
  }

  if (state == 2)
  {
    if (assetCopy)
    {
      [(UARPMobileAssetManager *)self handleSupplementalAssetDownloadCompletion:download result:0 forAccessory:accessory];
    }

    else
    {
      [(UARPMobileAssetManager *)self handleMobileAssetDownloadCompletion:download status:0 accessory:accessory assetID:d];
    }

    v12 = 0;
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v12 = 0;
  v15 = 1;
LABEL_13:

  return v15;
}

- (int64_t)downloadRemoteFirmwareForAccessory:(id)accessory assetID:(id)d mobileAsset:(id)asset
{
  if (![accessory asset])
  {
    return 4;
  }

  return [(UARPMobileAssetManager *)self performDownload:asset accessory:accessory assetID:d supplementalAsset:0];
}

- (void)handleMobileAssetDownloadCompletion:(id)completion status:(int64_t)status accessory:(id)accessory assetID:(id)d
{
  modelNumber = [d modelNumber];
  if (!modelNumber || (identifier = modelNumber, v13 = +[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory, "findByAppleModelNumber:", modelNumber), [v13 mobileAssetAppleModelNumber]) && (identifier = objc_msgSend(v13, "mobileAssetAppleModelNumber")) == 0)
  {
    identifier = [accessory identifier];
  }

  v14 = sub_100032A1C([accessory accessoryID]);
  v15 = v14;
  if (status)
  {
    if (v14)
    {
      v16 = sub_100002B4C(identifier, [objc_msgSend(accessory "accessoryID")], v14);
      if (v16)
      {
        v17 = v16;
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v32 = [(NSURL *)v17 description];
          v33 = 2114;
          accessoryID = [accessory accessoryID];
          v35 = 2114;
          modelNumber2 = [d modelNumber];
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Using latest downloaded asset from cache %{public}@ for accessory %{public}@ / %{public}@", buf, 0x20u);
        }

        [d setAssetVersion:{sub_100002A1C(-[NSURL path](v17, "path"))}];
LABEL_21:
        [d setLocalURL:v17];
        [d setDownloadStatus:1];
        [d setUpdateAvailabilityStatus:3];
LABEL_22:
        -[UARPAssetManager assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:](self->_assetManager, "assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:", [accessory accessoryID], d, objc_msgSend(d, "modelNumber"));
        return;
      }
    }
  }

  else
  {
    v19 = [(UARPMobileAssetManager *)self getAssetBundle:completion];
    v20 = [v19 objectForInfoDictionaryKey:@"FirmwareImageFile"];
    if (v20)
    {
      v21 = v20;
      v22 = [v19 pathForResource:-[NSString stringByDeletingPathExtension](v20 ofType:{"stringByDeletingPathExtension"), -[NSString pathExtension](v20, "pathExtension")}];
      if (v22)
      {
        v23 = v22;
        v24 = sub_100002B4C(identifier, [objc_msgSend(accessory "accessoryID")], v15);
        v25 = self->_log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v32 = v21;
          v33 = 2112;
          accessoryID = [accessory accessoryID];
          v35 = 2112;
          modelNumber2 = [d modelNumber];
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Moving Firmware File %@ from MobileAsset to UARP Cache for accessory %@ / %@", buf, 0x20u);
        }

        v26 = sub_100002D8C(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v23), identifier, [objc_msgSend(accessory "accessoryID")], objc_msgSend(d, "assetVersion"), v15);
        if (v26)
        {
          v17 = v26;
          if (![(NSString *)[(NSURL *)v24 path] isEqualToString:[(NSURL *)v26 path]])
          {
            v27 = self->_log;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              path = [(NSURL *)v24 path];
              accessoryID2 = [accessory accessoryID];
              modelNumber3 = [d modelNumber];
              *buf = 138412802;
              v32 = path;
              v33 = 2112;
              accessoryID = accessoryID2;
              v35 = 2112;
              modelNumber2 = modelNumber3;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Deleting previously cached MobileAsset at %@ for accessory %@ / %@", buf, 0x20u);
            }

            [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:[(NSString *)[(NSURL *)v24 path] stringByDeletingLastPathComponent], 0];
          }

          [accessory analyticsSetDownloadCompleteForAssetID:d status:1];
          goto LABEL_21;
        }
      }
    }
  }

  if ((sub_100053668(accessory, d) & 1) == 0)
  {
    goto LABEL_22;
  }
}

- (void)performRemoteDownstreamAssetQuery:(id)query appleModelNumbers:(id)numbers
{
  v7 = sub_100005DF0([query accessoryID]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [numbers countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v27 = *v30;
    do
    {
      v11 = 0;
      v28 = v9;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(numbers);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        v13 = [UARPSupportedAccessory findByAppleModelNumber:v12];
        if ((v13 == 0) | v7 & 1)
        {
          [(UARPMobileAssetManager *)self notifyFirmwareUpdateAvailabilityStatus:6 accessory:query downstreamAppleModelNumber:v12];
        }

        else
        {
          v14 = v13;
          mobileAssetAppleModelNumber = [v13 mobileAssetAppleModelNumber];
          mobileAssetAppleModelNumber2 = v12;
          if (mobileAssetAppleModelNumber)
          {
            mobileAssetAppleModelNumber2 = [v14 mobileAssetAppleModelNumber];
          }

          v17 = [NSMutableString stringWithFormat:@"%@.%@", @"com.apple.MobileAsset.UARP", mobileAssetAppleModelNumber2];
          if ([objc_msgSend(objc_msgSend(query "accessoryID")] && objc_msgSend(objc_msgSend(objc_msgSend(query, "accessoryID"), "hwFusingType"), "caseInsensitiveCompare:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", UARPAccessoryHardwareFusingToString())))
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [objc_msgSend(query "accessoryID")];
              accessoryID = [query accessoryID];
              *buf = 138544130;
              v35 = v19;
              v36 = 2114;
              v37 = v17;
              v38 = 2114;
              v39 = accessoryID;
              v40 = 2114;
              v41 = v12;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Appending hwFusingType %{public}@ to assetType %{public}@ for accessory:%{public}@ with downstream accessory:%{public}@", buf, 0x2Au);
            }

            -[NSMutableString appendFormat:](v17, "appendFormat:", @"-%@", [objc_msgSend(query "accessoryID")]);
          }

          v21 = sub_100032D90([objc_msgSend(+[AUDeveloperSettingsDatabase sharedDatabase](AUDeveloperSettingsDatabase "sharedDatabase")], 0);
          if (v21)
          {
            v22 = [NSURL URLWithString:v21];
            v23 = self->_log;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v35 = v22;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Downstream Asset remoteURL = %@", buf, 0xCu);
            }

            if ([(NSString *)[(NSURL *)v22 path] length])
            {
              v24 = self->_log;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                accessoryID2 = [query accessoryID];
                *buf = 138412802;
                v35 = v22;
                v36 = 2112;
                v37 = v17;
                v38 = 2112;
                v39 = accessoryID2;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Pointing MobileAsset URL to %@, assetType %@ for accessory:%@", buf, 0x20u);
              }

              ASSetAssetServerURLForAssetType();
            }
          }

          else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_1000536B8(v33, query);
          }

          v26 = self->_log;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v17;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Perform Downstream Asset query:%@", buf, 0xCu);
          }

          [(UARPMobileAssetManager *)self performQuery:query assetType:v17 supplementalAsset:0 downstreamAppleModelNumber:v12];
          v10 = v27;
          v9 = v28;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [numbers countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v9);
  }
}

- (void)performRemoteSupplementalAssetQuery:(id)query supplementalAssets:(id)assets
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [assets countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v10 = [NSString stringWithFormat:@"%@.%@", @"com.apple.MobileAsset.UARP", *(*(&v18 + 1) + 8 * i)];
        v11 = sub_100032D90([objc_msgSend(+[AUDeveloperSettingsDatabase sharedDatabase](AUDeveloperSettingsDatabase "sharedDatabase")], 1);
        if (v11)
        {
          v12 = [NSURL URLWithString:v11];
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Supplemental Asset remoteURL = %@", buf, 0xCu);
          }

          if ([(NSString *)[(NSURL *)v12 path] length])
          {
            v14 = self->_log;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              accessoryID = [query accessoryID];
              *buf = 138412802;
              v24 = v12;
              v25 = 2112;
              v26 = v10;
              v27 = 2112;
              v28 = accessoryID;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Pointing MobileAsset URL to %@, assetType %@ for accessory:%@", buf, 0x20u);
            }

            ASSetAssetServerURLForAssetType();
          }
        }

        else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100053704(v22, query);
        }

        v16 = self->_log;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Perform Supplemental Asset query:%@", buf, 0xCu);
        }

        [(UARPMobileAssetManager *)self performQuery:query assetType:v10 supplementalAsset:1 downstreamAppleModelNumber:0];
      }

      v7 = [assets countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v7);
  }
}

- (void)handleSupplementalAssetQueryCompletion:(id)completion result:(int64_t)result forAccessory:(id)accessory
{
  if (result)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100053750();
    }

    return;
  }

  if ([objc_msgSend(completion "results")])
  {
    v8 = -[UARPMobileAssetManager assetWithMaxVersion:](self, "assetWithMaxVersion:", [completion results]);
    if (v8)
    {
      v9 = v8;
      v10 = [objc_msgSend(objc_msgSend(completion "assetType")];
      v11 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtURL:"contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:" includingPropertiesForKeys:[NSURL options:"fileURLWithPath:" error:[NSString stringWithFormat:@"%@/%@/%@" fileURLWithPath:@"supplementalassets", v10]], 0, 4, 0];
      if ([(NSArray *)v11 count])
      {
        v12 = [(UARPMobileAssetManager *)self getAssetVersionForMAAsset:v9];
        +[NSMutableArray array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v13)
        {
          v14 = v13;
          v25 = v10;
          v26 = v9;
          accessoryCopy = accessory;
          v28 = 0;
          v15 = *v31;
          do
          {
            v16 = v11;
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(v16);
              }

              v18 = *(*(&v30 + 1) + 8 * i);
              v19 = sub_100002A1C([v18 path]);
              log = self->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                accessoryID = v12;
                v36 = 2112;
                v37 = v19;
                _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "SupplementalAsset version %@ available, cached version %@", buf, 0x16u);
              }

              if (uarpVersionCompareStrings())
              {
                v29 = 0;
                if (![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
                {
                  v21 = self->_log;
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    accessoryID = v18;
                    v36 = 2112;
                    v37 = v29;
                    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to clean up SupplementalAsset %@ with error %@", buf, 0x16u);
                  }
                }
              }

              else
              {
                v28 = 1;
              }
            }

            v11 = v16;
            v14 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v14);
          if (v28)
          {
            v22 = self->_log;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              accessoryID = v12;
              v36 = 2112;
              v37 = accessoryCopy;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Not Downloading SupplementalAsset version %@ for %@", buf, 0x16u);
            }

            [(NSMutableString *)accessoryCopy setSupplementalAssetName:v25];
            [(UARPAssetManager *)self->_assetManager supplementalAssetAvailabilityUpdateForAccessory:[(NSMutableString *)accessoryCopy accessoryID] assetName:[(NSMutableString *)accessoryCopy supplementalAssetName]];
            return;
          }

          v9 = v26;
          accessory = accessoryCopy;
        }

        v23 = self->_log;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          accessoryID = v12;
          v24 = "Downloading SupplementalAsset version %@";
          goto LABEL_36;
        }
      }

      else
      {
        v23 = self->_log;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          accessoryID = [accessory accessoryID];
          v24 = "No cached SupplementalAsset found for accessory %@, downloading the asset available";
LABEL_36:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
        }
      }

      [(UARPMobileAssetManager *)self performDownload:v9 accessory:accessory assetID:0 supplementalAsset:1];
      return;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000537D8();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100053874();
  }
}

- (void)handleSupplementalAssetDownloadCompletion:(id)completion result:(int64_t)result forAccessory:(id)accessory
{
  result = [(UARPMobileAssetManager *)self getAssetBundle:completion, result];
  if (result)
  {
    v9 = result;
    v10 = [result objectForInfoDictionaryKey:@"FirmwareImageFile"];
    if (v10)
    {
      v11 = v10;
      v12 = [v9 pathForResource:objc_msgSend(v10 ofType:{"stringByDeletingPathExtension"), objc_msgSend(v10, "pathExtension")}];
      v13 = [objc_msgSend(objc_msgSend(completion "assetType")];
      v14 = [NSString stringWithFormat:@"%@/%@/%@/", InternalStorageDirectoryPath(), @"supplementalassets", v13];
      v15 = [NSURL fileURLWithPath:v14];
      v28 = 0;
      if ([(NSURL *)v15 checkResourceIsReachableAndReturnError:0]|| [+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
      {
        v16 = [NSURL fileURLWithPath:[(NSString *)v14 stringByAppendingPathComponent:v11]];
        if ([(NSURL *)v16 checkResourceIsReachableAndReturnError:0]&& ![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_100053994(v16, &v28, log);
          }
        }

        else
        {
          v17 = [+[NSFileManager defaultManager](NSFileManager copyItemAtURL:"copyItemAtURL:toURL:error:" toURL:[NSURL error:"fileURLWithPath:" fileURLWithPath:v12], v16, &v28];
          v18 = self->_log;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v30 = "[UARPMobileAssetManager(Query) handleSupplementalAssetDownloadCompletion:result:forAccessory:]";
            v31 = 2112;
            v32 = v16;
            v33 = 1024;
            *v34 = v17;
            *&v34[4] = 2112;
            *&v34[6] = v28;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: Downloaded supplemental asset at location=%@, success=%d, error=%@", buf, 0x26u);
          }

          if (v17)
          {
            [accessory setSupplementalAssetName:v13];
            -[UARPAssetManager supplementalAssetAvailabilityUpdateForAccessory:assetName:](self->_assetManager, "supplementalAssetAvailabilityUpdateForAccessory:assetName:", [accessory accessoryID], objc_msgSend(accessory, "supplementalAssetName"));
          }

          else
          {
            v19 = self->_log;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v30 = "[UARPMobileAssetManager(Query) handleSupplementalAssetDownloadCompletion:result:forAccessory:]";
              v31 = 2112;
              v32 = v12;
              v33 = 2112;
              *v34 = v16;
              *&v34[8] = 2112;
              *&v34[10] = v28;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: Failed to place supplemental asset from %@ to %@, error: %@", buf, 0x2Au);
            }
          }
        }
      }

      else
      {
        v20 = self->_log;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100053910(&v28, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100053A30();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100053AA8();
  }
}

- (id)getAssetVersionForMAAsset:(id)asset
{
  v4 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%u.%u.%u", [objc_msgSend(objc_msgSend(asset "attributes")], objc_msgSend(objc_msgSend(objc_msgSend(asset, "attributes"), "objectForKey:", @"FirmwareVersionMinor"), "unsignedIntValue"), objc_msgSend(objc_msgSend(objc_msgSend(asset, "attributes"), "objectForKey:", @"FirmwareVersionRelease"), "unsignedIntValue"));
  v5 = [objc_msgSend(asset "attributes")];
  if (v5)
  {
    -[NSMutableString appendFormat:](v4, "appendFormat:", @".%u", [v5 unsignedIntValue]);
  }

  return [NSString stringWithString:v4];
}

- (id)getAssetBundle:(id)bundle
{
  v4 = [objc_msgSend(bundle "attributes")];
  if (!v4)
  {
    return 0;
  }

  v5 = [objc_msgSend(objc_msgSend(bundle "getLocalFileUrl")];
  if (!v5)
  {
    return 0;
  }

  path = [v5 path];

  return [NSBundle bundleWithPath:path];
}

@end