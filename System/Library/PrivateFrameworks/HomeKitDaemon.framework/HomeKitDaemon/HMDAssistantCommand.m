@interface HMDAssistantCommand
+ (id)logCategory;
+ (void)initialize;
- (BOOL)isAttributeValue:(id)a3 equalTo:(id)a4;
- (BOOL)populateColorResult:(id)a3 serviceType:(id)a4 service:(id)a5 action:(id)a6 responses:(id)a7 forObjects:(id)a8;
- (BOOL)populateMediaProfileWriteResult:(id)a3 withValue:(id)a4 serviceType:(id)a5 action:(id)a6;
- (BOOL)populateResult:(id)a3 fromResponse:(id)a4 responses:(id)a5 forAction:(id)a6 serviceType:(id)a7 forObjects:(id)a8;
- (BOOL)populateResult:(id)a3 withObject:(id)a4 serviceType:(id)a5 action:(id)a6;
- (BOOL)populateResult:(id)a3 withService:(id)a4 serviceType:(id)a5 characteristic:(id)a6 resultAttribute:(id)a7 action:(id)a8;
- (BOOL)populateResultWithEntity:(id)a3 action:(id)a4 entity:(id)a5;
- (HMDHomeManager)homeManager;
- (id)_evaluateHomeOptionallyMatchingHomeName:(id)a3;
- (id)_homeWithSearchFilter:(id)a3;
- (id)actionOutcomeFromError:(id)a3;
- (id)actionResultForCharacteristic:(id)a3 actionSet:(id)a4 action:(id)a5 objects:(id)a6 error:(id)a7;
- (id)actionResultForMediaProfile:(id)a3 action:(id)a4 objects:(id)a5 error:(id)a6;
- (id)addCharacteristicsFromRelatedServicesFor:(id)a3 assistantObjects:(id)a4;
- (id)addStatusCharacteristicsIfNeeded:(id)a3;
- (id)adjustGetValue:(id)a3 type:(id)a4 units:(id)a5 attribute:(id)a6;
- (id)adjustSetValue:(id)a3 type:(id)a4 units:(id)a5 attribute:(id)a6;
- (id)compareCurrentValue:(id)a3 newValue:(id)a4 withMetadata:(id)a5;
- (id)compareForBoundary:(id)a3 withMetadata:(id)a4;
- (id)entityFromActionSet:(id)a3;
- (id)failedActionResultsFromResponse:(id)a3 inActionSet:(id)a4 withAction:(id)a5;
- (id)filterObjects:(id)a3 forCharacteristicTypes:(id)a4;
- (id)filterObjects:(id)a3 forCharacteristics:(id)a4;
- (id)filteredObjectsFromObjects:(id)a3 byAttribute:(id)a4 forActionType:(id)a5;
- (id)filteredObjectsFromObjects:(id)a3 byCharacteristicType:(id)a4;
- (id)filteredObjectsFromObjects:(id)a3 forGroup:(id)a4;
- (id)filteredObjectsFromObjects:(id)a3 forHomeName:(id)a4 roomName:(id)a5 zoneName:(id)a6;
- (id)getLocaleUnits:(id)a3;
- (id)getValueOfType:(id)a3 action:(id)a4;
- (id)handleReadWriteResponses:(id)a3 error:(id)a4 forAction:(id)a5 inServiceType:(id)a6 results:(id)a7 forObjects:(id)a8;
- (id)mediaProfileFromObject:(id)a3;
- (id)objectsWithIdentifierList:(id)a3 error:(id *)a4;
- (id)objectsWithSearchFilter:(id)a3 inHome:(id)a4 serviceTypeIsATV:(BOOL)a5 overrideServiceTypeIfNeeded:(id *)a6;
- (id)parseColorEncoding:(id)a3;
- (id)readRequestsForCharacteristic:(id)a3;
- (id)serviceFromObject:(id)a3;
- (id)updateValue:(id)a3 forAction:(id)a4;
- (id)updateValueToBoundary:(id)a3 valueType:(id)a4 fudgeMinimum:(BOOL)a5 metadata:(id)a6;
- (void)_handleCommandForHAPAction:(id)a3 serviceType:(id)a4 objects:(id)a5 completionHandler:(id)a6;
- (void)_handleCommandForMediaAccessoryAction:(id)a3 objects:(id)a4 serviceType:(id)a5 completionHandler:(id)a6;
- (void)_logEvent:(id)a3;
- (void)addActivationCharacteristicsIfNeeded:(id)a3 forCharacteristic:(id)a4;
- (void)addBridgedAccessoryCharacteristicsFor:(id)a3 toCollection:(id)a4 assistantObjects:(id)a5;
- (void)addCharacteristicWithType:(id)a3 fromService:(id)a4 toCollection:(id)a5 assistantObjects:(id)a6;
- (void)addIfNeededActivationCharacteristic:(id)a3 fromService:(id)a4 toCollection:(id)a5;
- (void)addLinkedServiceCharacteristicsFor:(id)a3 toCollection:(id)a4 assistantObjects:(id)a5;
- (void)executeActionSet:(id)a3 action:(id)a4 withCompletionHandler:(id)a5;
- (void)handleCommandWithCompletionHandler:(id)a3;
- (void)handleGetActionTypes:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6;
- (void)handleGetColor:(id)a3 forObjects:(id)a4 serviceType:(id)a5 completionHandler:(id)a6;
- (void)handleGetMetadataActionTypes:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6;
- (void)handleGetNaturalLightingAction:(id)a3 forObjects:(id)a4 serviceType:(id)a5 completionHandler:(id)a6;
- (void)handleMediaAccessorySetActionType:(id)a3 forObjects:(id)a4 withServiceType:(id)a5 completionHandler:(id)a6;
- (void)handleMediaReadWriteResponse:(id)a3 forAction:(id)a4 inServiceType:(id)a5 inHome:(id)a6 requestProperty:(id)a7 results:(id)a8 forObjects:(id)a9;
- (void)handleSetActionTypes:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6;
- (void)handleSetColor:(id)a3 forObjects:(id)a4 service:(id)a5 completionHandler:(id)a6;
- (void)handleSetNaturalLightingAction:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6;
- (void)handleSetNaturalLightingAction:(id)a3 serviceType:(id)a4 forObjects:(id)a5 hapLightProfiles:(id)a6 matterLightProfiles:(id)a7 home:(id)a8 completionHandler:(id)a9;
- (void)handleUpdateActionTypes:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6;
- (void)performWithGather:(id)a3 queue:(id)a4 msgDispatcher:(id)a5 completion:(id)a6;
- (void)reportOutcome:(id)a3 results:(id)a4 handler:(id)a5;
- (void)reportResults:(id)a3 handler:(id)a4;
- (void)reportUnlockRequired:(id)a3;
- (void)returnResults:(id)a3 serviceType:(id)a4 forAction:(id)a5 completionHandler:(id)a6;
- (void)timeoutAndReportResults;
@end

@implementation HMDAssistantCommand

+ (void)initialize
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (!+[HMDDeviceCapabilities supportsDeviceLock])
  {
    unlockErrorCode = 1;
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [HMDAssistantColorCharacteristic alloc];
  v4 = *MEMORY[0x277CCF6B8];
  v5 = [(HMDAssistantColorCharacteristic *)v3 initWithReadCharacteristicType:*MEMORY[0x277CCF8D8] writeCharacteristicType:*MEMORY[0x277CCF8D8] format:*MEMORY[0x277CCF6B8] mandatory:1];
  [v2 addObject:v5];
  v6 = [HMDAssistantColorCharacteristic alloc];
  v7 = [(HMDAssistantColorCharacteristic *)v6 initWithReadCharacteristicType:*MEMORY[0x277CCFA30] writeCharacteristicType:*MEMORY[0x277CCFA30] format:v4 mandatory:1];

  [v2 addObject:v7];
  v8 = [HMDAssistantColorCharacteristic alloc];
  v9 = [(HMDAssistantColorCharacteristic *)v8 initWithReadCharacteristicType:*MEMORY[0x277CCF788] writeCharacteristicType:*MEMORY[0x277CCF788] format:*MEMORY[0x277CCF6C0] mandatory:1];

  [v2 addObject:v9];
  v14 = @"HSB";
  v10 = [v2 copy];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = supportedColorSpaces;
  supportedColorSpaces = v11;

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_19350 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_19350, &__block_literal_global_19351);
  }

  v3 = logCategory__hmf_once_v3_19352;

  return v3;
}

void __34__HMDAssistantCommand_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_19352;
  logCategory__hmf_once_v3_19352 = v1;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)timeoutAndReportResults
{
  v2 = [(HMDAssistantCommand *)self assistantCommandHelper];
  [v2 timeoutAndReportResults];
}

- (void)performWithGather:(id)a3 queue:(id)a4 msgDispatcher:(id)a5 completion:(id)a6
{
  v73 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v54 = a5;
  v13 = a6;
  v14 = objc_alloc(MEMORY[0x277D0F770]);
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x22AAD2510](self, a2);
  v17 = [v15 stringWithFormat:@"%@, %s:%ld", v16, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 3731];
  v53 = [v14 initWithName:v17];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v19 = v18;
  [(HMDAssistantCommand *)self setGather:v11];
  [(HMDAssistantCommand *)self setQueue:v12];
  [(HMDAssistantCommand *)self setCompletionHandlerCalled:0];
  v20 = [(HMDAssistantCommand *)self actions];
  v56 = [v20 firstObject];

  [v56 aceId];
  [v56 actionType];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HMDAssistantCommand_performWithGather_queue_msgDispatcher_completion___block_invoke;
  aBlock[3] = &unk_278671010;
  objc_copyWeak(v59, &location);
  v59[1] = v19;
  v52 = v13;
  v58 = v52;
  v55 = _Block_copy(aBlock);
  v21 = [v11 homeCount];
  if (!v21)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v46;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@There are no homes, reporting the result right away", buf, 0xCu);
    }

    goto LABEL_10;
  }

  [(HMDAssistantCommand *)self setNumberOfHomes:v21];
  v22 = [(HMDAssistantCommand *)self gather];
  v23 = [v22 primaryHomeName];
  [(HMDAssistantCommand *)self setPrimaryHomeName:v23];

  v24 = [(HMDAssistantCommand *)self gather];
  v25 = [v24 primaryHomeAssistantIdentifier];
  [(HMDAssistantCommand *)self setPrimaryHomeAssistantIdentifier:v25];

  v26 = [(HMDAssistantCommand *)self gather];
  v27 = [v26 currentHomeName];
  [(HMDAssistantCommand *)self setCurrentHomeName:v27];

  v28 = [(HMDAssistantCommand *)self gather];
  v29 = [v28 currentHomeAssistantIdentifier];
  [(HMDAssistantCommand *)self setCurrentHomeAssistantIdentifier:v29];

  v30 = objc_autoreleasePoolPush();
  v31 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v50 = v12;
    v51 = v11;
    v33 = HMFGetLogIdentifier();
    v34 = [(HMDAssistantCommand *)v31 numberOfHomes];
    v35 = [(HMDAssistantCommand *)v31 primaryHomeName];
    v36 = [(HMDAssistantCommand *)v31 primaryHomeAssistantIdentifier];
    v37 = [(HMDAssistantCommand *)v31 currentHomeName];
    v38 = [(HMDAssistantCommand *)v31 currentHomeAssistantIdentifier];
    *buf = 138544642;
    v62 = v33;
    v63 = 2048;
    v64 = v34;
    v65 = 2112;
    v66 = v35;
    v67 = 2112;
    v68 = v36;
    v69 = 2112;
    v70 = v37;
    v71 = 2112;
    v72 = v38;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Number of homes: %tu, Primary home: %@, Primary home ID: %@, Current home: %@, Current home ID: %@", buf, 0x3Eu);

    v12 = v50;
    v11 = v51;
  }

  objc_autoreleasePoolPop(v30);
  v39 = [(HMDAssistantCommand *)v31 gather];
  v40 = [v39 homeKitObjects];
  [(HMDAssistantCommand *)v31 setHomeKitObjects:v40];

  v41 = [(HMDAssistantCommand *)v31 homeKitObjects];
  LODWORD(v40) = [v41 count] == 0;

  if (v40)
  {
    v43 = objc_autoreleasePoolPush();
    v47 = v31;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v48;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@There are no homekit objects, calling completion", buf, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v43);
    [(HMDAssistantCommand *)self reportResults:0 handler:v55];
    goto LABEL_11;
  }

  v42 = [[HMDAssistantCommandHelper alloc] initWithQueue:v12 msgDispatcher:v54];
  [(HMDAssistantCommand *)v31 setAssistantCommandHelper:v42];

  [(HMDAssistantCommand *)v31 handleCommandWithCompletionHandler:v55];
LABEL_11:

  objc_destroyWeak(v59);
  objc_destroyWeak(&location);

  v49 = *MEMORY[0x277D85DE8];
}

void __72__HMDAssistantCommand_performWithGather_queue_msgDispatcher_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2048;
      v24 = v6 - v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Siri command took %.4f seconds", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if ([v9 completionHandlerCalled])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v9;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Completion handler already called, not calling again", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      [v9 setCompletionHandlerCalled:1];
      v16 = [v9 queue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__HMDAssistantCommand_performWithGather_queue_msgDispatcher_completion___block_invoke_155;
      v18[3] = &unk_27868A7A0;
      v20 = *(a1 + 32);
      v19 = v3;
      dispatch_async(v16, v18);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleGetColor:(id)a3 forObjects:(id)a4 serviceType:(id)a5 completionHandler:(id)a6
{
  v122 = *MEMORY[0x277D85DE8];
  v62 = a3;
  v11 = a4;
  v61 = a5;
  v64 = a6;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x22AAD2510](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 3631];
  v63 = [v12 initWithName:v15];

  v56 = v11;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = [supportedColorSpaces allKeys];
  v16 = [obj countByEnumeratingWithState:&v106 objects:v121 count:16];
  v17 = v56;
  if (v16)
  {
    v69 = *v107;
    v17 = v56;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v107 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [supportedColorSpaces objectForKeyedSubscript:*(*(&v106 + 1) + 8 * i)];
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v102 objects:v120 count:16];
        if (v20)
        {
          v21 = *v103;
          do
          {
            v22 = 0;
            v23 = v17;
            do
            {
              if (*v103 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [*(*(&v102 + 1) + 8 * v22) readCharacteristicType];
              v17 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:v23 byCharacteristicType:v24];

              ++v22;
              v23 = v17;
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v102 objects:v120 count:16];
          }

          while (v20);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v106 objects:v121 count:16];
    }

    while (v16);
  }

  v70 = [MEMORY[0x277CBEB18] array];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v57 = [supportedColorSpaces allKeys];
  v59 = [v57 countByEnumeratingWithState:&v98 objects:v119 count:16];
  if (v59)
  {
    v58 = *v99;
    do
    {
      v25 = 0;
      do
      {
        if (*v99 != v58)
        {
          v26 = v25;
          objc_enumerationMutation(v57);
          v25 = v26;
        }

        obja = v25;
        v27 = [supportedColorSpaces objectForKeyedSubscript:*(*(&v98 + 1) + 8 * v25)];
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v94 objects:v118 count:16];
        if (v28)
        {
          v29 = *v95;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v95 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = [*(*(&v94 + 1) + 8 * j) readCharacteristicType];
              v117 = v31;
              v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
              v33 = [(HMDAssistantCommand *)self filterObjects:v17 forCharacteristicTypes:v32];

              [v70 addObjectsFromArray:v33];
            }

            v28 = [v27 countByEnumeratingWithState:&v94 objects:v118 count:16];
          }

          while (v28);
        }

        v25 = obja + 1;
      }

      while (obja + 1 != v59);
      v59 = [v57 countByEnumeratingWithState:&v98 objects:v119 count:16];
    }

    while (v59);
  }

  if ([v70 count])
  {
    v34 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v113 = 0x3032000000;
    v114 = __Block_byref_object_copy__19541;
    v115 = __Block_byref_object_dispose__19542;
    v116 = [MEMORY[0x277CBEB18] array];
    v35 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v60 = v70;
    v36 = [v60 countByEnumeratingWithState:&v90 objects:v111 count:16];
    if (v36)
    {
      objb = *v91;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v91 != objb)
          {
            objc_enumerationMutation(v60);
          }

          v38 = *(*(&v90 + 1) + 8 * k);
          v39 = [v38 service];
          v40 = [v39 accessory];
          v41 = [v40 home];

          v42 = [v35 objectForKey:v41];
          if (!v42)
          {
            v42 = [MEMORY[0x277CBEB18] array];
            [v35 setObject:v42 forKey:v41];
          }

          v43 = [HMDCharacteristicRequest requestWithCharacteristic:v38];
          [v42 addObject:v43];
        }

        v36 = [v60 countByEnumeratingWithState:&v90 objects:v111 count:16];
      }

      while (v36);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v44 = v35;
    v45 = [v44 countByEnumeratingWithState:&v86 objects:v110 count:16];
    if (v45)
    {
      objc = *v87;
      do
      {
        for (m = 0; m != v45; ++m)
        {
          if (*v87 != objc)
          {
            objc_enumerationMutation(v44);
          }

          v47 = *(*(&v86 + 1) + 8 * m);
          dispatch_group_enter(v34);
          v48 = [v44 objectForKey:v47];
          objc_initWeak(&location, self);
          v49 = [(HMDAssistantCommand *)self assistantCommandHelper];
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __79__HMDAssistantCommand_handleGetColor_forObjects_serviceType_completionHandler___block_invoke;
          v76[3] = &unk_278670F20;
          objc_copyWeak(&v84, &location);
          v77 = v34;
          v82 = v64;
          v78 = v62;
          v79 = v61;
          p_buf = &buf;
          v80 = v17;
          v81 = v63;
          [v49 addReadRequests:v48 home:v47 completion:v76];

          objc_destroyWeak(&v84);
          objc_destroyWeak(&location);
        }

        v45 = [v44 countByEnumeratingWithState:&v86 objects:v110 count:16];
      }

      while (v45);
    }

    v50 = [(HMDAssistantCommand *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HMDAssistantCommand_handleGetColor_forObjects_serviceType_completionHandler___block_invoke_149;
    block[3] = &unk_278686E40;
    v72 = v63;
    v73 = self;
    v75 = &buf;
    v74 = v64;
    dispatch_group_notify(v34, v50, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v51 = objc_autoreleasePoolPush();
    v52 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v54;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@No characteristics found after filtering objects", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v51);
    [(HMDAssistantCommand *)v52 returnResults:0 serviceType:v61 forAction:v62 completionHandler:v64];
  }

  v55 = *MEMORY[0x277D85DE8];
}

void __79__HMDAssistantCommand_handleGetColor_forObjects_serviceType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received error %@ for read request with response tuples: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v9 handleReadWriteResponses:v6 error:v5 forAction:*(a1 + 40) inServiceType:*(a1 + 48) results:*(*(*(a1 + 80) + 8) + 40) forObjects:*(a1 + 56)];
    v13 = [v5 code];
    v14 = 82;
    if (unlockErrorCode)
    {
      v14 = 2003;
    }

    if (v13 == v14)
    {
      goto LABEL_10;
    }

    v15 = [v12 code];
    v16 = 82;
    if (unlockErrorCode)
    {
      v16 = 2003;
    }

    if (v15 == v16)
    {
LABEL_10:
      [*(a1 + 64) begin];
      [v9 reportUnlockRequired:*(a1 + 72)];
      dispatch_group_leave(*(a1 + 32));
      [*(a1 + 64) end];
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
    (*(*(a1 + 72) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __79__HMDAssistantCommand_handleGetColor_forObjects_serviceType_completionHandler___block_invoke_149(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) begin];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for set-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleSetColor:(id)a3 forObjects:(id)a4 service:(id)a5 completionHandler:(id)a6
{
  v110 = *MEMORY[0x277D85DE8];
  v65 = a3;
  v60 = a4;
  v64 = a5;
  v56 = a6;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  val = self;
  v13 = MEMORY[0x22AAD2510](self, a2);
  v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 3509];
  v55 = [v11 initWithName:v14];

  v63 = [(HMDAssistantCommand *)self parseColorEncoding:v65];
  if ([v63 count])
  {
    v50 = [v63 allKeys];
    v15 = [(HMDAssistantCommand *)self filterObjects:v60 forCharacteristics:v50];
    v66 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v100 = 0;
    v101 = &v100;
    v102 = 0x3032000000;
    v103 = __Block_byref_object_copy__19541;
    v104 = __Block_byref_object_dispose__19542;
    v105 = [MEMORY[0x277CBEB18] array];
    v59 = [v65 includeCompleteInformation];
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v15;
    v53 = [obj countByEnumeratingWithState:&v96 objects:v109 count:16];
    if (v53)
    {
      v52 = *v97;
      v58 = *MEMORY[0x277CCF6B8];
      v57 = *MEMORY[0x277D47E10];
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v97 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v96 + 1) + 8 * i);
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v17 = [v16 allKeys];
          v18 = [v17 countByEnumeratingWithState:&v92 objects:v108 count:16];
          if (v18)
          {
            v19 = *v93;
            v61 = v17;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v93 != v19)
                {
                  objc_enumerationMutation(v61);
                }

                v21 = *(*(&v92 + 1) + 8 * j);
                v22 = [v16 objectForKey:v21];
                v23 = [v63 hmf_numberForKey:v21];
                v24 = [v22 metadata];
                if (([v22 properties] & 4) != 0)
                {
                  v28 = [(HMDAssistantCommand *)val updateValueToBoundary:v23 valueType:v58 fudgeMinimum:0 metadata:v24];

                  [v66 setObject:v28 forKey:v22];
                  v23 = v28;
                }

                else
                {
                  v25 = actionResultForAction(v65);
                  v26 = [v22 service];
                  [v25 setOutcome:v57];
                  v27 = entityForService(v26, v64, v60, v59);
                  [v25 setEntity:v27];

                  [(HMDAssistantCommand *)val populateResult:v25 withService:v26 serviceType:v64 characteristic:v22 resultAttribute:0 action:v65];
                  [v101[5] addObject:v25];
                }

                [(HMDAssistantCommand *)val addActivationCharacteristicsIfNeeded:v66 forCharacteristic:v22];
              }

              v17 = v61;
              v18 = [v61 countByEnumeratingWithState:&v92 objects:v108 count:16];
            }

            while (v18);
          }
        }

        v53 = [obj countByEnumeratingWithState:&v96 objects:v109 count:16];
      }

      while (v53);
    }

    v62 = dispatch_group_create();
    v29 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v67 = v66;
    v30 = [v67 countByEnumeratingWithState:&v88 objects:v107 count:16];
    if (v30)
    {
      v31 = *v89;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v89 != v31)
          {
            objc_enumerationMutation(v67);
          }

          v33 = *(*(&v88 + 1) + 8 * k);
          v34 = [v33 service];
          v35 = [v34 accessory];
          v36 = [v35 home];

          v37 = [v67 objectForKey:v33];
          v38 = [v29 objectForKey:v36];
          if (!v38)
          {
            v38 = [MEMORY[0x277CBEB18] array];
            [v29 setObject:v38 forKey:v36];
          }

          v39 = [v33 authorizationData];
          v40 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v33 value:v37 authorizationData:v39 type:0];

          [v38 addObject:v40];
        }

        v30 = [v67 countByEnumeratingWithState:&v88 objects:v107 count:16];
      }

      while (v30);
    }

    objc_initWeak(&location, val);
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v41 = v29;
    v42 = [v41 countByEnumeratingWithState:&v83 objects:v106 count:16];
    if (v42)
    {
      v43 = *v84;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v84 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v83 + 1) + 8 * m);
          dispatch_group_enter(v62);
          v46 = [v41 objectForKey:v45];
          v47 = [(HMDAssistantCommand *)val assistantCommandHelper];
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __75__HMDAssistantCommand_handleSetColor_forObjects_service_completionHandler___block_invoke;
          v74[3] = &unk_278670F20;
          objc_copyWeak(&v82, &location);
          v75 = v62;
          v80 = v56;
          v76 = v65;
          v77 = v64;
          v81 = &v100;
          v78 = v60;
          v79 = v55;
          [v47 addWriteRequests:v46 home:v45 completion:v74];

          objc_destroyWeak(&v82);
        }

        v42 = [v41 countByEnumeratingWithState:&v83 objects:v106 count:16];
      }

      while (v42);
    }

    v48 = [(HMDAssistantCommand *)val queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDAssistantCommand_handleSetColor_forObjects_service_completionHandler___block_invoke_148;
    block[3] = &unk_278686E40;
    v70 = v55;
    v71 = val;
    v73 = &v100;
    v72 = v56;
    dispatch_group_notify(v62, v48, block);

    objc_destroyWeak(&location);
    _Block_object_dispose(&v100, 8);
  }

  else
  {
    [(HMDAssistantCommand *)self reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v56];
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __75__HMDAssistantCommand_handleSetColor_forObjects_service_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response %@ for write request with %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v9 handleReadWriteResponses:v6 error:v5 forAction:*(a1 + 40) inServiceType:*(a1 + 48) results:*(*(*(a1 + 80) + 8) + 40) forObjects:*(a1 + 56)];
    v13 = [v5 code];
    v14 = 82;
    if (unlockErrorCode)
    {
      v14 = 2003;
    }

    if (v13 == v14)
    {
      goto LABEL_10;
    }

    v15 = [v12 code];
    v16 = 82;
    if (unlockErrorCode)
    {
      v16 = 2003;
    }

    if (v15 == v16)
    {
LABEL_10:
      [*(a1 + 64) begin];
      [v9 reportUnlockRequired:*(a1 + 72)];
      dispatch_group_leave(*(a1 + 32));
      [*(a1 + 64) end];
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
    (*(*(a1 + 72) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __75__HMDAssistantCommand_handleSetColor_forObjects_service_completionHandler___block_invoke_148(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) begin];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for set-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)readRequestsForCharacteristic:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 type];
  v5 = [v3 service];
  v6 = [HMDCharacteristicRequest requestWithCharacteristic:v3];
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
  if ([v4 isEqual:@"00000064-0000-1000-8000-0026BB765291"])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v5 characteristics];
    v9 = [v8 copy];

    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v20 = v7;
      v21 = v5;
      v22 = v4;
      v12 = *v24;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 type];
          v16 = [v15 isEqual:@"00000065-0000-1000-8000-0026BB765291"];

          if (v16)
          {
            v17 = [HMDCharacteristicRequest requestWithCharacteristic:v14];

            v7 = v20;
            [v20 addObject:v17];
            v6 = v17;
            v5 = v21;
            v4 = v22;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v5 = v21;
      v4 = v22;
      v7 = v20;
    }

