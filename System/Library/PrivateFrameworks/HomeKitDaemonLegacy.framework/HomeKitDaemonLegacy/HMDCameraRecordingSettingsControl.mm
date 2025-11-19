@interface HMDCameraRecordingSettingsControl
+ (NSArray)audioConfigurationsByPreferenceOrder;
+ (id)audioBitRateForCodecConfiguration:(id)a3;
+ (id)audioCodecForCodecConfiguration:(id)a3;
+ (id)h264ProfileForCodecConfiguration:(id)a3;
+ (id)logCategory;
+ (id)videoCodecForCodecConfiguration:(id)a3;
- (BOOL)_shouldReconfigureForChangedCharacteristic:(id)a3;
- (BOOL)isCameraConfiguredForRecording;
- (BOOL)isPrimaryResident;
- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)a3 accessory:(id)a4 recordingManagementService:(id)a5;
- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)a3 accessory:(id)a4 recordingManagementService:(id)a5 featuresDataSource:(id)a6 notificationCenter:(id)a7;
- (HMDCameraRecordingSettingsControlDelegate)delegate;
- (HMDCharacteristic)recordingActiveCharacteristic;
- (HMDCharacteristic)recordingSelectedConfigurationCharacteristic;
- (HMDCharacteristic)recordingSupportedAudioConfigurationCharacteristic;
- (HMDCharacteristic)recordingSupportedGeneralConfigurationCharacteristic;
- (HMDCharacteristic)recordingSupportedVideoConfigurationCharacteristic;
- (HMDHAPAccessory)accessory;
- (NSArray)videoConfigurationsByPreferenceOrder;
- (id)_dataValueForCharacteristicOfType:(id)a3 inResponses:(id)a4;
- (id)_generalRecordingConfigurationInResponses:(id)a3;
- (id)_isRecordingActiveValueInResponses:(id)a3;
- (id)_numberValueForCharacteristicOfType:(id)a3 inResponses:(id)a4;
- (id)_preferredAudioConfigurationOverride;
- (id)_preferredVideoConfigurationOverride;
- (id)_recordingAudioConfiguration;
- (id)_recordingGeneralConfiguration;
- (id)_recordingVideoConfiguration;
- (id)_selectedRecordingConfigurationInResponses:(id)a3;
- (id)_supportedAudioConfigurationInResponses:(id)a3;
- (id)_supportedVideoConfigurationInResponses:(id)a3;
- (id)characteristicsToMonitor;
- (id)logIdentifier;
- (void)_handleCurrentIsRecordingActive:(id)a3 selectedConfiguration:(id)a4;
- (void)_handleSupportedConfigurationCharacteristicsReadResponses:(id)a3;
- (void)_invokePendingConfigureCompletionHandlersWithError:(id)a3;
- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)a3;
- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)a3 error:(id)a4;
- (void)_readCameraRecordingSettings;
- (void)_readSupportedCameraRecordingConfiguration;
- (void)_setSelectedRecordingConfiguration:(id)a3;
- (void)_updateSelectedRecordingConfiguration:(id)a3;
- (void)_writeCameraRecordingSettings;
- (void)configureCameraRecordingSettings;
- (void)configureCameraRecordingSettingsWithCompletion:(id)a3;
- (void)dealloc;
- (void)enableCharacteristicNotifications;
- (void)handleAccessoryConnectedNotification:(id)a3;
- (void)handleAccessoryDisconnectedNotification:(id)a3;
- (void)handleAccessoryIsNotConfiguredError;
- (void)handleCharacteristicsChangedNotification:(id)a3;
- (void)handleCharacteristicsUpdatedNotification:(id)a3;
- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)a3;
- (void)reconfigureCameraRecordingSettingsWithReason:(id)a3;
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
  v4 = [(HMDCameraRecordingSettingsControl *)self accessory];
  v5 = [v4 name];
  v6 = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v7 = [v6 instanceID];
  v8 = [v3 stringWithFormat:@"%@/%@", v5, v7];

  return v8;
}

- (BOOL)isCameraConfiguredForRecording
{
  v2 = self;
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSettingsControl *)v2 currentSelectedConfiguration];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (void)_setSelectedRecordingConfiguration:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSettingsControl *)self accessory];
  v7 = [v6 home];

  if (v7)
  {
    v8 = [(HMDCameraRecordingSettingsControl *)self recordingService];
    v9 = [v8 findCharacteristicWithType:@"00000209-0000-1000-8000-0026BB765291"];

    v10 = [v4 tlvData];
    v11 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v9 value:v10 authorizationData:0 type:0];

    v23 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v13 = [MEMORY[0x277CCAD78] UUID];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__HMDCameraRecordingSettingsControl__setSelectedRecordingConfiguration___block_invoke;
    v20[3] = &unk_279730A88;
    v20[4] = self;
    v21 = v11;
    v22 = v4;
    v14 = v11;
    [v7 writeCharacteristicValues:v12 source:1070 biomeSource:0 identifier:v13 transport:0 qualityOfService:-1 withCompletionHandler:v20];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot set selected recording configuration because accessory/home reference is nil", buf, 0xCu);
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
  block[3] = &unk_2797352C0;
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set the selected recording configuration: %@", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set the selected recording configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) _updateSelectedRecordingConfiguration:*(a1 + 64)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if ((v6 == 0) != (v7 != 0))
  {
    _HMFPreconditionFailure();
  }

  v9 = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  v10 = [v9 copy];

  v11 = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  [v11 removeAllObjects];

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

