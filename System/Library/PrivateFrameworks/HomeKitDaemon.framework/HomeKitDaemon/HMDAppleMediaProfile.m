@interface HMDAppleMediaProfile
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)_updatePlayback:(id)a3;
- (BOOL)_updateRefreshPlayback:(id)a3;
- (HMDAppleMediaAccessory)mediaAccessory;
- (HMDAppleMediaProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5 workQueue:(id)a6;
- (HMDMediaSystem)mediaSystem;
- (void)_handleSetValue:(id)a3 withRequestProperty:(id)a4 withCompletionHandler:(id)a5;
- (void)configureWithMessageDispatcher:(id)a3 configurationTracker:(id)a4;
- (void)didFinishLoadingRequestForController:(id)a3;
- (void)didUpdateSleepWakeState:(unint64_t)a3;
- (void)registerForMessages;
- (void)sessionAudioControlUpdated:(id)a3;
- (void)setMediaSession:(id)a3;
- (void)setMediaSystem:(id)a3;
@end

@implementation HMDAppleMediaProfile

- (void)didUpdateSleepWakeState:(unint64_t)a3
{
  v55[2] = *MEMORY[0x277D85DE8];
  v5 = [(HMDMediaProfile *)self mediaSession];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CBEB38];
    v54[0] = *MEMORY[0x277CD09A8];
    v8 = [v5 uuid];
    v9 = [v8 UUIDString];
    v54[1] = @"force-notify";
    v55[0] = v9;
    v55[1] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
    v11 = [v7 dictionaryWithDictionary:v10];

    if (a3)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v11 setValue:v12 forKey:*MEMORY[0x277CD09A0]];
    }

    v13 = [v11 copy];
    [(HMDMediaProfile *)self handleSessionUpdatedNotification:v13];

    v14 = [(HMDAccessoryProfile *)self accessory];
    v15 = [v14 home];
    v16 = [v15 uuid];

    if (v16)
    {
      v47 = v11;
      v17 = [objc_alloc(MEMORY[0x277CD1730]) initWithSleepWakeState:a3];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v19 = v18;
      v20 = objc_alloc(MEMORY[0x277D174B0]);
      v21 = [v14 uuid];
      v22 = [v21 UUIDString];
      v23 = [v20 initWithSource:v22 cachePolicy:2 combineType:2 timestamp:v19];

      v24 = objc_alloc(MEMORY[0x277D174A0]);
      v46 = v17;
      v25 = [v17 protoData];
      v45 = v23;
      v26 = [v24 initWithEventData:v25 metadata:v23];

      v27 = MEMORY[0x277CD16F0];
      v28 = *MEMORY[0x277CCEA90];
      v29 = [v14 uuid];
      v30 = [v27 topicFromSuffixID:v28 homeUUID:v16 accessoryUUID:v29];

      v31 = [(HMDMediaProfile *)self eventForwarder];
      [v31 forwardEvent:v26 topic:v30 completion:0];

      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        [v6 uuid];
        v36 = v44 = v16;
        [v36 UUIDString];
        v37 = v43 = v26;
        *buf = 138543874;
        v49 = v35;
        v50 = 2112;
        v51 = v37;
        v52 = 2048;
        v53 = a3;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@didUpdateSleepWakeState called for mediaSession: %@ sw:%tu", buf, 0x20u);

        v26 = v43;
        v16 = v44;
      }

      objc_autoreleasePoolPop(v32);
      v11 = v47;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v41;
        v50 = 2112;
        v51 = v14;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to post sleep wake state event for accessory without home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)didFinishLoadingRequestForController:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v4 = [(HMDMediaProfile *)self mediaSession];
  if (v4)
  {
    v5 = [v45 response];
    v6 = [v5 copy];

    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [v4 uuid];
    v9 = [v8 UUIDString];
    [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD09A8]];

    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"force-notify"];
    v10 = [v6 state];
    if (v10 > 6)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_22A587F60[v10];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    [v7 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD0938]];

    v13 = [v6 tracklist];
    v14 = [v13 shuffleType];
    if (v14 == 1)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    if (v14 == 2)
    {
      v16 = 3;
    }

    else
    {
      v16 = v15;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [v7 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD0990]];

    v18 = [v6 tracklist];
    v19 = [v18 repeatType];
    if (v19 == 1)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    if (v19 == 2)
    {
      v21 = 3;
    }

    else
    {
      v21 = v20;
    }

    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
    [v7 setObject:v22 forKeyedSubscript:*MEMORY[0x277CD0960]];

    v23 = [v6 tracklist];
    v24 = [v23 uniqueIdentifier];
    [v7 setObject:v24 forKeyedSubscript:*MEMORY[0x277CD0920]];

    v25 = [v4 state];
    v26 = [v25 volume];
    [v7 setObject:v26 forKeyedSubscript:*MEMORY[0x277CD09B0]];

    v27 = [v7 copy];
    [(HMDMediaProfile *)self handleSessionUpdatedNotification:v27];

    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v43 = [v4 uuid];
      v32 = [v43 UUIDString];
      v39 = [v6 state];
      v42 = [v6 tracklist];
      v38 = [v42 shuffleType];
      v41 = [v6 tracklist];
      v37 = [v41 repeatType];
      v40 = [v4 state];
      v33 = [v40 volume];
      v34 = [v6 tracklist];
      [v34 uniqueIdentifier];
      v35 = v44 = v28;
      *buf = 138545154;
      v47 = v31;
      v48 = 2112;
      v49 = v32;
      v50 = 2048;
      v51 = v39;
      v52 = 2048;
      v53 = v38;
      v54 = 2048;
      v55 = v37;
      v56 = 2112;
      v57 = v33;
      v58 = 2112;
      v59 = v35;
      v60 = 2112;
      v61 = v7;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@didFinishLoadingRequestForController called for mediaSession:%@ pb:%tu s:%tu r:%tu v:%@ m:%@ userInfo:%@", buf, 0x52u);

      v28 = v44;
    }

    objc_autoreleasePoolPop(v28);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)sessionAudioControlUpdated:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleMediaProfile *)self mediaSystem];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Media profile is part of a media system - passing on handling the audio control  update notification for session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HMDAppleMediaProfile;
    [(HMDMediaProfile *)&v11 sessionAudioControlUpdated:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetValue:(id)a3 withRequestProperty:(id)a4 withCompletionHandler:(id)a5
{
  v61[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    _HMFPreconditionFailure();
  }

  v11 = v10;
  v12 = [(HMDAppleMediaProfile *)self mediaAccessory];
  v13 = [(__CFString *)v12 device];
  v51 = v13;
  if (v13)
  {
    v14 = v13;
    if (([(__CFString *)v12 isDeviceReachable]& 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v56 = v18;
        v57 = 2112;
        v58 = @"HMDMediaProfileSetPowerRequestKey";
        v59 = 2112;
        v60 = v12;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Attempting to send message: %@ to unreachable accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
    }

    v19 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      v49 = v8;
      v50 = v9;
      v52 = v9;
      v53 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v23 = MEMORY[0x277D0F848];
      v24 = [HMDRemoteDeviceMessageDestination alloc];
      v25 = [(HMDAccessoryProfile *)self uniqueIdentifier];
      v26 = [(HMDRemoteDeviceMessageDestination *)v24 initWithTarget:v25 device:v14];
      v27 = [v23 messageWithName:@"HMDMediaProfileSetPowerRequestKey" destination:v26 payload:v22];

      [v27 setResponseHandler:v11];
      if ([(__CFString *)v14 isCurrentDevice])
      {
        [(HMDAppleMediaProfile *)self _handleSetPower:v27];
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        v43 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543874;
          v56 = v45;
          v57 = 2112;
          v58 = v14;
          v59 = 2112;
          v60 = v50;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Sending remote message to device (%@) for set value execution with request property %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v42);
        [v27 setSecureRemote:1];
        v46 = +[HMDSecureRemoteMessageTransport defaultTransport];
        v47 = [v27 copy];
        [v46 sendMessage:v47 completionHandler:0];
      }

      v8 = v49;
      v32 = v50;
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v38;
        v57 = 2112;
        v58 = v19;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@The value %@ passed in is either nil or non NSNumber", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v22 = [HMDMediaPropertyRequest requestWithProperty:v9 mediaProfile:v36];
      v32 = v9;
      v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v27 = [HMDMediaPropertyResponse responseWithRequest:v22 error:v39];

      v54 = v27;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v41 = [HMDMediaPropertyResponse serializeResponses:v40];
      (v11)[2](v11, 0, v41);

      v21 = 0;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v31;
      v57 = 2112;
      v58 = v12;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@The device of Media Accessory %@ is not found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v21 = [HMDMediaPropertyRequest requestWithProperty:v9 mediaProfile:v29];
    v32 = v9;
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v22 = [HMDMediaPropertyResponse responseWithRequest:v21 error:v33];

    v61[0] = v22;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
    v34 = [HMDMediaPropertyResponse serializeResponses:v27];
    (v11)[2](v11, 0, v34);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateRefreshPlayback:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = HMDAppleMediaProfile;
  if (![(HMDMediaProfile *)&v30 _updateRefreshPlayback:v4])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@No local session for mediaProfile - attempting to redispatch the command to resident/device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v29 = 0;
    v9 = __lookupDeviceForRemoteCommands(v6, &v29);
    v21 = v29;
    if (v9)
    {
      v10 = [MEMORY[0x277CBEB18] array];
      [v4 arrayForKey:*MEMORY[0x277CD0948]];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v11 = v26 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v12)
      {
        v13 = *v26;
        v14 = *MEMORY[0x277CD0938];
        do
        {
          v15 = 0;
          do
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v11);
            }

            if ([*(*(&v25 + 1) + 8 * v15) isEqual:v14])
            {
              v16 = [HMDMediaPropertyRequest requestWithProperty:v14 mediaProfile:v6];
              [v10 addObject:v16];
            }

            ++v15;
          }

          while (v12 != v15);
          v12 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v12);
      }

      v17 = [(HMDAccessoryProfile *)v6 accessory];
      v18 = [v17 home];
      objc_initWeak(buf, v6);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __47__HMDAppleMediaProfile__updateRefreshPlayback___block_invoke;
      v22[3] = &unk_278689618;
      objc_copyWeak(&v24, buf);
      v23 = v4;
      [v18 redispatchMediaReadRequests:v10 viaDevice:v21 completion:v22];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      [v4 respondWithError:v10];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

