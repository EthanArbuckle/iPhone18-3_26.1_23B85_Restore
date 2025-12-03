@interface HMDCameraRecordingSessionNotificationTrigger
+ (id)logCategory;
- (HMDCameraRecordingSessionNotificationTrigger)initWithCamera:(id)camera workQueue:(id)queue;
- (HMDCameraRecordingSessionNotificationTrigger)initWithCamera:(id)camera workQueue:(id)queue availabilityListener:(id)listener notificationCenter:(id)center;
- (HMDCameraRecordingSessionNotificationTriggerDelegate)delegate;
- (HMDHAPAccessory)cameraAccessory;
- (void)_handleObservedCharacteristicsValueUpdate:(id)update;
- (void)dealloc;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleCharacteristicsValueUpdated:(id)updated;
- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics;
- (void)start;
@end

@implementation HMDCameraRecordingSessionNotificationTrigger

- (HMDHAPAccessory)cameraAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraAccessory);

  return WeakRetained;
}

- (HMDCameraRecordingSessionNotificationTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics
{
  v22 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  characteristicsCopy = characteristics;
  workQueue = [(HMDCameraRecordingSessionNotificationTrigger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = characteristicsCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for characteristics: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraRecordingSessionNotificationTrigger *)selfCopy setAvailableCharacteristics:characteristicsCopy];
  cameraAccessory = [(HMDCameraRecordingSessionNotificationTrigger *)selfCopy cameraAccessory];
  availableCharacteristics = [(HMDCameraRecordingSessionNotificationTrigger *)selfCopy availableCharacteristics];
  allObjects = [availableCharacteristics allObjects];
  clientIdentifier = [(HMDCameraRecordingSessionNotificationTrigger *)selfCopy clientIdentifier];
  [cameraAccessory enableNotification:1 forCharacteristics:allObjects message:0 clientIdentifier:clientIdentifier];

  if ([cameraAccessory isReachable])
  {
    [(HMDCameraRecordingSessionNotificationTrigger *)selfCopy _handleObservedCharacteristicsValueUpdate:MEMORY[0x277CBEBF8]];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicsValueUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDCameraRecordingSessionNotificationTrigger *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HMDCameraRecordingSessionNotificationTrigger_handleCharacteristicsValueUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

void __82__HMDCameraRecordingSessionNotificationTrigger_handleCharacteristicsValueUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDNotificationCharacteristicValueUpdatedChangedCharacteristicsKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) _handleObservedCharacteristicsValueUpdate:v6];
    v5 = v6;
  }
}

