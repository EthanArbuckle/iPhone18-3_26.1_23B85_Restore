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
- (HUStatusAndNotificationsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUStatusAndNotificationsItemManager)initWithServiceItem:(id)a3 delegate:(id)a4 home:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)_sourceItemAsHeaterCoolerServiceItem;
- (id)_sourceItemAsMediaAccessoryItem;
- (id)_sourceItemAsThermostatServiceItem;
- (id)_updateConditionCollectionForAudioAnalysisNotification:(id)a3;
- (id)_updateNotificationSettings:(id)a3;
- (id)_updateNotificationSettings:(id)a3 notificationSettingsProvider:(id)a4;
- (id)homeStatusVisibleObject;
- (id)updateAllowAudioNotifications:(BOOL)a3;
- (id)updateAllowCameraReachabilityStatusChangeNotifications:(BOOL)a3;
- (id)updateAllowCameraStatusChangeNotifications:(BOOL)a3;
- (id)updateAllowChimeAnalogNotifications:(BOOL)a3;
- (id)updateAllowDoorbellNotifications:(BOOL)a3;
- (id)updateAllowMotionNotifications:(BOOL)a3;
- (id)updateAllowNotifications:(BOOL)a3;
- (id)updateAllowSmartActivityNotifications:(BOOL)a3;
- (id)updateAllowSnapshotsInNotifications:(BOOL)a3;
- (id)updateCameraSmartNotificationCondition:(id)a3;
- (id)updateChimeOnAccessory:(BOOL)a3;
- (id)updateNotificationCondition:(id)a3;
- (void)setShowStatusSection:(BOOL)a3;
@end

@implementation HUStatusAndNotificationsItemManager

- (HUStatusAndNotificationsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithServiceItem_delegate_home_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUStatusAndNotificationsItemManager.m" lineNumber:63 description:{@"%s is unavailable; use %@ instead", "-[HUStatusAndNotificationsItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUStatusAndNotificationsItemManager)initWithServiceItem:(id)a3 delegate:(id)a4 home:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [v9 copy];
  v47.receiver = self;
  v47.super_class = HUStatusAndNotificationsItemManager;
  v13 = [(HFItemManager *)&v47 initWithDelegate:v11 sourceItem:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_serviceItem, a3);
    objc_storeStrong(&v13->_overrideHome, a5);
    v14 = [(HUStatusAndNotificationsItemManager *)v13 notificationSettings];
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v49 = "[HUStatusAndNotificationsItemManager initWithServiceItem:delegate:home:]";
      v50 = 2112;
      v51 = v14;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%s notificationSettings: %@", buf, 0x16u);
    }

    if (!v14)
    {
      objc_opt_class();
      v21 = [(HUStatusAndNotificationsItemManager *)v13 notificationSettingsProvider];
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
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
        v45 = [(HUStatusAndNotificationsItemManager *)v13 homeStatusVisibleObject];
        v13->_showStatusSection = v45 != 0;

        goto LABEL_31;
      }

      v24 = [v17 bulletinBoardNotificationByEndpoint];
      *buf = 136315650;
      v49 = "[HUStatusAndNotificationsItemManager initWithServiceItem:delegate:home:]";
      v50 = 2112;
      v51 = v24;
      v52 = 2112;
      v53 = v17;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%s: bulletinBoardNotificationByEndpoint: %@ for accessory: %@", buf, 0x20u);