- (void)_invokePendingConfigureCompletionHandlersWithError:(id)a3
{
  v8 = a3;
  v4 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v4);

  if (v8)
  {
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:0 error:v8];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDCameraRecordingSettingsControl *)v5 _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:v6, v7];
  }
}

- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)a3
{
  v9 = a3;
  v4 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v4);

  if (v9)
  {
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:v9 error:0];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDCameraRecordingSettingsControl *)v5 _numberValueForCharacteristicOfType:v6 inResponses:v7, v8];
  }
}

- (id)_numberValueForCharacteristicOfType:(id)a3 inResponses:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
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
      v15 = [v14 request];
      v16 = [v15 characteristic];
      v17 = [v16 type];
      v18 = [v17 isEqualToString:v6];

      if (v18)
      {
        v19 = [v14 value];
        objc_opt_class();
        v20 = (objc_opt_isKindOfClass() & 1) != 0 ? v19 : 0;
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
    v19 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_dataValueForCharacteristicOfType:(id)a3 inResponses:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
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
      v15 = [v14 request];
      v16 = [v15 characteristic];
      v17 = [v16 type];
      v18 = [v17 isEqualToString:v6];

      if (v18)
      {
        v19 = [v14 value];
        objc_opt_class();
        v20 = (objc_opt_isKindOfClass() & 1) != 0 ? v19 : 0;
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
    v19 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_supportedVideoConfigurationInResponses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000206-0000-1000-8000-0026BB765291" inResponses:v4];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingSupportedVideoConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Failed to parse camera recording video configuration";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v12, &v16, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v13 = self;
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

- (id)_supportedAudioConfigurationInResponses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000207-0000-1000-8000-0026BB765291" inResponses:v4];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingSupportedAudioConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Failed to parse camera recording audio configuration";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v12, &v16, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v13 = self;
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

- (id)_generalRecordingConfigurationInResponses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000205-0000-1000-8000-0026BB765291" inResponses:v4];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingGeneralConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Failed to parse camera recording general configuration";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v12, &v16, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v13 = self;
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

- (id)_selectedRecordingConfigurationInResponses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000209-0000-1000-8000-0026BB765291" inResponses:v4];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingSelectedConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Failed to parse camera recording selected configuration";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v12, &v16, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v13 = self;
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

- (id)_isRecordingActiveValueInResponses:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSettingsControl *)self _numberValueForCharacteristicOfType:*MEMORY[0x277CCF748] inResponses:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Response missing recording active", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_handleSupportedConfigurationCharacteristicsReadResponses:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSettingsControl *)self _isRecordingActiveValueInResponses:v4];
  if ([v6 BOOLValue])
  {
    v7 = [(HMDCameraRecordingSettingsControl *)self _generalRecordingConfigurationInResponses:v4];
    [(HMDCameraRecordingSettingsControl *)self setSupportedRecordingConfiguration:v7];

    v8 = [(HMDCameraRecordingSettingsControl *)self _supportedVideoConfigurationInResponses:v4];
    [(HMDCameraRecordingSettingsControl *)self setSupportedVideoConfiguration:v8];

    v9 = [(HMDCameraRecordingSettingsControl *)self _supportedAudioConfigurationInResponses:v4];
    [(HMDCameraRecordingSettingsControl *)self setSupportedAudioConfiguration:v9];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDCameraRecordingSettingsControl *)v11 supportedRecordingConfiguration];
      v48 = 138543618;
      v49 = v13;
      v50 = 2112;
      v51 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating supported recording configuration to: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_autoreleasePoolPush();
    v16 = v11;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDCameraRecordingSettingsControl *)v16 supportedVideoConfiguration];
      v48 = 138543618;
      v49 = v18;
      v50 = 2112;
      v51 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating supported video configuration to: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = objc_autoreleasePoolPush();
    v21 = v16;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMDCameraRecordingSettingsControl *)v21 supportedAudioConfiguration];
      v48 = 138543618;
      v49 = v23;
      v50 = 2112;
      v51 = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating supported audio configuration to: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = [(HMDCameraRecordingSettingsControl *)v21 _recordingGeneralConfiguration];
    v26 = [(HMDCameraRecordingSettingsControl *)v21 _recordingVideoConfiguration];
    v27 = [(HMDCameraRecordingSettingsControl *)v21 _recordingAudioConfiguration];
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    v31 = v30;
    if (v25 && v26 && v27)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v48 = 138543618;
        v49 = v32;
        v50 = 2112;
        v51 = v25;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Setting selected general configuration: %@", &v48, 0x16u);
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
        v51 = v26;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Setting selected video configuration: %@", &v48, 0x16u);
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
        v51 = v27;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Setting selected audio configuration: %@", &v48, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v41 = [[HMDCameraRecordingSelectedConfiguration alloc] initWithGeneralConfiguration:v25 videoCodecConfiguration:v26 audioCodecConfiguration:v27];
      [(HMDCameraRecordingSettingsControl *)v38 _setSelectedRecordingConfiguration:v41];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        v48 = 138543362;
        v49 = v46;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Skipping selected configuration write because of invalid selected config", &v48, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [(HMDCameraRecordingSettingsControl *)v29 _invokePendingConfigureCompletionHandlersWithError:v41];
    }
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    v43 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      v48 = 138543618;
      v49 = v45;
      v50 = 2112;
      v51 = v6;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Recording active is disabled: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    [(HMDCameraRecordingSettingsControl *)v43 setCurrentSelectedConfiguration:0];
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [(HMDCameraRecordingSettingsControl *)v43 _invokePendingConfigureCompletionHandlersWithError:v25];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_readSupportedCameraRecordingConfiguration
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  v5 = [HMDCharacteristicRequest requestWithCharacteristic:v4];
  v17[0] = v5;
  v6 = [(HMDCameraRecordingSettingsControl *)self recordingSupportedGeneralConfigurationCharacteristic];
  v7 = [HMDCharacteristicRequest requestWithCharacteristic:v6];
  v17[1] = v7;
  v8 = [(HMDCameraRecordingSettingsControl *)self recordingSupportedAudioConfigurationCharacteristic];
  v9 = [HMDCharacteristicRequest requestWithCharacteristic:v8];
  v17[2] = v9;
  v10 = [(HMDCameraRecordingSettingsControl *)self recordingSupportedVideoConfigurationCharacteristic];
  v11 = [HMDCharacteristicRequest requestWithCharacteristic:v10];
  v17[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  v13 = [(HMDCameraRecordingSettingsControl *)self accessory];
  v14 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HMDCameraRecordingSettingsControl__readSupportedCameraRecordingConfiguration__block_invoke;
  v16[3] = &unk_279730038;
  v16[4] = self;
  [v13 readCharacteristicValues:v12 source:1070 queue:v14 completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleCurrentIsRecordingActive:(id)a3 selectedConfiguration:(id)a4
{
  v55[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
        v14 = [(HMDCameraRecordingSettingsControl *)self recordingService];
        v15 = [v14 findCharacteristicWithType:v13];

        if (!v15)
        {
          v36 = objc_autoreleasePoolPush();
          v37 = self;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v39;
            v52 = 2112;
            v53 = v13;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Recording service does not have required characteristic type: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          [(HMDCameraRecordingSettingsControl *)v37 setCurrentSelectedConfiguration:0];
          v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [(HMDCameraRecordingSettingsControl *)v37 _invokePendingConfigureCompletionHandlersWithError:v40];

          v35 = v8;
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

  if ([v6 BOOLValue])
  {
    v16 = [(HMDCameraRecordingSettingsControl *)self currentSelectedConfiguration];
    v17 = [v16 tlvData];
    v18 = [v7 tlvData];
    v19 = [v17 isEqualToData:v18];

    if ((v19 & 1) == 0)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v7 generalConfiguration];
        *buf = 138543618;
        v51 = v23;
        v52 = 2112;
        v53 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating selected general configuration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = objc_autoreleasePoolPush();
      v26 = v21;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v7 videoConfiguration];
        *buf = 138543618;
        v51 = v28;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating selected video configuration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = objc_autoreleasePoolPush();
      v31 = v26;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v7 audioConfiguration];
        *buf = 138543618;
        v51 = v33;
        v52 = 2112;
        v53 = v34;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating selected audio configuration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      [(HMDCameraRecordingSettingsControl *)v31 _updateSelectedRecordingConfiguration:v7];
    }

    v35 = [v7 generalConfiguration];
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:v35];
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v44;
      v52 = 2112;
      v53 = v6;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Recording active is disabled: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    [(HMDCameraRecordingSettingsControl *)v42 setCurrentSelectedConfiguration:0];
    v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [(HMDCameraRecordingSettingsControl *)v42 _invokePendingConfigureCompletionHandlersWithError:v35];
  }

