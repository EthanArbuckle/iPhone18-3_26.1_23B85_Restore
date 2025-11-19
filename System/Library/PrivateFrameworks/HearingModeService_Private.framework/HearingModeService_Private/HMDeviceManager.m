@interface HMDeviceManager
+ (id)sharedInstance;
- (BOOL)_deviceUpdateRegionStatus:(id)a3;
- (HMDeviceManager)init;
- (id)_constructPMEConfigDataBytesForDevice:(id)a3 fromConfig:(id)a4;
- (id)availableDiagnosticRecords;
- (id)availableRecords;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_accessoryDiscoveryEnsureStarted;
- (void)_accessoryDiscoveryEnsureStopped;
- (void)_activate;
- (void)_activateAHPSConnectionForDevice:(id)a3;
- (void)_checkForOcclusionInDiagnosticRecord:(id)a3 forDevice:(id)a4;
- (void)_cloudServicesClientEnsureStarted;
- (void)_cloudServicesClientEnsureStopped;
- (void)_computeOcclusionResultFromFaultCountsInRecord:(id)a3 forDevice:(id)a4;
- (void)_continueDeviceConfigurationFlow:(id)a3 identifier:(id)a4 reply:(id)a5;
- (void)_deviceFound:(id)a3;
- (void)_deviceLost:(id)a3;
- (void)_deviceRescindHearingAssist:(id)a3;
- (void)_deviceRescindHearingProtectionPPE:(id)a3;
- (void)_deviceSetOffListeningModeAllowedIfNeeded:(id)a3;
- (void)_diagnosticDataReceived:(id)a3 identifier:(id)a4 isInternal:(BOOL)a5;
- (void)_distributedNotificationReceived:(id)a3;
- (void)_hearingAidConfigDataReceived:(id)a3 identifier:(id)a4;
- (void)_invalidate;
- (void)_invalidateAHPSConnectionForDevice:(id)a3;
- (void)_loadCloudRecordForDevice:(id)a3;
- (void)_modifyDeviceConfiguration:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)_multimodalContextMessageReceived:(id)a3 identifier:(id)a4;
- (void)_performActionsOnRecordChange:(id)a3;
- (void)_pmeConfigDataReceived:(id)a3 identifier:(id)a4;
- (void)_populateV1Struct:(id)a3 identifier:(id)a4 deviceRecord:(id)a5 hmSettingsStruct:(id *)a6;
- (void)_populateV2Struct:(id)a3 identifier:(id)a4 deviceRecord:(id)a5 hmSettingsStruct:(id *)a6;
- (void)_registerForHearingAccessibilitySettingsUpdate;
- (void)_registerForInternalDistributedNotification;
- (void)_registerForRegionStatusUpdates;
- (void)_resetFaultCountForDevice:(id)a3;
- (void)_retrieveHearingProtectionSettingsForDevice:(id)a3;
- (void)_saveCloudRecordForDevice:(id)a3 withConfig:(id)a4;
- (void)_sendConfigOverDeviceManager:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)_sendHAv2RegionStatus:(id)a3;
- (void)_sendHearingAidConfigOverAHPSConnection:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)_sendPMEConfigOverAAController:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)_setHearingProtectionEnabledForDevice:(id)a3 withConfig:(id)a4;
- (void)_submitHearingFeaturesMetricFor:(id)a3;
- (void)_throttleUpdatesForHearingAidConfig:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)_triggerDiagnosticCheckForIdentifier:(id)a3 completion:(id)a4;
- (void)_triggerHearingProtectionOcclusionNotificationIfNeeded:(id)a3;
- (void)_unregisterFromHearingAccessibilitySettingsUpdate;
- (void)_unregisterFromInternalDistributedNotification;
- (void)_unregisterFromRegionStatusUpdates;
- (void)_updateCloudRecords:(id)a3;
- (void)_updatePersonalAudioConfigForIdentifier:(id)a3;
- (void)activate;
- (void)fetchOcclusionResultForDeviceIdentifier:(id)a3 featureID:(int)a4 completion:(id)a5;
- (void)invalidate;
- (void)occlusionIndicationShownForDeviceAddress:(id)a3 featureID:(int)a4 type:(int)a5 action:(int)a6;
@end

@implementation HMDeviceManager

+ (id)sharedInstance
{
  if (sharedInstance_sOnce_1 != -1)
  {
    +[HMDeviceManager sharedInstance];
  }

  v3 = sharedInstance_sSelf_1;

  return v3;
}

- (id)availableRecords
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_deviceRecordMap copy];
  objc_sync_exit(v2);

  return v3;
}

uint64_t __33__HMDeviceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMDeviceManager);
  v1 = sharedInstance_sSelf_1;
  sharedInstance_sSelf_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)availableDiagnosticRecords
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_diagnosticRecordMap copy];
  objc_sync_exit(v2);

  return v3;
}

- (HMDeviceManager)init
{
  v6.receiver = self;
  v6.super_class = HMDeviceManager;
  v2 = [(HMDeviceManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMDeviceManager_activate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    v7 = v2;
    self->_activateCalled = 1;
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _activate];
    }

    [(HMDeviceManager *)self _accessoryDiscoveryEnsureStarted:v3];
    [(HMDeviceManager *)self _aaControllerEnsureStarted];
    [(HMDeviceManager *)self _cloudServicesClientEnsureStarted];
    [(HMDeviceManager *)self _registerForHearingAccessibilitySettingsUpdate];
    [(HMDeviceManager *)self _registerForRegionStatusUpdates];

    [(HMDeviceManager *)self _registerForInternalDistributedNotification];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMDeviceManager_invalidate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _invalidate];
  }

  [(HMDeviceManager *)self _accessoryDiscoveryEnsureStopped];
  [(HMDeviceManager *)self _aaControllerEnsureStopped];
  [(HMDeviceManager *)self _cloudServicesClientEnsureStopped];
  [(NSMutableDictionary *)self->_deviceRecordMap removeAllObjects];
  deviceRecordMap = self->_deviceRecordMap;
  self->_deviceRecordMap = 0;

  [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap removeAllObjects];
  deviceAHPSConnectionManagerMap = self->_deviceAHPSConnectionManagerMap;
  self->_deviceAHPSConnectionManagerMap = 0;

  [(NSMutableDictionary *)self->_diagnosticRecordMap removeAllObjects];
  diagnosticRecordMap = self->_diagnosticRecordMap;
  self->_diagnosticRecordMap = 0;

  [(HMDeviceManager *)self _unregisterFromHearingAccessibilitySettingsUpdate];
  [(HMDeviceManager *)self _unregisterFromRegionStatusUpdates];
  [(HMOcclusionNotification *)self->_occlusionNotification invalidateHearingProtectionOcclusionNotification];
  self->_activateCalled = 0;

  [(HMDeviceManager *)self _unregisterFromInternalDistributedNotification];
}

- (void)_modifyDeviceConfiguration:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v9];
  if (v11)
  {
    [(HMDeviceManager *)self _saveCloudRecordForDevice:v11 withConfig:v8];
    [v8 restoreConfigsFromCloudRecordIfNeeded:v11];
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = [v8 needsUpdateToPersonalAudioForDevice:v11];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __68__HMDeviceManager__modifyDeviceConfiguration_identifier_completion___block_invoke;
    v29[3] = &unk_2796F01F0;
    v34 = v35;
    v29[4] = self;
    v12 = v9;
    v30 = v12;
    v13 = v8;
    v31 = v13;
    v14 = v11;
    v32 = v14;
    v33 = v10;
    v15 = MEMORY[0x253095540](v29);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __68__HMDeviceManager__modifyDeviceConfiguration_identifier_completion___block_invoke_2;
    v24 = &unk_2796F0218;
    v25 = self;
    v16 = v13;
    v26 = v16;
    v27 = v12;
    v17 = v15;
    v28 = v17;
    [v16 setupConfigsForPPEIfNeeded:v14 completion:&v21];
    v18 = [HMSettingsTelemetry sharedInstance:v21];
    [v18 sendSettingsChanges:v16 record:v14];

    _Block_object_dispose(v35, 8);
  }

  else
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _modifyDeviceConfiguration:identifier:completion:];
    }

    v19 = *MEMORY[0x277CCA590];
    v20 = NSErrorF();
    if (v10)
    {
      (*(v10 + 2))(v10, v20);
    }
  }
}

uint64_t __68__HMDeviceManager__modifyDeviceConfiguration_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!v6)
  {
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      [*(a1 + 32) _updatePersonalAudioConfigForIdentifier:*(a1 + 40)];
    }

    else if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __68__HMDeviceManager__modifyDeviceConfiguration_identifier_completion___block_invoke_cold_1(a1);
    }
  }

  if ([*(a1 + 48) enableHearingProtection])
  {
    [*(a1 + 32) _setHearingProtectionEnabledForDevice:*(a1 + 56) withConfig:*(a1 + 48)];
  }

  v3 = *(a1 + 64);
  v4 = v6;
  if (v3)
  {
    v3 = (*(v3 + 16))(v3, v6);
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_continueDeviceConfigurationFlow:(id)a3 identifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke;
  v14[3] = &unk_2796F0268;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(HMDeviceManager *)self _sendConfigOverDeviceManager:v12 identifier:v11 completion:v14];
}

void __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke_2;
    v12[3] = &unk_2796F0268;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = *(a1 + 32);
    v9 = *(&v11 + 1);
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = v8;
    v13 = v11;
    v14 = v10;
    [v5 _sendPMEConfigOverAAController:v6 identifier:v7 completion:v12];
  }
}

void __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke_3;
    v8[3] = &unk_2796F0240;
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v5 _throttleUpdatesForHearingAidConfig:v6 identifier:v7 completion:v8];
  }
}

- (void)_triggerDiagnosticCheckForIdentifier:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap objectForKeyedSubscript:v11];
  if (!v7)
  {
    v8 = *MEMORY[0x277CCA590];
    v10 = v11;
    v9 = NSErrorF();
    if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _triggerDiagnosticCheckForIdentifier:completion:];
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else if (!v6)
    {
LABEL_7:

      goto LABEL_8;
    }

    v6[2](v6, v9);
    goto LABEL_7;
  }

LABEL_8:
  [v7 triggerOnDemandDiagnosticCheckWithCompletionHandler:{v6, v10}];
}