LABEL_28:

      goto LABEL_29;
    }

    v16 = objc_alloc(MEMORY[0x277D14598]);
    v17 = [v16 initWithConditions:MEMORY[0x277CBEBF8]];
    v18 = [v14 smartCameraNotificationCondition];

    if (v18)
    {
      v19 = MEMORY[0x277D14598];
      v20 = [v14 smartCameraNotificationCondition];
    }

    else
    {
      v25 = [v14 notificationCondition];

      if (!v25)
      {
LABEL_16:
        v23 = [MEMORY[0x277CBEB98] set];
        objc_opt_class();
        v28 = v9;
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v24 = v29;

        if (v24 || [(HUStatusAndNotificationsItemManager *)v13 _isAudioAnalysisSupportedDevice])
        {
          v30 = [MEMORY[0x277CBEB98] setWithObject:&unk_2824910A0];

          v23 = v30;
        }

        v31 = [[HUTriggerConditionEditorItemModule alloc] initWithItemUpdater:v13 home:v10 conditionCollection:v17 disallowedConditionTypes:v23];
        conditionModule = v13->_conditionModule;
        v13->_conditionModule = v31;

        if ([(HUStatusAndNotificationsItemManager *)v13 _isAudioAnalysisSupportedDevice])
        {
          v33 = [(HUStatusAndNotificationsItemManager *)v13 _sourceItemAsMediaAccessoryItem];
          v34 = v33;
          if (v33)
          {
            v35 = [v33 accessories];
            v36 = [v35 anyObject];

            v37 = [[HUAudioAnalysisDetectionSettingsModule alloc] initWithItemUpdater:v13 accessory:v36];
            audioAnalysisDetectionSettingsModule = v13->_audioAnalysisDetectionSettingsModule;
            v13->_audioAnalysisDetectionSettingsModule = v37;
          }
        }

        if (v24)
        {
          v39 = [HUCameraSmartDetectionSettingsModule alloc];
          v40 = MEMORY[0x277CBEB98];
          v41 = [v24 profile];
          v42 = [v40 setWithObject:v41];
          v43 = [(HUCameraSmartDetectionSettingsModule *)v39 initWithItemUpdater:v13 cameraProfiles:v42 conditionCollection:v17 settingsContext:1];
          cameraSmartDetectionSettingsModule = v13->_cameraSmartDetectionSettingsModule;
          v13->_cameraSmartDetectionSettingsModule = v43;
        }

        goto LABEL_28;
      }

      v19 = MEMORY[0x277D14598];
      v20 = [v14 notificationCondition];
    }

    v26 = v20;
    v27 = [v19 conditionCollectionForPredicate:v20];

    v17 = v27;
    goto LABEL_16;
  }

LABEL_31:

  return v13;
}

- (void)setShowStatusSection:(BOOL)a3
{
  if (a3 && ([(HUStatusAndNotificationsItemManager *)self homeStatusVisibleObject], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
    NSLog(&cfstr_CannotShowStat.isa, v6);
  }

  else
  {
    self->_showStatusSection = a3;
  }
}

- (BOOL)showsDoorbellChimeSection
{
  if (![(HUStatusAndNotificationsItemManager *)self hasDoorbellCamera])
  {
    return 0;
  }

  v3 = [(HFItemManager *)self home];
  v4 = [v3 hf_allHomePodsOrStereoPairsThatWillChime];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)showsCameraSnapshotSection
{
  objc_opt_class();
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 profile];
    v7 = [v6 userSettings];
    v8 = ([v7 supportedFeatures] >> 5) & 1;
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
    v3 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    v4 = [v3 areSmartDetectionNotificationsEnabled];
  }

  else
  {
    v3 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    v4 = [v3 areNotificationsEnabled];
  }

  v5 = v4;

  return v5;
}

- (BOOL)showsTriggerConditionSection
{
  v3 = [(HFItemManager *)self home];
  v4 = [(HFItemManager *)self home];
  v5 = [v4 currentUser];
  v6 = [v3 hf_userIsRestrictedGuest:v5];

  if ((v6 & 1) != 0 || [(HUStatusAndNotificationsItemManager *)self _isAutoClimateCapableThermostat])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  v9 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    if (![(HUStatusAndNotificationsItemManager *)self _isSourceItemThermostatLikeItem])
    {
      v13 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
      if ([v13 areNotificationsEnabled])
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
    v11 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    v12 = [v11 areMotionNotificationsEnabled];

    return v12;
  }

  else
  {

    return [(HUStatusAndNotificationsItemManager *)self areNotificationsEnabled];
  }
}