- (void)handleAccessoryConfigured:(id)configured
{
  workQueue = [(HMDCameraRecordingSessionNotificationTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDCameraRecordingSessionNotificationTrigger_handleAccessoryConfigured___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_handleObservedCharacteristicsValueUpdate:(id)update
{
  v95 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  workQueue = [(HMDCameraRecordingSessionNotificationTrigger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraRecordingSessionNotificationTrigger *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v68 = updateCopy;
    if ([updateCopy count])
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = updateCopy;
      v6 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
      if (!v6)
      {
        goto LABEL_32;
      }

      v7 = v6;
      v8 = *v78;
      v70 = *MEMORY[0x277CCF978];
      v69 = *MEMORY[0x277CCF910];
      v72 = *v78;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v78 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v77 + 1) + 8 * v9);
          availabilityListener = [(HMDCameraRecordingSessionNotificationTrigger *)self availabilityListener];
          availableCharacteristics = [availabilityListener availableCharacteristics];
          v13 = [availableCharacteristics containsObject:v10];

          if (v13)
          {
            value = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = value;
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;

            if (v16)
            {
              type = [v10 type];
              v18 = [type isEqualToString:v70];

              if (v18)
              {
                bOOLValue = [v16 BOOLValue];
                v20 = objc_autoreleasePoolPush();
                selfCopy = self;
                v22 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  v23 = HMFGetLogIdentifier();
                  v24 = HMFBooleanToString();
                  *buf = 138543618;
                  v87 = v23;
                  v88 = 2112;
                  v89 = v24;
                  _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Motion characteristic isActive changed to %@", buf, 0x16u);
                }

                v25 = 0;
LABEL_17:
                v8 = v72;

                objc_autoreleasePoolPop(v20);
                [delegate notificationTrigger:self didObserveTriggerType:v25 changeToActive:bOOLValue];
              }

              else
              {
                type2 = [v10 type];
                v34 = [type2 isEqualToString:v69];

                v20 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v36 = HMFGetOSLogHandle();
                v22 = v36;
                if (v34)
                {
                  bOOLValue = 1;
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                  {
                    v37 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v87 = v37;
                    v25 = 1;
                    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Doorbell event detected", buf, 0xCu);

                    bOOLValue = 1;
                  }

                  else
                  {
                    v25 = 1;
                  }

                  goto LABEL_17;
                }

                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  v38 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v87 = v38;
                  v88 = 2112;
                  v89 = v10;
                  _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unsupported characteristics type: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v20);
                v8 = v72;
              }
            }

            else
            {
              v26 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = HMFGetLogIdentifier();
                value2 = [v10 value];
                v31 = objc_opt_class();
                v32 = NSStringFromClass(v31);
                *buf = 138543618;
                v87 = v29;
                v88 = 2112;
                v89 = v32;
                _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Expected a number for characteristic value, was %@", buf, 0x16u);

                v8 = v72;
              }

              objc_autoreleasePoolPop(v26);
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v39 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
        v7 = v39;
        if (!v39)
        {
LABEL_32:

          goto LABEL_56;
        }
      }
    }

    v44 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v87 = v47;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@No changed characteristics provided, only evaluating motion detected for triggers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    availabilityListener2 = [(HMDCameraRecordingSessionNotificationTrigger *)selfCopy4 availabilityListener];
    availableCharacteristics2 = [availabilityListener2 availableCharacteristics];

    v50 = [availableCharacteristics2 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v82;
      v53 = *MEMORY[0x277CCF978];
      v71 = selfCopy4;
      v73 = availableCharacteristics2;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v82 != v52)
          {
            objc_enumerationMutation(availableCharacteristics2);
          }

          v55 = *(*(&v81 + 1) + 8 * i);
          type3 = [v55 type];
          v57 = [type3 isEqualToString:v53];

          if (v57)
          {
            v58 = v52;
            value3 = [v55 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = value3;
            }

            else
            {
              v60 = 0;
            }

            v61 = v60;

            if (v61)
            {
              [delegate notificationTrigger:selfCopy4 didObserveTriggerType:0 changeToActive:{objc_msgSend(v61, "BOOLValue")}];
            }

            else
            {
              obja = objc_autoreleasePoolPush();
              v62 = selfCopy4;
              v63 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                v64 = HMFGetLogIdentifier();
                v65 = objc_opt_class();
                *buf = 138544130;
                v87 = v64;
                v88 = 2112;
                v89 = value3;
                v90 = 2112;
                v91 = v65;
                v92 = 2112;
                v93 = v55;
                v66 = v65;
                _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Received unhandled value %@ of type %@ for characteristic: %@", buf, 0x2Au);

                selfCopy4 = v71;
              }

              objc_autoreleasePoolPop(obja);
              availableCharacteristics2 = v73;
            }

            v52 = v58;
          }
        }

        v51 = [availableCharacteristics2 countByEnumeratingWithState:&v81 objects:v94 count:16];
      }

      while (v51);
    }