LABEL_12:
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)addStatusCharacteristicsIfNeeded:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v36 = [v3 mutableCopy];
  v30 = +[HMDHAPMetadata getSharedInstance];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v3;
  v31 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v31)
  {
    v29 = *v47;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v46 + 1) + 8 * i);
        v6 = [v5 type];
        v7 = [v5 service];
        v8 = [v7 type];
        v9 = [v30 getStatusCharacteristicTypes:v6 forServiceType:v8];

        v37 = v9;
        if ([v9 count])
        {
          v33 = v6;
          v34 = i;
          v10 = [v5 service];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v32 = v10;
          v11 = [v10 characteristics];
          v12 = [v11 copy];

          v35 = v12;
          v13 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v43;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v43 != v15)
                {
                  objc_enumerationMutation(v35);
                }

                v17 = *(*(&v42 + 1) + 8 * j);
                v38 = 0u;
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                v18 = v37;
                v19 = [v18 countByEnumeratingWithState:&v38 objects:v50 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v39;
                  while (2)
                  {
                    for (k = 0; k != v20; ++k)
                    {
                      if (*v39 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v38 + 1) + 8 * k);
                      v24 = [v17 type];
                      LODWORD(v23) = [v24 isEqual:v23];

                      if (v23)
                      {
                        if (([v36 containsObject:v17] & 1) == 0)
                        {
                          [v36 addObject:v17];
                        }

                        goto LABEL_23;
                      }
                    }

                    v20 = [v18 countByEnumeratingWithState:&v38 objects:v50 count:16];
                    if (v20)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_23:
              }

              v14 = [v35 countByEnumeratingWithState:&v42 objects:v51 count:16];
            }

            while (v14);
          }

          v6 = v33;
          i = v34;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v31);
  }

  v25 = [v36 copy];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)addLinkedServiceCharacteristicsFor:(id)a3 toCollection:(id)a4 assistantObjects:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v33 = a4;
  v32 = a5;
  v8 = [v7 service];
  v9 = +[HMDHAPMetadata getSharedInstance];
  v10 = [v9 mapReadCharacteristicFromAssistantName:*MEMORY[0x277D47FE0]];
  v11 = [v9 mapFromAssistantServiceName:*MEMORY[0x277D482E8]];
  v12 = [v9 mapFromAssistantServiceName:*MEMORY[0x277D48378]];
  v13 = [v7 type];
  if ([v13 isEqual:v10])
  {
    v14 = [v8 type];
    v15 = [v14 isEqual:v11];

    if (v15)
    {
      v27 = v11;
      v28 = v9;
      v30 = v7;
      v16 = [v7 accessory];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = v8;
      v17 = [v8 linkedServices];
      v18 = [v17 copy];

      v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        do
        {
          v22 = 0;
          do
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [v16 findService:*(*(&v34 + 1) + 8 * v22)];
            v24 = [v23 type];
            v25 = [v24 isEqual:v12];

            if (v25)
            {
              [(HMDAssistantCommand *)self addCharacteristicWithType:v10 fromService:v23 toCollection:v33 assistantObjects:v32];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v20);
      }

      v8 = v29;
      v7 = v30;
      v11 = v27;
      v9 = v28;
    }
  }

  else
  {
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)addBridgedAccessoryCharacteristicsFor:(id)a3 toCollection:(id)a4 assistantObjects:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v43 = a4;
  v42 = a5;
  v9 = [v8 service];
  v10 = +[HMDHAPMetadata getSharedInstance];
  v11 = [v10 mapReadCharacteristicFromAssistantName:*MEMORY[0x277D47FE0]];
  v12 = [v10 mapFromAssistantServiceName:*MEMORY[0x277D48378]];
  v13 = [v10 mapFromAssistantServiceName:*MEMORY[0x277D482E8]];
  v14 = [v8 type];
  if ([v14 isEqual:v11])
  {
    v15 = [v9 type];
    v16 = [v15 isEqual:v13];

    if (v16)
    {
      v32 = v13;
      v33 = v10;
      v34 = v9;
      v35 = v8;
      [v8 accessory];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v38 = v51 = 0u;
      obj = [v38 identifiersForBridgedAccessories];
      v39 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v39)
      {
        v37 = *v49;
        do
        {
          v17 = 0;
          do
          {
            if (*v49 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v41 = v17;
            v18 = *(*(&v48 + 1) + 8 * v17);
            v19 = [v38 home];
            v20 = [v19 accessoryWithUUID:v18];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;

            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v40 = v22;
            v23 = [v22 services];
            v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v45;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v45 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v44 + 1) + 8 * i);
                  v29 = [v28 type];
                  v30 = [v29 isEqual:v12];

                  if (v30)
                  {
                    [(HMDAssistantCommand *)self addCharacteristicWithType:v11 fromService:v28 toCollection:v43 assistantObjects:v42];
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
              }

              while (v25);
            }

            v17 = v41 + 1;
          }

          while (v41 + 1 != v39);
          v39 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v39);
      }

      v9 = v34;
      v8 = v35;
      v13 = v32;
      v10 = v33;
    }
  }

  else
  {
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)addCharacteristicsFromRelatedServicesFor:(id)a3 assistantObjects:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [(HMDAssistantCommand *)self addBridgedAccessoryCharacteristicsFor:v14 toCollection:v8 assistantObjects:v7, v18];
        [(HMDAssistantCommand *)self addLinkedServiceCharacteristicsFor:v14 toCollection:v8 assistantObjects:v7];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)addCharacteristicWithType:(id)a3 fromService:(id)a4 toCollection:(id)a5 assistantObjects:(id)a6
{
  v13 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v13 findCharacteristicWithType:a3];
  if (v11)
  {
    if (([v9 containsObject:v11] & 1) == 0)
    {
      [v9 addObject:v11];
      if (v10)
      {
        v12 = [v13 assistantObject];
        if (v12 && ([v10 containsObject:v12] & 1) == 0)
        {
          [v10 addObject:v12];
        }
      }
    }
  }
}

- (void)addActivationCharacteristicsIfNeeded:(id)a3 forCharacteristic:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 type];
  if ((isActivationCharacteristicType(v7) & 1) == 0)
  {
    v8 = [v6 service];
    v9 = [v8 type];
    if ([v9 isEqual:*MEMORY[0x277CD0EA0]])
    {
      v10 = v7;
      if (([v10 isEqual:*MEMORY[0x277CCF788]] & 1) == 0 && (objc_msgSend(v10, "isEqual:", *MEMORY[0x277CCF8D8]) & 1) == 0 && (objc_msgSend(v10, "isEqual:", *MEMORY[0x277CCFA30]) & 1) == 0)
      {
        v11 = MEMORY[0x277CCF7D8];
LABEL_23:
        v14 = [v10 isEqual:*v11];

        if ((v14 & 1) == 0)
        {
          goto LABEL_18;
        }

        v12 = MEMORY[0x277CCF9F0];
LABEL_17:
        [(HMDAssistantCommand *)self addIfNeededActivationCharacteristic:*v12 fromService:v8 toCollection:v16];
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      if (![v9 isEqual:*MEMORY[0x277CD0E40]])
      {
        if (([v9 isEqual:*MEMORY[0x277CD0F40]] & 1) == 0 && (objc_msgSend(v9, "isEqual:", *MEMORY[0x277CD0DD8]) & 1) == 0 && !objc_msgSend(v9, "isEqual:", *MEMORY[0x277CD0E60]))
        {
          goto LABEL_18;
        }

        v13 = v7;
        if (([v13 isEqual:*MEMORY[0x277CCFA18]] & 1) == 0 && (objc_msgSend(v13, "isEqual:", *MEMORY[0x277CCFA20]) & 1) == 0)
        {
          v15 = [v13 isEqual:*MEMORY[0x277CCFAF8]];

          if ((v15 & 1) == 0)
          {
            goto LABEL_18;
          }

          v12 = MEMORY[0x277CCF748];
          goto LABEL_17;
        }

        v12 = MEMORY[0x277CCF748];
        goto LABEL_16;
      }

      v10 = v7;
      if (([v10 isEqual:*MEMORY[0x277CCFA18]] & 1) == 0)
      {
        v11 = MEMORY[0x277CCFA20];
        goto LABEL_23;
      }
    }

    v12 = MEMORY[0x277CCF9F0];
LABEL_16:

    goto LABEL_17;
  }

LABEL_19:
}

- (void)addIfNeededActivationCharacteristic:(id)a3 fromService:(id)a4 toCollection:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [a4 characteristics];
  v10 = [v9 copy];

  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 type];
        v17 = [v16 isEqual:v7];

        if (v17)
        {
          v18 = [v8 objectForKey:v15];

          if (!v18)
          {
            [v8 setObject:MEMORY[0x277CBEC38] forKey:v15];
          }

          goto LABEL_12;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaReadWriteResponse:(id)a3 forAction:(id)a4 inServiceType:(id)a5 inHome:(id)a6 requestProperty:(id)a7 results:(id)a8 forObjects:(id)a9
{
  v66 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v49 = a5;
  v48 = a6;
  v16 = a7;
  v17 = a8;
  v47 = a9;
  if (!v16)
  {
    v16 = @"HMDMediaProfileSetValueUnsupportedAttributeKey";
    v18 = @"HMDMediaProfileSetValueUnsupportedAttributeKey";
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = [v14 countByEnumeratingWithState:&v60 objects:v65 count:16];
  v19 = 0;
  if (v43)
  {
    v41 = *v61;
    v45 = *MEMORY[0x277D47E50];
    v46 = v17;
    v42 = v14;
    do
    {
      v20 = 0;
      do
      {
        if (*v61 != v41)
        {
          objc_enumerationMutation(v14);
        }

        v44 = v20;
        v21 = *(*(&v60 + 1) + 8 * v20);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v22 = v21;
        v55 = [v22 countByEnumeratingWithState:&v56 objects:v64 count:16];
        if (v55)
        {
          v54 = *v57;
          v50 = v22;
          do
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v57 != v54)
              {
                objc_enumerationMutation(v22);
              }

              v24 = *(*(&v56 + 1) + 8 * i);
              v25 = [v22 objectForKeyedSubscript:v24];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = v25;
              }

              else
              {
                v26 = 0;
              }

              v27 = v26;

              if (v27)
              {
                v28 = actionResultForAction(v15);
                v29 = [v27 objectForKeyedSubscript:v16];
                if (v29)
                {
                  v52 = v19;
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  if (isKindOfClass)
                  {
                    v31 = v29;
                  }

                  else
                  {
                    v31 = 0;
                  }

                  v51 = v31;
                  if (isKindOfClass)
                  {
                    v32 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v29 error:0];
                    v33 = [(HMDAssistantCommand *)self actionOutcomeFromError:v32];
                    [v28 setOutcome:v33];

                    v17 = v46;
                    v19 = [(HMDAssistantCommand *)self getValueOfType:0 action:v15];
                  }

                  else
                  {
                    v34 = v29;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v35 = v34;
                    }

                    else
                    {
                      v35 = 0;
                    }

                    v36 = v35;

                    [v28 setOutcome:v45];
                    v19 = v36;
                  }
                }

                [(HMDAssistantCommand *)self populateMediaProfileWriteResult:v28 withValue:v19 serviceType:v49 action:v15];
                v37 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
                v38 = [v48 mediaProfileWithUUID:v37];

                v39 = entityForMediaProfile(v38, v47, [v15 includeCompleteInformation]);
                [v28 setEntity:v39];

                [v17 addObject:v28];
                v22 = v50;
              }
            }

            v55 = [v22 countByEnumeratingWithState:&v56 objects:v64 count:16];
          }

          while (v55);
        }

        v20 = v44 + 1;
        v14 = v42;
      }

      while (v44 + 1 != v43);
      v43 = [v42 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v43);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (id)handleReadWriteResponses:(id)a3 error:(id)a4 forAction:(id)a5 inServiceType:(id)a6 results:(id)a7 forObjects:(id)a8
{
  v119 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v86 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v15 code];
  v20 = 82;
  if (unlockErrorCode)
  {
    v20 = 2003;
  }

  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v63 = v15;
    v84 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v64 = v14;
    obj = v14;
    v22 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
    if (v22)
    {
      v23 = v22;
      v82 = *v100;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v100 != v82)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v99 + 1) + 8 * i);
          v26 = [v25 request];
          v27 = [v26 characteristic];
          v28 = [v27 service];

          v29 = [v84 objectForKey:v28];
          if (!v29)
          {
            v29 = [MEMORY[0x277CBEB18] array];
            [v84 setObject:v29 forKey:v28];
          }

          [v29 addObject:v25];
        }

        v23 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
      }

      while (v23);
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v76 = v84;
    v75 = [v76 countByEnumeratingWithState:&v95 objects:v117 count:16];
    if (v75)
    {
      v79 = 0;
      v74 = *v96;
      v83 = *MEMORY[0x277D47E50];
      v73 = *MEMORY[0x277D47F48];
      do
      {
        v30 = 0;
        do
        {
          if (*v96 != v74)
          {
            objc_enumerationMutation(v76);
          }

          v77 = *(*(&v95 + 1) + 8 * v30);
          v78 = v30;
          v31 = [v76 objectForKey:?];
          v32 = [v31 mutableCopy];

          v85 = actionResultForAction(v16);
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v33 = v32;
          v34 = [v33 countByEnumeratingWithState:&v91 objects:v116 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v92;
            v37 = v79;
            obja = v33;
            while (2)
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v92 != v36)
                {
                  objc_enumerationMutation(obja);
                }

                v39 = *(*(&v91 + 1) + 8 * j);
                v40 = [v39 error];

                if (v40)
                {
                  v41 = objc_autoreleasePoolPush();
                  v42 = self;
                  v43 = HMFGetOSLogHandle();
                  v79 = v40;
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v72 = v71 = v41;
                    v66 = [v40 code];
                    v70 = [v77 accessory];
                    [v70 name];
                    v44 = v69 = v42;
                    v68 = [v77 accessory];
                    v67 = [v68 uuid];
                    v45 = [v67 UUIDString];
                    v46 = [v77 instanceID];
                    v65 = [v39 request];
                    v47 = [v65 characteristic];
                    v48 = [v47 instanceID];
                    *buf = 138544642;
                    v105 = v72;
                    v106 = 2048;
                    v107 = v66;
                    v108 = 2112;
                    v109 = v44;
                    v110 = 2112;
                    v111 = v45;
                    v112 = 2112;
                    v113 = v46;
                    v114 = 2112;
                    v115 = v48;
                    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Error %tu for %@/%@/%@/%@", buf, 0x3Eu);

                    v42 = v69;
                    v40 = v79;

                    v41 = v71;
                  }

                  objc_autoreleasePoolPop(v41);
                  v49 = [v40 code];
                  v50 = 82;
                  if (unlockErrorCode)
                  {
                    v50 = 2003;
                  }

                  v33 = obja;
                  if (v49 != v50)
                  {
                    v51 = [(HMDAssistantCommand *)v42 actionOutcomeFromError:v40];
                    [v85 setOutcome:v51];
                  }

                  goto LABEL_34;
                }

                [v85 setOutcome:v83];
                v37 = 0;
              }

              v33 = obja;
              v35 = [obja countByEnumeratingWithState:&v91 objects:v116 count:16];
              v37 = 0;
              v79 = 0;
              if (v35)
              {
                continue;
              }

              break;
            }
          }

LABEL_34:

          v52 = [v16 attribute];
          v53 = [v52 isEqual:v73];

          if (v53)
          {
            [(HMDAssistantCommand *)self populateColorResult:v85 serviceType:v86 service:v77 action:v16 responses:v33 forObjects:v18];
            [v17 addObject:v85];
          }

          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v54 = v33;
          v55 = [v54 countByEnumeratingWithState:&v87 objects:v103 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v88;
            do
            {
              for (k = 0; k != v56; ++k)
              {
                if (*v88 != v57)
                {
                  objc_enumerationMutation(v54);
                }

                v59 = *(*(&v87 + 1) + 8 * k);
                v60 = actionResultForAction(v16);
                [(HMDAssistantCommand *)self populateResult:v60 fromResponse:v59 responses:v54 forAction:v16 serviceType:v86 forObjects:v18];
                [v17 addObject:v60];
              }

              v56 = [v54 countByEnumeratingWithState:&v87 objects:v103 count:16];
            }

            while (v56);
          }

          v30 = v78 + 1;
        }

        while (v78 + 1 != v75);
        v75 = [v76 countByEnumeratingWithState:&v95 objects:v117 count:16];
      }

      while (v75);
    }

    else
    {
      v79 = 0;
    }

    v15 = v63;
    v14 = v64;
    v21 = v79;
  }

  v61 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)populateColorResult:(id)a3 serviceType:(id)a4 service:(id)a5 action:(id)a6 responses:(id)a7 forObjects:(id)a8
{
  v86 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v56 = a4;
  v55 = a5;
  v14 = a6;
  v67 = a7;
  v54 = a8;
  v15 = [MEMORY[0x277CCAB68] string];
  v16 = [v14 attribute];
  v63 = v13;
  [v13 setResultAttribute:v16];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = [supportedColorSpaces allKeys];
  v62 = v15;
  v59 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v59)
  {
    v58 = *v80;
    v66 = *MEMORY[0x277D47E78];
    v64 = v14;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v80 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v17;
        v61 = *(*(&v79 + 1) + 8 * v17);
        v18 = [supportedColorSpaces objectForKeyedSubscript:?];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v19 = v18;
        v69 = [v19 countByEnumeratingWithState:&v75 objects:v84 count:16];
        if (v69)
        {
          v68 = *v76;
          v65 = v19;
          do
          {
            for (i = 0; i != v69; ++i)
            {
              if (*v76 != v68)
              {
                objc_enumerationMutation(v19);
              }

              v21 = *(*(&v75 + 1) + 8 * i);
              v22 = [v14 actionType];
              v23 = [v22 isEqualToString:v66];

              if (v23)
              {
                [v21 readCharacteristicType];
              }

              else
              {
                [v21 writeCharacteristicType];
              }
              v24 = ;
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v25 = v67;
              v26 = [v25 countByEnumeratingWithState:&v71 objects:v83 count:16];
              if (v26)
              {
                v70 = i;
                v27 = *v72;
                while (2)
                {
                  for (j = 0; j != v26; j = j + 1)
                  {
                    if (*v72 != v27)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v29 = *(*(&v71 + 1) + 8 * j);
                    v30 = [v29 request];
                    v31 = [v30 characteristic];
                    v32 = [v31 characteristicType];
                    v33 = [v32 isEqualToString:v24];

                    if (v33)
                    {
                      v34 = v29;
                      v35 = [v34 request];
                      v26 = [v35 characteristic];

                      if (v26)
                      {
                        v36 = [v63 outcome];
                        v37 = isOutcomeSuccess(v36);

                        v14 = v64;
                        if (v37)
                        {
                          [v25 removeObject:v34];
                          v19 = v65;
                          if ([v62 length])
                          {
                            [v62 appendString:{@", "}];
                          }

                          else
                          {
                            [v62 appendFormat:@"%@%@", v61, @":"];
                          }

                          v25 = [v26 value];
                          [v62 appendFormat:@"%@", v25];
                          goto LABEL_32;
                        }
                      }

                      else
                      {
                        v14 = v64;
                      }

                      v19 = v65;
                      i = v70;
                      goto LABEL_34;
                    }
                  }

                  v26 = [v25 countByEnumeratingWithState:&v71 objects:v83 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }

                v34 = 0;
                v14 = v64;
                v19 = v65;
LABEL_32:
                i = v70;
              }

              else
              {
                v34 = 0;
              }

LABEL_34:
            }

            v69 = [v19 countByEnumeratingWithState:&v75 objects:v84 count:16];
          }

          while (v69);
        }

        v15 = v62;
        if ([v62 length])
        {
          [v62 appendString:@";"];

          goto LABEL_41;
        }

        v17 = v60 + 1;
      }

      while (v60 + 1 != v59);
      v59 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
      if (v59)
      {
        continue;
      }

      break;
    }
  }

LABEL_41:

  if ([v15 length])
  {
    v38 = objc_alloc_init(MEMORY[0x277D47388]);
    [v38 setValue:v15];
    [v63 setResultValue:v38];
    v39 = [v14 value];
    if (!v39)
    {
      v46 = 1;
      v45 = v55;
      v47 = v56;
LABEL_51:

      goto LABEL_52;
    }

    v40 = v39;
    v41 = [v14 actionType];
    if (v41)
    {
      v42 = v41;
      v43 = [v14 actionType];
      v44 = [v43 isEqualToString:*MEMORY[0x277D47E78]];

      v45 = v55;
      if (!v44)
      {
        v46 = 1;
LABEL_50:
        v47 = v56;
        goto LABEL_51;
      }
    }

    else
    {

      v45 = v55;
    }

    v48 = [v14 value];
    v49 = [v63 resultValue];
    v46 = [(HMDAssistantCommand *)self isAttributeValue:v48 equalTo:v49];

    goto LABEL_50;
  }

  v46 = 1;
  v45 = v55;
  v47 = v56;
LABEL_52:
  v50 = entityForService(v45, v47, v54, [v14 includeCompleteInformation]);
  [v63 setEntity:v50];

  v51 = *MEMORY[0x277D85DE8];
  return v46;
}

- (id)parseColorEncoding:(id)a3
{
  v113 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D47E78];
  v98 = v3;
  v5 = [v3 actionType];
  v96 = v4;
  if ([v4 isEqualToString:v5])
  {
  }

  else
  {
    v6 = *MEMORY[0x277D47EA8];
    v7 = [v98 actionType];
    LOBYTE(v6) = [v6 isEqualToString:v7];

    if ((v6 & 1) == 0)
    {
      v64 = objc_autoreleasePoolPush();
      v65 = self;
      v66 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = HMFGetLogIdentifier();
        v71 = [v98 actionType];
        *buf = 138543618;
        v105 = v67;
        v106 = 2112;
        v107 = v71;
        _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@Action type for COLOR attribute is not GET/SET - %@", buf, 0x16u);

        goto LABEL_68;
      }

LABEL_69:

      objc_autoreleasePoolPop(v64);
      v72 = 0;
      goto LABEL_76;
    }
  }

  v8 = [v98 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v64 = objc_autoreleasePoolPush();
    v65 = self;
    v66 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = HMFGetLogIdentifier();
      v68 = [v98 value];
      v69 = [v98 value];
      *buf = 138543874;
      v105 = v67;
      v106 = 2112;
      v107 = v68;
      v108 = 2112;
      v109 = objc_opt_class();
      v70 = v109;
      _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@Value %@ for COLOR attribute is not string but %@", buf, 0x20u);

LABEL_68:
      goto LABEL_69;
    }

    goto LABEL_69;
  }

  v10 = [v98 value];
  v11 = [v10 value];

  v85 = [MEMORY[0x277CBEB38] dictionary];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v80 = v11;
  obj = [v11 componentsSeparatedByString:@""];;
  v12 = [obj countByEnumeratingWithState:&v100 objects:v112 count:16];
  if (!v12)
  {
    goto LABEL_74;
  }

  v13 = v12;
  v14 = &unk_27D8A7000;
  v94 = *MEMORY[0x277CCF6B8];
  v89 = *MEMORY[0x277CCF6C0];
  v90 = *v101;
  v84 = *MEMORY[0x277CCF6B0];
LABEL_7:
  v15 = 0;
  v81 = v13;
