@interface HUStatusAndNotificationsItemManager
- (BOOL)_isAudioAnalysisSupportedDevice;
- (BOOL)_isAutoClimateCapableThermostat;
- (BOOL)_isSourceItemThermostatLikeItem;
- (BOOL)areNotificationsEnabled;
- (BOOL)cameraProfileSupportsSmartNotifications;
- (BOOL)hasDoorbellCamera;
- (BOOL)isNonHKSVCameraDoorbell;
- (BOOL)serviceItemBelongsToCamera;
- (BOOL)showsActivityNotificationsSection;
- (BOOL)showsAudioNotificationSection;
- (BOOL)showsCameraSmartNotificationSection;
- (BOOL)showsCameraSnapshotSection;
- (BOOL)showsCameraStatusChangeSection;
- (BOOL)showsDoorbellChimeSection;
- (BOOL)showsSmartActivitySection;
- (BOOL)showsTriggerConditionSection;
- (HFUserNotificationServiceSettings)notificationSettings;
- (HFUserNotificationServiceSettingsProviding)notificationSettingsProvider;
- (HUStatusAndNotificationsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUStatusAndNotificationsItemManager)initWithServiceItem:(id)item delegate:(id)delegate home:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)_sourceItemAsHeaterCoolerServiceItem;
- (id)_sourceItemAsMediaAccessoryItem;
- (id)_sourceItemAsThermostatServiceItem;
- (id)_updateConditionCollectionForAudioAnalysisNotification:(id)notification;
- (id)_updateNotificationSettings:(id)settings;
- (id)_updateNotificationSettings:(id)settings notificationSettingsProvider:(id)provider;
- (id)homeStatusVisibleObject;
- (id)updateAllowAudioNotifications:(BOOL)notifications;
- (id)updateAllowCameraReachabilityStatusChangeNotifications:(BOOL)notifications;
- (id)updateAllowCameraStatusChangeNotifications:(BOOL)notifications;
- (id)updateAllowChimeAnalogNotifications:(BOOL)notifications;
- (id)updateAllowDoorbellNotifications:(BOOL)notifications;
- (id)updateAllowMotionNotifications:(BOOL)notifications;
- (id)updateAllowNotifications:(BOOL)notifications;
- (id)updateAllowSmartActivityNotifications:(BOOL)notifications;
- (id)updateAllowSnapshotsInNotifications:(BOOL)notifications;
- (id)updateCameraSmartNotificationCondition:(id)condition;
- (id)updateChimeOnAccessory:(BOOL)accessory;
- (id)updateNotificationCondition:(id)condition;
- (void)setShowStatusSection:(BOOL)section;
@end

@implementation HUStatusAndNotificationsItemManager

- (HUStatusAndNotificationsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithServiceItem_delegate_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUStatusAndNotificationsItemManager.m" lineNumber:63 description:{@"%s is unavailable; use %@ instead", "-[HUStatusAndNotificationsItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUStatusAndNotificationsItemManager)initWithServiceItem:(id)item delegate:(id)delegate home:(id)home
{
  v54 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  homeCopy = home;
  delegateCopy = delegate;
  v12 = [itemCopy copy];
  v47.receiver = self;
  v47.super_class = HUStatusAndNotificationsItemManager;
  v13 = [(HFItemManager *)&v47 initWithDelegate:delegateCopy sourceItem:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_serviceItem, item);
    objc_storeStrong(&v13->_overrideHome, home);
    notificationSettings = [(HUStatusAndNotificationsItemManager *)v13 notificationSettings];
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v49 = "[HUStatusAndNotificationsItemManager initWithServiceItem:delegate:home:]";
      v50 = 2112;
      v51 = notificationSettings;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%s notificationSettings: %@", buf, 0x16u);
    }

    if (!notificationSettings)
    {
      objc_opt_class();
      notificationSettingsProvider = [(HUStatusAndNotificationsItemManager *)v13 notificationSettingsProvider];
      if (objc_opt_isKindOfClass())
      {
        v22 = notificationSettingsProvider;
      }

      else
      {
        v22 = 0;
      }

      v17 = v22;

      if (![v17 hf_isMatterOnlyAccessory])
      {
        goto LABEL_30;
      }

      v23 = HFLogForCategory();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:

LABEL_30:
        homeStatusVisibleObject = [(HUStatusAndNotificationsItemManager *)v13 homeStatusVisibleObject];
        v13->_showStatusSection = homeStatusVisibleObject != 0;

        goto LABEL_31;
      }

      bulletinBoardNotificationByEndpoint = [v17 bulletinBoardNotificationByEndpoint];
      *buf = 136315650;
      v49 = "[HUStatusAndNotificationsItemManager initWithServiceItem:delegate:home:]";
      v50 = 2112;
      v51 = bulletinBoardNotificationByEndpoint;
      v52 = 2112;
      v53 = v17;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%s: bulletinBoardNotificationByEndpoint: %@ for accessory: %@", buf, 0x20u);
LABEL_28:

      goto LABEL_29;
    }

    v16 = objc_alloc(MEMORY[0x277D14598]);
    v17 = [v16 initWithConditions:MEMORY[0x277CBEBF8]];
    smartCameraNotificationCondition = [notificationSettings smartCameraNotificationCondition];

    if (smartCameraNotificationCondition)
    {
      v19 = MEMORY[0x277D14598];
      smartCameraNotificationCondition2 = [notificationSettings smartCameraNotificationCondition];
    }

    else
    {
      notificationCondition = [notificationSettings notificationCondition];

      if (!notificationCondition)
      {
LABEL_16:
        v23 = [MEMORY[0x277CBEB98] set];
        objc_opt_class();
        v28 = itemCopy;
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        bulletinBoardNotificationByEndpoint = v29;

        if (bulletinBoardNotificationByEndpoint || [(HUStatusAndNotificationsItemManager *)v13 _isAudioAnalysisSupportedDevice])
        {
          v30 = [MEMORY[0x277CBEB98] setWithObject:&unk_2824910A0];

          v23 = v30;
        }

        v31 = [[HUTriggerConditionEditorItemModule alloc] initWithItemUpdater:v13 home:homeCopy conditionCollection:v17 disallowedConditionTypes:v23];
        conditionModule = v13->_conditionModule;
        v13->_conditionModule = v31;

        if ([(HUStatusAndNotificationsItemManager *)v13 _isAudioAnalysisSupportedDevice])
        {
          _sourceItemAsMediaAccessoryItem = [(HUStatusAndNotificationsItemManager *)v13 _sourceItemAsMediaAccessoryItem];
          v34 = _sourceItemAsMediaAccessoryItem;
          if (_sourceItemAsMediaAccessoryItem)
          {
            accessories = [_sourceItemAsMediaAccessoryItem accessories];
            anyObject = [accessories anyObject];

            v37 = [[HUAudioAnalysisDetectionSettingsModule alloc] initWithItemUpdater:v13 accessory:anyObject];
            audioAnalysisDetectionSettingsModule = v13->_audioAnalysisDetectionSettingsModule;
            v13->_audioAnalysisDetectionSettingsModule = v37;
          }
        }

        if (bulletinBoardNotificationByEndpoint)
        {
          v39 = [HUCameraSmartDetectionSettingsModule alloc];
          v40 = MEMORY[0x277CBEB98];
          profile = [bulletinBoardNotificationByEndpoint profile];
          v42 = [v40 setWithObject:profile];
          v43 = [(HUCameraSmartDetectionSettingsModule *)v39 initWithItemUpdater:v13 cameraProfiles:v42 conditionCollection:v17 settingsContext:1];
          cameraSmartDetectionSettingsModule = v13->_cameraSmartDetectionSettingsModule;
          v13->_cameraSmartDetectionSettingsModule = v43;
        }

        goto LABEL_28;
      }

      v19 = MEMORY[0x277D14598];
      smartCameraNotificationCondition2 = [notificationSettings notificationCondition];
    }

    v26 = smartCameraNotificationCondition2;
    v27 = [v19 conditionCollectionForPredicate:smartCameraNotificationCondition2];

    v17 = v27;
    goto LABEL_16;
  }

