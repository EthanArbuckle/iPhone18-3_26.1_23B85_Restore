@interface HMDHAPMediaProfile
- (BOOL)_updateAudioControl:(id)a3;
- (BOOL)_updatePlayback:(id)a3;
- (BOOL)_updateRefreshPlayback:(id)a3;
- (HMDCharacteristic)smartSpeakerCurrentMediaStateCharacteristic;
- (HMDCharacteristic)smartSpeakerVolumeCharacteristic;
- (HMDHAPMediaProfile)initWithMediaServices:(id)a3;
- (id)_allCharacteristicsToMonitor;
- (id)_mediaSessionStateFromProfile;
- (id)_smartSpeakerAirPlayEnableCharacteristic;
- (id)_smartSpeakerAirPlayEnableReadRequest;
- (id)_smartSpeakerCurrentMediaStateReadRequest;
- (id)_smartSpeakerMutedCharacteristic;
- (id)_smartSpeakerMutedReadRequest;
- (id)_smartSpeakerMutedWriteRequestWithMuted:(id)a3;
- (id)_smartSpeakerTargetMediaStateCharacteristic;
- (id)_smartSpeakerTargetMediaStateWriteRequestWithPlaybackState:(id)a3;
- (id)_smartSpeakerVolumeReadRequest;
- (id)_smartSpeakerVolumeWriteRequestWithVolumePercentage:(id)a3;
- (id)mediaSessionFromProfile;
- (id)playStateWriteRequestWithPlaybackState:(int64_t)a3;
- (int64_t)airPlayEnable;
- (void)_disableCharacteristicNotifications;
- (void)_handleCharacteristicChanges:(id)a3;
- (void)_notifyProfileSettingsUpdated:(id)a3;
- (void)_updateCharacteristicChanges;
- (void)_updateCurrentMediaState:(id)a3 volumePercentage:(id)a4 muted:(id)a5 enable:(id)a6 message:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)handleAccessoryConfigured:(id)a3;
- (void)handleCharacteristicsUpdated:(id)a3;
- (void)handleHomeCharacteristicValuesChanged:(id)a3;
- (void)handlePrimaryResidentChanged:(id)a3;
- (void)handleResidentAdded:(id)a3;
- (void)registerForNotifications;
- (void)setAirPlayEnable:(int64_t)a3;
- (void)setEnable:(int64_t)a3 completionHandler:(id)a4;
- (void)updateMediaSessionState:(id)a3 usingCharacteristics:(id)a4;
- (void)updateMediaSessionState:(id)a3 usingServices:(id)a4;
@end

@implementation HMDHAPMediaProfile

- (void)setEnable:(int64_t)a3 completionHandler:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 < 2)
  {
    v8 = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = [(HMDHAPMediaProfile *)self _smartSpeakerAirPlayEnableCharacteristic];
      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3 == 1];
      v13 = [v11 authorizationData];
      v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v11 value:v12 authorizationData:v13 type:0];

      if (v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v18;
          v38 = 2048;
          v39 = a3;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Set airplay enable %zd", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        objc_initWeak(buf, v16);
        v35 = v14;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        v20 = [(HMDAccessoryProfile *)v16 workQueue];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __50__HMDHAPMediaProfile_setEnable_completionHandler___block_invoke;
        v31[3] = &unk_278684638;
        objc_copyWeak(v34, buf);
        v21 = v14;
        v32 = v21;
        v33 = v6;
        v34[1] = a3;
        [v10 writeCharacteristicValues:v19 source:1160 queue:v20 completionHandler:v31];

        objc_destroyWeak(v34);
        objc_destroyWeak(buf);
      }

      else
      {
LABEL_14:
        v22 = objc_autoreleasePoolPush();
        v23 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v25;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set AirPlay Enable] failed to create AirPlay enable write request", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (v6)
        {
          (*(v6 + 2))(v6, v21);
        }
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Set AirPlay Enable] accessory not part of profile", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (v6)
      {
        (*(v6 + 2))(v6, v11);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (v6)
    {
      (*(v6 + 2))(v6, v7);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __50__HMDHAPMediaProfile_setEnable_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v36 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v40;
      do
      {
        v9 = 0;
        v37 = v6;
        do
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v39 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v46 = v18;
              v47 = 2112;
              v48 = v19;
              v49 = 2112;
              v50 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v37;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"0000025B-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setAirPlayEnable:v36[7]];
              v43 = @"settings-airplay";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "airPlayEnable")}];
              v44 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v36[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v35;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v36[4];
      *buf = 138543618;
      v46 = v30;
      v47 = 2112;
      v48 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v36[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_notifyProfileSettingsUpdated:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"HMDHAPMediaProfileUpdatedNotification" object:self userInfo:v5];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMDHAPMediaProfile;
  [(HMDMediaProfile *)&v7 encodeWithCoder:v4];
  v5 = [(HMDMediaProfile *)self mediaSession];

  if (!v5)
  {
    v6 = [(HMDHAPMediaProfile *)self mediaSessionFromProfile];
    [v4 encodeObject:v6 forKey:*MEMORY[0x277CD08D8]];
  }
}