LABEL_8:
  if (*v101 != v90)
  {
    objc_enumerationMutation(obj);
  }

  v16 = *(*(&v100 + 1) + 8 * v15);
  if (![v16 length])
  {
    goto LABEL_61;
  }

  v17 = [v16 componentsSeparatedByString:@":"];
  if ([v17 count] == 2)
  {
    v18 = [v17 firstObject];
    v92 = [v14[377] allKeys];
    if (([v92 containsObject:v18] & 1) == 0)
    {
      v50 = v18;
      v51 = v15;
      v52 = objc_autoreleasePoolPush();
      v53 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543874;
        v105 = v55;
        v106 = 2112;
        v107 = v50;
        v108 = 2112;
        v109 = v92;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Unsupported color space: %@; only support %@. Ignoring...", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v52);
      v15 = v51;
      v18 = v50;
      goto LABEL_60;
    }

    v19 = [v14[377] objectForKey:v18];
    v20 = [v17 objectAtIndex:1];
    v21 = [v20 componentsSeparatedByString:{@", "}];
    v22 = [v21 count];
    v95 = v21;
    v86 = v20;
    v87 = v15;
    if (v22 != [v19 count])
    {
      v56 = v19;
      v57 = v18;
      v58 = objc_autoreleasePoolPush();
      v59 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = HMFGetLogIdentifier();
        v62 = [v56 count];
        v63 = [v95 count];
        *buf = 138544130;
        v105 = v61;
        v106 = 2112;
        v107 = v57;
        v108 = 2048;
        v109 = v62;
        v14 = &unk_27D8A7000;
        v110 = 2048;
        v111 = v63;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@Color space %@ requires %tu values - %tu provided. Ignoring...", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v58);
      v20 = v86;
      v15 = v87;
      v18 = v57;
      v19 = v56;
      goto LABEL_59;
    }

    if (![v21 count])
    {
      goto LABEL_73;
    }

    v93 = v18;
    v82 = v17;
    v83 = v19;
    v23 = 0;
    v24 = 0;
    v25 = v21;
    while (1)
    {
      v26 = MEMORY[0x277CCAC80];
      v27 = [v25 objectAtIndex:v24];
      v28 = [v26 scannerWithString:v27];

      v29 = [v19 objectAtIndex:v24];
      v30 = [v29 format];
      v31 = [v98 actionType];
      LODWORD(v27) = [v96 isEqualToString:v31];

      if (v27)
      {
        [v29 readCharacteristicType];
      }

      else
      {
        [v29 writeCharacteristicType];
      }
      v32 = ;
      if (v32)
      {
        if ([v30 isEqualToString:v94])
        {
          v99 = 0.0;
          if ([v28 scanDouble:&v99])
          {
            v91 = v23;
            v33 = [MEMORY[0x277CCABB0] numberWithDouble:v99];
            goto LABEL_33;
          }

          v34 = objc_autoreleasePoolPush();
          v35 = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138544130;
            v105 = v37;
            v106 = 2112;
            v107 = v93;
            v108 = 2112;
            v109 = v32;
            v110 = 2112;
            v111 = v94;
            v38 = v36;
            v39 = "%{public}@Color space %@ value for attribute %@ is not of format '%@'. Ignoring...";
            goto LABEL_46;
          }
        }

        else if ([v30 isEqualToString:v89])
        {
          v99 = 0.0;
          if ([v28 scanLongLong:&v99])
          {
            v91 = v23;
            v33 = [MEMORY[0x277CCABB0] numberWithLongLong:*&v99];
            goto LABEL_33;
          }

          v34 = objc_autoreleasePoolPush();
          v35 = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138544130;
            v105 = v37;
            v106 = 2112;
            v107 = v93;
            v108 = 2112;
            v109 = v32;
            v110 = 2112;
            v111 = v89;
            v38 = v36;
            v39 = "%{public}@Color space %@ value for attribute %@ is not of format '%@'. Ignoring...";
            goto LABEL_46;
          }
        }

        else if ([v30 isEqualToString:v84])
        {
          LODWORD(v99) = 0;
          if ([v28 scanInt:&v99])
          {
            v91 = v23;
            v33 = [MEMORY[0x277CCABB0] numberWithBool:LODWORD(v99) != 0];
LABEL_33:
            v41 = v33;
            v42 = objc_autoreleasePoolPush();
            v43 = self;
            v44 = HMFGetOSLogHandle();
            v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
            if (v41)
            {
              if (v45)
              {
                v46 = HMFGetLogIdentifier();
                *buf = 138544130;
                v105 = v46;
                v106 = 2112;
                v107 = v93;
                v108 = 2112;
                v109 = v32;
                v110 = 2112;
                v111 = v41;
                _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Color space %@:  %@=%@", buf, 0x2Au);

                v19 = v83;
              }

              objc_autoreleasePoolPop(v42);
              [v85 setObject:v41 forKey:v32];

              v47 = 1;
              v25 = v95;
              v23 = v91;
            }

            else
            {
              if (v45)
              {
                v48 = HMFGetLogIdentifier();
                *buf = 138543874;
                v105 = v48;
                v106 = 2112;
                v107 = v93;
                v108 = 2112;
                v109 = v32;
                _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Color space %@ characteristicType %@ value is nil", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v42);
              v47 = 0;
              v23 = 1;
              v25 = v95;
            }

            goto LABEL_49;
          }

          v34 = objc_autoreleasePoolPush();
          v35 = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138544130;
            v105 = v37;
            v106 = 2112;
            v107 = v93;
            v108 = 2112;
            v109 = v32;
            v110 = 2112;
            v111 = v84;
            v38 = v36;
            v39 = "%{public}@Color space %@ value for attribute %@ is not of format '%@'. Ignoring...";
LABEL_46:
            v40 = 42;
LABEL_47:
            _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, v39, buf, v40);

            v25 = v95;
          }
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          v35 = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138544130;
            v105 = v37;
            v106 = 2112;
            v107 = v93;
            v108 = 2112;
            v109 = v32;
            v110 = 2112;
            v111 = v30;
            v38 = v36;
            v39 = "%{public}@Color space %@ value for attribute %@ is not of a recognized format: %@. Ignoring...";
            goto LABEL_46;
          }
        }
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543874;
          v105 = v37;
          v106 = 2112;
          v107 = v93;
          v108 = 2112;
          v109 = v98;
          v38 = v36;
          v39 = "%{public}@Color space %@ characteristicType is nil for action %@.";
          v40 = 32;
          goto LABEL_47;
        }
      }

      objc_autoreleasePoolPop(v34);
      v47 = 0;
      v23 = 1;
LABEL_49:

      if ((v47 & 1) != 0 && ++v24 < [v25 count])
      {
        continue;
      }

      v13 = v81;
      v17 = v82;
      v14 = &unk_27D8A7000;
      v20 = v86;
      v15 = v87;
      v49 = v23;
      v18 = v93;
      if ((v49 & 1) == 0)
      {
LABEL_73:

        goto LABEL_74;
      }

LABEL_59:

LABEL_60:
LABEL_61:
      if (++v15 == v13)
      {
        v13 = [obj countByEnumeratingWithState:&v100 objects:v112 count:16];
        if (!v13)
        {
LABEL_74:

          v77 = v85;
          v72 = v85;
          goto LABEL_75;
        }

        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  v73 = objc_autoreleasePoolPush();
  v74 = self;
  v75 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
  {
    v76 = HMFGetLogIdentifier();
    *buf = 138543618;
    v105 = v76;
    v106 = 2112;
    v107 = v17;
    _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_ERROR, "%{public}@Color space encoding does not have two components: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v73);
  v72 = 0;
  v77 = v85;
LABEL_75:

LABEL_76:
  v78 = *MEMORY[0x277D85DE8];

  return v72;
}

- (void)handleCommandWithCompletionHandler:(id)a3
{
  v154 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAssistantCommand *)self actions];
  v6 = [v5 firstObject];

  mach_absolute_time();
  [(HMDAssistantCommand *)self setStartTime:UpTicksToMilliseconds()];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 aceId];
    v12 = [(HMDAssistantCommand *)v8 serverValidity];
    v13 = [(HMDAssistantCommand *)v8 hm_shortDescription];
    *buf = 138544130;
    v147 = v10;
    v148 = 2114;
    v149 = v11;
    v150 = 2114;
    v151 = v12;
    v152 = 2112;
    v153 = v13;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Executing Siri command(%{public}@) serverValidity %{public}@:\n%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v14 = [v6 actionType];

  if (v14)
  {
    v15 = [(HMDAssistantCommand *)v8 homeManager];
    v16 = [(HMDAssistantCommand *)v8 filter];
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

    if (v18)
    {
      v19 = v15;
      v20 = [v18 serviceType];
      v21 = [v20 isEqualToString:*MEMORY[0x277D48270]];

      v22 = [v6 attribute];
      v23 = [v22 isEqualToString:*MEMORY[0x277D47F80]];

      if (v23)
      {
        v24 = [v6 actionType];
        v25 = [v24 isEqualToString:*MEMORY[0x277D47EA8]];

        [v18 entityType];
        v27 = v26 = v18;
        v28 = [v27 isEqualToString:*MEMORY[0x277D48168]];

        v29 = [v26 sceneName];

        v30 = [v26 sceneType];
        v31 = v4;
        v32 = v29 | v30;
        v18 = v26;

        v33 = v32 == 0;
        v4 = v31;
        v34 = !v33;
        if (!v25 || !v28 || !v34)
        {
          v75 = objc_autoreleasePoolPush();
          v76 = v8;
          v77 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v78 = v129 = v75;
            v79 = [v6 actionType];
            v80 = [v26 sceneName];
            [v26 sceneType];
            v82 = v81 = v6;
            *buf = 138544130;
            v147 = v78;
            v148 = 2112;
            v149 = v79;
            v150 = 2112;
            v151 = v80;
            v152 = 2112;
            v153 = v82;
            _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_INFO, "%{public}@entityType is SCENE with ENABLED action attribute but either action(%@) is not SET action/empty sceneName(%@)/Type(%@)", buf, 0x2Au);

            v6 = v81;
            v4 = v31;

            v18 = v26;
            v75 = v129;
          }

          objc_autoreleasePoolPop(v75);
          [(HMDAssistantCommand *)v76 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v4];
          v15 = v19;
          goto LABEL_85;
        }
      }

      v35 = [v18 homeIdentifier];
      if (v35 || ([v18 homeName], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
      {

        v15 = v19;
      }

      else
      {
        v102 = [v6 actionType];
        v103 = [v102 isEqualToString:*MEMORY[0x277D47E78]];

        v15 = v19;
        if ((v103 & 1) == 0)
        {
          v104 = v4;
          v105 = v18;
          v106 = objc_autoreleasePoolPush();
          v107 = v8;
          v108 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
          {
            v109 = HMFGetLogIdentifier();
            *buf = 138543362;
            v147 = v109;
            _os_log_impl(&dword_229538000, v108, OS_LOG_TYPE_FAULT, "%{public}@Search filter must specify homeName or homeIdentifier for actions not of type GET", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v106);
          v18 = v105;
          v4 = v104;
        }
      }

      v36 = [(HMDAssistantCommand *)v8 _homeWithSearchFilter:v18];
      if (v36)
      {
        v37 = v36;
        v140 = 0;
        v38 = [(HMDAssistantCommand *)v8 objectsWithSearchFilter:v18 inHome:v36 serviceTypeIsATV:v21 overrideServiceTypeIfNeeded:&v140];
        v39 = v140;
LABEL_20:

        if ([v38 count])
        {
          v40 = v4;
          v133 = v6;
          v41 = [(HMDAssistantCommand *)v8 home];

          if (!v41)
          {
            v124 = v39;
            v125 = [v38 firstObject];
            v42 = [v125 hmf_stringForKey:@"objectHomeIdentifier"];
            v141 = 0u;
            v142 = 0u;
            v143 = 0u;
            v144 = 0u;
            v43 = [v15 homes];
            v44 = [v43 countByEnumeratingWithState:&v141 objects:buf count:16];
            if (v44)
            {
              v123 = v38;
              v128 = v18;
              v131 = v15;
              v126 = v40;
              v45 = *v142;
              while (2)
              {
                for (i = 0; i != v44; i = i + 1)
                {
                  if (*v142 != v45)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v47 = *(*(&v141 + 1) + 8 * i);
                  v48 = [v47 urlString];
                  v49 = [v42 isEqualToString:v48];

                  if (v49)
                  {
                    v44 = v47;
                    goto LABEL_70;
                  }
                }

                v44 = [v43 countByEnumeratingWithState:&v141 objects:buf count:16];
                if (v44)
                {
                  continue;
                }

                break;
              }

LABEL_70:
              v40 = v126;
              v18 = v128;
              v15 = v131;
              v38 = v123;
            }

            [(HMDAssistantCommand *)v8 setHome:v44];
            v110 = [(HMDAssistantCommand *)v8 home];

            if (!v110)
            {
              v111 = objc_autoreleasePoolPush();
              v112 = v8;
              v113 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v114 = v130 = v111;
                *buf = 138543618;
                v147 = v114;
                v148 = 2112;
                v149 = v125;
                _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_ERROR, "%{public}@Cannot evaluate home for Siri command with filtered result: %@", buf, 0x16u);

                v111 = v130;
              }

              objc_autoreleasePoolPop(v111);
            }

            v39 = v124;
          }

          v115 = objc_autoreleasePoolPush();
          v116 = v8;
          v117 = HMFGetOSLogHandle();
          v118 = os_log_type_enabled(v117, OS_LOG_TYPE_INFO);
          if (v21)
          {
            if (v118)
            {
              v119 = HMFGetLogIdentifier();
              *buf = 138543362;
              v147 = v119;
              _os_log_impl(&dword_229538000, v117, OS_LOG_TYPE_INFO, "%{public}@Start handling command for Apple Media Accessory", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v115);
            v120 = [v18 serviceType];
            v6 = v133;
            [(HMDAssistantCommand *)v116 _handleCommandForMediaAccessoryAction:v133 objects:v38 serviceType:v120 completionHandler:v40];

            v4 = v40;
          }

          else
          {
            if (v118)
            {
              v121 = HMFGetLogIdentifier();
              *buf = 138543362;
              v147 = v121;
              _os_log_impl(&dword_229538000, v117, OS_LOG_TYPE_INFO, "%{public}@Start handling command for HAP Characteristic", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v115);
            v6 = v133;
            v4 = v40;
            [(HMDAssistantCommand *)v116 _handleCommandForHAPAction:v133 serviceType:v39 objects:v38 completionHandler:v40];
          }
        }

        else
        {
          v83 = v39;
          v84 = objc_autoreleasePoolPush();
          v85 = v8;
          v86 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v88 = v87 = v4;
            *buf = 138543362;
            v147 = v88;
            _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_INFO, "%{public}@No matches found after filtering, bailing out", buf, 0xCu);

            v4 = v87;
          }

          objc_autoreleasePoolPop(v84);
          [(HMDAssistantCommand *)v85 returnResults:0 serviceType:v83 forAction:v6 completionHandler:v4];
        }

        goto LABEL_85;
      }

      v65 = objc_autoreleasePoolPush();
      v66 = v8;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = HMFGetLogIdentifier();
        *buf = 138543362;
        v147 = v74;
        _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Could not figure out the home to apply the command to", buf, 0xCu);
      }
    }

    else
    {
      v54 = [(HMDAssistantCommand *)v8 filter];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v37 = [(HMDAssistantCommand *)v8 filter];
        v56 = [v37 identifiers];
        v139 = 0;
        v57 = [(HMDAssistantCommand *)v8 objectsWithIdentifierList:v56 error:&v139];
        v58 = v139;

        v132 = v15;
        if (!v58)
        {
          if (![v57 count])
          {
            v89 = objc_autoreleasePoolPush();
            v90 = v8;
            v91 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v92 = v4;
              v94 = v93 = v6;
              *buf = 138543362;
              v147 = v94;
              _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_INFO, "%{public}@Identifier list filter results in no matches - re-generating sync data and requesting re-sync", buf, 0xCu);

              v6 = v93;
              v4 = v92;
            }

            objc_autoreleasePoolPop(v89);
            [v15 assistantSyncDataChanged:@"HMDIdentifierListFilterNoMatches"];
          }

          v134 = v6;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v38 = v57;
          v95 = [v38 countByEnumeratingWithState:&v135 objects:v145 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = v38;
            v127 = v4;
            v98 = *v136;
            v99 = *MEMORY[0x277D48270];
LABEL_58:
            v100 = 0;
            while (1)
            {
              if (*v136 != v98)
              {
                objc_enumerationMutation(v97);
              }

              v101 = [*(*(&v135 + 1) + 8 * v100) objectForKeyedSubscript:@"objectServiceType"];
              LODWORD(v21) = [v101 isEqualToString:v99];

              if (v21)
              {
                break;
              }

              if (v96 == ++v100)
              {
                v96 = [v97 countByEnumeratingWithState:&v135 objects:v145 count:16];
                if (v96)
                {
                  goto LABEL_58;
                }

                break;
              }
            }

            v38 = v97;

            v39 = 0;
            v4 = v127;
          }

          else
          {

            LODWORD(v21) = 0;
            v39 = 0;
          }

          v15 = v132;
          v6 = v134;
          v18 = 0;
          goto LABEL_20;
        }

        v59 = objc_autoreleasePoolPush();
        v60 = v8;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v62 = v4;
          v64 = v63 = v6;
          *buf = 138543618;
          v147 = v64;
          v148 = 2114;
          v149 = v58;
          _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Identifier list filter resolution failed with error %{public}@", buf, 0x16u);

          v6 = v63;
          v4 = v62;
        }

        objc_autoreleasePoolPop(v59);
        [(HMDAssistantCommand *)v60 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v4];

        v18 = 0;
LABEL_85:

        goto LABEL_86;
      }

      v65 = objc_autoreleasePoolPush();
      v66 = v8;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v69 = v68 = v4;
        v70 = [(HMDAssistantCommand *)v66 filter];
        v71 = objc_opt_class();
        *buf = 138543618;
        v147 = v69;
        v148 = 2112;
        v149 = v71;
        v72 = v71;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Unsupported filter type - %@", buf, 0x16u);

        v18 = 0;
        v4 = v68;
      }
    }

    objc_autoreleasePoolPop(v65);
    [(HMDAssistantCommand *)v66 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v4];
    goto LABEL_85;
  }

  v50 = objc_autoreleasePoolPush();
  v51 = v8;
  v52 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = HMFGetLogIdentifier();
    *buf = 138543362;
    v147 = v53;
    _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@There is no actionType, reporting malformed command", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v50);
  [(HMDAssistantCommand *)v51 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v4];
LABEL_86:

  v122 = *MEMORY[0x277D85DE8];
}

- (void)_handleCommandForHAPAction:(id)a3 serviceType:(id)a4 objects:(id)a5 completionHandler:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 actionType];
  if ([v14 isEqualToString:*MEMORY[0x277D47E78]])
  {

LABEL_4:
    [(HMDAssistantCommand *)self handleGetActionTypes:v10 serviceType:v11 forObjects:v12 completionHandler:v13];
    goto LABEL_10;
  }

  v15 = [v10 actionType];
  v16 = [v15 isEqualToString:*MEMORY[0x277D47E98]];

  if (v16)
  {
    goto LABEL_4;
  }

  v17 = [v10 actionType];
  if ([v17 isEqualToString:*MEMORY[0x277D47E88]])
  {
    goto LABEL_8;
  }

  v18 = [v10 actionType];
  if ([v18 isEqualToString:*MEMORY[0x277D47E80]])
  {

LABEL_8:
LABEL_9:
    [(HMDAssistantCommand *)self handleGetMetadataActionTypes:v10 serviceType:v11 forObjects:v12 completionHandler:v13];
    goto LABEL_10;
  }

  v20 = [v10 actionType];
  v21 = [v20 isEqualToString:*MEMORY[0x277D47E90]];

  if (v21)
  {
    goto LABEL_9;
  }

  v22 = [v10 actionType];
  if ([v22 isEqualToString:*MEMORY[0x277D47EA8]])
  {
    goto LABEL_15;
  }

  v23 = [v10 actionType];
  if ([v23 isEqualToString:*MEMORY[0x277D47EB8]])
  {

LABEL_15:
LABEL_16:
    [(HMDAssistantCommand *)self handleSetActionTypes:v10 serviceType:v11 forObjects:v12 completionHandler:v13];
    goto LABEL_10;
  }

  v24 = [v10 actionType];
  v25 = [v24 isEqualToString:*MEMORY[0x277D47EB0]];

  if (v25)
  {
    goto LABEL_16;
  }

  v26 = [v10 actionType];
  if ([v26 isEqualToString:*MEMORY[0x277D47EA0]])
  {
    goto LABEL_21;
  }

  v27 = [v10 actionType];
  if ([v27 isEqualToString:*MEMORY[0x277D47E70]])
  {

LABEL_21:
LABEL_22:
    [(HMDAssistantCommand *)self handleUpdateActionTypes:v10 serviceType:v11 forObjects:v12 completionHandler:v13];
    goto LABEL_10;
  }

  v28 = [v10 actionType];
  v29 = [v28 isEqualToString:*MEMORY[0x277D47EC0]];

  if (v29)
  {
    goto LABEL_22;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = HMFGetLogIdentifier();
    v34 = [v10 actionType];
    v35 = 138543874;
    v36 = v33;
    v37 = 2080;
    v38 = "[HMDAssistantCommand _handleCommandForHAPAction:serviceType:objects:completionHandler:]";
    v39 = 2112;
    v40 = v34;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@%s ### Siri sent an unsupported action type: %@", &v35, 0x20u);
  }

  objc_autoreleasePoolPop(v30);
  [(HMDAssistantCommand *)v31 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v13];
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleCommandForMediaAccessoryAction:(id)a3 objects:(id)a4 serviceType:(id)a5 completionHandler:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 actionType];
  v15 = [v14 isEqualToString:*MEMORY[0x277D47E78]];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v19 = [v10 actionType];
  v20 = [v19 isEqualToString:*MEMORY[0x277D47EA8]];

  if (!v20)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v21 = HMFGetLogIdentifier();
      v22 = [v10 actionType];
      v24 = 138543874;
      v25 = v21;
      v26 = 2080;
      v27 = "[HMDAssistantCommand _handleCommandForMediaAccessoryAction:objects:serviceType:completionHandler:]";
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@%s ### Siri sent an unsupported action type: %@", &v24, 0x20u);
    }

LABEL_8:

    objc_autoreleasePoolPop(v16);
    [(HMDAssistantCommand *)v17 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v13];
    goto LABEL_9;
  }

  [(HMDAssistantCommand *)self handleMediaAccessorySetActionType:v10 forObjects:v11 withServiceType:v12 completionHandler:v13];
LABEL_9:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateActionTypes:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6
{
  v153[1] = *MEMORY[0x277D85DE8];
  v107 = a3;
  v106 = a4;
  v11 = a5;
  v89 = a6;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  val = self;
  v14 = MEMORY[0x22AAD2510](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 2520];
  v88 = [v12 initWithName:v15];

  v16 = [v107 attribute];

  if (v16)
  {
    v17 = [v107 attribute];
    v18 = [v107 actionType];
    v98 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:v11 byAttribute:v17 forActionType:v18];

    v11 = v98;
    if ([v98 count])
    {
      v87 = +[HMDHAPMetadata getSharedInstance];
      v19 = [v107 attribute];
      v86 = [v87 mapReadCharacteristicFromAssistantName:v19];

      if (!v86)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = HMFGetLogIdentifier();
          v29 = [v107 attribute];
          *buf = 138543618;
          *&buf[4] = v28;
          *&buf[12] = 2112;
          *&buf[14] = v29;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        [(HMDAssistantCommand *)v26 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v89];
        goto LABEL_82;
      }

      v20 = [v87 getAliasedCharacteristicTypes:?];
      if ([v20 count])
      {
        v84 = [v20 arrayByAddingObject:v86];
        [(HMDAssistantCommand *)self filterObjects:v98 forCharacteristicTypes:v84];
      }

      else
      {
        v153[0] = v86;
        v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:1];
        [(HMDAssistantCommand *)self filterObjects:v98 forCharacteristicTypes:v84];
      }
      v85 = ;
      if (![v85 count])
      {
        [(HMDAssistantCommand *)self returnResults:0 serviceType:v106 forAction:v107 completionHandler:v89];
LABEL_81:

LABEL_82:
        v11 = v98;
        goto LABEL_83;
      }

      v30 = [v107 attribute];
      v83 = [v87 mapCharacteristicValueType:v30];

      v31 = [v107 actionType];
      if ([v31 isEqualToString:*MEMORY[0x277D47EC0]])
      {
        v32 = [v83 isEqualToString:*MEMORY[0x277CCF6B0]];

        if ((v32 & 1) == 0)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            v37 = [v107 actionType];
            *buf = 138544130;
            *&buf[4] = v36;
            *&buf[12] = 2080;
            *&buf[14] = "[HMDAssistantCommand handleUpdateActionTypes:serviceType:forObjects:completionHandler:]";
            *&buf[22] = 2112;
            v151 = v37;
            LOWORD(v152) = 2112;
            *(&v152 + 2) = v83;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@%s ### Siri passed an incorrect action (%@) to a %@ value type.", buf, 0x2Au);
          }

LABEL_79:

          objc_autoreleasePoolPop(v33);
          [(HMDAssistantCommand *)v34 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v89];
