@interface HMDCameraRecordingSettingsControl
+ (NSArray)audioConfigurationsByPreferenceOrder;
+ (id)audioBitRateForCodecConfiguration:(id)configuration;
+ (id)audioCodecForCodecConfiguration:(id)configuration;
+ (id)h264ProfileForCodecConfiguration:(id)configuration;
+ (id)logCategory;
+ (id)videoCodecForCodecConfiguration:(id)configuration;
- (BOOL)_shouldReconfigureForChangedCharacteristic:(id)characteristic;
- (BOOL)isCameraConfiguredForRecording;
- (BOOL)isPrimaryResident;
- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)queue accessory:(id)accessory recordingManagementService:(id)service;
- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)queue accessory:(id)accessory recordingManagementService:(id)service featuresDataSource:(id)source notificationCenter:(id)center;
- (HMDCameraRecordingSettingsControlDelegate)delegate;
- (HMDCharacteristic)recordingActiveCharacteristic;
- (HMDCharacteristic)recordingSelectedConfigurationCharacteristic;
- (HMDCharacteristic)recordingSupportedAudioConfigurationCharacteristic;
- (HMDCharacteristic)recordingSupportedGeneralConfigurationCharacteristic;
- (HMDCharacteristic)recordingSupportedVideoConfigurationCharacteristic;
- (HMDHAPAccessory)accessory;
- (NSArray)videoConfigurationsByPreferenceOrder;
- (id)_dataValueForCharacteristicOfType:(id)type inResponses:(id)responses;
- (id)_generalRecordingConfigurationInResponses:(id)responses;
- (id)_isRecordingActiveValueInResponses:(id)responses;
- (id)_numberValueForCharacteristicOfType:(id)type inResponses:(id)responses;
- (id)_preferredAudioConfigurationOverride;
- (id)_preferredVideoConfigurationOverride;
- (id)_recordingAudioConfiguration;
- (id)_recordingGeneralConfiguration;
- (id)_recordingVideoConfiguration;
- (id)_selectedRecordingConfigurationInResponses:(id)responses;
- (id)_supportedAudioConfigurationInResponses:(id)responses;
- (id)_supportedVideoConfigurationInResponses:(id)responses;
- (id)characteristicsToMonitor;
- (id)logIdentifier;
- (void)_handleCurrentIsRecordingActive:(id)active selectedConfiguration:(id)configuration;
- (void)_handleSupportedConfigurationCharacteristicsReadResponses:(id)responses;
- (void)_invokePendingConfigureCompletionHandlersWithError:(id)error;
- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)configuration;
- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)configuration error:(id)error;
- (void)_readCameraRecordingSettings;
- (void)_readSupportedCameraRecordingConfiguration;
- (void)_setSelectedRecordingConfiguration:(id)configuration;
- (void)_updateSelectedRecordingConfiguration:(id)configuration;
- (void)_writeCameraRecordingSettings;
- (void)configureCameraRecordingSettings;
- (void)configureCameraRecordingSettingsWithCompletion:(id)completion;
- (void)dealloc;
- (void)enableCharacteristicNotifications;
- (void)handleAccessoryConnectedNotification:(id)notification;
- (void)handleAccessoryDisconnectedNotification:(id)notification;
- (void)handleAccessoryIsNotConfiguredError;
- (void)handleCharacteristicsChangedNotification:(id)notification;
- (void)handleCharacteristicsUpdatedNotification:(id)notification;
- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification;
- (void)reconfigureCameraRecordingSettingsWithReason:(id)reason;
- (void)start;
@end

@implementation HMDCameraRecordingSettingsControl

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDCameraRecordingSettingsControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  name = [accessory name];
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  instanceID = [recordingService instanceID];
  v8 = [v3 stringWithFormat:@"%@/%@", name, instanceID];

  return v8;
}

- (BOOL)isCameraConfiguredForRecording
{
  selfCopy = self;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSelectedConfiguration = [(HMDCameraRecordingSettingsControl *)selfCopy currentSelectedConfiguration];
  LOBYTE(selfCopy) = currentSelectedConfiguration != 0;

  return selfCopy;
}

- (void)_setSelectedRecordingConfiguration:(id)configuration
{
  v26 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  home = [accessory home];

  if (home)
  {
    recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
    v9 = [recordingService findCharacteristicWithType:@"00000209-0000-1000-8000-0026BB765291"];

    tlvData = [configurationCopy tlvData];
    v11 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v9 value:tlvData authorizationData:0 type:0];

    v23 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__HMDCameraRecordingSettingsControl__setSelectedRecordingConfiguration___block_invoke;
    v20[3] = &unk_278686658;
    v20[4] = self;
    v21 = v11;
    v22 = configurationCopy;
    v14 = v11;
    [home writeCharacteristicValues:v12 source:1070 biomeSource:0 identifier:uUID transport:0 qualityOfService:-1 withCompletionHandler:v20];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot set selected recording configuration because accessory/home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __72__HMDCameraRecordingSettingsControl__setSelectedRecordingConfiguration___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDCameraRecordingSettingsControl__setSelectedRecordingConfiguration___block_invoke_2;
  block[3] = &unk_278689550;
  v11 = v6;
  v12 = a1[5];
  v13 = v5;
  v14 = a1[4];
  v15 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __72__HMDCameraRecordingSettingsControl__setSelectedRecordingConfiguration___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) characteristic];
  v14 = 0;
  v4 = [v2 hmd_valueOfCharacteristic:v3 error:&v14];
  v5 = v14;

  v6 = *(a1 + 48);
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 56);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6 || !v4)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set the selected recording configuration: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) _invokePendingConfigureCompletionHandlersWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set the selected recording configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) _updateSelectedRecordingConfiguration:*(a1 + 64)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)configuration error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  errorCopy = error;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ((configurationCopy == 0) != (errorCopy != 0))
  {
    _HMFPreconditionFailure();
  }

  pendingConfigureCompletionHandlers = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  v10 = [pendingConfigureCompletionHandlers copy];

  pendingConfigureCompletionHandlers2 = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  [pendingConfigureCompletionHandlers2 removeAllObjects];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v18 + 1) + 8 * v16) + 16))(*(*(&v18 + 1) + 8 * v16));
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_invokePendingConfigureCompletionHandlersWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (errorCopy)
  {
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:0 error:errorCopy];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDCameraRecordingSettingsControl *)v5 _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:v6, v7];
  }
}

- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)configuration
{
  configurationCopy = configuration;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (configurationCopy)
  {
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:configurationCopy error:0];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDCameraRecordingSettingsControl *)v5 _numberValueForCharacteristicOfType:v6 inResponses:v7, v8];
  }
}