- (BOOL)showsActivityNotificationsSection
{
  v3 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  v4 = [v3 accessories];
  v5 = [v4 anyObject];

  v6 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  if (v6 && ![(HUStatusAndNotificationsItemManager *)self serviceItemBelongsToCamera])
  {
    v7 = [v5 hf_isHomePod] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isNonHKSVCameraDoorbell
{
  v3 = [(HUStatusAndNotificationsItemManager *)self hasDoorbellCamera];
  if (v3)
  {
    LOBYTE(v3) = ![(HUStatusAndNotificationsItemManager *)self cameraProfileSupportsSmartNotifications];
  }

  return v3;
}

- (BOOL)cameraProfileSupportsSmartNotifications
{
  objc_opt_class();
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 profile];
  v7 = [v6 hf_supportsRecordingEvents];

  v8 = [v5 accessory];

  v9 = [v8 home];
  v10 = [v9 hf_hasCameraRecordingResident];

  return (v5 != 0) & v7 & v10;
}

- (BOOL)showsCameraSmartNotificationSection
{
  v31 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(HUStatusAndNotificationsItemManager *)self hasDoorbellCamera];
  v7 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 areSmartDetectionNotificationsEnabled];
  }

  else
  {
    v9 = [v7 areNotificationsEnabled];
  }

  v10 = v9;

  v11 = [v5 profile];
  v12 = [v11 hf_supportsRecordingEvents];

  v13 = [v5 accessory];
  v14 = [v13 home];
  v15 = [v14 hf_hasCameraRecordingResident];

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v5 accessory];
    v18 = [v17 home];
    v19 = NSStringFromBOOL();
    v20 = NSStringFromBOOL();
    v21 = NSStringFromBOOL();
    v23 = 138413058;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_INFO, "Performing check for show camera smart notification section. home: %@, notificationsEnabled: %@, camera supports recording: %@, home has recording resident: %@", &v23, 0x2Au);
  }

  return (v5 != 0) & v10 & v12 & v15;
}

- (BOOL)hasDoorbellCamera
{
  objc_opt_class();
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 accessory];
    v7 = [v6 hf_serviceOfType:*MEMORY[0x277CD0E38]];
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
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 profile];

  LOBYTE(v5) = [v6 hf_supportsRecordingEvents];
  return v5;
}

