@interface EAAccessoryUpdater
- (BOOL)accessoryVersionFromString:(id)string accyVersion:(id *)version;
- (BOOL)consentRequired;
- (BOOL)isRoamingEnabled;
- (BOOL)prepareFirmwareBundlesFromDropbox:(id)dropbox error:(id *)error;
- (BOOL)setSeedParticipationStatusAndContinue;
- (BOOL)shouldUpdateBeSilent:(id)silent;
- (EAAccessoryUpdater)initWithCoder:(id)coder;
- (EAAccessoryUpdater)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options;
- (id)assetLocationForType:(unint64_t)type withTrain:(id)train;
- (id)getAssetLocation:(id)location;
- (id)trainName;
- (int64_t)compareLongVersionString:(id *)string withFirmwareVersion:(id *)version;
- (void)allowConditionalDownloadOnCellular;
- (void)applyFirmwareWithOptions:(id)options;
- (void)bootstrapWithOptions:(id)options;
- (void)dealloc;
- (void)downloadFirmwareWithOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)finishWithOptions:(id)options;
- (void)overrideUpdaterOptions;
- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status;
- (void)prepareFirmwareWithOptions:(id)options;
- (void)updateAccessoryInfoInDatabaseIfNeeded:(id)needed;
@end

@implementation EAAccessoryUpdater