- (id)_numberValueForCharacteristicOfType:(id)type inResponses:(id)responses
{
  v29 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = responsesCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      request = [v14 request];
      characteristic = [request characteristic];
      type = [characteristic type];
      v18 = [type isEqualToString:typeCopy];

      if (v18)
      {
        value = [v14 value];
        objc_opt_class();
        v20 = (objc_opt_isKindOfClass() & 1) != 0 ? value : 0;
        v21 = v20;

        if (v21)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    value = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return value;
}

- (id)_dataValueForCharacteristicOfType:(id)type inResponses:(id)responses
{
  v29 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = responsesCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      request = [v14 request];
      characteristic = [request characteristic];
      type = [characteristic type];
      v18 = [type isEqualToString:typeCopy];

      if (v18)
      {
        value = [v14 value];
        objc_opt_class();
        v20 = (objc_opt_isKindOfClass() & 1) != 0 ? value : 0;
        v21 = v20;

        if (v21)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    value = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return value;
}

- (id)_supportedVideoConfigurationInResponses:(id)responses
{
  v18 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000206-0000-1000-8000-0026BB765291" inResponses:responsesCopy];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingSupportedVideoConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Failed to parse camera recording video configuration";
LABEL_7:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, v12, &v16, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Response missing supported video configuration";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_supportedAudioConfigurationInResponses:(id)responses
{
  v18 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000207-0000-1000-8000-0026BB765291" inResponses:responsesCopy];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingSupportedAudioConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Failed to parse camera recording audio configuration";
LABEL_7:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, v12, &v16, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Response missing supported audio configuration";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_generalRecordingConfigurationInResponses:(id)responses
{
  v18 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000205-0000-1000-8000-0026BB765291" inResponses:responsesCopy];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingGeneralConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Failed to parse camera recording general configuration";
LABEL_7:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, v12, &v16, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Response missing supported recording configuration";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_selectedRecordingConfigurationInResponses:(id)responses
{
  v18 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000209-0000-1000-8000-0026BB765291" inResponses:responsesCopy];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingSelectedConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Failed to parse camera recording selected configuration";
LABEL_7:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, v12, &v16, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Response missing selected camera recording configuration";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_isRecordingActiveValueInResponses:(id)responses
{
  v17 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _numberValueForCharacteristicOfType:*MEMORY[0x277CCF748] inResponses:responsesCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Response missing recording active", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_handleSupportedConfigurationCharacteristicsReadResponses:(id)responses
{
  v52 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _isRecordingActiveValueInResponses:responsesCopy];
  if ([v6 BOOLValue])
  {
    v7 = [(HMDCameraRecordingSettingsControl *)self _generalRecordingConfigurationInResponses:responsesCopy];
    [(HMDCameraRecordingSettingsControl *)self setSupportedRecordingConfiguration:v7];

    v8 = [(HMDCameraRecordingSettingsControl *)self _supportedVideoConfigurationInResponses:responsesCopy];
    [(HMDCameraRecordingSettingsControl *)self setSupportedVideoConfiguration:v8];

    v9 = [(HMDCameraRecordingSettingsControl *)self _supportedAudioConfigurationInResponses:responsesCopy];
    [(HMDCameraRecordingSettingsControl *)self setSupportedAudioConfiguration:v9];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      supportedRecordingConfiguration = [(HMDCameraRecordingSettingsControl *)selfCopy supportedRecordingConfiguration];
      v48 = 138543618;
      v49 = v13;
      v50 = 2112;
      v51 = supportedRecordingConfiguration;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating supported recording configuration to: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      supportedVideoConfiguration = [(HMDCameraRecordingSettingsControl *)v16 supportedVideoConfiguration];
      v48 = 138543618;
      v49 = v18;
      v50 = 2112;
      v51 = supportedVideoConfiguration;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating supported video configuration to: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = objc_autoreleasePoolPush();
    v21 = v16;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      supportedAudioConfiguration = [(HMDCameraRecordingSettingsControl *)v21 supportedAudioConfiguration];
      v48 = 138543618;
      v49 = v23;
      v50 = 2112;
      v51 = supportedAudioConfiguration;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating supported audio configuration to: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    _recordingGeneralConfiguration = [(HMDCameraRecordingSettingsControl *)v21 _recordingGeneralConfiguration];
    _recordingVideoConfiguration = [(HMDCameraRecordingSettingsControl *)v21 _recordingVideoConfiguration];
    _recordingAudioConfiguration = [(HMDCameraRecordingSettingsControl *)v21 _recordingAudioConfiguration];
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    v31 = v30;
    if (_recordingGeneralConfiguration && _recordingVideoConfiguration && _recordingAudioConfiguration)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v48 = 138543618;
        v49 = v32;
        v50 = 2112;
        v51 = _recordingGeneralConfiguration;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Setting selected general configuration: %@", &v48, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = objc_autoreleasePoolPush();
      v34 = v29;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v48 = 138543618;
        v49 = v36;
        v50 = 2112;
        v51 = _recordingVideoConfiguration;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Setting selected video configuration: %@", &v48, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v37 = objc_autoreleasePoolPush();
      v38 = v34;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        v48 = 138543618;
        v49 = v40;
        v50 = 2112;
        v51 = _recordingAudioConfiguration;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Setting selected audio configuration: %@", &v48, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v41 = [[HMDCameraRecordingSelectedConfiguration alloc] initWithGeneralConfiguration:_recordingGeneralConfiguration videoCodecConfiguration:_recordingVideoConfiguration audioCodecConfiguration:_recordingAudioConfiguration];
      [(HMDCameraRecordingSettingsControl *)v38 _setSelectedRecordingConfiguration:v41];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        v48 = 138543362;
        v49 = v46;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Skipping selected configuration write because of invalid selected config", &v48, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [(HMDCameraRecordingSettingsControl *)v29 _invokePendingConfigureCompletionHandlersWithError:v41];
    }
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      v48 = 138543618;
      v49 = v45;
      v50 = 2112;
      v51 = v6;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Recording active is disabled: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    [(HMDCameraRecordingSettingsControl *)selfCopy2 setCurrentSelectedConfiguration:0];
    _recordingGeneralConfiguration = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [(HMDCameraRecordingSettingsControl *)selfCopy2 _invokePendingConfigureCompletionHandlersWithError:_recordingGeneralConfiguration];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_readSupportedCameraRecordingConfiguration
{
  v17[4] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingActiveCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  v5 = [HMDCharacteristicRequest requestWithCharacteristic:recordingActiveCharacteristic];
  v17[0] = v5;
  recordingSupportedGeneralConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSupportedGeneralConfigurationCharacteristic];
  v7 = [HMDCharacteristicRequest requestWithCharacteristic:recordingSupportedGeneralConfigurationCharacteristic];
  v17[1] = v7;
  recordingSupportedAudioConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSupportedAudioConfigurationCharacteristic];
  v9 = [HMDCharacteristicRequest requestWithCharacteristic:recordingSupportedAudioConfigurationCharacteristic];
  v17[2] = v9;
  recordingSupportedVideoConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSupportedVideoConfigurationCharacteristic];
  v11 = [HMDCharacteristicRequest requestWithCharacteristic:recordingSupportedVideoConfigurationCharacteristic];
  v17[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  workQueue2 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HMDCameraRecordingSettingsControl__readSupportedCameraRecordingConfiguration__block_invoke;
  v16[3] = &unk_278682F48;
  v16[4] = self;
  [accessory readCharacteristicValues:v12 source:1070 queue:workQueue2 completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleCurrentIsRecordingActive:(id)active selectedConfiguration:(id)configuration
{
  v55[5] = *MEMORY[0x277D85DE8];
  activeCopy = active;
  configurationCopy = configuration;
  v55[0] = *MEMORY[0x277CCF748];
  v55[1] = @"00000205-0000-1000-8000-0026BB765291";
  v55[2] = @"00000207-0000-1000-8000-0026BB765291";
  v55[3] = @"00000206-0000-1000-8000-0026BB765291";
  v55[4] = @"00000209-0000-1000-8000-0026BB765291";
  [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:5];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = v49 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v46 + 1) + 8 * v12);
        recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
        v15 = [recordingService findCharacteristicWithType:v13];

        if (!v15)
        {
          v36 = objc_autoreleasePoolPush();
          selfCopy = self;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v39;
            v52 = 2112;
            v53 = v13;
            _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Recording service does not have required characteristic type: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          [(HMDCameraRecordingSettingsControl *)selfCopy setCurrentSelectedConfiguration:0];
          v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [(HMDCameraRecordingSettingsControl *)selfCopy _invokePendingConfigureCompletionHandlersWithError:v40];

          generalConfiguration2 = v8;
          goto LABEL_25;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if ([activeCopy BOOLValue])
  {
    currentSelectedConfiguration = [(HMDCameraRecordingSettingsControl *)self currentSelectedConfiguration];
    tlvData = [currentSelectedConfiguration tlvData];
    tlvData2 = [configurationCopy tlvData];
    v19 = [tlvData isEqualToData:tlvData2];

    if ((v19 & 1) == 0)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        generalConfiguration = [configurationCopy generalConfiguration];
        *buf = 138543618;
        v51 = v23;
        v52 = 2112;
        v53 = generalConfiguration;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating selected general configuration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy2;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        videoConfiguration = [configurationCopy videoConfiguration];
        *buf = 138543618;
        v51 = v28;
        v52 = 2112;
        v53 = videoConfiguration;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating selected video configuration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = objc_autoreleasePoolPush();
      v31 = v26;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        audioConfiguration = [configurationCopy audioConfiguration];
        *buf = 138543618;
        v51 = v33;
        v52 = 2112;
        v53 = audioConfiguration;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating selected audio configuration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      [(HMDCameraRecordingSettingsControl *)v31 _updateSelectedRecordingConfiguration:configurationCopy];
    }

    generalConfiguration2 = [configurationCopy generalConfiguration];
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:generalConfiguration2];
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v44;
      v52 = 2112;
      v53 = activeCopy;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Recording active is disabled: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    [(HMDCameraRecordingSettingsControl *)selfCopy3 setCurrentSelectedConfiguration:0];
    generalConfiguration2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [(HMDCameraRecordingSettingsControl *)selfCopy3 _invokePendingConfigureCompletionHandlersWithError:generalConfiguration2];
  }

LABEL_25:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_readCameraRecordingSettings
{
  v45 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingActiveCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  recordingSelectedConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSelectedConfigurationCharacteristic];
  v6 = recordingSelectedConfigurationCharacteristic;
  if (recordingActiveCharacteristic && recordingSelectedConfigurationCharacteristic)
  {
    value = [recordingActiveCharacteristic value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = value;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    value2 = [v6 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = value2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [(HAPTLVBase *)[HMDCameraRecordingSelectedConfiguration alloc] initWithTLVData:v12];
    }

    else
    {
      v13 = 0;
    }

    if ([(HMDCameraRecordingSettingsControl *)self canUseCachedCharacteristicValues]&& v9 && v13)
    {
      [(HMDCameraRecordingSettingsControl *)self _handleCurrentIsRecordingActive:v9 selectedConfiguration:v13];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        [(HMDCameraRecordingSettingsControl *)selfCopy canUseCachedCharacteristicValues];
        v25 = HMFBooleanToString();
        v26 = v25;
        v27 = @"<nil>";
        *buf = 138544130;
        v38 = v24;
        if (v9)
        {
          v28 = @"<not nil>";
        }

        else
        {
          v28 = @"<nil>";
        }

        if (v13)
        {
          v27 = @"<not nil>";
        }

        v39 = 2112;
        v40 = v25;
        v41 = 2112;
        v42 = v28;
        v43 = 2112;
        v44 = v27;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Reading from accessory because can use cached characteristic values is %@, recording active characteristic value is %@, and selected configuration characteristic value is %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
      v29 = [HMDCharacteristicRequest requestWithCharacteristic:recordingActiveCharacteristic];
      v36[0] = v29;
      v30 = [HMDCharacteristicRequest requestWithCharacteristic:v6];
      v36[1] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];

      accessory = [(HMDCameraRecordingSettingsControl *)selfCopy accessory];
      workQueue2 = [(HMDCameraRecordingSettingsControl *)selfCopy workQueue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __65__HMDCameraRecordingSettingsControl__readCameraRecordingSettings__block_invoke;
      v35[3] = &unk_278682F48;
      v35[4] = selfCopy;
      [accessory readCharacteristicValues:v31 source:1070 queue:workQueue2 completionHandler:v35];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = v17;
      v19 = @"<nil>";
      if (recordingActiveCharacteristic)
      {
        v20 = @"<not nil>";
      }

      else
      {
        v20 = @"<nil>";
      }

      *buf = 138543874;
      v38 = v17;
      v40 = v20;
      v39 = 2112;
      if (v6)
      {
        v19 = @"<not nil>";
      }

      v41 = 2112;
      v42 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Mandatory recording active characteristic (%@) or selected configuration characteristic (%@) was not found on recording service", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [(HMDCameraRecordingSettingsControl *)selfCopy2 _invokePendingConfigureCompletionHandlersWithError:v9];
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __65__HMDCameraRecordingSettingsControl__readCameraRecordingSettings__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _isRecordingActiveValueInResponses:v3];
  if (v4)
  {
    v5 = [*(a1 + 32) _selectedRecordingConfigurationInResponses:v3];
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v10;
        v37 = 2112;
        v38 = v4;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Read is recording active: %@", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v5 generalConfiguration];
        v35 = 138543618;
        v36 = v14;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Read selected general configuration: %@", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v5 videoConfiguration];
        v35 = 138543618;
        v36 = v19;
        v37 = 2112;
        v38 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Read selected video configuration: %@", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = objc_autoreleasePoolPush();
      v22 = *(a1 + 32);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v5 audioConfiguration];
        v35 = 138543618;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Read selected audio configuration: %@", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      [*(a1 + 32) setCanUseCachedCharacteristicValues:1];
      [*(a1 + 32) _handleCurrentIsRecordingActive:v4 selectedConfiguration:v5];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v31;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read selected camera recording configuration", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v32 = *(a1 + 32);
      v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:101];
      [v32 _invokePendingConfigureCompletionHandlersWithError:v33];

      v5 = 0;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to read is recording active", &v35, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:101];
    [v30 _invokePendingConfigureCompletionHandlersWithError:v5];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_updateSelectedRecordingConfiguration:(id)configuration
{
  v15 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingSettingsControl *)self setCurrentSelectedConfiguration:configurationCopy];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate to notify that recording settings are configured", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraRecordingSettingsControl *)selfCopy delegate];
  [delegate recordingSettingsControlDidConfigure:selfCopy];

  generalConfiguration = [configurationCopy generalConfiguration];
  [(HMDCameraRecordingSettingsControl *)selfCopy _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:generalConfiguration];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_writeCameraRecordingSettings
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSelectedConfiguration = [(HMDCameraRecordingSettingsControl *)self currentSelectedConfiguration];

  if (currentSelectedConfiguration)
  {
    currentSelectedConfiguration2 = [(HMDCameraRecordingSettingsControl *)self currentSelectedConfiguration];
    generalConfiguration = [currentSelectedConfiguration2 generalConfiguration];
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:generalConfiguration];

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring camera recording settings on primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDCameraRecordingSettingsControl *)selfCopy _readSupportedCameraRecordingConfiguration];
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)_shouldReconfigureForChangedCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  recordingActiveCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  v6 = [characteristicCopy isEqual:recordingActiveCharacteristic];

  if (v6)
  {
    v7 = 1;
  }

  else if ([(HMDCameraRecordingSettingsControl *)self isPrimaryResident])
  {
    v7 = 0;
  }

  else
  {
    recordingSelectedConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSelectedConfigurationCharacteristic];
    v7 = [characteristicCopy isEqual:recordingSelectedConfigurationCharacteristic];
  }

  return v7;
}