LABEL_80:

          goto LABEL_81;
        }
      }

      else
      {
      }

      v38 = [v107 actionType];
      v39 = *MEMORY[0x277D47E70];
      if ([v38 isEqualToString:*MEMORY[0x277D47E70]])
      {
        if (([v83 isEqualToString:*MEMORY[0x277CCF6C0]] & 1) == 0)
        {
          v40 = [v83 isEqualToString:*MEMORY[0x277CCF6B8]];

          if ((v40 & 1) == 0)
          {
LABEL_77:
            v33 = objc_autoreleasePoolPush();
            v34 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v80 = HMFGetLogIdentifier();
              v81 = [v107 actionType];
              *buf = 138544130;
              *&buf[4] = v80;
              *&buf[12] = 2080;
              *&buf[14] = "[HMDAssistantCommand handleUpdateActionTypes:serviceType:forObjects:completionHandler:]";
              *&buf[22] = 2112;
              v151 = v81;
              LOWORD(v152) = 2112;
              *(&v152 + 2) = v83;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@%s ### Siri passed an incorrect action (%@) to a %@ value type.", buf, 0x2Au);
            }

            goto LABEL_79;
          }

LABEL_30:
          group = dispatch_group_create();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v151 = __Block_byref_object_copy__19541;
          *&v152 = __Block_byref_object_dispose__19542;
          *(&v152 + 1) = [MEMORY[0x277CBEB18] array];
          v42 = [v107 attribute];
          v105 = [v87 mapWriteCharacteristicFromAssistantName:v42];

          v43 = [v107 actionType];
          v91 = [v43 isEqualToString:v39];

          if (v105)
          {
            v104 = [v87 getAliasedCharacteristicTypes:?];

            v95 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
            v97 = [v107 includeCompleteInformation];
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            obj = v85;
            v44 = [obj countByEnumeratingWithState:&v139 objects:v146 count:16];
            if (v44)
            {
              v100 = *v140;
              v90 = *MEMORY[0x277D47E10];
              do
              {
                v102 = v44;
                for (i = 0; i != v102; ++i)
                {
                  if (*v140 != v100)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v46 = *(*(&v139 + 1) + 8 * i);
                  v47 = [v46 service];
                  v48 = [v47 characteristics];
                  v49 = [v48 hmf_firstObjectWithCharacteristicType:v105];

                  v137 = 0u;
                  v138 = 0u;
                  v135 = 0u;
                  v136 = 0u;
                  v50 = v104;
                  v51 = [v50 countByEnumeratingWithState:&v135 objects:v145 count:16];
                  if (v51)
                  {
                    v52 = *v136;
LABEL_38:
                    v53 = 0;
                    while (1)
                    {
                      if (*v136 != v52)
                      {
                        objc_enumerationMutation(v50);
                      }

                      if (v49)
                      {
                        break;
                      }

                      v54 = *(*(&v135 + 1) + 8 * v53);
                      v55 = [v47 characteristics];
                      v49 = [v55 hmf_firstObjectWithCharacteristicType:v54];

                      if (v51 == ++v53)
                      {
                        v51 = [v50 countByEnumeratingWithState:&v135 objects:v145 count:16];
                        if (v51)
                        {
                          goto LABEL_38;
                        }

                        break;
                      }
                    }
                  }

                  if (([v49 properties] & 4) != 0)
                  {
                    v58 = [v47 accessory];
                    v56 = [v58 home];

                    v59 = [v95 objectForKey:v56];
                    if (!v59)
                    {
                      v59 = [MEMORY[0x277CBEB18] array];
                      [v95 setObject:v59 forKey:v56];
                    }

                    v60 = [HMDCharacteristicRequest requestWithCharacteristic:v46];
                    [v59 addObject:v60];
                  }

                  else
                  {
                    v56 = actionResultForAction(v107);
                    [v56 setOutcome:v90];
                    v57 = entityForService(v47, v106, v98, v97);
                    [v56 setEntity:v57];

                    [(HMDAssistantCommand *)val populateResult:v56 withService:v47 serviceType:v106 characteristic:v46 resultAttribute:0 action:v107];
                    [*(*&buf[8] + 40) addObject:v56];
                  }
                }

                v44 = [obj countByEnumeratingWithState:&v139 objects:v146 count:16];
              }

              while (v44);
            }

            objc_initWeak(location, val);
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v101 = v95;
            v96 = [v101 countByEnumeratingWithState:&v131 objects:v144 count:16];
            if (v96)
            {
              obja = *v132;
              do
              {
                for (j = 0; j != v96; ++j)
                {
                  if (*v132 != obja)
                  {
                    objc_enumerationMutation(v101);
                  }

                  v61 = *(*(&v131 + 1) + 8 * j);
                  dispatch_group_enter(group);
                  v62 = [v101 objectForKey:v61];
                  if (v91)
                  {
                    v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v62];
                    v129 = 0u;
                    v130 = 0u;
                    v127 = 0u;
                    v128 = 0u;
                    v64 = v62;
                    v65 = [v64 countByEnumeratingWithState:&v127 objects:v143 count:16];
                    if (v65)
                    {
                      v66 = *v128;
                      do
                      {
                        for (k = 0; k != v65; ++k)
                        {
                          if (*v128 != v66)
                          {
                            objc_enumerationMutation(v64);
                          }

                          v68 = [*(*(&v127 + 1) + 8 * k) characteristic];
                          v69 = [v68 service];
                          v70 = getActivationCharacteristicFromServiceIfAny(v69);

                          v71 = [HMDCharacteristicRequest requestWithCharacteristic:v70];
                          if (v70 && ([v63 containsObject:v71] & 1) == 0)
                          {
                            [v63 addObject:v71];
                          }
                        }

                        v65 = [v64 countByEnumeratingWithState:&v127 objects:v143 count:16];
                      }

                      while (v65);
                    }

                    v62 = [v63 copy];
                  }

                  else
                  {
                    v63 = 0;
                  }

                  v72 = [(HMDAssistantCommand *)val assistantCommandHelper];
                  v113[0] = MEMORY[0x277D85DD0];
                  v113[1] = 3221225472;
                  v113[2] = __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke;
                  v113[3] = &unk_278670FE8;
                  objc_copyWeak(&v124, location);
                  v114 = v88;
                  v125 = v91;
                  v115 = v107;
                  v116 = v106;
                  v117 = v98;
                  v123 = buf;
                  v126 = v97;
                  v118 = v105;
                  v119 = v104;
                  v122 = v89;
                  v120 = group;
                  v121 = v61;
                  [v72 addReadRequests:v62 home:v61 completion:v113];

                  objc_destroyWeak(&v124);
                }

                v96 = [v101 countByEnumeratingWithState:&v131 objects:v144 count:16];
              }

              while (v96);
            }

            v73 = [(HMDAssistantCommand *)val queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke_132;
            block[3] = &unk_278686E40;
            v109 = v88;
            v110 = val;
            v112 = buf;
            v111 = v89;
            dispatch_group_notify(group, v73, block);

            objc_destroyWeak(location);
            v20 = v104;
          }

          else
          {
            v74 = objc_autoreleasePoolPush();
            v75 = self;
            v76 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v77 = HMFGetLogIdentifier();
              v78 = [v107 attribute];
              *location = 138543618;
              *&location[4] = v77;
              v148 = 2112;
              v149 = v78;
              _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", location, 0x16u);
            }

            objc_autoreleasePoolPop(v74);
            [(HMDAssistantCommand *)v75 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v89];
          }

          _Block_object_dispose(buf, 8);
          goto LABEL_80;
        }
      }

      else
      {
        v41 = [v107 actionType];
        if (([v41 isEqualToString:*MEMORY[0x277D47EA0]] & 1) != 0 && !objc_msgSend(v83, "isEqualToString:", *MEMORY[0x277CCF6C0]))
        {
          v79 = [v83 isEqualToString:*MEMORY[0x277CCF6B8]];

          if ((v79 & 1) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_30;
        }
      }

      goto LABEL_30;
    }

    [(HMDAssistantCommand *)self returnResults:0 serviceType:v106 forAction:v107 completionHandler:v89];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@In Update action types, There is no attribute in action - reporting as malformed command", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    [(HMDAssistantCommand *)v22 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v89];
  }

LABEL_83:

  v82 = *MEMORY[0x277D85DE8];
}

void __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v137 = *MEMORY[0x277D85DE8];
  v93 = a2;
  v92 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  if (!WeakRetained)
  {
    goto LABEL_82;
  }

  v103 = a1;
  [*(a1 + 32) begin];
  v6 = objc_autoreleasePoolPush();
  v91 = WeakRetained;
  v100 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543874;
    v132 = v8;
    v133 = 2112;
    v134 = v92;
    v135 = 2112;
    v136 = v93;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received response %@ for read request with error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v94 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v9 = [v93 code];
  v10 = 82;
  if (unlockErrorCode)
  {
    v10 = 2003;
  }

  if (v9 == v10)
  {
    v11 = 0;
    goto LABEL_63;
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v92;
  v99 = [obj countByEnumeratingWithState:&v120 objects:v130 count:16];
  if (!v99)
  {
    v12 = 0;
    goto LABEL_62;
  }

  v12 = 0;
  v97 = *v121;
  v90 = *MEMORY[0x277D47E50];
  v89 = *MEMORY[0x277D48048];
  do
  {
    v13 = 0;
    do
    {
      if (*v121 != v97)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v120 + 1) + 8 * v13);
      v15 = [v14 request];
      v101 = [v15 characteristic];

      if (*(v103 + 120) != 1 || ([v101 type], v16 = objc_claimAutoreleasedReturnValue(), v17 = isActivationCharacteristicType(v16), v16, (v17 & 1) == 0))
      {
        v18 = [v14 error];

        if (v18)
        {
          v19 = [v18 code];
          v20 = 82;
          if (unlockErrorCode)
          {
            v20 = 2003;
          }

          if (v19 == v20)
          {

            v12 = v18;
            goto LABEL_62;
          }

          v21 = actionResultForAction(*(v103 + 40));
          [v100 populateResult:v21 fromResponse:v14 responses:obj forAction:*(v103 + 40) serviceType:*(v103 + 48) forObjects:*(v103 + 56)];
          [*(*(*(v103 + 104) + 8) + 40) addObject:v21];
          goto LABEL_53;
        }

        v22 = [v101 service];
        v21 = v22;
        if (*(v103 + 120))
        {
          v23 = getActivationCharacteristicFromServiceIfAny(v22);
          v24 = v23;
          if (v23)
          {
            v25 = [v23 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            v27 = v26;

            if (v27)
            {
              v28 = [v27 intValue] == 0;

              if (v28)
              {
                v29 = *(v103 + 48);
                v30 = *(v103 + 121);
                v31 = MEMORY[0x277D47338];
                v32 = *(v103 + 56);
                v33 = v29;
                v21 = v21;
                v34 = objc_alloc_init(v31);
                [v34 setOutcome:v90];
                v35 = entityForService(v21, v33, v32, v30 & 1);

                [v34 setEntity:v35];
                [v34 setResultAttribute:v89];
                v36 = objc_alloc_init(MEMORY[0x277D47340]);
                [v36 setValue:{objc_msgSend(&unk_283E71BA0, "BOOLValue")}];
                [v34 setResultValue:v36];

                v37 = [*(v103 + 40) identifier];
                v38 = [v37 absoluteString];
                [v34 setRequestActionId:v38];

                v39 = *(*(*(v103 + 104) + 8) + 40);
                v40 = v34;
                v124 = 0u;
                v125 = 0u;
                v126 = 0u;
                v127 = 0u;
                v95 = v39;
                v41 = [v95 countByEnumeratingWithState:&v124 objects:buf count:16];
                if (v41)
                {
                  v96 = *v125;
                  do
                  {
                    for (i = 0; i != v41; ++i)
                    {
                      if (*v125 != v96)
                      {
                        objc_enumerationMutation(v95);
                      }

                      v43 = *(*(&v124 + 1) + 8 * i);
                      v44 = [v40 entity];
                      v45 = [v43 entity];
                      if ([v44 isEqual:v45])
                      {
                        v46 = [v40 resultAttribute];
                        v47 = [v43 resultAttribute];
                        v48 = [v46 isEqualToString:v47];

                        if (v48)
                        {

                          goto LABEL_57;
                        }
                      }

                      else
                      {
                      }
                    }

                    v41 = [v95 countByEnumeratingWithState:&v124 objects:buf count:16];
                  }

                  while (v41);
                }

                [*(*(*(v103 + 104) + 8) + 40) addObject:v40];
LABEL_57:

LABEL_52:
                v18 = 0;
LABEL_53:

                v12 = v18;
                goto LABEL_54;
              }
            }

            else
            {
            }
          }
        }

        else
        {
          [v100 addActivationCharacteristicsIfNeeded:v94 forCharacteristic:v101];
        }

        v49 = [v14 request];
        v50 = [v49 characteristic];
        v51 = [v100 updateValue:v50 forAction:*(v103 + 40)];

        v52 = [v14 request];
        v53 = [v52 characteristic];
        v54 = [v53 value];
        v55 = [v14 request];
        v56 = [v55 characteristic];
        v57 = [v56 metadata];
        v58 = [v100 compareCurrentValue:v54 newValue:v51 withMetadata:v57];

        if (v58)
        {
          v59 = actionResultForAction(*(v103 + 40));
          [v59 setOutcome:v58];
          v60 = entityForService(v21, *(v103 + 48), *(v103 + 56), *(v103 + 121));
          [v59 setEntity:v60];

          [v100 populateResult:v59 withService:v21 serviceType:*(v103 + 48) characteristic:v101 resultAttribute:0 action:*(v103 + 40)];
          [*(*(*(v103 + 104) + 8) + 40) addObject:v59];
        }

        else
        {
          v61 = [v21 characteristics];
          v59 = [v61 hmf_firstObjectWithCharacteristicType:*(v103 + 64)];

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v62 = *(v103 + 72);
          v63 = [v62 countByEnumeratingWithState:&v116 objects:v129 count:16];
          if (v63)
          {
            v64 = *v117;
LABEL_44:
            v65 = 0;
            while (1)
            {
              if (*v117 != v64)
              {
                objc_enumerationMutation(v62);
              }

              if (v59)
              {
                break;
              }

              v66 = *(*(&v116 + 1) + 8 * v65);
              v67 = [v21 characteristics];
              v59 = [v67 hmf_firstObjectWithCharacteristicType:v66];

              if (v63 == ++v65)
              {
                v63 = [v62 countByEnumeratingWithState:&v116 objects:v129 count:16];
                if (v63)
                {
                  goto LABEL_44;
                }

                break;
              }
            }
          }

          [v94 setObject:v51 forKey:v59];
        }

        goto LABEL_52;
      }

LABEL_54:

      ++v13;
    }

    while (v13 != v99);
    v68 = [obj countByEnumeratingWithState:&v120 objects:v130 count:16];
    v99 = v68;
  }

  while (v68);
LABEL_62:

  v69 = [v100 assistantCommandHelper];
  [v69 removeResponses:obj];

  v11 = v12;
LABEL_63:
  v102 = v11;
  v70 = [v11 code];
  v71 = 82;
  if (unlockErrorCode)
  {
    v71 = 2003;
  }

  if (v70 == v71)
  {
    goto LABEL_69;
  }

  v72 = [v93 code];
  v73 = 82;
  if (unlockErrorCode)
  {
    v73 = 2003;
  }

  if (v72 == v73)
  {
LABEL_69:
    [v100 reportUnlockRequired:*(v103 + 96)];
  }

  else
  {
    if ([v94 count])
    {
      v74 = [MEMORY[0x277CBEB18] array];
      v115 = 0u;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      v75 = v94;
      v76 = [v75 countByEnumeratingWithState:&v112 objects:v128 count:16];
      if (v76)
      {
        v77 = *v113;
        do
        {
          for (j = 0; j != v76; ++j)
          {
            if (*v113 != v77)
            {
              objc_enumerationMutation(v75);
            }

            v79 = *(*(&v112 + 1) + 8 * j);
            v80 = [v75 objectForKey:v79];
            v81 = [v79 authorizationData];
            v82 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v79 value:v80 authorizationData:v81 type:0];

            [v74 addObject:v82];
          }

          v76 = [v75 countByEnumeratingWithState:&v112 objects:v128 count:16];
        }

        while (v76);
      }

      v83 = [v100 assistantCommandHelper];
      v84 = *(v103 + 88);
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke_131;
      v104[3] = &unk_278670FC0;
      objc_copyWeak(&v111, (v103 + 112));
      v105 = *(v103 + 80);
      v109 = *(v103 + 96);
      v106 = *(v103 + 40);
      v85 = *(v103 + 48);
      v86 = *(v103 + 104);
      v107 = v85;
      v110 = v86;
      v108 = *(v103 + 56);
      [v83 addWriteRequests:v74 home:v84 completion:v104];

      objc_destroyWeak(&v111);
      v87 = v103;
    }

    else
    {
      v87 = v103;
      dispatch_group_leave(*(v103 + 80));
    }

    [*(v87 + 32) end];
  }

  WeakRetained = v91;
LABEL_82:

  v88 = *MEMORY[0x277D85DE8];
}

uint64_t __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke_132(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) begin];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for update-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke_131(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response %@ for write request with %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v9 handleReadWriteResponses:v6 error:v5 forAction:*(a1 + 40) inServiceType:*(a1 + 48) results:*(*(*(a1 + 72) + 8) + 40) forObjects:*(a1 + 56)];
    v13 = [v5 code];
    v14 = 82;
    if (unlockErrorCode)
    {
      v14 = 2003;
    }

    if (v13 == v14)
    {
      goto LABEL_10;
    }

    v15 = [v12 code];
    v16 = 82;
    if (unlockErrorCode)
    {
      v16 = 2003;
    }

    if (v15 == v16)
    {
LABEL_10:
      [v9 reportUnlockRequired:*(a1 + 64)];
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
    (*(*(a1 + 64) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)updateValue:(id)a3 forAction:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 value];
  v8 = [v6 actionType];
  v9 = +[HMDHAPMetadata getSharedInstance];
  v10 = [v6 attribute];
  v11 = [v9 mapCharacteristicValueType:v10];

  if ([v8 isEqualToString:*MEMORY[0x277D47EC0]])
  {
    v12 = [v7 BOOLValue];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v12 ^ 1u];
    goto LABEL_20;
  }

  v53 = v8;
  v50 = v9;
  if ([v11 isEqualToString:*MEMORY[0x277CCF6C0]])
  {
    *&v14 = [v7 intValue];
  }

  else
  {
    [v7 floatValue];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v16 = [v6 value];
  v17 = [v16 units];
  v18 = [v6 attribute];
  v19 = [(HMDAssistantCommand *)self adjustGetValue:v15 type:v11 units:v17 attribute:v18];

  v20 = v19;
  [v19 floatValue];
  v22 = v21;
  v23 = [v6 value];

  v24 = 5.0;
  if (v23)
  {
    v25 = [v6 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v27 = [v6 value];
    v28 = v27;
    v29 = v53;
    if (isKindOfClass)
    {
      v24 = [v27 value];
LABEL_12:

      goto LABEL_13;
    }

    objc_opt_class();
    v30 = objc_opt_isKindOfClass();

    if (v30)
    {
      v28 = [v6 value];
      [v28 value];
      v24 = v31;
      goto LABEL_12;
    }
  }

  else
  {
    v29 = v53;
  }

LABEL_13:
  v32 = +[HMDHAPMetadata getSharedInstance];
  v33 = [v6 attribute];
  v34 = [v32 mapWriteCharacteristicFromAssistantName:v33];

  v52 = [v5 service];
  v35 = [v52 characteristics];
  v36 = [v35 hmf_firstObjectWithCharacteristicType:v34];

  if (!v36)
  {
    v37 = [v32 getCharacteristicTypeAlias:v34];
    v38 = [v52 characteristics];
    v36 = [v38 hmf_firstObjectWithCharacteristicType:v37];

    v29 = v53;
  }

  v51 = v5;
  v48 = v34;
  v49 = v32;
  if ([v29 isEqualToString:*MEMORY[0x277D47EA0]])
  {
    *&v39 = v22 + v24;
  }

  else
  {
    v40 = [v29 isEqualToString:*MEMORY[0x277D47E70]];
    *&v39 = v22 - v24;
    if (!v40)
    {
      *&v39 = v22;
    }
  }

  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v39];

  v42 = [v6 value];
  v43 = [v42 units];
  v44 = [v6 attribute];
  v45 = [(HMDAssistantCommand *)self adjustSetValue:v41 type:v11 units:v43 attribute:v44];

  v46 = [v36 metadata];
  v13 = [(HMDAssistantCommand *)self updateValueToBoundary:v45 valueType:v11 fudgeMinimum:1 metadata:v46];

  v7 = v41;
  v9 = v50;
  v5 = v51;
  v8 = v53;
LABEL_20:

  return v13;
}

- (id)updateValueToBoundary:(id)a3 valueType:(id)a4 fudgeMinimum:(BOOL)a5 metadata:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = v9;
  v13 = v12;
  if (v11)
  {
    objc_opt_class();
    v13 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = [v11 maximumValue];

      v13 = v12;
      if (v14)
      {
        v15 = [v11 maximumValue];
        v16 = [v15 compare:v12];

        v13 = v12;
        if (v16 == -1)
        {
          v13 = [v11 maximumValue];
        }
      }

      v17 = [v11 minimumValue];

      if (v17)
      {
        if (v7 && ([v11 stepValue], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
        {
          v19 = [v10 isEqualToString:*MEMORY[0x277CCF6C0]];
          v20 = [v11 minimumValue];
          v21 = v20;
          if (v19)
          {
            v22 = [v20 intValue];
            v23 = [v11 stepValue];
            v24 = [v23 intValue] + v22;

            v25 = MEMORY[0x277CCABB0];
            *&v26 = v24;
          }

          else
          {
            [v20 floatValue];
            v29 = v28;
            v30 = [v11 stepValue];
            [v30 floatValue];
            v32 = v29 + v31;

            v25 = MEMORY[0x277CCABB0];
            *&v26 = v32;
          }

          v27 = [v25 numberWithFloat:v26];
        }

        else
        {
          v27 = [v11 minimumValue];
        }

        v33 = v27;
        if ([v27 compare:v12] == 1)
        {
          v34 = v33;

          v13 = v34;
        }
      }
    }
  }

  return v13;
}

- (void)handleSetActionTypes:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6
{
  v161[1] = *MEMORY[0x277D85DE8];
  v123 = a3;
  v122 = a4;
  v121 = a5;
  v119 = a6;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  val = self;
  v13 = MEMORY[0x22AAD2510](self, a2);
  v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 2200];
  v116 = [v11 initWithName:v14];

  v15 = [v123 attribute];

  if (!v15)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@In Set action types, There is no attribute in action - reporting as malformed command", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v16 = [v123 actionType];
  v114 = *MEMORY[0x277D47EA8];
  if ([v16 isEqualToString:?])
  {
    v17 = [v123 value];

    if (!v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@No value field for SET actionType", buf, 0xCu);
      }

LABEL_6:

      objc_autoreleasePoolPop(v18);
      [(HMDAssistantCommand *)v19 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v119];
      goto LABEL_85;
    }
  }

  else
  {
  }

  v107 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K =[d] %@", @"objectType", *MEMORY[0x277D48168]];
  v108 = [v121 filteredArrayUsingPredicate:v107];
  if ([v108 count])
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Entity specified is an action set, executing it", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [v108 firstObject];
    v28 = actionSetFromObject(v27);

    [(HMDAssistantCommand *)v24 executeActionSet:v28 action:v123 withCompletionHandler:v119];
    goto LABEL_84;
  }

  v29 = [v123 attribute];
  v30 = [v29 isEqualToString:*MEMORY[0x277D47F48]];

  if (v30)
  {
    [(HMDAssistantCommand *)self handleSetColor:v123 forObjects:v121 service:v122 completionHandler:v119];
    goto LABEL_84;
  }

  v31 = [v123 attribute];
  v32 = [v31 isEqualToString:*MEMORY[0x277D47EC8]];

  if (v32)
  {
    [(HMDAssistantCommand *)self handleSetNaturalLightingAction:v123 serviceType:v122 forObjects:v121 completionHandler:v119];
    goto LABEL_84;
  }

  v103 = +[HMDHAPMetadata getSharedInstance];
  v33 = [v123 attribute];
  v102 = [v103 mapWriteCharacteristicFromAssistantName:v33];

  if (!v102)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [v123 attribute];
      *buf = 138543618;
      *&buf[4] = v38;
      *&buf[12] = 2112;
      *&buf[14] = v39;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [(HMDAssistantCommand *)v36 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v119];

    goto LABEL_84;
  }

  v34 = [v123 attribute];
  v111 = [v103 mapCharacteristicValueType:v34];

  v100 = [v103 getAliasedCharacteristicTypes:v102];
  if ([v100 count])
  {
    v99 = [v100 arrayByAddingObject:v102];
    [(HMDAssistantCommand *)self filterObjects:v121 forCharacteristicTypes:v99];
  }

  else
  {
    v161[0] = v102;
    v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:1];
    [(HMDAssistantCommand *)self filterObjects:v121 forCharacteristicTypes:v99];
  }
  v101 = ;
  if (![v101 count])
  {
    [(HMDAssistantCommand *)self returnResults:0 serviceType:v122 forAction:v123 completionHandler:v119];
    goto LABEL_83;
  }

  v98 = [(HMDAssistantCommand *)self getValueOfType:v111 action:v123];
  v40 = [v123 value];
  v41 = [v40 units];
  v42 = [v123 attribute];
  v120 = [(HMDAssistantCommand *)self adjustSetValue:v98 type:v111 units:v41 attribute:v42];

  v43 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v158 = __Block_byref_object_copy__19541;
  v159 = __Block_byref_object_dispose__19542;
  v160 = [MEMORY[0x277CBEB18] array];
  v117 = [v123 includeCompleteInformation];
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  obj = v101;
  v44 = [obj countByEnumeratingWithState:&v147 objects:v156 count:16];
  if (!v44)
  {
    goto LABEL_54;
  }

  v45 = *v148;
  v110 = *MEMORY[0x277D47EB0];
  v106 = *MEMORY[0x277D47EB8];
  v109 = *MEMORY[0x277CCFB18];
  v105 = *MEMORY[0x277D47E48];
  v104 = *MEMORY[0x277D47DF8];
  v112 = *MEMORY[0x277D47E10];
  do
  {
    v46 = 0;
    do
    {
      if (*v148 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v47 = *(*(&v147 + 1) + 8 * v46);
      v48 = [v47 metadata];
      if (([v47 properties] & 4) == 0)
      {
        v49 = actionResultForAction(v123);
        v50 = [v47 service];
        [v49 setOutcome:v112];
        v51 = entityForService(v50, v122, v121, v117);
        [v49 setEntity:v51];

        [(HMDAssistantCommand *)val populateResult:v49 withService:v50 serviceType:v122 characteristic:v47 resultAttribute:0 action:v123];
        [*(*&buf[8] + 40) addObject:v49];
        goto LABEL_34;
      }

      v52 = [v123 actionType];
      v53 = [v52 isEqualToString:v114];

      if (v53)
      {
        v49 = v120;
        v120 = [(HMDAssistantCommand *)val updateValueToBoundary:v49 valueType:v111 fudgeMinimum:0 metadata:v48];

        if (v49 == v120 || ([v47 characteristicType], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "isEqual:", v109), v54, !v55))
        {
          [v43 setObject:v120 forKey:v47];
        }

        else
        {
          v50 = actionResultForAction(v123);
          v56 = [v47 service];
          if (v49 >= v120)
          {
            v57 = v105;
          }

          else
          {
            v57 = v104;
          }

          [v50 setOutcome:v57];
          v58 = entityForService(v56, v122, v121, v117);
          [v50 setEntity:v58];

          [(HMDAssistantCommand *)val populateResult:v50 withService:v56 serviceType:v122 characteristic:v47 resultAttribute:0 action:v123];
          [*(*&buf[8] + 40) addObject:v50];

LABEL_34:
        }

LABEL_46:

        goto LABEL_47;
      }

      v59 = [v123 actionType];
      v60 = [v59 isEqualToString:v110];

      if (v60)
      {
        v61 = [v48 maximumValue];

        if (!v61)
        {
          goto LABEL_47;
        }

        v49 = [v48 maximumValue];
        [v43 setObject:v49 forKey:v47];
        goto LABEL_46;
      }

      v62 = [v123 actionType];
      v63 = [v62 isEqualToString:v106];

      if (v63)
      {
        v64 = [v48 minimumValue];
        if (v64)
        {
          v49 = [(HMDAssistantCommand *)val updateValueToBoundary:v64 valueType:v111 fudgeMinimum:1 metadata:v48];

          [v43 setObject:v49 forKey:v47];
        }

        else
        {
          v49 = 0;
        }

        goto LABEL_46;
      }

LABEL_47:
      [(HMDAssistantCommand *)val addActivationCharacteristicsIfNeeded:v43 forCharacteristic:v47];

      ++v46;
    }

    while (v44 != v46);
    v65 = [obj countByEnumeratingWithState:&v147 objects:v156 count:16];
    v44 = v65;
  }

  while (v65);