- (void)_submitHearingFeaturesMetricFor:(id)a3
{
  v35[16] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 hearingAssistCapability] == 1)
  {
    v34[0] = @"Amplification";
    v4 = [v3 amplification];
    v33 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &unk_286439CF0;
    }

    v35[0] = v5;
    v34[1] = @"Balance";
    v6 = [v3 balance];
    v32 = v6;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &unk_286439CF0;
    }

    v35[1] = v7;
    v34[2] = @"ConversationBoost";
    v8 = [v3 beamFormer];
    v31 = v8;
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &unk_286439CF0;
    }

    v35[2] = v9;
    v34[3] = @"HearingAidEnabled";
    v30 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v3, "hearingAidEnabled")}];
    v35[3] = v30;
    v34[4] = @"HearingAidEnrolled";
    v29 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v3, "hearingAssistEnrolled")}];
    v35[4] = v29;
    v34[5] = @"HearingAidRegionSupport";
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v3, "hearingAssistRegionStatus")}];
    v35[5] = v28;
    v34[6] = @"HearingAssistEnabled";
    v27 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v3, "hearingAssistEnabled")}];
    v35[6] = v27;
    v34[7] = @"HearingProtectionLSR";
    v26 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v3, "hearingProtectionEnabled")}];
    v35[7] = v26;
    v34[8] = @"HearingProtectionRegionSupport";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v3, "hearingProtectionRegionStatus")}];
    v35[8] = v25;
    v34[9] = @"HearingTestRegionSupport";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v3, "hearingTestRegionStatus")}];
    v35[9] = v10;
    v34[10] = @"MediaAssistEnabled";
    v11 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v3, "mediaAssistEnabled")}];
    v35[10] = v11;
    v34[11] = @"OffListeningMode";
    v12 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v3, "listeningModeOffAllowed")}];
    v35[11] = v12;
    v34[12] = @"OwnVoiceSlider";
    v13 = [v3 ownVoiceLevelGain];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_286439CF0;
    }

    v35[12] = v15;
    v34[13] = @"PID";
    v16 = MEMORY[0x277CCABB0];
    v17 = [v3 aaDevice];
    v18 = [v16 numberWithUnsignedInt:{objc_msgSend(v17, "productID")}];
    v35[13] = v18;
    v34[14] = @"SwipeControl";
    v19 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v3, "swipeGainEnabled")}];
    v35[14] = v19;
    v34[15] = @"Tone";
    v20 = [v3 tone];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &unk_286439CF0;
    }

    v35[15] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:16];
    CUMetricsLog();

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _submitHearingFeaturesMetricFor:v3];
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _submitHearingFeaturesMetricFor:v3];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryDiscoveryEnsureStarted
{
  v3 = self->_deviceManager;
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CEF810]);
    deviceManager = self->_deviceManager;
    self->_deviceManager = v4;

    [(AADeviceManager *)v4 setInternalServicesDaemon:self->_internalAAServicesDaemon];
    [(AADeviceManager *)v4 setDispatchQueue:self->_dispatchQueue];
    [(AADeviceManager *)v4 setInterruptionHandler:&__block_literal_global_360];
    [(AADeviceManager *)v4 setInvalidationHandler:&__block_literal_global_363];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_3;
    v9[3] = &unk_2796F0290;
    v9[4] = self;
    [(AADeviceManager *)v4 setDeviceFoundHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_4;
    v8[3] = &unk_2796F0290;
    v8[4] = self;
    [(AADeviceManager *)v4 setDeviceLostHandler:v8];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _accessoryDiscoveryEnsureStarted];
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_5;
    v6[3] = &unk_2796F02B8;
    v6[4] = self;
    v3 = v4;
    v7 = v3;
    [(AADeviceManager *)v3 activateWithCompletion:v6];
  }
}

void __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke()
{
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_cold_1();
  }
}

void __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_2()
{
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_2_cold_1();
  }
}

void __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_4_cold_1();
      v3 = v5;
    }
  }

  [*(a1 + 32) _deviceLost:v3];
}

void __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_5_cold_1();
    }

    [*(*(a1 + 32) + 40) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_5_cold_2(a1);
  }
}

- (void)_accessoryDiscoveryEnsureStopped
{
  deviceManager = self->_deviceManager;
  if (deviceManager)
  {
    [(AADeviceManager *)deviceManager invalidate];
    v4 = self->_deviceManager;
    self->_deviceManager = 0;
  }
}

- (void)_deviceFound:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v10 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v4];
    if (v5)
    {
      v6 = v5;
      if ([v5 updateWithAADevice:v10])
      {
        [v6 getSafetyInformation:{objc_msgSend(v10, "productID")}];
        [(HMDeviceManager *)self _performActionsOnRecordChange:v6];
      }
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277D12B88]);
      deviceRecordMap = self->_deviceRecordMap;
      if (!deviceRecordMap)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = self->_deviceRecordMap;
        self->_deviceRecordMap = v8;

        deviceRecordMap = self->_deviceRecordMap;
      }

      [(NSMutableDictionary *)deviceRecordMap setObject:v6 forKeyedSubscript:v4];
      [v6 updateWithAADevice:v10];
      [(HMDeviceManager *)self _retrieveHearingProtectionSettingsForDevice:v6];
      [(HMDeviceManager *)self _loadCloudRecordForDevice:v6];
      [v6 getSafetyInformation:{objc_msgSend(v10, "productID")}];
      [(HMDeviceManager *)self _activateAHPSConnectionForDevice:v6];
      [(HMDeviceManager *)self _performActionsOnRecordChange:v6];
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _deviceFound:];
      }
    }
  }

  else
  {
    [HMDeviceManager _deviceFound:];
  }
}

uint64_t __41__HMDeviceManager__sendHAv2RegionStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 90)
    {
      v6 = v3;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        __41__HMDeviceManager__sendHAv2RegionStatus___block_invoke_cold_1(a1);
        v4 = v6;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_performActionsOnRecordChange:(id)a3
{
  v6 = a3;
  [(HMDeviceManager *)self _deviceUpdateRegionStatus:v6];
  [(HMDeviceManager *)self _deviceSetOffListeningModeAllowedIfNeeded:v6];
  if ([v6 hearingAssistEnabled] == 1)
  {
    v4 = [v6 bluetoothUUID];
    [(HMDeviceManager *)self _updatePersonalAudioConfigForIdentifier:v4];
  }

  [(HMDeviceManager *)self _triggerHearingProtectionOcclusionNotificationIfNeeded:v6];
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _performActionsOnRecordChange:];
  }

  v5 = +[HMServiceDaemon sharedHMServiceDaemon];
  [v5 reportDeviceRecordChange:v6];

  [(HMDeviceManager *)self _sendHAv2RegionStatus:v6];
}

- (void)_deviceLost:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v9 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v4];
    if (v5)
    {
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _deviceLost:];
      }

      [(HMDeviceManager *)self _invalidateAHPSConnectionForDevice:v5];
      [(NSMutableDictionary *)self->_deviceRecordMap setObject:0 forKeyedSubscript:v4];
      v6 = +[HMServiceDaemon sharedHMServiceDaemon];
      [v6 reportDeviceRecordLost:v5];

      [(NSMutableDictionary *)self->_diagnosticRecordMap setObject:0 forKeyedSubscript:v4];
      v7 = *MEMORY[0x277CCA590];
      v8 = NSErrorF();
      [v5 invokePendingOcclusionCompletionsWithError:{v8, v4}];
      [(HMDeviceManager *)self _submitHearingFeaturesMetricFor:v5];
    }
  }

  else
  {
    [HMDeviceManager _deviceLost:];
  }
}

- (void)_sendConfigOverDeviceManager:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_deviceManager)
  {
    v11 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v9];
    if (v11)
    {
      if (([v8 needsUpdateToDeviceManagerForDevice:v11] & 1) == 0)
      {
        if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          [HMDeviceManager _sendConfigOverDeviceManager:identifier:completion:];
          if (!v10)
          {
            goto LABEL_28;
          }
        }

        else if (!v10)
        {
          goto LABEL_28;
        }

        v10[2](v10, 0);
        goto LABEL_28;
      }

      v12 = objc_alloc_init(MEMORY[0x277CEF808]);
      [v12 setEnableHearingAidGainSwipe:{objc_msgSend(v8, "enableSwipeGain")}];
      [v12 setEnableHearingAssist:{objc_msgSend(v8, "enableHearingAssist")}];
      [v12 setHearingAidToggle:{objc_msgSend(v8, "enableHearingAid")}];
      [v12 setHearingAidEnrolled:{objc_msgSend(v8, "enrollHearingAssist")}];
      if (_os_feature_enabled_impl())
      {
        [v12 setEnableHearingProtectionPPE:{objc_msgSend(v8, "enableHearingProtectionPPE")}];
      }

      v13 = [v8 selectedAudiogram];

      if (v13)
      {
        v14 = [v8 selectedAudiogram];
        v15 = [v14 startDate];
        [v12 setAudiogramEnrolledTimestamp:v15];
      }

      [v12 setListeningModeOffAllowed:{objc_msgSend(v8, "allowListeningModeOff")}];
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _sendConfigOverDeviceManager:identifier:completion:];
      }

      deviceManager = self->_deviceManager;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __70__HMDeviceManager__sendConfigOverDeviceManager_identifier_completion___block_invoke;
      v21[3] = &unk_2796F02E0;
      v22 = v12;
      v23 = v9;
      v24 = v10;
      v17 = v12;
      [(AADeviceManager *)deviceManager sendDeviceConfig:v17 identifier:v23 completion:v21];
    }

    else
    {
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _sendConfigOverDeviceManager:identifier:completion:];
      }

      v19 = *MEMORY[0x277CCA590];
      v20 = NSErrorF();
      if (v10)
      {
        (v10)[2](v10, v20);
      }
    }
  }

  else
  {
    if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _sendConfigOverDeviceManager:identifier:completion:];
    }

    v18 = *MEMORY[0x277CCA590];
    v11 = NSErrorF();
    if (v10)
    {
      (v10)[2](v10, v11);
    }
  }

LABEL_28:
}