- (void)handleAccessoryIsNotConfiguredError
{
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingSettingsControl *)self reconfigureCameraRecordingSettingsWithReason:@"Handling accessory is not configured error"];
}

- (void)reconfigureCameraRecordingSettingsWithReason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = reasonCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Reconfiguring camera recording settings: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingSettingsControl *)selfCopy setCurrentSelectedConfiguration:0];
  [(HMDCameraRecordingSettingsControl *)selfCopy configureCameraRecordingSettings];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)configureCameraRecordingSettingsWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingConfigureCompletionHandlers = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  v7 = _Block_copy(completionCopy);
  [pendingConfigureCompletionHandlers addObject:v7];

  pendingConfigureCompletionHandlers2 = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  v9 = [pendingConfigureCompletionHandlers2 count];

  if (v9 < 2)
  {
    if ([(HMDCameraRecordingSettingsControl *)self isPrimaryResident])
    {
      [(HMDCameraRecordingSettingsControl *)self _writeCameraRecordingSettings];
    }

    else
    {
      [(HMDCameraRecordingSettingsControl *)self _readCameraRecordingSettings];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Deferring new configure request to be invoked when in-progress configure finishes", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)configureCameraRecordingSettings
{
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingSettingsControl *)self configureCameraRecordingSettingsWithCompletion:&__block_literal_global_194329];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    clientIdentifier = selfCopy->_clientIdentifier;
    *buf = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = clientIdentifier;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating recording settings control and disabling characteristic notifications with client identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_accessory);
  characteristicsToMonitor = [(HMDCameraRecordingSettingsControl *)selfCopy characteristicsToMonitor];
  [WeakRetained enableNotification:0 forCharacteristics:characteristicsToMonitor message:0 clientIdentifier:selfCopy->_clientIdentifier];

  v11.receiver = selfCopy;
  v11.super_class = HMDCameraRecordingSettingsControl;
  [(HMDCameraRecordingSettingsControl *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)enableCharacteristicNotifications
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    characteristicsToMonitor = [(HMDCameraRecordingSettingsControl *)selfCopy characteristicsToMonitor];
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = characteristicsToMonitor;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for characteristics: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  accessory = [(HMDCameraRecordingSettingsControl *)selfCopy accessory];
  characteristicsToMonitor2 = [(HMDCameraRecordingSettingsControl *)selfCopy characteristicsToMonitor];
  clientIdentifier = [(HMDCameraRecordingSettingsControl *)selfCopy clientIdentifier];
  [accessory enableNotification:1 forCharacteristics:characteristicsToMonitor2 message:0 clientIdentifier:clientIdentifier];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_recordingAudioConfiguration
{
  v91 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  _preferredAudioConfigurationOverride = [(HMDCameraRecordingSettingsControl *)self _preferredAudioConfigurationOverride];
  array = [MEMORY[0x277CBEB18] array];
  v6 = array;
  if (_preferredAudioConfigurationOverride)
  {
    [array addObject:_preferredAudioConfigurationOverride];
  }

  v61 = _preferredAudioConfigurationOverride;
  p_superclass = &OBJC_METACLASS___HMDRemoteDestinationFormatter.superclass;
  v8 = +[HMDCameraRecordingSettingsControl audioConfigurationsByPreferenceOrder];
  [v6 addObjectsFromArray:v8];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v60 = selfCopy;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v88 = v12;
    v89 = 2112;
    v90 = v6;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Preferred audio parameters: %@", buf, 0x16u);

    selfCopy = v60;
  }

  objc_autoreleasePoolPop(v9);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  supportedAudioConfiguration = [(HMDCameraRecordingSettingsControl *)selfCopy supportedAudioConfiguration];
  codecConfigurations = [supportedAudioConfiguration codecConfigurations];

  obj = codecConfigurations;
  v64 = [codecConfigurations countByEnumeratingWithState:&v78 objects:v86 count:16];
  v15 = 0;
  v16 = 0;
  if (v64)
  {
    v65 = *v79;
    do
    {
      v17 = 0;
      do
      {
        v18 = v16;
        if (*v79 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v78 + 1) + 8 * v17);
        v16 = [p_superclass + 484 audioCodecForCodecConfiguration:v19];

        v67 = v17;
        if (v16)
        {
          v20 = [p_superclass + 484 audioBitRateForCodecConfiguration:v19];

          if (v20)
          {
            v62 = v20;
            v63 = v16;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v59 = v19;
            parameters = [v19 parameters];
            audioSampleRates = [parameters audioSampleRates];

            v68 = audioSampleRates;
            v23 = [audioSampleRates countByEnumeratingWithState:&v74 objects:v85 count:16];
            if (v23)
            {
              v24 = v23;
              v69 = *v75;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v75 != v69)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v26 = *(*(&v74 + 1) + 8 * i);
                  v70 = 0u;
                  v71 = 0u;
                  v72 = 0u;
                  v73 = 0u;
                  v27 = v6;
                  v28 = v6;
                  v29 = [v28 countByEnumeratingWithState:&v70 objects:v84 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = *v71;
LABEL_19:
                    v32 = 0;
                    while (1)
                    {
                      if (*v71 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v70 + 1) + 8 * v32);
                      sampleRate = [v33 sampleRate];
                      if ([v26 type] == sampleRate)
                      {
                        break;
                      }

                      if (v30 == ++v32)
                      {
                        v30 = [v28 countByEnumeratingWithState:&v70 objects:v84 count:16];
                        if (v30)
                        {
                          goto LABEL_19;
                        }

                        goto LABEL_25;
                      }
                    }

                    v35 = v33;

                    if (!v35)
                    {
                      goto LABEL_27;
                    }

                    v51 = -[HMDCameraRecordingAudioSampleRate initWithSampleRate:]([HMDCameraRecordingAudioSampleRate alloc], "initWithSampleRate:", [v35 sampleRate]);
                    v52 = [HMDCameraRecordingAudioCodecParameters alloc];
                    v15 = v62;
                    v83 = v62;
                    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
                    v82 = v51;
                    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
                    bitRate = [v35 bitRate];
                    v56 = [(HMDCameraRecordingAudioCodecParameters *)v52 initWithChannelCount:&unk_283E73CD0 bitRateModes:v53 audioSampleRates:v54 maxAudioBitRate:bitRate];

                    v16 = v63;
                    v50 = [[HMDCameraRecordingAudioCodecConfiguration alloc] initWithAudioCodec:v63 codecParameters:v56];

                    v6 = v27;
                    goto LABEL_44;
                  }

LABEL_25:

LABEL_27:
                  v6 = v27;
                }

                v24 = [v68 countByEnumeratingWithState:&v74 objects:v85 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v36 = objc_autoreleasePoolPush();
            selfCopy = v60;
            v37 = v60;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v88 = v39;
              v89 = 2112;
              v90 = v59;
              _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping audio codec configuration %@ preferred audio configuration is not supported", buf, 0x16u);
            }

            v15 = v62;
            v16 = v63;
            p_superclass = (&OBJC_METACLASS___HMDRemoteDestinationFormatter + 8);
          }

          else
          {
            v43 = v19;
            v36 = objc_autoreleasePoolPush();
            v44 = selfCopy;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v45 = HMFGetLogIdentifier();
              *buf = 138543618;
              v88 = v45;
              v89 = 2112;
              v90 = v43;
              _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping audio codec configuration %@ bit rate mode is not supported", buf, 0x16u);
            }

            v15 = 0;
          }
        }

        else
        {
          v40 = v19;
          v36 = objc_autoreleasePoolPush();
          v41 = selfCopy;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v88 = v42;
            v89 = 2112;
            v90 = v40;
            _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping audio codec configuration %@ codec type is not supported", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v36);
        v17 = v67 + 1;
      }

      while (v67 + 1 != v64);
      v64 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v64);
  }

  v46 = objc_autoreleasePoolPush();
  v47 = selfCopy;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543362;
    v88 = v49;
    _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to select audio configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v46);
  v50 = 0;