LABEL_31:

  return v13;
}

- (void)setShowStatusSection:(BOOL)section
{
  if (section && ([(HUStatusAndNotificationsItemManager *)self homeStatusVisibleObject], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
    NSLog(&cfstr_CannotShowStat.isa, serviceItem);
  }

  else
  {
    self->_showStatusSection = section;
  }
}

- (BOOL)showsDoorbellChimeSection
{
  if (![(HUStatusAndNotificationsItemManager *)self hasDoorbellCamera])
  {
    return 0;
  }

  home = [(HFItemManager *)self home];
  hf_allHomePodsOrStereoPairsThatWillChime = [home hf_allHomePodsOrStereoPairsThatWillChime];
  v5 = hf_allHomePodsOrStereoPairsThatWillChime != 0;

  return v5;
}

- (BOOL)showsCameraSnapshotSection
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    profile = [v5 profile];
    userSettings = [profile userSettings];
    v8 = ([userSettings supportedFeatures] >> 5) & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)areNotificationsEnabled
{
  if ([(HUStatusAndNotificationsItemManager *)self hasDoorbellCamera]&& [(HUStatusAndNotificationsItemManager *)self cameraProfileSupportsSmartNotifications])
  {
    notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    areSmartDetectionNotificationsEnabled = [notificationSettings areSmartDetectionNotificationsEnabled];
  }

  else
  {
    notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    areSmartDetectionNotificationsEnabled = [notificationSettings areNotificationsEnabled];
  }

  v5 = areSmartDetectionNotificationsEnabled;

  return v5;
}

- (BOOL)showsTriggerConditionSection
{
  home = [(HFItemManager *)self home];
  home2 = [(HFItemManager *)self home];
  currentUser = [home2 currentUser];
  v6 = [home hf_userIsRestrictedGuest:currentUser];

  if ((v6 & 1) != 0 || [(HUStatusAndNotificationsItemManager *)self _isAutoClimateCapableThermostat])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v10 = serviceItem;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    if (![(HUStatusAndNotificationsItemManager *)self _isSourceItemThermostatLikeItem])
    {
      notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
      if ([notificationSettings areNotificationsEnabled])
      {
        v7 = ![(HUStatusAndNotificationsItemManager *)self serviceItemBelongsToCamera];
      }

      else
      {
        LOBYTE(v7) = 0;
      }

      return v7;
    }

LABEL_3:
    LOBYTE(v7) = 0;
    return v7;
  }

  if ([(HUStatusAndNotificationsItemManager *)self isNonHKSVCameraDoorbell])
  {
    notificationSettings2 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    areMotionNotificationsEnabled = [notificationSettings2 areMotionNotificationsEnabled];

    return areMotionNotificationsEnabled;
  }

  else
  {

    return [(HUStatusAndNotificationsItemManager *)self areNotificationsEnabled];
  }
}

- (BOOL)showsActivityNotificationsSection
{
  _sourceItemAsMediaAccessoryItem = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  accessories = [_sourceItemAsMediaAccessoryItem accessories];
  anyObject = [accessories anyObject];

  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  if (notificationSettings && ![(HUStatusAndNotificationsItemManager *)self serviceItemBelongsToCamera])
  {
    v7 = [anyObject hf_isHomePod] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isNonHKSVCameraDoorbell
{
  hasDoorbellCamera = [(HUStatusAndNotificationsItemManager *)self hasDoorbellCamera];
  if (hasDoorbellCamera)
  {
    LOBYTE(hasDoorbellCamera) = ![(HUStatusAndNotificationsItemManager *)self cameraProfileSupportsSmartNotifications];
  }

  return hasDoorbellCamera;
}

- (BOOL)cameraProfileSupportsSmartNotifications
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  profile = [v5 profile];
  hf_supportsRecordingEvents = [profile hf_supportsRecordingEvents];

  accessory = [v5 accessory];

  home = [accessory home];
  hf_hasCameraRecordingResident = [home hf_hasCameraRecordingResident];

  return (v5 != 0) & hf_supportsRecordingEvents & hf_hasCameraRecordingResident;
}

- (BOOL)showsCameraSmartNotificationSection
{
  v31 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  hasDoorbellCamera = [(HUStatusAndNotificationsItemManager *)self hasDoorbellCamera];
  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v8 = notificationSettings;
  if (hasDoorbellCamera)
  {
    areSmartDetectionNotificationsEnabled = [notificationSettings areSmartDetectionNotificationsEnabled];
  }

  else
  {
    areSmartDetectionNotificationsEnabled = [notificationSettings areNotificationsEnabled];
  }

  v10 = areSmartDetectionNotificationsEnabled;

  profile = [v5 profile];
  hf_supportsRecordingEvents = [profile hf_supportsRecordingEvents];

  accessory = [v5 accessory];
  home = [accessory home];
  hf_hasCameraRecordingResident = [home hf_hasCameraRecordingResident];

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    accessory2 = [v5 accessory];
    home2 = [accessory2 home];
    v19 = NSStringFromBOOL();
    v20 = NSStringFromBOOL();
    v21 = NSStringFromBOOL();
    v23 = 138413058;
    v24 = home2;
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_INFO, "Performing check for show camera smart notification section. home: %@, notificationsEnabled: %@, camera supports recording: %@, home has recording resident: %@", &v23, 0x2Au);
  }

  return (v5 != 0) & v10 & hf_supportsRecordingEvents & hf_hasCameraRecordingResident;
}

- (BOOL)hasDoorbellCamera
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    accessory = [v5 accessory];
    v7 = [accessory hf_serviceOfType:*MEMORY[0x277CD0E38]];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)showsCameraStatusChangeSection
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  profile = [v5 profile];

  LOBYTE(v5) = [profile hf_supportsRecordingEvents];
  return v5;
}

- (BOOL)showsSmartActivitySection
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  profile = [v5 profile];
  if ([profile hf_supportsRecordingEvents])
  {
    accessory = [v5 accessory];
    home = [accessory home];
    hf_hasCameraRecordingResident = [home hf_hasCameraRecordingResident];
  }

  else
  {
    hf_hasCameraRecordingResident = 0;
  }

  return hf_hasCameraRecordingResident;
}

- (BOOL)showsAudioNotificationSection
{
  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  if (notificationSettings)
  {
    _isAudioAnalysisSupportedDevice = [(HUStatusAndNotificationsItemManager *)self _isAudioAnalysisSupportedDevice];
  }

  else
  {
    _isAudioAnalysisSupportedDevice = 0;
  }

  return _isAudioAnalysisSupportedDevice;
}

