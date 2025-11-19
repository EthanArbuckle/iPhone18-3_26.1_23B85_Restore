@interface HUHearingAidSettings
+ (id)sharedInstance;
- (BOOL)isDeviceIDOnCloudDenylist:(id)a3;
- (BOOL)isPairedWithFakeHearingAids;
- (BOOL)isPairedWithRealHearingAids;
- (BOOL)isiCloudPaired;
- (BOOL)shouldUseiCloud;
- (HUHearingAidSettings)init;
- (NSArray)peripheralUUIDs;
- (NSDictionary)knownPeripheralUUIDs;
- (NSDictionary)pairedHearingAids;
- (NSString)availableHearingDeviceName;
- (id)convertPersistentRepresentation:(id)a3 fromVersion:(float)a4 toVersion:(float)a5;
- (id)deviceIDForPairingInformation:(id)a3;
- (id)preferenceDomainForPreferenceKey:(id)a3;
- (id)preferenceKeyForSelector:(SEL)a3;
- (unint64_t)hearingAidsLEAVersionFromiCloud;
- (void)_initializeICloudSetup;
- (void)_updateTripleClickOptionsForPairedAids:(id)a3;
- (void)accountCredentialChanged:(id)a3;
- (void)accountWasAdded:(id)a3;
- (void)accountWasModified:(id)a3;
- (void)accountWasRemoved:(id)a3;
- (void)addDeviceIDToCloudDenylist:(id)a3;
- (void)dealloc;
- (void)logMessage:(id)a3;
- (void)pairedWatchDidChange:(id)a3;
- (void)pushLocalHearingAidsToiCloud;
- (void)removeDeviceIDFromCloudDenylist:(id)a3;
- (void)setAvailableHearingDeviceName:(id)a3;
- (void)setCallAudioRoute:(int64_t)a3;
- (void)setComplicationPreferredDisplayMode:(int64_t)a3;
- (void)setLocalHearingAidsFromiCloud:(id)a3;
- (void)setMediaAudioRoute:(int64_t)a3;
- (void)setPairedHearingAids:(id)a3;
- (void)setUsedHearingFeatures:(unint64_t)a3;
- (void)shouldUseiCloud;
- (void)updateStreamingPreference;
@end

@implementation HUHearingAidSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[HUHearingAidSettings sharedInstance];
  }

  v3 = sharedInstance_Settings_1;

  return v3;
}

- (NSDictionary)pairedHearingAids
{
  v3 = [(HCSettings *)self objectValueForKey:kAXSPairedHearingUUIDsPreference withClass:objc_opt_class() andDefaultValue:0];
  v4 = [v3 objectForKey:@"ax_hearing_device_version_key"];

  if (v4)
  {
    v7 = [v3 objectForKey:@"ax_hearing_device_version_key"];
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  LODWORD(v6) = 2.0;
  *&v5 = v9;
  v10 = [(HUHearingAidSettings *)self convertPersistentRepresentation:v3 fromVersion:v5 toVersion:v6];

  return v10;
}

- (NSArray)peripheralUUIDs
{
  v3 = objc_opt_new();
  v4 = [(HUHearingAidSettings *)self pairedHearingAids];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"ax_hearing_device_left_peripheral_key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:@"ax_hearing_device_uuid_key"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 hcSafeAddObject:v6];
      }
    }

    v7 = [v4 objectForKey:@"ax_hearing_device_right_peripheral_key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKey:@"ax_hearing_device_uuid_key"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 hcSafeAddObject:v8];
      }
    }
  }

  return v3;
}

- (BOOL)isPairedWithRealHearingAids
{
  v3 = [(HUHearingAidSettings *)self pairedHearingAids];
  if (v3 && ![(HUHearingAidSettings *)self isPairedWithFakeHearingAids])
  {
    v4 = ![(HUHearingAidSettings *)self isiCloudPaired];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)availableHearingDeviceName
{
  v3 = kAXSAvailableHearingDeviceNamePreference;
  v4 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:v3 withClass:v4 andDefaultValue:0];
}

uint64_t __38__HUHearingAidSettings_sharedInstance__block_invoke()
{
  sharedInstance_Settings_1 = objc_alloc_init(HUHearingAidSettings);

  return MEMORY[0x1EEE66BB8]();
}