void __47__HMDAppleMediaProfile__updateRefreshPlayback___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (WeakRetained)
  {
    [WeakRetained _handleMediaResponses:v7 message:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v5 respondWithError:v6];
  }
}

- (BOOL)_updatePlayback:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HMDAppleMediaProfile;
  if (![(HMDMediaProfile *)&v24 _updatePlayback:v4])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No local session for mediaProfile - attempting to redispatch the command to resident/device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *MEMORY[0x277CD0938];
    v11 = [v4 numberForKey:*MEMORY[0x277CD0938]];
    if (v11)
    {
      v23 = 0;
      v12 = __lookupDeviceForRemoteCommands(v7, &v23);
      v13 = v23;
      if (!v12)
      {
        v5 = 0;
        goto LABEL_11;
      }

      v14 = [HMDMediaPropertyWriteRequest writeRequestWithProperty:v10 value:v11 mediaProfile:v7];
      v15 = [(HMDAccessoryProfile *)v7 accessory];
      v16 = [v15 home];
      objc_initWeak(buf, v7);
      v25 = v14;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __40__HMDAppleMediaProfile__updatePlayback___block_invoke;
      v20[3] = &unk_278689618;
      objc_copyWeak(&v22, buf);
      v21 = v4;
      [v16 redispatchMediaWriteRequests:v17 viaDevice:v13 completion:v20];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [v4 respondWithError:v13];
    }

    v5 = 1;