LABEL_25:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_readCameraRecordingSettings
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  v5 = [(HMDCameraRecordingSettingsControl *)self recordingSelectedConfigurationCharacteristic];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v6 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
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
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        [(HMDCameraRecordingSettingsControl *)v22 canUseCachedCharacteristicValues];
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
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Reading from accessory because can use cached characteristic values is %@, recording active characteristic value is %@, and selected configuration characteristic value is %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
      v29 = [HMDCharacteristicRequest requestWithCharacteristic:v4];
      v36[0] = v29;
      v30 = [HMDCharacteristicRequest requestWithCharacteristic:v6];
      v36[1] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];

      v32 = [(HMDCameraRecordingSettingsControl *)v22 accessory];
      v33 = [(HMDCameraRecordingSettingsControl *)v22 workQueue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __65__HMDCameraRecordingSettingsControl__readCameraRecordingSettings__block_invoke;
      v35[3] = &unk_279730038;
      v35[4] = v22;
      [v32 readCharacteristicValues:v31 source:1070 queue:v33 completionHandler:v35];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = v17;
      v19 = @"<nil>";
      if (v4)
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
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Mandatory recording active characteristic (%@) or selected configuration characteristic (%@) was not found on recording service", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [(HMDCameraRecordingSettingsControl *)v15 _invokePendingConfigureCompletionHandlersWithError:v9];
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
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Read is recording active: %@", &v35, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Read selected general configuration: %@", &v35, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Read selected video configuration: %@", &v35, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Read selected audio configuration: %@", &v35, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read selected camera recording configuration", &v35, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to read is recording active", &v35, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:101];
    [v30 _invokePendingConfigureCompletionHandlersWithError:v5];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_updateSelectedRecordingConfiguration:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDCameraRecordingSettingsControl *)self setCurrentSelectedConfiguration:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate to notify that recording settings are configured", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingSettingsControl *)v7 delegate];
  [v10 recordingSettingsControlDidConfigure:v7];

  v11 = [v4 generalConfiguration];
  [(HMDCameraRecordingSettingsControl *)v7 _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_writeCameraRecordingSettings
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSettingsControl *)self currentSelectedConfiguration];

  if (v4)
  {
    v12 = [(HMDCameraRecordingSettingsControl *)self currentSelectedConfiguration];
    v5 = [v12 generalConfiguration];
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:v5];

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring camera recording settings on primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDCameraRecordingSettingsControl *)v8 _readSupportedCameraRecordingConfiguration];
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)_shouldReconfigureForChangedCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  v6 = [v4 isEqual:v5];

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
    v8 = [(HMDCameraRecordingSettingsControl *)self recordingSelectedConfigurationCharacteristic];
    v7 = [v4 isEqual:v8];
  }

  return v7;
}