- (HUHearingAidSettings)init
{
  v16.receiver = self;
  v16.super_class = HUHearingAidSettings;
  v2 = [(HCSettings *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("hearing-icloud-initialization", 0);
    [(HUHearingAidSettings *)v2 setIcloudInitializationQueue:v3];

    if ([MEMORY[0x1E69A4560] isProtectedDataAvailable])
    {
      v4 = [(HUHearingAidSettings *)v2 icloudInitializationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__HUHearingAidSettings_init__block_invoke;
      block[3] = &unk_1E85C9F60;
      v15 = v2;
      dispatch_async(v4, block);
    }

    else
    {
      v5 = HCLogHearingAids();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Skipping iCloud setup. Device is locked", &buf, 2u);
      }

      if (MKBDeviceFormattedForContentProtection())
      {
        objc_initWeak(&buf, v2);
        v6 = [(HUHearingAidSettings *)v2 icloudInitializationQueue];
        v7 = *MEMORY[0x1E69B1A70];
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __28__HUHearingAidSettings_init__block_invoke_76;
        handler[3] = &unk_1E85CAF10;
        objc_copyWeak(&v12, &buf);
        notify_register_dispatch(v7, &v2->_contentProtectionNotifyToken, v6, handler);

        objc_destroyWeak(&v12);
        objc_destroyWeak(&buf);
      }
    }

    if ([MEMORY[0x1E69A4560] currentProcessIsHeard])
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:v2 selector:sel_pairedWatchDidChange_ name:*MEMORY[0x1E69B3660] object:0];

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:v2 selector:sel_pairedWatchDidChange_ name:*MEMORY[0x1E69B3690] object:0];
    }
  }

  return v2;
}

void __28__HUHearingAidSettings_init__block_invoke_76(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _initializeICloudSetup];
}