LABEL_54:

  v66 = dispatch_group_create();
  v115 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v118 = v43;
  v67 = [v118 countByEnumeratingWithState:&v143 objects:v155 count:16];
  if (v67)
  {
    v68 = *v144;
    while (2)
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v144 != v68)
        {
          objc_enumerationMutation(v118);
        }

        v70 = *(*(&v143 + 1) + 8 * i);
        v71 = [v70 service];
        v72 = [v71 accessory];
        v73 = [v72 home];

        v74 = [v118 objectForKey:v70];

        v75 = [v70 type];
        LODWORD(v72) = [v75 isEqual:@"000000B0-0000-1000-8000-0026BB765291"];

        if (v72)
        {
          v76 = v74;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v77 = v76;
          }

          else
          {
            v77 = 0;
          }

          v78 = v77;

          if (!v78)
          {
            v91 = objc_autoreleasePoolPush();
            v92 = val;
            v93 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              v94 = HMFGetLogIdentifier();
              v95 = objc_opt_class();
              *location = 138543618;
              *&location[4] = v94;
              v153 = 2112;
              v154 = v95;
              v96 = v95;
              _os_log_impl(&dword_229538000, v93, OS_LOG_TYPE_ERROR, "%{public}@Unknown value type found. Expected integer but got %@", location, 0x16u);
            }

            objc_autoreleasePoolPop(v91);
            [(HMDAssistantCommand *)v92 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v119];

            v90 = v118;
            goto LABEL_82;
          }

          v120 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v76, "unsignedIntegerValue")}];
        }

        else
        {
          v120 = v74;
        }

        v79 = [v115 objectForKey:v73];
        if (!v79)
        {
          v79 = [MEMORY[0x277CBEB18] array];
          [v115 setObject:v79 forKey:v73];
        }

        v80 = [v70 authorizationData];
        v81 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v70 value:v120 authorizationData:v80 type:1];

        [v79 addObject:v81];
      }

      v67 = [v118 countByEnumeratingWithState:&v143 objects:v155 count:16];
      if (v67)
      {
        continue;
      }

      break;
    }
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v82 = v115;
  v83 = [v82 countByEnumeratingWithState:&v139 objects:v151 count:16];
  if (v83)
  {
    v84 = *v140;
    do
    {
      for (j = 0; j != v83; ++j)
      {
        if (*v140 != v84)
        {
          objc_enumerationMutation(v82);
        }

        v86 = *(*(&v139 + 1) + 8 * j);
        dispatch_group_enter(v66);
        v87 = [v82 objectForKey:v86];
        objc_initWeak(location, val);
        v88 = [(HMDAssistantCommand *)val assistantCommandHelper];
        v130[0] = MEMORY[0x277D85DD0];
        v130[1] = 3221225472;
        v130[2] = __85__HMDAssistantCommand_handleSetActionTypes_serviceType_forObjects_completionHandler___block_invoke;
        v130[3] = &unk_278670F20;
        objc_copyWeak(&v138, location);
        v131 = v66;
        v136 = v119;
        v132 = v123;
        v133 = v122;
        v137 = buf;
        v134 = v121;
        v135 = v116;
        [v88 addWriteRequests:v87 home:v86 completion:v130];

        objc_destroyWeak(&v138);
        objc_destroyWeak(location);
      }

      v83 = [v82 countByEnumeratingWithState:&v139 objects:v151 count:16];
    }

    while (v83);
  }

  v89 = [(HMDAssistantCommand *)val queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDAssistantCommand_handleSetActionTypes_serviceType_forObjects_completionHandler___block_invoke_129;
  block[3] = &unk_278686E40;
  v126 = v116;
  v127 = val;
  v129 = buf;
  v128 = v119;
  dispatch_group_notify(v66, v89, block);

  v90 = v126;
  v76 = v120;
LABEL_82:

  _Block_object_dispose(buf, 8);
LABEL_83:

LABEL_84:
LABEL_85:

  v97 = *MEMORY[0x277D85DE8];
}

void __85__HMDAssistantCommand_handleSetActionTypes_serviceType_forObjects_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response %@ for write request with %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v9 handleReadWriteResponses:v6 error:v5 forAction:*(a1 + 40) inServiceType:*(a1 + 48) results:*(*(*(a1 + 80) + 8) + 40) forObjects:*(a1 + 56)];
    v13 = [v5 code];
    v14 = 82;
    if (unlockErrorCode)
    {
      v14 = 2003;
    }

    if (v13 == v14)
    {
      goto LABEL_10;
    }

    v15 = [v12 code];
    v16 = 82;
    if (unlockErrorCode)
    {
      v16 = 2003;
    }

    if (v15 == v16)
    {
LABEL_10:
      [*(a1 + 64) begin];
      [v9 reportUnlockRequired:*(a1 + 72)];
      dispatch_group_leave(*(a1 + 32));
      [*(a1 + 64) end];
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
    (*(*(a1 + 72) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __85__HMDAssistantCommand_handleSetActionTypes_serviceType_forObjects_completionHandler___block_invoke_129(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) begin];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for set-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __83__HMDAssistantCommand_handleSetNaturalLightingActionOnHAPLightProfiles_home_value___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  if (WeakRetained)
  {
    [v4 fulfillWithValue:v6];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 rejectWithError:v5];
  }
}