uint64_t __70__HMDeviceManager__sendConfigOverDeviceManager_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 90)
    {
      if (gLogCategory_HMDeviceManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        __70__HMDeviceManager__sendConfigOverDeviceManager_identifier_completion___block_invoke_cold_1(a1);
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

- (void)_aaControllerEnsureStarted
{
  p_aaController = &self->_aaController;
  v4 = self->_aaController;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CEF7F8]);
    [v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_aaController, v5);
    [v5 setInvalidationHandler:&__block_literal_global_394];
    if (_os_feature_enabled_impl())
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_2;
      v13[3] = &unk_2796F0308;
      v14 = v5;
      v15 = self;
      [v14 setPmeConfigMessageHandler:v13];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_3;
    v10[3] = &unk_2796F0308;
    v6 = v5;
    v11 = v6;
    v12 = self;
    [v6 setMultimodalContextMessageHandler:v10];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _aaControllerEnsureStarted];
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_4;
    v7[3] = &unk_2796F02B8;
    v4 = v6;
    v8 = v4;
    v9 = self;
    [(AAController *)v4 activateWithCompletion:v7];
  }
}

void __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke()
{
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_cold_1();
  }
}

void __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[1])
  {
    v6 = a2;
    [v3 _pmeConfigDataReceived:a3 identifier:v6];
    [*(a1 + 40) _updatePersonalAudioConfigForIdentifier:v6];
  }
}

void *__45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[1])
  {
    return [result _multimodalContextMessageReceived:a3 identifier:a2];
  }

  return result;
}

uint64_t __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v8 = v3;
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_4_cold_1();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      goto LABEL_7;
    }

    if (gLogCategory_HMDeviceManager <= 30)
    {
      v8 = 0;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_4_cold_2();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_aaControllerEnsureStopped
{
  aaController = self->_aaController;
  if (aaController)
  {
    [(AAController *)aaController invalidate];
    v4 = self->_aaController;
    self->_aaController = 0;
  }
}

- (id)_constructPMEConfigDataBytesForDevice:(id)a3 fromConfig:(id)a4
{
  v5 = a4;
  v6 = [a3 configDataPME];
  v7 = v6;
  LODWORD(v93) = 0;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  if (v6)
  {
    [v6 getBytes:&v85 length:132];
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _constructPMEConfigDataBytesForDevice:fromConfig:];
  }

  LOBYTE(v85) = 2;
  if ([v5 enablePMEMedia])
  {
    if ([v5 enablePMEMedia] == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    BYTE3(v85) = v8;
  }

  if ([v5 enablePMEVoice])
  {
    if ([v5 enablePMEVoice] == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    BYTE2(v85) = v9;
  }

  if ([v5 enrollPMEVoice])
  {
    if ([v5 enrollPMEVoice] == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    BYTE1(v85) = v10;
  }

  v11 = [v5 mediaLossArrayLeft];

  if (v11)
  {
    v12 = [v5 mediaLossArrayLeft];
    v13 = [v12 objectAtIndexedSubscript:0];
    [v13 floatValue];
    DWORD1(v87) = v14;

    v15 = [v12 objectAtIndexedSubscript:1];
    [v15 floatValue];
    DWORD2(v87) = v16;

    v17 = [v12 objectAtIndexedSubscript:2];
    [v17 floatValue];
    HIDWORD(v87) = v18;

    v19 = [v12 objectAtIndexedSubscript:3];
    [v19 floatValue];
    LODWORD(v88) = v20;

    v21 = [v12 objectAtIndexedSubscript:4];
    [v21 floatValue];
    DWORD1(v88) = v22;

    v23 = [v12 objectAtIndexedSubscript:5];
    [v23 floatValue];
    DWORD2(v88) = v24;

    v25 = [v12 objectAtIndexedSubscript:6];
    [v25 floatValue];
    HIDWORD(v88) = v26;

    v27 = [v12 objectAtIndexedSubscript:7];
    [v27 floatValue];
    LODWORD(v89) = v28;
  }

  v29 = [v5 mediaLossArrayRight];

  if (v29)
  {
    v30 = [v5 mediaLossArrayRight];
    v31 = [v30 objectAtIndexedSubscript:0];
    [v31 floatValue];
    DWORD1(v91) = v32;

    v33 = [v30 objectAtIndexedSubscript:1];
    [v33 floatValue];
    DWORD2(v91) = v34;

    v35 = [v30 objectAtIndexedSubscript:2];
    [v35 floatValue];
    HIDWORD(v91) = v36;

    v37 = [v30 objectAtIndexedSubscript:3];
    [v37 floatValue];
    LODWORD(v92) = v38;

    v39 = [v30 objectAtIndexedSubscript:4];
    [v39 floatValue];
    DWORD1(v92) = v40;

    v41 = [v30 objectAtIndexedSubscript:5];
    [v41 floatValue];
    DWORD2(v92) = v42;

    v43 = [v30 objectAtIndexedSubscript:6];
    [v43 floatValue];
    HIDWORD(v92) = v44;

    v45 = [v30 objectAtIndexedSubscript:7];
    [v45 floatValue];
    LODWORD(v93) = v46;
  }

  v47 = [v5 voiceLossArrayLeft];

  if (v47)
  {
    v48 = [v5 voiceLossArrayLeft];
    v49 = [v48 objectAtIndexedSubscript:0];
    [v49 floatValue];
    DWORD1(v85) = v50;

    v51 = [v48 objectAtIndexedSubscript:1];
    [v51 floatValue];
    DWORD2(v85) = v52;

    v53 = [v48 objectAtIndexedSubscript:2];
    [v53 floatValue];
    HIDWORD(v85) = v54;

    v55 = [v48 objectAtIndexedSubscript:3];
    [v55 floatValue];
    LODWORD(v86) = v56;

    v57 = [v48 objectAtIndexedSubscript:4];
    [v57 floatValue];
    DWORD1(v86) = v58;

    v59 = [v48 objectAtIndexedSubscript:5];
    [v59 floatValue];
    DWORD2(v86) = v60;

    v61 = [v48 objectAtIndexedSubscript:6];
    [v61 floatValue];
    HIDWORD(v86) = v62;

    v63 = [v48 objectAtIndexedSubscript:7];
    [v63 floatValue];
    LODWORD(v87) = v64;
  }

  v65 = [v5 voiceLossArrayRight];

  if (v65)
  {
    v66 = [v5 voiceLossArrayRight];
    v67 = [v66 objectAtIndexedSubscript:0];
    [v67 floatValue];
    DWORD1(v89) = v68;

    v69 = [v66 objectAtIndexedSubscript:1];
    [v69 floatValue];
    DWORD2(v89) = v70;

    v71 = [v66 objectAtIndexedSubscript:2];
    [v71 floatValue];
    HIDWORD(v89) = v72;

    v73 = [v66 objectAtIndexedSubscript:3];
    [v73 floatValue];
    LODWORD(v90) = v74;

    v75 = [v66 objectAtIndexedSubscript:4];
    [v75 floatValue];
    DWORD1(v90) = v76;

    v77 = [v66 objectAtIndexedSubscript:5];
    [v77 floatValue];
    DWORD2(v90) = v78;

    v79 = [v66 objectAtIndexedSubscript:6];
    [v79 floatValue];
    HIDWORD(v90) = v80;

    v81 = [v66 objectAtIndexedSubscript:7];
    [v81 floatValue];
    LODWORD(v91) = v82;
  }

  v83 = [MEMORY[0x277CBEA90] dataWithBytes:&v85 length:132];

  return v83;
}

- (void)_pmeConfigDataReceived:(id)a3 identifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    if ([v7 updateWithPMEConfigData:v10])
    {
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _pmeConfigDataReceived:identifier:];
      }

      v9 = +[HMServiceDaemon sharedHMServiceDaemon];
      [v9 reportDeviceRecordChange:v8];
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _pmeConfigDataReceived:identifier:];
  }
}

- (void)_sendPMEConfigOverAAController:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_os_feature_enabled_impl())
  {
    v11 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v9];
    if (!v11)
    {
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v16 = *MEMORY[0x277CCA590];
      v14 = NSErrorF();
      if (v10)
      {
        v10[2](v10, v14);
      }

      goto LABEL_21;
    }

    if ([v8 needsUpdateToPMEConfigurationForDevice:v11])
    {
      [(HMDeviceManager *)self _aaControllerEnsureStarted];
      v12 = [(HMDeviceManager *)self _constructPMEConfigDataBytesForDevice:v11 fromConfig:v8];
      aaController = self->_aaController;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke;
      v17[3] = &unk_2796F0330;
      v18 = v12;
      v19 = v9;
      v20 = self;
      v21 = v10;
      v14 = v12;
      [(AAController *)aaController sendPMEConfigData:v14 destinationIdentifier:v19 completionHandler:v17];

LABEL_21:
      goto LABEL_22;
    }

    if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _sendPMEConfigOverAAController:identifier:completion:];
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    if (v10)
    {
LABEL_17:
      v10[2](v10, 0);
    }
  }

  else
  {
    if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _sendPMEConfigOverAAController:identifier:completion:];
    }

    v15 = *MEMORY[0x277CCA590];
    v11 = NSErrorF();
    if (v10)
    {
      v10[2](v10, v11);
    }
  }

LABEL_22:
}

uint64_t __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (!v3)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke_cold_2(a1);
    }

    [*(a1 + 48) _pmeConfigDataReceived:*(a1 + 32) identifier:*(a1 + 40)];
    goto LABEL_10;
  }

  v4 = v3;
  if (gLogCategory_HMDeviceManager <= 90)
  {
    if (gLogCategory_HMDeviceManager != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
    {
      __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke_cold_1(a1);
LABEL_10:
      v4 = v8;
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v8);
    v4 = v8;
  }

  return MEMORY[0x2821F96F8](v6, v4);
}