- (BOOL)showsSmartActivitySection
{
  objc_opt_class();
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 profile];
  if ([v6 hf_supportsRecordingEvents])
  {
    v7 = [v5 accessory];
    v8 = [v7 home];
    v9 = [v8 hf_hasCameraRecordingResident];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)showsAudioNotificationSection
{
  v3 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  if (v3)
  {
    v4 = [(HUStatusAndNotificationsItemManager *)self _isAudioAnalysisSupportedDevice];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)serviceItemBelongsToCamera
{
  v2 = MEMORY[0x277D144A0];
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  LOBYTE(v2) = [v2 cameraContainsMotionServiceItem:v3];

  return v2;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v109[11] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v73 = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  v5 = [v4 areBulletinNotificationsSupported];
  v6 = MEMORY[0x277CBEB58];
  v7 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  v8 = [v7 homeKitObject];
  v9 = [v6 na_setWithSafeObject:v8];

  [v9 addObject:v4];
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
  v14 = [(HFItemManager *)self home];
  v15 = [(HUChimeOnAccessoriesListItem *)v13 initWithHome:v14];
  [(HUStatusAndNotificationsItemManager *)self setChimeOnAccessoriesListItem:v15];

  v16 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];

  v17 = [HUServiceDetailsCameraAllowSnapshotsItem alloc];
  v18 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  v19 = [(HUServiceDetailsCameraAllowSnapshotsItem *)v17 initWithSourceServiceItem:v18 home:v4 shouldBeHidden:v16 == 0];
  [(HUStatusAndNotificationsItemManager *)self setAllowCameraSnapshotsItem:v19];

  v20 = objc_alloc(MEMORY[0x277D14B38]);
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __66__HUStatusAndNotificationsItemManager__buildItemProvidersForHome___block_invoke_2;
  v101[3] = &unk_277DBB2A8;
  objc_copyWeak(&v103, &location);
  v104 = v5;
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
  v100 = v5;
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
  v96 = v5;
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
  v92 = v5;
  v69 = v4;
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
  v87 = v5;
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
  v83 = v5;
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
  v79 = v5;
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

  v72 = [(HUStatusAndNotificationsItemManager *)self includeInStatusItem];
  v109[0] = v72;
  v71 = [(HUStatusAndNotificationsItemManager *)self chimeOnAccessoriesListItem];
  v109[1] = v71;
  v70 = [(HUStatusAndNotificationsItemManager *)self allowCameraSnapshotsItem];
  v109[2] = v70;
  v42 = [(HUStatusAndNotificationsItemManager *)self allowCameraStatusChangesItem];
  v109[3] = v42;
  v43 = [(HUStatusAndNotificationsItemManager *)self allowCameraReachabilityChangeNotificationsItem];
  v109[4] = v43;
  v44 = [(HUStatusAndNotificationsItemManager *)self allowNotificationsItem];
  v109[5] = v44;
  v45 = [(HUStatusAndNotificationsItemManager *)self allowAudioNotificationsItem];
  v109[6] = v45;
  v46 = [(HUStatusAndNotificationsItemManager *)self allowMotionNotificationsItem];
  v109[7] = v46;
  v47 = [(HUStatusAndNotificationsItemManager *)self allowAnalogChimeNotificationItem];
  v109[8] = v47;
  v48 = [(HUStatusAndNotificationsItemManager *)self allowDoorbellNotificationsItem];
  v109[9] = v48;
  v49 = [(HUStatusAndNotificationsItemManager *)self allowActivityNotificationsItem];
  v109[10] = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:11];
  [v73 addObjectsFromArray:v50];

  v51 = [MEMORY[0x277CBEB18] array];
  v52 = objc_alloc(MEMORY[0x277D14B40]);
  v53 = [MEMORY[0x277CBEB98] setWithArray:v73];
  v54 = [v52 initWithItems:v53];
  [v51 addObject:v54];

  v55 = [(HUStatusAndNotificationsItemManager *)self conditionModule];

  if (v55)
  {
    v56 = [(HUStatusAndNotificationsItemManager *)self conditionModule];
    v57 = [v56 itemProviders];
    v58 = [v57 allObjects];
    [v51 addObjectsFromArray:v58];
  }

  v59 = [(HUStatusAndNotificationsItemManager *)self cameraSmartDetectionSettingsModule];

  if (v59)
  {
    v60 = [(HUStatusAndNotificationsItemManager *)self cameraSmartDetectionSettingsModule];
    v61 = [v60 itemProviders];
    v62 = [v61 allObjects];
    [v51 addObjectsFromArray:v62];
  }

  v63 = [(HUStatusAndNotificationsItemManager *)self audioAnalysisDetectionSettingsModule];

  if (v63)
  {
    v64 = [(HUStatusAndNotificationsItemManager *)self audioAnalysisDetectionSettingsModule];
    v65 = [v64 itemProviders];
    v66 = [v65 allObjects];
    [v51 addObjectsFromArray:v66];
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

  return v51;
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

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  v7 = [v6 accessories];
  v72 = [v7 anyObject];

  v8 = [MEMORY[0x277D146E8] sharedDispatcher];
  v9 = [v8 homeManager];
  v10 = [v9 hasOptedToHH2];

  v11 = [(HFItemManager *)self home];
  v12 = [v11 residentDevices];

  if (v10 && [v12 count])
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 ^ 1;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v84 = "[HUStatusAndNotificationsItemManager _buildSectionsWithDisplayedItems:]";
    v85 = 1024;
    v86 = v10;
    v87 = 2048;
    v88 = [v12 count];
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%s hasOptedToHH2 = %{BOOL}d residents = %lu", buf, 0x1Cu);
  }

  if ([(HUStatusAndNotificationsItemManager *)self showStatusSection])
  {
    v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUStatusAndNotificationsIncludeInStatusSectionIdentifier"];
    v16 = [(HUStatusAndNotificationsItemManager *)self includeInStatusItem];
    v82 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
    [v15 setItems:v17];

    v18 = [(HUStatusAndNotificationsItemManager *)self homeStatusVisibleObject];
    LODWORD(v17) = [v18 hf_isForcedVisibleInHomeStatus];

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

    [v5 addObject:v15];
  }

  if (v13)
  {
    v21 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Activity"];
    v22 = [(HUStatusAndNotificationsItemManager *)self allowActivityNotificationsItem];
    v81 = v22;
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
        [v5 addObject:{v21, v72}];

        goto LABEL_19;
      }

      v24 = HFLocalizedString();
    }

    v25 = v24;
    [v21 setFooterTitle:{v24, v72}];

    goto LABEL_18;
  }