- (void)handleAccessoryIsNotConfiguredError
{
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDCameraRecordingSettingsControl *)self reconfigureCameraRecordingSettingsWithReason:@"Handling accessory is not configured error"];
}

- (void)reconfigureCameraRecordingSettingsWithReason:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Reconfiguring camera recording settings: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingSettingsControl *)v7 setCurrentSelectedConfiguration:0];
  [(HMDCameraRecordingSettingsControl *)v7 configureCameraRecordingSettings];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)configureCameraRecordingSettingsWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  v7 = _Block_copy(v4);
  [v6 addObject:v7];

  v8 = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  v9 = [v8 count];

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
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Deferring new configure request to be invoked when in-progress configure finishes", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)configureCameraRecordingSettings
{
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDCameraRecordingSettingsControl *)self configureCameraRecordingSettingsWithCompletion:&__block_literal_global_130240];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    clientIdentifier = v4->_clientIdentifier;
    *buf = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = clientIdentifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating recording settings control and disabling characteristic notifications with client identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  WeakRetained = objc_loadWeakRetained(&v4->_accessory);
  v9 = [(HMDCameraRecordingSettingsControl *)v4 characteristicsToMonitor];
  [WeakRetained enableNotification:0 forCharacteristics:v9 message:0 clientIdentifier:v4->_clientIdentifier];

  v11.receiver = v4;
  v11.super_class = HMDCameraRecordingSettingsControl;
  [(HMDCameraRecordingSettingsControl *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)enableCharacteristicNotifications
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMDCameraRecordingSettingsControl *)v5 characteristicsToMonitor];
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for characteristics: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [(HMDCameraRecordingSettingsControl *)v5 accessory];
  v10 = [(HMDCameraRecordingSettingsControl *)v5 characteristicsToMonitor];
  v11 = [(HMDCameraRecordingSettingsControl *)v5 clientIdentifier];
  [v9 enableNotification:1 forCharacteristics:v10 message:0 clientIdentifier:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_recordingAudioConfiguration
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSettingsControl *)self _preferredAudioConfigurationOverride];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = v5;
  if (v4)
  {
    [v5 addObject:v4];
  }

  v61 = v4;
  v7 = &OBJC_METACLASS___HMDSoftwareUpdateDocumentationManager;
  v8 = +[HMDCameraRecordingSettingsControl audioConfigurationsByPreferenceOrder];
  [v6 addObjectsFromArray:v8];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v60 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v88 = v12;
    v89 = 2112;
    v90 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Preferred audio parameters: %@", buf, 0x16u);

    v10 = v60;
  }

  objc_autoreleasePoolPop(v9);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v13 = [(HMDCameraRecordingSettingsControl *)v10 supportedAudioConfiguration];
  v14 = [v13 codecConfigurations];

  obj = v14;
  v64 = [v14 countByEnumeratingWithState:&v78 objects:v86 count:16];
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
        v16 = [&v7[47] audioCodecForCodecConfiguration:v19];

        v67 = v17;
        if (v16)
        {
          v20 = [&v7[47] audioBitRateForCodecConfiguration:v19];

          if (v20)
          {
            v62 = v20;
            v63 = v16;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v59 = v19;
            v21 = [v19 parameters];
            v22 = [v21 audioSampleRates];

            v68 = v22;
            v23 = [v22 countByEnumeratingWithState:&v74 objects:v85 count:16];
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
                      v34 = [v33 sampleRate];
                      if ([v26 type] == v34)
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
                    v55 = [v35 bitRate];
                    v56 = [(HMDCameraRecordingAudioCodecParameters *)v52 initWithChannelCount:&unk_286629218 bitRateModes:v53 audioSampleRates:v54 maxAudioBitRate:v55];

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
            v10 = v60;
            v37 = v60;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v88 = v39;
              v89 = 2112;
              v90 = v59;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping audio codec configuration %@ preferred audio configuration is not supported", buf, 0x16u);
            }

            v15 = v62;
            v16 = v63;
            v7 = &OBJC_METACLASS___HMDSoftwareUpdateDocumentationManager;
          }

          else
          {
            v43 = v19;
            v36 = objc_autoreleasePoolPush();
            v44 = v10;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v45 = HMFGetLogIdentifier();
              *buf = 138543618;
              v88 = v45;
              v89 = 2112;
              v90 = v43;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping audio codec configuration %@ bit rate mode is not supported", buf, 0x16u);
            }

            v15 = 0;
          }
        }

        else
        {
          v40 = v19;
          v36 = objc_autoreleasePoolPush();
          v41 = v10;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v88 = v42;
            v89 = 2112;
            v90 = v40;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping audio codec configuration %@ codec type is not supported", buf, 0x16u);
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
  v47 = v10;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543362;
    v88 = v49;
    _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to select audio configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v46);
  v50 = 0;
