@interface HMDPowerLogObserver
+ (id)supportedEventClasses;
- (HMDPowerLogObserver)initWithContext:(id)context;
- (HMDPowerLogObserver)initWithLogEventDispatcher:(id)dispatcher;
- (void)_handleHH2CloudKitOperationEvent:(id)event;
- (void)_reportCameraSettingsConfiguration:(id)configuration;
- (void)_reportConfiguration:(id)configuration;
- (void)observeEvent:(id)event;
- (void)start;
- (void)stop;
@end

@implementation HMDPowerLogObserver

- (void)stop
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  context = [(HMDPowerLogObserver *)selfCopy context];
  logEventDispatcher = [context logEventDispatcher];
  [logEventDispatcher removeObserver:selfCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  context = [(HMDPowerLogObserver *)selfCopy context];
  logEventDispatcher = [context logEventDispatcher];
  supportedEventClasses = [objc_opt_class() supportedEventClasses];
  [logEventDispatcher addObserver:selfCopy forEventClasses:supportedEventClasses];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleHH2CloudKitOperationEvent:(id)event
{
  if ([event operationType] == 1)
  {
    context = [(HMDPowerLogObserver *)self context];
    powerLogger = [context powerLogger];
    [powerLogger reportIncomingCloudPush:@"HH2 CloudKit Import"];
  }
}

- (void)_reportCameraSettingsConfiguration:(id)configuration
{
  v59 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [configurationCopy homeSettingsConfigurations];
  v46 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  v43 = configurationCopy;
  selfCopy = self;
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
        cameraSettings = [v11 cameraSettings];
        v13 = [cameraSettings countByEnumeratingWithState:&v49 objects:v57 count:16];
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
                objc_enumerationMutation(cameraSettings);
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
            v14 = [cameraSettings countByEnumeratingWithState:&v49 objects:v57 count:16];
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

  [dictionary setObject:@"HomeKit Camera Configuration" forKeyedSubscript:*MEMORY[0x277D0F1E0]];
  context = [(HMDPowerLogObserver *)selfCopy context];
  cameraConfigurationEventHistogram = [context cameraConfigurationEventHistogram];
  v20 = [cameraConfigurationEventHistogram intervalIndexForValue:v48];
  [dictionary setObject:v20 forKeyedSubscript:@"numCameras"];

  context2 = [(HMDPowerLogObserver *)selfCopy context];
  cameraConfigurationEventHistogram2 = [context2 cameraConfigurationEventHistogram];
  v23 = [cameraConfigurationEventHistogram2 intervalIndexForValue:v9];
  [dictionary setObject:v23 forKeyedSubscript:@"numCamerasRecordingEnabled"];

  context3 = [(HMDPowerLogObserver *)selfCopy context];
  cameraConfigurationEventHistogram3 = [context3 cameraConfigurationEventHistogram];
  v26 = [cameraConfigurationEventHistogram3 intervalIndexForValue:v5];
  [dictionary setObject:v26 forKeyedSubscript:@"numCamerasSmartBulletinNotificationEnabled"];

  context4 = [(HMDPowerLogObserver *)selfCopy context];
  cameraConfigurationEventHistogram4 = [context4 cameraConfigurationEventHistogram];
  v29 = [cameraConfigurationEventHistogram4 intervalIndexForValue:v6];
  [dictionary setObject:v29 forKeyedSubscript:@"numCamerasReachabilityNotificationEnabled"];

  context5 = [(HMDPowerLogObserver *)selfCopy context];
  cameraConfigurationEventHistogram5 = [context5 cameraConfigurationEventHistogram];
  v32 = [cameraConfigurationEventHistogram5 intervalIndexForValue:v7];
  [dictionary setObject:v32 forKeyedSubscript:@"numCamerasAnyMotionEventEnabled"];

  context6 = [(HMDPowerLogObserver *)selfCopy context];
  cameraConfigurationEventHistogram6 = [context6 cameraConfigurationEventHistogram];
  v35 = [cameraConfigurationEventHistogram6 intervalIndexForValue:v8];
  [dictionary setObject:v35 forKeyedSubscript:@"numCamerasHSVMotionEventEnabled"];

  context7 = [(HMDPowerLogObserver *)selfCopy context];
  powerLogger = [context7 powerLogger];
  v38 = *MEMORY[0x277D0F1E8];
  v39 = [dictionary copy];
  [powerLogger reportToPowerLogDestinationTable:v38 withEventDictionary:v39];

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_reportConfiguration:(id)configuration
{
  v4 = MEMORY[0x277CBEB38];
  configurationCopy = configuration;
  dictionary = [v4 dictionary];
  [dictionary setObject:@"HomeKit Home Configuration" forKeyedSubscript:*MEMORY[0x277D0F1E0]];
  context = [(HMDPowerLogObserver *)self context];
  homeConfigurationEventHistogram = [context homeConfigurationEventHistogram];
  v8 = [homeConfigurationEventHistogram intervalIndexForValue:{objc_msgSend(configurationCopy, "totalHomes")}];
  [dictionary setObject:v8 forKeyedSubscript:@"numHomes"];

  context2 = [(HMDPowerLogObserver *)self context];
  homeConfigurationEventHistogram2 = [context2 homeConfigurationEventHistogram];
  v11 = [homeConfigurationEventHistogram2 intervalIndexForValue:{objc_msgSend(configurationCopy, "totalNonEmptyHomes")}];
  [dictionary setObject:v11 forKeyedSubscript:@"numNonEmptyHomes"];

  context3 = [(HMDPowerLogObserver *)self context];
  homeConfigurationEventHistogram3 = [context3 homeConfigurationEventHistogram];
  v14 = [homeConfigurationEventHistogram3 intervalIndexForValue:{objc_msgSend(configurationCopy, "totalUsers")}];
  [dictionary setObject:v14 forKeyedSubscript:@"numUsers"];

  context4 = [(HMDPowerLogObserver *)self context];
  homeConfigurationEventHistogram4 = [context4 homeConfigurationEventHistogram];
  v17 = [homeConfigurationEventHistogram4 intervalIndexForValue:{objc_msgSend(configurationCopy, "totalHAPAccessories")}];
  [dictionary setObject:v17 forKeyedSubscript:@"numHAPAccessories"];

  context5 = [(HMDPowerLogObserver *)self context];
  homeConfigurationEventHistogram5 = [context5 homeConfigurationEventHistogram];
  v20 = [homeConfigurationEventHistogram5 intervalIndexForValue:{objc_msgSend(configurationCopy, "totalEnabledResidents")}];
  [dictionary setObject:v20 forKeyedSubscript:@"numEnabledResidents"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isResidentEnabled")}];
  [dictionary setObject:v21 forKeyedSubscript:@"isCurrentDeviceResidentEnabled"];

  v22 = MEMORY[0x277CCABB0];
  isPrimaryResidentForSomeHome = [configurationCopy isPrimaryResidentForSomeHome];

  v24 = [v22 numberWithBool:isPrimaryResidentForSomeHome];
  [dictionary setObject:v24 forKeyedSubscript:@"isCurrentDevicePrimaryResident"];

  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isCurrentDeviceHH2Enabled"];
  context6 = [(HMDPowerLogObserver *)self context];
  powerLogger = [context6 powerLogger];
  v27 = *MEMORY[0x277D0F1F0];
  v28 = [dictionary copy];
  [powerLogger reportToPowerLogDestinationTable:v27 withEventDictionary:v28];
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
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
    v6 = eventCopy;
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

    if (v8)
    {
      [(HMDPowerLogObserver *)self _reportCameraSettingsConfiguration:v8];
    }

    else
    {
      v9 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      v12 = eventCopy;
      if (!v11)
      {
        goto LABEL_17;
      }

      [(HMDPowerLogObserver *)self _handleHH2CloudKitOperationEvent:v11];
    }
  }

  v12 = eventCopy;
LABEL_17:
}

- (HMDPowerLogObserver)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HMDPowerLogObserver;
  v6 = [(HMDPowerLogObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (HMDPowerLogObserver)initWithLogEventDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v5 = [HMDPowerLogObserverContext alloc];
  mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  v7 = [(HMDPowerLogObserverContext *)v5 initWithLogEventDispatcher:dispatcherCopy powerLogger:mEMORY[0x277D0F8C0]];

  v8 = [(HMDPowerLogObserver *)self initWithContext:v7];
  return v8;
}

+ (id)supportedEventClasses
{
  if (supportedEventClasses_onceToken != -1)
  {
    dispatch_once(&supportedEventClasses_onceToken, &__block_literal_global_44436);
  }

  v3 = supportedEventClasses_supportedEventClasses;

  return v3;
}

void __44__HMDPowerLogObserver_supportedEventClasses__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = supportedEventClasses_supportedEventClasses;
  supportedEventClasses_supportedEventClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end