- (void)_updateCurrentMediaState:(id)a3 volumePercentage:(id)a4 muted:(id)a5 enable:(id)a6 message:(id)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12 || v13 || v14 || v15)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    v18 = v17;
    if (v12)
    {
      [v17 setValue:v12 forKey:*MEMORY[0x277CD0938]];
    }

    if (v13)
    {
      [v18 setValue:v13 forKey:*MEMORY[0x277CD09B0]];
    }

    if (v14)
    {
      [v18 setValue:v14 forKey:*MEMORY[0x277CD0928]];
    }

    v42 = v18;
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    if (v15)
    {
      v20 = [v15 integerValue];
      v21 = v20 == 1 ? 1 : -1;
      v22 = v20 ? v21 : 0;
      if ([(HMDHAPMediaProfile *)self airPlayEnable]!= v22)
      {
        [(HMDHAPMediaProfile *)self setAirPlayEnable:v22];
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHAPMediaProfile airPlayEnable](self, "airPlayEnable")}];
        [v19 setValue:v23 forKey:@"settings-airplay"];
      }
    }

    v40 = v19;
    v41 = v15;
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138544130;
      v44 = v27;
      v45 = 2112;
      v46 = v12;
      v47 = 2112;
      v48 = v13;
      v49 = 2112;
      v50 = v14;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Notifying XPC clients of updated current media state %@, volume %@, muted %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    v28 = objc_alloc(MEMORY[0x277D0F820]);
    v29 = [(HMDAccessoryProfile *)v25 uniqueIdentifier];
    v30 = [v28 initWithTarget:v29];

    v31 = MEMORY[0x277D0F848];
    v32 = *MEMORY[0x277CD0940];
    v33 = [v42 copy];
    v34 = [v31 messageWithName:v32 destination:v30 payload:v33];

    v35 = v16;
    v36 = [v16 identifier];
    if (v36)
    {
      [v34 setIdentifier:v36];
    }

    [v34 setRequiresSPIEntitlement];
    v37 = [(HMDAccessoryProfile *)v25 msgDispatcher];
    v38 = [v34 copy];
    [v37 sendMessage:v38 completionHandler:0];

    [(HMDHAPMediaProfile *)v25 _notifyProfileSettingsUpdated:v40];
    v16 = v35;
    v15 = v41;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateAudioControl:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = HMDHAPMediaProfile;
  if (![(HMDMediaProfile *)&v37 _updateAudioControl:v4])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No local media session for hapMediaProfile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [v4 numberForKey:*MEMORY[0x277CD0908]];
    v11 = [v4 numberForKey:*MEMORY[0x277CD08F0]];
    if (v10 | v11)
    {
      v12 = [(HMDAccessoryProfile *)v7 accessory];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (!v14)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = v7;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v20;
          v40 = 2112;
          v41 = v18;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Updating Audio Control] accessory not part of profile (%@)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v14 = 0;
        v5 = 0;
        goto LABEL_33;
      }

      v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
      if (v10)
      {
        v16 = [(HMDHAPMediaProfile *)v7 _smartSpeakerVolumeWriteRequestWithVolumePercentage:v10];
        if (v16)
        {
          [v15 addObject:v16];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v21 = v7;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543362;
            v39 = v23;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Updating Audio Control] smart speaker volume is not available", buf, 0xCu);
          }

          objc_autoreleasePoolPop(context);
        }
      }

      if (v11)
      {
        v24 = [(HMDHAPMediaProfile *)v7 _smartSpeakerMutedWriteRequestWithMuted:v11];
        if (v24)
        {
          [v15 addObject:v24];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v25 = v7;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543362;
            v39 = v27;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Updating Audio Control] smart speaker muted is not available", buf, 0xCu);
          }

          objc_autoreleasePoolPop(context);
        }
      }

      if ([v15 count])
      {
        objc_initWeak(buf, v7);
        v28 = [(HMDAccessoryProfile *)v7 workQueue];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __42__HMDHAPMediaProfile__updateAudioControl___block_invoke;
        v33[3] = &unk_278684610;
        objc_copyWeak(&v36, buf);
        v34 = v15;
        v35 = v4;
        [v14 writeCharacteristicValues:v34 source:1160 message:v35 queue:v28 completionHandler:v33];

        objc_destroyWeak(&v36);
        objc_destroyWeak(buf);
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
        [v4 respondWithError:v29];
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [v4 respondWithError:v14];
    }

    v5 = 1;