- (BOOL)serviceItemBelongsToCamera
{
  v2 = MEMORY[0x277D144A0];
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  LOBYTE(v2) = [v2 cameraContainsMotionServiceItem:serviceItem];

  return v2;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v109[11] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  areBulletinNotificationsSupported = [homeCopy areBulletinNotificationsSupported];
  v6 = MEMORY[0x277CBEB58];
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  homeKitObject = [serviceItem homeKitObject];
  v9 = [v6 na_setWithSafeObject:homeKitObject];

  [v9 addObject:homeCopy];
  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke;
  v105[3] = &unk_277DB8670;
  objc_copyWeak(&v107, &location);
  v11 = v9;
  v106 = v11;
  v12 = [v10 initWithResultsBlock:v105];
  [(HUStatusAndNotificationsItemManager *)self setIncludeInStatusItem:v12];

  v13 = [HUChimeOnAccessoriesListItem alloc];
  home = [(HFItemManager *)self home];
  v15 = [(HUChimeOnAccessoriesListItem *)v13 initWithHome:home];
  [(HUStatusAndNotificationsItemManager *)self setChimeOnAccessoriesListItem:v15];

  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];

  v17 = [HUServiceDetailsCameraAllowSnapshotsItem alloc];
  serviceItem2 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  v19 = [(HUServiceDetailsCameraAllowSnapshotsItem *)v17 initWithSourceServiceItem:serviceItem2 home:homeCopy shouldBeHidden:notificationSettings == 0];
  [(HUStatusAndNotificationsItemManager *)self setAllowCameraSnapshotsItem:v19];

  v20 = objc_alloc(MEMORY[0x277D14B38]);
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_2;
  v101[3] = &unk_277DBB2A8;
  objc_copyWeak(&v103, &location);
  v104 = areBulletinNotificationsSupported;
  v21 = v11;
  v102 = v21;
  v22 = [v20 initWithResultsBlock:v101];
  [(HUStatusAndNotificationsItemManager *)self setAllowNotificationsItem:v22];

  v23 = objc_alloc(MEMORY[0x277D14B38]);
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_3;
  v97[3] = &unk_277DBB2A8;
  objc_copyWeak(&v99, &location);
  v100 = areBulletinNotificationsSupported;
  v24 = v21;
  v98 = v24;
  v25 = [v23 initWithResultsBlock:v97];
  [(HUStatusAndNotificationsItemManager *)self setAllowMotionNotificationsItem:v25];

  v26 = objc_alloc(MEMORY[0x277D14B38]);
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_4;
  v93[3] = &unk_277DBB2A8;
  objc_copyWeak(&v95, &location);
  v96 = areBulletinNotificationsSupported;
  v27 = v24;
  v94 = v27;
  v28 = [v26 initWithResultsBlock:v93];
  [(HUStatusAndNotificationsItemManager *)self setAllowDoorbellNotificationsItem:v28];

  v29 = objc_alloc(MEMORY[0x277D14B38]);
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_5;
  v88[3] = &unk_277DBB2D0;
  objc_copyWeak(&v91, &location);
  v92 = areBulletinNotificationsSupported;
  v69 = homeCopy;
  v89 = v69;
  v30 = v27;
  v90 = v30;
  v31 = [v29 initWithResultsBlock:v88];
  [(HUStatusAndNotificationsItemManager *)self setAllowAnalogChimeNotificationItem:v31];

  v32 = objc_alloc(MEMORY[0x277D14B38]);
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_6;
  v84[3] = &unk_277DBB2A8;
  objc_copyWeak(&v86, &location);
  v87 = areBulletinNotificationsSupported;
  v33 = v30;
  v85 = v33;
  v34 = [v32 initWithResultsBlock:v84];
  [(HUStatusAndNotificationsItemManager *)self setAllowCameraStatusChangesItem:v34];

  v35 = objc_alloc(MEMORY[0x277D14B38]);
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_7;
  v80[3] = &unk_277DBB2A8;
  objc_copyWeak(&v82, &location);
  v83 = areBulletinNotificationsSupported;
  v36 = v33;
  v81 = v36;
  v37 = [v35 initWithResultsBlock:v80];
  [(HUStatusAndNotificationsItemManager *)self setAllowCameraReachabilityChangeNotificationsItem:v37];

  v38 = objc_alloc(MEMORY[0x277D14B38]);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_8;
  v76[3] = &unk_277DBB2A8;
  objc_copyWeak(&v78, &location);
  v79 = areBulletinNotificationsSupported;
  v68 = v36;
  v77 = v68;
  v39 = [v38 initWithResultsBlock:v76];
  [(HUStatusAndNotificationsItemManager *)self setAllowActivityNotificationsItem:v39];

  v40 = objc_alloc(MEMORY[0x277D14B38]);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_9;
  v74[3] = &unk_277DB7448;
  objc_copyWeak(&v75, &location);
  v41 = [v40 initWithResultsBlock:v74];
  [(HUStatusAndNotificationsItemManager *)self setAllowAudioNotificationsItem:v41];

  includeInStatusItem = [(HUStatusAndNotificationsItemManager *)self includeInStatusItem];
  v109[0] = includeInStatusItem;
  chimeOnAccessoriesListItem = [(HUStatusAndNotificationsItemManager *)self chimeOnAccessoriesListItem];
  v109[1] = chimeOnAccessoriesListItem;
  allowCameraSnapshotsItem = [(HUStatusAndNotificationsItemManager *)self allowCameraSnapshotsItem];
  v109[2] = allowCameraSnapshotsItem;
  allowCameraStatusChangesItem = [(HUStatusAndNotificationsItemManager *)self allowCameraStatusChangesItem];
  v109[3] = allowCameraStatusChangesItem;
  allowCameraReachabilityChangeNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowCameraReachabilityChangeNotificationsItem];
  v109[4] = allowCameraReachabilityChangeNotificationsItem;
  allowNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowNotificationsItem];
  v109[5] = allowNotificationsItem;
  allowAudioNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowAudioNotificationsItem];
  v109[6] = allowAudioNotificationsItem;
  allowMotionNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowMotionNotificationsItem];
  v109[7] = allowMotionNotificationsItem;
  allowAnalogChimeNotificationItem = [(HUStatusAndNotificationsItemManager *)self allowAnalogChimeNotificationItem];
  v109[8] = allowAnalogChimeNotificationItem;
  allowDoorbellNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowDoorbellNotificationsItem];
  v109[9] = allowDoorbellNotificationsItem;
  allowActivityNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowActivityNotificationsItem];
  v109[10] = allowActivityNotificationsItem;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:11];
  [array addObjectsFromArray:v50];

  array2 = [MEMORY[0x277CBEB18] array];
  v52 = objc_alloc(MEMORY[0x277D14B40]);
  v53 = [MEMORY[0x277CBEB98] setWithArray:array];
  v54 = [v52 initWithItems:v53];
  [array2 addObject:v54];

  conditionModule = [(HUStatusAndNotificationsItemManager *)self conditionModule];

  if (conditionModule)
  {
    conditionModule2 = [(HUStatusAndNotificationsItemManager *)self conditionModule];
    itemProviders = [conditionModule2 itemProviders];
    allObjects = [itemProviders allObjects];
    [array2 addObjectsFromArray:allObjects];
  }

  cameraSmartDetectionSettingsModule = [(HUStatusAndNotificationsItemManager *)self cameraSmartDetectionSettingsModule];

  if (cameraSmartDetectionSettingsModule)
  {
    cameraSmartDetectionSettingsModule2 = [(HUStatusAndNotificationsItemManager *)self cameraSmartDetectionSettingsModule];
    itemProviders2 = [cameraSmartDetectionSettingsModule2 itemProviders];
    allObjects2 = [itemProviders2 allObjects];
    [array2 addObjectsFromArray:allObjects2];
  }

  audioAnalysisDetectionSettingsModule = [(HUStatusAndNotificationsItemManager *)self audioAnalysisDetectionSettingsModule];

  if (audioAnalysisDetectionSettingsModule)
  {
    audioAnalysisDetectionSettingsModule2 = [(HUStatusAndNotificationsItemManager *)self audioAnalysisDetectionSettingsModule];
    itemProviders3 = [audioAnalysisDetectionSettingsModule2 itemProviders];
    allObjects3 = [itemProviders3 allObjects];
    [array2 addObjectsFromArray:allObjects3];
  }

  objc_destroyWeak(&v75);

  objc_destroyWeak(&v78);
  objc_destroyWeak(&v82);

  objc_destroyWeak(&v86);
  objc_destroyWeak(&v91);

  objc_destroyWeak(&v95);
  objc_destroyWeak(&v99);

  objc_destroyWeak(&v103);
  objc_destroyWeak(&v107);

  objc_destroyWeak(&location);

  return array2;
}

