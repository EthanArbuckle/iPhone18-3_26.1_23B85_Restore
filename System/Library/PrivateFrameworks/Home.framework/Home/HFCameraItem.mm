@interface HFCameraItem
+ (BOOL)cameraContainsMotionServiceItem:(id)item;
+ (BOOL)shouldIgnoreStreamErrorForCameraSettings:(id)settings;
+ (BOOL)shouldReportNotificationsAsDisabledForProfile:(id)profile;
+ (void)getErrorDescription:(id *)description detailedErrorDescription:(id *)errorDescription forCameraStreamError:(id)error;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)options;
- (unint64_t)numberOfCompoundItems;
@end

@implementation HFCameraItem

- (NSString)description
{
  if (+[HFUtilities hasInternalDiagnostics])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    profile = [(HFAccessoryProfileItem *)self profile];
    hf_prettyDescription = [profile hf_prettyDescription];
    latestResults = [(HFItem *)self latestResults];
    v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, hf_prettyDescription, latestResults];
  }

  else
  {
    if (_MergedGlobals_307 != -1)
    {
      dispatch_once(&_MergedGlobals_307, &__block_literal_global_22_9);
    }

    v9 = qword_280E03B10;
  }

  return v9;
}

void __27__HFCameraItem_description__block_invoke_2()
{
  v0 = qword_280E03B10;
  qword_280E03B10 = &stru_2824B1A78;
}

+ (void)getErrorDescription:(id *)description detailedErrorDescription:(id *)errorDescription forCameraStreamError:(id)error
{
  errorCopy = error;
  v7 = _HFLocalizedStringWithDefaultValue(@"HFCameraErrorNotReachable", @"HFCameraErrorNotReachable", 1);
  v8 = _HFLocalizedStringWithDefaultValue(@"HFCameraLongFormErrorNotReachable", @"HFCameraLongFormErrorNotReachable", 1);
  domain = [errorCopy domain];
  v10 = [domain isEqualToString:*MEMORY[0x277CCFD28]];

  if (v10 && [errorCopy code] == 14)
  {
    v11 = _HFLocalizedStringWithDefaultValue(@"HFCameraErrorBusy", @"HFCameraErrorBusy", 1);

    v12 = _HFLocalizedStringWithDefaultValue(@"HFCameraLongFormErrorBusy", @"HFCameraLongFormErrorBusy", 1);

    v7 = v11;
    v8 = v12;
  }

  if (description)
  {
    v13 = v7;
    *description = v7;
  }

  if (errorDescription)
  {
    v14 = v8;
    *errorDescription = v8;
  }
}

+ (BOOL)cameraContainsMotionServiceItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v4 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  services = [v4 services];
  v8 = [services na_any:&__block_literal_global_45_2];

  return (v6 == 0) & v8;
}