- (void)_initializeICloudSetup
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(HUHearingAidSettings *)self shouldUseiCloud]&& !self->_finishediCloudSetup)
  {
    self->_finishediCloudSetup = 1;
    v3 = [(HUHearingAidSettings *)self pairedHearingAids];
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HearingAidSettings: init iCloud, Paired Hearing Aids from local plist %@", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E696A9E8];
    v7 = [MEMORY[0x1E696AFB8] defaultStore];
    [v5 addObserver:self selector:sel_icloudHearingSettingsDidChange_ name:v6 object:v7];

    v8 = [MEMORY[0x1E696AFB8] defaultStore];
    [v8 synchronize];

    if (v3)
    {
      [(HUHearingAidSettings *)self pushLocalHearingAidsToiCloud];
    }

    [(HUHearingAidSettings *)self icloudHearingSettingsDidChange:0];
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69597F8], 0}];
    v10 = [objc_alloc(MEMORY[0x1E6959A60]) initWithAccountTypes:v9 delegate:self];
    accountStore = self->_accountStore;
    self->_accountStore = v10;

    [(ACMonitoredAccountStore *)self->_accountStore registerWithCompletion:&__block_literal_global_88];
    if ([(HUHearingAidSettings *)self isiCloudPaired])
    {
      _AXSHearingSetDevicePairedEars();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __46__HUHearingAidSettings__initializeICloudSetup__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [v2 count];
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidSettings: iCloud Account: %d", v5, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)accountWasAdded:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ACMonitoredAccountStore *)self->_accountStore monitoredAccounts];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "iCloud: Account was added: %@", &v7, 0xCu);
  }

  [(HUHearingAidSettings *)self iCloudAccountDidChange:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)accountWasModified:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ACMonitoredAccountStore *)self->_accountStore monitoredAccounts];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "iCloud: Account was modified: %@", &v7, 0xCu);
  }

  [(HUHearingAidSettings *)self iCloudAccountDidChange:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)accountWasRemoved:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ACMonitoredAccountStore *)self->_accountStore monitoredAccounts];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "iCloud: Account was removed: %@", &v7, 0xCu);
  }

  [(HUHearingAidSettings *)self iCloudAccountDidChange:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)accountCredentialChanged:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ACMonitoredAccountStore *)self->_accountStore monitoredAccounts];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "iCloud: Account credential has changed: %@", &v7, 0xCu);
  }

  [(HUHearingAidSettings *)self iCloudAccountDidChange:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)pairedWatchDidChange:(id)a3
{
  v3 = [(HUHearingAidSettings *)self pairedHearingAids];
  v6 = v3;
  if (v3)
  {
    v4 = cloudHearingAidDescriptionForDescription(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = +[HANanoSettings sharedInstance];
  [v5 setValue:v4 forPreferenceKey:kAXSWatchSyncPairedUUIDsPreference];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUHearingAidSettings;
  [(HCSettings *)&v4 dealloc];
}

- (BOOL)isPairedWithFakeHearingAids
{
  v2 = [(HUHearingAidSettings *)self pairedHearingAids];
  v3 = [v2 valueForKey:@"ax_hearing_device_fake_type_key"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isiCloudPaired
{
  v2 = [(HUHearingAidSettings *)self pairedHearingAids];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"ax_hearing_device_left_peripheral_key"];
    v4 = [v2 objectForKey:@"ax_hearing_device_right_peripheral_key"];
    v5 = [v3 objectForKey:@"ax_hearing_device_uuid_key"];
    v6 = *MEMORY[0x1E69A4538];
    if ([v5 hasPrefix:*MEMORY[0x1E69A4538]])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v4 objectForKey:@"ax_hearing_device_uuid_key"];
      v7 = [v8 hasPrefix:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hearingAidsLEAVersionFromiCloud
{
  v2 = [(HUHearingAidSettings *)self pairedHearingAids];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"ax_hearing_device_left_peripheral_key"];
    v4 = [v2 objectForKey:@"ax_hearing_device_right_peripheral_key"];
    v5 = [v3 objectForKey:@"ax_hearing_device_lea_version_key"];
    if (v5)
    {
    }

    else
    {
      v7 = [v4 objectForKey:@"ax_hearing_device_lea_version_key"];

      if (!v7)
      {
        v6 = 1;
LABEL_12:

        goto LABEL_13;
      }
    }

    v8 = [v3 objectForKey:@"ax_hearing_device_lea_version_key"];
    v9 = [v8 intValue];

    v10 = [v4 objectForKey:@"ax_hearing_device_lea_version_key"];
    v11 = [v10 intValue];

    if (v11 == 1 || v9 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v11 | v9;
    }

    goto LABEL_12;
  }

  v6 = 1;
LABEL_13:

  return v6;
}

- (id)convertPersistentRepresentation:(id)a3 fromVersion:(float)a4 toVersion:(float)a5
{
  v49[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (a4 == a5)
  {
    v9 = v7;
    goto LABEL_27;
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  if (a4 == 1.0)
  {
    v11 = [v8 objectForKey:@"ax_hearing_device_name_key"];
    if ([v11 length])
    {
      [v10 setObject:v11 forKey:@"ax_hearing_device_name_key"];
    }

    v12 = [v8 objectForKey:@"ax_hearing_device_model_key"];
    v13 = [v8 objectForKey:@"ax_hearing_device_man_key"];
    if ([v12 length] && objc_msgSend(v13, "length"))
    {
      v14 = [&unk_1F5623D28 stringValue];
      v47[1] = v13;
      v48[0] = v14;
      v47[0] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      v49[0] = v15;
      v16 = [&unk_1F5623D40 stringValue];
      v48[1] = v16;
      v46[0] = v12;
      v46[1] = v12;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
      v49[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      [v10 setObject:v18 forKey:@"ax_hearing_device_man_model_key"];
    }

    v19 = [v8 objectForKey:@"ax_hearing_device_lr_key"];
    if (v19)
    {
      [v10 setObject:v19 forKey:@"ax_hearing_device_lr_key"];
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __78__HUHearingAidSettings_convertPersistentRepresentation_fromVersion_toVersion___block_invoke;
    v44[3] = &unk_1E85CA6C0;
    v10 = v10;
    v45 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v44];
  }

  else if (a4 == 2.0)
  {
    v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];

    v10 = v20;
  }

  if ([v10 count] < 4)
  {
    goto LABEL_25;
  }

  if (a5 == 1.0)
  {
    v21 = [v10 objectForKey:@"ax_hearing_device_left_peripheral_key"];
    v22 = [v10 objectForKey:@"ax_hearing_device_right_peripheral_key"];
    v23 = [v10 objectForKey:@"ax_hearing_device_man_model_key"];
    if ([v21 count] == 4)
    {
      v24 = MEMORY[0x1E695DF20];
      v25 = [v21 objectForKey:@"ax_hearing_device_isleft_key"];
      v26 = [v21 objectForKey:@"ax_hearing_device_hiid_key"];
      v27 = [v21 objectForKey:@"ax_hearing_device_hiidother_key"];
      v28 = [v24 dictionaryWithObjectsAndKeys:{v25, @"ax_hearing_device_isleft_key", v26, @"ax_hearing_device_hiid_key", v27, @"ax_hearing_device_hiidother_key", 0}];

      v29 = [v21 objectForKey:@"ax_hearing_device_uuid_key"];
      [v10 setObject:v28 forKey:v29];
    }

    if ([v22 count] == 4)
    {
      v30 = MEMORY[0x1E695DF20];
      v31 = [v22 objectForKey:@"ax_hearing_device_isleft_key"];
      v32 = [v22 objectForKey:@"ax_hearing_device_hiid_key"];
      v33 = [v22 objectForKey:@"ax_hearing_device_hiidother_key"];
      v34 = [v30 dictionaryWithObjectsAndKeys:{v31, @"ax_hearing_device_isleft_key", v32, @"ax_hearing_device_hiid_key", v33, @"ax_hearing_device_hiidother_key", 0}];

      v35 = [v22 objectForKey:@"ax_hearing_device_uuid_key"];
      [v10 setObject:v34 forKey:v35];
    }

    if ([v23 count] == 2)
    {
      v36 = [&unk_1F5623D28 stringValue];
      v37 = [v23 objectForKey:v36];
      v38 = [v37 firstObject];
      [v10 setObject:v38 forKey:@"ax_hearing_device_man_key"];

      v39 = [&unk_1F5623D40 stringValue];
      v40 = [v23 objectForKey:v39];
      v41 = [v40 firstObject];
      [v10 setObject:v41 forKey:@"ax_hearing_device_model_key"];
    }

    [v10 removeObjectForKey:@"ax_hearing_device_left_peripheral_key"];
    [v10 removeObjectForKey:@"ax_hearing_device_right_peripheral_key"];
    [v10 removeObjectForKey:@"ax_hearing_device_man_model_key"];
    [v10 removeObjectForKey:@"ax_hearing_device_version_key"];
    v9 = v10;

    goto LABEL_26;
  }

  if (a5 == 2.0)
  {
    v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v10];
  }

  else
  {
LABEL_25:
    v9 = 0;
  }

LABEL_26:

LABEL_27:
  v42 = *MEMORY[0x1E69E9840];

  return v9;
}

void __78__HUHearingAidSettings_convertPersistentRepresentation_fromVersion_toVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"ax_hearing_device_isleft_key"];
    v7 = [v6 BOOLValue];

    v8 = [v5 objectForKey:@"ax_hearing_device_hiid_key"];
    v9 = [v5 objectForKey:@"ax_hearing_device_hiidother_key"];
    v10 = [MEMORY[0x1E695DF90] dictionary];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
    {
      [v10 setObject:v8 forKey:@"ax_hearing_device_hiid_key"];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
    {
      [v10 setObject:v9 forKey:@"ax_hearing_device_hiidother_key"];
    }

    [v10 setObject:v13 forKey:@"ax_hearing_device_uuid_key"];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    [v10 setObject:v11 forKey:@"ax_hearing_device_isleft_key"];

    if (v7)
    {
      v12 = @"ax_hearing_device_left_peripheral_key";
    }

    else
    {
      v12 = @"ax_hearing_device_right_peripheral_key";
    }

    [*(a1 + 32) setObject:v10 forKey:v12];
  }
}

- (BOOL)shouldUseiCloud
{
  v2 = SecTaskCreateFromSelf(0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", &error);
  if (error)
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(HUHearingAidSettings *)&error shouldUseiCloud:v5];
    }

    CFRelease(error);
  }

  if (v4)
  {
    v12 = CFGetTypeID(v4);
    if (v12 == CFStringGetTypeID())
    {
      v13 = [v4 isEqualToString:@"com.apple.accessibility.heard"];
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v3);
  return v13;
}