- (EAAccessoryUpdater)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater initWithDeviceClass:delegate:info:options:]", 118];
  v46.receiver = self;
  v46.super_class = EAAccessoryUpdater;
  v11 = [(EAAccessoryUpdater *)&v46 init];
  v12 = v11;
  if (!v11)
  {
    sub_10001607C();
    return v12;
  }

  v11->delegate = delegate;
  p_delegate = &v11->delegate;
  v11->initOptions = options;
  v12->deviceClass = class;
  v12->localFilePath = 0;
  v12->seedLocations = 0;
  v14 = objc_alloc_init(NSMutableSet);
  v12->seedLocations = v14;
  [(NSMutableSet *)v14 addObject:@"https://mesu.apple.com/assets/AirPods2020AppleSeed/"];
  [(NSMutableSet *)v12->seedLocations addObject:@"https://basejumper.apple.com/AirPodsDeveloperSeed/"];
  v15 = [(NSString *)v12->deviceClass componentsSeparatedByString:@"."];
  if (!v15)
  {
    sub_100016054(&v12->delegate);
    return 0;
  }

  v16 = v15;
  if ([(NSArray *)v15 count]<= 1)
  {
    sub_10001602C(&v12->delegate);
    return 0;
  }

  infoCopy = info;
  v44 = [(NSArray *)v16 objectAtIndex:[(NSArray *)v16 count]- 2];
  mobileAssetType = [[NSString alloc] initWithFormat:@"%@.%@.EA", @"com.apple.MobileAsset.MobileAccessoryUpdate", v44];
  v18 = copyPlistDeviceEntryFromDeviceClass(class);
  v12->deviceOptions = v18;
  v19 = [(NSDictionary *)v18 objectForKey:@"AlternateAssetTypes"];
  v20 = v19;
  if (v19)
  {
    if ([(NSMutableArray *)v19 count]>= 2)
    {
      v55 = [NSSortDescriptor sortDescriptorWithKey:0 ascending:0 selector:"compare:"];
      v20 = [(NSMutableArray *)v20 sortedArrayUsingDescriptors:[NSArray arrayWithObjects:&v55 count:1]];
    }

    v20 = [NSMutableArray arrayWithArray:v20];
    [(NSMutableArray *)v20 addObject:mobileAssetType];
    [*p_delegate log:7 format:{@"assetTypes = %@", v20}];
  }

  deviceOptions = v12->deviceOptions;
  if (!deviceOptions)
  {
    sub_100016004(&v12->delegate);
    return 0;
  }

  v22 = [-[NSDictionary objectForKey:](deviceOptions objectForKey:{@"NeedsDeviceIdleCheck", "BOOLValue"}];
  v23 = [objc_msgSend(options objectForKey:{@"DeviceIdleLaunch", "BOOLValue"}];
  if (v22 && (v23 & 1) == 0)
  {
    sub_100015FDC(&v12->delegate);
    return 0;
  }

  v12->silentUpdateNoUI = [-[NSDictionary objectForKey:](v12->deviceOptions objectForKey:{@"SilentUpdateNoUI", "BOOLValue"}];
  v24 = v12->deviceOptions;
  if (v24)
  {
    v25 = [-[NSDictionary objectForKey:](v24 objectForKey:{@"skipDFUMode", "BOOLValue"}];
    v26 = v12->deviceOptions;
    if (v26)
    {
      v27 = [-[NSDictionary objectForKey:](v26 objectForKey:{@"disableByteEscaping", "BOOLValue"}];
      v28 = v12->deviceOptions;
      if (v28)
      {
        v29 = [-[NSDictionary objectForKey:](v28 objectForKey:{@"skipReconnect", "BOOLValue"}];
        goto LABEL_15;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v25 = 0;
  }

  v29 = 0;
LABEL_15:
  initOptions = v12->initOptions;
  if (initOptions)
  {
    v31 = [-[NSDictionary objectForKey:](initOptions objectForKey:{@"skipMinimumFirmwareVersionCheck", "BOOLValue"}];
  }

  else
  {
    v31 = 0;
  }

  v12->restartOnlyUI = [-[NSDictionary objectForKey:](v12->deviceOptions objectForKey:{@"RestartRequiresUIOnly", "BOOLValue"}];
  if (v20)
  {
    firstObject = [(NSMutableArray *)v20 firstObject];
    v12->mobileAssetType = firstObject;
    [(NSMutableArray *)v20 removeObject:firstObject];
    mobileAssetType = v12->mobileAssetType;
  }

  else
  {
    v12->mobileAssetType = mobileAssetType;
  }

  [(FudPluginDelegate *)v12->delegate log:5 format:@"Initializing EA Updater plugin for deviceClass:%@ asset-name:%@ skipDFU:%d skipByteEscape:%d skipVersionCheck:%d", class, mobileAssetType, v25, v27, v31];
  v33 = [[EAFirmwareUpdater alloc] initWithDeviceClass:class assetType:v12->mobileAssetType skipDFU:v25 byteEscape:v27 ^ 1 skipReconnect:v29 skipVersionCheck:v31 options:v12->deviceOptions serialNum:[(NSDictionary *)v12->initOptions objectForKeyedSubscript:@"SerialNumber"]];
  v12->firmwareUpdater = v33;
  if (!v33)
  {
    deviceClass = v12->deviceClass;
    [(FudPluginDelegate *)v12->delegate log:3 format:@"Failed to create EAFirmwareUpdater for deviceClass:%@ assetType:%@", deviceClass, v12->mobileAssetType];
    return 0;
  }

  v34 = v33;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v35 = v12->deviceOptions;
    accessory = [(EAFirmwareUpdater *)v34 accessory];
    *buf = 136315650;
    v50 = "[EAAccessoryUpdater initWithDeviceClass:delegate:info:options:]";
    v51 = 2112;
    v52 = v35;
    v53 = 2112;
    v54 = accessory;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: deviceOptions: %@, firmwareUpdater accessory: %@", buf, 0x20u);
  }

  v37 = [(NSDictionary *)v12->initOptions objectForKeyedSubscript:@"DeviceClass"];
  v38 = [(NSDictionary *)v12->deviceOptions objectForKey:@"NeedsAUDeveloperSettings"];
  if (v37)
  {
    v42 = copyPlistDeviceEntryFromDeviceClass(v37);
    v43 = [v42 objectForKey:@"NeedsAUDeveloperSettings"];

    if (v43)
    {
      goto LABEL_25;
    }
  }

  else if (v38)
  {
LABEL_25:
    if (![(EAFirmwareUpdater *)v12->firmwareUpdater accessory]|| [(EAAccessoryUpdater *)v12 setSeedParticipationStatusAndContinue])
    {
      goto LABEL_27;
    }

    return 0;
  }

LABEL_27:
  [(EAFirmwareUpdater *)v12->firmwareUpdater setAlternateAssetTypes:v20];
  if ([(NSDictionary *)v12->deviceOptions objectForKey:@"MultipleManifests"])
  {
    [(EAFirmwareUpdater *)v12->firmwareUpdater setManifestIDs:[(NSDictionary *)v12->deviceOptions objectForKey:@"MultipleManifests"]];
  }

  if ([-[NSDictionary objectForKey:](v12->deviceOptions objectForKey:{@"ExcludeUniqueAccessoryCheck", "BOOLValue"}])
  {
    [(EAFirmwareUpdater *)v12->firmwareUpdater setExcludeUniqueAccessoryCheck:1];
  }

  [(EAFirmwareUpdater *)v12->firmwareUpdater setOverrideFile:@"/var/db/accessoryupdater/ea_updater_override.plist"];
  if (MGGetBoolAnswer())
  {
    v39 = +[NSURL URLWithString:](NSURL, "URLWithString:", [@"/var/db/accessoryupdater/" stringByAppendingPathComponent:v44]);
    v12->dropboxPath = v39;
    [(FudPluginDelegate *)v12->delegate log:7 format:@"Default Dropbox Path: %@", v39];
  }

  if ([(EAFirmwareUpdater *)v12->firmwareUpdater overrideProtocol])
  {
    [(EAAccessoryUpdater *)v12 overrideUpdaterOptions];
  }

  [(EAAccessoryUpdater *)v12 allowConditionalDownloadOnCellular];
  v47[0] = @"PrepareWeight";
  v47[1] = @"ApplyWeight";
  v48[0] = &off_100031790;
  v48[1] = &off_1000317A8;
  v47[2] = @"FinishWeight";
  v47[3] = @"AccessoryIdentifier";
  v48[2] = &off_100031790;
  v48[3] = v44;
  *infoCopy = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
  return v12;
}

- (void)dealloc
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater dealloc]", 316];

  v3.receiver = self;
  v3.super_class = EAAccessoryUpdater;
  [(EAAccessoryUpdater *)&v3 dealloc];
}

- (void)bootstrapWithOptions:(id)options
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater bootstrapWithOptions:]", 347];
  delegate = self->delegate;

  [(FudPluginDelegate *)delegate didBootstrap:1 info:0 error:0];
}

- (BOOL)setSeedParticipationStatusAndContinue
{
  protocolStrings = [(EAAccessory *)[(EAFirmwareUpdater *)self->firmwareUpdater accessory] protocolStrings];
  name = [(EAAccessory *)[(EAFirmwareUpdater *)self->firmwareUpdater accessory] name];
  serialNumber = [(EAAccessory *)[(EAFirmwareUpdater *)self->firmwareUpdater accessory] serialNumber];
  if (name)
  {
    v6 = serialNumber == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = serialNumber;
    v32 = name;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [(NSArray *)protocolStrings countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      v31 = v7;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(protocolStrings);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = [v12 containsString:@"dev"];
          if (v13 & 1) != 0 || ([v12 containsString:@"insec"])
          {
            v14 = v13 ^ 1;
            v15 = 1;
            v7 = v31;
            goto LABEL_17;
          }
        }

        v9 = [(NSArray *)protocolStrings countByEnumeratingWithState:&v33 objects:v37 count:16];
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v7 = v31;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

LABEL_17:
    v16 = v14;
    self->_accessoryFusingType = [NSString stringWithUTF8String:AUDeveloperSettingsAccessoryFusingTypeToString()];
    v17 = +[AUDeveloperSettingsDatabase sharedDatabase];
    v18 = [objc_msgSend(objc_msgSend(v17 "accessoriesDictionary")];
    if (v18)
    {
      v19 = v18;
      if ([objc_msgSend(v18 objectForKeyedSubscript:{kIsOTADisabledKey), "BOOLValue"}])
      {
        [(FudPluginDelegate *)self->delegate log:5 format:@"Entry found in AUDeveloperSettingsDatabase Accessory:%@ with OTA Update disabled, not attempting update", v32];
        return 0;
      }

      v28 = [(EAAccessoryUpdater *)self getAssetLocation:v19];
      [(FudPluginDelegate *)self->delegate log:5 format:@"Entry found in AUDeveloperSettingsDatabase Accessory:%@ assetLocation:%@", v32, v28];
      v29 = kNameKey;
      if (!-[NSString isEqualToString:](v32, "isEqualToString:", [v19 objectForKeyedSubscript:kNameKey]))
      {
        [(FudPluginDelegate *)self->delegate log:6 format:@"Updating name of accessory in AUDeveloperSettingsDatabase to %@", v32];
        [v19 setObject:-[NSString copy](v32 forKeyedSubscript:{"copy"), v29}];
      }

      if (!v28)
      {
        if ((v15 & MGGetBoolAnswer()) != 0)
        {
          v30 = @"No asset location found for %@, defaulting to Livability for internal builds and non-prod accessory";
        }

        else
        {
          v30 = @"No asset location found for %@, defaulting to Customer (Mesu) for customer build or prod fused accessory";
        }

        [v19 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", AUDeveloperSettingsURLTypeToString()), kAssetLocationKey}];
        [(FudPluginDelegate *)self->delegate log:6 format:v30, v32];
      }

      [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:kUARPSupportedAccessoryKeySupportsDeveloperSettings];
      [(EAAccessoryUpdater *)self updateAccessoryInfoInDatabaseIfNeeded:v19];
    }

    else
    {
      v21 = +[NSMutableDictionary dictionary];
      v22 = [(NSString *)v32 copy];
      [v21 setObject:v22 forKeyedSubscript:kNameKey];
      [v21 setObject:self->_accessoryFusingType forKeyedSubscript:kFusingKey];
      v23 = [(NSString *)[(EAAccessory *)[(EAFirmwareUpdater *)self->firmwareUpdater accessory] firmwareRevision] copy];
      [v21 setObject:v23 forKeyedSubscript:kActiveVersionKey];
      v24 = [(NSString *)[(EAAccessory *)[(EAFirmwareUpdater *)self->firmwareUpdater accessory] modelNumber] copy];
      [v21 setObject:v24 forKeyedSubscript:kModelNumberKey];
      v25 = [NSString stringWithUTF8String:AUDeveloperSettingsURLTypeToString()];
      v26 = kAssetLocationKey;
      [v21 setObject:v25 forKeyedSubscript:kAssetLocationKey];
      [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:kUARPSupportedAccessoryKeySupportsDeveloperSettings];
      v27 = MGGetBoolAnswer();
      if ((v13 | v16) == 1 && v27)
      {
        [v21 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", AUDeveloperSettingsURLTypeToString()), v26}];
      }

      v28 = [(EAAccessoryUpdater *)self getAssetLocation:v21];
      [v17 addAccessoryWithSerialNumber:v7 info:{+[NSDictionary dictionaryWithDictionary:](NSDictionary, "dictionaryWithDictionary:", v21)}];
      [(FudPluginDelegate *)self->delegate log:5 format:@"Added Entry for %@ in AUDeveloperSettingsDatabase %@", v32, v17];
    }

    [(EAFirmwareUpdater *)self->firmwareUpdater setAssetLocationOverride:[NSURL URLWithString:v28]];
  }

  return 1;
}

- (id)getAssetLocation:(id)location
{
  [location objectForKeyedSubscript:kAssetLocationKey];
  v5 = AUDeveloperSettingsURLStringToType();
  if (v5 == 5)
  {
    v6 = [location objectForKeyedSubscript:kBasejumperTrainKey];
    v7 = [location objectForKeyedSubscript:kBasejumperBuildKey];

    return [(EAAccessoryUpdater *)self assetLocationForCustomBasejumperTrain:v6 build:v7];
  }

  else
  {
    v8 = v5;
    if ([location objectForKeyedSubscript:kBasejumperBuildKey])
    {
      v9 = 0;
    }

    else
    {
      v9 = [location objectForKeyedSubscript:kBasejumperTrainKey];
    }

    return [(EAAccessoryUpdater *)self assetLocationForType:v8 withTrain:v9];
  }
}

- (void)updateAccessoryInfoInDatabaseIfNeeded:(id)needed
{
  name = [(EAAccessory *)[(EAFirmwareUpdater *)self->firmwareUpdater accessory] name];
  firmwareRevision = [(EAAccessory *)[(EAFirmwareUpdater *)self->firmwareUpdater accessory] firmwareRevision];
  modelNumber = [(EAAccessory *)[(EAFirmwareUpdater *)self->firmwareUpdater accessory] modelNumber];
  v12 = [needed mutableCopy];
  v8 = kNameKey;
  if (([objc_msgSend(needed objectForKeyedSubscript:{kNameKey), "isEqualToString:", name}] & 1) == 0)
  {
    [v12 setObject:name forKeyedSubscript:v8];
  }

  v9 = kActiveVersionKey;
  if (([objc_msgSend(needed objectForKeyedSubscript:{kActiveVersionKey), "isEqualToString:", firmwareRevision}] & 1) == 0)
  {
    [v12 setObject:firmwareRevision forKeyedSubscript:v9];
  }

  v10 = kModelNumberKey;
  if (([objc_msgSend(needed objectForKeyedSubscript:{kModelNumberKey), "isEqualToString:", modelNumber}] & 1) == 0)
  {
    [v12 setObject:modelNumber forKeyedSubscript:v10];
  }

  v11 = kFusingKey;
  if (([objc_msgSend(needed objectForKeyedSubscript:{kFusingKey), "isEqualToString:", self->_accessoryFusingType}] & 1) == 0)
  {
    [v12 setObject:self->_accessoryFusingType forKeyedSubscript:v11];
  }

  [+[AUDeveloperSettingsDatabase sharedDatabase](AUDeveloperSettingsDatabase "sharedDatabase")];
}

- (id)assetLocationForType:(unint64_t)type withTrain:(id)train
{
  v5 = 0;
  if (type <= 3)
  {
    if (type <= 1)
    {
      if (!type)
      {
        trainCopy = train;
        if (![train length])
        {
          trainCopy = [(EAAccessoryUpdater *)self trainName];
        }

        trainCopy = [NSString stringWithFormat:@"%@/%@", getURLForAssetURLType(), trainCopy];
        goto LABEL_21;
      }

      if (type == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }

    if (type != 2)
    {
LABEL_19:
      URLForAssetURLType = getURLForAssetURLType();
      v7 = &kUARPAssetLocationTypeMobileAssetServerAirPodsPublicSeed;
      goto LABEL_20;
    }

LABEL_18:
    trainCopy = getURLForAssetURLType();
LABEL_21:
    v5 = trainCopy;
    goto LABEL_22;
  }

  if (type <= 6)
  {
    if (type != 4 && type != 6)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (type == 7)
  {
    goto LABEL_19;
  }

  if (type == 8)
  {
LABEL_14:
    URLForAssetURLType = getURLForAssetURLType();
    v7 = &kUARPAssetLocationTypeMobileAssetServerAirPodsDeveloperSeed;
LABEL_20:
    trainCopy = [URLForAssetURLType stringByAppendingPathComponent:*v7];
    goto LABEL_21;
  }

LABEL_22:
  [(FudPluginDelegate *)self->delegate log:7 format:@"Selected location: %@", v5];
  return v5;
}

- (id)trainName
{
  if (qword_100038FA8 != -1)
  {
    sub_1000160A8();
  }

  if (qword_100038FB0)
  {
    return [NSString stringWithFormat:@"%s", qword_100038FB0];
  }

  else
  {
    return 0;
  }
}

- (int64_t)compareLongVersionString:(id *)string withFirmwareVersion:(id *)version
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater compareLongVersionString:withFirmwareVersion:]", 677];
  if (version->var0 > string->var0)
  {
    goto LABEL_2;
  }

  if (version->var0 < string->var0)
  {
LABEL_4:
    v7 = 1;
    goto LABEL_5;
  }

  var1 = version->var1;
  v10 = string->var1;
  if (var1 > v10)
  {
    goto LABEL_2;
  }

  if (var1 < v10)
  {
    goto LABEL_4;
  }

  var2 = version->var2;
  v12 = string->var2;
  if (var2 > v12)
  {
LABEL_2:
    v7 = -1;
    goto LABEL_5;
  }

  if (var2 < v12)
  {
    goto LABEL_4;
  }

  var3 = version->var3;
  v14 = string->var3;
  v15 = var3 > v14;
  v16 = var3 < v14;
  if (v15)
  {
    v7 = -1;
  }

  else
  {
    v7 = v16;
  }

LABEL_5:
  [(FudPluginDelegate *)self->delegate log:6 format:@"Comparing Result: %ld, AccessoryVersion: %lld.%lld.%lld.%lld FirmwareVersion: %lld.%lld.%lld.%lld", v7, string->var0, string->var1, string->var2, string->var3, version->var0, version->var1, version->var2, version->var3];
  return v7;
}

- (BOOL)prepareFirmwareBundlesFromDropbox:(id)dropbox error:(id *)error
{
  p_delegate = &self->delegate;
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater prepareFirmwareBundlesFromDropbox:error:]", 727];
  v8 = [NSArray arrayWithObjects:NSURLIsDirectoryKey, NSURLLocalizedNameKey, 0];
  if (!MGGetBoolAnswer())
  {
    v16 = @"Not Applicable.";
LABEL_16:
    sub_1000160F0(v34, v16, &v34[0]._reserved, error, &v25);
    return v25;
  }

  [(FudPluginDelegate *)self->delegate log:5 format:@"%s: attempting to use files from dropbox: %@", "[EAAccessoryUpdater prepareFirmwareBundlesFromDropbox:error:]", self->dropboxPath];
  currentFirmwareVersionOnAcc = [(EAFirmwareUpdater *)self->firmwareUpdater currentFirmwareVersionOnAcc];
  v32 = 0u;
  v33 = 0u;
  if (![(EAAccessoryUpdater *)self accessoryVersionFromString:currentFirmwareVersionOnAcc accyVersion:&v32])
  {
    v16 = @"Accessory Firmware Version Reading Error";
    goto LABEL_16;
  }

  [dropbox setObject:currentFirmwareVersionOnAcc forKey:@"existingFWVersionOnAccessory"];
  v10 = -[NSArray mutableCopy]([+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtURL:"contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:" includingPropertiesForKeys:self->dropboxPath options:v8 error:4, 0], "mutableCopy");
  [v10 sortUsingComparator:&stru_10002CD48];
  if (![v10 count])
  {
    v16 = @"No Firmware Bundle Is Available";
    goto LABEL_16;
  }

  errorCopy = error;
  dropboxCopy = dropbox;
  [(FudPluginDelegate *)*p_delegate log:5 format:@"Firmware Bundles (In Descending Oder):%@", v10];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:&v34[0]._code count:16];
  if (!v11)
  {
LABEL_13:
    sub_1000160BC(p_delegate);
LABEL_14:
    v16 = @"No Firmware Bundle Is Available, either the folder name is incorrect or no firmware bundle has higher firmware version.";
LABEL_15:
    error = errorCopy;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = *v29;
LABEL_6:
  v14 = 0;
  while (1)
  {
    if (*v29 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v28 + 1) + 8 * v14);
    v27 = 0;
    [v15 getResourceValue:&v27 forKey:NSURLLocalizedNameKey error:0];
    v25 = 0u;
    v26 = 0u;
    if ([(EAAccessoryUpdater *)self accessoryVersionFromString:v27 accyVersion:&v25])
    {
      [(FudPluginDelegate *)self->delegate log:6 format:@"Checking firmware bundle: %@", v15];
      v24[0] = v32;
      v24[1] = v33;
      v23[0] = v25;
      v23[1] = v26;
      if ([(EAAccessoryUpdater *)self compareLongVersionString:v24 withFirmwareVersion:v23]== -1)
      {
        break;
      }
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v28 objects:&v34[0]._code count:16];
      if (v12)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  [dropboxCopy setObject:v27 forKey:@"newFWVersion"];
  [(FudPluginDelegate *)*p_delegate log:5 format:@"Using firmware bundle in dropbox: %@", v15];
  if (!v15)
  {
    goto LABEL_14;
  }

  v18 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtURL:"contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:" includingPropertiesForKeys:[NSURL URLWithString:v15 relativeToURL:?], v8, 4, 0];
  if (![(NSArray *)v18 count])
  {
    v16 = @"Cannot locate available firmware files";
    goto LABEL_15;
  }

  v19 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtURL:"contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:" includingPropertiesForKeys:[NSURL URLWithString:v15 relativeToURL:?], v8, 4, 0];
  if ([(NSArray *)v19 count])
  {
    [(FudPluginDelegate *)*p_delegate log:5 format:@"Using BuildManifest: %@", [(NSArray *)v19 objectAtIndex:0]];
    v20 = [NSDictionary dictionaryWithContentsOfURL:[(NSArray *)v19 objectAtIndex:0]];
    if (!v20)
    {
      v16 = @"Failed to Read from Build Manifest";
      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0;
  }

  [(EAFirmwareUpdater *)self->firmwareUpdater setFirmwareURL:[(NSArray *)v18 objectAtIndex:0] withManifest:v20 signature:0 certificate:0 hash:0];
  return 1;
}

- (void)downloadFirmwareWithOptions:(id)options
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater downloadFirmwareWithOptions:]", 1125];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = sub_100012A50;
  v8[4] = sub_100012A60;
  v8[5] = 0;
  consentRequired = [(EAAccessoryUpdater *)self consentRequired];
  if ([(EAFirmwareUpdater *)self->firmwareUpdater isMultiAssetSession])
  {
    [(FudPluginDelegate *)self->delegate log:3 format:@"%s: multi asset session - download NOP %@", "[EAAccessoryUpdater downloadFirmwareWithOptions:]", self->deviceClass];
    [(FudPluginDelegate *)self->delegate didDownload:1 info:0 error:0];
  }

  else
  {
    firmwareUpdater = self->firmwareUpdater;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100012A6C;
    v6[3] = &unk_10002CD98;
    v7 = consentRequired;
    v6[4] = self;
    v6[5] = v8;
    [(EAFirmwareUpdater *)firmwareUpdater downloadAsset:v6];
  }

  _Block_object_dispose(v8, 8);
}

- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater personalizationResponse:response:status:]", 1170];
  firmwareUpdater = self->firmwareUpdater;

  [(EAFirmwareUpdater *)firmwareUpdater personalizationResponse:a4 error:status];
}

- (void)prepareFirmwareWithOptions:(id)options
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater prepareFirmwareWithOptions:]", 1183];
  delegate = self->delegate;

  [(FudPluginDelegate *)delegate didPrepare:1 info:0 error:0];
}