LABEL_19:
  if ([(HUStatusAndNotificationsItemManager *)self showsAudioNotificationSection])
  {
    v26 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUStatusAndNotificationsAllowAudioNotificationsSectionIdentifier"];
    v27 = [(HUStatusAndNotificationsItemManager *)self allowAudioNotificationsItem];
    v80 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
    [v26 setItems:v28];

    [v5 addObject:v26];
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
    v33 = [(HUStatusAndNotificationsItemManager *)self conditionModule];
    v34 = [v33 buildSectionsWithDisplayedItems:v4];

    v35 = [v34 na_flatMap:&__block_literal_global_64];
    [v32 addObjectsFromArray:v35];

    [v29 setItems:v32];
    [v5 addObject:v29];
  }

  if (([(HUStatusAndNotificationsItemManager *)self showsCameraSmartNotificationSection]& v13) == 1)
  {
    v36 = [(HUStatusAndNotificationsItemManager *)self cameraSmartDetectionSettingsModule];
    v37 = [v36 buildSectionsWithDisplayedItems:v4];

    [v5 addObjectsFromArray:v37];
  }

  if (([(HUStatusAndNotificationsItemManager *)self showsCameraStatusChangeSection]& v13) == 1)
  {
    v38 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"CameraStatusChange"];
    v39 = [(HUStatusAndNotificationsItemManager *)self allowCameraStatusChangesItem];
    v79 = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
    [v38 setItems:v40];

    v41 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsCameraStatusChangesFooter", @"HUStatusAndNotificationsCameraStatusChangesFooter", 1);
    [v38 setFooterTitle:v41];

    [v5 addObject:v38];
  }

  objc_opt_class();
  v42 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;

  v45 = [v44 profile];

  LODWORD(v44) = [v45 hf_supportsReachabilityNotifications] & v13;
  if (v44 == 1)
  {
    v46 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"CameraReachabilityStatusChange"];
    v47 = [(HUStatusAndNotificationsItemManager *)self allowCameraReachabilityChangeNotificationsItem];
    v78 = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    [v46 setItems:v48];

    v49 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsCameraReachabilityChangesFooter", @"HUStatusAndNotificationsCameraReachabilityChangesFooter", 1);
    [v46 setFooterTitle:v49];

    [v5 addObject:v46];
  }

  if (([(HUStatusAndNotificationsItemManager *)self showsCameraSnapshotSection]& v13) == 1)
  {
    v50 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUStatusAndNotificationsCameraSnapshotSectionIdentifier"];
    v51 = [(HUStatusAndNotificationsItemManager *)self allowCameraSnapshotsItem];
    v77 = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
    [v50 setItems:v52];

    v53 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationCameraSnapshotFooter", @"HUStatusAndNotificationCameraSnapshotFooter", 1);
    [v50 setFooterTitle:v53];

    [v5 addObject:v50];
  }

  if (([(HUStatusAndNotificationsItemManager *)self hasDoorbellCamera]& v13) == 1)
  {
    v54 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Doorbell"];
    v55 = [(HUStatusAndNotificationsItemManager *)self allowDoorbellNotificationsItem];
    v76 = v55;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    [v54 setItems:v56];

    v57 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsDoorbellNotificationsFooter", @"HUStatusAndNotificationsDoorbellNotificationsFooter", 1);
    [v54 setFooterTitle:v57];

    [v5 addObject:v54];
    v58 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"analogChimeSection"];
    v59 = [(HUStatusAndNotificationsItemManager *)self allowAnalogChimeNotificationItem];
    v75 = v59;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    [v58 setItems:v60];

    v61 = _HULocalizedStringWithDefaultValue(@"HUCameraDoorbellChimeMuteSwitchFooter", @"HUCameraDoorbellChimeMuteSwitchFooter", 1);
    [v58 setFooterTitle:v61];

    [v5 addObject:v58];
  }

  if ([(HUStatusAndNotificationsItemManager *)self showsDoorbellChimeSection])
  {
    v62 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUStatusAndNotificationsChimeOnHomePodSectionIdentifier"];
    v63 = [(HUStatusAndNotificationsItemManager *)self chimeOnAccessoriesListItem];
    v74 = v63;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
    [v62 setItems:v64];

    v65 = [(HFItemManager *)self home];
    v66 = [v65 hf_allHomePodsOrStereoPairs];
    v67 = [v66 count];

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

    [v5 addObject:v62];
  }

  v70 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v70;
}