void __55__HUHearingAidSettings_icloudHearingSettingsDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AFB8] defaultStore];
  v3 = [v2 dictionaryForKey:kAXSCloudHearingAidsPreference];

  v4 = [MEMORY[0x1E696AFB8] defaultStore];
  v5 = [v4 dictionaryForKey:kAXSCloudHearingDevicesPreference];

  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Paired Hearing Aids from iCloud %@", &v14, 0xCu);
  }

  v7 = [*(a1 + 32) pairedHearingAids];
  if (v7)
  {
  }

  else
  {
    v8 = [v5 valueForKey:@"ax_hearing_device_fake_type_key"];

    if (!v8)
    {
      if ([v5 count])
      {
        [*(a1 + 32) setLocalHearingAidsFromiCloud:v5];
      }

      else if ([v3 count])
      {
        v11 = *(a1 + 32);
        LODWORD(v9) = 1.0;
        LODWORD(v10) = 2.0;
        v12 = [v11 convertPersistentRepresentation:v3 fromVersion:v9 toVersion:v10];
        [v11 setLocalHearingAidsFromiCloud:v12];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __47__HUHearingAidSettings_iCloudAccountDidChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shouldUseiCloud];
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "HearingAidSettings, iCloudAccountDidChange (using=%d)", v9, 8u);
  }

  if ([*(a1 + 32) shouldUseiCloud])
  {
    v4 = [MEMORY[0x1E696AFB8] defaultStore];
    [v4 synchronize];

    v5 = [*(a1 + 32) pairedHearingAids];

    if (v5)
    {
      [*(a1 + 32) pushLocalHearingAidsToiCloud];
    }

    [*(a1 + 32) icloudHearingSettingsDidChange:0];
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = 0;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setLocalHearingAidsFromiCloud:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Set Paired Hearing Aids from iCloud %@", &v9, 0xCu);
  }

  v6 = [(HUHearingAidSettings *)self deviceIDForPairingInformation:v4];
  v7 = [(HUHearingAidSettings *)self isDeviceIDOnCloudDenylist:v6];

  if (!v7)
  {
    [(HUHearingAidSettings *)self setPairedHearingAids:v4];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pushLocalHearingAidsToiCloud
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109632;
    *v20 = [(HUHearingAidSettings *)self shouldUseiCloud];
    *&v20[4] = 1024;
    *&v20[6] = [(HUHearingAidSettings *)self shouldPushLocalAidsToiCloud];
    v21 = 1024;
    v22 = [(HUHearingAidSettings *)self isPairedWithFakeHearingAids];
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidSettings: pushLocalHearingAidsToiCloud, Using iCloud: %d, will push local Hearing Aids: %d, fake: %d", &v19, 0x14u);
  }

  if ([(HUHearingAidSettings *)self shouldUseiCloud]&& [(HUHearingAidSettings *)self shouldPushLocalAidsToiCloud]&& ![(HUHearingAidSettings *)self isPairedWithFakeHearingAids])
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(HUHearingAidSettings *)self pairedHearingAids];
      v19 = 138412290;
      *v20 = v5;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "iCloud: Pushing local aids to iCloud %@", &v19, 0xCu);
    }

    v6 = [MEMORY[0x1E696AFB8] defaultStore];
    [v6 synchronize];

    v7 = [MEMORY[0x1E696AFB8] defaultStore];
    [v7 removeObjectForKey:kAXSCloudHearingAidsPreference];

    v8 = [(HUHearingAidSettings *)self pairedHearingAids];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = cloudHearingAidDescriptionForDescription(v8);
      v10 = [MEMORY[0x1E696AFB8] defaultStore];
      LODWORD(v11) = 2.0;
      LODWORD(v12) = 1.0;
      v13 = [(HUHearingAidSettings *)self convertPersistentRepresentation:v9 fromVersion:v11 toVersion:v12];
      [v10 setDictionary:v13 forKey:kAXSCloudHearingAidsPreference];

      v14 = [MEMORY[0x1E696AFB8] defaultStore];
      [v14 setDictionary:v9 forKey:kAXSCloudHearingDevicesPreference];

      v15 = [MEMORY[0x1E696AFB8] defaultStore];
      [v15 synchronize];
    }

    else
    {
      if (v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      v16 = HCLogHearingAids();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "iCloud: Removing Hearing Aids from iCloud", &v19, 2u);
      }

      v17 = [MEMORY[0x1E696AFB8] defaultStore];
      [v17 removeObjectForKey:kAXSCloudHearingAidsPreference];

      v9 = [MEMORY[0x1E696AFB8] defaultStore];
      [v9 synchronize];
    }

    goto LABEL_15;
  }