- (void)applyFirmwareWithOptions:(id)options
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater applyFirmwareWithOptions:]", 1192];
  firmwareUpdater = self->firmwareUpdater;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012E0C;
  v8[3] = &unk_10002CDC0;
  v8[4] = self;
  v6[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012E7C;
  v7[3] = &unk_10002CDE8;
  v7[4] = self;
  v5[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012F0C;
  v6[3] = &unk_10002CE10;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100012FD0;
  v5[3] = &unk_10002CE38;
  [(EAFirmwareUpdater *)firmwareUpdater applyFirmware:v8 progress:v7 update:v6 personalization:v5];
}

- (void)finishWithOptions:(id)options
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater finishWithOptions:]", 1248];
  [(EAFirmwareUpdater *)self->firmwareUpdater isRestartRequired];
  [(EAFirmwareUpdater *)self->firmwareUpdater isSleepWakeRequired];
  [(EAFirmwareUpdater *)self->firmwareUpdater isUrgentUpdate];
  if ([(EAAccessoryUpdater *)self consentRequired])
  {
    [(EAFirmwareUpdater *)self->firmwareUpdater purgeAsset];
  }

  delegate = self->delegate;
  if (self->restartOnlyUI)
  {
    v5 = &__NSDictionary0__struct;
  }

  else
  {
    v5 = 0;
  }

  [(FudPluginDelegate *)delegate didFinish:1 info:v5 error:0];
}