- (void)_activateAHPSConnectionForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 bluetoothUUID];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap objectForKeyedSubscript:v5];
    if (!v6)
    {
      v6 = [[HMDeviceAHPSConnectionManager alloc] initWithQueue:self->_dispatchQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke;
      v12[3] = &unk_2796F0358;
      v12[4] = self;
      [(HMDeviceAHPSConnectionManager *)v6 setSettingsUpdateHandler:v12];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke_2;
      v11[3] = &unk_2796F0380;
      v11[4] = self;
      [(HMDeviceAHPSConnectionManager *)v6 setHearingProtectionUpdateHandler:v11];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke_3;
      v10[3] = &unk_2796F0358;
      v10[4] = self;
      [(HMDeviceAHPSConnectionManager *)v6 setDiagnosticStatusUpdateHandler:v10];
      deviceAHPSConnectionManagerMap = self->_deviceAHPSConnectionManagerMap;
      if (!deviceAHPSConnectionManagerMap)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = self->_deviceAHPSConnectionManagerMap;
        self->_deviceAHPSConnectionManagerMap = v8;

        deviceAHPSConnectionManagerMap = self->_deviceAHPSConnectionManagerMap;
      }

      [(NSMutableDictionary *)deviceAHPSConnectionManagerMap setObject:v6 forKeyedSubscript:v5];
      [(HMDeviceAHPSConnectionManager *)v6 activateWithBluetoothDeviceUUID:v5];
    }
  }

  else
  {
    [HMDeviceManager _activateAHPSConnectionForDevice:];
  }
}

void __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke_cold_1(v5);
  }

  [*(a1 + 32) _hearingAidConfigDataReceived:v5 identifier:v6];
  [*(a1 + 32) _updatePersonalAudioConfigForIdentifier:v6];
}

- (void)_invalidateAHPSConnectionForDevice:(id)a3
{
  v6 = [a3 bluetoothUUID];
  v4 = [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap setObject:0 forKeyedSubscript:v6];
  }
}

- (void)_diagnosticDataReceived:(id)a3 identifier:(id)a4 isInternal:(BOOL)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_diagnosticRecordMap objectForKeyedSubscript:v8];
    if (!v10)
    {
      if (!self->_diagnosticRecordMap)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
        diagnosticRecordMap = self->_diagnosticRecordMap;
        self->_diagnosticRecordMap = v11;
      }

      v10 = [objc_alloc(MEMORY[0x277D12B80]) initWithHMDeviceRecord:v9 isNewPairing:0];
      [(NSMutableDictionary *)self->_diagnosticRecordMap setObject:v10 forKeyedSubscript:v8];
    }

    [v10 updateWithDiagnosticData:v14];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _diagnosticDataReceived:identifier:isInternal:];
    }

    v13 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v13 reportDiagnosticRecordChange:v10];

    if ([v9 cloudRecordLoaded])
    {
      [(HMDeviceManager *)self _checkForOcclusionInDiagnosticRecord:v10 forDevice:v9];
      if (!a5)
      {
        [v10 submitMetricsForOcclusionPolicy];
      }
    }

    else
    {
      [HMDeviceManager _diagnosticDataReceived:identifier:isInternal:];
    }
  }

  else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _diagnosticDataReceived:identifier:isInternal:];
  }
}

- (void)_hearingAidConfigDataReceived:(id)a3 identifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    if ([v7 updateWithHearingAidConfigData:v10])
    {
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _hearingAidConfigDataReceived:identifier:];
      }

      v9 = +[HMServiceDaemon sharedHMServiceDaemon];
      [v9 reportDeviceRecordChange:v8];
    }
  }

  else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _hearingAidConfigDataReceived:identifier:];
  }
}

- (void)_sendHearingAidConfigOverAHPSConnection:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap objectForKeyedSubscript:v9];
  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v9];
    if (!v12)
    {
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *MEMORY[0x277CCA590];
      v16 = NSErrorF();
      if (v10)
      {
        v10[2](v10, v16);
      }

      goto LABEL_27;
    }

    if ([v8 needsUpdateToAHPSConnectionManagerForDevice:v12])
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      [(HMDeviceManager *)self _populateV1Struct:v8 identifier:v9 deviceRecord:v12 hmSettingsStruct:v23];
      if (LOBYTE(v23[0]) < 2u)
      {
        v13 = 100;
      }

      else
      {
        [(HMDeviceManager *)self _populateV2Struct:v8 identifier:v9 deviceRecord:v12 hmSettingsStruct:v23];
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          [HMDeviceManager _sendHearingAidConfigOverAHPSConnection:v23 identifier:? completion:?];
        }

        v13 = 104;
      }

      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:v13];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __81__HMDeviceManager__sendHearingAidConfigOverAHPSConnection_identifier_completion___block_invoke;
      v18[3] = &unk_2796F0330;
      v19 = v9;
      v20 = self;
      v21 = v15;
      v22 = v10;
      v16 = v15;
      [v11 writeHMSettingsConfigsData:v16 completion:v18];

LABEL_27:
      goto LABEL_28;
    }

    if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _sendHearingAidConfigOverAHPSConnection:identifier:completion:];
      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v10)
    {
LABEL_21:
      v10[2](v10, 0);
    }
  }

  else
  {
    if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _sendHearingAidConfigOverAHPSConnection:identifier:completion:];
    }

    v14 = *MEMORY[0x277CCA590];
    v12 = NSErrorF();
    if (v10)
    {
      v10[2](v10, v12);
    }
  }

LABEL_28:
}

uint64_t __81__HMDeviceManager__sendHearingAidConfigOverAHPSConnection_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (!v3)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __81__HMDeviceManager__sendHearingAidConfigOverAHPSConnection_identifier_completion___block_invoke_cold_1(a1);
    }

    [*(a1 + 40) _hearingAidConfigDataReceived:*(a1 + 48) identifier:*(a1 + 32)];
    v3 = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v4 = (*(v4 + 16))(v4, v6);
    v3 = v6;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)_populateV2Struct:(id)a3 identifier:(id)a4 deviceRecord:(id)a5 hmSettingsStruct:(id *)a6
{
  v16 = a3;
  v9 = a4;
  v10 = [a5 ownVoiceLevelGain];
  [v10 floatValue];
  v12 = v11;

  v13 = [v16 ownVoiceLevelGain];

  if (v13)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV2Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    v14 = [v16 ownVoiceLevelGain];
    [v14 floatValue];
    v12 = v15;
  }

  a6->var1 = v12;
}

- (void)_populateV1Struct:(id)a3 identifier:(id)a4 deviceRecord:(id)a5 hmSettingsStruct:(id *)a6
{
  v64 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 configDataHearingAid];
  v12 = v11;
  if (v11)
  {
    [v11 getBytes:a6 length:100];
    a6->var0 = [v10 version];
LABEL_3:
    v13 = v64;
    goto LABEL_11;
  }

  if ([v10 version])
  {
    var0 = [v10 version];
  }

  else
  {
    var0 = 1;
  }

  v13 = v64;
  a6->var0 = var0;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1)
    {
LABEL_9:
      v62 = var0;
      LogPrintF();
      goto LABEL_3;
    }

    v15 = _LogCategory_Initialize();
    v13 = v64;
    if (v15)
    {
      var0 = a6->var0;
      goto LABEL_9;
    }
  }

LABEL_11:
  a6->var1 = 2;
  a6->var2 = 100;
  v16 = [v13 selectedAudiogram];

  if (v16)
  {
    v17 = +[HMHealthKitUtilities sharedInstance];
    v18 = [v64 selectedAudiogram];
    [v17 updateHMSettingsStruct:a6 fromAudiogram:v18];
  }

  if (gLogCategory_HMDeviceManager <= 30)
  {
    v19 = a6->var3.var0;
    v20 = a6->var4.var0;
    if (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize())
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }
  }

  v21 = [v10 amplification];
  [v21 floatValue];
  v23 = v22;

  v24 = [v64 amplification];

  if (v24)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    v25 = [v64 amplification];
    [v25 floatValue];
    v23 = v26;
  }

  v27 = [v10 balance];
  [v27 floatValue];
  v29 = v28;

  v30 = [v64 balance];

  if (v30)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    v31 = [v64 balance];
    [v31 floatValue];
    v29 = v32;
  }

  v33 = [v10 beamFormer];
  [v33 floatValue];
  v35 = v34;

  v36 = [v64 beamFormer];

  if (v36)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    v37 = [v64 beamFormer];
    [v37 floatValue];
    v35 = v38;
  }

  v39 = [v10 noiseSuppression];
  [v39 floatValue];
  v41 = v40;

  v42 = [v64 noiseSuppression];

  if (v42)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    v43 = [v64 noiseSuppression];
    [v43 floatValue];
    v41 = v44;
  }

  v45 = [v10 tone];
  [v45 floatValue];
  v47 = v46;

  v48 = [v64 tone];

  if (v48)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    v49 = [v64 tone];
    [v49 floatValue];
    v47 = v50;
  }

  v51 = v47 * 2.0 + -1.0;
  v52 = v23 * 2.0 + -1.0;
  v53 = v29 * 2.0 + -1.0;
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v54 = fmax(fmin((v52 - (v53 * 0.5)), 1.5), -1.5);
  v55 = fmax(fmin(((v53 * 0.5) + v52), 1.5), -1.5);
  v56 = fmaxf(fminf(v51, 1.0), -1.0);
  a6->var3.var8 = v54;
  a6->var3.var9 = v56;
  a6->var4.var8 = v55;
  a6->var4.var9 = v56;
  a6->var3.var10 = v35;
  a6->var3.var11 = v41;
  a6->var4.var10 = v35;
  a6->var4.var11 = v41;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1)
    {
LABEL_50:
      v63 = a6->var0;
      LogPrintF();
      goto LABEL_52;
    }

    if (_LogCategory_Initialize())
    {
      var8 = a6->var4.var8;
      v58 = a6->var3.var8;
      var9 = a6->var3.var9;
      var10 = a6->var3.var10;
      var11 = a6->var3.var11;
      goto LABEL_50;
    }
  }

LABEL_52:
}

- (void)_throttleUpdatesForHearingAidConfig:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  latestConfigsMap = self->_latestConfigsMap;
  if (!latestConfigsMap)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = self->_latestConfigsMap;
    self->_latestConfigsMap = v12;

    latestConfigsMap = self->_latestConfigsMap;
  }

  [(NSMutableDictionary *)latestConfigsMap setObject:v8 forKeyedSubscript:v9];
  v14 = [(NSMutableDictionary *)self->_throttleTimerMap objectForKeyedSubscript:v9];
  if (v14)
  {
    v15 = v14;
    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
    throttleTimerMap = self->_throttleTimerMap;
    if (!throttleTimerMap)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = self->_throttleTimerMap;
      self->_throttleTimerMap = v18;

      throttleTimerMap = self->_throttleTimerMap;
    }

    [(NSMutableDictionary *)throttleTimerMap setObject:v16 forKeyedSubscript:v9];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77__HMDeviceManager__throttleUpdatesForHearingAidConfig_identifier_completion___block_invoke;
    handler[3] = &unk_2796F0218;
    v15 = v16;
    v21 = v15;
    v22 = self;
    v23 = v9;
    v24 = v10;
    dispatch_source_set_event_handler(v15, handler);
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CUDispatchTimerSet();
    dispatch_activate(v15);
  }
}