- (void)handleSetNaturalLightingAction:(id)a3 serviceType:(id)a4 forObjects:(id)a5 hapLightProfiles:(id)a6 matterLightProfiles:(id)a7 home:(id)a8 completionHandler:(id)a9
{
  v96 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = v15;
  v18 = v16;
  v19 = a5;
  v20 = a6;
  v65 = a7;
  v64 = a8;
  v63 = a9;
  v21 = [v15 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  v28 = v23;
  if (v23)
  {
    v60 = v19;
    v62 = v18;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      [v23 value];
      HMFBooleanToString();
      v31 = v30 = v20;
      *buf = 138544130;
      v89 = v29;
      v90 = 2112;
      v91 = v31;
      v92 = 2112;
      v93 = v30;
      v94 = 2112;
      v95 = v65;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting %@ for HAP light profiles: %@ and matter light profiles: %@", buf, 0x2Au);

      v20 = v30;
    }

    v59 = v20;

    objc_autoreleasePoolPop(v24);
    v32 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v65, "count") + objc_msgSend(v20, "count")}];
    v33 = objc_alloc(MEMORY[0x277D0F7A8]);
    v34 = [(HMDAssistantCommand *)v25 queue];
    v57 = [v33 initWithQueue:v34];

    [v28 value];
    v35 = [HMDAssistantCommand handleSetNaturalLightingActionOnHAPLightProfiles:v25 home:"handleSetNaturalLightingActionOnHAPLightProfiles:home:value:" value:v20];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke;
    v80[3] = &unk_278670F70;
    v81 = v20;
    v36 = v17;
    v82 = v36;
    v61 = v17;
    v37 = v62;
    v83 = v37;
    v19 = v60;
    v38 = v60;
    v84 = v38;
    v85 = v25;
    v58 = v35;
    v39 = v32;
    v86 = v39;
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_117;
    v79[3] = &unk_278689CD8;
    v79[4] = v25;
    v40 = [v35 inContext:v57 then:v80 orRecover:v79];
    v41 = [v64 handleSetNaturalLightingEnabled:objc_msgSend(v28 forMatterLightProfiles:{"value"), v65}];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_119;
    v73[3] = &unk_278670F70;
    v73[4] = v25;
    v74 = v65;
    v75 = v36;
    v76 = v37;
    v77 = v38;
    v42 = v39;
    v78 = v42;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_120;
    v72[3] = &unk_278689CD8;
    v72[4] = v25;
    v43 = [v41 inContext:v57 then:v73 orRecover:v72];
    v44 = MEMORY[0x277D0F7C0];
    v87[0] = v35;
    v87[1] = v41;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    v46 = v44;
    v20 = v59;
    v47 = [v46 allSettled:v45];

    v17 = v61;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_122;
    v69[3] = &unk_278681880;
    v69[4] = v25;
    v70 = v42;
    v48 = v63;
    v71 = v63;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_124;
    v66[3] = &unk_278683720;
    v66[4] = v25;
    v67 = v70;
    v68 = v71;
    v49 = v64;
    v50 = v70;
    v51 = [v47 inContext:v57 then:v69 orRecover:v66];

    v52 = v65;
    v18 = v62;
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      [v17 value];
      v55 = v54 = v20;
      *buf = 138543618;
      v89 = v53;
      v90 = 2112;
      v91 = v55;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Specified value is not of BOOLean type %@", buf, 0x16u);

      v20 = v54;
    }

    objc_autoreleasePoolPop(v24);
    v48 = v63;
    [(HMDAssistantCommand *)v25 reportOutcome:*MEMORY[0x277D480C8] results:MEMORY[0x277CBEBF8] handler:v63];
    v49 = v64;
    v52 = v65;
  }

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke(id *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a1[4];
  v25 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v25)
  {
    v23 = *v27;
    v22 = *MEMORY[0x277D47DE0];
    v21 = *MEMORY[0x277D47E50];
    *&v3 = 138543874;
    v19 = v3;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        v6 = [v5 service];
        v7 = [v24 objectForKey:v5];
        v8 = actionResultForAction(a1[5]);
        v9 = entityForService(v6, a1[6], a1[7], [a1[5] includeCompleteInformation]);
        [v8 setEntity:v9];

        v10 = objc_autoreleasePoolPush();
        v11 = a1[8];
        v12 = HMFGetOSLogHandle();
        v13 = v12;
        if (v7)
        {
          v14 = v22;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v15 = HMFGetLogIdentifier();
            *buf = v19;
            v31 = v15;
            v32 = 2112;
            v33 = v5;
            v34 = 2112;
            v35 = v7;
            _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to set natural lighting for hap light profile %@:%@", buf, 0x20u);

            v14 = v22;
          }
        }

        else
        {
          v14 = v21;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            *buf = v19;
            v31 = v16;
            v32 = 2112;
            v33 = v5;
            v34 = 2112;
            v35 = 0;
            _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully set natural lighting for hap light profile %@:%@", buf, 0x20u);

            v14 = v21;
          }
        }

        objc_autoreleasePoolPop(v10);
        [v8 setOutcome:v14];
        [a1[9] addObject:v8];
      }

      v25 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v25);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_117(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to set natural lighting for all hap light profiles with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_119(id *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v6;
    v37 = 2112;
    v38 = v28;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@handleSetNaturalLightingEnabled returned resultByLightProfile: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a1[5];
  v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v29)
  {
    v27 = *v31;
    v26 = *MEMORY[0x277D47DE0];
    v25 = *MEMORY[0x277D47E50];
    *&v7 = 138543618;
    v23 = v7;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 service];
        v11 = [v28 objectForKey:v9];
        v12 = actionResultForAction(a1[6]);
        v13 = entityForService(v10, a1[7], a1[8], [a1[6] includeCompleteInformation]);
        [v12 setEntity:v13];

        LOBYTE(v13) = [v11 BOOLValue];
        v14 = objc_autoreleasePoolPush();
        v15 = a1[4];
        v16 = HMFGetOSLogHandle();
        v17 = v16;
        if (v13)
        {
          v18 = v25;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = v23;
            v36 = v19;
            v37 = 2112;
            v38 = v9;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Successfully set natural lighting for matter light profile %@", buf, 0x16u);

            v18 = v25;
          }
        }

        else
        {
          v18 = v26;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = v23;
            v36 = v20;
            v37 = 2112;
            v38 = v9;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to set natural lighting for matter light profile %@", buf, 0x16u);

            v18 = v26;
          }
        }

        objc_autoreleasePoolPop(v14);
        [v12 setOutcome:v18];
        [a1[9] addObject:v12];
      }

      v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v29);
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_120(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to set natural lighting for all matter light profiles with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_122(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@handleSetNaturalLightingAction success reporting actionResults: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) allObjects];
  [v9 reportResults:v10 handler:*(a1 + 48)];

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __137__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_hapLightProfiles_matterLightProfiles_home_completionHandler___block_invoke_124(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@handleSetNaturalLightingAction failed reporting actionResults: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) allObjects];
  [v9 reportResults:v10 handler:*(a1 + 48)];

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handleSetNaturalLightingAction:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6
{
  v91 = *MEMORY[0x277D85DE8];
  v65 = a3;
  v61 = a4;
  v63 = a5;
  v62 = a6;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x22AAD2510](self, a2);
  v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 1985];
  v60 = [v11 initWithName:v14];

  v15 = objc_autoreleasePoolPush();
  v69 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v85 = v17;
    v86 = 2112;
    v87 = v63;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting enabled for objects: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v18 = [v65 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v64 = v19;

  if (v64)
  {
    v67 = [MEMORY[0x277CBEB58] set];
    v66 = [MEMORY[0x277CBEB58] set];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v63;
    v20 = 0;
    v21 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v21)
    {
      v22 = *v81;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v81 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v80 + 1) + 8 * i);
          v25 = [(HMDAssistantCommand *)v69 serviceFromObject:v24];
          v26 = v25;
          if (v25)
          {
            v27 = [v25 accessory];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = v27;
            }

            else
            {
              v28 = 0;
            }

            v29 = v28;

            v30 = [v29 home];
            v31 = v30 == 0;

            if (!v31)
            {
              v32 = [v29 home];

              v33 = [v29 lightProfiles];
              v78[0] = MEMORY[0x277D85DD0];
              v78[1] = 3221225472;
              v78[2] = __95__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_completionHandler___block_invoke;
              v78[3] = &unk_2786782C8;
              v79 = v26;
              v34 = [v33 na_firstObjectPassingTest:v78];

              v35 = [v34 settings];
              v36 = [v35 supportedFeatures];

              if (v36)
              {
                if (!_os_feature_enabled_impl() || (v37 = [v34 supportsCHIP], v38 = v66, (v37 & 1) == 0))
                {
                  v38 = v67;
                }

                [v38 addObject:v34];
              }

              v20 = v32;
            }
          }

          else
          {
            v39 = objc_autoreleasePoolPush();
            v40 = v69;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543618;
              v85 = v42;
              v86 = 2112;
              v87 = v24;
              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Did not find service for filtered object: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v39);
          }
        }

        v21 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
      }

      while (v21);
    }

    if ([v67 hmf_isEmpty] && objc_msgSend(v66, "hmf_isEmpty"))
    {
      v43 = objc_autoreleasePoolPush();
      v44 = v69;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543362;
        v85 = v46;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Did not find any light profiles to set natural lighting on", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v43);
      [(HMDAssistantCommand *)v44 reportResults:0 handler:v62];
    }

    else if ([v66 hmf_isEmpty])
    {
      v47 = objc_autoreleasePoolPush();
      v48 = v69;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        [v64 value];
        v51 = HMFBooleanToString();
        *buf = 138543874;
        v85 = v50;
        v86 = 2112;
        v87 = v51;
        v88 = 2112;
        v89 = v67;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting for light profiles %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v47);
      objc_initWeak(buf, v48);
      v52 = [v20 naturalLightingCurveWriter];
      v53 = [v64 value];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __95__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_completionHandler___block_invoke_113;
      v70[3] = &unk_278670F48;
      objc_copyWeak(&v77, buf);
      v71 = v60;
      v72 = v67;
      v73 = v65;
      v74 = v61;
      v75 = obj;
      v76 = v62;
      [v52 setNaturalLightingEnabled:v53 forLightProfiles:v72 completion:v70];

      objc_destroyWeak(&v77);
      objc_destroyWeak(buf);
    }

    else
    {
      [(HMDAssistantCommand *)v69 handleSetNaturalLightingAction:v65 serviceType:v61 forObjects:obj hapLightProfiles:v67 matterLightProfiles:v66 home:v20 completionHandler:v62];
    }
  }

  else
  {
    v54 = objc_autoreleasePoolPush();
    v55 = v69;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = HMFGetLogIdentifier();
      v58 = [v65 value];
      *buf = 138543618;
      v85 = v57;
      v86 = 2112;
      v87 = v58;
      _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Specified value is not of BOOLean type %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v54);
    [(HMDAssistantCommand *)v55 reportOutcome:*MEMORY[0x277D480C8] results:MEMORY[0x277CBEBF8] handler:v62];
  }

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t __95__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void __95__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_completionHandler___block_invoke_113(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    [*(a1 + 32) begin];
    v27 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = *(a1 + 40);
    v29 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v29)
    {
      v25 = *v31;
      v24 = *MEMORY[0x277D47DE0];
      v23 = *MEMORY[0x277D47E50];
      *&v4 = 138543874;
      v21 = v4;
      v26 = a1;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v30 + 1) + 8 * i);
          v7 = [v6 service];
          v8 = [v28 objectForKey:v6];
          v9 = actionResultForAction(*(a1 + 48));
          v10 = entityForService(v7, *(a1 + 56), *(a1 + 64), [*(a1 + 48) includeCompleteInformation]);
          [v9 setEntity:v10];

          v11 = objc_autoreleasePoolPush();
          v12 = WeakRetained;
          v13 = WeakRetained;
          v14 = HMFGetOSLogHandle();
          v15 = v14;
          if (v8)
          {
            v16 = v24;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v17 = HMFGetLogIdentifier();
              *buf = v21;
              v35 = v17;
              v36 = 2112;
              v37 = v6;
              v38 = 2112;
              v39 = v8;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to set natural lighting for light profile %@:%@", buf, 0x20u);

              v16 = v24;
            }
          }

          else
          {
            v16 = v23;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              *buf = v21;
              v35 = v18;
              v36 = 2112;
              v37 = v6;
              v38 = 2112;
              v39 = 0;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully set natural lighting for light profile %@:%@", buf, 0x20u);

              v16 = v23;
            }
          }

          objc_autoreleasePoolPop(v11);
          [v9 setOutcome:v16];
          [v27 addObject:v9];

          WeakRetained = v12;
          a1 = v26;
        }

        v29 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v29);
    }

    v19 = [v27 allObjects];
    [WeakRetained reportResults:v19 handler:*(a1 + 72)];

    [*(a1 + 32) end];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleGetNaturalLightingAction:(id)a3 forObjects:(id)a4 serviceType:(id)a5 completionHandler:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v10 = a4;
  v46 = a5;
  v42 = a6;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v14;
    v58 = 2112;
    v59 = v10;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Getting natural lighting enabled for objects: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v45 = [MEMORY[0x277CBEB58] set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = v10;
  v48 = [v15 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v48)
  {
    v16 = *v52;
    v44 = *MEMORY[0x277D47E50];
    v43 = *MEMORY[0x277D47EC8];
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v51 + 1) + 8 * i);
        v19 = [(HMDAssistantCommand *)v12 serviceFromObject:v18];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 accessory];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          v24 = [v23 lightProfiles];

          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __95__HMDAssistantCommand_handleGetNaturalLightingAction_forObjects_serviceType_completionHandler___block_invoke;
          v49[3] = &unk_2786782C8;
          v25 = v20;
          v50 = v25;
          v26 = [v24 na_firstObjectPassingTest:v49];

          if (v26)
          {
            v27 = [v26 settings];
            v28 = [v27 supportedFeatures];

            if (v28)
            {
              v29 = actionResultForAction(v47);
              v30 = entityForService(v25, v46, v15, [v47 includeCompleteInformation]);
              [v29 setEntity:v30];

              [v29 setOutcome:v44];
              [v29 setResultAttribute:v43];
              v31 = objc_alloc_init(MEMORY[0x277D47340]);
              v32 = [v26 settings];
              [v31 setValue:{objc_msgSend(v32, "isNaturalLightingEnabled")}];

              [v29 setResultValue:v31];
              [v45 addObject:v29];
            }
          }
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          v34 = v12;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v36 = v12;
            v37 = v16;
            v39 = v38 = v15;
            *buf = 138543618;
            v57 = v39;
            v58 = 2112;
            v59 = v18;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Did not find service for filtered object: %@", buf, 0x16u);

            v15 = v38;
            v16 = v37;
            v12 = v36;
          }

          objc_autoreleasePoolPop(v33);
        }
      }

      v48 = [v15 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v48);
  }

  v40 = [v45 allObjects];
  [(HMDAssistantCommand *)v12 reportResults:v40 handler:v42];

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __95__HMDAssistantCommand_handleGetNaturalLightingAction_forObjects_serviceType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)compareForBoundary:(id)a3 withMetadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 maximumValue];

    if (v7)
    {
      v8 = [v6 maximumValue];
      v9 = [v8 compare:v5];

      if (v9)
      {
        v7 = 0;
      }

      else
      {
        v7 = *MEMORY[0x277D47E38];
      }
    }

    v11 = [v6 minimumValue];

    if (v11)
    {
      v12 = [v6 minimumValue];
      v13 = [v12 compare:v5];

      if (!v13)
      {
        v14 = *MEMORY[0x277D47E40];

        v7 = v14;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)compareCurrentValue:(id)a3 newValue:(id)a4 withMetadata:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 maximumValue];

    if (v10)
    {
      v11 = [v9 maximumValue];
      v12 = [v11 compare:v7];

      if ((v12 + 1) > 1 || ([v7 compare:v8] + 1) > 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *MEMORY[0x277D47DB0];
      }
    }

    v14 = [v9 minimumValue];

    if (v14)
    {
      v15 = [v9 minimumValue];
      v16 = [v15 compare:v7];

      if (v16 <= 1 && [v7 compare:v8] <= 1)
      {
        v17 = *MEMORY[0x277D47DB8];

        v10 = v17;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)handleGetActionTypes:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6
{
  v105[1] = *MEMORY[0x277D85DE8];
  v74 = a3;
  v72 = a4;
  v11 = a5;
  v73 = a6;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  val = self;
  v14 = MEMORY[0x22AAD2510](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 1757];
  v71 = [v12 initWithName:v15];

  v16 = [v74 attribute];

  if (v16)
  {
    v17 = [v74 attribute];
    v18 = [v17 isEqualToString:*MEMORY[0x277D47F48]];

    if (v18)
    {
      [(HMDAssistantCommand *)self handleGetColor:v74 forObjects:v11 serviceType:v72 completionHandler:v73];
    }

    else
    {
      v23 = [v74 attribute];
      v24 = [v23 isEqualToString:*MEMORY[0x277D47EC8]];

      if (v24)
      {
        [(HMDAssistantCommand *)self handleGetNaturalLightingAction:v74 forObjects:v11 serviceType:v72 completionHandler:v73];
      }

      else
      {
        v25 = [v74 attribute];
        v26 = [v74 actionType];
        v27 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:v11 byAttribute:v25 forActionType:v26];

        if ([v27 count])
        {
          v68 = +[HMDHAPMetadata getSharedInstance];
          v28 = [v74 actionType];
          v29 = [v28 isEqualToString:*MEMORY[0x277D47E98]];

          v30 = [v74 attribute];
          if (v29)
          {
            [v68 mapWriteCharacteristicFromAssistantName:v30];
          }

          else
          {
            [v68 mapReadCharacteristicFromAssistantName:v30];
          }
          v67 = ;

          if (v67)
          {
            v66 = [v68 getAliasedCharacteristicTypes:?];
            if ([v66 count])
            {
              v65 = [v66 arrayByAddingObject:v67];
              [(HMDAssistantCommand *)self filterObjects:v27 forCharacteristicTypes:v65];
            }

            else
            {
              v105[0] = v67;
              v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:1];
              [(HMDAssistantCommand *)self filterObjects:v27 forCharacteristicTypes:v65];
            }
            obj = ;
            if ([obj count])
            {
              v64 = [MEMORY[0x277CBEB58] setWithArray:v27];
              v36 = [MEMORY[0x277CBEB98] setWithArray:obj];
              v37 = [(HMDAssistantCommand *)self addCharacteristicsFromRelatedServicesFor:v36 assistantObjects:v64];
              v38 = [v37 allObjects];

              v70 = [v64 allObjects];

              v39 = [(HMDAssistantCommand *)self addStatusCharacteristicsIfNeeded:v38];

              v40 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              obj = v39;
              v41 = [obj countByEnumeratingWithState:&v95 objects:v104 count:16];
              if (v41)
              {
                v42 = *v96;
                do
                {
                  for (i = 0; i != v41; ++i)
                  {
                    if (*v96 != v42)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v44 = *(*(&v95 + 1) + 8 * i);
                    v45 = [v44 service];
                    v46 = [v45 accessory];
                    v47 = [v46 home];

                    v48 = [v40 objectForKey:v47];
                    if (!v48)
                    {
                      v48 = [MEMORY[0x277CBEB18] array];
                      [v40 setObject:v48 forKey:v47];
                    }

                    v49 = [(HMDAssistantCommand *)self readRequestsForCharacteristic:v44];
                    [v48 addObjectsFromArray:v49];
                  }

                  v41 = [obj countByEnumeratingWithState:&v95 objects:v104 count:16];
                }

                while (v41);
              }

              v50 = dispatch_group_create();
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v101 = __Block_byref_object_copy__19541;
              v102 = __Block_byref_object_dispose__19542;
              v103 = [MEMORY[0x277CBEB18] array];
              objc_initWeak(&location, self);
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v51 = v40;
              v52 = [v51 countByEnumeratingWithState:&v90 objects:v99 count:16];
              if (v52)
              {
                v53 = *v91;
                do
                {
                  for (j = 0; j != v52; ++j)
                  {
                    if (*v91 != v53)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v55 = *(*(&v90 + 1) + 8 * j);
                    dispatch_group_enter(v50);
                    v56 = [v51 objectForKey:v55];
                    v57 = [(HMDAssistantCommand *)val assistantCommandHelper];
                    v81[0] = MEMORY[0x277D85DD0];
                    v81[1] = 3221225472;
                    v81[2] = __85__HMDAssistantCommand_handleGetActionTypes_serviceType_forObjects_completionHandler___block_invoke;
                    v81[3] = &unk_278670F20;
                    objc_copyWeak(&v89, &location);
                    v82 = v50;
                    v87 = v73;
                    v83 = v74;
                    v84 = v72;
                    v88 = buf;
                    v85 = v70;
                    v86 = v71;
                    [v57 addReadRequests:v56 home:v55 completion:v81];

                    objc_destroyWeak(&v89);
                  }

                  v52 = [v51 countByEnumeratingWithState:&v90 objects:v99 count:16];
                }

                while (v52);
              }

              v58 = [(HMDAssistantCommand *)val queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __85__HMDAssistantCommand_handleGetActionTypes_serviceType_forObjects_completionHandler___block_invoke_109;
              block[3] = &unk_278686E40;
              v77 = v71;
              v78 = val;
              v80 = buf;
              v79 = v73;
              dispatch_group_notify(v50, v58, block);

              objc_destroyWeak(&location);
              _Block_object_dispose(buf, 8);

              v27 = v70;
            }

            else
            {
              v59 = objc_autoreleasePoolPush();
              v60 = self;
              v61 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                v62 = HMFGetLogIdentifier();
                *buf = 138543362;
                *&buf[4] = v62;
                _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@No characteristics found after filtering objects", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v59);
              [(HMDAssistantCommand *)v60 returnResults:0 serviceType:v72 forAction:v74 completionHandler:v73];
            }
          }

          else
          {
            v31 = objc_autoreleasePoolPush();
            v32 = self;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = HMFGetLogIdentifier();
              v35 = [v74 attribute];
              *buf = 138543618;
              *&buf[4] = v34;
              *&buf[12] = 2112;
              *&buf[14] = v35;
              _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            [(HMDAssistantCommand *)v32 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v73];
          }
        }

        else
        {
          [(HMDAssistantCommand *)self returnResults:0 serviceType:v72 forAction:v74 completionHandler:v73];
        }

        v11 = v27;
      }
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@In Get action types, There is no attribute in action, reporting results", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDAssistantCommand *)v20 returnResults:v11 serviceType:v72 forAction:v74 completionHandler:v73];
  }

  v63 = *MEMORY[0x277D85DE8];
}

void __85__HMDAssistantCommand_handleGetActionTypes_serviceType_forObjects_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received error %@ for read request with response tuples: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v9 handleReadWriteResponses:v6 error:v5 forAction:*(a1 + 40) inServiceType:*(a1 + 48) results:*(*(*(a1 + 80) + 8) + 40) forObjects:*(a1 + 56)];
    v13 = [v5 code];
    v14 = 82;
    if (unlockErrorCode)
    {
      v14 = 2003;
    }

    if (v13 == v14)
    {
      goto LABEL_10;
    }

    v15 = [v12 code];
    v16 = 82;
    if (unlockErrorCode)
    {
      v16 = 2003;
    }

    if (v15 == v16)
    {
LABEL_10:
      [*(a1 + 64) begin];
      [v9 reportUnlockRequired:*(a1 + 72)];
      dispatch_group_leave(*(a1 + 32));
      [*(a1 + 64) end];
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
    (*(*(a1 + 72) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __85__HMDAssistantCommand_handleGetActionTypes_serviceType_forObjects_completionHandler___block_invoke_109(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) begin];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for get-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleMediaAccessorySetActionType:(id)a3 forObjects:(id)a4 withServiceType:(id)a5 completionHandler:(id)a6
{
  v85 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v47 = a4;
  v50 = a5;
  v51 = a6;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x22AAD2510](self, a2);
  v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 1678];
  v46 = [v11 initWithName:v14];

  v15 = [v52 attribute];

  if (v15)
  {
    v48 = [(HMDAssistantCommand *)self getValueOfType:0 action:v52];
    v16 = [v52 attribute];
    v17 = [v16 isEqualToString:*MEMORY[0x277D48048]];

    if (v17)
    {
      v18 = @"HMDMediaProfileSetPowerKey";
      v19 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v47;
      v20 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
      if (v20)
      {
        v21 = *v75;
        do
        {
          v22 = 0;
          do
          {
            if (*v75 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = [(HMDAssistantCommand *)self mediaProfileFromObject:*(*(&v74 + 1) + 8 * v22)];
            if (v23)
            {
              v24 = [HMDMediaPropertyWriteRequest writeRequestWithProperty:@"HMDMediaProfileSetPowerKey" value:v48 mediaProfile:v23];
              v25 = [v23 accessory];
              v26 = [v25 home];

              if (v26)
              {
                v27 = [v19 objectForKey:v26];
                if (!v27)
                {
                  v27 = [MEMORY[0x277CBEB18] array];
                  [v19 setObject:v27 forKey:v26];
                }

                [v27 addObject:v24];
              }
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
        }

        while (v20);
      }

      v28 = dispatch_group_create();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v80 = 0x3032000000;
      v81 = __Block_byref_object_copy__19541;
      v82 = __Block_byref_object_dispose__19542;
      v83 = [MEMORY[0x277CBEB18] array];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v29 = v19;
      v30 = [v29 countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v30)
      {
        v49 = *v71;
        do
        {
          v31 = 0;
          do
          {
            if (*v71 != v49)
            {
              objc_enumerationMutation(v29);
            }

            v32 = *(*(&v70 + 1) + 8 * v31);
            dispatch_group_enter(v28);
            v33 = [v29 objectForKey:v32];
            objc_initWeak(&location, self);
            v34 = [(HMDAssistantCommand *)self assistantCommandHelper];
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __102__HMDAssistantCommand_handleMediaAccessorySetActionType_forObjects_withServiceType_completionHandler___block_invoke;
            v59[3] = &unk_278670EF8;
            objc_copyWeak(&v68, &location);
            v60 = v28;
            v66 = v51;
            v61 = v52;
            v62 = v50;
            v63 = v32;
            v35 = @"HMDMediaProfileSetPowerKey";
            v64 = @"HMDMediaProfileSetPowerKey";
            p_buf = &buf;
            v65 = obj;
            [v34 addMediaWriteRequests:v33 withRequestProperty:@"HMDMediaProfileSetPowerKey" completion:v59];

            objc_destroyWeak(&v68);
            objc_destroyWeak(&location);

            ++v31;
          }

          while (v30 != v31);
          v30 = [v29 countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v30);
      }

      v36 = [(HMDAssistantCommand *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__HMDAssistantCommand_handleMediaAccessorySetActionType_forObjects_withServiceType_completionHandler___block_invoke_106;
      block[3] = &unk_278686E40;
      v55 = v46;
      v56 = self;
      v58 = &buf;
      v57 = v51;
      dispatch_group_notify(v28, v36, block);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      v42 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v44;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@In Set action types, passed-in attribute in action is not supported.", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v41);
      [(HMDAssistantCommand *)v42 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v51];
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v40;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@In Set action types, there is no attribute in action, reporting malformed results", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    [(HMDAssistantCommand *)v38 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v51];
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __102__HMDAssistantCommand_handleMediaAccessorySetActionType_forObjects_withServiceType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received error %@ for read/write request with responses %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 handleMediaReadWriteResponse:v6 forAction:*(a1 + 40) inServiceType:*(a1 + 48) inHome:*(a1 + 56) requestProperty:*(a1 + 64) results:*(*(*(a1 + 88) + 8) + 40) forObjects:*(a1 + 72)];
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
    (*(*(a1 + 80) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __102__HMDAssistantCommand_handleMediaAccessorySetActionType_forObjects_withServiceType_completionHandler___block_invoke_106(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) begin];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for Apple Media Accessory get-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)populateResult:(id)a3 fromResponse:(id)a4 responses:(id)a5 forAction:(id)a6 serviceType:(id)a7 forObjects:(id)a8
{
  v91 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v77 = a5;
  v15 = a6;
  v79 = a7;
  v78 = a8;
  v16 = [v14 request];
  v17 = [v16 characteristic];

  v18 = [v17 type];
  LOBYTE(a7) = [v18 isEqualToString:@"00000065-0000-1000-8000-0026BB765291"];

  if (a7)
  {
    v19 = 0;
    v20 = v79;
    goto LABEL_45;
  }

  v21 = [v14 error];
  v22 = [v17 service];
  v80 = v22;
  v75 = v21;
  if (v21)
  {
    v23 = v22;
    v24 = [(HMDAssistantCommand *)self actionOutcomeFromError:v21];
    [v13 setOutcome:v24];
  }

  else
  {
    v25 = [v14 request];
    [v25 characteristic];
    v26 = v73 = v17;
    [v26 value];
    v28 = v27 = v15;
    v29 = [v14 request];
    [v29 characteristic];
    v31 = v30 = v14;
    [v31 metadata];
    v33 = v32 = v13;
    v34 = [(HMDAssistantCommand *)self compareForBoundary:v28 withMetadata:v33];
    [v32 setOutcome:v34];

    v13 = v32;
    v14 = v30;

    v23 = v80;
    v15 = v27;

    v17 = v73;
    v35 = [v32 outcome];

    if (!v35)
    {
      [v32 setOutcome:*MEMORY[0x277D47E50]];
    }
  }

  v36 = entityForService(v23, v79, v78, [v15 includeCompleteInformation]);
  [v13 setEntity:v36];

  v37 = [v17 type];
  v38 = [v37 isEqualToString:@"00000064-0000-1000-8000-0026BB765291"];

  if (!v38)
  {
    v56 = [v17 type];
    v57 = [v56 isEqualToString:@"000000C6-0000-1000-8000-0026BB765291"];

    if (v57)
    {
      v55 = *MEMORY[0x277D48038];
      v58 = v79;
    }

    else
    {
      v64 = [v17 type];
      v65 = [v64 isEqualToString:@"000000C7-0000-1000-8000-0026BB765291"];

      if (v65)
      {
        v55 = *MEMORY[0x277D48030];
      }

      else
      {
        v55 = 0;
      }

      v58 = v79;
    }

    v42 = v80;
    goto LABEL_44;
  }

  v74 = v17;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v77;
  v39 = [obj countByEnumeratingWithState:&v86 objects:v90 count:16];
  if (!v39)
  {
    v55 = 0;
    v42 = v80;
    goto LABEL_43;
  }

  v40 = v39;
  v70 = v15;
  v71 = v14;
  v72 = v13;
  v41 = *v87;
  v42 = v80;
  v82 = *v87;
  while (2)
  {
    v43 = 0;
    v83 = v40;
    do
    {
      if (*v87 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v85 = *(*(&v86 + 1) + 8 * v43);
      v44 = [v85 request];
      v45 = [v44 characteristic];

      v46 = [v45 service];
      v47 = [v46 accessory];
      v48 = [v47 uuid];
      v49 = [v42 accessory];
      v50 = [v49 uuid];
      if (![v48 isEqual:v50])
      {
        goto LABEL_18;
      }

      v51 = v45;
      v52 = [v42 instanceID];
      v53 = [v46 instanceID];
      if (![v52 isEqual:v53])
      {

        v45 = v51;
        v41 = v82;
        v40 = v83;
LABEL_18:

        goto LABEL_19;
      }

      v54 = [v51 type];
      v81 = [v54 isEqualToString:@"00000065-0000-1000-8000-0026BB765291"];

      v42 = v80;
      v45 = v51;

      v41 = v82;
      v40 = v83;
      if (v81)
      {
        v59 = [v85 value];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v61 = v59;
        }

        else
        {
          v61 = 0;
        }

        v62 = v61;

        if (v62)
        {
          v14 = v71;
          v13 = v72;
          if ([v62 unsignedIntegerValue])
          {
            if ([v62 unsignedIntegerValue] != 1)
            {
              v55 = 0;
              goto LABEL_41;
            }

            v63 = MEMORY[0x277D48030];
          }

          else
          {
            v63 = MEMORY[0x277D48038];
          }

          v55 = *v63;
        }

        else
        {
          v55 = 0;
          v14 = v71;
          v13 = v72;
        }

LABEL_41:

        goto LABEL_42;
      }

LABEL_19:

      ++v43;
    }

    while (v40 != v43);
    v40 = [obj countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v40)
    {
      continue;
    }

    break;
  }

  v55 = 0;
  v14 = v71;
  v13 = v72;
LABEL_42:
  v15 = v70;
LABEL_43:

  v58 = v79;
  v17 = v74;
LABEL_44:
  v66 = v42;
  v67 = v42;
  v20 = v58;
  v19 = [HMDAssistantCommand populateResult:"populateResult:withService:serviceType:characteristic:resultAttribute:action:" withService:v13 serviceType:v66 characteristic:? resultAttribute:? action:?];

LABEL_45:
  v68 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)handleGetMetadataActionTypes:(id)a3 serviceType:(id)a4 forObjects:(id)a5 completionHandler:(id)a6
{
  v76 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v64 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 attribute];

  if (v13)
  {
    v14 = [v10 attribute];
    v15 = [v10 actionType];
    v16 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:v11 byAttribute:v14 forActionType:v15];

    if ([v16 count])
    {
      v17 = +[HMDHAPMetadata getSharedInstance];
      v18 = [v10 attribute];
      v19 = [v17 mapReadCharacteristicFromAssistantName:v18];

      if (v19)
      {
        v20 = [v17 getAliasedCharacteristicTypes:v19];
        if ([v20 count])
        {
          v21 = [v20 arrayByAddingObject:v19];
        }

        else
        {
          v71 = v19;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
        }

        v33 = v21;
        v34 = [(HMDAssistantCommand *)self filterObjects:v16 forCharacteristicTypes:v21];
        if ([v34 count])
        {
          v53 = v33;
          v54 = v20;
          v56 = v12;
          v57 = v19;
          v55 = v17;
          v59 = [MEMORY[0x277CBEB18] array];
          v63 = [v10 includeCompleteInformation];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          obj = v34;
          v65 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
          if (v65)
          {
            v62 = *v67;
            v61 = *MEMORY[0x277D47E50];
            v58 = self;
            do
            {
              for (i = 0; i != v65; ++i)
              {
                if (*v67 != v62)
                {
                  objc_enumerationMutation(obj);
                }

                v36 = *(*(&v66 + 1) + 8 * i);
                v37 = [v36 service];
                v38 = actionResultForAction(v10);
                [v38 setOutcome:v61];
                v39 = entityForService(v37, v64, v16, v63);
                [v38 setEntity:v39];

                if ([(HMDAssistantCommand *)self populateResult:v38 withService:v37 serviceType:v64 characteristic:v36 resultAttribute:0 action:v10])
                {
                  [v59 addObject:v38];
                }

                else
                {
                  v40 = v34;
                  v41 = objc_autoreleasePoolPush();
                  v42 = self;
                  v43 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v45 = v44 = v10;
                    *buf = 138543618;
                    v73 = v45;
                    v74 = 2112;
                    v75 = v38;
                    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Not including the result: %@ to the action results", buf, 0x16u);

                    v10 = v44;
                    self = v58;
                  }

                  objc_autoreleasePoolPop(v41);
                  v34 = v40;
                }
              }

              v65 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
            }

            while (v65);
          }

          v46 = v16;

          v47 = objc_autoreleasePoolPush();
          v48 = self;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v51 = v50 = v10;
            *buf = 138543362;
            v73 = v51;
            _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@All results have been received for get-metadata-action-types, calling result handler", buf, 0xCu);

            v10 = v50;
          }

          objc_autoreleasePoolPop(v47);
          v12 = v56;
          [(HMDAssistantCommand *)v48 reportResults:v59 handler:v56];

          v16 = v46;
          v20 = v54;
          v17 = v55;
          v19 = v57;
          v33 = v53;
        }

        else
        {
          [(HMDAssistantCommand *)self returnResults:0 serviceType:v64 forAction:v10 completionHandler:v12];
        }
      }

      else
      {
        v26 = v17;
        v27 = v16;
        v28 = objc_autoreleasePoolPush();
        v29 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = HMFGetLogIdentifier();
          v32 = [v10 attribute];
          *buf = 138543618;
          v73 = v31;
          v74 = 2112;
          v75 = v32;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        [(HMDAssistantCommand *)v29 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v12];
        v16 = v27;
        v17 = v26;
        v19 = 0;
      }
    }

    else
    {
      [(HMDAssistantCommand *)self returnResults:0 serviceType:v64 forAction:v10 completionHandler:v12];
    }

    v11 = v16;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@In Get metadata action types, There is no attribute in action, reporting results", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDAssistantCommand *)v23 returnResults:v11 serviceType:v64 forAction:v10 completionHandler:v12];
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)executeActionSet:(id)a3 action:(id)a4 withCompletionHandler:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x22AAD2510](self, a2);
  v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 1452];
  v33 = [v11 initWithName:v14];

  v15 = [v9 attribute];
  LOBYTE(v13) = [*MEMORY[0x277D47F80] isEqualToString:v15];

  if (v13)
  {
    v16 = [v34 home];
    [(HMDAssistantCommand *)self setHome:v16];
    v17 = +[HMDHAPMetadata getSharedInstance];
    v18 = [v9 attribute];
    v19 = [v17 mapCharacteristicValueType:v18];

    v20 = [(HMDAssistantCommand *)self getValueOfType:v19 action:v9];
    v21 = v20;
    if (v20 && ([v20 BOOLValue] & 1) != 0)
    {
      objc_initWeak(location, self);
      v22 = [(HMDAssistantCommand *)self assistantCommandHelper];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __69__HMDAssistantCommand_executeActionSet_action_withCompletionHandler___block_invoke;
      v35[3] = &unk_278670ED0;
      objc_copyWeak(&v40, location);
      v36 = v33;
      v39 = v10;
      v37 = v9;
      v38 = v34;
      [v22 addActionSetRequest:v16 actionSet:v38 completionHandler:v35];

      objc_destroyWeak(&v40);
      objc_destroyWeak(location);
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v31;
        v42 = 2112;
        v43 = v21;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ActionSet action value %@ not true", location, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      [(HMDAssistantCommand *)v29 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v10];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v9 attribute];
      *location = 138543618;
      *&location[4] = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid action.attribute %@ for actionSet", location, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    [(HMDAssistantCommand *)v24 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:v10];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __69__HMDAssistantCommand_executeActionSet_action_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  [*(a1 + 32) begin];
  v8 = [v5 code];
  v9 = 82;
  if (unlockErrorCode)
  {
    v9 = 2003;
  }

  if (v8 == v9)
  {
    [WeakRetained reportUnlockRequired:*(a1 + 56)];
    goto LABEL_22;
  }

  v10 = actionResultForAction(*(a1 + 40));
  v11 = objc_alloc_init(MEMORY[0x277D47340]);
  v26 = [WeakRetained entityFromActionSet:*(a1 + 48)];
  [WeakRetained populateResultWithEntity:v10 action:*(a1 + 40) entity:?];
  v12 = *MEMORY[0x277D480D0];
  [v11 setValue:1];
  if (!v5)
  {
    v25 = v12;
    [v10 setOutcome:*MEMORY[0x277D47E50]];
LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  [v10 setOutcome:*MEMORY[0x277D47DE0]];
  if ([v5 code] == 25)
  {
    v13 = *MEMORY[0x277D48108];

    v14 = MEMORY[0x277D47E20];
LABEL_12:
    [v10 setOutcome:*v14];
LABEL_13:
    v12 = v13;
    goto LABEL_14;
  }

  if ([v5 code] == 4000)
  {
    v13 = *MEMORY[0x277D48118];

    v14 = MEMORY[0x277D47E30];
    goto LABEL_12;
  }

  if ([v5 code] == 64)
  {
    v13 = *MEMORY[0x277D48110];

    goto LABEL_13;
  }

  if ([v5 code] == 65)
  {
    v13 = *MEMORY[0x277D48100];

    v14 = MEMORY[0x277D47DF0];
    goto LABEL_12;
  }

  if ([v5 code] == 15)
  {
    [v10 setOutcome:*MEMORY[0x277D47DF0]];
  }

LABEL_14:
  v25 = v12;
  if (!v6)
  {
    goto LABEL_16;
  }

  v15 = [WeakRetained failedActionResultsFromResponse:v6 inActionSet:*(a1 + 48) withAction:*(a1 + 40)];
LABEL_17:
  [v10 setResultValue:v11];
  v16 = objc_autoreleasePoolPush();
  v17 = WeakRetained;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v24 = v6;
    v20 = v19 = v11;
    *buf = 138543618;
    v28 = v20;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Result received for execute action set: %@, calling result handler", buf, 0x16u);

    v11 = v19;
    v6 = v24;
  }

  objc_autoreleasePoolPop(v16);
  v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
  if ([v15 count])
  {
    [v21 addObjectsFromArray:v15];
  }

  v22 = [v21 copy];
  [v17 reportOutcome:v25 results:v22 handler:*(a1 + 56)];

  [*(a1 + 32) end];
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)actionOutcomeFromError:(id)a3
{
  v4 = [a3 code];
  if (v4 > 44)
  {
    if (v4 > 2403)
    {
      if (v4 == 2404)
      {
        v5 = MEMORY[0x277D47DC8];
        goto LABEL_25;
      }

      if (v4 == 2405)
      {
        v5 = MEMORY[0x277D47DD8];
        goto LABEL_25;
      }
    }

    else
    {
      if (v4 == 45)
      {
        v5 = MEMORY[0x277D47DF8];
        goto LABEL_25;
      }

      if (v4 == 88)
      {
        v5 = MEMORY[0x277D47DD0];
        goto LABEL_25;
      }
    }

    goto LABEL_22;
  }

  if (v4 > 14)
  {
    if (v4 == 15)
    {
      v5 = MEMORY[0x277D47DF0];
      goto LABEL_25;
    }

    if (v4 == 44)
    {
      v5 = MEMORY[0x277D47E48];
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      v5 = MEMORY[0x277D47E10];
      goto LABEL_25;
    }

LABEL_22:
    v5 = MEMORY[0x277D47DE0];
    goto LABEL_25;
  }

  v6 = [(HMDAssistantCommand *)self home];
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [(HMDAssistantCommand *)self home];
  v9 = [v8 primaryResident];
  if (v9)
  {

LABEL_24:
    v5 = MEMORY[0x277D47E58];
    goto LABEL_25;
  }

  v10 = [(HMDAssistantCommand *)self home];
  v11 = [v10 homeLocation];

  if (v11 == 1)
  {
    goto LABEL_24;
  }

  v5 = MEMORY[0x277D47E08];
LABEL_25:
  v12 = *v5;

  return v12;
}

- (void)returnResults:(id)a3 serviceType:(id)a4 forAction:(id)a5 completionHandler:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22 = a6;
  v13 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    v17 = *MEMORY[0x277D47E50];
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        v20 = actionResultForAction(v12);
        [v20 setOutcome:v17];
        [(HMDAssistantCommand *)self populateResult:v20 withObject:v19 serviceType:v11 action:v12];
        [v13 addObject:v20];

        ++v18;
      }

      while (v15 != v18);
      v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  [(HMDAssistantCommand *)self reportResults:v13 handler:v22];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)reportUnlockRequired:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x277CBEA60] array];
  v5 = +[HMDDeviceCapabilities supportsDeviceLock];
  v6 = MEMORY[0x277D48120];
  if (v5 && isPasscodeEnabledOnThisDevice())
  {
    v6 = MEMORY[0x277D480F8];
  }

  [(HMDAssistantCommand *)self reportOutcome:*v6 results:v4 handler:v7];
}

- (void)reportResults:(id)a3 handler:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 count])
  {
    v7 = v10;
    v8 = MEMORY[0x277D480D0];
  }

  else
  {
    v7 = [MEMORY[0x277CBEA60] array];
    v8 = MEMORY[0x277D480D8];
  }

  v9 = *v8;
  [(HMDAssistantCommand *)self reportOutcome:v9 results:v7 handler:v6];
}