- (id)updateAllowNotifications:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [v5 mutableCopy];

  [v6 setNotificationsEnabled:v3];
  [v6 setDoorbellNotificationsEnabled:v3];
  [v6 setSmartDetectionNotificationsEnabled:v3];
  [v6 setMotionNotificationsEnabled:v3];
  v7 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v7;
}

- (id)updateAllowAudioNotifications:(BOOL)a3
{
  v30 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  v6 = [v5 mediaProfileContainer];
  v7 = [v6 accessories];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v39 = [v5 isHomePodMediaSystem];
    *&v39[4] = 2112;
    *&v39[6] = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Is this a HomePod media system? %{BOOL}d Updating audio analysis notification settings for accessories: %@", buf, 0x12u);
  }

  v29 = v5;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  v10 = v30;
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

        v17 = [v16 hf_userNotificationSettings];
        v18 = [v17 mutableCopy];

        [v18 setNotificationsEnabled:v10];
        if (-[HUStatusAndNotificationsItemManager _isAudioAnalysisSupportedDevice](self, "_isAudioAnalysisSupportedDevice") && [v18 areNotificationsEnabled])
        {
          v19 = MEMORY[0x277D14598];
          [v18 notificationCondition];
          v21 = v20 = v4;
          v22 = [v19 conditionCollectionForPredicate:v21];

          v23 = [(HUStatusAndNotificationsItemManager *)self _updateConditionCollectionForAudioAnalysisNotification:v22];
          v24 = [v23 predicate];
          [v18 setNotificationCondition:v24];

          v4 = v20;
          v10 = v30;
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

- (id)updateAllowMotionNotifications:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [v5 mutableCopy];

  [v6 setMotionNotificationsEnabled:v3];
  [v6 setNotificationsEnabled:{objc_msgSend(v6, "areDoorbellNotificationsEnabled") | v3}];
  v7 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v7;
}

- (id)updateChimeOnAccessory:(BOOL)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HFItemManager *)self home];
  v7 = [v6 hf_allHomePodsOrStereoPairs];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __62__HUStatusAndNotificationsItemManager_updateChimeOnAccessory___block_invoke;
  v16 = &unk_277DBB2F8;
  v17 = v5;
  v18 = a3;
  v8 = v5;
  [v7 na_each:&v13];
  v9 = MEMORY[0x277D2C900];
  v10 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v11 = [v9 combineAllFutures:v8 ignoringErrors:0 scheduler:v10];

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

- (id)updateAllowDoorbellNotifications:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [v5 mutableCopy];

  [v6 setDoorbellNotificationsEnabled:v3];
  objc_opt_class();
  v7 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 profile];

  LODWORD(v9) = [v10 hf_supportsRecordingEvents];
  if (!v9)
  {
    if (!v3)
    {
      v11 = [v6 areMotionNotificationsEnabled];
      goto LABEL_10;
    }

LABEL_8:
    v12 = 1;
    goto LABEL_11;
  }

  if (v3)
  {
    goto LABEL_8;
  }

  v11 = [v6 areSmartDetectionNotificationsEnabled];