id __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsIncludeInStatusTitle", @"HUStatusAndNotificationsIncludeInStatusTitle", 1);
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v3 setObject:@"HUStatusAndNotificationsIncludeInStatusTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
  v5 = [*(a1 + 32) copy];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v6 = [WeakRetained homeStatusVisibleObject];
  if (v6 && (v7 = v6, [WeakRetained homeStatusVisibleObject], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hf_supportsHomeStatus"), v8, v7, v9))
  {
    v10 = [WeakRetained homeStatusVisibleObject];
    if (([v10 hf_isVisibleInHomeStatus] & 1) == 0)
    {
      v11 = [WeakRetained homeStatusVisibleObject];
      [v11 hf_hasSetVisibleInHomeStatus];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
    [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v13 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v13;
}

id __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [WeakRetained notificationSettings];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCABB0];
    [v4 areNotificationsEnabled];
    v7 = [v6 numberWithInteger:HFPrimaryStateFromBOOL()];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) ^ 1u];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v9 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsAllowNotifications", @"HUStatusAndNotificationsAllowNotifications", 1);
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v10 = [*(a1 + 32) copy];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v11;
}

id __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v4 = [WeakRetained serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [WeakRetained notificationSettings];
    [v7 areMotionNotificationsEnabled];
    v8 = [v6 numberWithInteger:HFPrimaryStateFromBOOL()];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) ^ 1u];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v10 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationMotionNotificationsTitle", @"HUStatusAndNotificationMotionNotificationsTitle", 1);
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v11 = [*(a1 + 32) copy];
  [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v12 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v12;
}

id __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v4 = [WeakRetained serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [WeakRetained notificationSettings];
    [v7 areDoorbellNotificationsEnabled];
    v8 = [v6 numberWithInteger:HFPrimaryStateFromBOOL()];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) ^ 1u];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v10 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationDoorbellNotificationsTitle", @"HUStatusAndNotificationDoorbellNotificationsTitle", 1);
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v11 = [*(a1 + 32) copy];
  [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v12 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v12;
}

id __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v4 = [WeakRetained serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 profile];

  v8 = [v7 hf_doorbellChimeMuteCharacteristic];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || ([WeakRetained showsForServiceDetails] & 1) != 0)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  else
  {
    objc_opt_class();
    v10 = [v8 value];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    [v12 BOOLValue];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
    [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  v14 = 1;
  v15 = _HULocalizedStringWithDefaultValue(@"HUCameraDoorbellChimeMuteSwitchTitle", @"HUCameraDoorbellChimeMuteSwitchTitle", 1);
  [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13F60]];

  if (*(a1 + 56) == 1)
  {
    v14 = [*(a1 + 32) hf_currentUserIsAdministrator] ^ 1;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v17 = [*(a1 + 40) copy];
  [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v18 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v18;
}

id __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v4 = [WeakRetained serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v6 profile];
    v9 = [v8 userSettings];
    [v9 isAccessModeChangeNotificationEnabled];
    v10 = [v7 numberWithInteger:HFPrimaryStateFromBOOL()];
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) ^ 1u];
  [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v12 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsCameraStatusChangesTitle", @"HUStatusAndNotificationsCameraStatusChangesTitle", 1);
  [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v3 setObject:@"HUStatusAndNotificationsCameraStatusChangesTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v13 = [*(a1 + 32) copy];
  [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v14;
}

id __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v4 = [WeakRetained serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 profile];
  v8 = [v7 hf_supportsReachabilityNotifications];

  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [v6 profile];
    v11 = [v10 userSettings];
    [v11 isReachabilityEventNotificationEnabled];
    v12 = [v9 numberWithInteger:HFPrimaryStateFromBOOL()];
    [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) ^ 1u];
  [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v14 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsCameraReachabilityChangesTitle", @"HUStatusAndNotificationsCameraReachabilityChangesTitle", 1);
  [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v3 setObject:@"HUStatusAndNotificationsCameraReachabilityChangesTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v15 = [*(a1 + 32) copy];
  [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v16 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v16;
}

id __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([WeakRetained showsActivityNotificationsSection])
  {
    v4 = [WeakRetained isNonHKSVCameraDoorbell];
    v5 = MEMORY[0x277CCABB0];
    if (v4)
    {
      v6 = [WeakRetained notificationSettings];
      [v6 areMotionNotificationsEnabled];
      v7 = [v5 numberWithInteger:HFPrimaryStateFromBOOL()];
      [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D14068]];
    }

    else
    {
      [WeakRetained areNotificationsEnabled];
      v8 = [v5 numberWithInteger:HFPrimaryStateFromBOOL()];
      [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277D14068]];
    }
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v9 = @"HUStatusAndNotificationActivityNotificationsTitle";
  v10 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationActivityNotificationsTitle", @"HUStatusAndNotificationActivityNotificationsTitle", 1);
  if ([WeakRetained _isAutoClimateCapableThermostat])
  {
    v9 = @"HFThermostatActivityNotifications";
    v11 = HFLocalizedString();

    v10 = v11;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) ^ 1u];
  [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13F68]];
  v13 = [*(a1 + 32) copy];
  [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v14;
}