- (void)reportOutcome:(id)a3 results:(id)a4 handler:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D47350]);
    [v11 setCommandOutcome:v8];
    if (v9)
    {
      [v11 setActionResults:v9];
    }

    else
    {
      v12 = [MEMORY[0x277CBEA60] array];
      [v11 setActionResults:v12];
    }

    v13 = [(HMDAssistantCommand *)self home];

    if (v13)
    {
      v14 = MEMORY[0x277CBEBC0];
      v15 = [(HMDAssistantCommand *)self home];
      v16 = [v15 urlString];
      v17 = [v14 URLWithString:v16];
      [v11 setHomeIdentifier:v17];
    }

    v41 = v10;
    v43 = v9;
    v44 = v8;
    v18 = [(HMDAssistantCommand *)self serverValidity];
    [v11 setServerValidity:v18];

    v19 = [(HMDAssistantCommand *)self homeKitObjects];
    v20 = [v19 count] + 1;

    v21 = [(HMDAssistantCommand *)self homeManager];
    v22 = [v21 assistantGenerationCounter];

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu:%tu", v22, v20];
    [v11 setClientValidity:v23];

    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [(HMDAssistantCommand *)self aceId];
      v28 = [v11 hm_headerDescription];
      *buf = 138543874;
      v51 = v26;
      v52 = 2112;
      v53 = v27;
      v54 = 2112;
      v55 = v28;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Response for Siri command(%@): %@", buf, 0x20u);
    }

    v42 = self;

    objc_autoreleasePoolPop(v24);
    v40 = v11;
    [v11 hm_contentDescription];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v29 = v48 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v46;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v45 + 1) + 8 * i);
          v35 = objc_autoreleasePoolPush();
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v37;
            v52 = 2112;
            v53 = v34;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v35);
        }

        v31 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v31);
    }

    v38 = [v40 dictionary];
    v10 = v41;
    v41[2](v41, v38);

    [(HMDAssistantCommand *)v42 _logEvent:v40];
    v9 = v43;
    v8 = v44;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_logEvent:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x277D0F770]);
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x22AAD2510](self, a2);
  v9 = [v7 stringWithFormat:@"%@, %s:%ld", v8, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommand.m", 1267];
  v43 = [v6 initWithName:v9];

  v41 = self;
  v10 = [(HMDAssistantCommand *)self actions];
  v42 = [v10 firstObject];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = v5;
  v11 = [v5 actionResults];
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v45 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *v47;
    v17 = *MEMORY[0x277D47DF0];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        v20 = [v19 outcome];
        v21 = isOutcomeSuccess(v20);

        if ((v21 & 1) == 0)
        {
          v22 = [v19 outcome];
          v23 = [v22 isEqual:v17];

          if (v23)
          {
            ++v14;
          }

          else
          {
            ++v15;
          }
        }
      }

      v45 += v13;
      v13 = [v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v13);
  }

  else
  {
    v45 = 0;
    v14 = 0;
    v15 = 0;
  }

  v24 = [(HMDAssistantCommand *)v41 serverValidity];

  if (v24)
  {
    v25 = [(HMDAssistantCommand *)v41 serverValidity];
    v26 = [v25 componentsSeparatedByString:@":"];

    v27 = [v26 firstObject];
    v28 = v27;
    if (v27)
    {
      v27 = atoll([v27 cStringUsingEncoding:4]);
    }

    v40 = v27;
  }

  else
  {
    v40 = 0;
  }

  v29 = [(HMDAssistantCommand *)v41 homeManager];
  v30 = [v29 assistantGenerationCounter];

  v31 = getLastSyncedAssistantConfigurationVersion();
  v32 = [v31 unsignedIntegerValue];

  mach_absolute_time();
  v33 = UpTicksToMilliseconds();
  v34 = v33 - [(HMDAssistantCommand *)v41 startTime];
  v35 = [v42 actionType];
  v36 = [v44 commandOutcome];
  v37 = [HMDSiriCommandEvent commandEventWithDuration:v34 actionType:v35 outcome:v36 numberOfEntities:v45 numberOfFailures:v15 numberOfIncompletions:v14 serverConfigurationVersion:v40 configurationVersion:v30 lastSyncedConfigurationVersion:v32];

  v38 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v38 submitLogEvent:v37];

  [v42 aceId];
  [v42 actionType];

  [v44 commandOutcome];
  v39 = *MEMORY[0x277D85DE8];
}

- (id)filterObjects:(id)a3 forCharacteristics:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v28 = a4;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v30 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v30)
  {
    v29 = *v36;
    v27 = self;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v9 = [(HMDAssistantCommand *)self serviceFromObject:v8];
        if (v9)
        {
          v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v28, "count")}];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v11 = v28;
          v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v32;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v31 + 1) + 8 * j);
                v17 = [v9 characteristics];
                v18 = [v17 hmf_firstObjectWithCharacteristicType:v16];

                if (!v18)
                {

                  self = v27;
                  goto LABEL_18;
                }

                [v10 setObject:v18 forKey:v16];
              }

              v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          self = v27;
          if (v10)
          {
            [v25 addObject:v10];
            v11 = v10;
LABEL_18:
          }
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          v20 = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543618;
            v41 = v22;
            v42 = 2112;
            v43 = v8;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Filtered object %@ not a service", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
        }
      }

      v30 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v30);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)filterObjects:(id)a3 forCharacteristicTypes:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36 = a4;
  v42 = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v6;
  v38 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v38)
  {
    v37 = *v49;
    *&v7 = 138543618;
    v34 = v7;
    p_superclass = HMDIDSActivityRegistrationModel.superclass;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v49 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v41 = [(HMDAssistantCommand *)self serviceFromObject:v10, v34];
        if (v41)
        {
          v39 = i;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v11 = v36;
          v12 = v41;
          v43 = [v11 countByEnumeratingWithState:&v44 objects:v58 count:16];
          if (v43)
          {
            v13 = *v45;
            v40 = *v45;
            do
            {
              for (j = 0; j != v43; ++j)
              {
                if (*v45 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v44 + 1) + 8 * j);
                v16 = [p_superclass + 199 getSharedInstance];
                v17 = [v12 type];
                v18 = [v16 disallowsAssistantServiceType:v17 characteristicType:v15];

                if (v18)
                {
                  v19 = objc_autoreleasePoolPush();
                  v20 = self;
                  v21 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v22 = v11;
                    v23 = p_superclass;
                    v25 = v24 = self;
                    v26 = [v12 type];
                    *buf = 138543874;
                    v53 = v25;
                    v54 = 2112;
                    v55 = v26;
                    v56 = 2112;
                    v57 = v15;
                    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Filtering out request for disallowed service type: %@ characteristic type: %@", buf, 0x20u);

                    v12 = v41;
                    self = v24;
                    p_superclass = v23;
                    v11 = v22;
                    v13 = v40;
                  }

                  objc_autoreleasePoolPop(v19);
                }

                else
                {
                  v27 = [v12 findCharacteristicWithType:v15];
                  if (v27)
                  {
                    [v42 addObject:v27];
                  }
                }
              }

              v43 = [v11 countByEnumeratingWithState:&v44 objects:v58 count:16];
            }

            while (v43);
          }

          i = v39;
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = HMFGetLogIdentifier();
            *buf = v34;
            v53 = v31;
            v54 = 2112;
            v55 = v10;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Filtered object is not a service: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
        }
      }

      v38 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v38);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)objectsWithSearchFilter:(id)a3 inHome:(id)a4 serviceTypeIsATV:(BOOL)a5 overrideServiceTypeIfNeeded:(id *)a6
{
  v6 = a5;
  v135 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(HMDAssistantCommand *)self homeKitObjects];
  if ([v11 count])
  {
    v12 = [v10 urlString];
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K = %@)", @"objectHomeIdentifier", v12];
    v14 = [v11 filteredArrayUsingPredicate:v13];

    if (![v14 count])
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        [v10 name];
        v32 = v115 = v12;
        [v10 uuid];
        v119 = v9;
        v34 = v33 = v10;
        v35 = [v34 UUIDString];
        *buf = 138543874;
        v130 = v31;
        v131 = 2112;
        v132 = v32;
        v133 = 2112;
        v134 = v35;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@After filtering for home %@/%@, no objects to apply the command to", buf, 0x20u);

        v10 = v33;
        v9 = v119;

        v12 = v115;
      }

      objc_autoreleasePoolPop(v28);
      v27 = 0;
      goto LABEL_80;
    }

    v117 = v6;
    v15 = [v9 entityType];
    v16 = [v9 attribute];

    if (v16)
    {
      v17 = *MEMORY[0x277D48170];
      if (v15)
      {
        if (([v15 isEqualToString:v17] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", *MEMORY[0x277D48168]) & 1) == 0)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = self;
          v20 = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v22 = v110 = v15;
            *buf = 138543618;
            v130 = v22;
            v131 = 2112;
            v132 = v9;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Attribute specified in search filter with entityType not SERVICE/SCENE(%@)", buf, 0x16u);

            v15 = v110;
          }

          objc_autoreleasePoolPop(v18);
          self = v19;
        }

        goto LABEL_18;
      }

      v15 = v17;
    }

    if (!v15)
    {
      v118 = v13;
      goto LABEL_25;
    }

LABEL_18:
    v36 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"objectType", v15];

    v37 = [v14 filteredArrayUsingPredicate:v36];

    if (![v37 count])
    {
      v38 = v36;
      v39 = objc_autoreleasePoolPush();
      v40 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543362;
        v130 = v42;
        v43 = "%{public}@After filtering for entityType, no objects to apply the command to";
LABEL_22:
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, v43, buf, 0xCu);
      }

LABEL_23:

      objc_autoreleasePoolPop(v39);
      v27 = 0;
      v44 = v38;
LABEL_79:

      v13 = v44;
      v14 = v37;
LABEL_80:

      v11 = v14;
      goto LABEL_81;
    }

    v118 = v36;
    v14 = v37;
LABEL_25:
    v45 = [v9 serviceType];

    if (!v45)
    {
      goto LABEL_45;
    }

    v109 = v10;
    v111 = v15;
    v46 = +[HMDHAPMetadata getSharedInstance];
    v47 = [v9 serviceType];
    v48 = [v46 mapFromAssistantServiceName:v47];

    if (v117)
    {
      v49 = [v9 serviceType];

      v48 = v49;
    }

    else if (!v48)
    {

      v27 = 0;
      v37 = v14;
      goto LABEL_72;
    }

    v113 = self;
    v116 = v12;
    v120 = v9;
    v108 = v46;
    v122 = [v46 getAliasedServiceType:v48];
    v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    obj = v14;
    v51 = [obj countByEnumeratingWithState:&v124 objects:v128 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v125;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v125 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v124 + 1) + 8 * i);
          v56 = [v55 hmf_stringForKey:@"objectServiceType"];
          v57 = [v55 hmf_stringForKey:@"objectAssociatedServiceType"];
          if ([v56 isEqual:v48])
          {
            [v50 addObject:v55];
          }

          else if (([v56 isEqual:v122] & 1) != 0 || (objc_msgSend(v57, "isEqual:", v48) & 1) != 0 || objc_msgSend(v57, "isEqual:", v122))
          {
            [v50 addObject:v55];
            if (a6)
            {
              *a6 = [v120 serviceType];
            }
          }
        }

        v52 = [obj countByEnumeratingWithState:&v124 objects:v128 count:16];
      }

      while (v52);
    }

    v37 = [v50 copy];
    if ([v37 count])
    {

      v14 = v37;
      v9 = v120;
      v10 = v109;
      v15 = v111;
      self = v113;
      v12 = v116;
LABEL_45:
      v58 = [v9 roomName];
      if (v58)
      {
      }

      else
      {
        v59 = [v9 zoneName];

        if (!v59)
        {
          goto LABEL_50;
        }
      }

      v60 = [v9 homeName];
      v61 = [v9 roomName];
      v62 = [v9 zoneName];
      v37 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:v14 forHomeName:v60 roomName:v61 zoneName:v62];

      if (![v37 count])
      {
        v69 = objc_autoreleasePoolPush();
        v70 = self;
        v71 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = HMFGetLogIdentifier();
          *buf = 138543362;
          v130 = v72;
          v73 = "%{public}@After filtering for room/zone, no objects to apply the command to";
LABEL_75:
          _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, v73, buf, 0xCu);
        }

LABEL_76:

        objc_autoreleasePoolPop(v69);
LABEL_77:
        v27 = 0;
        goto LABEL_78;
      }

      v14 = v37;
LABEL_50:
      v63 = [v9 groupName];

      if (!v63)
      {
        goto LABEL_53;
      }

      v64 = [v9 groupName];
      v37 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:v14 forGroup:v64];

      if ([v37 count])
      {
        v14 = v37;
LABEL_53:
        v65 = [v9 accessoryName];

        if (v65)
        {
          v66 = MEMORY[0x277CCAC30];
          v67 = [v9 accessoryName];
          v68 = [v66 predicateWithFormat:@"%K = %@", @"objectAccessory", v67];

          v37 = [v14 filteredArrayUsingPredicate:v68];

          if (![v37 count])
          {
            v91 = objc_autoreleasePoolPush();
            v92 = self;
            v93 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v95 = v94 = v15;
              *buf = 138543362;
              v130 = v95;
              _os_log_impl(&dword_229538000, v93, OS_LOG_TYPE_INFO, "%{public}@After filtering for accessoryName, no objects to apply the command to", buf, 0xCu);

              v15 = v94;
            }

            objc_autoreleasePoolPop(v91);
            v27 = 0;
            v44 = v68;
            goto LABEL_79;
          }

          v114 = self;
          v14 = v37;
        }

        else
        {
          v114 = self;
          v68 = v118;
        }

        v78 = [v9 serviceName];

        if (v78)
        {
          v79 = MEMORY[0x277CCAC30];
          v80 = [v9 serviceName];
          v81 = [v79 predicateWithFormat:@"%K =[d] %@", @"objectName", v80];

          v37 = [v14 filteredArrayUsingPredicate:v81];

          if (![v37 count])
          {
            v38 = v81;
            v39 = objc_autoreleasePoolPush();
            v40 = v114;
            v41 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              goto LABEL_23;
            }

            v42 = HMFGetLogIdentifier();
            *buf = 138543362;
            v130 = v42;
            v43 = "%{public}@After filtering for serviceName, no objects to apply the command to";
            goto LABEL_22;
          }

          v68 = v81;
          v14 = v37;
        }

        v82 = [v9 sceneName];

        if (!v82)
        {
          goto LABEL_68;
        }

        v83 = MEMORY[0x277CCAC30];
        v84 = [v9 sceneName];
        v85 = [v83 predicateWithFormat:@"%K =[d] %@", @"objectName", v84];

        v37 = [v14 filteredArrayUsingPredicate:v85];

        if ([v37 count])
        {
          v68 = v85;
          v14 = v37;
LABEL_68:
          v86 = [v9 sceneType];

          if (!v86)
          {
            v44 = v68;
LABEL_104:
            v97 = [v9 attribute];
            if (!v97 || v117)
            {
              goto LABEL_110;
            }

            v118 = v44;
            v98 = [v9 attribute];
            if ([v98 isEqual:*MEMORY[0x277D47F48]])
            {
LABEL_109:

              v44 = v118;
LABEL_110:

LABEL_111:
              v37 = v14;
              v27 = v37;
              goto LABEL_79;
            }

            v99 = [v9 attribute];
            if ([v99 isEqual:*MEMORY[0x277D47EC8]])
            {

              goto LABEL_109;
            }

            v112 = v15;
            v105 = [v9 entityType];
            v106 = [v105 isEqual:*MEMORY[0x277D48168]];

            if (v106)
            {
LABEL_118:
              v15 = v112;
              v44 = v118;
              goto LABEL_111;
            }

            v107 = [v9 attribute];
            v37 = [(HMDAssistantCommand *)v114 filteredObjectsFromObjects:v14 byAttribute:v107 forActionType:0];

            if ([v37 count])
            {
              v14 = v37;
              goto LABEL_118;
            }

            v69 = objc_autoreleasePoolPush();
            v70 = v114;
            v71 = HMFGetOSLogHandle();
            v15 = v112;
            if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              goto LABEL_76;
            }

            v72 = HMFGetLogIdentifier();
            *buf = 138543362;
            v130 = v72;
            v73 = "%{public}@After filtering for attribute, no objects to apply the command to";
            goto LABEL_75;
          }

          v87 = [v9 sceneType];
          if ([v87 isEqualToString:*MEMORY[0x277D48198]])
          {
            v88 = MEMORY[0x277CCF1B0];
          }

          else if ([v87 isEqualToString:*MEMORY[0x277D481A0]])
          {
            v88 = MEMORY[0x277CCF198];
          }

          else if ([v87 isEqualToString:*MEMORY[0x277D481A8]])
          {
            v88 = MEMORY[0x277CCF180];
          }

          else
          {
            if (![v87 isEqualToString:*MEMORY[0x277D481B0]])
            {
              v96 = 0;
              goto LABEL_99;
            }

            v88 = MEMORY[0x277CCF188];
          }

          v96 = *v88;
LABEL_99:

          if (v96)
          {
            v44 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K =[d] %@", @"objectSceneType", v96];

            v37 = [v14 filteredArrayUsingPredicate:v44];

            if (![v37 count])
            {
              v118 = v44;
              v100 = objc_autoreleasePoolPush();
              v101 = v114;
              v102 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v104 = v103 = v15;
                *buf = 138543362;
                v130 = v104;
                _os_log_impl(&dword_229538000, v102, OS_LOG_TYPE_INFO, "%{public}@After filtering for actionSetType, no objects to apply the command to", buf, 0xCu);

                v15 = v103;
              }

              objc_autoreleasePoolPop(v100);
              goto LABEL_77;
            }

            v14 = v37;
          }

          else
          {
            v44 = v68;
          }

          goto LABEL_104;
        }

        v38 = v85;
        v39 = objc_autoreleasePoolPush();
        v40 = v114;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v130 = v42;
          v43 = "%{public}@After filtering for actionSetName, no objects to apply the command to";
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      v69 = objc_autoreleasePoolPush();
      v70 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = HMFGetLogIdentifier();
        *buf = 138543362;
        v130 = v72;
        v73 = "%{public}@After filtering for serviceGroup, no objects to apply the command to";
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    v74 = objc_autoreleasePoolPush();
    v75 = v113;
    v76 = HMFGetOSLogHandle();
    v9 = v120;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = HMFGetLogIdentifier();
      *buf = 138543362;
      v130 = v77;
      _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_INFO, "%{public}@After filtering for serviceType, no objects to apply the command to", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v74);
    v27 = 0;
    v10 = v109;
    v12 = v116;
LABEL_72:
    v15 = v111;
LABEL_78:
    v44 = v118;
    goto LABEL_79;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v130 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@No objects to apply the command to", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = 0;
LABEL_81:

  v89 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_homeWithSearchFilter:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAssistantCommand *)self homeManager];
  v6 = [v4 homeIdentifier];

  if (v6)
  {
    v7 = [v4 homeIdentifier];
    v8 = [v7 absoluteString];
    v9 = [v5 _homeWithAssistantIdentifier:v8];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v4 homeIdentifier];
        v46 = 138543874;
        v47 = v14;
        v48 = 2112;
        v49 = v9;
        v50 = 2112;
        v51 = v15;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Matched home %@ with the homeIdentifier %@ from SCF", &v46, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      goto LABEL_31;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v4 homeIdentifier];
      v46 = 138543618;
      v47 = v16;
      v48 = 2112;
      v49 = v17;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_FAULT, "%{public}@No home found with identifier %@", &v46, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v18 = [v4 homeName];

  if (v18)
  {
    v19 = [v4 homeName];
    v20 = [v5 _homesWithName:v19];

    if ([v20 count] >= 2)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v4 homeName];
        v46 = 138543618;
        v47 = v24;
        v48 = 2112;
        v49 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_FAULT, "%{public}@Multiple homes found with name %@, homeIdentifier should be used instead", &v46, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }

    v26 = [v4 homeName];
    v27 = [(HMDAssistantCommand *)self _evaluateHomeOptionallyMatchingHomeName:v26];

    if (v27)
    {
      goto LABEL_19;
    }

    v28 = [v20 firstObject];
    if (v28)
    {
      v27 = v28;
      v29 = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [v4 homeName];
        v46 = 138543874;
        v47 = v32;
        v48 = 2112;
        v49 = v27;
        v50 = 2112;
        v51 = v33;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Matched home %@ with the homeName %@ from SCF after a homeIdentifier mismatch", &v46, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
LABEL_19:
      v9 = v27;

      goto LABEL_31;
    }

    goto LABEL_24;
  }

  if (v6)
  {
LABEL_24:
    v36 = objc_autoreleasePoolPush();
    v37 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v46 = 138543362;
      v47 = v39;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@No matches for the home name/identifier specified in Siri command - bailing out....", &v46, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
    v9 = 0;
    goto LABEL_31;
  }

  v34 = [(HMDAssistantCommand *)self _evaluateHomeOptionallyMatchingHomeName:0];
  v9 = v34;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      v46 = 138543362;
      v47 = v43;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Cannot evaluate the home to apply the Siri command to - bailing out....", &v46, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
  }

LABEL_31:
  v44 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_evaluateHomeOptionallyMatchingHomeName:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAssistantCommand *)self homeManager];
  v6 = [v5 _accessoryOfCurrentDevice];
  v7 = [v6 home];

  if (!v7 || v4 && ([v7 name], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v4, "isEqual:", v8), v8, !v9))
  {
    v16 = [v5 currentHomeUUID];
    v17 = [v5 _homeWithUUID:v16];

    if (v17 && (!v4 || ([v17 name], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v4, "isEqual:", v18), v18, v19)))
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v23;
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Defaulting to current home %@ of the device", &v31, 0x16u);
      }
    }

    else
    {
      v24 = [v5 primaryHomeUUID];

      v14 = [v5 _homeWithUUID:v24];

      if (!v14 || v4 && ([v14 name], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v4, "isEqual:", v25), v25, !v26))
      {
        v15 = 0;
        goto LABEL_20;
      }

      v20 = objc_autoreleasePoolPush();
      v27 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v28;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Defaulting to primary home %@ of the device", &v31, 0x16u);
      }

      v17 = v14;
      v16 = v24;
    }

    objc_autoreleasePoolPop(v20);
    v14 = v17;
    v24 = v16;
    v15 = v14;
LABEL_20:

    goto LABEL_21;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v13;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Defaulting to home %@ that this device belongs to", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = v7;
  v15 = v14;
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)filteredObjectsFromObjects:(id)a3 byCharacteristicType:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = a4;
  v18 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = *MEMORY[0x277D48170];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:{@"objectType", v18}];
        if ([v13 isEqualToString:v10])
        {
          v14 = [v12 objectForKeyedSubscript:@"objectCharacteristics"];
          v15 = [v14 containsObject:v19];

          if (v15)
          {
            [v18 addObject:v12];
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)filteredObjectsFromObjects:(id)a3 byAttribute:(id)a4 forActionType:(id)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[HMDHAPMetadata getSharedInstance];
  if (!v9 || ([v9 isEqualToString:*MEMORY[0x277D47E78]] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47EC0]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47EA0]) & 1) != 0)
  {
    v48 = 1;
  }

  else
  {
    v48 = [v9 isEqualToString:*MEMORY[0x277D47E70]];
  }

  v51 = [v10 mapReadCharacteristicFromAssistantName:v8];
  v47 = [v10 getAliasedCharacteristicTypes:?];
  v44 = v9;
  if ([v9 isEqualToString:*MEMORY[0x277D47EA8]] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47E98]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47EB8]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47EB0]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47E88]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47E80]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47E90]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47EC0]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47EA0]))
  {
    v54 = 1;
  }

  else
  {
    v54 = [v9 isEqualToString:*MEMORY[0x277D47E70]];
  }

  v45 = v8;
  [v10 mapWriteCharacteristicFromAssistantName:v8];
  v49 = v43 = v10;
  v46 = [v10 getAliasedCharacteristicTypes:?];
  v50 = [MEMORY[0x277CBEB18] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  v12 = v48;
  if (v11)
  {
    v13 = v11;
    v14 = *v66;
    v15 = *MEMORY[0x277D48170];
    v52 = *v66;
    v53 = *MEMORY[0x277D48170];
    do
    {
      v16 = 0;
      v55 = v13;
      do
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v65 + 1) + 8 * v16);
        v18 = [v17 objectForKeyedSubscript:@"objectType"];
        v19 = [v18 isEqualToString:v15];

        if (v19)
        {
          if (v12 && ([v17 objectForKeyedSubscript:@"objectCharacteristics"], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "containsObject:", v51), v20, (v21 & 1) == 0))
          {
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v23 = v47;
            v24 = [v23 countByEnumeratingWithState:&v61 objects:v70 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v62;
              while (2)
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v62 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v61 + 1) + 8 * i);
                  v29 = [v17 objectForKeyedSubscript:@"objectCharacteristics"];
                  LOBYTE(v28) = [v29 containsObject:v28];

                  if (v28)
                  {
                    v22 = 0;
                    goto LABEL_35;
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v61 objects:v70 count:16];
                if (v25)
                {
                  continue;
                }

                break;
              }

              v22 = 1;