LABEL_10:
  v12 = v11;
LABEL_11:
  [v6 setNotificationsEnabled:v12];
  v13 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v13;
}

- (id)updateAllowChimeAnalogNotifications:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [v5 mutableCopy];

  [v6 setDoorbellNotificationsEnabled:v3];
  objc_opt_class();
  v7 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 profile];

  [v10 hf_updateDoorbellChime:v3];
  v11 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v11;
}

- (id)updateAllowSnapshotsInNotifications:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUStatusAndNotificationsItemManager *)self allowCameraSnapshotsItem];
  v5 = [v4 updateUserSettingsWithValue:v3];

  return v5;
}

- (id)updateAllowSmartActivityNotifications:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [v5 mutableCopy];

  [v6 setSmartDetectionNotificationsEnabled:v3];
  [v6 setMotionNotificationsEnabled:v3];
  if ([v6 areDoorbellNotificationsEnabled])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 areSmartDetectionNotificationsEnabled];
  }

  [v6 setNotificationsEnabled:v7];
  v8 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v8;
}

- (id)updateAllowCameraStatusChangeNotifications:(BOOL)a3
{
  objc_opt_class();
  v5 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 profile];
    v9 = [v8 hf_supportsRecordingEvents];

    v10 = MEMORY[0x277D2C900];
    if (v9)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __82__HUStatusAndNotificationsItemManager_updateAllowCameraStatusChangeNotifications___block_invoke;
      v15[3] = &unk_277DBB320;
      v16 = v7;
      v17 = a3;
      v11 = [v10 futureWithBlock:v15];
    }

    else
    {
      v11 = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [v12 futureWithError:v13];
  }

  return v11;
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

- (id)updateAllowCameraReachabilityStatusChangeNotifications:(BOOL)a3
{
  objc_opt_class();
  v5 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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
    v15 = a3;
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

- (id)updateNotificationCondition:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412802;
    *v50 = self;
    *&v50[8] = 2112;
    *&v50[10] = v6;
    v51 = 2112;
    v52 = v40;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating notification condition to %@", buf, 0x20u);
  }

  if ([(HUStatusAndNotificationsItemManager *)self showsAudioNotificationSection])
  {
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
    v8 = [v7 mediaProfileContainer];
    v9 = [v8 accessories];

    v10 = HFLogForCategory();
    v11 = v40;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 isHomePodMediaSystem];
      *buf = 67109378;
      *v50 = v12;
      *&v50[4] = 2112;
      *&v50[6] = v9;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Is this a HomePod media system? %{BOOL}d Updating audio analysis notification settings for accessories: %@", buf, 0x12u);
    }

    v39 = v7;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v9;
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

          v23 = [v22 hf_userNotificationSettings];
          v24 = [v23 mutableCopy];

          if ([v24 areNotificationsEnabled])
          {
            v25 = v15;
            v26 = [MEMORY[0x277D14598] conditionCollectionForPredicate:v11];
            v27 = self;
            v28 = [(HUStatusAndNotificationsItemManager *)self _updateConditionCollectionForAudioAnalysisNotification:v26];
            v29 = [v28 predicate];
            [v24 setNotificationCondition:v29];

            v30 = HFLogForCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v24 notificationCondition];
              *buf = 138412546;
              *v50 = v19;
              *&v50[8] = 2112;
              *&v50[10] = v31;
              _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "Updating audio analysis notification settings for accessory: %@ with condition %@", buf, 0x16u);

              v11 = v40;
            }

            v32 = [(HUStatusAndNotificationsItemManager *)v27 _updateNotificationSettings:v24 notificationSettingsProvider:v22];
            [v41 na_safeAddObject:v32];

            self = v27;
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
    v35 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    v33 = [v35 mutableCopy];

    [v33 setNotificationCondition:v40];
    v36 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
    v37 = [v36 smartCameraNotificationCondition];
    [v33 setSmartCameraNotificationCondition:v37];

    v11 = v40;
    v34 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v33];
  }

  return v34;
}