void __77__HMDeviceManager__throttleUpdatesForHearingAidConfig_identifier_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = [*(*(a1 + 40) + 88) objectForKeyedSubscript:*(a1 + 48)];

  if (v3 == v4)
  {
    v5 = [*(*(a1 + 40) + 72) objectForKeyedSubscript:*(a1 + 48)];
    v8 = v5;
    if (v5)
    {
      [*(a1 + 40) _sendHearingAidConfigOverAHPSConnection:v5 identifier:*(a1 + 48) completion:*(a1 + 56)];
      v6 = 72;
    }

    else
    {
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        __77__HMDeviceManager__throttleUpdatesForHearingAidConfig_identifier_completion___block_invoke_cold_1(v2 + 2, v2);
      }

      v7 = [*(*(a1 + 40) + 88) objectForKeyedSubscript:*(a1 + 48)];
      dispatch_source_cancel(v7);

      v6 = 88;
    }

    [*(*(a1 + 40) + v6) setObject:0 forKeyedSubscript:*(a1 + 48)];
  }
}

- (void)_cloudServicesClientEnsureStarted
{
  p_cloudServicesClient = &self->_cloudServicesClient;
  v4 = self->_cloudServicesClient;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CEF7F0]);
    [v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_cloudServicesClient, v5);
    [v5 setInvalidationHandler:&__block_literal_global_452];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_2;
    v9[3] = &unk_2796F03A8;
    v9[4] = self;
    [v5 setHmDeviceCloudRecordUpdateHandler:v9];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_3;
    v6[3] = &unk_2796F02B8;
    v4 = v5;
    v7 = v4;
    v8 = self;
    [(AACloudServicesClient *)v4 activateWithCompletion:v6];
  }
}

void __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke()
{
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_cold_1();
  }
}

void __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_2_cold_1();
  }

  [*(a1 + 32) _updateCloudRecords:v3];
}

uint64_t __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 24))
  {
    if (v3)
    {
      v8 = v3;
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_3_cold_1();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 24);
      *(v5 + 24) = 0;

      goto LABEL_7;
    }

    if (gLogCategory_HMDeviceManager <= 30)
    {
      v8 = 0;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_3_cold_2();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_cloudServicesClientEnsureStopped
{
  if (self->_cloudServicesClient)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _cloudServicesClientEnsureStopped];
    }

    [(AACloudServicesClient *)self->_cloudServicesClient invalidate];
    cloudServicesClient = self->_cloudServicesClient;
    self->_cloudServicesClient = 0;
  }
}

- (void)_saveCloudRecordForDevice:(id)a3 withConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cloudRecord];
  if (!v8)
  {
    v9 = objc_alloc(MEMORY[0x277CEF830]);
    v10 = [v6 bluetoothAddress];
    v8 = [v9 initWithBluetoothAddress:v10];

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _saveCloudRecordForDevice:withConfig:];
    }
  }

  v11 = [v7 enableMediaAssist];
  v12 = v11 != 0;
  if (v11)
  {
    [v8 setMediaAssistEnabled:{objc_msgSend(v7, "enableMediaAssist")}];
    if ([v7 enableMediaAssist] == 2)
    {
      [v8 setPmeMediaEnabled:{objc_msgSend(v6, "pmeMediaEnabled")}];
      [v8 setPmeVoiceEnabled:{objc_msgSend(v6, "pmeVoiceEnabled")}];
    }
  }

  if ([v7 enableHearingAid] == 2)
  {
    [v8 setSwipeGainEnabled:{objc_msgSend(v6, "swipeGainEnabled")}];
    v12 = 1;
  }

  v13 = [v6 hearingAssistRegionStatus];
  if (v13 != [v8 haRegionStatus])
  {
    [v8 setHaRegionStatus:{objc_msgSend(v6, "hearingAssistRegionStatus")}];
    v12 = 1;
  }

  v14 = [v6 hearingAidV2RegionStatus];
  if (v14 != [v8 haRegionStatusV2])
  {
    [v8 setHaRegionStatusV2:{objc_msgSend(v6, "hearingAidV2RegionStatus")}];
    v12 = 1;
  }

  v15 = [v6 hearingProtectionPPERegionStatus];
  if (v15 != [v8 hpPPERegionStatus])
  {
    [v8 setHpPPERegionStatus:{objc_msgSend(v6, "hearingProtectionPPERegionStatus")}];
    v12 = 1;
  }

  v16 = [v6 hearingProtectionRegionStatus];
  if (v16 == [v8 hpRegionStatus])
  {
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    [v8 setHpRegionStatus:{objc_msgSend(v6, "hearingProtectionRegionStatus")}];
  }

  if ([v6 updateWithCloudRecordInfo:v8])
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _saveCloudRecordForDevice:withConfig:];
    }

    v17 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v17 reportDeviceRecordChange:v6];
  }

  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _saveCloudRecordForDevice:withConfig:];
  }

  cloudServicesClient = self->_cloudServicesClient;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__HMDeviceManager__saveCloudRecordForDevice_withConfig___block_invoke;
  v19[3] = &unk_2796F03D0;
  v20 = v8;
  [(AACloudServicesClient *)cloudServicesClient modifyHMDeviceCloudRecordInfo:v20 completion:v19];

LABEL_29:
}

uint64_t __56__HMDeviceManager__saveCloudRecordForDevice_withConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    v7 = v3;
    if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
    {
      v6 = *(a1 + 32);
      v3 = LogPrintF();
      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_loadCloudRecordForDevice:(id)a3
{
  v4 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  cloudServicesClient = self->_cloudServicesClient;
  v6 = [v4 bluetoothAddress];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke;
  v8[3] = &unk_2796F03F8;
  v7 = v4;
  v10 = self;
  v11 = v12;
  v9 = v7;
  [(AACloudServicesClient *)cloudServicesClient fetchHMDeviceCloudRecordInfoWithAddress:v6 completion:v8];

  _Block_object_dispose(v12, 8);
}

void __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (v5)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_1(a1);
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_2();
  }

  v6 = v18;
  if (!v18)
  {
    v7 = objc_alloc(MEMORY[0x277CEF830]);
    v8 = [*(a1 + 32) bluetoothAddress];
    v19 = [v7 initWithBluetoothAddress:v8];

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_3();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = v19;
  }

  v20 = v6;
  [*(a1 + 32) setCloudRecordLoaded:1];
  if ([*(a1 + 32) updateWithCloudRecordInfo:v20])
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_4((a1 + 32));
    }

    v9 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v9 reportDeviceRecordChange:*(a1 + 32)];
  }

  v10 = *(*(a1 + 40) + 56);
  v11 = [*(a1 + 32) bluetoothUUID];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    [v12 setIsNewPairing:*(*(*(a1 + 48) + 8) + 24)];
    [*(a1 + 40) _checkForOcclusionInDiagnosticRecord:v12 forDevice:*(a1 + 32)];
    [v12 submitMetricsForOcclusionPolicy];
  }

  else
  {
    if (!*(*(a1 + 40) + 56))
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = *(a1 + 40);
      v15 = *(v14 + 56);
      *(v14 + 56) = v13;
    }

    v12 = [objc_alloc(MEMORY[0x277D12B80]) initWithHMDeviceRecord:*(a1 + 32) isNewPairing:*(*(*(a1 + 48) + 8) + 24)];
    v16 = *(*(a1 + 40) + 56);
    v17 = [*(a1 + 32) bluetoothUUID];
    [v16 setObject:v12 forKeyedSubscript:v17];

    [v12 updateFaultCountsFromCloudRecord:v20];
    [*(a1 + 40) _computeOcclusionResultFromFaultCountsInRecord:v12 forDevice:*(a1 + 32)];
  }
}

- (void)_updateCloudRecords:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  deviceRecordMap = self->_deviceRecordMap;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HMDeviceManager__updateCloudRecords___block_invoke;
  v7[3] = &unk_2796F0420;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)deviceRecordMap enumerateKeysAndObjectsUsingBlock:v7];
}

void __39__HMDeviceManager__updateCloudRecords___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = [v9 bluetoothAddress];
        v11 = [v10 lowercaseString];
        v12 = [v4 bluetoothAddress];
        v13 = [v12 lowercaseString];
        v14 = v11;
        v15 = v13;
        v16 = v15;
        if (v14 == v15)
        {

LABEL_11:
          if (![v4 updateWithCloudRecordInfo:v9])
          {
            goto LABEL_18;
          }

          if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
          {
            __39__HMDeviceManager__updateCloudRecords___block_invoke_cold_1();
          }

          v10 = +[HMServiceDaemon sharedHMServiceDaemon];
          [v10 reportDeviceRecordChange:v4];
LABEL_17:

          goto LABEL_18;
        }

        if ((v14 != 0) == (v15 == 0))
        {

          goto LABEL_17;
        }

        v17 = [v14 isEqual:v15];

        if (v17)
        {
          goto LABEL_11;
        }

LABEL_18:
        ++v8;
      }

      while (v6 != v8);
      v18 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v6 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_registerForHearingAccessibilitySettingsUpdate
{
  v3 = [MEMORY[0x277D12DF8] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke;
  v4[3] = &unk_2796EFEF0;
  v4[4] = self;
  [v3 registerUpdateBlock:v4 forRetrieveSelector:sel_activeHearingProtectionEnabled withListener:self];
}

void __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke_2;
  block[3] = &unk_2796EFEF0;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke_3;
  v4[3] = &unk_2796F0420;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)_unregisterFromHearingAccessibilitySettingsUpdate
{
  v3 = [MEMORY[0x277D12DF8] sharedInstance];
  [v3 registerUpdateBlock:0 forRetrieveSelector:sel_activeHearingProtectionEnabled withListener:self];
}