id __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if ([WeakRetained showsAudioNotificationSection])
  {
    v3 = MEMORY[0x277CCABB0];
    [WeakRetained areNotificationsEnabled];
    v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
    [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  else
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v5 = _HULocalizedStringWithDefaultValue(@"HUNotificationsTitle", @"HUNotificationsTitle", 1);
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v6 = MEMORY[0x277CBEB98];
  v7 = [WeakRetained serviceItem];
  v8 = [v7 homeKitObject];
  v9 = [v6 na_setWithSafeObject:v8];
  [v2 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v10 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v10;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v89 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  _sourceItemAsMediaAccessoryItem = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  accessories = [_sourceItemAsMediaAccessoryItem accessories];
  anyObject = [accessories anyObject];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  home = [(HFItemManager *)self home];
  residentDevices = [home residentDevices];

  if (hasOptedToHH2 && [residentDevices count])
  {
    v13 = 1;
  }

  else
  {
    v13 = hasOptedToHH2 ^ 1;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v84 = "[HUStatusAndNotificationsItemManager _buildSectionsWithDisplayedItems:]";
    v85 = 1024;
    v86 = hasOptedToHH2;
    v87 = 2048;
    v88 = [residentDevices count];
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%s hasOptedToHH2 = %{BOOL}d residents = %lu", buf, 0x1Cu);
  }

  if ([(HUStatusAndNotificationsItemManager *)self showStatusSection])
  {
    v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUStatusAndNotificationsIncludeInStatusSectionIdentifier"];
    includeInStatusItem = [(HUStatusAndNotificationsItemManager *)self includeInStatusItem];
    v82 = includeInStatusItem;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
    [v15 setItems:v17];

    homeStatusVisibleObject = [(HUStatusAndNotificationsItemManager *)self homeStatusVisibleObject];
    LODWORD(v17) = [homeStatusVisibleObject hf_isForcedVisibleInHomeStatus];

    if (v17)
    {
      v19 = @"HUStatusAndNotificationsAlwaysIncludedInStatusFooter";
    }

    else
    {
      v19 = @"HUStatusAndNotificationsIncludeInStatusFooter";
    }

    v20 = _HULocalizedStringWithDefaultValue(v19, v19, 1);
    [v15 setFooterTitle:v20];

    [array addObject:v15];
  }

  if (v13)
  {
    v21 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Activity"];
    allowActivityNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowActivityNotificationsItem];
    v81 = allowActivityNotificationsItem;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
    [v21 setItems:v23];

    if ([(HUStatusAndNotificationsItemManager *)self cameraProfileSupportsSmartNotifications])
    {
      v24 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsAllowNotificationsFooter", @"HUStatusAndNotificationsAllowNotificationsFooter", 1);
    }

    else
    {
      if (![(HUStatusAndNotificationsItemManager *)self _isSourceItemThermostatLikeItem])
      {
LABEL_18:
        [array addObject:{v21, anyObject}];

        goto LABEL_19;
      }

      v24 = HFLocalizedString();
    }

    v25 = v24;
    [v21 setFooterTitle:{v24, anyObject}];

    goto LABEL_18;
  }

LABEL_19:
  if ([(HUStatusAndNotificationsItemManager *)self showsAudioNotificationSection])
  {
    v26 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUStatusAndNotificationsAllowAudioNotificationsSectionIdentifier"];
    allowAudioNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowAudioNotificationsItem];
    v80 = allowAudioNotificationsItem;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
    [v26 setItems:v28];

    [array addObject:v26];
  }

  if ((-[HUStatusAndNotificationsItemManager showsTriggerConditionSection](self, "showsTriggerConditionSection") & v13) == 1 && ([v73 hf_isHomePod] && -[HUStatusAndNotificationsItemManager showsAudioNotificationSection](self, "showsAudioNotificationSection") || (objc_msgSend(v73, "hf_isHomePod") & 1) == 0))
  {
    v29 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUStatusAndNotificationsConditionSectionIdentifier"];
    if ([(HUStatusAndNotificationsItemManager *)self showsCameraSmartNotificationSection])
    {
      v30 = @"HUStatusAndNotificationCameraMotionHeader";
    }

    else
    {
      v30 = @"HUStatusAndNotificationsConditionTitle";
    }

    v31 = _HULocalizedStringWithDefaultValue(v30, v30, 1);
    [v29 setHeaderTitle:v31];

    v32 = objc_opt_new();
    conditionModule = [(HUStatusAndNotificationsItemManager *)self conditionModule];
    v34 = [conditionModule buildSectionsWithDisplayedItems:itemsCopy];

    v35 = [v34 na_flatMap:&__block_literal_global_64];
    [v32 addObjectsFromArray:v35];

    [v29 setItems:v32];
    [array addObject:v29];
  }

  if (([(HUStatusAndNotificationsItemManager *)self showsCameraSmartNotificationSection]& v13) == 1)
  {
    cameraSmartDetectionSettingsModule = [(HUStatusAndNotificationsItemManager *)self cameraSmartDetectionSettingsModule];
    v37 = [cameraSmartDetectionSettingsModule buildSectionsWithDisplayedItems:itemsCopy];

    [array addObjectsFromArray:v37];
  }

  if (([(HUStatusAndNotificationsItemManager *)self showsCameraStatusChangeSection]& v13) == 1)
  {
    v38 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"CameraStatusChange"];
    allowCameraStatusChangesItem = [(HUStatusAndNotificationsItemManager *)self allowCameraStatusChangesItem];
    v79 = allowCameraStatusChangesItem;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
    [v38 setItems:v40];

    v41 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsCameraStatusChangesFooter", @"HUStatusAndNotificationsCameraStatusChangesFooter", 1);
    [v38 setFooterTitle:v41];

    [array addObject:v38];
  }

  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v43 = serviceItem;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;

  profile = [v44 profile];

  LODWORD(v44) = [profile hf_supportsReachabilityNotifications] & v13;
  if (v44 == 1)
  {
    v46 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"CameraReachabilityStatusChange"];
    allowCameraReachabilityChangeNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowCameraReachabilityChangeNotificationsItem];
    v78 = allowCameraReachabilityChangeNotificationsItem;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    [v46 setItems:v48];

    v49 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsCameraReachabilityChangesFooter", @"HUStatusAndNotificationsCameraReachabilityChangesFooter", 1);
    [v46 setFooterTitle:v49];

    [array addObject:v46];
  }

  if (([(HUStatusAndNotificationsItemManager *)self showsCameraSnapshotSection]& v13) == 1)
  {
    v50 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUStatusAndNotificationsCameraSnapshotSectionIdentifier"];
    allowCameraSnapshotsItem = [(HUStatusAndNotificationsItemManager *)self allowCameraSnapshotsItem];
    v77 = allowCameraSnapshotsItem;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
    [v50 setItems:v52];

    v53 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationCameraSnapshotFooter", @"HUStatusAndNotificationCameraSnapshotFooter", 1);
    [v50 setFooterTitle:v53];

    [array addObject:v50];
  }

  if (([(HUStatusAndNotificationsItemManager *)self hasDoorbellCamera]& v13) == 1)
  {
    v54 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Doorbell"];
    allowDoorbellNotificationsItem = [(HUStatusAndNotificationsItemManager *)self allowDoorbellNotificationsItem];
    v76 = allowDoorbellNotificationsItem;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    [v54 setItems:v56];

    v57 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsDoorbellNotificationsFooter", @"HUStatusAndNotificationsDoorbellNotificationsFooter", 1);
    [v54 setFooterTitle:v57];

    [array addObject:v54];
    v58 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"analogChimeSection"];
    allowAnalogChimeNotificationItem = [(HUStatusAndNotificationsItemManager *)self allowAnalogChimeNotificationItem];
    v75 = allowAnalogChimeNotificationItem;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    [v58 setItems:v60];

    v61 = _HULocalizedStringWithDefaultValue(@"HUCameraDoorbellChimeMuteSwitchFooter", @"HUCameraDoorbellChimeMuteSwitchFooter", 1);
    [v58 setFooterTitle:v61];

    [array addObject:v58];
  }

  if ([(HUStatusAndNotificationsItemManager *)self showsDoorbellChimeSection])
  {
    v62 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUStatusAndNotificationsChimeOnHomePodSectionIdentifier"];
    chimeOnAccessoriesListItem = [(HUStatusAndNotificationsItemManager *)self chimeOnAccessoriesListItem];
    v74 = chimeOnAccessoriesListItem;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
    [v62 setItems:v64];

    home2 = [(HFItemManager *)self home];
    hf_allHomePodsOrStereoPairs = [home2 hf_allHomePodsOrStereoPairs];
    v67 = [hf_allHomePodsOrStereoPairs count];

    if (v67 <= 1)
    {
      v68 = @"HUChimeOnAccessoriesFooter_Single";
    }

    else
    {
      v68 = @"HUChimeOnAccessoriesFooter_Multiple";
    }

    v69 = _HULocalizedStringWithDefaultValue(v68, v68, 1);
    [v62 setFooterTitle:v69];

    [array addObject:v62];
  }

  v70 = [MEMORY[0x277D14778] filterSections:array toDisplayedItems:itemsCopy];

  return v70;
}