- (BOOL)shouldUpdateBeSilent:(id)silent
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater shouldUpdateBeSilent:]", 1275];
  firmwareUpdater = self->firmwareUpdater;

  return [(EAFirmwareUpdater *)firmwareUpdater forceSilentUpdate];
}

- (BOOL)consentRequired
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  assetLocation = [(EAFirmwareUpdater *)self->firmwareUpdater assetLocation];
  [(FudPluginDelegate *)self->delegate log:7 format:@"%s: asset Location %@", "[EAAccessoryUpdater consentRequired]", assetLocation];
  if (assetLocation && [(NSMutableSet *)self->seedLocations count])
  {
    seedLocations = self->seedLocations;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100013244;
    v7[3] = &unk_10002CE60;
    v7[4] = assetLocation;
    v7[5] = self;
    v7[6] = &v8;
    [(NSMutableSet *)seedLocations enumerateObjectsUsingBlock:v7];
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
    *(v9 + 24) = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater encodeWithCoder:]", 1442];
  [coder encodeObject:self->deviceClass forKey:@"DeviceClass"];
  [coder encodeObject:self->mobileAssetType forKey:self->mobileAssetType];
  if (self->initOptions)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (BOOL)accessoryVersionFromString:(id)string accyVersion:(id *)version
{
  if (!version)
  {
    return 0;
  }

  v5 = [string componentsSeparatedByString:@"."];
  if ([v5 count] < 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_msgSend(v5 objectAtIndex:{3), "intValue"}];
  }

  version->var3 = v6;
  if ([v5 count] < 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_msgSend(v5 objectAtIndex:{2), "intValue"}];
  }

  version->var2 = v7;
  if ([v5 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_msgSend(v5 objectAtIndex:{1), "intValue"}];
  }

  version->var1 = v8;
  v9 = [v5 count];
  v10 = v9 != 0;
  if (v9)
  {
    v11 = [objc_msgSend(v5 objectAtIndex:{0), "intValue"}];
  }

  else
  {
    v11 = 0;
  }

  version->var0 = v11;
  return v10;
}