- (void)_retrieveHearingProtectionSettingsForDevice:(id)a3
{
  v10 = a3;
  v4 = [MEMORY[0x277D12DF8] sharedInstance];
  v5 = [v10 bluetoothAddress];
  v6 = [v4 activeHearingProtectionEnabledForAddress:v5];

  if ([v10 updateWithHearingProtectionValue:v6])
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      v8 = v6;
      v9 = v10;
      LogPrintF();
    }

    v7 = [HMServiceDaemon sharedHMServiceDaemon:v8];
    [v7 reportDeviceRecordChange:v10];

    [(HMDeviceManager *)self _deviceSetOffListeningModeAllowedIfNeeded:v10];
  }
}

uint64_t __66__HMDeviceManager__checkForOcclusionInDiagnosticRecord_forDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    v5 = v2;
    if (gLogCategory_HMDeviceManager != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __66__HMDeviceManager__checkForOcclusionInDiagnosticRecord_forDevice___block_invoke_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)_computeOcclusionResultFromFaultCountsInRecord:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __76__HMDeviceManager__computeOcclusionResultFromFaultCountsInRecord_forDevice___block_invoke;
  v16 = &unk_2796EFEF0;
  v7 = v6;
  v17 = v7;
  v8 = MEMORY[0x253095540](&v13);
  if (([v5 isOcclusionDetectionSupported] & 1) == 0)
  {
    if (gLogCategory_HMDeviceManager > 90 || gLogCategory_HMDeviceManager == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_9;
    }

LABEL_15:
    LogPrintF();
    goto LABEL_9;
  }

  if (![v5 diagnosticMeasurementsCount])
  {
    if (gLogCategory_HMDeviceManager > 90 || gLogCategory_HMDeviceManager == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v9 = [v5 computeOcclusionResultForHearingProtection];
  v10 = [v5 computeOcclusionResultForHearingTest];
  LODWORD(v9) = [v7 setOcclusionResult:v9 forFeatureID:2];
  if ((v9 | [v7 setOcclusionResult:v10 forFeatureID:3]))
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      v12 = v7;
      LogPrintF();
    }

    v11 = [HMServiceDaemon sharedHMServiceDaemon:v12];
    [v11 reportDeviceRecordChange:v7];
  }

LABEL_9:
  v8[2](v8);
}

uint64_t __76__HMDeviceManager__computeOcclusionResultFromFaultCountsInRecord_forDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOcclusionResultReady:1];
  v2 = *(a1 + 32);

  return [v2 invokePendingOcclusionCompletionsWithError:0];
}

- (void)fetchOcclusionResultForDeviceIdentifier:(id)a3 featureID:(int)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HMDeviceManager_fetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke;
  v13[3] = &unk_2796F0468;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)occlusionIndicationShownForDeviceAddress:(id)a3 featureID:(int)a4 type:(int)a5 action:(int)a6
{
  v10 = a3;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__HMDeviceManager_occlusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke;
  v13[3] = &unk_2796F0490;
  v13[4] = self;
  v14 = v10;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v12 = v10;
  dispatch_async(dispatchQueue, v13);
}

void __83__HMDeviceManager__occlusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v7 = [v14 bluetoothAddress];
  v8 = [v7 lowercaseString];
  v9 = [*(a1 + 32) lowercaseString];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_6;
  }

  if ((v10 != 0) == (v11 == 0))
  {

    goto LABEL_8;
  }

  v13 = [v10 isEqual:v11];

  if (v13)
  {
LABEL_6:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }

LABEL_8:
}

- (void)_resetFaultCountForDevice:(id)a3
{
  v9 = a3;
  [v9 setOcclusionResult:0 forFeatureID:2];
  [v9 setOcclusionResult:0 forFeatureID:3];
  diagnosticRecordMap = self->_diagnosticRecordMap;
  v5 = [v9 bluetoothUUID];
  v6 = [(NSMutableDictionary *)diagnosticRecordMap objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 resetFaultCounts];
    v7 = [v6 getCloudRecordForCurrentFaultCount];
    if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _resetFaultCountForDevice:];
    }

    [v9 updateWithCloudRecordInfo:v7];
    [(AACloudServicesClient *)self->_cloudServicesClient modifyHMDeviceCloudRecordInfo:v7 completion:&__block_literal_global_496];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _resetFaultCountForDevice:];
    }

    v8 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v8 reportDeviceRecordChange:v9];

    goto LABEL_9;
  }

  if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    v7 = [v9 bluetoothUUID];
    LogPrintF();
LABEL_9:
  }
}

uint64_t __45__HMDeviceManager__resetFaultCountForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    v5 = v2;
    if (gLogCategory_HMDeviceManager != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __45__HMDeviceManager__resetFaultCountForDevice___block_invoke_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t __61__HMDeviceManager__deviceSetOffListeningModeAllowedIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 90)
    {
      v6 = v3;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        __61__HMDeviceManager__deviceSetOffListeningModeAllowedIfNeeded___block_invoke_cold_1(a1);
        v4 = v6;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_updatePersonalAudioConfigForIdentifier:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 bluetoothAddress];
      if (v7)
      {
        if ([v6 pmeMediaEnabled] && objc_msgSend(v6, "pmeVoiceEnabled"))
        {
          v38 = 0;
          v36 = 0u;
          v37 = 0u;
          if ([v6 hearingAssistEnabled] == 1)
          {
            v8 = [v6 earLossArrayLeft];
            v9 = *(&v37 + 1);
            *(&v37 + 1) = v8;

            v10 = [v6 earLossArrayRight];
            v11 = v38;
            v38 = v10;

            v12 = [v6 earLossArrayLeft];
            v13 = *(&v36 + 1);
            *(&v36 + 1) = v12;

            [v6 earLossArrayRight];
            *&v37 = v14 = v37;
          }

          else
          {
            v15 = [v6 pmeMediaLossDataLeft];
            v16 = HMEarLossDataToArray();
            v17 = *(&v37 + 1);
            *(&v37 + 1) = v16;

            v18 = [v6 pmeMediaLossDataRight];
            v19 = HMEarLossDataToArray();
            v20 = v38;
            v38 = v19;

            v21 = [v6 pmeVoiceLossDataLeft];
            v22 = HMEarLossDataToArray();
            v23 = *(&v36 + 1);
            *(&v36 + 1) = v22;

            v14 = [v6 pmeVoiceLossDataRight];
            v24 = HMEarLossDataToArray();
            v25 = v37;
            *&v37 = v24;
          }

          if (*(&v37 + 1) && v38)
          {
            BYTE1(v36) = [v6 pmeMediaEnabled] == 1;
            LOBYTE(v36) = [v6 pmeVoiceEnabled] == 1;
            if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
            {
              v26 = "no";
              if ((BYTE1(v36) | v36))
              {
                v26 = "yes";
              }

              v30 = v26;
              LogPrintF();
            }

            v27 = [MEMORY[0x277D3A1D0] sharedInstance];
            [v27 setPersonalMediaEnabled:(BYTE1(v36) | v36) & 1 forRouteUID:v7];

            if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
            {
              v28 = [*(&v37 + 1) firstObject];
              [v38 firstObject];
              v35 = v34 = v28;
              v32 = BYTE1(v36);
              v33 = v36;
              v31 = v7;
              LogPrintF();
            }

            v29 = [MEMORY[0x277D3A1D0] sharedInstance];
            [v29 updateConfiguration:&v36 forRouteID:v7];
          }

          else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          __destructor_8_s8_s16_s24_s32(&v36);
        }

        else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          [HMDeviceManager _updatePersonalAudioConfigForIdentifier:];
        }
      }

      else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _updatePersonalAudioConfigForIdentifier:];
      }
    }

    else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _updatePersonalAudioConfigForIdentifier:];
    }
  }

  else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _updatePersonalAudioConfigForIdentifier:];
  }
}

- (void)_deviceRescindHearingAssist:(id)a3
{
  v4 = a3;
  if ([v4 hearingAssistEnrolled] == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x277D12B78]);
    [v5 setEnableHearingAssist:2];
    [v5 setEnableMediaAssist:2];
    if ([v4 hearingAidEnabled])
    {
      [v5 setEnableHearingAid:2];
      [v5 setEnableSwipeGain:2];
    }

    if ([v4 mediaAssistEnabled] == 1)
    {
      [v5 setEnablePMEMedia:2];
      [v5 setEnablePMEVoice:2];
    }

    v6 = [v4 bluetoothUUID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__HMDeviceManager__deviceRescindHearingAssist___block_invoke;
    v8[3] = &unk_2796F03D0;
    v9 = v5;
    v7 = v5;
    [(HMDeviceManager *)self _modifyDeviceConfiguration:v7 identifier:v6 completion:v8];
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _deviceRescindHearingAssist:];
  }
}

uint64_t __47__HMDeviceManager__deviceRescindHearingAssist___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 30)
    {
      v6 = v3;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
LABEL_12:
        v3 = __47__HMDeviceManager__deviceRescindHearingAssist___block_invoke_cold_1(a1);
        v4 = v6;
      }
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30)
  {
    v6 = 0;
    if (gLogCategory_HMDeviceManager != -1)
    {
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_deviceRescindHearingProtectionPPE:(id)a3
{
  v4 = a3;
  if ([v4 hearingProtectionPPEEnabled] == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x277D12B78]);
    [v5 setEnableHearingProtectionPPE:2];
    v6 = [v4 bluetoothUUID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__HMDeviceManager__deviceRescindHearingProtectionPPE___block_invoke;
    v8[3] = &unk_2796F03D0;
    v9 = v5;
    v7 = v5;
    [(HMDeviceManager *)self _modifyDeviceConfiguration:v7 identifier:v6 completion:v8];
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _deviceRescindHearingProtectionPPE:];
  }
}

