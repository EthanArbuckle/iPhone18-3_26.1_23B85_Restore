@interface HMDPowerLogObserver
+ (id)supportedEventClasses;
- (HMDPowerLogObserver)initWithContext:(id)a3;
- (HMDPowerLogObserver)initWithLogEventDispatcher:(id)a3;
- (void)_reportCameraSettingsConfiguration:(id)a3;
- (void)_reportConfiguration:(id)a3;
- (void)observeEvent:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation HMDPowerLogObserver

- (void)stop
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDPowerLogObserver *)v4 context];
  v8 = [v7 logEventDispatcher];
  [v8 removeObserver:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDPowerLogObserver *)v4 context];
  v8 = [v7 logEventDispatcher];
  v9 = [objc_opt_class() supportedEventClasses];
  [v8 addObserver:v4 forEventClasses:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reportCameraSettingsConfiguration:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42 = [MEMORY[0x277CBEB38] dictionary];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [v4 homeSettingsConfigurations];
  v46 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  v43 = v4;
  v41 = self;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (v46)
  {
    v48 = 0;
    v45 = *v54;
    do
    {
      v10 = 0;
      do
      {
        if (*v54 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v10;
        v11 = *(*(&v53 + 1) + 8 * v10);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v12 = [v11 cameraSettings];
        v13 = [v12 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v50;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v50 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v49 + 1) + 8 * i);
              v9 += [v17 isRecordingEnabled];
              v5 += [v17 smartBulletinBoardNotificationEnabled];
              v6 += [v17 reachabilityNotificationEnabled];
              v7 += [v17 recordingEventTriggers] & 1;
              if ([v17 recordingEventTriggers] > 1)
              {
                ++v8;
              }
            }

            v48 += v14;
            v14 = [v12 countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v14);
        }

        v10 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v46);
  }

  else
  {
    v48 = 0;
  }

  [v42 setObject:@"HomeKit Camera Configuration" forKeyedSubscript:*MEMORY[0x277D0F1E0]];
  v18 = [(HMDPowerLogObserver *)v41 context];
  v19 = [v18 cameraConfigurationEventHistogram];
  v20 = [v19 intervalIndexForValue:v48];
  [v42 setObject:v20 forKeyedSubscript:@"numCameras"];

  v21 = [(HMDPowerLogObserver *)v41 context];
  v22 = [v21 cameraConfigurationEventHistogram];
  v23 = [v22 intervalIndexForValue:v9];
  [v42 setObject:v23 forKeyedSubscript:@"numCamerasRecordingEnabled"];

  v24 = [(HMDPowerLogObserver *)v41 context];
  v25 = [v24 cameraConfigurationEventHistogram];
  v26 = [v25 intervalIndexForValue:v5];
  [v42 setObject:v26 forKeyedSubscript:@"numCamerasSmartBulletinNotificationEnabled"];

  v27 = [(HMDPowerLogObserver *)v41 context];
  v28 = [v27 cameraConfigurationEventHistogram];
  v29 = [v28 intervalIndexForValue:v6];
  [v42 setObject:v29 forKeyedSubscript:@"numCamerasReachabilityNotificationEnabled"];

  v30 = [(HMDPowerLogObserver *)v41 context];
  v31 = [v30 cameraConfigurationEventHistogram];
  v32 = [v31 intervalIndexForValue:v7];
  [v42 setObject:v32 forKeyedSubscript:@"numCamerasAnyMotionEventEnabled"];

  v33 = [(HMDPowerLogObserver *)v41 context];
  v34 = [v33 cameraConfigurationEventHistogram];
  v35 = [v34 intervalIndexForValue:v8];
  [v42 setObject:v35 forKeyedSubscript:@"numCamerasHSVMotionEventEnabled"];

  v36 = [(HMDPowerLogObserver *)v41 context];
  v37 = [v36 powerLogger];
  v38 = *MEMORY[0x277D0F1E8];
  v39 = [v42 copy];
  [v37 reportToPowerLogDestinationTable:v38 withEventDictionary:v39];

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_reportConfiguration:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v29 = [v4 dictionary];
  [v29 setObject:@"HomeKit Home Configuration" forKeyedSubscript:*MEMORY[0x277D0F1E0]];
  v6 = [(HMDPowerLogObserver *)self context];
  v7 = [v6 homeConfigurationEventHistogram];
  v8 = [v7 intervalIndexForValue:{objc_msgSend(v5, "totalHomes")}];
  [v29 setObject:v8 forKeyedSubscript:@"numHomes"];

  v9 = [(HMDPowerLogObserver *)self context];
  v10 = [v9 homeConfigurationEventHistogram];
  v11 = [v10 intervalIndexForValue:{objc_msgSend(v5, "totalNonEmptyHomes")}];
  [v29 setObject:v11 forKeyedSubscript:@"numNonEmptyHomes"];

  v12 = [(HMDPowerLogObserver *)self context];
  v13 = [v12 homeConfigurationEventHistogram];
  v14 = [v13 intervalIndexForValue:{objc_msgSend(v5, "totalUsers")}];
  [v29 setObject:v14 forKeyedSubscript:@"numUsers"];

  v15 = [(HMDPowerLogObserver *)self context];
  v16 = [v15 homeConfigurationEventHistogram];
  v17 = [v16 intervalIndexForValue:{objc_msgSend(v5, "totalHAPAccessories")}];
  [v29 setObject:v17 forKeyedSubscript:@"numHAPAccessories"];

  v18 = [(HMDPowerLogObserver *)self context];
  v19 = [v18 homeConfigurationEventHistogram];
  v20 = [v19 intervalIndexForValue:{objc_msgSend(v5, "totalEnabledResidents")}];
  [v29 setObject:v20 forKeyedSubscript:@"numEnabledResidents"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isResidentEnabled")}];
  [v29 setObject:v21 forKeyedSubscript:@"isCurrentDeviceResidentEnabled"];

  v22 = MEMORY[0x277CCABB0];
  v23 = [v5 isPrimaryResidentForSomeHome];

  v24 = [v22 numberWithBool:v23];
  [v29 setObject:v24 forKeyedSubscript:@"isCurrentDevicePrimaryResident"];

  [v29 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isCurrentDeviceHH2Enabled"];
  v25 = [(HMDPowerLogObserver *)self context];
  v26 = [v25 powerLogger];
  v27 = *MEMORY[0x277D0F1F0];
  v28 = [v29 copy];
  [v26 reportToPowerLogDestinationTable:v27 withEventDictionary:v28];
}

- (void)observeEvent:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v9;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    [(HMDPowerLogObserver *)self _reportConfiguration:v5];
  }

  else
  {
    v6 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      goto LABEL_12;
    }

    [(HMDPowerLogObserver *)self _reportCameraSettingsConfiguration:v8];
  }

LABEL_12:
}

- (HMDPowerLogObserver)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDPowerLogObserver;
  v6 = [(HMDPowerLogObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (HMDPowerLogObserver)initWithLogEventDispatcher:(id)a3
{
  v4 = a3;
  v5 = [HMDPowerLogObserverContext alloc];
  v6 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  v7 = [(HMDPowerLogObserverContext *)v5 initWithLogEventDispatcher:v4 powerLogger:v6];

  v8 = [(HMDPowerLogObserver *)self initWithContext:v7];
  return v8;
}

+ (id)supportedEventClasses
{
  if (supportedEventClasses_onceToken != -1)
  {
    dispatch_once(&supportedEventClasses_onceToken, &__block_literal_global_29832);
  }

  v3 = supportedEventClasses_supportedEventClasses;

  return v3;
}

void __44__HMDPowerLogObserver_supportedEventClasses__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = supportedEventClasses_supportedEventClasses;
  supportedEventClasses_supportedEventClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end