LABEL_33:

    goto LABEL_34;
  }

  v5 = 1;
LABEL_34:

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

void __42__HMDHAPMediaProfile__updateAudioControl___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v31 = a1;
    v32 = v3;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v36;
      do
      {
        v9 = 0;
        v33 = v6;
        do
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 value];
              v20 = [v10 error];
              *buf = 138543874;
              v40 = v18;
              v41 = 2112;
              v42 = v19;
              v43 = 2112;
              v44 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write value %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v33;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v28 = [*(v31 + 40) responseHandler];

    if (v28)
    {
      v29 = [*(v31 + 40) responseHandler];
      (v29)[2](v29, v7, 0);
    }

    v3 = v32;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v25 = v24 = a1;
      v26 = *(v24 + 32);
      *buf = 138543618;
      v40 = v25;
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid response with write values %@", buf, 0x16u);

      a1 = v24;
    }

    objc_autoreleasePoolPop(v21);
    v27 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    [v27 respondWithError:v7];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentChanged:(id)a3
{
  v4 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDHAPMediaProfile_handlePrimaryResidentChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __51__HMDHAPMediaProfile_handlePrimaryResidentChanged___block_invoke(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 home];
  v4 = [v3 residentDeviceManager];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = v4;
  v5 = [v4 residentDevices];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v24 = *v27;
    v25 = v1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 device];
        if ([v11 isCurrentDevice])
        {
          v12 = [v10 capabilities];
          v13 = [v12 supportsSiriEndpointSetup];

          if (v13)
          {
            v14 = [v10 isConfirmed];
            v15 = objc_autoreleasePoolPush();
            v16 = *(v1 + 32);
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              HMFBooleanToString();
              v20 = v19 = v5;
              *buf = 138543618;
              v31 = v18;
              v32 = 2112;
              v33 = v20;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Current device is primary:%@ and does not support home hub", buf, 0x16u);

              v5 = v19;
              v8 = v24;

              v1 = v25;
            }

            objc_autoreleasePoolPop(v15);
            v21 = *(v1 + 32);
            if (v14)
            {
              [v21 _setCharacteristicNotifications:1];
            }

            else
            {
              [v21 _disableCharacteristicNotifications];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentAdded:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMDHAPMediaProfile_handleResidentAdded___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__HMDHAPMediaProfile_handleResidentAdded___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [v4 device];
    v6 = v5;
    if (v5 && [v5 isCurrentDevice])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 32) name];
        v12 = [v6 identifier];
        v13 = [v12 UUIDString];
        v15 = 138543874;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Current device was added as a resident device (%@ / %@) notification.", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 40) _setCharacteristicNotifications:1];
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_disableCharacteristicNotifications
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHAPMediaProfile *)self _allCharacteristicsToMonitor];
  if ([v3 count])
  {
    v4 = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Disabling notifications for characteristics :%@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDHAPMediaProfile *)v8 clientIdentifier];
    [v6 enableNotification:0 forCharacteristics:v3 message:0 clientIdentifier:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_allCharacteristicsToMonitor
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  v4 = [(HMDHAPMediaProfile *)self _smartSpeakerAirPlayEnableCharacteristic];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)handleCharacteristicsUpdated:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDHAPMediaProfile_handleCharacteristicsUpdated___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __51__HMDHAPMediaProfile_handleCharacteristicsUpdated___block_invoke(uint64_t a1)
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
  result = [*(a1 + 32) _updateCharacteristicChanges];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleAccessoryConfigured:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDHAPMediaProfile_handleAccessoryConfigured___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __48__HMDHAPMediaProfile_handleAccessoryConfigured___block_invoke(uint64_t a1)
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
  [*(a1 + 32) _updateCharacteristicChanges];
  result = [*(a1 + 32) _setCharacteristicNotifications:1];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleHomeCharacteristicValuesChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  if ([v6 count])
  {
    v7 = [(HMDAccessoryProfile *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HMDHAPMediaProfile_handleHomeCharacteristicValuesChanged___block_invoke;
    block[3] = &unk_27868A750;
    v18 = v6;
    v19 = self;
    dispatch_async(v7, block);

    v8 = v18;
  }

  else
  {
    v9 = [v4 userInfo];
    v8 = [v9 hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];

    v10 = [(HMDAccessoryProfile *)self accessory];
    v11 = [v10 uuid];
    v12 = [v11 UUIDString];
    v13 = [v8 hmf_dictionaryForKey:v12];

    if (v13)
    {
      v14 = [(HMDAccessoryProfile *)self workQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__HMDHAPMediaProfile_handleHomeCharacteristicValuesChanged___block_invoke_2;
      v15[3] = &unk_27868A750;
      v15[4] = self;
      v16 = v13;
      dispatch_async(v14, v15);
    }
  }
}

void __60__HMDHAPMediaProfile_handleHomeCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(v1 + 32);
  v2 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v30;
    v21 = *v30;
    v22 = v1;
    do
    {
      v5 = 0;
      v23 = v3;
      do
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * v5);
        v7 = [*(v1 + 40) accessory];
        v8 = [v6 accessory];
        v9 = HMFEqualObjects();

        if (v9)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v10 = [*(v1 + 40) services];
          v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [*(*(&v25 + 1) + 8 * i) instanceID];
                v16 = [v6 service];
                v17 = [v16 instanceID];
                v18 = HMFEqualObjects();

                if (v18)
                {
                  [v20 addObject:v6];
                  goto LABEL_17;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          v4 = v21;
          v1 = v22;
          v3 = v23;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v3);
  }

  [*(v1 + 40) _handleCharacteristicChanges:v20];
  v19 = *MEMORY[0x277D85DE8];
}