- (id)updateAllowNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [notificationSettings mutableCopy];

  [v6 setNotificationsEnabled:notificationsCopy];
  [v6 setDoorbellNotificationsEnabled:notificationsCopy];
  [v6 setSmartDetectionNotificationsEnabled:notificationsCopy];
  [v6 setMotionNotificationsEnabled:notificationsCopy];
  v7 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v7;
}

- (id)updateAllowAudioNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _sourceItemAsMediaAccessoryItem = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  mediaProfileContainer = [_sourceItemAsMediaAccessoryItem mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v39 = [_sourceItemAsMediaAccessoryItem isHomePodMediaSystem];
    *&v39[4] = 2112;
    *&v39[6] = accessories;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Is this a HomePod media system? %{BOOL}d Updating audio analysis notification settings for accessories: %@", buf, 0x12u);
  }

  v29 = _sourceItemAsMediaAccessoryItem;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = accessories;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  v10 = notificationsCopy;
  if (v9)
  {
    v11 = v9;
    v32 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = &unk_2825BD420;
        if ([v13 conformsToProtocol:{v14, v29}])
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        hf_userNotificationSettings = [v16 hf_userNotificationSettings];
        v18 = [hf_userNotificationSettings mutableCopy];

        [v18 setNotificationsEnabled:v10];
        if (-[HUStatusAndNotificationsItemManager _isAudioAnalysisSupportedDevice](self, "_isAudioAnalysisSupportedDevice") && [v18 areNotificationsEnabled])
        {
          v19 = MEMORY[0x277D14598];
          [v18 notificationCondition];
          v21 = v20 = v4;
          v22 = [v19 conditionCollectionForPredicate:v21];

          v23 = [(HUStatusAndNotificationsItemManager *)self _updateConditionCollectionForAudioAnalysisNotification:v22];
          predicate = [v23 predicate];
          [v18 setNotificationCondition:predicate];

          v4 = v20;
          v10 = notificationsCopy;
        }

        v25 = HFLogForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v39 = v13;
          _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "Updating audio analysis notification settings for accessory: %@", buf, 0xCu);
        }

        v26 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v18 notificationSettingsProvider:v16];
        [v4 na_safeAddObject:v26];
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  v27 = [MEMORY[0x277D2C900] chainFutures:v4];

  return v27;
}

- (id)updateAllowMotionNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [notificationSettings mutableCopy];

  [v6 setMotionNotificationsEnabled:notificationsCopy];
  [v6 setNotificationsEnabled:{objc_msgSend(v6, "areDoorbellNotificationsEnabled") | notificationsCopy}];
  v7 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v7;
}

- (id)updateChimeOnAccessory:(BOOL)accessory
{
  array = [MEMORY[0x277CBEB18] array];
  home = [(HFItemManager *)self home];
  hf_allHomePodsOrStereoPairs = [home hf_allHomePodsOrStereoPairs];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __62__HUStatusAndNotificationsItemManager_updateChimeOnAccessory___block_invoke;
  v16 = &unk_277DBB2F8;
  v17 = array;
  accessoryCopy = accessory;
  v8 = array;
  [hf_allHomePodsOrStereoPairs na_each:&v13];
  v9 = MEMORY[0x277D2C900];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v11 = [v9 combineAllFutures:v8 ignoringErrors:0 scheduler:mainThreadScheduler];

  return v11;
}

void __62__HUStatusAndNotificationsItemManager_updateChimeOnAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 hf_settingsValueManager];
  v4 = [v3 settings];

  v5 = [v4 hf_accessorySettingAtKeyPath:*MEMORY[0x277D139B0]];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v8 = [v9 changeValueForSetting:v5 toValue:v7];
  [v6 addObject:v8];
}

- (id)updateAllowDoorbellNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [notificationSettings mutableCopy];

  [v6 setDoorbellNotificationsEnabled:notificationsCopy];
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v8 = serviceItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  profile = [v9 profile];

  LODWORD(v9) = [profile hf_supportsRecordingEvents];
  if (!v9)
  {
    if (!notificationsCopy)
    {
      areMotionNotificationsEnabled = [v6 areMotionNotificationsEnabled];
      goto LABEL_10;
    }

LABEL_8:
    v12 = 1;
    goto LABEL_11;
  }

  if (notificationsCopy)
  {
    goto LABEL_8;
  }

  areMotionNotificationsEnabled = [v6 areSmartDetectionNotificationsEnabled];
LABEL_10:
  v12 = areMotionNotificationsEnabled;
LABEL_11:
  [v6 setNotificationsEnabled:v12];
  v13 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v13;
}

- (id)updateAllowChimeAnalogNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [notificationSettings mutableCopy];

  [v6 setDoorbellNotificationsEnabled:notificationsCopy];
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v8 = serviceItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  profile = [v9 profile];

  [profile hf_updateDoorbellChime:notificationsCopy];
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (id)updateAllowSnapshotsInNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  allowCameraSnapshotsItem = [(HUStatusAndNotificationsItemManager *)self allowCameraSnapshotsItem];
  v5 = [allowCameraSnapshotsItem updateUserSettingsWithValue:notificationsCopy];

  return v5;
}

- (id)updateAllowSmartActivityNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [notificationSettings mutableCopy];

  [v6 setSmartDetectionNotificationsEnabled:notificationsCopy];
  [v6 setMotionNotificationsEnabled:notificationsCopy];
  if ([v6 areDoorbellNotificationsEnabled])
  {
    areSmartDetectionNotificationsEnabled = 1;
  }

  else
  {
    areSmartDetectionNotificationsEnabled = [v6 areSmartDetectionNotificationsEnabled];
  }

  [v6 setNotificationsEnabled:areSmartDetectionNotificationsEnabled];
  v8 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v8;
}