LABEL_16:
  v18 = *MEMORY[0x1E69E9840];
}

- (id)preferenceDomainForPreferenceKey:(id)a3
{
  if ([a3 isEqualToString:kAXSAvailableHearingDeviceNamePreference])
  {
    v3 = _AXSAccessibilityPreferenceDomain();
  }

  else
  {
    v3 = *MEMORY[0x1E69E4D90];
  }

  return v3;
}

- (void)logMessage:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)preferenceKeyForSelector:(SEL)a3
{
  if (preferenceKeyForSelector__onceToken_0 != -1)
  {
    [HUHearingAidSettings preferenceKeyForSelector:];
  }

  v4 = preferenceKeyForSelector__SelectorMap_0;
  v5 = NSStringFromSelector(a3);
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"UnknownKey";
  }

  v8 = v7;

  return v7;
}

void __49__HUHearingAidSettings_preferenceKeyForSelector___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v33 = kAXSPairedHearingUUIDsPreference;
  v34 = v0;
  v42 = NSStringFromSelector(sel_pairedHearingAids);
  v32 = kAXSKnownPeripheralUUIDsPreference;
  v41 = NSStringFromSelector(sel_knownPeripheralUUIDs);
  v31 = kAXSHearingAidEarIndependencePreference;
  v40 = NSStringFromSelector(sel_independentHearingAidSettings);
  v30 = kAXSHearingAidsStreamToLeftPreference;
  v39 = NSStringFromSelector(sel_shouldStreamToLeftAid);
  v29 = kAXSHearingAidsStreamToRightPreference;
  v38 = NSStringFromSelector(sel_shouldStreamToRightAid);
  v27 = kAXSHearingAidsCallAudioRoutePreference;
  v37 = NSStringFromSelector(sel_callAudioRoute);
  v25 = kAXSHearingAidsMediaAudioRoutePreference;
  v28 = NSStringFromSelector(sel_mediaAudioRoute);
  v24 = kAXSHearingAidsLiveListenExportPreference;
  v26 = NSStringFromSelector(sel_exportsLiveListenToFile);
  v22 = kAXSHearingAidMultideviceSettingsPreference;
  v36 = NSStringFromSelector(sel_multideviceSettingsEnabled);
  v21 = kAXSHearingAidMultideviceAudioPreference;
  v23 = NSStringFromSelector(sel_multideviceAudioEnabled);
  v19 = kAXSHearingAidSystemSoundsStreamPreference;
  v35 = NSStringFromSelector(sel_shouldStreamSystemSounds);
  v17 = kAXSHearingAidComplicationPreferredDisplayModePreference;
  v20 = NSStringFromSelector(sel_complicationPreferredDisplayMode);
  v1 = kAXSClearPartialPairingPreference;
  v14 = NSStringFromSelector(sel_clearPartialPairing);
  v2 = kAXSHearingAidAvailableInputEarPreference;
  v18 = NSStringFromSelector(sel_availableInputEars);
  v3 = kAXSHearingAidEarsSupportingWatchPreference;
  v16 = NSStringFromSelector(sel_earsSupportingWatch);
  v4 = kAXSHearingAidInputEarPreference;
  v15 = NSStringFromSelector(sel_preferredInputEar);
  v5 = kAXSAvailableHearingDeviceNamePreference;
  v6 = NSStringFromSelector(sel_availableHearingDeviceName);
  v7 = kAXSHearingFeatureUsagePreference;
  v8 = NSStringFromSelector(sel_usedHearingFeatures);
  v9 = kAXSLiveHeadphoneLevelEnabledPreference;
  NSStringFromSelector(sel_liveHeadphoneLevelEnabled);
  v10 = v13 = v2;
  v11 = [v34 initWithObjectsAndKeys:{v33, v42, v32, v41, v31, v40, v30, v39, v29, v38, v27, v37, v25, v28, v24, v26, v22, v36, v21, v23, v19, v35, v17, v20, v1, v14, v13, v18, v3, v16, v4, v15, v5, v6, v7, v8, v9, v10, 0}];
  v12 = preferenceKeyForSelector__SelectorMap_0;
  preferenceKeyForSelector__SelectorMap_0 = v11;
}