void __60__HMDHAPMediaProfile_handleHomeCharacteristicValuesChanged___block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v35 = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = a1;
  obj = *(a1 + 40);
  v27 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v27)
  {
    v26 = *v46;
    v36 = *MEMORY[0x277CD2128];
    do
    {
      v6 = 0;
      do
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v6;
        v30 = *(*(&v45 + 1) + 8 * v6);
        v7 = [v5 numberFromString:?];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v33 = [*(v31 + 32) services];
        v8 = [v33 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v42;
          v29 = *v42;
          do
          {
            v11 = 0;
            v32 = v9;
            do
            {
              if (*v42 != v10)
              {
                objc_enumerationMutation(v33);
              }

              v12 = [*(*(&v41 + 1) + 8 * v11) instanceID];
              v13 = HMFEqualObjects();

              if (v13)
              {
                v34 = v11;
                v14 = [*(v31 + 40) hmf_dictionaryForKey:v30];
                v37 = 0u;
                v38 = 0u;
                v39 = 0u;
                v40 = 0u;
                v15 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v38;
                  do
                  {
                    for (i = 0; i != v16; ++i)
                    {
                      if (*v38 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = *(*(&v37 + 1) + 8 * i);
                      v20 = [v5 numberFromString:v19];
                      v21 = [v4 findCharacteristic:v20 forService:v7];
                      if (v21)
                      {
                        v22 = [v14 hmf_dictionaryForKey:v19];
                        v23 = [v22 hmf_dataForKey:v36];
                        if (v23)
                        {
                        }

                        else
                        {
                          [v35 addObject:v21];
                        }
                      }
                    }

                    v16 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
                  }

                  while (v16);
                }

                v10 = v29;
                v9 = v32;
                v11 = v34;
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [v33 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v9);
        }

        v6 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v27);
  }

  if ([v35 count])
  {
    [*(v31 + 32) _handleCharacteristicChanges:v35];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_updateCharacteristicChanges
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(HMDAccessoryProfile *)self services];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) characteristics];
        [v3 addObjectsFromArray:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(HMDHAPMediaProfile *)self _handleCharacteristicChanges:v3];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicChanges:(id)a3
{
  v32 = self;
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v3)
  {
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v5 = 0;
    goto LABEL_35;
  }

  v4 = v3;
  v33 = 0;
  v35 = 0;
  v36 = 0;
  v5 = 0;
  v6 = *v39;
  v7 = *MEMORY[0x277CCF840];
  v8 = *MEMORY[0x277CCFBA8];
  v34 = *MEMORY[0x277CCF980];
  do
  {
    v9 = 0;
    do
    {
      if (*v39 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v38 + 1) + 8 * v9);
      v11 = [v10 type];
      v12 = [v11 isEqualToString:v7];

      if (v12)
      {
        v13 = [v10 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v16 = MEMORY[0x277CCABB0];
        v17 = [v15 integerValue] - 1;
        if (v17 > 4)
        {
          v18 = 1;
        }

        else
        {
          v18 = qword_22A587F08[v17];
        }

        [v16 numberWithInteger:v18];
        v5 = v23 = v5;
LABEL_19:

        goto LABEL_20;
      }

      v19 = [v10 type];
      v20 = [v19 isEqualToString:v8];

      if (v20)
      {
        v21 = [v10 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v15 = v22;

        __percentageForCharacteristicValue(0, v15);
        v36 = v23 = v36;
        goto LABEL_19;
      }

      v24 = [v10 type];
      v25 = [v24 isEqualToString:v34];

      if (v25)
      {
        v23 = [v10 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v23;
        }

        else
        {
          v26 = 0;
        }

        v15 = v35;
        v35 = v26;
        goto LABEL_19;
      }

      v27 = [v10 type];
      v28 = [v27 isEqualToString:@"0000025B-0000-1000-8000-0026BB765291"];

      if (v28)
      {
        v23 = [v10 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v23;
        }

        else
        {
          v29 = 0;
        }

        v15 = v33;
        v33 = v29;
        goto LABEL_19;
      }

LABEL_20:
      ++v9;
    }

    while (v4 != v9);
    v30 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    v4 = v30;
  }

  while (v30);
LABEL_35:
  [(HMDHAPMediaProfile *)v32 _updateCurrentMediaState:v5 volumePercentage:v36 muted:v35 enable:v33 message:0, v32];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaSessionState:(id)a3 usingCharacteristics:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v10 = *MEMORY[0x277CCF840];
    v11 = *MEMORY[0x277CCFBA8];
    v34 = *MEMORY[0x277CCF980];
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        v14 = [v13 type];
        v15 = [v14 isEqualToString:v10];

        if (v15)
        {
          v16 = [v13 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          v19 = [v18 integerValue];
          if ((v19 - 1) > 4)
          {
            v20 = 1;
          }

          else
          {
            v20 = qword_22A587F08[v19 - 1];
          }

          [v5 setPlaybackState:v20];
        }

        else
        {
          v21 = [v13 type];
          v22 = [v21 isEqualToString:v11];

          if (v22)
          {
            v23 = [v13 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            v26 = __percentageForCharacteristicValue(0, v25);

            [v5 setVolume:v26];
          }

          else
          {
            v27 = [v13 type];
            v28 = [v27 isEqualToString:v34];

            if (v28)
            {
              v29 = [v13 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = v29;
              }

              else
              {
                v30 = 0;
              }

              v31 = v30;

              [v5 setMuted:v31];
            }
          }
        }

        ++v12;
      }

      while (v8 != v12);
      v32 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v8 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaSessionState:(id)a3 usingServices:(id)a4
{
  v9 = a3;
  v6 = [a4 na_filter:&__block_literal_global_246417];
  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v8 = [v7 characteristics];
    [(HMDHAPMediaProfile *)self updateMediaSessionState:v9 usingCharacteristics:v8];
  }
}

uint64_t __60__HMDHAPMediaProfile_updateMediaSessionState_usingServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_mediaSessionStateFromProfile
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self accessory];
  if (v3)
  {
    v4 = [HMDMediaSessionState alloc];
    v5 = [v3 identifier];
    v6 = [(HMDMediaSessionState *)v4 initWithSessionIdentifier:v5];

    if ([v3 isReachable])
    {
      v7 = [(HMDAccessoryProfile *)self services];
      [(HMDHAPMediaProfile *)self updateMediaSessionState:v6 usingServices:v7];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive media session state from profile due to no accessory", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)mediaSessionFromProfile
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHAPMediaProfile *)self _mediaSessionStateFromProfile];
  if (v3)
  {
    v4 = [HMDMediaSession alloc];
    v13 = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v6 = [(HMDMediaSession *)v4 initWithEndpoint:0 mediaProfiles:v5 state:v3];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive media session from profile due to no media session state from profile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_updateRefreshPlayback:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = HMDHAPMediaProfile;
  v39 = a3;
  if (![(HMDMediaProfile *)&v51 _updateRefreshPlayback:?])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@No local media session for hapMediaProfile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMDAccessoryProfile *)v5 accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v37 = v9;

    v38 = v37 != 0;
    if (v37)
    {
      v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
      v35 = [(HMDHAPMediaProfile *)v5 _smartSpeakerAirPlayEnableReadRequest];
      if (v35)
      {
        [v42 addObject:v35];
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        v15 = v5;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v54 = v17;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] smart speaker airplay enable state is not available", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
      }

      [v39 arrayForKey:{*MEMORY[0x277CD0948], v35}];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      obj = v48 = 0u;
      v18 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v18)
      {
        v19 = *v48;
        v20 = *MEMORY[0x277CD0938];
        v21 = *MEMORY[0x277CD09B0];
        v40 = *MEMORY[0x277CD0928];
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v48 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v47 + 1) + 8 * i);
            if ([v23 isEqual:v20])
            {
              v24 = [(HMDHAPMediaProfile *)v5 _smartSpeakerCurrentMediaStateReadRequest];
              if (!v24)
              {
                v25 = objc_autoreleasePoolPush();
                v26 = v5;
                v27 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v28 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v54 = v28;
                  _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] smart speaker current media state is not available", buf, 0xCu);
                }