LABEL_44:

  v57 = *MEMORY[0x277D85DE8];

  return v50;
}

- (HMDCharacteristic)recordingSelectedConfigurationCharacteristic
{
  v2 = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [v2 findCharacteristicWithType:@"00000209-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingSupportedVideoConfigurationCharacteristic
{
  v2 = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [v2 findCharacteristicWithType:@"00000206-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingSupportedAudioConfigurationCharacteristic
{
  v2 = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [v2 findCharacteristicWithType:@"00000207-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingSupportedGeneralConfigurationCharacteristic
{
  v2 = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [v2 findCharacteristicWithType:@"00000205-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingActiveCharacteristic
{
  v2 = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCF748]];

  return v3;
}

- (BOOL)isPrimaryResident
{
  v2 = [(HMDCameraRecordingSettingsControl *)self accessory];
  v3 = [v2 home];
  v4 = [v3 isCurrentDeviceConfirmedPrimaryResident];

  return v4;
}

- (id)characteristicsToMonitor
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  [v3 na_safeAddObject:v4];

  v5 = [(HMDCameraRecordingSettingsControl *)self recordingSelectedConfigurationCharacteristic];
  [v3 na_safeAddObject:v5];

  v6 = [v3 copy];

  return v6;
}

- (id)_recordingVideoConfiguration
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v45 = [(HMDCameraRecordingSettingsControl *)self _preferredVideoConfigurationOverride];
  v46 = [MEMORY[0x277CBEB18] array];
  if (v45)
  {
    [v46 addObject:?];
  }

  v4 = [(HMDCameraRecordingSettingsControl *)self videoConfigurationsByPreferenceOrder];
  [v46 addObjectsFromArray:v4];

  v5 = objc_autoreleasePoolPush();
  v49 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v46;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Video parameters in order of preference: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v65 = __Block_byref_object_copy__130259;
  v66 = __Block_byref_object_dispose__130260;
  v67 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = [(HMDCameraRecordingSettingsControl *)v49 supportedVideoConfiguration];
  obj = [v8 codecConfigurations];

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
            v51[3] = &unk_27972CE08;
            v51[4] = v14;
            v51[5] = buf;
            v17 = [v46 na_firstObjectPassingTest:v51];
            if (v17)
            {

              v26 = [HMDCameraRecordingVideoAttributes alloc];
              v27 = [v17 resolution];
              obja = [(HMDCameraRecordingVideoAttributes *)v26 initWithResolution:v27 frameRate:*(*&buf[8] + 40)];
              v50 = -[HMDCameraRecordingH264Level initWithH264Level:]([HMDCameraRecordingH264Level alloc], "initWithH264Level:", [v17 h264Level]);
              v28 = [HMDCameraRecordingVideoCodecParameters alloc];
              v58 = v16;
              v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
              v57 = v50;
              v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
              v31 = [v17 bitRateByFrameRate];
              v32 = [v31 objectForKeyedSubscript:*(*&buf[8] + 40)];
              v33 = [v17 keyFrameInterval];
              v34 = [(HMDCameraRecordingVideoCodecParameters *)v28 initWithProfiles:v29 levels:v30 bitRate:v32 iFrameInterval:v33];

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
            v23 = v49;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              *v59 = 138543618;
              v60 = v25;
              v61 = 2112;
              v62 = v14;
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Skipping video codec configuration %@, H264 profile is not supported", v59, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            v11 = 0;
          }
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          v19 = v49;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *v59 = 138543618;
            v60 = v21;
            v61 = 2112;
            v62 = v14;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Skipping video codec configuration %@, codec type is not supported", v59, 0x16u);
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
  v39 = v49;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = HMFGetLogIdentifier();
    v42 = [(HMDCameraRecordingSettingsControl *)v39 supportedVideoConfiguration];
    *v59 = 138543618;
    v60 = v41;
    v61 = 2112;
    v62 = v42;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to select video configuration from supported video configuration: %@", v59, 0x16u);
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
  v14[3] = &unk_27972CD90;
  v6 = v3;
  v15 = v6;
  LODWORD(v3) = [v5 na_any:v14];

  v7 = [*(a1 + 32) videoAttributes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_3;
  v11[3] = &unk_27972CDE0;
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
    v11[3] = &unk_27972CDB8;
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
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v5 = [v4 hmf_numberForKey:@"audioBitRate"];

  v6 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v7 = [v6 hmf_numberForKey:@"audioSampleRate"];

  v8 = 0;
  if (v5 && v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Using overridden audio configuration with Bit rate: %@kbps, Sample rate: %@kHz", &v15, 0x20u);
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
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v5 = [v4 hmf_numberForKey:@"keyFrameInterval"];

  v6 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v7 = [v6 hmf_numberForKey:@"frameRate"];

  v8 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v9 = [v8 hmf_numberForKey:@"imageWidth"];

  v10 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v11 = [v10 hmf_numberForKey:@"imageHeight"];

  v12 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v13 = [v12 hmf_numberForKey:@"videoBitrate"];

  v14 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v15 = [v14 hmf_numberForKey:@"h264Level"];

  v16 = 0;
  if (v5 && v7 && v9 && v11 && v13 && v15)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
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
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Using overridden video configuration with Frame rate: %@fps, Key frame interval: %@ms, Image width: %@px, Image height: %@px, Video bit rate: %@kbps, H264 Level is: %@", buf, 0x48u);

      v17 = v28;
    }

    objc_autoreleasePoolPop(v17);
    v22 = [[HMDCameraRecordingVideoAttributes alloc] initWithImageWidth:v9 imageHeight:v11 frameRate:v7];
    v23 = [HMDCameraRecordingPreferredVideoConfiguration alloc];
    v24 = [(HMDCameraRecordingVideoAttributes *)v22 resolution];
    v29 = v7;
    v30 = v13;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v16 = -[HMDCameraRecordingPreferredVideoConfiguration initWithResolution:bitRateByFrameRate:keyFrameInterval:h264Level:](v23, "initWithResolution:bitRateByFrameRate:keyFrameInterval:h264Level:", v24, v25, v5, [v15 integerValue]);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_recordingGeneralConfiguration
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v5 = [v4 hmf_numberForKey:@"prebufferLength"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_286629200;
  }

  v7 = v6;
  v8 = [(HMDCameraRecordingSettingsControl *)self supportedRecordingConfiguration];
  v9 = [v8 prebufferLength];

  if (!v9)
  {
    v46 = objc_autoreleasePoolPush();
    v47 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v49;
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Supported prebuffer length is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
    v50 = 0;
    goto LABEL_40;
  }

  if ([v7 compare:v9] == 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
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
    v85 = v9;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Selecting prebuffer length of %@ because preferred length is %@ and supported length is %@", buf, 0x2Au);
  }

  v66 = v11;
  v67 = v9;
  v68 = v7;
  v69 = v5;

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDCameraRecordingSettingsControl *)v13 supportedRecordingConfiguration];
  v17 = [v16 eventTriggerOptions];

  v18 = objc_autoreleasePoolPush();
  v19 = v13;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = HMDCameraRecordingEventTriggerOptionsAsString(v17);
    *buf = 138543618;
    v79 = v21;
    v80 = 2112;
    v81 = v22;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Selecting event trigger options of %@", buf, 0x16u);
  }

  v64 = v17;

  objc_autoreleasePoolPop(v18);
  v23 = [(HMDCameraRecordingSettingsControl *)v19 recordingConfigurationOverrides];
  v24 = [v23 hmf_numberForKey:@"fragmentLength"];

  v65 = v24;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = &unk_286629200;
  }

  v71 = v25;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v26 = [(HMDCameraRecordingSettingsControl *)v19 supportedRecordingConfiguration];
  v27 = [v26 mediaContainerConfigurations];

  obj = v27;
  v28 = [v27 countByEnumeratingWithState:&v72 objects:v77 count:16];
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
      _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to select general configuration", buf, 0xCu);
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
    v34 = [v33 container];
    v35 = [v34 type];

    if (!v35)
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
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping container configuration: %@ unsupported container format", buf, 0x16u);
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

  v40 = [v33 parameters];
  v41 = [v40 fragmentLength];

  if ([v71 compare:v41] == 1)
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
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Skipping container configuration: %@, requested fragment length is %@", buf, 0x20u);

      v32 = obj;
    }

    objc_autoreleasePoolPop(v42);
    goto LABEL_28;
  }

  v51 = [[HMDCameraRecordingMediaContainerParameters alloc] initWithFragmentLength:v71];
  v52 = [HMDCameraRecordingMediaContainerConfiguration alloc];
  v53 = [v33 container];
  v54 = [(HMDCameraRecordingMediaContainerConfiguration *)v52 initWithMediaContainer:v53 containerParameters:v51];

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
  v9 = v67;