- (id)updateCameraSmartNotificationCondition:(id)a3
{
  v4 = a3;
  v5 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v6 = [v5 mutableCopy];

  v7 = [(HUStatusAndNotificationsItemManager *)self notificationSettings];
  v8 = [v7 notificationCondition];
  [v6 setNotificationCondition:v8];

  [v6 setSmartCameraNotificationCondition:v4];
  v9 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v6];

  return v9;
}

- (BOOL)_isSourceItemThermostatLikeItem
{
  v3 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsThermostatServiceItem];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsHeaterCoolerServiceItem];
    v4 = v5 != 0;
  }

  return v4;
}

- (id)_sourceItemAsThermostatServiceItem
{
  objc_opt_class();
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v3 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  v4 = [v3 mediaProfileContainer];
  LOBYTE(v2) = [v2 isAudioAnalysisSupportedDevice:v4];

  return v2;
}

- (id)_updateConditionCollectionForAudioAnalysisNotification:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Condition collection is nil. Cannot update.", v11, 2u);
    }
  }

  v5 = [v3 conditions];
  v6 = [v5 na_filter:&__block_literal_global_199_0];

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

- (id)_updateNotificationSettings:(id)a3
{
  v4 = a3;
  v5 = [(HUStatusAndNotificationsItemManager *)self notificationSettingsProvider];
  v6 = [(HUStatusAndNotificationsItemManager *)self _updateNotificationSettings:v4 notificationSettingsProvider:v5];

  return v6;
}

- (id)_updateNotificationSettings:(id)a3 notificationSettingsProvider:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Updating notification settings to: %@ for object: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10 = [v8 hf_updateUserNotificationSettings:v7];
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
  v3 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsMediaAccessoryItem];
  v4 = v3;
  if (!v3)
  {
    if ([(HUStatusAndNotificationsItemManager *)self _isSourceItemThermostatLikeItem])
    {
      v11 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsThermostatServiceItem];
      v10 = v11;
      if (v11)
      {
        v12 = [v11 accessories];
        v13 = [v12 anyObject];
      }

      else
      {
        v12 = [(HUStatusAndNotificationsItemManager *)self _sourceItemAsHeaterCoolerServiceItem];
        v14 = [v12 accessories];
        v13 = [v14 anyObject];
      }

      if (_os_feature_enabled_impl())
      {
        v15 = [v13 home];
        if ([v15 hf_hasResidentCapableOfSupportingHomeActivityState])
        {
          v16 = [v13 supportsAdaptiveTemperatureAutomations];

          if (v16)
          {
            v7 = v13;
            if ([v7 conformsToProtocol:&unk_2825BD420])
            {
              v17 = v7;
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

    v10 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
    v7 = [v10 homeKitObject];
    if ([v7 conformsToProtocol:&unk_2825BD420])
    {
      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

    v9 = v18;
    goto LABEL_23;
  }

  v5 = [v3 accessories];
  v6 = [v5 anyObject];

  v7 = v6;
  if ([v7 conformsToProtocol:&unk_2825BD420])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v7;
LABEL_23:

  return v9;
}

- (BOOL)_isAutoClimateCapableThermostat
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  v4 = [v3 accessories];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_210];

  if (v5)
  {
    v6 = [v5 home];
    v7 = v6;
    if (v6 && [v6 hf_hasResidentCapableOfSupportingHomeActivityState])
    {
      if ([v5 supportsAdaptiveTemperatureAutomations])
      {
        v8 = 1;
      }

      else
      {
        v8 = [v5 supportsCleanEnergyAutomation];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  v2 = [(HUStatusAndNotificationsItemManager *)self notificationSettingsProvider];
  v3 = [v2 hf_userNotificationSettings];

  return v3;
}

- (id)homeStatusVisibleObject
{
  v2 = [(HUStatusAndNotificationsItemManager *)self serviceItem];
  v3 = [v2 homeKitObject];
  if ([v3 conformsToProtocol:&unk_28259DE80])
  {
    v4 = v3;
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
  v3 = [(HUStatusAndNotificationsItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

@end