LABEL_39:

                objc_autoreleasePoolPop(v25);
                v24 = 0;
                goto LABEL_40;
              }
            }

            else if ([v23 isEqual:v21])
            {
              v24 = [(HMDHAPMediaProfile *)v5 _smartSpeakerVolumeReadRequest];
              if (!v24)
              {
                v25 = objc_autoreleasePoolPush();
                v26 = v5;
                v27 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v29 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v54 = v29;
                  _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] smart speaker volume is not available", buf, 0xCu);
                }

                goto LABEL_39;
              }
            }

            else
            {
              if (![v23 isEqual:v40])
              {
                continue;
              }

              v24 = [(HMDHAPMediaProfile *)v5 _smartSpeakerMutedReadRequest];
              if (!v24)
              {
                v25 = objc_autoreleasePoolPush();
                v26 = v5;
                v27 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v30 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v54 = v30;
                  _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] smart speaker muted is not available", buf, 0xCu);
                }

                goto LABEL_39;
              }
            }

            [v42 addObject:v24];
LABEL_40:
          }

          v18 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v18);
      }

      objc_initWeak(buf, v5);
      v31 = [(HMDAccessoryProfile *)v5 workQueue];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __45__HMDHAPMediaProfile__updateRefreshPlayback___block_invoke;
      v43[3] = &unk_278684610;
      objc_copyWeak(&v46, buf);
      v32 = v42;
      v44 = v32;
      v45 = v39;
      [v37 readCharacteristicValues:v32 source:1160 queue:v31 completionHandler:v43];

      objc_destroyWeak(&v46);
      objc_destroyWeak(buf);
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v5;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v13;
        v55 = 2112;
        v56 = v11;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] accessory not part of profile (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    goto LABEL_45;
  }

  v38 = 1;