- (id)updateAllowCameraStatusChangeNotifications:(BOOL)notifications
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = serviceItem;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    profile = [v7 profile];
    hf_supportsRecordingEvents = [profile hf_supportsRecordingEvents];

    v10 = MEMORY[0x277D2C900];
    if (hf_supportsRecordingEvents)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __82__HUStatusAndNotificationsItemManager_updateAllowCameraStatusChangeNotifications___block_invoke;
      v15[3] = &unk_277DBB320;
      v16 = v7;
      notificationsCopy = notifications;
      futureWithNoResult = [v10 futureWithBlock:v15];
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    futureWithNoResult = [v12 futureWithError:v13];
  }

  return futureWithNoResult;
}

void __82__HUStatusAndNotificationsItemManager_updateAllowCameraStatusChangeNotifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) profile];
  v5 = [v4 userSettings];
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HUStatusAndNotificationsItemManager_updateAllowCameraStatusChangeNotifications___block_invoke_2;
  v8[3] = &unk_277DB8C00;
  v9 = v3;
  v7 = v3;
  [v5 updateAccessModeChangeNotificationEnabled:v6 completionHandler:v8];
}

uint64_t __82__HUStatusAndNotificationsItemManager_updateAllowCameraStatusChangeNotifications___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

- (id)updateAllowCameraReachabilityStatusChangeNotifications:(BOOL)notifications
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = serviceItem;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x277D2C900];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __94__HUStatusAndNotificationsItemManager_updateAllowCameraReachabilityStatusChangeNotifications___block_invoke;
    v13[3] = &unk_277DBB320;
    v14 = v7;
    notificationsCopy = notifications;
    v9 = [v8 futureWithBlock:v13];
  }

  else
  {
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v9 = [v10 futureWithError:v11];
  }

  return v9;
}

void __94__HUStatusAndNotificationsItemManager_updateAllowCameraReachabilityStatusChangeNotifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) profile];
  v5 = [v4 userSettings];
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__HUStatusAndNotificationsItemManager_updateAllowCameraReachabilityStatusChangeNotifications___block_invoke_2;
  v8[3] = &unk_277DB8C00;
  v9 = v3;
  v7 = v3;
  [v5 updateReachabilityEventNotificationEnabled:v6 completionHandler:v8];

  [v7 finishWithNoResult];
}

uint64_t __94__HUStatusAndNotificationsItemManager_updateAllowCameraReachabilityStatusChangeNotifications___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

- (id)updateNotificationCondition:(id)condition
{
  v53 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412802;
    *v50 = self;
    *&v50[8] = 2112;
    *&v50[10] = v6;
    v51 = 2112;
    v52 = conditionCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating notification condition to %@", buf, 0x20u);
  }

  if ([(HUStatusAndNotificationsItemManager *)self showsAudioNotificationSection])
  {
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    _sourceItemAsMediaAccessoryItem = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
    mediaProfileContainer = [_sourceItemAsMediaAccessoryItem mediaProfileContainer];
    accessories = [mediaProfileContainer accessories];

    v10 = HFLogForCategory();
    v11 = conditionCopy;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      isHomePodMediaSystem = [_sourceItemAsMediaAccessoryItem isHomePodMediaSystem];
      *buf = 67109378;
      *v50 = isHomePodMediaSystem;
      *&v50[4] = 2112;
      *&v50[6] = accessories;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Is this a HomePod media system? %{BOOL}d Updating audio analysis notification settings for accessories: %@", buf, 0x12u);
    }

    v39 = _sourceItemAsMediaAccessoryItem;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = accessories;
    v13 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v45;
      v16 = &protocolRef_NSCopying_0;
      do
      {
        v17 = 0;
        v42 = v14;
        do
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = v16[21];
          v19 = *(*(&v44 + 1) + 8 * v17);
          v20 = v18;
          if ([v19 conformsToProtocol:v20])
          {
            v21 = v19;
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;

          hf_userNotificationSettings = [v22 hf_userNotificationSettings];
          v24 = [hf_userNotificationSettings mutableCopy];

          if ([v24 areNotificationsEnabled])
          {
            v25 = v15;
            v26 = [MEMORY[0x277D14598] conditionCollectionForPredicate:v11];
            selfCopy = self;
            v28 = [(HUStatusAndNotificationsItemManager *)self _updateConditionCollectionForAudioAnalysisNotification:v26];
            predicate = [v28 predicate];
            [v24 setNotificationCondition:predicate];

            v30 = HFLogForCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              notificationCondition = [v24 notificationCondition];
              *buf = 138412546;
              *v50 = v19;
              *&v50[8] = 2112;
              *&v50[10] = notificationCondition;
              _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "Updating audio analysis notification settings for accessory: %@ with condition %@", buf, 0x16u);

              v11 = conditionCopy;
            }

            v32 = [(HUStatusAndNotificationsItemManager *)selfCopy _updateNotificationSettings:v24 notificationSettingsProvider:v22];
            [v41 na_safeAddObject:v32];

            self = selfCopy;
            v15 = v25;
            v16 = &protocolRef_NSCopying_0;
            v14 = v42;
          }

          ++v17;
        }

        while (v14 != v17);
        v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v14);
    }

    v33 = v41;
    v34 = [MEMORY[0x277D2C900] chainFutures:v41];
  }

  else
  {
    notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    v33 = [notificationSettings mutableCopy];

    [v33 setNotificationCondition:conditionCopy];
    notificationSettings2 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    smartCameraNotificationCondition = [notificationSettings2 smartCameraNotificationCondition];
    [v33 setSmartCameraNotificationCondition:smartCameraNotificationCondition];

    v11 = conditionCopy;
    v34 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v33];
  }

  return v34;
}

- (id)updateCameraSmartNotificationCondition:(id)condition
{
  conditionCopy = condition;
  notificationSettings = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [notificationSettings mutableCopy];

  notificationSettings2 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  notificationCondition = [notificationSettings2 notificationCondition];
  [v6 setNotificationCondition:notificationCondition];

  [v6 setSmartCameraNotificationCondition:conditionCopy];
  v9 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v9;
}

- (BOOL)_isSourceItemThermostatLikeItem
{
  _sourceItemAsThermostatServiceItem = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsThermostatServiceItem];
  if (_sourceItemAsThermostatServiceItem)
  {
    v4 = 1;
  }

  else
  {
    _sourceItemAsHeaterCoolerServiceItem = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsHeaterCoolerServiceItem];
    v4 = _sourceItemAsHeaterCoolerServiceItem != 0;
  }

  return v4;
}

- (id)_sourceItemAsThermostatServiceItem
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_sourceItemAsHeaterCoolerServiceItem
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_sourceItemAsMediaAccessoryItem
{
  objc_opt_class();
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)_isAudioAnalysisSupportedDevice
{
  v2 = MEMORY[0x277D14810];
  _sourceItemAsMediaAccessoryItem = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  mediaProfileContainer = [_sourceItemAsMediaAccessoryItem mediaProfileContainer];
  LOBYTE(v2) = [v2 isAudioAnalysisSupportedDevice:mediaProfileContainer];

  return v2;
}

