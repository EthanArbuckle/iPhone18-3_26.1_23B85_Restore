@interface HUCameraSmartDetectionSettingsItem
- (BOOL)_isHiddenForCurrentsignificantEventConfiguration:(id)a3;
- (HUCameraSmartDetectionSettingsItem)initWithSignificantEventConfiguration:(id)a3 cameraProfiles:(id)a4 settingsContext:(unint64_t)a5;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUCameraSmartDetectionSettingsItem

- (HUCameraSmartDetectionSettingsItem)initWithSignificantEventConfiguration:(id)a3 cameraProfiles:(id)a4 settingsContext:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HUCameraSmartDetectionSettingsItem;
  v10 = [(HUCameraSmartDetectionSettingsItem *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    significantEventConfiguration = v10->_significantEventConfiguration;
    v10->_significantEventConfiguration = v11;

    v13 = [v9 copy];
    cameraProfiles = v10->_cameraProfiles;
    v10->_cameraProfiles = v13;

    v10->_settingsContext = a5;
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v42[10] = *MEMORY[0x277D85DE8];
  if (![(HUCameraSmartDetectionSettingsItem *)self settingsContext])
  {
    v7 = MEMORY[0x277D144E0];
    v5 = [(HUCameraSmartDetectionSettingsItem *)self cameraProfiles];
    v6 = [v7 configurationForCameraProfilesRecordingSettings:v5];
    goto LABEL_5;
  }

  if ([(HUCameraSmartDetectionSettingsItem *)self settingsContext]== 1)
  {
    v4 = MEMORY[0x277D144E0];
    v5 = [(HUCameraSmartDetectionSettingsItem *)self cameraProfiles];
    v6 = [v4 configurationForCameraProfilesNotificationSettings:v5];
LABEL_5:
    v8 = v6;

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = [(HUCameraSmartDetectionSettingsItem *)self _isHiddenForCurrentsignificantEventConfiguration:v8];
  v41[0] = *MEMORY[0x277D13F60];
  v39 = [(HUCameraSmartDetectionSettingsItem *)self significantEventConfiguration];
  v38 = [v39 localizedDescription];
  v42[0] = v38;
  v41[1] = *MEMORY[0x277D13F68];
  v37 = [(HUCameraSmartDetectionSettingsItem *)self significantEventConfiguration];
  v36 = [v37 localizationKey];
  v42[1] = v36;
  v41[2] = *MEMORY[0x277D14068];
  v10 = MEMORY[0x277CCABB0];
  [(HUCameraSmartDetectionSettingsItem *)self significantEventConfiguration];
  v35 = v40 = v8;
  [v8 containsConfiguration:?];
  v34 = [v10 numberWithInteger:HFPrimaryStateFromBOOL()];
  v42[2] = v34;
  v41[3] = *MEMORY[0x277D13FB8];
  v33 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v42[3] = v33;
  v41[4] = *MEMORY[0x277D13DA0];
  v32 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v42[4] = v32;
  v41[5] = *MEMORY[0x277D13DA8];
  v31 = [(HUCameraSmartDetectionSettingsItem *)self cameraProfiles];
  v42[5] = v31;
  v41[6] = @"HUCameraSettingResultKey";
  v11 = [(HUCameraSmartDetectionSettingsItem *)self significantEventConfiguration];
  v42[6] = v11;
  v41[7] = *MEMORY[0x277D13FF0];
  v12 = MEMORY[0x277CCABB0];
  v13 = [(HUCameraSmartDetectionSettingsItem *)self significantEventConfiguration];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "hash")}];
  v42[7] = v14;
  v41[8] = *MEMORY[0x277D13EA8];
  v15 = [(HUCameraSmartDetectionSettingsItem *)self settingsContext];
  v16 = MEMORY[0x277CCABB0];
  v17 = [(HUCameraSmartDetectionSettingsItem *)self cameraProfiles];
  v18 = [v17 anyObject];
  v19 = [v18 accessory];
  v20 = [v19 home];
  v21 = v20;
  if (v15 == 1)
  {
    v22 = [v20 areBulletinNotificationsSupported];
  }

  else
  {
    v22 = [v20 hf_currentUserIsAdministrator];
  }

  v23 = [v16 numberWithInt:v22 ^ 1u];
  v42[8] = v23;
  v41[9] = *MEMORY[0x277D13F10];
  v24 = [(HUCameraSmartDetectionSettingsItem *)self settingsContext];
  v25 = MEMORY[0x277CBEC38];
  if (v24 == 1)
  {
    v25 = MEMORY[0x277CBEC28];
  }

  v42[9] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:10];

  v27 = MEMORY[0x277D2C900];
  v28 = [MEMORY[0x277D14780] outcomeWithResults:v26];
  v29 = [v27 futureWithResult:v28];

  return v29;
}

- (BOOL)_isHiddenForCurrentsignificantEventConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraSmartDetectionSettingsItem *)self cameraProfiles];
  v6 = [v5 anyObject];
  v7 = [v6 accessory];
  v8 = [v7 home];
  v9 = [v8 personManagerSettings];

  v10 = [v9 isFaceClassificationEnabled];
  v17 = 1;
  if (([v4 eventTypes] & 1) == 0)
  {
    if ([v4 eventTypes])
    {
      if (-[HUCameraSmartDetectionSettingsItem settingsContext](self, "settingsContext") != 1 || !_os_feature_enabled_impl() || -[HUCameraSmartDetectionSettingsItem settingsContext](self, "settingsContext") != 1 || (-[HUCameraSmartDetectionSettingsItem significantEventConfiguration](self, "significantEventConfiguration"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 eventTypes], v11, v12 != 2) || (-[HUCameraSmartDetectionSettingsItem significantEventConfiguration](self, "significantEventConfiguration"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isFaceDetectionConfiguration"), v13, v10 & 1 | ((v14 & 1) == 0)) && (-[HUCameraSmartDetectionSettingsItem significantEventConfiguration](self, "significantEventConfiguration"), v15 = objc_claimAutoreleasedReturnValue(), v16 = (objc_msgSend(v15, "isFaceDetectionConfiguration") ^ 1) & v10, v15, (v16 & 1) == 0))
      {
        v17 = 0;
      }
    }
  }

  return v17;
}

@end