LABEL_45:

  v33 = *MEMORY[0x277D85DE8];
  return v38;
}

void __45__HMDHAPMediaProfile__updateRefreshPlayback___block_invoke(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v51 = a1;
    v52 = v3;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (!v5)
    {
      v7 = 0;
      v53 = 0;
      v55 = 0;
      v57 = 0;
      v59 = 0;
      goto LABEL_44;
    }

    v6 = v5;
    v7 = 0;
    v53 = 0;
    v55 = 0;
    v57 = 0;
    v59 = 0;
    v8 = *v62;
    v58 = *MEMORY[0x277CCF840];
    v56 = *MEMORY[0x277CCFBA8];
    v54 = *MEMORY[0x277CCF980];
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v62 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v61 + 1) + 8 * v9);
        v11 = [v10 error];

        if (!v11)
        {
          v19 = [v10 request];
          v20 = [v19 characteristic];

          v21 = [v20 type];
          v22 = [v21 isEqual:v58];

          if (v22)
          {
            v23 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            v26 = MEMORY[0x277CCABB0];
            v27 = [v25 integerValue] - 1;
            if (v27 > 4)
            {
              v28 = 1;
            }

            else
            {
              v28 = qword_22A587F08[v27];
            }

            [v26 numberWithInteger:v28];
            v59 = v33 = v59;
            goto LABEL_24;
          }

          v29 = [v20 type];
          v30 = [v29 isEqual:v56];

          if (v30)
          {
            v31 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = v31;
            }

            else
            {
              v32 = 0;
            }

            v25 = v32;

            __percentageForCharacteristicValue(v20, v25);
            v57 = v33 = v57;
            goto LABEL_24;
          }

          v34 = [v20 type];
          v35 = [v34 isEqual:v54];

          if (v35)
          {
            v33 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = v33;
            }

            else
            {
              v36 = 0;
            }

            v25 = v55;
            v55 = v36;
            goto LABEL_24;
          }

          v37 = [v20 type];
          v38 = [v37 isEqualToString:@"0000025B-0000-1000-8000-0026BB765291"];

          if (v38)
          {
            v33 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = v33;
            }

            else
            {
              v39 = 0;
            }

            v25 = v53;
            v53 = v39;