LABEL_44:

  v57 = *MEMORY[0x277D85DE8];

  return v50;
}

- (HMDCharacteristic)recordingSelectedConfigurationCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:@"00000209-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingSupportedVideoConfigurationCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:@"00000206-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingSupportedAudioConfigurationCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:@"00000207-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingSupportedGeneralConfigurationCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:@"00000205-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingActiveCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:*MEMORY[0x277CCF748]];

  return v3;
}

- (BOOL)isPrimaryResident
{
  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  home = [accessory home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  return isCurrentDeviceConfirmedPrimaryResident;
}

- (id)characteristicsToMonitor
{
  array = [MEMORY[0x277CBEB18] array];
  recordingActiveCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  [array na_safeAddObject:recordingActiveCharacteristic];

  recordingSelectedConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSelectedConfigurationCharacteristic];
  [array na_safeAddObject:recordingSelectedConfigurationCharacteristic];

  v6 = [array copy];

  return v6;
}

- (id)_recordingVideoConfiguration
{
  v68 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  _preferredVideoConfigurationOverride = [(HMDCameraRecordingSettingsControl *)self _preferredVideoConfigurationOverride];
  array = [MEMORY[0x277CBEB18] array];
  if (_preferredVideoConfigurationOverride)
  {
    [array addObject:?];
  }

  videoConfigurationsByPreferenceOrder = [(HMDCameraRecordingSettingsControl *)self videoConfigurationsByPreferenceOrder];
  [array addObjectsFromArray:videoConfigurationsByPreferenceOrder];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = array;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Video parameters in order of preference: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v65 = __Block_byref_object_copy__194348;
  v66 = __Block_byref_object_dispose__194349;
  v67 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  supportedVideoConfiguration = [(HMDCameraRecordingSettingsControl *)selfCopy supportedVideoConfiguration];
  obj = [supportedVideoConfiguration codecConfigurations];

  v9 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *v53;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v52 + 1) + 8 * i);
        v15 = [HMDCameraRecordingSettingsControl videoCodecForCodecConfiguration:v14];

        v10 = v15;
        if (v15)
        {
          v16 = [HMDCameraRecordingSettingsControl h264ProfileForCodecConfiguration:v14];

          if (v16)
          {
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke;
            v51[3] = &unk_27867E888;
            v51[4] = v14;
            v51[5] = buf;
            v17 = [array na_firstObjectPassingTest:v51];
            if (v17)
            {

              v26 = [HMDCameraRecordingVideoAttributes alloc];
              resolution = [v17 resolution];
              obja = [(HMDCameraRecordingVideoAttributes *)v26 initWithResolution:resolution frameRate:*(*&buf[8] + 40)];
              v50 = -[HMDCameraRecordingH264Level initWithH264Level:]([HMDCameraRecordingH264Level alloc], "initWithH264Level:", [v17 h264Level]);
              v28 = [HMDCameraRecordingVideoCodecParameters alloc];
              v58 = v16;
              v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
              v57 = v50;
              v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
              bitRateByFrameRate = [v17 bitRateByFrameRate];
              v32 = [bitRateByFrameRate objectForKeyedSubscript:*(*&buf[8] + 40)];
              keyFrameInterval = [v17 keyFrameInterval];
              v34 = [(HMDCameraRecordingVideoCodecParameters *)v28 initWithProfiles:v29 levels:v30 bitRate:v32 iFrameInterval:keyFrameInterval];

              v35 = [HMDCameraRecordingVideoCodecConfiguration alloc];
              v56 = obja;
              v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
              v37 = [(HMDCameraRecordingVideoCodecConfiguration *)v35 initWithCodec:v10 codecParameters:v34 videoAttributes:v36];

              v11 = v16;
              goto LABEL_28;
            }

            v11 = v16;
          }

          else
          {
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              *v59 = 138543618;
              v60 = v25;
              v61 = 2112;
              v62 = v14;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Skipping video codec configuration %@, H264 profile is not supported", v59, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            v11 = 0;
          }
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *v59 = 138543618;
            v60 = v21;
            v61 = 2112;
            v62 = v14;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Skipping video codec configuration %@, codec type is not supported", v59, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = selfCopy;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = HMFGetLogIdentifier();
    supportedVideoConfiguration2 = [(HMDCameraRecordingSettingsControl *)v39 supportedVideoConfiguration];
    *v59 = 138543618;
    v60 = v41;
    v61 = 2112;
    v62 = supportedVideoConfiguration2;
    _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to select video configuration from supported video configuration: %@", v59, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  v17 = 0;
  v37 = 0;
LABEL_28:
  _Block_object_dispose(buf, 8);

  v43 = *MEMORY[0x277D85DE8];

  return v37;
}