LABEL_11:

    goto LABEL_12;
  }

  v5 = 1;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

void __40__HMDAppleMediaProfile__updatePlayback___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (WeakRetained)
  {
    [WeakRetained _handleMediaResponses:v7 message:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v5 respondWithError:v6];
  }
}

- (void)setMediaSession:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaProfile *)self mediaSession];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = HMDAppleMediaProfile;
    [(HMDMediaProfile *)&v11 setMediaSession:v4];
    os_unfair_lock_lock_with_options();
    WeakRetained = objc_loadWeakRetained(&self->_mediaSystem);
    [WeakRetained setMediaSession:v4];

    os_unfair_lock_unlock(&self->super._lock.lock);
    v8 = [(HMDAppleMediaProfile *)self controller];
    v9 = [v8 response];

    if (v9)
    {
      v10 = [(HMDAppleMediaProfile *)self controller];
      [(HMDAppleMediaProfile *)self didFinishLoadingRequestForController:v10];
    }
  }
}

- (HMDMediaSystem)mediaSystem
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_mediaSystem);
  os_unfair_lock_unlock(&self->super._lock.lock);

  return WeakRetained;
}

- (void)setMediaSystem:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting media system %@ on profile %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&v6->_mediaSystem, v4);
  os_unfair_lock_unlock(&v6->super._lock.lock);
  v9 = [(HMDAccessoryProfile *)v6 msgDispatcher];
  [(HMDAppleMediaProfile *)v6 configureWithMessageDispatcher:v9 configurationTracker:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessory)mediaAccessory
{
  v2 = [(HMDAccessoryProfile *)self accessory];
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

  return v3;
}