- (void)overrideUpdaterOptions
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater overrideUpdaterOptions]", 1321];
  v3 = copyPlistDeviceEntryFromDeviceClass(self->deviceClass);
  if (v3)
  {
    if ([v3 objectForKey:@"closeEASession"])
    {
      -[EAFirmwareUpdater setCloseEASession:](self->firmwareUpdater, "setCloseEASession:", [objc_msgSend(v3 objectForKey:{@"closeEASession", "BOOLValue"}]);
    }

    if ([v3 objectForKey:@"dropboxPath"])
    {
      self->localFilePath = [v3 objectForKey:@"dropboxPath"];
    }
  }
}

- (void)allowConditionalDownloadOnCellular
{
  deviceOptions = self->deviceOptions;
  if (deviceOptions && [-[NSDictionary objectForKey:](deviceOptions objectForKey:{@"NeedsMADownloadOnCellular", "BOOLValue"}] && ((MGGetBoolAnswer() & 1) != 0 || !-[EAAccessoryUpdater isRoamingEnabled](self, "isRoamingEnabled")))
  {
    [(FudPluginDelegate *)self->delegate log:7 format:@"%s: MA Download On cellular allowed for %@", "[EAAccessoryUpdater allowConditionalDownloadOnCellular]", self->deviceClass];
    firmwareUpdater = self->firmwareUpdater;

    [(EAFirmwareUpdater *)firmwareUpdater setDownloadOnCellularAllowed:1];
  }
}

- (BOOL)isRoamingEnabled
{
  v7 = 0;
  v3 = objc_alloc_init(CoreTelephonyClient);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 getInternationalDataAccessStatusSync:&v7];
    if (v7)
    {
      [(FudPluginDelegate *)self->delegate log:7 format:@"error = %@", v7];
    }
  }

  else
  {
    v5 = 1;
  }

  [(FudPluginDelegate *)self->delegate log:7 format:@"isRoamingEnabled = %d", v5];
  return v5;
}