uint64_t __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) parameters];
  v5 = [v4 levels];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_2;
  v14[3] = &unk_27867E810;
  v6 = v3;
  v15 = v6;
  LODWORD(v3) = [v5 na_any:v14];

  v7 = [*(a1 + 32) videoAttributes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_3;
  v11[3] = &unk_27867E860;
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v8;
  v9 = v6;
  LODWORD(v5) = [v7 na_any:v11];

  return v3 & v5;
}

BOOL __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 h264Level];
  v5 = [v3 h264Level];

  return v4 == v5;
}

uint64_t __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) resolution];
  if (v4 == [v3 resolution])
  {
    v5 = [*(a1 + 32) bitRateByFrameRate];
    v6 = [v5 allKeys];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_4;
    v11[3] = &unk_27867E838;
    v7 = v3;
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    v9 = [v6 na_any:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 32) frameRate];
  v6 = [v5 isEqualToNumber:v4];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  return v6;
}

- (id)_preferredAudioConfigurationOverride
{
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingConfigurationOverrides = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v5 = [recordingConfigurationOverrides hmf_numberForKey:@"audioBitRate"];

  recordingConfigurationOverrides2 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v7 = [recordingConfigurationOverrides2 hmf_numberForKey:@"audioSampleRate"];

  v8 = 0;
  if (v5 && v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Using overridden audio configuration with Bit rate: %@kbps, Sample rate: %@kHz", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = -[HMDCameraRecordingPreferredAudioConfiguration initWithSampleRate:bitRate:]([HMDCameraRecordingPreferredAudioConfiguration alloc], "initWithSampleRate:bitRate:", [v7 integerValue], v5);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_preferredVideoConfigurationOverride
{
  v45 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingConfigurationOverrides = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v5 = [recordingConfigurationOverrides hmf_numberForKey:@"keyFrameInterval"];

  recordingConfigurationOverrides2 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v7 = [recordingConfigurationOverrides2 hmf_numberForKey:@"frameRate"];

  recordingConfigurationOverrides3 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v9 = [recordingConfigurationOverrides3 hmf_numberForKey:@"imageWidth"];

  recordingConfigurationOverrides4 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v11 = [recordingConfigurationOverrides4 hmf_numberForKey:@"imageHeight"];

  recordingConfigurationOverrides5 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v13 = [recordingConfigurationOverrides5 hmf_numberForKey:@"videoBitrate"];

  recordingConfigurationOverrides6 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v15 = [recordingConfigurationOverrides6 hmf_numberForKey:@"h264Level"];

  v16 = 0;
  if (v5 && v7 && v9 && v11 && v13 && v15)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      HMDCameraRecordingH264LevelTypeAsString([v15 integerValue]);
      v21 = v28 = v17;
      *buf = 138544898;
      v32 = v20;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v5;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v11;
      v41 = 2112;
      v42 = v13;
      v43 = 2112;
      v44 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Using overridden video configuration with Frame rate: %@fps, Key frame interval: %@ms, Image width: %@px, Image height: %@px, Video bit rate: %@kbps, H264 Level is: %@", buf, 0x48u);

      v17 = v28;
    }

    objc_autoreleasePoolPop(v17);
    v22 = [[HMDCameraRecordingVideoAttributes alloc] initWithImageWidth:v9 imageHeight:v11 frameRate:v7];
    v23 = [HMDCameraRecordingPreferredVideoConfiguration alloc];
    resolution = [(HMDCameraRecordingVideoAttributes *)v22 resolution];
    v29 = v7;
    v30 = v13;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v16 = -[HMDCameraRecordingPreferredVideoConfiguration initWithResolution:bitRateByFrameRate:keyFrameInterval:h264Level:](v23, "initWithResolution:bitRateByFrameRate:keyFrameInterval:h264Level:", resolution, v25, v5, [v15 integerValue]);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_recordingGeneralConfiguration
{
  v86 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingConfigurationOverrides = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v5 = [recordingConfigurationOverrides hmf_numberForKey:@"prebufferLength"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_283E73CB8;
  }

  v7 = v6;
  supportedRecordingConfiguration = [(HMDCameraRecordingSettingsControl *)self supportedRecordingConfiguration];
  prebufferLength = [supportedRecordingConfiguration prebufferLength];

  if (!prebufferLength)
  {
    v46 = objc_autoreleasePoolPush();
    selfCopy = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v49;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Supported prebuffer length is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
    v50 = 0;
    goto LABEL_40;
  }

  if ([v7 compare:prebufferLength] == 1)
  {
    v10 = prebufferLength;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138544130;
    v79 = v15;
    v80 = 2112;
    v81 = v11;
    v82 = 2112;
    v83 = v7;
    v84 = 2112;
    v85 = prebufferLength;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Selecting prebuffer length of %@ because preferred length is %@ and supported length is %@", buf, 0x2Au);
  }

  v66 = v11;
  v67 = prebufferLength;
  v68 = v7;
  v69 = v5;

  objc_autoreleasePoolPop(v12);
  supportedRecordingConfiguration2 = [(HMDCameraRecordingSettingsControl *)selfCopy2 supportedRecordingConfiguration];
  eventTriggerOptions = [supportedRecordingConfiguration2 eventTriggerOptions];

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy2;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = HMDCameraRecordingEventTriggerOptionsAsString(eventTriggerOptions);
    *buf = 138543618;
    v79 = v21;
    v80 = 2112;
    v81 = v22;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Selecting event trigger options of %@", buf, 0x16u);
  }

  v64 = eventTriggerOptions;

  objc_autoreleasePoolPop(v18);
  recordingConfigurationOverrides2 = [(HMDCameraRecordingSettingsControl *)v19 recordingConfigurationOverrides];
  v24 = [recordingConfigurationOverrides2 hmf_numberForKey:@"fragmentLength"];

  v65 = v24;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = &unk_283E73CB8;
  }

  v71 = v25;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  supportedRecordingConfiguration3 = [(HMDCameraRecordingSettingsControl *)v19 supportedRecordingConfiguration];
  mediaContainerConfigurations = [supportedRecordingConfiguration3 mediaContainerConfigurations];

  obj = mediaContainerConfigurations;
  v28 = [mediaContainerConfigurations countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (!v28)
  {
LABEL_30:

LABEL_36:
    v58 = objc_autoreleasePoolPush();
    v59 = v19;
    v60 = HMFGetOSLogHandle();
    v7 = v68;
    v5 = v69;
    v57 = v66;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v61;
      _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to select general configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v58);
    v50 = 0;
    goto LABEL_39;
  }

  v29 = v28;
  v30 = *v73;
LABEL_17:
  v31 = 0;
  v32 = obj;
  while (1)
  {
    if (*v73 != v30)
    {
      objc_enumerationMutation(v32);
    }

    v33 = *(*(&v72 + 1) + 8 * v31);
    container = [v33 container];
    type = [container type];

    if (!type)
    {
      break;
    }

    v36 = objc_autoreleasePoolPush();
    v37 = v19;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v79 = v39;
      v80 = 2112;
      v81 = v33;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping container configuration: %@ unsupported container format", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
LABEL_28:
    if (v29 == ++v31)
    {
      v29 = [v32 countByEnumeratingWithState:&v72 objects:v77 count:16];
      if (v29)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  parameters = [v33 parameters];
  fragmentLength = [parameters fragmentLength];

  if ([v71 compare:fragmentLength] == 1)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v19;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543874;
      v79 = v45;
      v80 = 2112;
      v81 = v33;
      v82 = 2112;
      v83 = v71;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Skipping container configuration: %@, requested fragment length is %@", buf, 0x20u);

      v32 = obj;
    }

    objc_autoreleasePoolPop(v42);
    goto LABEL_28;
  }

  v51 = [[HMDCameraRecordingMediaContainerParameters alloc] initWithFragmentLength:v71];
  v52 = [HMDCameraRecordingMediaContainerConfiguration alloc];
  container2 = [v33 container];
  v54 = [(HMDCameraRecordingMediaContainerConfiguration *)v52 initWithMediaContainer:container2 containerParameters:v51];

  if (!v54)
  {
    goto LABEL_36;
  }

  v55 = [HMDCameraRecordingGeneralConfiguration alloc];
  v76 = v54;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v57 = v66;
  v50 = [(HMDCameraRecordingGeneralConfiguration *)v55 initWithPrebufferLength:v66 eventTriggerOptions:v64 mediaContainerConfigurations:v56];

  v7 = v68;
  v5 = v69;
LABEL_39:
  prebufferLength = v67;

LABEL_40:
  v62 = *MEMORY[0x277D85DE8];

  return v50;
}

- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__HMDCameraRecordingSettingsControl_handleHomePersonManagerSettingsDidChangeNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __90__HMDCameraRecordingSettingsControl_handleHomePersonManagerSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isPrimaryResident])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 40) name];
      v10 = 138543618;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) name];
    [v7 reconfigureCameraRecordingSettingsWithReason:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDCameraRecordingSettingsControl_handleCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __78__HMDCameraRecordingSettingsControl_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HMDCameraRecordingSettingsControl_handleCharacteristicsChangedNotification___block_invoke_2;
  v12[3] = &unk_278687EB0;
  v12[4] = *(a1 + 40);
  if ([v3 na_any:v12])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) name];
      *buf = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) name];
    [v9 reconfigureCameraRecordingSettingsWithReason:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicsUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDCameraRecordingSettingsControl_handleCharacteristicsUpdatedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __78__HMDCameraRecordingSettingsControl_handleCharacteristicsUpdatedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) enableCharacteristicNotifications];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) name];
  [v7 reconfigureCameraRecordingSettingsWithReason:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryConnectedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HMDCameraRecordingSettingsControl_handleAccessoryConnectedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __74__HMDCameraRecordingSettingsControl_handleAccessoryConnectedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) configureCameraRecordingSettings];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleAccessoryDisconnectedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDCameraRecordingSettingsControl_handleAccessoryDisconnectedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __77__HMDCameraRecordingSettingsControl_handleAccessoryDisconnectedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@ by resetting current selected configuration", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setCanUseCachedCharacteristicValues:0];
  result = [*(a1 + 32) setCurrentSelectedConfiguration:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)start
{
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting camera recording settings control", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  accessory = [(HMDCameraRecordingSettingsControl *)selfCopy accessory];
  if (!accessory)
  {
    v21 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v27;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Not starting camera recording settings control because accessory reference is nil", &v29, 0xCu);
    }

    goto LABEL_12;
  }

  notificationCenter = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleAccessoryConnectedNotification_ name:@"HMDAccessoryConnectedNotification" object:accessory];

  notificationCenter2 = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleAccessoryDisconnectedNotification_ name:@"HMDAccessoryDisconnectedNotification" object:accessory];

  notificationCenter3 = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleCharacteristicsUpdatedNotification_ name:@"kHMDNotificationCharacteristicsUpdated" object:accessory];

  notificationCenter4 = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];

  notificationCenter5 = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  home = [accessory home];
  [notificationCenter5 addObserver:selfCopy selector:sel_handleHomePersonManagerSettingsDidChangeNotification_ name:@"HMDHomePersonManagerSettingsDidChangeNotification" object:home];

  [(HMDCameraRecordingSettingsControl *)selfCopy enableCharacteristicNotifications];
  [(HMDCameraRecordingSettingsControl *)selfCopy configureCameraRecordingSettings];
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v16 = [mEMORY[0x277D0F8D0] preferenceForKey:@"recordingConfigurationOverrides"];
  value = [v16 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = value;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  [(HMDCameraRecordingSettingsControl *)selfCopy setRecordingConfigurationOverrides:v19];
  recordingConfigurationOverrides = [(HMDCameraRecordingSettingsControl *)selfCopy recordingConfigurationOverrides];

  if (recordingConfigurationOverrides)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      recordingConfigurationOverrides2 = [(HMDCameraRecordingSettingsControl *)v22 recordingConfigurationOverrides];
      v29 = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = recordingConfigurationOverrides2;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Using recording configuration overrides: %@", &v29, 0x16u);
    }