uint64_t __54__HMDeviceManager__deviceRescindHearingProtectionPPE___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 30)
    {
      v6 = v3;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
LABEL_12:
        v3 = __54__HMDeviceManager__deviceRescindHearingProtectionPPE___block_invoke_cold_1(a1);
        v4 = v6;
      }
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30)
  {
    v6 = 0;
    if (gLogCategory_HMDeviceManager != -1)
    {
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)_deviceUpdateRegionStatus:(id)a3
{
  v4 = a3;
  if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _deviceUpdateRegionStatus:v4];
  }

  if (_os_feature_enabled_impl() && (v5 = [v4 hearingAssistRegionStatus], +[HMHealthKitUtilities sharedInstance](HMHealthKitUtilities, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "getRegionSupportStatusForFeatureID:", *MEMORY[0x277CCC038]), v6, v5 != v7))
  {
    [v4 setHearingAssistRegionStatus:v7];
    if (v7 == 3)
    {
      [(HMDeviceManager *)self _deviceRescindHearingAssist:v4];
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v9 = [v4 hearingProtectionRegionStatus];
    v10 = +[HMHealthKitUtilities sharedInstance];
    v11 = [v10 getRegionSupportStatusForFeatureID:*MEMORY[0x277CCC048]];

    if (v9 != v11)
    {
      [v4 setHearingProtectionRegionStatus:v11];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [v4 hearingTestRegionStatus];
    v13 = +[HMHealthKitUtilities sharedInstance];
    v14 = [v13 getRegionSupportStatusForFeatureID:*MEMORY[0x277CCC058]];

    if (v12 != v14)
    {
      [v4 setHearingTestRegionStatus:v14];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v15 = [v4 hearingAidV2RegionStatus];
    v16 = +[HMHealthKitUtilities sharedInstance];
    v17 = [v16 getRegionSupportStatusForFeatureID:*MEMORY[0x277CCC040]];

    if (v15 != v17)
    {
      [v4 setHearingAidV2RegionStatus:v17];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v18 = [v4 hearingProtectionPPERegionStatus];
    v19 = +[HMHealthKitUtilities sharedInstance];
    v20 = [v19 getRegionSupportStatusForFeatureID:*MEMORY[0x277CCC050]];

    if (v18 != v20)
    {
      [v4 setHearingProtectionPPERegionStatus:v20];
      if (v20 == 3)
      {
        [(HMDeviceManager *)self _deviceRescindHearingProtectionPPE:v4];
      }

      goto LABEL_25;
    }
  }

  if (v8)
  {
LABEL_25:
    [(HMDeviceManager *)self _saveCloudRecordForDevice:v4 withConfig:0];
    v21 = 1;
    goto LABEL_26;
  }

  v21 = 0;
LABEL_26:

  return v21;
}

- (void)_registerForRegionStatusUpdates
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__HMDeviceManager__registerForRegionStatusUpdates__block_invoke;
  v3[3] = &unk_2796EFEF0;
  v3[4] = self;
  v2 = +[HMHealthKitUtilities sharedInstance];
  [v2 setFeatureStatusChangedHandler:v3];
}

uint64_t __50__HMDeviceManager__registerForRegionStatusUpdates__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HMDeviceManager__registerForRegionStatusUpdates__block_invoke_2;
  v4[3] = &unk_2796F0420;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __50__HMDeviceManager__registerForRegionStatusUpdates__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) _deviceUpdateRegionStatus:?])
  {
    v4 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v4 reportDeviceRecordChange:v5];
  }
}

- (void)_unregisterFromRegionStatusUpdates
{
  v2 = +[HMHealthKitUtilities sharedInstance];
  [v2 setFeatureStatusChangedHandler:0];
}

- (void)_distributedNotificationReceived:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDeviceManager__distributedNotificationReceived___block_invoke;
  v7[3] = &unk_2796EFEC8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __52__HMDeviceManager__distributedNotificationReceived___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) userInfo];
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __52__HMDeviceManager__distributedNotificationReceived___block_invoke_cold_1(v2);
    }

    v4 = [v3 objectForKeyedSubscript:@"msg-identifier"];
    v5 = [v3 objectForKeyedSubscript:@"msg-data"];
    v6 = [v3 objectForKeyedSubscript:@"bt-address"];
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__0;
    v38 = __Block_byref_object_dispose__0;
    v39 = 0;
    v7 = *(*(a1 + 40) + 48);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __52__HMDeviceManager__distributedNotificationReceived___block_invoke_2;
    v31[3] = &unk_2796F04B8;
    v8 = v6;
    v32 = v8;
    v33 = &v34;
    [v7 enumerateKeysAndObjectsUsingBlock:v31];
    if (!v35[5])
    {
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_38;
    }

    v9 = v4;
    v10 = v9;
    if (v9 == @"occlusion-test")
    {
      goto LABEL_9;
    }

    if (!v9)
    {
      goto LABEL_27;
    }

    v11 = [(__CFString *)v9 isEqual:@"occlusion-test"];

    if (v11)
    {
LABEL_9:
      v12 = *(a1 + 40);
      v13 = [v35[5] bluetoothUUID];
      [v12 _diagnosticDataReceived:v5 identifier:v13 isInternal:1];
    }

    v14 = v10;
    v15 = v14;
    if (v14 == @"reset-occlusion-counts")
    {
      goto LABEL_13;
    }

    if (v14)
    {
      v16 = [(__CFString *)v14 isEqual:@"reset-occlusion-counts"];

      if (!v16)
      {
LABEL_14:
        v17 = v15;
        v18 = v17;
        if (v17 == @"override-occlusion-result")
        {
          goto LABEL_17;
        }

        if (v17)
        {
          v19 = [(__CFString *)v17 isEqual:@"override-occlusion-result"];

          if (!v19)
          {
LABEL_33:
            v27 = v18;
            if (v27 == @"override-bud-to-source-context")
            {
LABEL_36:
              v29 = *(a1 + 40);
              v25 = [v35[5] bluetoothUUID];
              [v29 _multimodalContextMessageReceived:v5 identifier:v25];
              goto LABEL_37;
            }

            v25 = v27;
            if (v27)
            {
              v28 = [(__CFString *)v27 isEqual:@"override-bud-to-source-context"];

              if (!v28)
              {
LABEL_38:

                _Block_object_dispose(&v34, 8);
                goto LABEL_39;
              }

              goto LABEL_36;
            }

LABEL_37:

            goto LABEL_38;
          }

LABEL_17:
          v20 = [v3 objectForKeyedSubscript:@"feature-ID"];
          v21 = [v20 intValue];

          v22 = [v3 objectForKeyedSubscript:@"occlusion-result"];
          v23 = [v22 intValue];

          [v35[5] setOcclusionResult:v23 forFeatureID:v21];
          if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
          {
            v30 = v35[5];
            LogPrintF();
          }

          v26 = +[HMServiceDaemon sharedHMServiceDaemon];
          [v26 reportDeviceRecordChange:v35[5]];

          goto LABEL_33;
        }

LABEL_28:

        v25 = v10;
        goto LABEL_37;
      }

LABEL_13:
      [*(a1 + 40) _resetFaultCountForDevice:v35[5]];
      goto LABEL_14;
    }

LABEL_27:

    v24 = v10;
    goto LABEL_28;
  }

  if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __52__HMDeviceManager__distributedNotificationReceived___block_invoke_cold_2();
  }

LABEL_39:
}

void __52__HMDeviceManager__distributedNotificationReceived___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v7 = [v14 bluetoothAddress];
  v8 = [v7 lowercaseString];
  v9 = [*(a1 + 32) lowercaseString];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_6;
  }

  if ((v10 != 0) == (v11 == 0))
  {

    goto LABEL_8;
  }

  v13 = [v10 isEqual:v11];

  if (v13)
  {
LABEL_6:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }

LABEL_8:
}

- (void)_registerForInternalDistributedNotification
{
  if (!self->_distributedNotificationObserving && IsAppleInternalBuild())
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _registerForInternalDistributedNotification];
    }

    v3 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v3 addObserver:self selector:sel__distributedNotificationReceived_ name:@"com.apple.HearingModeService" object:0];
    self->_distributedNotificationObserving = 1;
  }
}

- (void)_unregisterFromInternalDistributedNotification
{
  if (self->_distributedNotificationObserving)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _unregisterFromInternalDistributedNotification];
    }

    v4 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v4 removeObserver:self name:@"com.apple.HearingModeService" object:0];
    self->_distributedNotificationObserving = 0;
  }
}

- (void)_sendHAv2RegionStatus:(id)a3
{
  v4 = a3;
  if (([v4 sharedRegionStatus] & 1) == 0 && objc_msgSend(v4, "hearingAidV2Capability") && objc_msgSend(v4, "hearingAidV2RegionStatus"))
  {
    [v4 setSharedRegionStatus:1];
    if (_os_feature_enabled_impl())
    {
      if ([v4 hearingAidV2Capability] == 1)
      {
        v5 = objc_alloc_init(MEMORY[0x277CEF808]);
        if ([v4 hearingAidV2RegionStatus] == 2)
        {
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }

        [v5 setHearingAidV2SourceRegionSupport:v6];
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          [v4 bluetoothUUID];
          v12 = v10 = v5;
          LogPrintF();
        }

        deviceManager = self->_deviceManager;
        v8 = [v4 bluetoothUUID];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __41__HMDeviceManager__sendHAv2RegionStatus___block_invoke;
        v13[3] = &unk_2796F02B8;
        v14 = v5;
        v15 = v4;
        v9 = v5;
        [(AADeviceManager *)deviceManager sendDeviceConfig:v9 identifier:v8 completion:v13];
      }

      else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        v11 = [v4 bluetoothUUID];
        LogPrintF();
      }
    }

    else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)_multimodalContextMessageReceived:(id)a3 identifier:(id)a4
{
  v18 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v18 length] >= 3)
  {
    v7 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:v6];
    if (v7)
    {
      if (v18 && (v8 = v18, v9 = [v18 bytes], *v9 == 2))
      {
        if (v9[1] == 1)
        {
          v10 = v9[2];
          if ([v7 currentNoiseLevel] != v10)
          {
            if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
            {
              v11 = [v7 bluetoothUUID];
              v12 = [v7 currentNoiseLevel];
              if (v12 > 2)
              {
                v13 = "?";
              }

              else
              {
                v13 = off_2796F04D8[v12];
              }

              if (v10 > 2)
              {
                v14 = "?";
              }

              else
              {
                v14 = off_2796F04D8[v10];
              }

              v16 = v13;
              v17 = v14;
              v15 = v11;
              LogPrintF();
            }

            [v7 setCurrentNoiseLevel:{v10, v15, v16, v17}];
          }

          [(HMDeviceManager *)self _triggerHearingProtectionOcclusionNotificationIfNeeded:v7];
          goto LABEL_30;
        }

        if (gLogCategory_HMDeviceManager > 30 || gLogCategory_HMDeviceManager == -1 && !_LogCategory_Initialize())
        {
LABEL_30:

          goto LABEL_31;
        }
      }

      else if (gLogCategory_HMDeviceManager > 30 || gLogCategory_HMDeviceManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_30;
      }
    }

    else if (gLogCategory_HMDeviceManager > 30 || gLogCategory_HMDeviceManager == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_30;
    }

    LogPrintF();
    goto LABEL_30;
  }