- (EAAccessoryUpdater)initWithCoder:(id)coder
{
  [(FudPluginDelegate *)self->delegate log:5 format:@"Entering: %s:%d", "[EAAccessoryUpdater initWithCoder:]", 1389];
  v14.receiver = self;
  v14.super_class = EAAccessoryUpdater;
  v5 = [(EAAccessoryUpdater *)&v14 init];
  v5->delegate = 0;
  v5->deviceClass = [coder decodeObjectForKey:@"DeviceClass"];
  v5->mobileAssetType = [coder decodeObjectForKey:@"MobileAssetType"];
  v5->initOptions = [coder decodeObjectForKey:@"InitOptions"];
  v6 = copyPlistDeviceEntryFromDeviceClass(v5->deviceClass);
  v5->deviceOptions = v6;
  if (!v6)
  {
    [(FudPluginDelegate *)v5->delegate log:3 format:@"Failed to get plist entry for device class"];
    goto LABEL_9;
  }

  v7 = [-[NSDictionary objectForKey:](v6 objectForKey:{@"skipDFUMode", "BOOLValue"}];
  deviceOptions = v5->deviceOptions;
  if (deviceOptions)
  {
    v9 = [-[NSDictionary objectForKey:](deviceOptions objectForKey:{@"disableByteEscaping", "BOOLValue"}];
    v10 = v5->deviceOptions;
    if (v10)
    {
      v11 = [-[NSDictionary objectForKey:](v10 objectForKey:{@"skipReconnect", "BOOLValue"}];
      goto LABEL_5;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
LABEL_5:
  v12 = [[EAFirmwareUpdater alloc] initWithDeviceClass:v5->deviceClass assetType:v5->mobileAssetType skipDFU:v7 byteEscape:v9 ^ 1 skipReconnect:v11 skipVersionCheck:0 options:v5->deviceOptions serialNum:[(NSDictionary *)v5->initOptions objectForKey:@"SerialNumber"]];
  v5->firmwareUpdater = v12;
  if (!v12)
  {
LABEL_9:

    return 0;
  }

  if ([(EAFirmwareUpdater *)v12 overrideProtocol])
  {
    [(EAAccessoryUpdater *)v5 overrideUpdaterOptions];
  }

  return v5;
}

@end