LABEL_12:

    objc_autoreleasePoolPop(v21);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (NSArray)videoConfigurationsByPreferenceOrder
{
  v51[3] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v50[0] = &unk_283E73B38;
  v50[1] = &unk_283E73B68;
  v51[0] = &unk_283E73B50;
  v51[1] = &unk_283E73B50;
  v50[2] = &unk_283E73B80;
  v51[2] = &unk_283E73B98;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
  v48[0] = &unk_283E73B38;
  v48[1] = &unk_283E73B68;
  v49[0] = &unk_283E73BB0;
  v49[1] = &unk_283E73BC8;
  v48[2] = &unk_283E73B80;
  v49[2] = &unk_283E73BE0;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  v46[0] = &unk_283E73B38;
  v46[1] = &unk_283E73B68;
  v47[0] = &unk_283E73BE0;
  v47[1] = &unk_283E73BF8;
  v46[2] = &unk_283E73B80;
  v47[2] = &unk_283E73C10;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  v5 = v4;
  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  home = [accessory home];
  personManagerSettings = [home personManagerSettings];
  isFaceClassificationEnabled = [personManagerSettings isFaceClassificationEnabled];

  v10 = v5;
  v11 = v5;
  v12 = v5;
  if (isFaceClassificationEnabled)
  {
    v44[0] = &unk_283E73B38;
    v44[1] = &unk_283E73B68;
    v45[0] = &unk_283E73BF8;
    v45[1] = &unk_283E73BF8;
    v44[2] = &unk_283E73B80;
    v45[2] = &unk_283E73C28;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];

    v14 = v13;
    v12 = v14;

    v42[0] = &unk_283E73B38;
    v42[1] = &unk_283E73B68;
    v43[0] = &unk_283E73C28;
    v43[1] = &unk_283E73C28;
    v42[2] = &unk_283E73B80;
    v43[2] = &unk_283E73C40;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

    v11 = v15;
    v40[0] = &unk_283E73B38;
    v40[1] = &unk_283E73B68;
    v41[0] = &unk_283E73C58;
    v41[1] = &unk_283E73C40;
    v40[2] = &unk_283E73B80;
    v41[2] = &unk_283E73B50;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  }

  v16 = v10;
  v35 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:8 bitRateByFrameRate:v39 keyFrameInterval:&unk_283E73BB0 h264Level:3];
  v34 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:17 bitRateByFrameRate:v39 keyFrameInterval:&unk_283E73BB0 h264Level:3];
  v33 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:7 bitRateByFrameRate:v12 keyFrameInterval:&unk_283E73BB0 h264Level:2];
  v32 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:6 bitRateByFrameRate:v11 keyFrameInterval:&unk_283E73BB0 h264Level:0];
  v31 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:3 bitRateByFrameRate:v5 keyFrameInterval:&unk_283E73BB0 h264Level:1];
  v30 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:2 bitRateByFrameRate:v5 keyFrameInterval:&unk_283E73BB0 h264Level:0];
  v17 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:10 bitRateByFrameRate:v12 keyFrameInterval:&unk_283E73BB0 h264Level:2];
  v18 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:9 bitRateByFrameRate:v11 keyFrameInterval:&unk_283E73BB0 h264Level:0];
  v29 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:11 bitRateByFrameRate:v12 keyFrameInterval:&unk_283E73BB0 h264Level:2];
  v28 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:12 bitRateByFrameRate:v12 keyFrameInterval:&unk_283E73BB0 h264Level:2];
  v19 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:13 bitRateByFrameRate:v12 keyFrameInterval:&unk_283E73BB0 h264Level:2];
  v20 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:14 bitRateByFrameRate:v12 keyFrameInterval:&unk_283E73BB0 h264Level:2];
  v37 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:15 bitRateByFrameRate:v5 keyFrameInterval:&unk_283E73BB0 h264Level:1];
  v36 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:16 bitRateByFrameRate:v5 keyFrameInterval:&unk_283E73BB0 h264Level:0];
  v27 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:21 bitRateByFrameRate:v38 keyFrameInterval:&unk_283E73BB0 h264Level:2];
  v26 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:20 bitRateByFrameRate:v11 keyFrameInterval:&unk_283E73BB0 h264Level:2];
  v21 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:19 bitRateByFrameRate:v16 keyFrameInterval:&unk_283E73BB0 h264Level:0];
  array = [MEMORY[0x277CBEB18] array];
  if (_os_feature_enabled_impl())
  {
    [array addObject:v34];
  }

  [array addObject:v17];
  [array addObject:v18];
  [array addObject:v19];
  [array addObject:v20];
  [array addObject:v37];
  [array addObject:v36];
  if (_os_feature_enabled_impl())
  {
    [array addObject:v35];
  }

  [array addObject:v33];
  [array addObject:v32];
  [array addObject:v29];
  [array addObject:v28];
  [array addObject:v31];
  [array addObject:v30];
  [array addObject:v27];
  [array addObject:v26];
  [array addObject:v21];
  v25 = [array copy];

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)queue accessory:(id)accessory recordingManagementService:(id)service featuresDataSource:(id)source notificationCenter:(id)center
{
  queueCopy = queue;
  accessoryCopy = accessory;
  serviceCopy = service;
  sourceCopy = source;
  centerCopy = center;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!accessoryCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!serviceCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v18 = centerCopy;
  if (!centerCopy)
  {
LABEL_11:
    v29 = _HMFPreconditionFailure();
    return [(HMDCameraRecordingSettingsControl *)v29 initWithWorkQueue:v30 accessory:v31 recordingManagementService:v32, v33];
  }

  v34.receiver = self;
  v34.super_class = HMDCameraRecordingSettingsControl;
  v19 = [(HMDCameraRecordingSettingsControl *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeWeak(&v20->_accessory, accessoryCopy);
    objc_storeStrong(&v20->_recordingService, service);
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeStrong(&v20->_featuresDataSource, source);
    v21 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v24 = [v21 stringWithFormat:@"%@.HMDCameraRecordingSettingsControl.%@", @"com.apple.HomeKitDaemon.Local", uUIDString];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = v24;

    array = [MEMORY[0x277CBEB18] array];
    pendingConfigureCompletionHandlers = v20->_pendingConfigureCompletionHandlers;
    v20->_pendingConfigureCompletionHandlers = array;
  }

  return v20;
}

- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)queue accessory:(id)accessory recordingManagementService:(id)service
{
  serviceCopy = service;
  accessoryCopy = accessory;
  queueCopy = queue;
  v11 = +[HMDFeaturesDataSource defaultDataSource];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [(HMDCameraRecordingSettingsControl *)self initWithWorkQueue:queueCopy accessory:accessoryCopy recordingManagementService:serviceCopy featuresDataSource:v11 notificationCenter:defaultCenter];

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t70 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t70, &__block_literal_global_202_194475);
  }

  v3 = logCategory__hmf_once_v71;

  return v3;
}