LABEL_40:
  v62 = *MEMORY[0x277D85DE8];

  return v50;
}

- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__HMDCameraRecordingSettingsControl_handleHomePersonManagerSettingsDidChangeNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) name];
    [v7 reconfigureCameraRecordingSettingsWithReason:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDCameraRecordingSettingsControl_handleCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __78__HMDCameraRecordingSettingsControl_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HMDCameraRecordingSettingsControl_handleCharacteristicsChangedNotification___block_invoke_2;
  v12[3] = &unk_279733D48;
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) name];
    [v9 reconfigureCameraRecordingSettingsWithReason:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicsUpdatedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDCameraRecordingSettingsControl_handleCharacteristicsUpdatedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) enableCharacteristicNotifications];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) name];
  [v7 reconfigureCameraRecordingSettingsWithReason:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryConnectedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HMDCameraRecordingSettingsControl_handleAccessoryConnectedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) configureCameraRecordingSettings];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleAccessoryDisconnectedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDCameraRecordingSettingsControl_handleAccessoryDisconnectedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@ by resetting current selected configuration", &v9, 0x16u);
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
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting camera recording settings control", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraRecordingSettingsControl *)v5 accessory];
  if (!v8)
  {
    v21 = objc_autoreleasePoolPush();
    v26 = v5;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v27;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Not starting camera recording settings control because accessory reference is nil", &v29, 0xCu);
    }

    goto LABEL_12;
  }

  v9 = [(HMDCameraRecordingSettingsControl *)v5 notificationCenter];
  [v9 addObserver:v5 selector:sel_handleAccessoryConnectedNotification_ name:@"HMDAccessoryConnectedNotification" object:v8];

  v10 = [(HMDCameraRecordingSettingsControl *)v5 notificationCenter];
  [v10 addObserver:v5 selector:sel_handleAccessoryDisconnectedNotification_ name:@"HMDAccessoryDisconnectedNotification" object:v8];

  v11 = [(HMDCameraRecordingSettingsControl *)v5 notificationCenter];
  [v11 addObserver:v5 selector:sel_handleCharacteristicsUpdatedNotification_ name:@"kHMDNotificationCharacteristicsUpdated" object:v8];

  v12 = [(HMDCameraRecordingSettingsControl *)v5 notificationCenter];
  [v12 addObserver:v5 selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v8];

  v13 = [(HMDCameraRecordingSettingsControl *)v5 notificationCenter];
  v14 = [v8 home];
  [v13 addObserver:v5 selector:sel_handleHomePersonManagerSettingsDidChangeNotification_ name:@"HMDHomePersonManagerSettingsDidChangeNotification" object:v14];

  [(HMDCameraRecordingSettingsControl *)v5 enableCharacteristicNotifications];
  [(HMDCameraRecordingSettingsControl *)v5 configureCameraRecordingSettings];
  v15 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v16 = [v15 preferenceForKey:@"recordingConfigurationOverrides"];
  v17 = [v16 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  [(HMDCameraRecordingSettingsControl *)v5 setRecordingConfigurationOverrides:v19];
  v20 = [(HMDCameraRecordingSettingsControl *)v5 recordingConfigurationOverrides];

  if (v20)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v5;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [(HMDCameraRecordingSettingsControl *)v22 recordingConfigurationOverrides];
      v29 = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Using recording configuration overrides: %@", &v29, 0x16u);
    }