- (void)registerForMessages
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self accessory];
  v4 = [v3 home];
  v5 = [v4 featuresDataSource];
  v6 = [v5 isMessageBindingsEnabled];

  if ((v6 & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = HMDAppleMediaProfile;
    [(HMDMediaProfile *)&v12 registerForMessages];
    v7 = [(HMDAccessoryProfile *)self msgDispatcher];
    v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:0 remoteAccessRequired:0];
    v13[0] = v8;
    v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v13[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    [v7 registerForMessage:@"HMDMediaProfileSetPowerRequestKey" receiver:self policies:v10 selector:sel__handleSetPower_];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)a3 configurationTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v9 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDAppleMediaProfile_configureWithMessageDispatcher_configurationTracker___block_invoke;
  block[3] = &unk_27868A010;
  v13 = v6;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v6;
  dispatch_async(v9, block);
}

void __76__HMDAppleMediaProfile_configureWithMessageDispatcher_configurationTracker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = HMDAppleMediaProfile;
  objc_msgSendSuper2(&v5, sel_configureWithMessageDispatcher_configurationTracker_, v3, v2);
  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

- (HMDAppleMediaProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5 workQueue:(id)a6
{
  v10 = a3;
  v17.receiver = self;
  v17.super_class = HMDAppleMediaProfile;
  v11 = [(HMDMediaProfile *)&v17 initWithAccessory:v10 uniqueIdentifier:a4 services:a5 workQueue:a6];
  if (v11 && [v10 isCurrentAccessory])
  {
    v12 = objc_opt_new();
    controller = v11->_controller;
    v11->_controller = v12;

    v14 = objc_opt_new();
    v15 = [MEMORY[0x277D278E0] deviceActivePlayerPath];
    [v14 setPlayerPath:v15];

    [(MPRequestResponseController *)v11->_controller setRequest:v14];
    [(MPRequestResponseController *)v11->_controller setDelegate:v11];
    [(MPRequestResponseController *)v11->_controller beginAutomaticResponseLoading];
  }

  return v11;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v23[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 accessory];
  v13 = [v12 home];

  v14 = [v9 name];
  v15 = [v14 isEqualToString:@"HMDMediaProfileSetPowerRequestKey"];

  if (v15)
  {
    v16 = [v9 name];

    v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:v13 userPrivilege:0 remoteAccessRequired:0];
    v23[0] = v17;
    v18 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v23[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v20 = HMFCreateMessageBinding();
  }

  else
  {
    v20 = [HMDMediaProfile messageBindingForDispatcher:v7 message:v9 receiver:v8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end