void __48__HMDCameraRecordingSettingsControl_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v71;
  logCategory__hmf_once_v71 = v1;
}

+ (id)audioCodecForCodecConfiguration:(id)configuration
{
  configurationCopy = configuration;
  codec = [configurationCopy codec];
  v5 = [HMDCameraRecordingSettingsControl isSupportedAudioCodec:codec];

  if (v5)
  {
    codec2 = [configurationCopy codec];
  }

  else
  {
    codec2 = 0;
  }

  return codec2;
}

+ (id)audioBitRateForCodecConfiguration:(id)configuration
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  parameters = [configuration parameters];
  bitRateModes = [parameters bitRateModes];

  v5 = [bitRateModes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(bitRateModes);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 type] < 2)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [bitRateModes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)videoCodecForCodecConfiguration:(id)configuration
{
  configurationCopy = configuration;
  codec = [configurationCopy codec];
  LODWORD(self) = [self isSupportedVideoCodec:codec];

  if (self)
  {
    codec2 = [configurationCopy codec];
  }

  else
  {
    codec2 = 0;
  }

  return codec2;
}

+ (id)h264ProfileForCodecConfiguration:(id)configuration
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  parameters = [configuration parameters];
  profiles = [parameters profiles];

  v5 = [profiles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(profiles);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([HMDCameraRecordingSettingsControl isSupportedH264Profile:v8])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [profiles countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (NSArray)audioConfigurationsByPreferenceOrder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDCameraRecordingSettingsControl_audioConfigurationsByPreferenceOrder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (audioConfigurationsByPreferenceOrder_onceToken != -1)
  {
    dispatch_once(&audioConfigurationsByPreferenceOrder_onceToken, block);
  }

  v2 = audioConfigurationsByPreferenceOrder_audioConfigurationsByPreferenceOrder;

  return v2;
}

void __73__HMDCameraRecordingSettingsControl_audioConfigurationsByPreferenceOrder__block_invoke(uint64_t a1)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v2 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:3 bitRate:&unk_283E73C70];
  v3 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:1 bitRate:&unk_283E73C88];
  v4 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:2 bitRate:&unk_283E73CA0];
  v5 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:4 bitRate:&unk_283E73C70];
  v6 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:5 bitRate:&unk_283E73C70];
  v18[0] = v2;
  v18[1] = v5;
  v18[2] = v6;
  v18[3] = v4;
  v18[4] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  v8 = audioConfigurationsByPreferenceOrder_audioConfigurationsByPreferenceOrder;
  audioConfigurationsByPreferenceOrder_audioConfigurationsByPreferenceOrder = v7;

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = audioConfigurationsByPreferenceOrder_audioConfigurationsByPreferenceOrder;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Preferred audio configuration order: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

@end