+ (BOOL)shouldReportNotificationsAsDisabledForProfile:(id)profile
{
  v15 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v4 = HFLogForCategory(0xEuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    userSettings = [profileCopy userSettings];
    v13 = 138412290;
    v14 = userSettings;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "cameraProfile userSettings = %@", &v13, 0xCu);
  }

  userSettings2 = [profileCopy userSettings];
  if ([userSettings2 isAccessModeChangeNotificationEnabled])
  {
    v7 = 0;
  }

  else
  {
    userSettings3 = [profileCopy userSettings];
    if ([userSettings3 isReachabilityEventNotificationEnabled])
    {
      v7 = 0;
    }

    else
    {
      hf_userNotificationSettings = [profileCopy hf_userNotificationSettings];
      areNotificationsEnabled = [hf_userNotificationSettings areNotificationsEnabled];

      v7 = areNotificationsEnabled ^ 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v27 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  profile = [(HFAccessoryProfileItem *)self profile];
  accessory = [profile accessory];
  if (accessory)
  {
    valueSource = [(HFAccessoryProfileItem *)self valueSource];

    if (valueSource)
    {
      objc_initWeak(location, self);
      v21.receiver = self;
      v21.super_class = HFCameraItem;
      v8 = [(HFAccessoryProfileItem *)&v21 _subclass_updateWithOptions:optionsCopy];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __44__HFCameraItem__subclass_updateWithOptions___block_invoke;
      v19[3] = &unk_277DF5A08;
      objc_copyWeak(&v20, location);
      v9 = [v8 flatMap:v19];
      objc_destroyWeak(&v20);

      objc_destroyWeak(location);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = HFLogForCategory(0xEuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    profile2 = [(HFAccessoryProfileItem *)self profile];
    accessory2 = [profile2 accessory];
    valueSource2 = [(HFAccessoryProfileItem *)self valueSource];
    *location = 138412546;
    *&location[4] = accessory2;
    v25 = 2112;
    v26 = valueSource2;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Camera Item: Missing profile accessory:%@ or value source:%@", location, 0x16u);
  }

  v14 = MEMORY[0x277D2C900];
  v22 = @"hidden";
  v23 = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v16 = [HFItemUpdateOutcome outcomeWithResults:v15];
  v9 = [v14 futureWithResult:v16];

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

id __44__HFCameraItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = [WeakRetained profile];
  v7 = [v6 userSettings];
  if ([v7 currentAccessMode])
  {
    v8 = [WeakRetained profile];
    v9 = [v8 accessory];
    v10 = [v9 isReachable];

    if (v10)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [v5 setObject:v12 forKeyedSubscript:?];

  v13 = MEMORY[0x277CBEB98];
  v14 = [WeakRetained profile];
  v15 = [v14 accessory];
  v16 = [WeakRetained profile];
  v17 = [WeakRetained profile];
  v18 = [v17 userSettings];
  v19 = [v13 setWithObjects:{v15, v16, v18, 0}];
  [v5 setObject:v19 forKeyedSubscript:@"dependentHomeKitObjects"];

  v20 = &HFCAPackageStateOn;
  if (v11 != 2)
  {
    v20 = &HFCAPackageStateOff;
  }

  v21 = *v20;
  v22 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierIPCamera" state:v21];
  [v5 setObject:v22 forKeyedSubscript:@"icon"];

  v23 = [WeakRetained profile];
  v24 = [v23 snapshotControl];
  v25 = [v24 mostRecentSnapshot];
  [v5 setObject:v25 forKeyedSubscript:@"HFResultCameraSnapshotKey"];

  v26 = MEMORY[0x277CCABB0];
  v27 = [WeakRetained profile];
  v28 = [v27 streamControl];
  v29 = [v26 numberWithUnsignedInteger:{objc_msgSend(v28, "streamState")}];
  [v5 setObject:v29 forKeyedSubscript:@"HFResultCameraStreamStateKey"];

  v30 = MEMORY[0x277CCABB0];
  v31 = [WeakRetained profile];
  v32 = [v31 userSettings];
  v33 = [v30 numberWithUnsignedInteger:{objc_msgSend(v32, "currentAccessMode")}];
  [v5 setObject:v33 forKeyedSubscript:@"HFResultCameraCurrentAccessModeKey"];

  v34 = [WeakRetained profile];
  v35 = [v34 streamControl];
  v36 = [v35 cameraStream];

  if (v36)
  {
    [v5 setObject:v36 forKeyedSubscript:@"HFResultCameraStreamKey"];
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "audioStreamSetting")}];
    [v5 setObject:v37 forKeyedSubscript:@"HFResultCameraAudioStreamSettingKey"];
  }

  if (+[HFUtilities isPressDemoModeEnabled])
  {
    v38 = [WeakRetained accessory];
    v39 = [HFDemoModeAccessoryManager demoSnapshotURLForCamera:v38];

    v40 = [WeakRetained accessory];
    v41 = [HFDemoModeAccessoryManager demoLiveStreamURLForCamera:v40];

    [v5 setObject:v39 forKeyedSubscript:@"HFResultCameraDemoSnapshotURLKey"];
    [v5 setObject:v41 forKeyedSubscript:@"HFResultCameraDemoLiveStreamURLKey"];
    v42 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v61 = v39;
      v62 = 2112;
      v63 = v41;
      _os_log_impl(&dword_20D9BF000, v42, OS_LOG_TYPE_DEFAULT, "Snapshot:%@ and movie:%@", buf, 0x16u);
    }
  }

  if (+[HFUtilities shouldSuppressAllErrorsForDemo])
  {
    v43 = &unk_282524ED0;
    v44 = v5;
    v45 = @"state";
LABEL_18:
    [v44 setObject:v43 forKeyedSubscript:v45];
    goto LABEL_23;
  }

  v46 = [WeakRetained profile];
  v47 = [v46 userSettings];
  v48 = [HFCameraItem shouldIgnoreStreamErrorForCameraSettings:v47];

  if (v48)
  {
    v45 = @"persistentWarningDescription";
    v44 = v5;
    v43 = 0;
    goto LABEL_18;
  }

  v49 = [WeakRetained profile];
  v50 = [v49 hf_cameraManager];
  v51 = [v50 cachedStreamError];

  if (v51 && [v51 code] != 23)
  {
    v58 = 0;
    v59 = 0;
    [objc_opt_class() getErrorDescription:&v59 detailedErrorDescription:&v58 forCameraStreamError:v51];
    v52 = v59;
    v53 = v58;
    v54 = v52;
    [v5 setObject:v54 forKeyedSubscript:@"errorDescription"];
    [v5 setObject:v53 forKeyedSubscript:@"longErrorDescription"];

    [v5 setObject:&unk_282524EE8 forKeyedSubscript:@"badge"];
  }

LABEL_23:
  v55 = [MEMORY[0x277D2C900] futureWithResult:v5];

  v56 = *MEMORY[0x277D85DE8];

  return v55;
}

+ (BOOL)shouldIgnoreStreamErrorForCameraSettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy currentAccessMode])
  {
    v4 = [settingsCopy currentAccessMode] == 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)numberOfCompoundItems
{
  accessory = [(HFAccessoryProfileItem *)self accessory];
  hf_visibleServices = [accessory hf_visibleServices];
  v4 = [hf_visibleServices count];

  return v4;
}

@end