LABEL_24:
          }

          goto LABEL_26;
        }

        v12 = [v10 error];

        v13 = objc_autoreleasePoolPush();
        v14 = WeakRetained;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v17 = v16 = WeakRetained;
          v18 = [v10 error];
          *buf = 138543618;
          v67 = v17;
          v68 = 2112;
          v69 = v18;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Read failed with error %@", buf, 0x16u);

          WeakRetained = v16;
        }

        objc_autoreleasePoolPop(v13);
        v7 = v12;
LABEL_26:
        ++v9;
      }

      while (v6 != v9);
      v40 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      v6 = v40;
      if (!v40)
      {
LABEL_44:

        v47 = v59;
        [WeakRetained _updateCurrentMediaState:v59 volumePercentage:v57 muted:v55 enable:v53 message:*(v51 + 40)];
        v48 = [*(v51 + 40) responseHandler];

        if (v48)
        {
          v49 = [*(v51 + 40) responseHandler];
          (v49)[2](v49, v7, 0);
        }

        v3 = v52;
        goto LABEL_47;
      }
    }
  }

  v41 = objc_autoreleasePoolPush();
  v42 = WeakRetained;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = HMFGetLogIdentifier();
    v45 = *(a1 + 32);
    *buf = 138543618;
    v67 = v44;
    v68 = 2112;
    v69 = v45;
    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v41);
  v46 = *(a1 + 40);
  v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
  [v46 respondWithError:v47];
LABEL_47:

  v50 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updatePlayback:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = HMDHAPMediaProfile;
  if ([(HMDMediaProfile *)&v31 _updatePlayback:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No local media session for hapMediaProfile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [v4 numberForKey:*MEMORY[0x277CD0938]];
    if (v10)
    {
      v11 = [(HMDAccessoryProfile *)v7 accessory];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        v14 = [(HMDHAPMediaProfile *)v7 _smartSpeakerTargetMediaStateWriteRequestWithPlaybackState:v10];
        v5 = v14 != 0;
        if (v14)
        {
          objc_initWeak(buf, v7);
          v32 = v14;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
          v16 = [(HMDAccessoryProfile *)v7 workQueue];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __38__HMDHAPMediaProfile__updatePlayback___block_invoke;
          v27[3] = &unk_278684610;
          objc_copyWeak(&v30, buf);
          v28 = v14;
          v29 = v4;
          [v13 writeCharacteristicValues:v15 source:1160 message:v29 queue:v16 completionHandler:v27];

          objc_destroyWeak(&v30);
          objc_destroyWeak(buf);
        }

        else
        {
          v21 = objc_autoreleasePoolPush();
          v22 = v7;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = HMFGetLogIdentifier();
            *buf = 138543362;
            v34 = v24;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Update Playback] failed to create target media state write request", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v21);
        }
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        v18 = v7;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v20;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Update Playback] accessory not part of profile", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        v13 = 0;
        v5 = 0;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [v4 respondWithError:v13];
      v5 = 1;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

void __38__HMDHAPMediaProfile__updatePlayback___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v28 = a1;
    v29 = v3;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v33;
      do
      {
        v9 = 0;
        v30 = v6;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v37 = v18;
              v38 = 2112;
              v39 = v19;
              v40 = 2112;
              v41 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v30;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    [*(v28 + 40) respondWithPayload:0 error:v7];
    v3 = v29;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 32);
      *buf = 138543618;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    [v26 respondWithError:v7];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (int64_t)airPlayEnable
{
  os_unfair_lock_lock_with_options();
  airPlayEnable = self->_airPlayEnable;
  os_unfair_lock_unlock(&self->super._lock.lock);
  return airPlayEnable;
}

- (void)setAirPlayEnable:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_airPlayEnable = a3;

  os_unfair_lock_unlock(&self->super._lock.lock);
}