LABEL_35:
              v12 = v48;
              v14 = v52;
            }

            else
            {
              v22 = 1;
            }
          }

          else
          {
            v22 = 0;
          }

          if (v54)
          {
            v30 = [v17 objectForKeyedSubscript:@"objectCharacteristics"];
            v31 = [v30 containsObject:v49];

            if (v31)
            {
              v32 = 0;
            }

            else
            {
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v33 = v46;
              v34 = [v33 countByEnumeratingWithState:&v57 objects:v69 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v58;
                while (2)
                {
                  for (j = 0; j != v35; ++j)
                  {
                    if (*v58 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v57 + 1) + 8 * j);
                    v39 = [v17 objectForKeyedSubscript:@"objectCharacteristics"];
                    LOBYTE(v38) = [v39 containsObject:v38];

                    if (v38)
                    {
                      v32 = 0;
                      goto LABEL_52;
                    }
                  }

                  v35 = [v33 countByEnumeratingWithState:&v57 objects:v69 count:16];
                  if (v35)
                  {
                    continue;
                  }

                  break;
                }

                v32 = 1;
LABEL_52:
                v12 = v48;
              }

              else
              {
                v32 = 1;
              }
            }

            v14 = v52;
          }

          else
          {
            v32 = 0;
          }

          v40 = v22 | v32;
          v15 = v53;
          v13 = v55;
          if ((v40 & 1) == 0)
          {
            [v50 addObject:v17];
          }
        }

        ++v16;
      }

      while (v16 != v13);
      v13 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v13);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)filteredObjectsFromObjects:(id)a3 forGroup:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:{@"objectGroups", v18}];
        v15 = v14;
        if (v14 && [v14 containsObject:v6])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)filteredObjectsFromObjects:(id)a3 forHomeName:(id)a4 roomName:(id)a5 zoneName:(id)a6
{
  v66[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v50 = a6;
  if (v12 | v50)
  {
    v13 = 0x277CBE000uLL;
    v45 = v11;
    if (v12)
    {
      v66[0] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
    }

    else if (v50)
    {
      v44 = v10;
      v46 = objc_opt_new();
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = [(HMDAssistantCommand *)self homeKitObjects];
      v16 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v60;
        v19 = *MEMORY[0x277D48160];
        v20 = @"objectType";
        do
        {
          v21 = 0;
          v47 = v17;
          do
          {
            if (*v60 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v59 + 1) + 8 * v21);
            if (!v11 || ([*(*(&v59 + 1) + 8 * v21) objectForKeyedSubscript:@"objectHome"], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", v11), v23, v24))
            {
              v25 = [v22 objectForKeyedSubscript:v20];
              v26 = [v25 isEqualToString:v19];

              if (v26)
              {
                v27 = v20;
                v28 = v11;
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                v29 = [v22 objectForKeyedSubscript:@"objectZones"];
                v30 = [v29 countByEnumeratingWithState:&v55 objects:v64 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v56;
                  while (2)
                  {
                    for (i = 0; i != v31; ++i)
                    {
                      if (*v56 != v32)
                      {
                        objc_enumerationMutation(v29);
                      }

                      if ([v50 isEqualToString:*(*(&v55 + 1) + 8 * i)])
                      {
                        v34 = [v22 objectForKeyedSubscript:@"objectName"];
                        [v46 addObject:v34];

                        goto LABEL_24;
                      }
                    }

                    v31 = [v29 countByEnumeratingWithState:&v55 objects:v64 count:16];
                    if (v31)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_24:

                v11 = v28;
                v20 = v27;
                v17 = v47;
              }
            }

            ++v21;
          }

          while (v21 != v17);
          v17 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v17);
      }

      v10 = v44;
      v12 = 0;
      v13 = 0x277CBE000;
      v14 = v46;
    }

    else
    {
      v14 = 0;
    }

    v15 = [*(v13 + 2840) array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obja = v14;
    v35 = [obja countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = 0;
      v38 = *v52;
      do
      {
        v39 = 0;
        v40 = v37;
        do
        {
          if (*v52 != v38)
          {
            objc_enumerationMutation(obja);
          }

          v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K =[d] %@", @"objectRoom", *(*(&v51 + 1) + 8 * v39)];

          v41 = [v10 filteredArrayUsingPredicate:v37];
          [v15 addObjectsFromArray:v41];

          ++v39;
          v40 = v37;
        }

        while (v36 != v39);
        v36 = [obja countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v36);
    }

    v11 = v45;
  }

  else
  {
    v15 = v10;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)objectsWithIdentifierList:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(HMDAssistantCommand *)self homeKitObjects];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v22 = a4;
    v10 = 0;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:{@"objectIdentifier", v22}];
        v15 = [v6 containsObject:v14];

        if (v15)
        {
          v16 = [v13 objectForKeyedSubscript:@"objectHomeIdentifier"];
          v17 = v16;
          if (v10)
          {
            if (([v10 isEqualToString:v16] & 1) == 0)
            {
              if (v22)
              {
                *v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
              }

              v18 = MEMORY[0x277CBEBF8];
              v19 = v23;
              goto LABEL_20;
            }
          }

          else
          {
            v10 = v16;
          }

          [v23 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  v19 = v23;
  v18 = [v23 copy];
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)adjustGetValue:(id)a3 type:(id)a4 units:(id)a5 attribute:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  v15 = +[HMDHAPMetadata getSharedInstance];
  if ([v15 supportsLocalization:v13])
  {
    v16 = v14;
    if (isTemperatureAttribute(v13))
    {
      v16 = v14;
      if (temperatureConversionIsNeeded(v12))
      {
        v17 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        *&v19 = (v18 * 1.8) + 32.0;
        v16 = [v17 numberWithFloat:v19];

        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v26 = 138544130;
          v27 = v23;
          v28 = 2112;
          v29 = v13;
          v30 = 2112;
          v31 = v14;
          v32 = 2112;
          v33 = v16;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@adjustGet: Attribute %@ value %@  adjusted to Fahrenheit %@", &v26, 0x2Au);
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }

  else
  {
    v16 = [v15 mapToAssistantCharacteristicValue:v14 name:v13 getActionType:1];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)adjustSetValue:(id)a3 type:(id)a4 units:(id)a5 attribute:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  v15 = +[HMDHAPMetadata getSharedInstance];
  if ([v15 supportsLocalization:v13])
  {
    v16 = v14;
    if (isTemperatureAttribute(v13))
    {
      v16 = v14;
      if (temperatureConversionIsNeeded(v12))
      {
        v17 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        *&v19 = ((v18 + -32.0) * 5.0) / 9.0;
        v16 = [v17 numberWithFloat:v19];

        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v26 = 138544130;
          v27 = v23;
          v28 = 2112;
          v29 = v13;
          v30 = 2112;
          v31 = v14;
          v32 = 2112;
          v33 = v16;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@adjustSet: Attribute %@ value %@  converted to Celsius as %@", &v26, 0x2Au);
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }

  else
  {
    v16 = [v15 mapFromAssistantCharacteristicValue:v14 name:v13];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)isAttributeValue:(id)a3 equalTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v5 value];
    v9 = [v7 value];

    v10 = v8 ^ v9 ^ 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6;
    v12 = [v5 value];
    v13 = [v11 value];

    v14 = v12 == v13;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v21 = [v5 value];
      v22 = [v20 value];

      v10 = [v21 isEqualToString:v22];
      goto LABEL_14;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v15 = v6;
  [v5 value];
  v17 = v16;
  [v15 value];
  v19 = v18;

  v14 = v17 == v19;
LABEL_8:
  v10 = v14;
LABEL_14:

  return v10;
}

- (id)getValueOfType:(id)a3 action:(id)a4
{
  v4 = a4;
  v5 = [v4 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 value];
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "value")}];
LABEL_9:
    v16 = v9;

    goto LABEL_10;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  v11 = [v4 value];
  v8 = v11;
  if (v10)
  {
    v12 = MEMORY[0x277CCABB0];
    [v11 value];
    v9 = [v12 numberWithFloat:?];
    goto LABEL_9;
  }

  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  v14 = [v4 value];
  v8 = v14;
  if (v13)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "value")}];
    goto LABEL_9;
  }

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v8 = [v4 value];
    v9 = [v8 value];
    goto LABEL_9;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (id)getLocaleUnits:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CCF6F8];
  v5 = [v3 isEqualToString:*MEMORY[0x277CCF6F8]];
  v6 = *MEMORY[0x277CCF700];
  if ((v5 & 1) != 0 || (v7 = v3, [v3 isEqualToString:*MEMORY[0x277CCF700]]))
  {
    if (isMetricLocale_onceToken != -1)
    {
      dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_198641);
    }

    if (isMetricLocale_isMetricLocale)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }
  }

  v8 = v7;

  return v7;
}

- (id)actionResultForCharacteristic:(id)a3 actionSet:(id)a4 action:(id)a5 objects:(id)a6 error:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v53 = [v11 service];
  v16 = v11;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v17 = [v12 actions];
  v18 = [v17 countByEnumeratingWithState:&v54 objects:buf count:16];
  v51 = v14;
  if (v18)
  {
    v19 = v18;
    v49 = v15;
    v20 = v13;
    v21 = v12;
    v22 = *v55;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v55 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        if (v26 && [v26 isActionForCharacteristic:v16])
        {
          v27 = [v26 targetValue];

          goto LABEL_15;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v54 objects:buf count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v27 = 0;
LABEL_15:
    v12 = v21;
    v13 = v20;
    v15 = v49;
    v14 = v51;
  }

  else
  {
    v27 = 0;
  }

  v28 = entityForService(v53, 0, v14, [v13 includeCompleteInformation]);
  if (v28)
  {
    v29 = actionResultForAction(v13);
    v30 = [(HMDAssistantCommand *)self actionOutcomeFromError:v15];
    [v29 setOutcome:v30];

    [v29 setEntity:v28];
    if (isMetricLocale_onceToken != -1)
    {
      dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_198641);
    }

    v31 = getTupleForCharacteristic(v16, v27, isMetricLocale_isMetricLocale);
    v32 = v31;
    if (v31)
    {
      v33 = [v31 attribute];
      [v29 setResultAttribute:v33];

      v34 = [v32 value];
      [v29 setResultValue:v34];
    }

    else
    {
      v50 = v15;
      context = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v43;
        v60 = 2112;
        v61 = v16;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@There is no Siri mapping attribute and/or format for characteristic : %@", buf, 0x16u);

        v14 = v51;
      }

      objc_autoreleasePoolPop(context);
      v15 = v50;
    }

    if (v29)
    {
      v44 = [v29 resultValue];
      if (v44)
      {
        v45 = v29;
      }

      else
      {
        v45 = 0;
      }

      v40 = v45;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v35 = v15;
    v36 = objc_autoreleasePoolPush();
    v37 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v39;
      v60 = 2112;
      v61 = v53;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Unable to get the entity for service : %@", buf, 0x16u);

      v14 = v51;
    }

    objc_autoreleasePoolPop(v36);
    v40 = 0;
    v15 = v35;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)actionResultForMediaProfile:(id)a3 action:(id)a4 objects:(id)a5 error:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = entityForMediaProfile(v10, v12, [v11 includeCompleteInformation]);
  if (v14)
  {
    v15 = actionResultForAction(v11);
    v16 = [(HMDAssistantCommand *)self actionOutcomeFromError:v13];
    [v15 setOutcome:v16];

    [v15 setEntity:v14];
    v17 = v11;
    v18 = getAttributeForMediaProfile(v14);
    v19 = [v17 actionType];
    if ([v19 isEqualToString:*MEMORY[0x277D47EA8]])
    {
      v32 = v13;
      v20 = [v17 attribute];
      v21 = [v20 isEqualToString:*MEMORY[0x277D47F80]];

      if (v21)
      {
        v22 = *MEMORY[0x277D48000];
        if ([v18 containsObject:*MEMORY[0x277D48000]])
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v13 = v32;
    }

    else
    {

      v24 = 0;
    }

    [v15 setResultAttribute:v24];
    v29 = objc_alloc_init(MEMORY[0x277D47340]);
    [v29 setValue:1];
    [v15 setResultValue:v29];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v28;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to get the entity for service : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v15 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)failedActionResultsFromResponse:(id)a3 inActionSet:(id)a4 withAction:(id)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v61 = a4;
  v63 = a5;
  v59 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K =[d] %@", @"objectType", *MEMORY[0x277D48170]];
  v10 = [(HMDAssistantCommand *)self homeKitObjects];
  v49 = v9;
  v62 = [v10 filteredArrayUsingPredicate:v9];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v77;
    v60 = *MEMORY[0x277CD2128];
    v15 = 0x277CCA000uLL;
    v50 = *v77;
    v51 = v11;
    do
    {
      v16 = 0;
      v52 = v13;
      do
      {
        if (*v77 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v76 + 1) + 8 * v16);
        v18 = [(HMDAssistantCommand *)self home];
        v19 = [objc_alloc(*(v15 + 3448)) initWithUUIDString:v17];
        v20 = [v18 mediaProfileWithUUID:v19];

        v54 = v20;
        if (v20)
        {
          v64 = [v11 hmf_dictionaryForKey:v17];
          v21 = [v64 hmf_dataForKey:@"HM.mediaPlaybackErrorDataKey"];
          if (!v21)
          {
            goto LABEL_41;
          }

          v22 = [MEMORY[0x277CCA9B8] hmf_unarchiveFromData:v21 error:0];
          if (v22)
          {
            v23 = [(HMDAssistantCommand *)self actionResultForMediaProfile:v20 action:v63 objects:v62 error:v22];
            if (v23)
            {
              [v59 addObject:v23];
            }
          }
        }

        else
        {
          v53 = v16;
          v24 = [(HMDAssistantCommand *)self home];
          v25 = [objc_alloc(*(v15 + 3448)) initWithUUIDString:v17];
          v26 = [v24 accessoryWithUUID:v25];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v64 = v27;

          v28 = [v11 hmf_dictionaryForKey:v17];
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v22 = v28;
          v57 = [v22 countByEnumeratingWithState:&v72 objects:v85 count:16];
          if (v57)
          {
            v55 = *v73;
            v56 = v22;
            v29 = v60;
            do
            {
              v30 = 0;
              do
              {
                if (*v73 != v55)
                {
                  objc_enumerationMutation(v22);
                }

                v58 = v30;
                v65 = *(*(&v72 + 1) + 8 * v30);
                v31 = [v22 hmf_dictionaryForKey:?];
                v68 = 0u;
                v69 = 0u;
                v70 = 0u;
                v71 = 0u;
                v32 = v31;
                v67 = [v32 countByEnumeratingWithState:&v68 objects:v84 count:16];
                if (v67)
                {
                  v66 = *v69;
                  do
                  {
                    for (i = 0; i != v67; ++i)
                    {
                      if (*v69 != v66)
                      {
                        objc_enumerationMutation(v32);
                      }

                      v34 = *(*(&v68 + 1) + 8 * i);
                      v35 = [v32 hmf_dictionaryForKey:v34];
                      v36 = [v35 errorFromDataForKey:v29];
                      if (v36)
                      {
                        v37 = objc_autoreleasePoolPush();
                        v38 = self;
                        v39 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                        {
                          HMFGetLogIdentifier();
                          v41 = v40 = self;
                          *buf = 138543618;
                          v81 = v41;
                          v82 = 2112;
                          v83 = v36;
                          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Parsing error for Siri : %@", buf, 0x16u);

                          self = v40;
                          v29 = v60;
                        }

                        objc_autoreleasePoolPop(v37);
                        v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v34, "integerValue")}];
                        v43 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v65, "integerValue")}];
                        v44 = [v64 findCharacteristic:v42 forService:v43];
                        if (v44)
                        {
                          v45 = [(HMDAssistantCommand *)v38 actionResultForCharacteristic:v44 actionSet:v61 action:v63 objects:v62 error:v36];
                          if (v45)
                          {
                            [v59 addObject:v45];
                          }
                        }
                      }
                    }

                    v67 = [v32 countByEnumeratingWithState:&v68 objects:v84 count:16];
                  }

                  while (v67);
                }

                v30 = v58 + 1;
                v22 = v56;
              }

              while (v58 + 1 != v57);
              v57 = [v56 countByEnumeratingWithState:&v72 objects:v85 count:16];
            }

            while (v57);
            v21 = v56;
            v14 = v50;
            v11 = v51;
            v13 = v52;
            v15 = 0x277CCA000;
            v22 = v56;
          }

          else
          {
            v21 = v22;
          }

          v16 = v53;
        }

LABEL_41:
        ++v16;
      }

      while (v16 != v13);
      v13 = [v11 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v13);
  }

  v46 = [v59 copy];
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)entityFromActionSet:(id)a3
{
  v3 = MEMORY[0x277D47358];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 name];
  [v5 setName:v6];

  v7 = MEMORY[0x277CBEBC0];
  v8 = [v4 urlString];
  v9 = [v7 URLWithString:v8];
  [v5 setIdentifier:v9];

  [v5 setEntityType:*MEMORY[0x277D48168]];
  v10 = [v4 type];

  v11 = mapToSiriSceneType(v10);
  [v5 setSceneType:v11];

  return v5;
}

- (BOOL)populateMediaProfileWriteResult:(id)a3 withValue:(id)a4 serviceType:(id)a5 action:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = +[HMDHAPMetadata getSharedInstance];
  v12 = [v8 attribute];
  v13 = [v11 mapWriteCharacteristicFromAssistantName:v12];

  v14 = [v8 value];
  v15 = [v14 units];
  v16 = [v8 attribute];
  if (isMetricLocale_onceToken != -1)
  {
    dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_198641);
  }

  v17 = valueWithAssistantUnits(v15, v13, v16, v9, 0, isMetricLocale_isMetricLocale);

  [v10 setResultValue:v17];
  v18 = [v8 attribute];

  [v10 setResultAttribute:v18];
  return 1;
}

- (BOOL)populateResultWithEntity:(id)a3 action:(id)a4 entity:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 attribute];
  [v8 setResultAttribute:v9];

  [v8 setEntity:v7];
  return 1;
}

- (BOOL)populateResult:(id)a3 withObject:(id)a4 serviceType:(id)a5 action:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 includeCompleteInformation];
  v15 = [v13 attribute];
  [v10 setResultAttribute:v15];

  v16 = entityFromObject(v11, v14);
  [v10 setEntity:v16];

  v17 = [v13 attribute];
  if (v17 && (v18 = v17, [v11 objectForKeyedSubscript:@"objectType"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", *MEMORY[0x277D48170]), v19, v18, v20))
  {
    v21 = [(HMDAssistantCommand *)self serviceFromObject:v11];
    v22 = [(HMDAssistantCommand *)self populateResult:v10 withService:v21 serviceType:v12 characteristic:0 resultAttribute:0 action:v13];
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (BOOL)populateResult:(id)a3 withService:(id)a4 serviceType:(id)a5 characteristic:(id)a6 resultAttribute:(id)a7 action:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = +[HMDHAPMetadata getSharedInstance];
  if (v16)
  {
    [v13 setResultAttribute:v16];
  }

  else
  {
    if (v15)
    {
      v19 = [v15 characteristicType];
      v20 = [v18 mapToAssistantCharacteristicName:v19];
      [v13 setResultAttribute:v20];
    }

    else
    {
      v19 = [v17 attribute];
      [v13 setResultAttribute:v19];
    }
  }

  v21 = [v17 attribute];
  if (v21)
  {
    v22 = v21;
    v23 = [v13 outcome];
    v24 = isOutcomeSuccess(v23);

    if (v24)
    {
      v93 = self;
      if (v15)
      {
        v25 = [v15 characteristicType];
      }

      else
      {
        if (!v17)
        {
          goto LABEL_16;
        }

        v27 = [v17 actionType];
        if (!v27 || (v28 = v27, [v17 actionType], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", *MEMORY[0x277D47E78]), v29, v28, v30))
        {
          v31 = [v17 attribute];
          v32 = [v18 mapReadCharacteristicFromAssistantName:v31];
        }

        else
        {
LABEL_16:
          v31 = [v17 attribute];
          v32 = [v18 mapWriteCharacteristicFromAssistantName:v31];
        }

        v25 = v32;

        v33 = [v14 characteristics];
        v15 = [v33 hmf_firstObjectWithCharacteristicType:v25];

        if (!v15)
        {
          v34 = [v18 getCharacteristicTypeAlias:v25];
          v35 = [v14 characteristics];
          v15 = [v35 hmf_firstObjectWithCharacteristicType:v34];
        }
      }

      v36 = [v15 metadata];
      v37 = [v36 units];
      if (!v15)
      {
        LOBYTE(v26) = 1;
LABEL_46:

        goto LABEL_47;
      }

      v91 = v37;
      v97 = v25;
      v38 = [v17 actionType];
      v39 = MEMORY[0x277D47E78];
      v92 = v36;
      if (!v38)
      {
        v42 = *MEMORY[0x277D47E78];
        goto LABEL_35;
      }

      v40 = v38;
      v41 = [v17 actionType];
      v42 = *v39;
      if ([v41 isEqualToString:v42])
      {
        goto LABEL_34;
      }

      v43 = [v17 actionType];
      if ([v43 isEqualToString:*MEMORY[0x277D47E98]])
      {

LABEL_34:
        goto LABEL_35;
      }

      v94 = v43;
      v44 = [v17 actionType];
      if ([v44 isEqualToString:*MEMORY[0x277D47EA8]])
      {

LABEL_33:
        goto LABEL_34;
      }

      v90 = v44;
      v45 = [v17 actionType];
      if ([v45 isEqualToString:*MEMORY[0x277D47EA0]])
      {

LABEL_32:
        goto LABEL_33;
      }

      v89 = v45;
      v46 = [v17 actionType];
      if ([v46 isEqualToString:*MEMORY[0x277D47E70]])
      {

        goto LABEL_32;
      }

      v87 = [v17 actionType];
      v88 = [v87 isEqualToString:*MEMORY[0x277D47EC0]];

      if (v88)
      {
LABEL_35:
        v47 = [v17 value];
        v48 = [v47 units];
        v95 = [v18 mapFromAssistantUnitName:v48];

        v49 = [v17 actionType];
        v50 = [v49 isEqualToString:v42];

        v51 = [v13 resultAttribute];
        v52 = [v15 value];
        if (isMetricLocale_onceToken != -1)
        {
          dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_198641);
        }

        v53 = valueWithAssistantUnits(v95, v97, v51, v52, v50, isMetricLocale_isMetricLocale);
        [v13 setResultValue:v53];

        v54 = [v17 value];
        if (!v54)
        {
          LOBYTE(v26) = 1;
          v25 = v97;
          goto LABEL_44;
        }

        v55 = v54;
        v56 = [v17 actionType];
        if (v56)
        {
          v57 = v56;
          v58 = [v17 actionType];
          v59 = [v58 isEqualToString:v42];

          v25 = v97;
          if (!v59)
          {
LABEL_40:
            LOBYTE(v26) = 1;
LABEL_44:

LABEL_45:
            v37 = v91;
            v36 = v92;
            goto LABEL_46;
          }
        }

        else
        {

          v25 = v97;
        }

        v60 = [v17 value];
        v61 = [v13 resultValue];
        LOBYTE(v26) = [(HMDAssistantCommand *)v93 isAttributeValue:v60 equalTo:v61];

        goto LABEL_44;
      }

      v63 = [v17 actionType];
      if ([v63 isEqualToString:*MEMORY[0x277D47EB8]])
      {

        v25 = v97;
        goto LABEL_52;
      }

      v64 = [v17 actionType];
      v65 = [v64 isEqualToString:*MEMORY[0x277D47EB0]];

      v25 = v97;
      if (v65)
      {
LABEL_52:
        if (v18)
        {
          v66 = [v17 value];
          v67 = [v66 units];
          v95 = [v18 mapFromAssistantUnitName:v67];

          v68 = [v13 resultAttribute];
          v69 = [v15 value];
          if (isMetricLocale_onceToken != -1)
          {
            dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_198641);
          }

          v70 = valueWithAssistantUnits(v95, v25, v68, v69, 0, isMetricLocale_isMetricLocale);
          [v13 setResultValue:v70];

          [v13 setOutcome:*MEMORY[0x277D47E50]];
          goto LABEL_40;
        }

LABEL_64:
        LOBYTE(v26) = 0;
        goto LABEL_45;
      }

      v71 = [v17 actionType];
      v72 = *MEMORY[0x277D47E88];
      if (([v71 isEqualToString:*MEMORY[0x277D47E88]] & 1) == 0)
      {
        v73 = [v17 actionType];
        if (![v73 isEqualToString:*MEMORY[0x277D47E80]])
        {
          v79 = [v17 actionType];
          v96 = [v79 isEqualToString:*MEMORY[0x277D47E90]];

          v25 = v97;
          if ((v96 & 1) == 0)
          {
            LOBYTE(v26) = 1;
            goto LABEL_45;
          }

LABEL_60:
          if (!v18)
          {
            goto LABEL_64;
          }

          v74 = [v17 actionType];
          v75 = [v74 isEqualToString:v72];

          if (v75)
          {
            v26 = [v92 minimumValue];

            if (v26)
            {
              v76 = [v92 minimumValue];
LABEL_68:
              v95 = v76;
              LOBYTE(v26) = 1;
LABEL_78:
              v82 = [v13 resultAttribute];
              if (isMetricLocale_onceToken != -1)
              {
                dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_198641);
              }

              v83 = valueWithAssistantUnits(v91, v25, v82, v95, 1u, isMetricLocale_isMetricLocale);
              [v13 setResultValue:v83];

              v84 = [v17 value];

              if (v84)
              {
                v85 = [v17 value];
                v86 = [v13 resultValue];
                LOBYTE(v26) = [(HMDAssistantCommand *)v93 isAttributeValue:v85 equalTo:v86];
              }

              [v13 setOutcome:*MEMORY[0x277D47E50]];
              goto LABEL_44;
            }

            goto LABEL_71;
          }

          v77 = [v17 actionType];
          v78 = [v77 isEqualToString:*MEMORY[0x277D47E80]];

          if (v78)
          {
            v26 = [v92 maximumValue];

            if (v26)
            {
              v76 = [v92 maximumValue];
              goto LABEL_68;
            }

LABEL_71:
            v95 = 0;
            goto LABEL_78;
          }

          v80 = [v17 actionType];
          v81 = [v80 isEqualToString:*MEMORY[0x277D47E90]];

          if (v81)
          {
            v26 = [v92 stepValue];

            if (!v26)
            {
              v95 = 0;
              goto LABEL_77;
            }

            v95 = [v92 stepValue];
          }

          else
          {
            v95 = 0;
          }

          LOBYTE(v26) = 1;
LABEL_77:
          v25 = v97;
          goto LABEL_78;
        }
      }

      goto LABEL_60;
    }
  }

  LOBYTE(v26) = 1;
LABEL_47:

  return v26;
}

- (id)mediaProfileFromObject:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"objectReference"];
  v5 = [v3 hmf_stringForKey:@"objectType"];

  if ([v5 isEqualToString:*MEMORY[0x277D48170]])
  {
    v6 = v4;
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
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)serviceFromObject:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"objectReference"];
  v5 = [v3 hmf_stringForKey:@"objectType"];

  if ([v5 isEqualToString:*MEMORY[0x277D48170]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end