- (void)_updateTripleClickOptionsForPairedAids:(id)a3
{
  _AXSSetAccessibilityEnabled();
  v4 = _AXSTripleClickCopyOptions();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
  }

  v8 = v6;
  v7 = _AXSTripleClickContainsOption();
  if (a3)
  {
    if (!v7)
    {
      [v8 addObject:&unk_1F5623D58];
    }
  }

  else if (v7)
  {
    [v8 removeObject:&unk_1F5623D58];
  }

  _AXSSetTripleClickOptions();
  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)updateStreamingPreference
{
  if ([(HUHearingAidSettings *)self shouldStreamToLeftAid])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ([(HUHearingAidSettings *)self shouldStreamToRightAid])
  {
    v4 = v3 | 4;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x1EEE60B30](v4);
}

- (id)deviceIDForPairingInformation:(id)a3
{
  v3 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v4 = [v3 objectForKey:@"ax_hearing_device_left_peripheral_key"];
  v5 = [v3 objectForKey:@"ax_hearing_device_right_peripheral_key"];
  if ([v4 count])
  {
    v6 = [v4 objectForKey:@"ax_hearing_device_hiid_key"];
    v7 = @"ax_hearing_device_hiidother_key";
    v8 = v4;
LABEL_5:
    v9 = v26[5];
    v26[5] = v6;

    v10 = [v8 objectForKey:v7];
    v11 = v20[5];
    v20[5] = v10;

    goto LABEL_6;
  }

  if ([v5 count])
  {
    v6 = [v5 objectForKey:@"ax_hearing_device_hiidother_key"];
    v7 = @"ax_hearing_device_hiid_key";
    v8 = v5;
    goto LABEL_5;
  }

LABEL_6:
  if (![v26[5] length] || !objc_msgSend(v20[5], "length"))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__HUHearingAidSettings_deviceIDForPairingInformation___block_invoke;
    v18[3] = &unk_1E85CB920;
    v18[4] = &v25;
    v18[5] = &v19;
    [v3 enumerateKeysAndObjectsUsingBlock:v18];
  }

  v12 = [v26[5] length];
  v13 = v20[5];
  if (v12)
  {
    if ([v13 length])
    {
      v14 = v26[5];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v14, v20[5]];
      goto LABEL_14;
    }

    v13 = v26[5];
  }

  v15 = v13;
LABEL_14:
  v16 = v15;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v16;
}