- (id)_smartSpeakerAirPlayEnableReadRequest
{
  v2 = [(HMDHAPMediaProfile *)self _smartSpeakerAirPlayEnableCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_smartSpeakerAirPlayEnableCharacteristic
{
  v2 = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [v2 findCharacteristicWithType:@"0000025B-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_smartSpeakerMutedWriteRequestWithMuted:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMediaProfile *)self _smartSpeakerMutedCharacteristic];
  v6 = v5;
  if (v4 | v5)
  {
    v7 = [v5 authorizationData];
    v8 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v6 value:v4 authorizationData:v7 type:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_smartSpeakerMutedReadRequest
{
  v2 = [(HMDHAPMediaProfile *)self _smartSpeakerMutedCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_smartSpeakerMutedCharacteristic
{
  v2 = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCF980]];

  return v3;
}

- (id)_smartSpeakerVolumeWriteRequestWithVolumePercentage:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMediaProfile *)self smartSpeakerVolumeCharacteristic];
  v6 = v5;
  if (v4 | v5)
  {
    v7 = 0;
    if (v4 && v5)
    {
      [v4 floatValue];
      v9 = v8;
      v10 = [v6 metadata];
      v11 = [v10 minimumValue];
      if (v11)
      {
        v12 = [v10 minimumValue];
        [v12 floatValue];
        v14 = v13;
      }

      else
      {
        v14 = 0.0;
      }

      v16 = [v10 maximumValue];
      if (v16)
      {
        v17 = [v10 maximumValue];
        [v17 floatValue];
        v19 = v18;
      }

      else
      {
        v19 = 100.0;
      }

      v20 = v14 + (v9 * (v19 - v14));
      v21 = [v10 stepValue];
      v23 = v21;
      if (v21)
      {
        [v21 floatValue];
        v20 = *&v22 * roundf(v20 / *&v22);
      }

      *&v22 = v20;
      v7 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    }

    v24 = [v6 authorizationData];
    v15 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v6 value:v7 authorizationData:v24 type:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_smartSpeakerVolumeReadRequest
{
  v2 = [(HMDHAPMediaProfile *)self smartSpeakerVolumeCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDCharacteristic)smartSpeakerVolumeCharacteristic
{
  v2 = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCFBA8]];

  return v3;
}

- (id)_smartSpeakerCurrentMediaStateReadRequest
{
  v2 = [(HMDHAPMediaProfile *)self smartSpeakerCurrentMediaStateCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDCharacteristic)smartSpeakerCurrentMediaStateCharacteristic
{
  v2 = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCF840]];

  return v3;
}

- (id)_smartSpeakerTargetMediaStateWriteRequestWithPlaybackState:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMediaProfile *)self _smartSpeakerTargetMediaStateCharacteristic];
  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v4 integerValue];
    if (v7 > 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_22A587ED0[v7];
    }

    v10 = [v6 numberWithInteger:v8];
    v11 = [v5 authorizationData];
    v9 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v5 value:v10 authorizationData:v11 type:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)playStateWriteRequestWithPlaybackState:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(HMDHAPMediaProfile *)self _smartSpeakerTargetMediaStateWriteRequestWithPlaybackState:v4];

  return v5;
}

- (id)_smartSpeakerTargetMediaStateCharacteristic
{
  v2 = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCFB48]];

  return v3;
}

- (void)registerForNotifications
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDHAPMediaProfile;
  [(HMDMediaProfile *)&v18 registerForNotifications];
  v3 = [(HMDAccessoryProfile *)self accessory];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 home];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v4];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:v5];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:v4];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel_handleCharacteristicsUpdated_ name:@"kHMDNotificationCharacteristicsUpdated" object:v4];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel_handleResidentAdded_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = [v5 residentDeviceManager];
    [v11 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:v12];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Not registering for notifications as accessory is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDHAPMediaProfile)initWithMediaServices:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 accessory];
  if (v6)
  {
    v7 = [objc_opt_class() uniqueIdentifierFromAccessory:v6];
    v18.receiver = self;
    v18.super_class = HMDHAPMediaProfile;
    v8 = [(HMDAccessoryProfile *)&v18 initWithAccessory:v6 uniqueIdentifier:v7 services:v4];
    v9 = v8;
    if (v8)
    {
      v8->_airPlayEnable = -1;
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDHAPMediaProfile.%@", @"com.apple.HomeKitDaemon.Local", v7];
      clientIdentifier = v9->_clientIdentifier;
      v9->_clientIdentifier = v10;
    }

    self = v9;

    v12 = self;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot create media profile, cannot determine accessory from services %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

@end