LABEL_31:
}

- (void)_setHearingProtectionEnabledForDevice:(id)a3 withConfig:(id)a4
{
  v11 = a3;
  v5 = a4;
  if ([v5 enableHearingProtection])
  {
    v6 = [v5 enableHearingProtection];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      v9 = [v11 bluetoothUUID];
      v10 = v6 == 1;
      LogPrintF();
    }

    v7 = [MEMORY[0x277D12DF8] sharedInstance];
    v8 = [v11 bluetoothAddress];
    [v7 setActiveHearingProtectionEnabled:v6 == 1 forAddress:v8];
  }
}

- (void)_checkForOcclusionInDiagnosticRecord:(id)a3 forDevice:(id)a4
{
  v16 = a3;
  v6 = a4;
  if ([v16 isOcclusionDetectionSupported])
  {
    v7 = [v16 measurementInvalidReason];
    if (v7)
    {
      if ([v16 isDeviceUsedFor3MonthsOrLess])
      {
        [v6 setOcclusionResult:3 forFeatureID:2];
        [v6 setOcclusionResult:3 forFeatureID:3];
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          v14 = [v6 bluetoothUUID];
          LogPrintF();
        }

        v11 = +[HMServiceDaemon sharedHMServiceDaemon];
        [v11 reportDeviceRecordChange:v6];
      }

      v12 = v7;
    }

    else
    {
      v8 = [v6 cloudRecord];
      v9 = [v16 updateFaultCountsFromCloudRecord:v8];

      if (v9)
      {
        v10 = [v16 getCloudRecordForCurrentFaultCount];
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          v14 = v10;
          LogPrintF();
        }

        [v6 updateWithCloudRecordInfo:{v10, v14}];
        [(AACloudServicesClient *)self->_cloudServicesClient modifyHMDeviceCloudRecordInfo:v10 completion:&__block_literal_global_479];
      }

      [(HMDeviceManager *)self _computeOcclusionResultFromFaultCountsInRecord:v16 forDevice:v6];
      v12 = [v16 getOnDemandRetestReason];
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      v14 = [v6 bluetoothUUID];
      v15 = v12;
      LogPrintF();
    }

    v13 = [v6 bluetoothUUID];
    [(HMDeviceManager *)self _triggerDiagnosticCheckForIdentifier:v13 completion:0];

LABEL_22:
  }
}

- (void)_triggerHearingProtectionOcclusionNotificationIfNeeded:(id)a3
{
  v26 = a3;
  v4 = [v26 hearingProtectionOcclusionResult];
  v5 = v26;
  if (!v4)
  {
    goto LABEL_28;
  }

  v4 = [v26 hearingProtectionCapability];
  v5 = v26;
  if (v4 != 1)
  {
    goto LABEL_28;
  }

  v4 = [v26 hearingProtectionRegionStatus];
  v5 = v26;
  if (v4 != 2)
  {
    goto LABEL_28;
  }

  v4 = [v26 currentNoiseLevel];
  v5 = v26;
  if (v4 != 2)
  {
    goto LABEL_28;
  }

  v6 = [v26 aaDevice];
  if ([v6 audioStreamState] == 1)
  {

    v5 = v26;
  }

  else
  {
    v7 = [v26 aaDevice];
    v8 = [v7 audioStreamState];

    v5 = v26;
    if (v8)
    {
      goto LABEL_28;
    }
  }

  v9 = [v5 aaDevice];
  if ([v9 primaryPlacement] == 1)
  {
    v10 = [v26 aaDevice];
    v11 = [v10 secondaryPlacement];

    v5 = v26;
    if (v11 == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v5 = v26;
  }

  v12 = [v5 aaDevice];
  v13 = [v12 placementMode];

  v5 = v26;
  if (v13 == 1)
  {
    goto LABEL_28;
  }

LABEL_13:
  v14 = [v5 aaDevice];
  if ([v14 listeningMode] != 4)
  {
    v15 = [v26 aaDevice];
    if ([v15 listeningMode] != 3)
    {
      v16 = [v26 aaDevice];
      v17 = [v16 listeningMode];

      v5 = v26;
      if (v17 != 2)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }
  }

  v5 = v26;
LABEL_18:
  if ([v5 hearingProtectionOcclusionResult] != 2)
  {
    v4 = [v26 hearingProtectionOcclusionResult];
    v5 = v26;
    if (v4 != 3)
    {
      goto LABEL_28;
    }

    v20 = [v26 bluetoothAddress];
    [(HMDeviceManager *)self _occlusionIndicationShownForDeviceAddress:v20 featureID:2 type:2 action:0];
    goto LABEL_27;
  }

  v18 = +[HMOcclusionNotification sharedInstance];
  occlusionNotification = self->_occlusionNotification;
  self->_occlusionNotification = v18;

  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    v25 = [(HMOcclusionNotification *)self->_occlusionNotification shouldShowHearingProtectionOcclusionNotification];
    LogPrintF();
  }

  v4 = [(HMOcclusionNotification *)self->_occlusionNotification shouldShowHearingProtectionOcclusionNotification];
  v5 = v26;
  if (v4)
  {
    v21 = [v26 aaDevice];
    v22 = [v21 coreBluetoothDevice];
    v23 = [v22 productID];

    v24 = self->_occlusionNotification;
    v20 = [v26 bluetoothAddress];
    [(HMOcclusionNotification *)v24 showHearingProtectionOcclusionNotification:v23 forAddress:v20];
LABEL_27:

    v5 = v26;
  }

LABEL_28:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_deviceSetOffListeningModeAllowedIfNeeded:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v5 = [v4 aaDevice];
    if ([v5 hideOffListeningModeCapability] == 2 && objc_msgSend(v4, "hearingProtectionEnabled") && !objc_msgSend(v5, "listeningModeOffAllowed"))
    {
      if ([v4 hearingProtectionEnabled] == 2)
      {
        v6 = 1;
      }

      else if ([v4 hearingProtectionEnabled] == 1)
      {
        v7 = [v5 listeningMode] == 1;
        if (([v5 listeningModeConfigs] | v7))
        {
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 0;
      }

      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        v8 = [v5 identifier];
        v9 = off_2796F0550[v6];
        v10 = [v5 listeningMode];
        if (v10 <= 4)
        {
          v11 = off_2796F0568[v10];
        }

        [v5 listeningModeConfigs];
        v16 = CUPrintFlags32();
        LogPrintF();
      }

      v12 = objc_alloc_init(MEMORY[0x277CEF808]);
      [v12 setListeningModeOffAllowed:v6];
      deviceManager = self->_deviceManager;
      v14 = [v5 identifier];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__HMDeviceManager__deviceSetOffListeningModeAllowedIfNeeded___block_invoke;
      v17[3] = &unk_2796F02B8;
      v18 = v12;
      v19 = v5;
      v15 = v12;
      [(AADeviceManager *)deviceManager sendDeviceConfig:v15 identifier:v14 completion:v17];
    }
  }
}

- (void)_submitHearingFeaturesMetricFor:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF();
}

- (void)_submitHearingFeaturesMetricFor:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF();
}

- (void)_deviceFound:.cold.2()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void __41__HMDeviceManager__sendHAv2RegionStatus___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) bluetoothUUID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  LogPrintF();
}

- (void)_deviceLost:.cold.2()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

uint64_t __70__HMDeviceManager__sendConfigOverDeviceManager_identifier_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return LogPrintF();
}

- (void)_pmeConfigDataReceived:identifier:.cold.1()
{
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  LogPrintF();
}

void __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUPrintNSDataHex();
  LogPrintF();
}

void __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke_cold_2(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  LogPrintF();
}

- (void)_activateAHPSConnectionForDevice:.cold.1()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_diagnosticDataReceived:identifier:isInternal:.cold.2()
{
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_0();
  }
}

- (void)_hearingProtectionValueReceived:identifier:.cold.1()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_populateV2Struct:identifier:deviceRecord:hmSettingsStruct:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = [v0 ownVoiceLevelGain];
  [v2 floatValue];
  OUTLINED_FUNCTION_2(v1);
  LogPrintF();
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v2 = [v0 amplification];
  [v2 floatValue];
  OUTLINED_FUNCTION_2(v1);
  LogPrintF();
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v2 = [v0 balance];
  [v2 floatValue];
  OUTLINED_FUNCTION_2(v1);
  LogPrintF();
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.5()
{
  OUTLINED_FUNCTION_3();
  v2 = [v0 beamFormer];
  [v2 floatValue];
  OUTLINED_FUNCTION_2(v1);
  LogPrintF();
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.6()
{
  OUTLINED_FUNCTION_3();
  v2 = [v0 noiseSuppression];
  [v2 floatValue];
  OUTLINED_FUNCTION_2(v1);
  LogPrintF();
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.7()
{
  OUTLINED_FUNCTION_3();
  v2 = [v0 tone];
  [v2 floatValue];
  OUTLINED_FUNCTION_2(v1);
  LogPrintF();
}

uint64_t __77__HMDeviceManager__throttleUpdatesForHearingAidConfig_identifier_completion___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return LogPrintF();
}

void __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) bluetoothAddress];
  LogPrintF();
}

- (void)_fetchOcclusionResultForDeviceIdentifier:featureID:completion:.cold.1()
{
  v0 = MEMORY[0x253095540]();
  LogPrintF();
}

- (uint64_t)_fetchOcclusionResultForDeviceIdentifier:(unsigned int)a1 featureID:(unsigned int)a2 completion:.cold.2(unsigned int a1, unsigned int a2)
{
  if (a1 <= 3)
  {
    v2 = off_2796F04F0[a1];
  }

  if (a2 <= 7)
  {
    v3 = off_2796F0510[a2];
  }

  return LogPrintF();
}

- (void)_fetchOcclusionResultForDeviceIdentifier:featureID:completion:.cold.4()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void __61__HMDeviceManager__deviceSetOffListeningModeAllowedIfNeeded___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) identifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  LogPrintF();
}

- (void)_deviceUpdateRegionStatus:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF();
}

void __52__HMDeviceManager__distributedNotificationReceived___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 userInfo];
  LogPrintF();
}

@end