void __54__HUHearingAidSettings_deviceIDForPairingInformation___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v13 valueForKey:@"ax_hearing_device_isleft_key"];

    if (v6)
    {
      v7 = [v13 valueForKey:@"ax_hearing_device_hiid_key"];
      v8 = [v13 valueForKey:@"ax_hearing_device_hiidother_key"];
      v9 = [v13 valueForKey:@"ax_hearing_device_isleft_key"];
      v10 = [v9 BOOLValue];

      if (v10)
      {
        v11 = v7;
      }

      else
      {
        v11 = v8;
      }

      if (v10)
      {
        v12 = v8;
      }

      else
      {
        v12 = v7;
      }

      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v11);
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
      *a4 = 1;
    }
  }
}

- (void)setPairedHearingAids:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidsSettings: Setting paired hearing aids %@", buf, 0xCu);
  }

  v6 = hearingUIShouldBeAvailable();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E695DF90];
      v9 = [v4 lastObject];
      v7 = [v8 dictionaryWithDictionary:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = [v7 valueForKey:@"ax_hearing_device_lr_key"];
  v11 = [v10 unsignedIntegerValue];

  if ([(HUHearingAidSettings *)self isiCloudPaired]|| v11 != _AXSHearingDevicePairedEars())
  {
    _AXSHearingSetDevicePairedEars();
  }

  v12 = [v7 objectForKey:@"ax_hearing_device_left_peripheral_key"];
  v13 = [v7 objectForKey:@"ax_hearing_device_right_peripheral_key"];
  v14 = [v12 objectForKey:@"ax_hearing_device_uuid_key"];
  v15 = *MEMORY[0x1E69A4538];
  v50 = v13;
  if (([v14 hasPrefix:*MEMORY[0x1E69A4538]] & 1) == 0)
  {

LABEL_15:
    v49 = v6;
    v18 = [v4 valueForKey:{@"ax_hearing_device_man_model_key", v12}];
    v19 = [&unk_1F5623D28 stringValue];
    v20 = [v18 objectForKey:v19];

    v21 = [v4 valueForKey:@"ax_hearing_device_left_peripheral_key"];
    v51 = [v21 valueForKey:@"ax_hearing_device_uuid_key"];

    v22 = [v4 valueForKey:@"ax_hearing_device_right_peripheral_key"];
    v23 = [v22 valueForKey:@"ax_hearing_device_uuid_key"];

    v24 = [v20 firstObject];
    if ([v24 length])
    {
      v25 = [v20 firstObject];
      v26 = [v20 lastObject];
      v27 = [v25 isEqualToString:v26];

      if (v27)
      {
        v28 = [MEMORY[0x1E695DF70] array];
        [v28 hcSafeAddObject:v51];
        [v28 hcSafeAddObject:v23];
        if (![v28 count])
        {
          v30 = 0;
          goto LABEL_29;
        }

        v29 = [v20 firstObject];
        v52 = v29;
        v53 = v28;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
LABEL_28:

LABEL_29:
        _AXSHearingSetDevicePairedUUIDs();

        v6 = v49;
        v12 = v48;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v28 = [MEMORY[0x1E695DF70] array];
    [v28 hcSafeAddObject:v51];
    v29 = [MEMORY[0x1E695DF70] array];
    [v29 hcSafeAddObject:v23];
    v30 = [MEMORY[0x1E695DF90] dictionary];
    v31 = [v20 firstObject];
    if ([v31 length])
    {
      v32 = [v28 count];

      if (!v32)
      {
        goto LABEL_24;
      }

      v31 = [v20 firstObject];
      [v30 setObject:v28 forKey:v31];
    }

LABEL_24:
    v33 = [v20 lastObject];
    if ([v33 length])
    {
      v34 = [v29 count];

      if (!v34)
      {
        goto LABEL_28;
      }

      v33 = [v20 lastObject];
      [v30 setObject:v29 forKey:v33];
    }

    goto LABEL_28;
  }

  v16 = [v13 objectForKey:@"ax_hearing_device_uuid_key"];
  v17 = [v16 hasPrefix:v15];

  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_30:
  [(HUHearingAidSettings *)self updateStreamingPreference];
  [(HUHearingAidSettings *)self _updateTripleClickOptionsForPairedAids:v7];
  [v7 setObject:&unk_1F5624880 forKey:@"ax_hearing_device_version_key"];
  if (!v7)
  {
    v35 = [(HUHearingAidSettings *)self pairedHearingAids];
    v36 = [(HUHearingAidSettings *)self deviceIDForPairingInformation:v35];
    [(HUHearingAidSettings *)self addDeviceIDToCloudDenylist:v36];

    [(HUHearingAidSettings *)self setAvailableInputEars:0];
  }

  [(HCSettings *)self setValue:v7 forPreferenceKey:kAXSPairedHearingUUIDsPreference];
  v37 = [(HUHearingAidSettings *)self deviceIDForPairingInformation:v7];
  [(HUHearingAidSettings *)self removeDeviceIDFromCloudDenylist:v37];

  v38 = [v7 count];
  _AXSHearingAidsSetPaired();
  if (_os_feature_enabled_impl())
  {
    v39 = [getAFPreferencesClass() sharedPreferences];
    v40 = [v39 announceNotificationsOnHearingAidsSupported];

    if ((v38 != 0) != v40)
    {
      v41 = HCLogHearingAids();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v55) = v38 != 0;
        _os_log_impl(&dword_1DA5E2000, v41, OS_LOG_TYPE_DEFAULT, "Setting Announce Notifications on Hearing Aids Supported: %d", buf, 8u);
      }

      v42 = [getAFPreferencesClass() sharedPreferences];
      [v42 setAnnounceNotificationsOnHearingAidsSupported:v38 != 0];
    }
  }

  [(HUHearingAidSettings *)self pushLocalHearingAidsToiCloud];
  if (v7)
  {
    v43 = cloudHearingAidDescriptionForDescription(v7);
  }

  else
  {
    v43 = 0;
  }

  v44 = +[HANanoSettings sharedInstance];
  [v44 setValue:v43 forPreferenceKey:kAXSWatchSyncPairedUUIDsPreference];

  if (v6 != hearingUIShouldBeAvailable())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.hearing.ui.availability", 0, 0, 1u);
  }

  v46 = +[HUUtilities sharedUtilities];
  [v46 updateHearingFeatureUsage];

  v47 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)knownPeripheralUUIDs
{
  v3 = kAXSKnownPeripheralUUIDsPreference;
  v4 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:v3 withClass:v4 andDefaultValue:0];
}