- (id)_updateConditionCollectionForAudioAnalysisNotification:(id)notification
{
  notificationCopy = notification;
  if (!notificationCopy)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Condition collection is nil. Cannot update.", v11, 2u);
    }
  }

  conditions = [notificationCopy conditions];
  v6 = [conditions na_filter:&__block_literal_global_199_0];

  v7 = [objc_alloc(MEMORY[0x277D14598]) initWithConditions:v6];
  v8 = [MEMORY[0x277CD1858] predicateForAudioAnalysisOptions:3];
  v9 = [objc_alloc(MEMORY[0x277D14418]) initWithPredicate:v8];
  [v7 addCondition:v9];

  return v7;
}

BOOL __94__HUStatusAndNotificationsItemManager__updateConditionCollectionForAudioAnalysisNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)_updateNotificationSettings:(id)settings
{
  settingsCopy = settings;
  notificationSettingsProvider = [(HUStatusAndNotificationsItemManager *)self notificationSettingsProvider];
  v6 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:settingsCopy notificationSettingsProvider:notificationSettingsProvider];

  return v6;
}

- (id)_updateNotificationSettings:(id)settings notificationSettingsProvider:(id)provider
{
  v23 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  providerCopy = provider;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = settingsCopy;
    v21 = 2112;
    v22 = providerCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Updating notification settings to: %@ for object: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10 = [providerCopy hf_updateUserNotificationSettings:settingsCopy];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __96__HUStatusAndNotificationsItemManager__updateNotificationSettings_notificationSettingsProvider___block_invoke;
  v17 = &unk_277DBB368;
  objc_copyWeak(v18, buf);
  v18[1] = a2;
  v11 = [v10 addCompletionBlock:&v14];
  v12 = [v11 addFailureBlock:{&__block_literal_global_204, v14, v15, v16, v17}];

  objc_destroyWeak(v18);
  objc_destroyWeak(buf);

  return v12;
}

void __96__HUStatusAndNotificationsItemManager__updateNotificationSettings_notificationSettingsProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CBEB58];
  v3 = [WeakRetained allowNotificationsItem];
  v4 = [WeakRetained allowDoorbellNotificationsItem];
  v5 = [WeakRetained allowActivityNotificationsItem];
  v6 = [WeakRetained allowCameraSnapshotsItem];
  v7 = [v2 setWithObjects:{v3, v4, v5, v6, 0}];

  v8 = [WeakRetained conditionModule];

  if (v8)
  {
    v9 = [WeakRetained conditionModule];
    v10 = [v9 allItems];
    [v7 unionSet:v10];
  }

  v11 = [WeakRetained cameraSmartDetectionSettingsModule];

  if (v11)
  {
    v12 = [WeakRetained cameraSmartDetectionSettingsModule];
    v13 = [v12 allItems];
    [v7 unionSet:v13];
  }

  v14 = [WeakRetained audioAnalysisDetectionSettingsModule];

  if (v14)
  {
    v15 = [WeakRetained audioAnalysisDetectionSettingsModule];
    v16 = [v15 allItems];
    [v7 unionSet:v16];
  }

  v17 = [WeakRetained updateResultsForItems:v7 senderSelector:*(a1 + 40)];
}

void __96__HUStatusAndNotificationsItemManager__updateNotificationSettings_notificationSettingsProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 logError:v3 operationDescription:*MEMORY[0x277D13C18]];
}

- (HFUserNotificationServiceSettingsProviding)notificationSettingsProvider
{
  _sourceItemAsMediaAccessoryItem = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  v4 = _sourceItemAsMediaAccessoryItem;
  if (!_sourceItemAsMediaAccessoryItem)
  {
    if ([(HUStatusAndNotificationsItemManager *)self _isSourceItemThermostatLikeItem])
    {
      _sourceItemAsThermostatServiceItem = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsThermostatServiceItem];
      serviceItem = _sourceItemAsThermostatServiceItem;
      if (_sourceItemAsThermostatServiceItem)
      {
        accessories = [_sourceItemAsThermostatServiceItem accessories];
        anyObject = [accessories anyObject];
      }

      else
      {
        accessories = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsHeaterCoolerServiceItem];
        v12Accessories = [accessories accessories];
        anyObject = [v12Accessories anyObject];
      }

      if (_os_feature_enabled_impl())
      {
        home = [anyObject home];
        if ([home hf_hasResidentCapableOfSupportingHomeActivityState])
        {
          supportsAdaptiveTemperatureAutomations = [anyObject supportsAdaptiveTemperatureAutomations];

          if (supportsAdaptiveTemperatureAutomations)
          {
            homeKitObject = anyObject;
            if ([homeKitObject conformsToProtocol:&unk_2825BD420])
            {
              v17 = homeKitObject;
            }

            else
            {
              v17 = 0;
            }

            v9 = v17;

            goto LABEL_23;
          }
        }

        else
        {
        }
      }
    }

    serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
    homeKitObject = [serviceItem homeKitObject];
    if ([homeKitObject conformsToProtocol:&unk_2825BD420])
    {
      v18 = homeKitObject;
    }

    else
    {
      v18 = 0;
    }

    v9 = v18;
    goto LABEL_23;
  }

  accessories2 = [_sourceItemAsMediaAccessoryItem accessories];
  anyObject2 = [accessories2 anyObject];

  homeKitObject = anyObject2;
  if ([homeKitObject conformsToProtocol:&unk_2825BD420])
  {
    v8 = homeKitObject;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  serviceItem = homeKitObject;
LABEL_23:

  return v9;
}

- (BOOL)_isAutoClimateCapableThermostat
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  accessories = [serviceItem accessories];
  v5 = [accessories na_firstObjectPassingTest:&__block_literal_global_210];

  if (v5)
  {
    home = [v5 home];
    v7 = home;
    if (home && [home hf_hasResidentCapableOfSupportingHomeActivityState])
    {
      if ([v5 supportsAdaptiveTemperatureAutomations])
      {
        supportsCleanEnergyAutomation = 1;
      }

      else
      {
        supportsCleanEnergyAutomation = [v5 supportsCleanEnergyAutomation];
      }
    }

    else
    {
      supportsCleanEnergyAutomation = 0;
    }
  }

  else
  {
    supportsCleanEnergyAutomation = 0;
  }

  return supportsCleanEnergyAutomation;
}

uint64_t __70__HUStatusAndNotificationsItemManager__isAutoClimateCapableThermostat__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 services];
  v3 = [v2 na_any:&__block_literal_global_213];

  return v3;
}

uint64_t __70__HUStatusAndNotificationsItemManager__isAutoClimateCapableThermostat__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 serviceType];
  if ([v3 isEqualToString:*MEMORY[0x277CD0F30]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 serviceType];
    v4 = [v5 isEqualToString:*MEMORY[0x277CD0E60]];
  }

  return v4;
}

- (HFUserNotificationServiceSettings)notificationSettings
{
  notificationSettingsProvider = [(HUStatusAndNotificationsItemManager *)self notificationSettingsProvider];
  hf_userNotificationSettings = [notificationSettingsProvider hf_userNotificationSettings];

  return hf_userNotificationSettings;
}

- (id)homeStatusVisibleObject
{
  serviceItem = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  homeKitObject = [serviceItem homeKitObject];
  if ([homeKitObject conformsToProtocol:&unk_28259DE80])
  {
    v4 = homeKitObject;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUStatusAndNotificationsItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

@end