LABEL_12:

    objc_autoreleasePoolPop(v21);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (NSArray)videoConfigurationsByPreferenceOrder
{
  v51[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v50[0] = &unk_286629080;
  v50[1] = &unk_2866290B0;
  v51[0] = &unk_286629098;
  v51[1] = &unk_286629098;
  v50[2] = &unk_2866290C8;
  v51[2] = &unk_2866290E0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
  v48[0] = &unk_286629080;
  v48[1] = &unk_2866290B0;
  v49[0] = &unk_2866290F8;
  v49[1] = &unk_286629110;
  v48[2] = &unk_2866290C8;
  v49[2] = &unk_286629128;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  v46[0] = &unk_286629080;
  v46[1] = &unk_2866290B0;
  v47[0] = &unk_286629128;
  v47[1] = &unk_286629140;
  v46[2] = &unk_2866290C8;
  v47[2] = &unk_286629158;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  v5 = v4;
  v6 = [(HMDCameraRecordingSettingsControl *)self accessory];
  v7 = [v6 home];
  v8 = [v7 personManagerSettings];
  v9 = [v8 isFaceClassificationEnabled];

  v10 = v5;
  v11 = v5;
  v12 = v5;
  if (v9)
  {
    v44[0] = &unk_286629080;
    v44[1] = &unk_2866290B0;
    v45[0] = &unk_286629140;
    v45[1] = &unk_286629140;
    v44[2] = &unk_2866290C8;
    v45[2] = &unk_286629170;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];

    v14 = v13;
    v12 = v14;

    v42[0] = &unk_286629080;
    v42[1] = &unk_2866290B0;
    v43[0] = &unk_286629170;
    v43[1] = &unk_286629170;
    v42[2] = &unk_2866290C8;
    v43[2] = &unk_286629188;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

    v11 = v15;
    v40[0] = &unk_286629080;
    v40[1] = &unk_2866290B0;
    v41[0] = &unk_2866291A0;
    v41[1] = &unk_286629188;
    v40[2] = &unk_2866290C8;
    v41[2] = &unk_286629098;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  }

  v16 = v10;
  v35 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:8 bitRateByFrameRate:v39 keyFrameInterval:&unk_2866290F8 h264Level:3];
  v34 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:17 bitRateByFrameRate:v39 keyFrameInterval:&unk_2866290F8 h264Level:3];
  v33 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:7 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v32 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:6 bitRateByFrameRate:v11 keyFrameInterval:&unk_2866290F8 h264Level:0];
  v31 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:3 bitRateByFrameRate:v5 keyFrameInterval:&unk_2866290F8 h264Level:1];
  v30 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:2 bitRateByFrameRate:v5 keyFrameInterval:&unk_2866290F8 h264Level:0];
  v17 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:10 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v18 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:9 bitRateByFrameRate:v11 keyFrameInterval:&unk_2866290F8 h264Level:0];
  v29 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:11 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v28 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:12 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v19 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:13 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v20 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:14 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v37 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:15 bitRateByFrameRate:v5 keyFrameInterval:&unk_2866290F8 h264Level:1];
  v36 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:16 bitRateByFrameRate:v5 keyFrameInterval:&unk_2866290F8 h264Level:0];
  v27 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:21 bitRateByFrameRate:v38 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v26 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:20 bitRateByFrameRate:v11 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v21 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:19 bitRateByFrameRate:v16 keyFrameInterval:&unk_2866290F8 h264Level:0];
  v22 = [MEMORY[0x277CBEB18] array];
  if (_os_feature_enabled_impl())
  {
    [v22 addObject:v34];
  }

  [v22 addObject:v17];
  [v22 addObject:v18];
  [v22 addObject:v19];
  [v22 addObject:v20];
  [v22 addObject:v37];
  [v22 addObject:v36];
  if (_os_feature_enabled_impl())
  {
    [v22 addObject:v35];
  }

  [v22 addObject:v33];
  [v22 addObject:v32];
  [v22 addObject:v29];
  [v22 addObject:v28];
  [v22 addObject:v31];
  [v22 addObject:v30];
  [v22 addObject:v27];
  [v22 addObject:v26];
  [v22 addObject:v21];
  v25 = [v22 copy];

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)a3 accessory:(id)a4 recordingManagementService:(id)a5 featuresDataSource:(id)a6 notificationCenter:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v14)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v15)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v18 = v17;
  if (!v17)
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
    objc_storeStrong(&v19->_workQueue, a3);
    objc_storeWeak(&v20->_accessory, v14);
    objc_storeStrong(&v20->_recordingService, a5);
    objc_storeStrong(&v20->_notificationCenter, a7);
    objc_storeStrong(&v20->_featuresDataSource, a6);
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCAD78] UUID];
    v23 = [v22 UUIDString];
    v24 = [v21 stringWithFormat:@"%@.HMDCameraRecordingSettingsControl.%@", @"com.apple.HomeKitDaemon.Local", v23];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = v24;

    v26 = [MEMORY[0x277CBEB18] array];
    pendingConfigureCompletionHandlers = v20->_pendingConfigureCompletionHandlers;
    v20->_pendingConfigureCompletionHandlers = v26;
  }

  return v20;
}

- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)a3 accessory:(id)a4 recordingManagementService:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[HMDFeaturesDataSource defaultDataSource];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [(HMDCameraRecordingSettingsControl *)self initWithWorkQueue:v10 accessory:v9 recordingManagementService:v8 featuresDataSource:v11 notificationCenter:v12];

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t70_130383 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t70_130383, &__block_literal_global_202_130384);
  }

  v3 = logCategory__hmf_once_v71_130385;

  return v3;
}

uint64_t __48__HMDCameraRecordingSettingsControl_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v71_130385;
  logCategory__hmf_once_v71_130385 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)audioCodecForCodecConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 codec];
  v5 = [HMDCameraRecordingSettingsControl isSupportedAudioCodec:v4];

  if (v5)
  {
    v6 = [v3 codec];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)audioBitRateForCodecConfiguration:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 parameters];
  v4 = [v3 bitRateModes];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 type] < 2)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (id)videoCodecForCodecConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 codec];
  LODWORD(a1) = [a1 isSupportedVideoCodec:v5];

  if (a1)
  {
    v6 = [v4 codec];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)h264ProfileForCodecConfiguration:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 parameters];
  v4 = [v3 profiles];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([HMDCameraRecordingSettingsControl isSupportedH264Profile:v8])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  block[4] = a1;
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
  v2 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:3 bitRate:&unk_2866291B8];
  v3 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:1 bitRate:&unk_2866291D0];
  v4 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:2 bitRate:&unk_2866291E8];
  v5 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:4 bitRate:&unk_2866291B8];
  v6 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:5 bitRate:&unk_2866291B8];
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
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Preferred audio configuration order: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

@end