- (void)setCallAudioRoute:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(HCSettings *)self setValue:v4 forPreferenceKey:kAXSHearingAidsCallAudioRoutePreference];
}

- (void)setMediaAudioRoute:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(HCSettings *)self setValue:v4 forPreferenceKey:kAXSHearingAidsMediaAudioRoutePreference];
}

- (void)setComplicationPreferredDisplayMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(HCSettings *)self setValue:v4 forPreferenceKey:kAXSHearingAidComplicationPreferredDisplayModePreference];
}

- (void)setAvailableHearingDeviceName:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HUHearingAidSettings *)self availableHearingDeviceName];
  if (([v5 isEqualToString:v4] & 1) == 0 && v4 | v5)
  {
    v6 = HCLogHearingHandoff();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Set AvailableHearingDeviceName: %@", &v8, 0xCu);
    }

    [(HCSettings *)self setValue:v4 forPreferenceKey:kAXSAvailableHearingDeviceNamePreference];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setUsedHearingFeatures:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(HCSettings *)self setValue:v4 forPreferenceKey:kAXSHearingFeatureUsagePreference];
}

- (void)addDeviceIDToCloudDenylist:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x1E695DF70];
  v5 = [(HCSettings *)self objectValueForKey:kAXSHearingAidsCloudDenylistPreference withClass:objc_opt_class() andDefaultValue:0];
  v6 = [v4 arrayWithArray:v5];

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF70] array];
  }

  if ([v7 length])
  {
    [v6 addObject:v7];
    [(HCSettings *)self setValue:v6 forPreferenceKey:kAXSHearingAidsCloudDenylistPreference];
  }
}

- (void)removeDeviceIDFromCloudDenylist:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [(HCSettings *)self objectValueForKey:kAXSHearingAidsCloudDenylistPreference withClass:objc_opt_class() andDefaultValue:0];
  v7 = [v5 arrayWithArray:v6];

  if (v7 && [v4 length])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__HUHearingAidSettings_removeDeviceIDFromCloudDenylist___block_invoke;
    v9[3] = &unk_1E85CB948;
    v10 = v4;
    v8 = [v7 indexOfObjectPassingTest:v9];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 removeObjectAtIndex:v8];
    }

    [(HCSettings *)self setValue:v7 forPreferenceKey:kAXSHearingAidsCloudDenylistPreference];
  }
}

- (BOOL)isDeviceIDOnCloudDenylist:(id)a3
{
  v4 = a3;
  v5 = [(HCSettings *)self objectValueForKey:kAXSHearingAidsCloudDenylistPreference withClass:objc_opt_class() andDefaultValue:0];
  if (v5 && [v4 length])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__HUHearingAidSettings_isDeviceIDOnCloudDenylist___block_invoke;
    v8[3] = &unk_1E85CB948;
    v9 = v4;
    v6 = [v5 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)shouldUseiCloud
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Unable to get entitlements for client task. Error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end