LABEL_56:
    updateCopy = v68;
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v87 = v43;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@No delegate to notify", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
  }

  v67 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  workQueue = [(HMDCameraRecordingSessionNotificationTrigger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraAccessory = [(HMDCameraRecordingSessionNotificationTrigger *)self cameraAccessory];
  notificationCenter = [(HMDCameraRecordingSessionNotificationTrigger *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:cameraAccessory];

  notificationCenter2 = [(HMDCameraRecordingSessionNotificationTrigger *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleCharacteristicsValueUpdated_ name:@"HMDNotificationCharacteristicValueUpdated" object:cameraAccessory];

  availabilityListener = [(HMDCameraRecordingSessionNotificationTrigger *)self availabilityListener];
  [availabilityListener setDelegate:self];

  availabilityListener2 = [(HMDCameraRecordingSessionNotificationTrigger *)self availabilityListener];
  [availabilityListener2 start];
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating recording session notification trigger: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_cameraAccessory);
  allObjects = [(NSSet *)selfCopy->_availableCharacteristics allObjects];
  [WeakRetained enableNotification:0 forCharacteristics:allObjects message:0 clientIdentifier:selfCopy->_clientIdentifier];

  v11.receiver = selfCopy;
  v11.super_class = HMDCameraRecordingSessionNotificationTrigger;
  [(HMDCameraRecordingSessionNotificationTrigger *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (HMDCameraRecordingSessionNotificationTrigger)initWithCamera:(id)camera workQueue:(id)queue availabilityListener:(id)listener notificationCenter:(id)center
{
  cameraCopy = camera;
  queueCopy = queue;
  listenerCopy = listener;
  centerCopy = center;
  v27.receiver = self;
  v27.super_class = HMDCameraRecordingSessionNotificationTrigger;
  v14 = [(HMDCameraRecordingSessionNotificationTrigger *)&v27 init];
  if (v14)
  {
    hapAccessory = [cameraCopy hapAccessory];
    objc_storeWeak(&v14->_cameraAccessory, hapAccessory);

    objc_storeStrong(&v14->_workQueue, queue);
    objc_storeStrong(&v14->_availabilityListener, listener);
    objc_storeStrong(&v14->_notificationCenter, center);
    logIdentifier = [cameraCopy logIdentifier];
    v17 = [logIdentifier copy];
    logIdentifier = v14->_logIdentifier;
    v14->_logIdentifier = v17;

    v19 = [MEMORY[0x277CBEB98] set];
    availableCharacteristics = v14->_availableCharacteristics;
    v14->_availableCharacteristics = v19;

    v21 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v24 = [v21 stringWithFormat:@"%@.HMDCameraRecordingSessionNotificationTrigger.%@", @"com.apple.HomeKitDaemon.Local", uUIDString];
    clientIdentifier = v14->_clientIdentifier;
    v14->_clientIdentifier = v24;
  }

  return v14;
}

- (HMDCameraRecordingSessionNotificationTrigger)initWithCamera:(id)camera workQueue:(id)queue
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277CD0EC0];
  v6 = MEMORY[0x277CBEB98];
  v7 = *MEMORY[0x277CCF978];
  queueCopy = queue;
  cameraCopy = camera;
  v10 = [v6 setWithObject:v7];
  v21[0] = v10;
  v20[1] = *MEMORY[0x277CD0E38];
  v11 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF910]];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = [HMDCharacteristicsAvailabilityListener alloc];
  hapAccessory = [cameraCopy hapAccessory];
  v15 = [(HMDCharacteristicsAvailabilityListener *)v13 initWithAccessory:hapAccessory workQueue:queueCopy interestedCharacteristicTypesByServiceType:v12];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v17 = [(HMDCameraRecordingSessionNotificationTrigger *)self initWithCamera:cameraCopy workQueue:queueCopy availabilityListener:v15 notificationCenter:defaultCenter];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_168790 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_168790, &__block_literal_global_168791);
  }

  v3 = logCategory__hmf_once_v12_168792;

  return v3;
}

uint64_t __59__HMDCameraRecordingSessionNotificationTrigger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_168792;
  logCategory__hmf_once_v12_168792 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end