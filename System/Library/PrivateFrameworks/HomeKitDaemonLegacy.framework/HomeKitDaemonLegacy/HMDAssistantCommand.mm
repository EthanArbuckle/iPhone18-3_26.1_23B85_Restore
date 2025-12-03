@interface HMDAssistantCommand
+ (id)logCategory;
+ (void)initialize;
- (BOOL)isAttributeValue:(id)value equalTo:(id)to;
- (BOOL)populateColorResult:(id)result serviceType:(id)type service:(id)service action:(id)action responses:(id)responses forObjects:(id)objects;
- (BOOL)populateMediaProfileWriteResult:(id)result withValue:(id)value serviceType:(id)type action:(id)action;
- (BOOL)populateResult:(id)result fromResponse:(id)response responses:(id)responses forAction:(id)action serviceType:(id)type forObjects:(id)objects;
- (BOOL)populateResult:(id)result withObject:(id)object serviceType:(id)type action:(id)action;
- (BOOL)populateResult:(id)result withService:(id)service serviceType:(id)type characteristic:(id)characteristic resultAttribute:(id)attribute action:(id)action;
- (BOOL)populateResultWithEntity:(id)entity action:(id)action entity:(id)a5;
- (HMDHomeManager)homeManager;
- (id)_evaluateHomeOptionallyMatchingHomeName:(id)name;
- (id)_homeWithSearchFilter:(id)filter;
- (id)actionOutcomeFromError:(id)error;
- (id)actionResultForCharacteristic:(id)characteristic actionSet:(id)set action:(id)action objects:(id)objects error:(id)error;
- (id)actionResultForMediaProfile:(id)profile action:(id)action objects:(id)objects error:(id)error;
- (id)addCharacteristicsFromRelatedServicesFor:(id)for assistantObjects:(id)objects;
- (id)addStatusCharacteristicsIfNeeded:(id)needed;
- (id)adjustGetValue:(id)value type:(id)type units:(id)units attribute:(id)attribute;
- (id)adjustSetValue:(id)value type:(id)type units:(id)units attribute:(id)attribute;
- (id)compareCurrentValue:(id)value newValue:(id)newValue withMetadata:(id)metadata;
- (id)compareForBoundary:(id)boundary withMetadata:(id)metadata;
- (id)entityFromActionSet:(id)set;
- (id)failedActionResultsFromResponse:(id)response inActionSet:(id)set withAction:(id)action;
- (id)filterObjects:(id)objects forCharacteristicTypes:(id)types;
- (id)filterObjects:(id)objects forCharacteristics:(id)characteristics;
- (id)filteredObjectsFromObjects:(id)objects byAttribute:(id)attribute forActionType:(id)type;
- (id)filteredObjectsFromObjects:(id)objects byCharacteristicType:(id)type;
- (id)filteredObjectsFromObjects:(id)objects forGroup:(id)group;
- (id)filteredObjectsFromObjects:(id)objects forHomeName:(id)name roomName:(id)roomName zoneName:(id)zoneName;
- (id)getLocaleUnits:(id)units;
- (id)getValueOfType:(id)type action:(id)action;
- (id)handleReadWriteResponses:(id)responses error:(id)error forAction:(id)action inServiceType:(id)type results:(id)results forObjects:(id)objects;
- (id)mediaProfileFromObject:(id)object;
- (id)objectsWithIdentifierList:(id)list error:(id *)error;
- (id)objectsWithSearchFilter:(id)filter inHome:(id)home serviceTypeIsATV:(BOOL)v overrideServiceTypeIfNeeded:(id *)needed;
- (id)parseColorEncoding:(id)encoding;
- (id)readRequestsForCharacteristic:(id)characteristic;
- (id)serviceFromObject:(id)object;
- (id)updateValue:(id)value forAction:(id)action;
- (id)updateValueToBoundary:(id)boundary valueType:(id)type fudgeMinimum:(BOOL)minimum metadata:(id)metadata;
- (void)_handleCommandForHAPAction:(id)action serviceType:(id)type objects:(id)objects completionHandler:(id)handler;
- (void)_handleCommandForMediaAccessoryAction:(id)action objects:(id)objects serviceType:(id)type completionHandler:(id)handler;
- (void)_logEvent:(id)event;
- (void)addActivationCharacteristicsIfNeeded:(id)needed forCharacteristic:(id)characteristic;
- (void)addBridgedAccessoryCharacteristicsFor:(id)for toCollection:(id)collection assistantObjects:(id)objects;
- (void)addCharacteristicWithType:(id)type fromService:(id)service toCollection:(id)collection assistantObjects:(id)objects;
- (void)addIfNeededActivationCharacteristic:(id)characteristic fromService:(id)service toCollection:(id)collection;
- (void)addLinkedServiceCharacteristicsFor:(id)for toCollection:(id)collection assistantObjects:(id)objects;
- (void)executeActionSet:(id)set action:(id)action withCompletionHandler:(id)handler;
- (void)handleCommandWithCompletionHandler:(id)handler;
- (void)handleGetActionTypes:(id)types serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler;
- (void)handleGetColor:(id)color forObjects:(id)objects serviceType:(id)type completionHandler:(id)handler;
- (void)handleGetMetadataActionTypes:(id)types serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler;
- (void)handleGetNaturalLightingAction:(id)action forObjects:(id)objects serviceType:(id)type completionHandler:(id)handler;
- (void)handleMediaAccessorySetActionType:(id)type forObjects:(id)objects withServiceType:(id)serviceType completionHandler:(id)handler;
- (void)handleMediaReadWriteResponse:(id)response forAction:(id)action inServiceType:(id)type inHome:(id)home requestProperty:(id)property results:(id)results forObjects:(id)objects;
- (void)handleSetActionTypes:(id)types serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler;
- (void)handleSetColor:(id)color forObjects:(id)objects service:(id)service completionHandler:(id)handler;
- (void)handleSetNaturalLightingAction:(id)action serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler;
- (void)handleUpdateActionTypes:(id)types serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler;
- (void)performWithGather:(id)gather queue:(id)queue msgDispatcher:(id)dispatcher completion:(id)completion;
- (void)reportOutcome:(id)outcome results:(id)results handler:(id)handler;
- (void)reportResults:(id)results handler:(id)handler;
- (void)reportUnlockRequired:(id)required;
- (void)returnResults:(id)results serviceType:(id)type forAction:(id)action completionHandler:(id)handler;
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

  array = [MEMORY[0x277CBEB18] array];
  v3 = [HMDAssistantColorCharacteristic alloc];
  v4 = *MEMORY[0x277CCF6B8];
  v5 = [(HMDAssistantColorCharacteristic *)v3 initWithReadCharacteristicType:*MEMORY[0x277CCF8D8] writeCharacteristicType:*MEMORY[0x277CCF8D8] format:*MEMORY[0x277CCF6B8] mandatory:1];
  [array addObject:v5];
  v6 = [HMDAssistantColorCharacteristic alloc];
  v7 = [(HMDAssistantColorCharacteristic *)v6 initWithReadCharacteristicType:*MEMORY[0x277CCFA30] writeCharacteristicType:*MEMORY[0x277CCFA30] format:v4 mandatory:1];

  [array addObject:v7];
  v8 = [HMDAssistantColorCharacteristic alloc];
  v9 = [(HMDAssistantColorCharacteristic *)v8 initWithReadCharacteristicType:*MEMORY[0x277CCF788] writeCharacteristicType:*MEMORY[0x277CCF788] format:*MEMORY[0x277CCF6C0] mandatory:1];

  [array addObject:v9];
  v14 = @"HSB";
  v10 = [array copy];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = supportedColorSpaces;
  supportedColorSpaces = v11;

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_12905 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_12905, &__block_literal_global_12906);
  }

  v3 = logCategory__hmf_once_v3_12907;

  return v3;
}

uint64_t __34__HMDAssistantCommand_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v3_12907 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)timeoutAndReportResults
{
  assistantCommandHelper = [(HMDAssistantCommand *)self assistantCommandHelper];
  [assistantCommandHelper timeoutAndReportResults];
}

- (void)performWithGather:(id)gather queue:(id)queue msgDispatcher:(id)dispatcher completion:(id)completion
{
  v73 = *MEMORY[0x277D85DE8];
  gatherCopy = gather;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  completionCopy = completion;
  v14 = objc_alloc(MEMORY[0x277D0F770]);
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x259C01AE0](self, a2);
  3731 = [v15 stringWithFormat:@"%@, %s:%ld", v16, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 3731];
  v53 = [v14 initWithName:3731];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v19 = v18;
  [(HMDAssistantCommand *)self setGather:gatherCopy];
  [(HMDAssistantCommand *)self setQueue:queueCopy];
  [(HMDAssistantCommand *)self setCompletionHandlerCalled:0];
  actions = [(HMDAssistantCommand *)self actions];
  firstObject = [actions firstObject];

  [firstObject aceId];
  [firstObject actionType];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HMDAssistantCommand_performWithGather_queue_msgDispatcher_completion___block_invoke;
  aBlock[3] = &unk_279723178;
  objc_copyWeak(v59, &location);
  v59[1] = v19;
  v52 = completionCopy;
  v58 = v52;
  v55 = _Block_copy(aBlock);
  homeCount = [gatherCopy homeCount];
  if (!homeCount)
  {
    v43 = objc_autoreleasePoolPush();
    selfCopy = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v46;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@There are no homes, reporting the result right away", buf, 0xCu);
    }

    goto LABEL_10;
  }

  [(HMDAssistantCommand *)self setNumberOfHomes:homeCount];
  gather = [(HMDAssistantCommand *)self gather];
  primaryHomeName = [gather primaryHomeName];
  [(HMDAssistantCommand *)self setPrimaryHomeName:primaryHomeName];

  gather2 = [(HMDAssistantCommand *)self gather];
  primaryHomeAssistantIdentifier = [gather2 primaryHomeAssistantIdentifier];
  [(HMDAssistantCommand *)self setPrimaryHomeAssistantIdentifier:primaryHomeAssistantIdentifier];

  gather3 = [(HMDAssistantCommand *)self gather];
  currentHomeName = [gather3 currentHomeName];
  [(HMDAssistantCommand *)self setCurrentHomeName:currentHomeName];

  gather4 = [(HMDAssistantCommand *)self gather];
  currentHomeAssistantIdentifier = [gather4 currentHomeAssistantIdentifier];
  [(HMDAssistantCommand *)self setCurrentHomeAssistantIdentifier:currentHomeAssistantIdentifier];

  v30 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v50 = queueCopy;
    v51 = gatherCopy;
    v33 = HMFGetLogIdentifier();
    numberOfHomes = [(HMDAssistantCommand *)selfCopy2 numberOfHomes];
    primaryHomeName2 = [(HMDAssistantCommand *)selfCopy2 primaryHomeName];
    primaryHomeAssistantIdentifier2 = [(HMDAssistantCommand *)selfCopy2 primaryHomeAssistantIdentifier];
    currentHomeName2 = [(HMDAssistantCommand *)selfCopy2 currentHomeName];
    currentHomeAssistantIdentifier2 = [(HMDAssistantCommand *)selfCopy2 currentHomeAssistantIdentifier];
    *buf = 138544642;
    v62 = v33;
    v63 = 2048;
    v64 = numberOfHomes;
    v65 = 2112;
    v66 = primaryHomeName2;
    v67 = 2112;
    v68 = primaryHomeAssistantIdentifier2;
    v69 = 2112;
    v70 = currentHomeName2;
    v71 = 2112;
    v72 = currentHomeAssistantIdentifier2;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Number of homes: %tu, Primary home: %@, Primary home ID: %@, Current home: %@, Current home ID: %@", buf, 0x3Eu);

    queueCopy = v50;
    gatherCopy = v51;
  }

  objc_autoreleasePoolPop(v30);
  gather5 = [(HMDAssistantCommand *)selfCopy2 gather];
  homeKitObjects = [gather5 homeKitObjects];
  [(HMDAssistantCommand *)selfCopy2 setHomeKitObjects:homeKitObjects];

  homeKitObjects2 = [(HMDAssistantCommand *)selfCopy2 homeKitObjects];
  LODWORD(homeKitObjects) = [homeKitObjects2 count] == 0;

  if (homeKitObjects)
  {
    v43 = objc_autoreleasePoolPush();
    v47 = selfCopy2;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v48;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@There are no homekit objects, calling completion", buf, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v43);
    [(HMDAssistantCommand *)self reportResults:0 handler:v55];
    goto LABEL_11;
  }

  v42 = [[HMDAssistantCommandHelper alloc] initWithQueue:queueCopy msgDispatcher:dispatcherCopy];
  [(HMDAssistantCommand *)selfCopy2 setAssistantCommandHelper:v42];

  [(HMDAssistantCommand *)selfCopy2 handleCommandWithCompletionHandler:v55];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Siri command took %.4f seconds", buf, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Completion handler already called, not calling again", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      [v9 setCompletionHandlerCalled:1];
      v16 = [v9 queue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__HMDAssistantCommand_performWithGather_queue_msgDispatcher_completion___block_invoke_134;
      v18[3] = &unk_279735738;
      v20 = *(a1 + 32);
      v19 = v3;
      dispatch_async(v16, v18);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleGetColor:(id)color forObjects:(id)objects serviceType:(id)type completionHandler:(id)handler
{
  v122 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  objectsCopy = objects;
  typeCopy = type;
  handlerCopy = handler;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x259C01AE0](self, a2);
  3631 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 3631];
  v63 = [v12 initWithName:3631];

  v56 = objectsCopy;
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

              readCharacteristicType = [*(*(&v102 + 1) + 8 * v22) readCharacteristicType];
              v17 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:v23 byCharacteristicType:readCharacteristicType];

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

  array = [MEMORY[0x277CBEB18] array];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  allKeys = [supportedColorSpaces allKeys];
  v59 = [allKeys countByEnumeratingWithState:&v98 objects:v119 count:16];
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
          objc_enumerationMutation(allKeys);
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

              readCharacteristicType2 = [*(*(&v94 + 1) + 8 * j) readCharacteristicType];
              v117 = readCharacteristicType2;
              v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
              v33 = [(HMDAssistantCommand *)self filterObjects:v17 forCharacteristicTypes:v32];

              [array addObjectsFromArray:v33];
            }

            v28 = [v27 countByEnumeratingWithState:&v94 objects:v118 count:16];
          }

          while (v28);
        }

        v25 = obja + 1;
      }

      while (obja + 1 != v59);
      v59 = [allKeys countByEnumeratingWithState:&v98 objects:v119 count:16];
    }

    while (v59);
  }

  if ([array count])
  {
    v34 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v113 = 0x3032000000;
    v114 = __Block_byref_object_copy__13089;
    v115 = __Block_byref_object_dispose__13090;
    array2 = [MEMORY[0x277CBEB18] array];
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v60 = array;
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
          service = [v38 service];
          accessory = [service accessory];
          home = [accessory home];

          array3 = [weakToStrongObjectsMapTable objectForKey:home];
          if (!array3)
          {
            array3 = [MEMORY[0x277CBEB18] array];
            [weakToStrongObjectsMapTable setObject:array3 forKey:home];
          }

          v43 = [HMDCharacteristicRequest requestWithCharacteristic:v38];
          [array3 addObject:v43];
        }

        v36 = [v60 countByEnumeratingWithState:&v90 objects:v111 count:16];
      }

      while (v36);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v44 = weakToStrongObjectsMapTable;
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
          assistantCommandHelper = [(HMDAssistantCommand *)self assistantCommandHelper];
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __79__HMDAssistantCommand_handleGetColor_forObjects_serviceType_completionHandler___block_invoke;
          v76[3] = &unk_2797230D8;
          objc_copyWeak(&v84, &location);
          v77 = v34;
          v82 = handlerCopy;
          v78 = colorCopy;
          v79 = typeCopy;
          p_buf = &buf;
          v80 = v17;
          v81 = v63;
          [assistantCommandHelper addReadRequests:v48 home:v47 completion:v76];

          objc_destroyWeak(&v84);
          objc_destroyWeak(&location);
        }

        v45 = [v44 countByEnumeratingWithState:&v86 objects:v110 count:16];
      }

      while (v45);
    }

    queue = [(HMDAssistantCommand *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HMDAssistantCommand_handleGetColor_forObjects_serviceType_completionHandler___block_invoke_128;
    block[3] = &unk_2797332C0;
    v72 = v63;
    selfCopy = self;
    v75 = &buf;
    v74 = handlerCopy;
    dispatch_group_notify(v34, queue, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v51 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v54;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@No characteristics found after filtering objects", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v51);
    [(HMDAssistantCommand *)selfCopy2 returnResults:0 serviceType:typeCopy forAction:colorCopy completionHandler:handlerCopy];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received error %@ for read request with response tuples: %@", &v18, 0x20u);
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

uint64_t __79__HMDAssistantCommand_handleGetColor_forObjects_serviceType_completionHandler___block_invoke_128(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for set-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleSetColor:(id)color forObjects:(id)objects service:(id)service completionHandler:(id)handler
{
  v110 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  objectsCopy = objects;
  serviceCopy = service;
  handlerCopy = handler;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  val = self;
  v13 = MEMORY[0x259C01AE0](self, a2);
  3509 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 3509];
  v55 = [v11 initWithName:3509];

  v63 = [(HMDAssistantCommand *)self parseColorEncoding:colorCopy];
  if ([v63 count])
  {
    allKeys = [v63 allKeys];
    v15 = [(HMDAssistantCommand *)self filterObjects:objectsCopy forCharacteristics:allKeys];
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v100 = 0;
    v101 = &v100;
    v102 = 0x3032000000;
    v103 = __Block_byref_object_copy__13089;
    v104 = __Block_byref_object_dispose__13090;
    array = [MEMORY[0x277CBEB18] array];
    includeCompleteInformation = [colorCopy includeCompleteInformation];
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
          allKeys2 = [v16 allKeys];
          v18 = [allKeys2 countByEnumeratingWithState:&v92 objects:v108 count:16];
          if (v18)
          {
            v19 = *v93;
            v61 = allKeys2;
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
                metadata = [v22 metadata];
                if (([v22 properties] & 4) != 0)
                {
                  v28 = [(HMDAssistantCommand *)val updateValueToBoundary:v23 valueType:v58 fudgeMinimum:0 metadata:metadata];

                  [weakToStrongObjectsMapTable setObject:v28 forKey:v22];
                  v23 = v28;
                }

                else
                {
                  v25 = actionResultForAction(colorCopy);
                  service = [v22 service];
                  [v25 setOutcome:v57];
                  v27 = entityForService(service, serviceCopy, objectsCopy, includeCompleteInformation);
                  [v25 setEntity:v27];

                  [(HMDAssistantCommand *)val populateResult:v25 withService:service serviceType:serviceCopy characteristic:v22 resultAttribute:0 action:colorCopy];
                  [v101[5] addObject:v25];
                }

                [(HMDAssistantCommand *)val addActivationCharacteristicsIfNeeded:weakToStrongObjectsMapTable forCharacteristic:v22];
              }

              allKeys2 = v61;
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
    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v67 = weakToStrongObjectsMapTable;
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
          service2 = [v33 service];
          accessory = [service2 accessory];
          home = [accessory home];

          v37 = [v67 objectForKey:v33];
          array2 = [weakToStrongObjectsMapTable2 objectForKey:home];
          if (!array2)
          {
            array2 = [MEMORY[0x277CBEB18] array];
            [weakToStrongObjectsMapTable2 setObject:array2 forKey:home];
          }

          authorizationData = [v33 authorizationData];
          v40 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v33 value:v37 authorizationData:authorizationData type:0];

          [array2 addObject:v40];
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
    v41 = weakToStrongObjectsMapTable2;
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
          assistantCommandHelper = [(HMDAssistantCommand *)val assistantCommandHelper];
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __75__HMDAssistantCommand_handleSetColor_forObjects_service_completionHandler___block_invoke;
          v74[3] = &unk_2797230D8;
          objc_copyWeak(&v82, &location);
          v75 = v62;
          v80 = handlerCopy;
          v76 = colorCopy;
          v77 = serviceCopy;
          v81 = &v100;
          v78 = objectsCopy;
          v79 = v55;
          [assistantCommandHelper addWriteRequests:v46 home:v45 completion:v74];

          objc_destroyWeak(&v82);
        }

        v42 = [v41 countByEnumeratingWithState:&v83 objects:v106 count:16];
      }

      while (v42);
    }

    queue = [(HMDAssistantCommand *)val queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDAssistantCommand_handleSetColor_forObjects_service_completionHandler___block_invoke_127;
    block[3] = &unk_2797332C0;
    v70 = v55;
    v71 = val;
    v73 = &v100;
    v72 = handlerCopy;
    dispatch_group_notify(v62, queue, block);

    objc_destroyWeak(&location);
    _Block_object_dispose(&v100, 8);
  }

  else
  {
    [(HMDAssistantCommand *)self reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response %@ for write request with %@", &v18, 0x20u);
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

uint64_t __75__HMDAssistantCommand_handleSetColor_forObjects_service_completionHandler___block_invoke_127(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for set-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)readRequestsForCharacteristic:(id)characteristic
{
  v28 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  service = [characteristicCopy service];
  v6 = [HMDCharacteristicRequest requestWithCharacteristic:characteristicCopy];
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
  if ([type isEqual:@"00000064-0000-1000-8000-0026BB765291"])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    characteristics = [service characteristics];
    v9 = [characteristics copy];

    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v20 = v7;
      v21 = service;
      v22 = type;
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
          type2 = [v14 type];
          v16 = [type2 isEqual:@"00000065-0000-1000-8000-0026BB765291"];

          if (v16)
          {
            v17 = [HMDCharacteristicRequest requestWithCharacteristic:v14];

            v7 = v20;
            [v20 addObject:v17];
            v6 = v17;
            service = v21;
            type = v22;
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

      service = v21;
      type = v22;
      v7 = v20;
    }

LABEL_12:
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)addStatusCharacteristicsIfNeeded:(id)needed
{
  v53 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v36 = [neededCopy mutableCopy];
  v30 = +[HMDHAPMetadata getSharedInstance];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = neededCopy;
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
        type = [v5 type];
        service = [v5 service];
        type2 = [service type];
        v9 = [v30 getStatusCharacteristicTypes:type forServiceType:type2];

        v37 = v9;
        if ([v9 count])
        {
          v33 = type;
          v34 = i;
          service2 = [v5 service];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v32 = service2;
          characteristics = [service2 characteristics];
          v12 = [characteristics copy];

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
                      type3 = [v17 type];
                      LODWORD(v23) = [type3 isEqual:v23];

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

          type = v33;
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

- (void)addLinkedServiceCharacteristicsFor:(id)for toCollection:(id)collection assistantObjects:(id)objects
{
  v39 = *MEMORY[0x277D85DE8];
  forCopy = for;
  collectionCopy = collection;
  objectsCopy = objects;
  service = [forCopy service];
  v9 = +[HMDHAPMetadata getSharedInstance];
  v10 = [v9 mapReadCharacteristicFromAssistantName:*MEMORY[0x277D47FE0]];
  v11 = [v9 mapFromAssistantServiceName:*MEMORY[0x277D482E8]];
  v12 = [v9 mapFromAssistantServiceName:*MEMORY[0x277D48378]];
  type = [forCopy type];
  if ([type isEqual:v10])
  {
    type2 = [service type];
    v15 = [type2 isEqual:v11];

    if (v15)
    {
      v27 = v11;
      v28 = v9;
      v30 = forCopy;
      accessory = [forCopy accessory];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = service;
      linkedServices = [service linkedServices];
      v18 = [linkedServices copy];

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

            v23 = [accessory findService:*(*(&v34 + 1) + 8 * v22)];
            type3 = [v23 type];
            v25 = [type3 isEqual:v12];

            if (v25)
            {
              [(HMDAssistantCommand *)self addCharacteristicWithType:v10 fromService:v23 toCollection:collectionCopy assistantObjects:objectsCopy];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v20);
      }

      service = v29;
      forCopy = v30;
      v11 = v27;
      v9 = v28;
    }
  }

  else
  {
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)addBridgedAccessoryCharacteristicsFor:(id)for toCollection:(id)collection assistantObjects:(id)objects
{
  v54 = *MEMORY[0x277D85DE8];
  forCopy = for;
  collectionCopy = collection;
  objectsCopy = objects;
  service = [forCopy service];
  v10 = +[HMDHAPMetadata getSharedInstance];
  v11 = [v10 mapReadCharacteristicFromAssistantName:*MEMORY[0x277D47FE0]];
  v12 = [v10 mapFromAssistantServiceName:*MEMORY[0x277D48378]];
  v13 = [v10 mapFromAssistantServiceName:*MEMORY[0x277D482E8]];
  type = [forCopy type];
  if ([type isEqual:v11])
  {
    type2 = [service type];
    v16 = [type2 isEqual:v13];

    if (v16)
    {
      v32 = v13;
      v33 = v10;
      v34 = service;
      v35 = forCopy;
      [forCopy accessory];
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
            home = [v38 home];
            v20 = [home accessoryWithUUID:v18];

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
            services = [v22 services];
            v24 = [services countByEnumeratingWithState:&v44 objects:v52 count:16];
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
                    objc_enumerationMutation(services);
                  }

                  v28 = *(*(&v44 + 1) + 8 * i);
                  type3 = [v28 type];
                  v30 = [type3 isEqual:v12];

                  if (v30)
                  {
                    [(HMDAssistantCommand *)self addCharacteristicWithType:v11 fromService:v28 toCollection:collectionCopy assistantObjects:objectsCopy];
                  }
                }

                v25 = [services countByEnumeratingWithState:&v44 objects:v52 count:16];
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

      service = v34;
      forCopy = v35;
      v13 = v32;
      v10 = v33;
    }
  }

  else
  {
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)addCharacteristicsFromRelatedServicesFor:(id)for assistantObjects:(id)objects
{
  v23 = *MEMORY[0x277D85DE8];
  forCopy = for;
  objectsCopy = objects;
  v8 = [forCopy mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = forCopy;
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
        [(HMDAssistantCommand *)self addBridgedAccessoryCharacteristicsFor:v14 toCollection:v8 assistantObjects:objectsCopy, v18];
        [(HMDAssistantCommand *)self addLinkedServiceCharacteristicsFor:v14 toCollection:v8 assistantObjects:objectsCopy];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)addCharacteristicWithType:(id)type fromService:(id)service toCollection:(id)collection assistantObjects:(id)objects
{
  serviceCopy = service;
  collectionCopy = collection;
  objectsCopy = objects;
  v11 = [serviceCopy findCharacteristicWithType:type];
  if (v11)
  {
    if (([collectionCopy containsObject:v11] & 1) == 0)
    {
      [collectionCopy addObject:v11];
      if (objectsCopy)
      {
        assistantObject = [serviceCopy assistantObject];
        if (assistantObject && ([objectsCopy containsObject:assistantObject] & 1) == 0)
        {
          [objectsCopy addObject:assistantObject];
        }
      }
    }
  }
}

- (void)addActivationCharacteristicsIfNeeded:(id)needed forCharacteristic:(id)characteristic
{
  neededCopy = needed;
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  if ((isActivationCharacteristicType(type) & 1) == 0)
  {
    service = [characteristicCopy service];
    type2 = [service type];
    if ([type2 isEqual:*MEMORY[0x277CD0EA0]])
    {
      v10 = type;
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
        [(HMDAssistantCommand *)self addIfNeededActivationCharacteristic:*v12 fromService:service toCollection:neededCopy];
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      if (![type2 isEqual:*MEMORY[0x277CD0E40]])
      {
        if (([type2 isEqual:*MEMORY[0x277CD0F40]] & 1) == 0 && (objc_msgSend(type2, "isEqual:", *MEMORY[0x277CD0DD8]) & 1) == 0 && !objc_msgSend(type2, "isEqual:", *MEMORY[0x277CD0E60]))
        {
          goto LABEL_18;
        }

        v13 = type;
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

      v10 = type;
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

- (void)addIfNeededActivationCharacteristic:(id)characteristic fromService:(id)service toCollection:(id)collection
{
  v25 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  collectionCopy = collection;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  characteristics = [service characteristics];
  v10 = [characteristics copy];

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
        type = [v15 type];
        v17 = [type isEqual:characteristicCopy];

        if (v17)
        {
          v18 = [collectionCopy objectForKey:v15];

          if (!v18)
          {
            [collectionCopy setObject:MEMORY[0x277CBEC38] forKey:v15];
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

- (void)handleMediaReadWriteResponse:(id)response forAction:(id)action inServiceType:(id)type inHome:(id)home requestProperty:(id)property results:(id)results forObjects:(id)objects
{
  v66 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  actionCopy = action;
  typeCopy = type;
  homeCopy = home;
  propertyCopy = property;
  resultsCopy = results;
  objectsCopy = objects;
  if (!propertyCopy)
  {
    propertyCopy = @"HMDMediaProfileSetValueUnsupportedAttributeKey";
    v18 = @"HMDMediaProfileSetValueUnsupportedAttributeKey";
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = [responseCopy countByEnumeratingWithState:&v60 objects:v65 count:16];
  v19 = 0;
  if (v43)
  {
    v41 = *v61;
    v45 = *MEMORY[0x277D47E50];
    v46 = resultsCopy;
    v42 = responseCopy;
    do
    {
      v20 = 0;
      do
      {
        if (*v61 != v41)
        {
          objc_enumerationMutation(responseCopy);
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
                v28 = actionResultForAction(actionCopy);
                v29 = [v27 objectForKeyedSubscript:propertyCopy];
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

                    resultsCopy = v46;
                    v19 = [(HMDAssistantCommand *)self getValueOfType:0 action:actionCopy];
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

                [(HMDAssistantCommand *)self populateMediaProfileWriteResult:v28 withValue:v19 serviceType:typeCopy action:actionCopy];
                v37 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
                v38 = [homeCopy mediaProfileWithUUID:v37];

                v39 = entityForMediaProfile(v38, objectsCopy, [actionCopy includeCompleteInformation]);
                [v28 setEntity:v39];

                [resultsCopy addObject:v28];
                v22 = v50;
              }
            }

            v55 = [v22 countByEnumeratingWithState:&v56 objects:v64 count:16];
          }

          while (v55);
        }

        v20 = v44 + 1;
        responseCopy = v42;
      }

      while (v44 + 1 != v43);
      v43 = [v42 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v43);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (id)handleReadWriteResponses:(id)responses error:(id)error forAction:(id)action inServiceType:(id)type results:(id)results forObjects:(id)objects
{
  v119 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  errorCopy = error;
  actionCopy = action;
  typeCopy = type;
  resultsCopy = results;
  objectsCopy = objects;
  code = [errorCopy code];
  v20 = 82;
  if (unlockErrorCode)
  {
    v20 = 2003;
  }

  if (code == v20)
  {
    v21 = 0;
  }

  else
  {
    v63 = errorCopy;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v64 = responsesCopy;
    obj = responsesCopy;
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
          request = [v25 request];
          characteristic = [request characteristic];
          service = [characteristic service];

          array = [strongToStrongObjectsMapTable objectForKey:service];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [strongToStrongObjectsMapTable setObject:array forKey:service];
          }

          [array addObject:v25];
        }

        v23 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
      }

      while (v23);
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v76 = strongToStrongObjectsMapTable;
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

          v85 = actionResultForAction(actionCopy);
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
                error = [v39 error];

                if (error)
                {
                  v41 = objc_autoreleasePoolPush();
                  selfCopy = self;
                  v43 = HMFGetOSLogHandle();
                  v79 = error;
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v72 = v71 = v41;
                    code2 = [error code];
                    accessory = [v77 accessory];
                    [accessory name];
                    v44 = v69 = selfCopy;
                    accessory2 = [v77 accessory];
                    uuid = [accessory2 uuid];
                    uUIDString = [uuid UUIDString];
                    instanceID = [v77 instanceID];
                    request2 = [v39 request];
                    characteristic2 = [request2 characteristic];
                    instanceID2 = [characteristic2 instanceID];
                    *buf = 138544642;
                    v105 = v72;
                    v106 = 2048;
                    v107 = code2;
                    v108 = 2112;
                    v109 = v44;
                    v110 = 2112;
                    v111 = uUIDString;
                    v112 = 2112;
                    v113 = instanceID;
                    v114 = 2112;
                    v115 = instanceID2;
                    _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Error %tu for %@/%@/%@/%@", buf, 0x3Eu);

                    selfCopy = v69;
                    error = v79;

                    v41 = v71;
                  }

                  objc_autoreleasePoolPop(v41);
                  code3 = [error code];
                  v50 = 82;
                  if (unlockErrorCode)
                  {
                    v50 = 2003;
                  }

                  v33 = obja;
                  if (code3 != v50)
                  {
                    v51 = [(HMDAssistantCommand *)selfCopy actionOutcomeFromError:error];
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

          attribute = [actionCopy attribute];
          v53 = [attribute isEqual:v73];

          if (v53)
          {
            [(HMDAssistantCommand *)self populateColorResult:v85 serviceType:typeCopy service:v77 action:actionCopy responses:v33 forObjects:objectsCopy];
            [resultsCopy addObject:v85];
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
                v60 = actionResultForAction(actionCopy);
                [(HMDAssistantCommand *)self populateResult:v60 fromResponse:v59 responses:v54 forAction:actionCopy serviceType:typeCopy forObjects:objectsCopy];
                [resultsCopy addObject:v60];
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

    errorCopy = v63;
    responsesCopy = v64;
    v21 = v79;
  }

  v61 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)populateColorResult:(id)result serviceType:(id)type service:(id)service action:(id)action responses:(id)responses forObjects:(id)objects
{
  v86 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  typeCopy = type;
  serviceCopy = service;
  actionCopy = action;
  responsesCopy = responses;
  objectsCopy = objects;
  string = [MEMORY[0x277CCAB68] string];
  attribute = [actionCopy attribute];
  v63 = resultCopy;
  [resultCopy setResultAttribute:attribute];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = [supportedColorSpaces allKeys];
  v62 = string;
  v59 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v59)
  {
    v58 = *v80;
    v66 = *MEMORY[0x277D47E78];
    v64 = actionCopy;
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
              actionType = [actionCopy actionType];
              v23 = [actionType isEqualToString:v66];

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
              value = responsesCopy;
              characteristic2 = [value countByEnumeratingWithState:&v71 objects:v83 count:16];
              if (characteristic2)
              {
                v70 = i;
                v27 = *v72;
                while (2)
                {
                  for (j = 0; j != characteristic2; j = j + 1)
                  {
                    if (*v72 != v27)
                    {
                      objc_enumerationMutation(value);
                    }

                    v29 = *(*(&v71 + 1) + 8 * j);
                    request = [v29 request];
                    characteristic = [request characteristic];
                    characteristicType = [characteristic characteristicType];
                    v33 = [characteristicType isEqualToString:v24];

                    if (v33)
                    {
                      v34 = v29;
                      request2 = [v34 request];
                      characteristic2 = [request2 characteristic];

                      if (characteristic2)
                      {
                        outcome = [v63 outcome];
                        v37 = isOutcomeSuccess(outcome);

                        actionCopy = v64;
                        if (v37)
                        {
                          [value removeObject:v34];
                          v19 = v65;
                          if ([v62 length])
                          {
                            [v62 appendString:{@", "}];
                          }

                          else
                          {
                            [v62 appendFormat:@"%@%@", v61, @":"];
                          }

                          value = [characteristic2 value];
                          [v62 appendFormat:@"%@", value];
                          goto LABEL_32;
                        }
                      }

                      else
                      {
                        actionCopy = v64;
                      }

                      v19 = v65;
                      i = v70;
                      goto LABEL_34;
                    }
                  }

                  characteristic2 = [value countByEnumeratingWithState:&v71 objects:v83 count:16];
                  if (characteristic2)
                  {
                    continue;
                  }

                  break;
                }

                v34 = 0;
                actionCopy = v64;
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

        string = v62;
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

  if ([string length])
  {
    v38 = objc_alloc_init(MEMORY[0x277D47388]);
    [v38 setValue:string];
    [v63 setResultValue:v38];
    value2 = [actionCopy value];
    if (!value2)
    {
      v46 = 1;
      v45 = serviceCopy;
      v47 = typeCopy;
LABEL_51:

      goto LABEL_52;
    }

    v40 = value2;
    actionType2 = [actionCopy actionType];
    if (actionType2)
    {
      v42 = actionType2;
      actionType3 = [actionCopy actionType];
      v44 = [actionType3 isEqualToString:*MEMORY[0x277D47E78]];

      v45 = serviceCopy;
      if (!v44)
      {
        v46 = 1;
LABEL_50:
        v47 = typeCopy;
        goto LABEL_51;
      }
    }

    else
    {

      v45 = serviceCopy;
    }

    value3 = [actionCopy value];
    resultValue = [v63 resultValue];
    v46 = [(HMDAssistantCommand *)self isAttributeValue:value3 equalTo:resultValue];

    goto LABEL_50;
  }

  v46 = 1;
  v45 = serviceCopy;
  v47 = typeCopy;
LABEL_52:
  v50 = entityForService(v45, v47, objectsCopy, [actionCopy includeCompleteInformation]);
  [v63 setEntity:v50];

  v51 = *MEMORY[0x277D85DE8];
  return v46;
}

- (id)parseColorEncoding:(id)encoding
{
  v113 = *MEMORY[0x277D85DE8];
  encodingCopy = encoding;
  v4 = *MEMORY[0x277D47E78];
  v98 = encodingCopy;
  actionType = [encodingCopy actionType];
  v96 = v4;
  if ([v4 isEqualToString:actionType])
  {
  }

  else
  {
    v6 = *MEMORY[0x277D47EA8];
    actionType2 = [v98 actionType];
    LOBYTE(v6) = [v6 isEqualToString:actionType2];

    if ((v6 & 1) == 0)
    {
      v64 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v66 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = HMFGetLogIdentifier();
        actionType3 = [v98 actionType];
        *buf = 138543618;
        v105 = v67;
        v106 = 2112;
        v107 = actionType3;
        _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@Action type for COLOR attribute is not GET/SET - %@", buf, 0x16u);

        goto LABEL_68;
      }

LABEL_69:

      objc_autoreleasePoolPop(v64);
      v72 = 0;
      goto LABEL_76;
    }
  }

  value = [v98 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v64 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v66 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = HMFGetLogIdentifier();
      value2 = [v98 value];
      value3 = [v98 value];
      *buf = 138543874;
      v105 = v67;
      v106 = 2112;
      v107 = value2;
      v108 = 2112;
      v109 = objc_opt_class();
      v70 = v109;
      _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@Value %@ for COLOR attribute is not string but %@", buf, 0x20u);

LABEL_68:
      goto LABEL_69;
    }

    goto LABEL_69;
  }

  value4 = [v98 value];
  v10Value = [value4 value];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v80 = v10Value;
  obj = [v10Value componentsSeparatedByString:@""];;
  v12 = [obj countByEnumeratingWithState:&v100 objects:v112 count:16];
  if (!v12)
  {
    goto LABEL_74;
  }

  v13 = v12;
  v14 = &unk_27F5B4000;
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
    firstObject = [v17 firstObject];
    allKeys = [v14[471] allKeys];
    if (([allKeys containsObject:firstObject] & 1) == 0)
    {
      v50 = firstObject;
      v51 = v15;
      v52 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543874;
        v105 = v55;
        v106 = 2112;
        v107 = v50;
        v108 = 2112;
        v109 = allKeys;
        _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Unsupported color space: %@; only support %@. Ignoring...", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v52);
      v15 = v51;
      firstObject = v50;
      goto LABEL_60;
    }

    v19 = [v14[471] objectForKey:firstObject];
    v20 = [v17 objectAtIndex:1];
    v21 = [v20 componentsSeparatedByString:{@", "}];
    v22 = [v21 count];
    v95 = v21;
    v86 = v20;
    v87 = v15;
    if (v22 != [v19 count])
    {
      v56 = v19;
      v57 = firstObject;
      v58 = objc_autoreleasePoolPush();
      selfCopy4 = self;
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
        v14 = &unk_27F5B4000;
        v110 = 2048;
        v111 = v63;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Color space %@ requires %tu values - %tu provided. Ignoring...", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v58);
      v20 = v86;
      v15 = v87;
      firstObject = v57;
      v19 = v56;
      goto LABEL_59;
    }

    if (![v21 count])
    {
      goto LABEL_73;
    }

    v93 = firstObject;
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
      format = [v29 format];
      actionType4 = [v98 actionType];
      LODWORD(v27) = [v96 isEqualToString:actionType4];

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
        if ([format isEqualToString:v94])
        {
          v99 = 0.0;
          if ([v28 scanDouble:&v99])
          {
            v91 = v23;
            v33 = [MEMORY[0x277CCABB0] numberWithDouble:v99];
            goto LABEL_33;
          }

          v34 = objc_autoreleasePoolPush();
          selfCopy10 = self;
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

        else if ([format isEqualToString:v89])
        {
          v99 = 0.0;
          if ([v28 scanLongLong:&v99])
          {
            v91 = v23;
            v33 = [MEMORY[0x277CCABB0] numberWithLongLong:*&v99];
            goto LABEL_33;
          }

          v34 = objc_autoreleasePoolPush();
          selfCopy10 = self;
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

        else if ([format isEqualToString:v84])
        {
          LODWORD(v99) = 0;
          if ([v28 scanInt:&v99])
          {
            v91 = v23;
            v33 = [MEMORY[0x277CCABB0] numberWithBool:LODWORD(v99) != 0];
LABEL_33:
            v41 = v33;
            v42 = objc_autoreleasePoolPush();
            selfCopy7 = self;
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
                _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Color space %@:  %@=%@", buf, 0x2Au);

                v19 = v83;
              }

              objc_autoreleasePoolPop(v42);
              [dictionary setObject:v41 forKey:v32];

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
                _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Color space %@ characteristicType %@ value is nil", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v42);
              v47 = 0;
              v23 = 1;
              v25 = v95;
            }

            goto LABEL_49;
          }

          v34 = objc_autoreleasePoolPush();
          selfCopy10 = self;
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
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, v39, buf, v40);

            v25 = v95;
          }
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          selfCopy10 = self;
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
            v111 = format;
            v38 = v36;
            v39 = "%{public}@Color space %@ value for attribute %@ is not of a recognized format: %@. Ignoring...";
            goto LABEL_46;
          }
        }
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        selfCopy10 = self;
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
      v14 = &unk_27F5B4000;
      v20 = v86;
      v15 = v87;
      v49 = v23;
      firstObject = v93;
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

          v77 = dictionary;
          v72 = dictionary;
          goto LABEL_75;
        }

        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  v73 = objc_autoreleasePoolPush();
  selfCopy11 = self;
  v75 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
  {
    v76 = HMFGetLogIdentifier();
    *buf = 138543618;
    v105 = v76;
    v106 = 2112;
    v107 = v17;
    _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_ERROR, "%{public}@Color space encoding does not have two components: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v73);
  v72 = 0;
  v77 = dictionary;
LABEL_75:

LABEL_76:
  v78 = *MEMORY[0x277D85DE8];

  return v72;
}

- (void)handleCommandWithCompletionHandler:(id)handler
{
  v154 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  actions = [(HMDAssistantCommand *)self actions];
  firstObject = [actions firstObject];

  mach_absolute_time();
  [(HMDAssistantCommand *)self setStartTime:UpTicksToMilliseconds()];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    aceId = [firstObject aceId];
    serverValidity = [(HMDAssistantCommand *)selfCopy serverValidity];
    hm_shortDescription = [(HMDAssistantCommand *)selfCopy hm_shortDescription];
    *buf = 138544130;
    v147 = v10;
    v148 = 2114;
    v149 = aceId;
    v150 = 2114;
    v151 = serverValidity;
    v152 = 2112;
    v153 = hm_shortDescription;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Executing Siri command(%{public}@) serverValidity %{public}@:\n%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  actionType = [firstObject actionType];

  if (actionType)
  {
    homeManager = [(HMDAssistantCommand *)selfCopy homeManager];
    filter = [(HMDAssistantCommand *)selfCopy filter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = filter;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      v19 = homeManager;
      serviceType = [v18 serviceType];
      v21 = [serviceType isEqualToString:*MEMORY[0x277D48270]];

      attribute = [firstObject attribute];
      v23 = [attribute isEqualToString:*MEMORY[0x277D47F80]];

      if (v23)
      {
        actionType2 = [firstObject actionType];
        v25 = [actionType2 isEqualToString:*MEMORY[0x277D47EA8]];

        [v18 entityType];
        v27 = v26 = v18;
        v28 = [v27 isEqualToString:*MEMORY[0x277D48168]];

        sceneName = [v26 sceneName];

        sceneType = [v26 sceneType];
        v31 = handlerCopy;
        v32 = sceneName | sceneType;
        v18 = v26;

        v33 = v32 == 0;
        handlerCopy = v31;
        v34 = !v33;
        if (!v25 || !v28 || !v34)
        {
          v75 = objc_autoreleasePoolPush();
          v76 = selfCopy;
          v77 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v78 = v129 = v75;
            actionType3 = [firstObject actionType];
            sceneName2 = [v26 sceneName];
            [v26 sceneType];
            v82 = v81 = firstObject;
            *buf = 138544130;
            v147 = v78;
            v148 = 2112;
            v149 = actionType3;
            v150 = 2112;
            v151 = sceneName2;
            v152 = 2112;
            v153 = v82;
            _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@entityType is SCENE with ENABLED action attribute but either action(%@) is not SET action/empty sceneName(%@)/Type(%@)", buf, 0x2Au);

            firstObject = v81;
            handlerCopy = v31;

            v18 = v26;
            v75 = v129;
          }

          objc_autoreleasePoolPop(v75);
          [(HMDAssistantCommand *)v76 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
          homeManager = v19;
          goto LABEL_85;
        }
      }

      homeIdentifier = [v18 homeIdentifier];
      if (homeIdentifier || ([v18 homeName], (homeIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
      {

        homeManager = v19;
      }

      else
      {
        actionType4 = [firstObject actionType];
        v103 = [actionType4 isEqualToString:*MEMORY[0x277D47E78]];

        homeManager = v19;
        if ((v103 & 1) == 0)
        {
          v104 = handlerCopy;
          v105 = v18;
          v106 = objc_autoreleasePoolPush();
          v107 = selfCopy;
          v108 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
          {
            v109 = HMFGetLogIdentifier();
            *buf = 138543362;
            v147 = v109;
            _os_log_impl(&dword_2531F8000, v108, OS_LOG_TYPE_FAULT, "%{public}@Search filter must specify homeName or homeIdentifier for actions not of type GET", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v106);
          v18 = v105;
          handlerCopy = v104;
        }
      }

      v36 = [(HMDAssistantCommand *)selfCopy _homeWithSearchFilter:v18];
      if (v36)
      {
        filter3 = v36;
        v140 = 0;
        v38 = [(HMDAssistantCommand *)selfCopy objectsWithSearchFilter:v18 inHome:v36 serviceTypeIsATV:v21 overrideServiceTypeIfNeeded:&v140];
        v39 = v140;
LABEL_20:

        if ([v38 count])
        {
          v40 = handlerCopy;
          v133 = firstObject;
          home = [(HMDAssistantCommand *)selfCopy home];

          if (!home)
          {
            v124 = v39;
            firstObject2 = [v38 firstObject];
            v42 = [firstObject2 hmf_stringForKey:@"objectHomeIdentifier"];
            v141 = 0u;
            v142 = 0u;
            v143 = 0u;
            v144 = 0u;
            homes = [homeManager homes];
            v44 = [homes countByEnumeratingWithState:&v141 objects:buf count:16];
            if (v44)
            {
              v123 = v38;
              v128 = v18;
              v131 = homeManager;
              v126 = v40;
              v45 = *v142;
              while (2)
              {
                for (i = 0; i != v44; i = i + 1)
                {
                  if (*v142 != v45)
                  {
                    objc_enumerationMutation(homes);
                  }

                  v47 = *(*(&v141 + 1) + 8 * i);
                  urlString = [v47 urlString];
                  v49 = [v42 isEqualToString:urlString];

                  if (v49)
                  {
                    v44 = v47;
                    goto LABEL_70;
                  }
                }

                v44 = [homes countByEnumeratingWithState:&v141 objects:buf count:16];
                if (v44)
                {
                  continue;
                }

                break;
              }

LABEL_70:
              v40 = v126;
              v18 = v128;
              homeManager = v131;
              v38 = v123;
            }

            [(HMDAssistantCommand *)selfCopy setHome:v44];
            home2 = [(HMDAssistantCommand *)selfCopy home];

            if (!home2)
            {
              v111 = objc_autoreleasePoolPush();
              v112 = selfCopy;
              v113 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v114 = v130 = v111;
                *buf = 138543618;
                v147 = v114;
                v148 = 2112;
                v149 = firstObject2;
                _os_log_impl(&dword_2531F8000, v113, OS_LOG_TYPE_ERROR, "%{public}@Cannot evaluate home for Siri command with filtered result: %@", buf, 0x16u);

                v111 = v130;
              }

              objc_autoreleasePoolPop(v111);
            }

            v39 = v124;
          }

          v115 = objc_autoreleasePoolPush();
          v116 = selfCopy;
          v117 = HMFGetOSLogHandle();
          v118 = os_log_type_enabled(v117, OS_LOG_TYPE_INFO);
          if (v21)
          {
            if (v118)
            {
              v119 = HMFGetLogIdentifier();
              *buf = 138543362;
              v147 = v119;
              _os_log_impl(&dword_2531F8000, v117, OS_LOG_TYPE_INFO, "%{public}@Start handling command for Apple Media Accessory", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v115);
            serviceType2 = [v18 serviceType];
            firstObject = v133;
            [(HMDAssistantCommand *)v116 _handleCommandForMediaAccessoryAction:v133 objects:v38 serviceType:serviceType2 completionHandler:v40];

            handlerCopy = v40;
          }

          else
          {
            if (v118)
            {
              v121 = HMFGetLogIdentifier();
              *buf = 138543362;
              v147 = v121;
              _os_log_impl(&dword_2531F8000, v117, OS_LOG_TYPE_INFO, "%{public}@Start handling command for HAP Characteristic", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v115);
            firstObject = v133;
            handlerCopy = v40;
            [(HMDAssistantCommand *)v116 _handleCommandForHAPAction:v133 serviceType:v39 objects:v38 completionHandler:v40];
          }
        }

        else
        {
          v83 = v39;
          v84 = objc_autoreleasePoolPush();
          v85 = selfCopy;
          v86 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v88 = v87 = handlerCopy;
            *buf = 138543362;
            v147 = v88;
            _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_INFO, "%{public}@No matches found after filtering, bailing out", buf, 0xCu);

            handlerCopy = v87;
          }

          objc_autoreleasePoolPop(v84);
          [(HMDAssistantCommand *)v85 returnResults:0 serviceType:v83 forAction:firstObject completionHandler:handlerCopy];
        }

        goto LABEL_85;
      }

      v65 = objc_autoreleasePoolPush();
      v66 = selfCopy;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = HMFGetLogIdentifier();
        *buf = 138543362;
        v147 = v74;
        _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Could not figure out the home to apply the command to", buf, 0xCu);
      }
    }

    else
    {
      filter2 = [(HMDAssistantCommand *)selfCopy filter];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        filter3 = [(HMDAssistantCommand *)selfCopy filter];
        identifiers = [filter3 identifiers];
        v139 = 0;
        v57 = [(HMDAssistantCommand *)selfCopy objectsWithIdentifierList:identifiers error:&v139];
        v58 = v139;

        v132 = homeManager;
        if (!v58)
        {
          if (![v57 count])
          {
            v89 = objc_autoreleasePoolPush();
            v90 = selfCopy;
            v91 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v92 = handlerCopy;
              v94 = v93 = firstObject;
              *buf = 138543362;
              v147 = v94;
              _os_log_impl(&dword_2531F8000, v91, OS_LOG_TYPE_INFO, "%{public}@Identifier list filter results in no matches - re-generating sync data and requesting re-sync", buf, 0xCu);

              firstObject = v93;
              handlerCopy = v92;
            }

            objc_autoreleasePoolPop(v89);
            [homeManager assistantSyncDataChanged:@"HMDIdentifierListFilterNoMatches"];
          }

          v134 = firstObject;
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
            v127 = handlerCopy;
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
            handlerCopy = v127;
          }

          else
          {

            LODWORD(v21) = 0;
            v39 = 0;
          }

          homeManager = v132;
          firstObject = v134;
          v18 = 0;
          goto LABEL_20;
        }

        v59 = objc_autoreleasePoolPush();
        v60 = selfCopy;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v62 = handlerCopy;
          v64 = v63 = firstObject;
          *buf = 138543618;
          v147 = v64;
          v148 = 2114;
          v149 = v58;
          _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@Identifier list filter resolution failed with error %{public}@", buf, 0x16u);

          firstObject = v63;
          handlerCopy = v62;
        }

        objc_autoreleasePoolPop(v59);
        [(HMDAssistantCommand *)v60 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];

        v18 = 0;
LABEL_85:

        goto LABEL_86;
      }

      v65 = objc_autoreleasePoolPush();
      v66 = selfCopy;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v69 = v68 = handlerCopy;
        filter4 = [(HMDAssistantCommand *)v66 filter];
        v71 = objc_opt_class();
        *buf = 138543618;
        v147 = v69;
        v148 = 2112;
        v149 = v71;
        v72 = v71;
        _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Unsupported filter type - %@", buf, 0x16u);

        v18 = 0;
        handlerCopy = v68;
      }
    }

    objc_autoreleasePoolPop(v65);
    [(HMDAssistantCommand *)v66 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
    goto LABEL_85;
  }

  v50 = objc_autoreleasePoolPush();
  v51 = selfCopy;
  v52 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = HMFGetLogIdentifier();
    *buf = 138543362;
    v147 = v53;
    _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@There is no actionType, reporting malformed command", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v50);
  [(HMDAssistantCommand *)v51 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
LABEL_86:

  v122 = *MEMORY[0x277D85DE8];
}

- (void)_handleCommandForHAPAction:(id)action serviceType:(id)type objects:(id)objects completionHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  typeCopy = type;
  objectsCopy = objects;
  handlerCopy = handler;
  actionType = [actionCopy actionType];
  if ([actionType isEqualToString:*MEMORY[0x277D47E78]])
  {

LABEL_4:
    [(HMDAssistantCommand *)self handleGetActionTypes:actionCopy serviceType:typeCopy forObjects:objectsCopy completionHandler:handlerCopy];
    goto LABEL_10;
  }

  actionType2 = [actionCopy actionType];
  v16 = [actionType2 isEqualToString:*MEMORY[0x277D47E98]];

  if (v16)
  {
    goto LABEL_4;
  }

  actionType3 = [actionCopy actionType];
  if ([actionType3 isEqualToString:*MEMORY[0x277D47E88]])
  {
    goto LABEL_8;
  }

  actionType4 = [actionCopy actionType];
  if ([actionType4 isEqualToString:*MEMORY[0x277D47E80]])
  {

LABEL_8:
LABEL_9:
    [(HMDAssistantCommand *)self handleGetMetadataActionTypes:actionCopy serviceType:typeCopy forObjects:objectsCopy completionHandler:handlerCopy];
    goto LABEL_10;
  }

  actionType5 = [actionCopy actionType];
  v21 = [actionType5 isEqualToString:*MEMORY[0x277D47E90]];

  if (v21)
  {
    goto LABEL_9;
  }

  actionType6 = [actionCopy actionType];
  if ([actionType6 isEqualToString:*MEMORY[0x277D47EA8]])
  {
    goto LABEL_15;
  }

  actionType7 = [actionCopy actionType];
  if ([actionType7 isEqualToString:*MEMORY[0x277D47EB8]])
  {

LABEL_15:
LABEL_16:
    [(HMDAssistantCommand *)self handleSetActionTypes:actionCopy serviceType:typeCopy forObjects:objectsCopy completionHandler:handlerCopy];
    goto LABEL_10;
  }

  actionType8 = [actionCopy actionType];
  v25 = [actionType8 isEqualToString:*MEMORY[0x277D47EB0]];

  if (v25)
  {
    goto LABEL_16;
  }

  actionType9 = [actionCopy actionType];
  if ([actionType9 isEqualToString:*MEMORY[0x277D47EA0]])
  {
    goto LABEL_21;
  }

  actionType10 = [actionCopy actionType];
  if ([actionType10 isEqualToString:*MEMORY[0x277D47E70]])
  {

LABEL_21:
LABEL_22:
    [(HMDAssistantCommand *)self handleUpdateActionTypes:actionCopy serviceType:typeCopy forObjects:objectsCopy completionHandler:handlerCopy];
    goto LABEL_10;
  }

  actionType11 = [actionCopy actionType];
  v29 = [actionType11 isEqualToString:*MEMORY[0x277D47EC0]];

  if (v29)
  {
    goto LABEL_22;
  }

  v30 = objc_autoreleasePoolPush();
  selfCopy = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = HMFGetLogIdentifier();
    actionType12 = [actionCopy actionType];
    v35 = 138543874;
    v36 = v33;
    v37 = 2080;
    v38 = "[HMDAssistantCommand _handleCommandForHAPAction:serviceType:objects:completionHandler:]";
    v39 = 2112;
    v40 = actionType12;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@%s ### Siri sent an unsupported action type: %@", &v35, 0x20u);
  }

  objc_autoreleasePoolPop(v30);
  [(HMDAssistantCommand *)selfCopy reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleCommandForMediaAccessoryAction:(id)action objects:(id)objects serviceType:(id)type completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  objectsCopy = objects;
  typeCopy = type;
  handlerCopy = handler;
  actionType = [actionCopy actionType];
  v15 = [actionType isEqualToString:*MEMORY[0x277D47E78]];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  actionType2 = [actionCopy actionType];
  v20 = [actionType2 isEqualToString:*MEMORY[0x277D47EA8]];

  if (!v20)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v21 = HMFGetLogIdentifier();
      actionType3 = [actionCopy actionType];
      v24 = 138543874;
      v25 = v21;
      v26 = 2080;
      v27 = "[HMDAssistantCommand _handleCommandForMediaAccessoryAction:objects:serviceType:completionHandler:]";
      v28 = 2112;
      v29 = actionType3;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@%s ### Siri sent an unsupported action type: %@", &v24, 0x20u);
    }

LABEL_8:

    objc_autoreleasePoolPop(v16);
    [(HMDAssistantCommand *)selfCopy2 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
    goto LABEL_9;
  }

  [(HMDAssistantCommand *)self handleMediaAccessorySetActionType:actionCopy forObjects:objectsCopy withServiceType:typeCopy completionHandler:handlerCopy];
LABEL_9:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateActionTypes:(id)types serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler
{
  v153[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  typeCopy = type;
  objectsCopy = objects;
  handlerCopy = handler;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  val = self;
  v14 = MEMORY[0x259C01AE0](self, a2);
  2520 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 2520];
  v88 = [v12 initWithName:2520];

  attribute = [typesCopy attribute];

  if (attribute)
  {
    attribute2 = [typesCopy attribute];
    actionType = [typesCopy actionType];
    v98 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:objectsCopy byAttribute:attribute2 forActionType:actionType];

    objectsCopy = v98;
    if ([v98 count])
    {
      v87 = +[HMDHAPMetadata getSharedInstance];
      attribute3 = [typesCopy attribute];
      v86 = [v87 mapReadCharacteristicFromAssistantName:attribute3];

      if (!v86)
      {
        v25 = objc_autoreleasePoolPush();
        selfCopy = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = HMFGetLogIdentifier();
          attribute4 = [typesCopy attribute];
          *buf = 138543618;
          *&buf[4] = v28;
          *&buf[12] = 2112;
          *&buf[14] = attribute4;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        [(HMDAssistantCommand *)selfCopy reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
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
        [(HMDAssistantCommand *)self returnResults:0 serviceType:typeCopy forAction:typesCopy completionHandler:handlerCopy];
LABEL_81:

LABEL_82:
        objectsCopy = v98;
        goto LABEL_83;
      }

      attribute5 = [typesCopy attribute];
      v83 = [v87 mapCharacteristicValueType:attribute5];

      actionType2 = [typesCopy actionType];
      if ([actionType2 isEqualToString:*MEMORY[0x277D47EC0]])
      {
        v32 = [v83 isEqualToString:*MEMORY[0x277CCF6B0]];

        if ((v32 & 1) == 0)
        {
          v33 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            actionType3 = [typesCopy actionType];
            *buf = 138544130;
            *&buf[4] = v36;
            *&buf[12] = 2080;
            *&buf[14] = "[HMDAssistantCommand handleUpdateActionTypes:serviceType:forObjects:completionHandler:]";
            *&buf[22] = 2112;
            v151 = actionType3;
            LOWORD(v152) = 2112;
            *(&v152 + 2) = v83;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@%s ### Siri passed an incorrect action (%@) to a %@ value type.", buf, 0x2Au);
          }

LABEL_79:

          objc_autoreleasePoolPop(v33);
          [(HMDAssistantCommand *)selfCopy3 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
LABEL_80:

          goto LABEL_81;
        }
      }

      else
      {
      }

      actionType4 = [typesCopy actionType];
      v39 = *MEMORY[0x277D47E70];
      if ([actionType4 isEqualToString:*MEMORY[0x277D47E70]])
      {
        if (([v83 isEqualToString:*MEMORY[0x277CCF6C0]] & 1) == 0)
        {
          v40 = [v83 isEqualToString:*MEMORY[0x277CCF6B8]];

          if ((v40 & 1) == 0)
          {
LABEL_77:
            v33 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v80 = HMFGetLogIdentifier();
              actionType5 = [typesCopy actionType];
              *buf = 138544130;
              *&buf[4] = v80;
              *&buf[12] = 2080;
              *&buf[14] = "[HMDAssistantCommand handleUpdateActionTypes:serviceType:forObjects:completionHandler:]";
              *&buf[22] = 2112;
              v151 = actionType5;
              LOWORD(v152) = 2112;
              *(&v152 + 2) = v83;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@%s ### Siri passed an incorrect action (%@) to a %@ value type.", buf, 0x2Au);
            }

            goto LABEL_79;
          }

LABEL_30:
          group = dispatch_group_create();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v151 = __Block_byref_object_copy__13089;
          *&v152 = __Block_byref_object_dispose__13090;
          *(&v152 + 1) = [MEMORY[0x277CBEB18] array];
          attribute6 = [typesCopy attribute];
          v105 = [v87 mapWriteCharacteristicFromAssistantName:attribute6];

          actionType6 = [typesCopy actionType];
          v91 = [actionType6 isEqualToString:v39];

          if (v105)
          {
            v104 = [v87 getAliasedCharacteristicTypes:?];

            weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
            includeCompleteInformation = [typesCopy includeCompleteInformation];
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
                  service = [v46 service];
                  characteristics = [service characteristics];
                  v49 = [characteristics hmf_firstObjectWithCharacteristicType:v105];

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
                      characteristics2 = [service characteristics];
                      v49 = [characteristics2 hmf_firstObjectWithCharacteristicType:v54];

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
                    accessory = [service accessory];
                    home = [accessory home];

                    array = [weakToStrongObjectsMapTable objectForKey:home];
                    if (!array)
                    {
                      array = [MEMORY[0x277CBEB18] array];
                      [weakToStrongObjectsMapTable setObject:array forKey:home];
                    }

                    v60 = [HMDCharacteristicRequest requestWithCharacteristic:v46];
                    [array addObject:v60];
                  }

                  else
                  {
                    home = actionResultForAction(typesCopy);
                    [home setOutcome:v90];
                    v57 = entityForService(service, typeCopy, v98, includeCompleteInformation);
                    [home setEntity:v57];

                    [(HMDAssistantCommand *)val populateResult:home withService:service serviceType:typeCopy characteristic:v46 resultAttribute:0 action:typesCopy];
                    [*(*&buf[8] + 40) addObject:home];
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
            v101 = weakToStrongObjectsMapTable;
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

                          characteristic = [*(*(&v127 + 1) + 8 * k) characteristic];
                          service2 = [characteristic service];
                          v70 = getActivationCharacteristicFromServiceIfAny(service2);

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

                  assistantCommandHelper = [(HMDAssistantCommand *)val assistantCommandHelper];
                  v113[0] = MEMORY[0x277D85DD0];
                  v113[1] = 3221225472;
                  v113[2] = __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke;
                  v113[3] = &unk_279723150;
                  objc_copyWeak(&v124, location);
                  v114 = v88;
                  v125 = v91;
                  v115 = typesCopy;
                  v116 = typeCopy;
                  v117 = v98;
                  v123 = buf;
                  v126 = includeCompleteInformation;
                  v118 = v105;
                  v119 = v104;
                  v122 = handlerCopy;
                  v120 = group;
                  v121 = v61;
                  [assistantCommandHelper addReadRequests:v62 home:v61 completion:v113];

                  objc_destroyWeak(&v124);
                }

                v96 = [v101 countByEnumeratingWithState:&v131 objects:v144 count:16];
              }

              while (v96);
            }

            queue = [(HMDAssistantCommand *)val queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke_111;
            block[3] = &unk_2797332C0;
            v109 = v88;
            v110 = val;
            v112 = buf;
            v111 = handlerCopy;
            dispatch_group_notify(group, queue, block);

            objc_destroyWeak(location);
            v20 = v104;
          }

          else
          {
            v74 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v76 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v77 = HMFGetLogIdentifier();
              attribute7 = [typesCopy attribute];
              *location = 138543618;
              *&location[4] = v77;
              v148 = 2112;
              v149 = attribute7;
              _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", location, 0x16u);
            }

            objc_autoreleasePoolPop(v74);
            [(HMDAssistantCommand *)selfCopy4 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
          }

          _Block_object_dispose(buf, 8);
          goto LABEL_80;
        }
      }

      else
      {
        actionType7 = [typesCopy actionType];
        if (([actionType7 isEqualToString:*MEMORY[0x277D47EA0]] & 1) != 0 && !objc_msgSend(v83, "isEqualToString:", *MEMORY[0x277CCF6C0]))
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

    [(HMDAssistantCommand *)self returnResults:0 serviceType:typeCopy forAction:typesCopy completionHandler:handlerCopy];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@In Update action types, There is no attribute in action - reporting as malformed command", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    [(HMDAssistantCommand *)selfCopy5 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received response %@ for read request with error %@", buf, 0x20u);
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
                [v36 setValue:{objc_msgSend(&unk_286627928, "BOOLValue")}];
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
      v104[2] = __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke_110;
      v104[3] = &unk_279723128;
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

uint64_t __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke_111(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for update-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __88__HMDAssistantCommand_handleUpdateActionTypes_serviceType_forObjects_completionHandler___block_invoke_110(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response %@ for write request with %@", &v18, 0x20u);
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

- (id)updateValue:(id)value forAction:(id)action
{
  valueCopy = value;
  actionCopy = action;
  value = [valueCopy value];
  actionType = [actionCopy actionType];
  v9 = +[HMDHAPMetadata getSharedInstance];
  attribute = [actionCopy attribute];
  v11 = [v9 mapCharacteristicValueType:attribute];

  if ([actionType isEqualToString:*MEMORY[0x277D47EC0]])
  {
    bOOLValue = [value BOOLValue];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue ^ 1u];
    goto LABEL_20;
  }

  v53 = actionType;
  v50 = v9;
  if ([v11 isEqualToString:*MEMORY[0x277CCF6C0]])
  {
    *&v14 = [value intValue];
  }

  else
  {
    [value floatValue];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  value2 = [actionCopy value];
  units = [value2 units];
  attribute2 = [actionCopy attribute];
  v19 = [(HMDAssistantCommand *)self adjustGetValue:v15 type:v11 units:units attribute:attribute2];

  v20 = v19;
  [v19 floatValue];
  v22 = v21;
  value3 = [actionCopy value];

  v27Value = 5.0;
  if (value3)
  {
    value4 = [actionCopy value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    value5 = [actionCopy value];
    value6 = value5;
    v29 = v53;
    if (isKindOfClass)
    {
      v27Value = [value5 value];
LABEL_12:

      goto LABEL_13;
    }

    objc_opt_class();
    v30 = objc_opt_isKindOfClass();

    if (v30)
    {
      value6 = [actionCopy value];
      [value6 value];
      v27Value = v31;
      goto LABEL_12;
    }
  }

  else
  {
    v29 = v53;
  }

LABEL_13:
  v32 = +[HMDHAPMetadata getSharedInstance];
  attribute3 = [actionCopy attribute];
  v34 = [v32 mapWriteCharacteristicFromAssistantName:attribute3];

  service = [valueCopy service];
  characteristics = [service characteristics];
  v36 = [characteristics hmf_firstObjectWithCharacteristicType:v34];

  if (!v36)
  {
    v37 = [v32 getCharacteristicTypeAlias:v34];
    characteristics2 = [service characteristics];
    v36 = [characteristics2 hmf_firstObjectWithCharacteristicType:v37];

    v29 = v53;
  }

  v51 = valueCopy;
  v48 = v34;
  v49 = v32;
  if ([v29 isEqualToString:*MEMORY[0x277D47EA0]])
  {
    *&v39 = v22 + v27Value;
  }

  else
  {
    v40 = [v29 isEqualToString:*MEMORY[0x277D47E70]];
    *&v39 = v22 - v27Value;
    if (!v40)
    {
      *&v39 = v22;
    }
  }

  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v39];

  value7 = [actionCopy value];
  units2 = [value7 units];
  attribute4 = [actionCopy attribute];
  v45 = [(HMDAssistantCommand *)self adjustSetValue:v41 type:v11 units:units2 attribute:attribute4];

  metadata = [v36 metadata];
  v13 = [(HMDAssistantCommand *)self updateValueToBoundary:v45 valueType:v11 fudgeMinimum:1 metadata:metadata];

  value = v41;
  v9 = v50;
  valueCopy = v51;
  actionType = v53;
LABEL_20:

  return v13;
}

- (id)updateValueToBoundary:(id)boundary valueType:(id)type fudgeMinimum:(BOOL)minimum metadata:(id)metadata
{
  minimumCopy = minimum;
  boundaryCopy = boundary;
  typeCopy = type;
  metadataCopy = metadata;
  v12 = boundaryCopy;
  maximumValue3 = v12;
  if (metadataCopy)
  {
    objc_opt_class();
    maximumValue3 = v12;
    if (objc_opt_isKindOfClass())
    {
      maximumValue = [metadataCopy maximumValue];

      maximumValue3 = v12;
      if (maximumValue)
      {
        maximumValue2 = [metadataCopy maximumValue];
        v16 = [maximumValue2 compare:v12];

        maximumValue3 = v12;
        if (v16 == -1)
        {
          maximumValue3 = [metadataCopy maximumValue];
        }
      }

      minimumValue = [metadataCopy minimumValue];

      if (minimumValue)
      {
        if (minimumCopy && ([metadataCopy stepValue], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
        {
          v19 = [typeCopy isEqualToString:*MEMORY[0x277CCF6C0]];
          minimumValue2 = [metadataCopy minimumValue];
          v21 = minimumValue2;
          if (v19)
          {
            intValue = [minimumValue2 intValue];
            stepValue = [metadataCopy stepValue];
            v24 = [stepValue intValue] + intValue;

            v25 = MEMORY[0x277CCABB0];
            *&v26 = v24;
          }

          else
          {
            [minimumValue2 floatValue];
            v29 = v28;
            stepValue2 = [metadataCopy stepValue];
            [stepValue2 floatValue];
            v32 = v29 + v31;

            v25 = MEMORY[0x277CCABB0];
            *&v26 = v32;
          }

          minimumValue3 = [v25 numberWithFloat:v26];
        }

        else
        {
          minimumValue3 = [metadataCopy minimumValue];
        }

        v33 = minimumValue3;
        if ([minimumValue3 compare:v12] == 1)
        {
          v34 = v33;

          maximumValue3 = v34;
        }
      }
    }
  }

  return maximumValue3;
}

- (void)handleSetActionTypes:(id)types serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler
{
  v161[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  typeCopy = type;
  objectsCopy = objects;
  handlerCopy = handler;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  val = self;
  v13 = MEMORY[0x259C01AE0](self, a2);
  2200 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 2200];
  v116 = [v11 initWithName:2200];

  attribute = [typesCopy attribute];

  if (!attribute)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@In Set action types, There is no attribute in action - reporting as malformed command", buf, 0xCu);
    }

    goto LABEL_6;
  }

  actionType = [typesCopy actionType];
  v114 = *MEMORY[0x277D47EA8];
  if ([actionType isEqualToString:?])
  {
    value = [typesCopy value];

    if (!value)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v21;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@No value field for SET actionType", buf, 0xCu);
      }

LABEL_6:

      objc_autoreleasePoolPop(v18);
      [(HMDAssistantCommand *)selfCopy2 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
      goto LABEL_85;
    }
  }

  else
  {
  }

  v107 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K =[d] %@", @"objectType", *MEMORY[0x277D48168]];
  v108 = [objectsCopy filteredArrayUsingPredicate:v107];
  if ([v108 count])
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Entity specified is an action set, executing it", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    firstObject = [v108 firstObject];
    v28 = actionSetFromObject(firstObject);

    [(HMDAssistantCommand *)selfCopy3 executeActionSet:v28 action:typesCopy withCompletionHandler:handlerCopy];
    goto LABEL_84;
  }

  attribute2 = [typesCopy attribute];
  v30 = [attribute2 isEqualToString:*MEMORY[0x277D47F48]];

  if (v30)
  {
    [(HMDAssistantCommand *)self handleSetColor:typesCopy forObjects:objectsCopy service:typeCopy completionHandler:handlerCopy];
    goto LABEL_84;
  }

  attribute3 = [typesCopy attribute];
  v32 = [attribute3 isEqualToString:*MEMORY[0x277D47EC8]];

  if (v32)
  {
    [(HMDAssistantCommand *)self handleSetNaturalLightingAction:typesCopy serviceType:typeCopy forObjects:objectsCopy completionHandler:handlerCopy];
    goto LABEL_84;
  }

  v103 = +[HMDHAPMetadata getSharedInstance];
  attribute4 = [typesCopy attribute];
  v102 = [v103 mapWriteCharacteristicFromAssistantName:attribute4];

  if (!v102)
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      attribute5 = [typesCopy attribute];
      *buf = 138543618;
      *&buf[4] = v38;
      *&buf[12] = 2112;
      *&buf[14] = attribute5;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [(HMDAssistantCommand *)selfCopy4 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];

    goto LABEL_84;
  }

  attribute6 = [typesCopy attribute];
  v111 = [v103 mapCharacteristicValueType:attribute6];

  v100 = [v103 getAliasedCharacteristicTypes:v102];
  if ([v100 count])
  {
    v99 = [v100 arrayByAddingObject:v102];
    [(HMDAssistantCommand *)self filterObjects:objectsCopy forCharacteristicTypes:v99];
  }

  else
  {
    v161[0] = v102;
    v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:1];
    [(HMDAssistantCommand *)self filterObjects:objectsCopy forCharacteristicTypes:v99];
  }
  v101 = ;
  if (![v101 count])
  {
    [(HMDAssistantCommand *)self returnResults:0 serviceType:typeCopy forAction:typesCopy completionHandler:handlerCopy];
    goto LABEL_83;
  }

  v98 = [(HMDAssistantCommand *)self getValueOfType:v111 action:typesCopy];
  value2 = [typesCopy value];
  units = [value2 units];
  attribute7 = [typesCopy attribute];
  v120 = [(HMDAssistantCommand *)self adjustSetValue:v98 type:v111 units:units attribute:attribute7];

  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v158 = __Block_byref_object_copy__13089;
  v159 = __Block_byref_object_dispose__13090;
  array = [MEMORY[0x277CBEB18] array];
  includeCompleteInformation = [typesCopy includeCompleteInformation];
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
      metadata = [v47 metadata];
      if (([v47 properties] & 4) == 0)
      {
        maximumValue2 = actionResultForAction(typesCopy);
        service = [v47 service];
        [maximumValue2 setOutcome:v112];
        v51 = entityForService(service, typeCopy, objectsCopy, includeCompleteInformation);
        [maximumValue2 setEntity:v51];

        [(HMDAssistantCommand *)val populateResult:maximumValue2 withService:service serviceType:typeCopy characteristic:v47 resultAttribute:0 action:typesCopy];
        [*(*&buf[8] + 40) addObject:maximumValue2];
        goto LABEL_34;
      }

      actionType2 = [typesCopy actionType];
      v53 = [actionType2 isEqualToString:v114];

      if (v53)
      {
        maximumValue2 = v120;
        v120 = [(HMDAssistantCommand *)val updateValueToBoundary:maximumValue2 valueType:v111 fudgeMinimum:0 metadata:metadata];

        if (maximumValue2 == v120 || ([v47 characteristicType], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "isEqual:", v109), v54, !v55))
        {
          [weakToStrongObjectsMapTable setObject:v120 forKey:v47];
        }

        else
        {
          service = actionResultForAction(typesCopy);
          service2 = [v47 service];
          if (maximumValue2 >= v120)
          {
            v57 = v105;
          }

          else
          {
            v57 = v104;
          }

          [service setOutcome:v57];
          v58 = entityForService(service2, typeCopy, objectsCopy, includeCompleteInformation);
          [service setEntity:v58];

          [(HMDAssistantCommand *)val populateResult:service withService:service2 serviceType:typeCopy characteristic:v47 resultAttribute:0 action:typesCopy];
          [*(*&buf[8] + 40) addObject:service];

LABEL_34:
        }

LABEL_46:

        goto LABEL_47;
      }

      actionType3 = [typesCopy actionType];
      v60 = [actionType3 isEqualToString:v110];

      if (v60)
      {
        maximumValue = [metadata maximumValue];

        if (!maximumValue)
        {
          goto LABEL_47;
        }

        maximumValue2 = [metadata maximumValue];
        [weakToStrongObjectsMapTable setObject:maximumValue2 forKey:v47];
        goto LABEL_46;
      }

      actionType4 = [typesCopy actionType];
      v63 = [actionType4 isEqualToString:v106];

      if (v63)
      {
        minimumValue = [metadata minimumValue];
        if (minimumValue)
        {
          maximumValue2 = [(HMDAssistantCommand *)val updateValueToBoundary:minimumValue valueType:v111 fudgeMinimum:1 metadata:metadata];

          [weakToStrongObjectsMapTable setObject:maximumValue2 forKey:v47];
        }

        else
        {
          maximumValue2 = 0;
        }

        goto LABEL_46;
      }

LABEL_47:
      [(HMDAssistantCommand *)val addActivationCharacteristicsIfNeeded:weakToStrongObjectsMapTable forCharacteristic:v47];

      ++v46;
    }

    while (v44 != v46);
    v65 = [obj countByEnumeratingWithState:&v147 objects:v156 count:16];
    v44 = v65;
  }

  while (v65);
LABEL_54:

  v66 = dispatch_group_create();
  weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v118 = weakToStrongObjectsMapTable;
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
        service3 = [v70 service];
        accessory = [service3 accessory];
        home = [accessory home];

        v74 = [v118 objectForKey:v70];

        type = [v70 type];
        LODWORD(accessory) = [type isEqual:@"000000B0-0000-1000-8000-0026BB765291"];

        if (accessory)
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
              _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_ERROR, "%{public}@Unknown value type found. Expected integer but got %@", location, 0x16u);
            }

            objc_autoreleasePoolPop(v91);
            [(HMDAssistantCommand *)v92 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];

            v90 = v118;
            goto LABEL_82;
          }

          v120 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v76, "unsignedIntegerValue")}];
        }

        else
        {
          v120 = v74;
        }

        array2 = [weakToStrongObjectsMapTable2 objectForKey:home];
        if (!array2)
        {
          array2 = [MEMORY[0x277CBEB18] array];
          [weakToStrongObjectsMapTable2 setObject:array2 forKey:home];
        }

        authorizationData = [v70 authorizationData];
        v81 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v70 value:v120 authorizationData:authorizationData type:1];

        [array2 addObject:v81];
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
  v82 = weakToStrongObjectsMapTable2;
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
        assistantCommandHelper = [(HMDAssistantCommand *)val assistantCommandHelper];
        v130[0] = MEMORY[0x277D85DD0];
        v130[1] = 3221225472;
        v130[2] = __85__HMDAssistantCommand_handleSetActionTypes_serviceType_forObjects_completionHandler___block_invoke;
        v130[3] = &unk_2797230D8;
        objc_copyWeak(&v138, location);
        v131 = v66;
        v136 = handlerCopy;
        v132 = typesCopy;
        v133 = typeCopy;
        v137 = buf;
        v134 = objectsCopy;
        v135 = v116;
        [assistantCommandHelper addWriteRequests:v87 home:v86 completion:v130];

        objc_destroyWeak(&v138);
        objc_destroyWeak(location);
      }

      v83 = [v82 countByEnumeratingWithState:&v139 objects:v151 count:16];
    }

    while (v83);
  }

  queue = [(HMDAssistantCommand *)val queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDAssistantCommand_handleSetActionTypes_serviceType_forObjects_completionHandler___block_invoke_108;
  block[3] = &unk_2797332C0;
  v126 = v116;
  v127 = val;
  v129 = buf;
  v128 = handlerCopy;
  dispatch_group_notify(v66, queue, block);

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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response %@ for write request with %@", &v18, 0x20u);
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

uint64_t __85__HMDAssistantCommand_handleSetActionTypes_serviceType_forObjects_completionHandler___block_invoke_108(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for set-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleSetNaturalLightingAction:(id)action serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler
{
  v86 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  typeCopy = type;
  objectsCopy = objects;
  handlerCopy = handler;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x259C01AE0](self, a2);
  1985 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 1985];
  v57 = [v11 initWithName:1985];

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v80 = v18;
    v81 = 2112;
    v82 = objectsCopy;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting enabled for objects: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  value = [actionCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = value;
  }

  else
  {
    v20 = 0;
  }

  v60 = v20;

  if (v60)
  {
    v62 = [MEMORY[0x277CBEB58] set];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = objectsCopy;
    v21 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    if (v21)
    {
      v64 = 0;
      v22 = *v76;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v76 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v75 + 1) + 8 * i);
          v25 = [(HMDAssistantCommand *)selfCopy serviceFromObject:v24];
          v26 = v25;
          if (v25)
          {
            accessory = [v25 accessory];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = accessory;
            }

            else
            {
              v28 = 0;
            }

            v29 = v28;

            home = [v29 home];
            v31 = home == 0;

            if (!v31)
            {
              home2 = [v29 home];

              lightProfiles = [v29 lightProfiles];
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __95__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_completionHandler___block_invoke;
              v73[3] = &unk_2797285D0;
              v74 = v26;
              v34 = [lightProfiles na_firstObjectPassingTest:v73];

              settings = [v34 settings];
              LOBYTE(lightProfiles) = [settings supportedFeatures];

              if (lightProfiles)
              {
                [v62 addObject:v34];
              }

              v64 = home2;
            }
          }

          else
          {
            v36 = objc_autoreleasePoolPush();
            v37 = selfCopy;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v80 = v39;
              v81 = 2112;
              v82 = v24;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Did not find service for filtered object: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v36);
          }
        }

        v21 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
      }

      while (v21);
    }

    else
    {
      v64 = 0;
    }

    hmf_isEmpty = [v62 hmf_isEmpty];
    v46 = objc_autoreleasePoolPush();
    v47 = selfCopy;
    v48 = HMFGetOSLogHandle();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
    if (hmf_isEmpty)
    {
      if (v49)
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138543362;
        v80 = v50;
        _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Did not find any light profiles to set natural lighting on", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v46);
      [(HMDAssistantCommand *)v47 reportResults:0 handler:handlerCopy];
    }

    else
    {
      if (v49)
      {
        v51 = HMFGetLogIdentifier();
        [v60 value];
        v52 = HMFBooleanToString();
        *buf = 138543874;
        v80 = v51;
        v81 = 2112;
        v82 = v52;
        v83 = 2112;
        v84 = v62;
        _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting for light profiles %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v46);
      objc_initWeak(buf, v47);
      naturalLightingCurveWriter = [v64 naturalLightingCurveWriter];
      value2 = [v60 value];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __95__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_completionHandler___block_invoke_102;
      v65[3] = &unk_279723100;
      objc_copyWeak(&v72, buf);
      v66 = v57;
      v67 = v62;
      v68 = actionCopy;
      v69 = typeCopy;
      v70 = obj;
      v71 = handlerCopy;
      [naturalLightingCurveWriter setNaturalLightingEnabled:value2 forLightProfiles:v67 completion:v65];

      objc_destroyWeak(&v72);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    v41 = selfCopy;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      value3 = [actionCopy value];
      *buf = 138543618;
      v80 = v43;
      v81 = 2112;
      v82 = value3;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Specified value is not of BOOLean type %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    [(HMDAssistantCommand *)v41 reportOutcome:*MEMORY[0x277D480C8] results:MEMORY[0x277CBEBF8] handler:handlerCopy];
  }

  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __95__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void __95__HMDAssistantCommand_handleSetNaturalLightingAction_serviceType_forObjects_completionHandler___block_invoke_102(uint64_t a1, void *a2)
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
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to set natural lighting for light profile %@:%@", buf, 0x20u);

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
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully set natural lighting for light profile %@:%@", buf, 0x20u);

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

- (void)handleGetNaturalLightingAction:(id)action forObjects:(id)objects serviceType:(id)type completionHandler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  objectsCopy = objects;
  typeCopy = type;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v14;
    v58 = 2112;
    v59 = objectsCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Getting natural lighting enabled for objects: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v45 = [MEMORY[0x277CBEB58] set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = objectsCopy;
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
        v19 = [(HMDAssistantCommand *)selfCopy serviceFromObject:v18];
        v20 = v19;
        if (v19)
        {
          accessory = [v19 accessory];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = accessory;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          lightProfiles = [v23 lightProfiles];

          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __95__HMDAssistantCommand_handleGetNaturalLightingAction_forObjects_serviceType_completionHandler___block_invoke;
          v49[3] = &unk_2797285D0;
          v25 = v20;
          v50 = v25;
          v26 = [lightProfiles na_firstObjectPassingTest:v49];

          if (v26)
          {
            settings = [v26 settings];
            supportedFeatures = [settings supportedFeatures];

            if (supportedFeatures)
            {
              v29 = actionResultForAction(actionCopy);
              v30 = entityForService(v25, typeCopy, v15, [actionCopy includeCompleteInformation]);
              [v29 setEntity:v30];

              [v29 setOutcome:v44];
              [v29 setResultAttribute:v43];
              v31 = objc_alloc_init(MEMORY[0x277D47340]);
              settings2 = [v26 settings];
              [v31 setValue:{objc_msgSend(settings2, "isNaturalLightingEnabled")}];

              [v29 setResultValue:v31];
              [v45 addObject:v29];
            }
          }
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          v34 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v36 = selfCopy;
            v37 = v16;
            v39 = v38 = v15;
            *buf = 138543618;
            v57 = v39;
            v58 = 2112;
            v59 = v18;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Did not find service for filtered object: %@", buf, 0x16u);

            v15 = v38;
            v16 = v37;
            selfCopy = v36;
          }

          objc_autoreleasePoolPop(v33);
        }
      }

      v48 = [v15 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v48);
  }

  allObjects = [v45 allObjects];
  [(HMDAssistantCommand *)selfCopy reportResults:allObjects handler:handlerCopy];

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __95__HMDAssistantCommand_handleGetNaturalLightingAction_forObjects_serviceType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)compareForBoundary:(id)boundary withMetadata:(id)metadata
{
  boundaryCopy = boundary;
  metadataCopy = metadata;
  if (metadataCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    maximumValue = [metadataCopy maximumValue];

    if (maximumValue)
    {
      maximumValue2 = [metadataCopy maximumValue];
      v9 = [maximumValue2 compare:boundaryCopy];

      if (v9)
      {
        maximumValue = 0;
      }

      else
      {
        maximumValue = *MEMORY[0x277D47E38];
      }
    }

    minimumValue = [metadataCopy minimumValue];

    if (minimumValue)
    {
      minimumValue2 = [metadataCopy minimumValue];
      v13 = [minimumValue2 compare:boundaryCopy];

      if (!v13)
      {
        v14 = *MEMORY[0x277D47E40];

        maximumValue = v14;
      }
    }
  }

  else
  {
    maximumValue = 0;
  }

  return maximumValue;
}

- (id)compareCurrentValue:(id)value newValue:(id)newValue withMetadata:(id)metadata
{
  valueCopy = value;
  newValueCopy = newValue;
  metadataCopy = metadata;
  if (metadataCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    maximumValue = [metadataCopy maximumValue];

    if (maximumValue)
    {
      maximumValue2 = [metadataCopy maximumValue];
      v12 = [maximumValue2 compare:valueCopy];

      if ((v12 + 1) > 1 || ([valueCopy compare:newValueCopy] + 1) > 1)
      {
        maximumValue = 0;
      }

      else
      {
        maximumValue = *MEMORY[0x277D47DB0];
      }
    }

    minimumValue = [metadataCopy minimumValue];

    if (minimumValue)
    {
      minimumValue2 = [metadataCopy minimumValue];
      v16 = [minimumValue2 compare:valueCopy];

      if (v16 <= 1 && [valueCopy compare:newValueCopy] <= 1)
      {
        v17 = *MEMORY[0x277D47DB8];

        maximumValue = v17;
      }
    }
  }

  else
  {
    maximumValue = 0;
  }

  return maximumValue;
}

- (void)handleGetActionTypes:(id)types serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler
{
  v105[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  typeCopy = type;
  objectsCopy = objects;
  handlerCopy = handler;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  val = self;
  v14 = MEMORY[0x259C01AE0](self, a2);
  1757 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 1757];
  v71 = [v12 initWithName:1757];

  attribute = [typesCopy attribute];

  if (attribute)
  {
    attribute2 = [typesCopy attribute];
    v18 = [attribute2 isEqualToString:*MEMORY[0x277D47F48]];

    if (v18)
    {
      [(HMDAssistantCommand *)self handleGetColor:typesCopy forObjects:objectsCopy serviceType:typeCopy completionHandler:handlerCopy];
    }

    else
    {
      attribute3 = [typesCopy attribute];
      v24 = [attribute3 isEqualToString:*MEMORY[0x277D47EC8]];

      if (v24)
      {
        [(HMDAssistantCommand *)self handleGetNaturalLightingAction:typesCopy forObjects:objectsCopy serviceType:typeCopy completionHandler:handlerCopy];
      }

      else
      {
        attribute4 = [typesCopy attribute];
        actionType = [typesCopy actionType];
        v27 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:objectsCopy byAttribute:attribute4 forActionType:actionType];

        if ([v27 count])
        {
          v68 = +[HMDHAPMetadata getSharedInstance];
          actionType2 = [typesCopy actionType];
          v29 = [actionType2 isEqualToString:*MEMORY[0x277D47E98]];

          attribute5 = [typesCopy attribute];
          if (v29)
          {
            [v68 mapWriteCharacteristicFromAssistantName:attribute5];
          }

          else
          {
            [v68 mapReadCharacteristicFromAssistantName:attribute5];
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
              allObjects = [v37 allObjects];

              allObjects2 = [v64 allObjects];

              v39 = [(HMDAssistantCommand *)self addStatusCharacteristicsIfNeeded:allObjects];

              weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
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
                    service = [v44 service];
                    accessory = [service accessory];
                    home = [accessory home];

                    array = [weakToStrongObjectsMapTable objectForKey:home];
                    if (!array)
                    {
                      array = [MEMORY[0x277CBEB18] array];
                      [weakToStrongObjectsMapTable setObject:array forKey:home];
                    }

                    v49 = [(HMDAssistantCommand *)self readRequestsForCharacteristic:v44];
                    [array addObjectsFromArray:v49];
                  }

                  v41 = [obj countByEnumeratingWithState:&v95 objects:v104 count:16];
                }

                while (v41);
              }

              v50 = dispatch_group_create();
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v101 = __Block_byref_object_copy__13089;
              v102 = __Block_byref_object_dispose__13090;
              array2 = [MEMORY[0x277CBEB18] array];
              objc_initWeak(&location, self);
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v51 = weakToStrongObjectsMapTable;
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
                    assistantCommandHelper = [(HMDAssistantCommand *)val assistantCommandHelper];
                    v81[0] = MEMORY[0x277D85DD0];
                    v81[1] = 3221225472;
                    v81[2] = __85__HMDAssistantCommand_handleGetActionTypes_serviceType_forObjects_completionHandler___block_invoke;
                    v81[3] = &unk_2797230D8;
                    objc_copyWeak(&v89, &location);
                    v82 = v50;
                    v87 = handlerCopy;
                    v83 = typesCopy;
                    v84 = typeCopy;
                    v88 = buf;
                    v85 = allObjects2;
                    v86 = v71;
                    [assistantCommandHelper addReadRequests:v56 home:v55 completion:v81];

                    objc_destroyWeak(&v89);
                  }

                  v52 = [v51 countByEnumeratingWithState:&v90 objects:v99 count:16];
                }

                while (v52);
              }

              queue = [(HMDAssistantCommand *)val queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __85__HMDAssistantCommand_handleGetActionTypes_serviceType_forObjects_completionHandler___block_invoke_100;
              block[3] = &unk_2797332C0;
              v77 = v71;
              v78 = val;
              v80 = buf;
              v79 = handlerCopy;
              dispatch_group_notify(v50, queue, block);

              objc_destroyWeak(&location);
              _Block_object_dispose(buf, 8);

              v27 = allObjects2;
            }

            else
            {
              v59 = objc_autoreleasePoolPush();
              selfCopy = self;
              v61 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                v62 = HMFGetLogIdentifier();
                *buf = 138543362;
                *&buf[4] = v62;
                _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@No characteristics found after filtering objects", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v59);
              [(HMDAssistantCommand *)selfCopy returnResults:0 serviceType:typeCopy forAction:typesCopy completionHandler:handlerCopy];
            }
          }

          else
          {
            v31 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = HMFGetLogIdentifier();
              attribute6 = [typesCopy attribute];
              *buf = 138543618;
              *&buf[4] = v34;
              *&buf[12] = 2112;
              *&buf[14] = attribute6;
              _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            [(HMDAssistantCommand *)selfCopy2 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
          }
        }

        else
        {
          [(HMDAssistantCommand *)self returnResults:0 serviceType:typeCopy forAction:typesCopy completionHandler:handlerCopy];
        }

        objectsCopy = v27;
      }
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@In Get action types, There is no attribute in action, reporting results", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDAssistantCommand *)selfCopy3 returnResults:objectsCopy serviceType:typeCopy forAction:typesCopy completionHandler:handlerCopy];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received error %@ for read request with response tuples: %@", &v18, 0x20u);
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

uint64_t __85__HMDAssistantCommand_handleGetActionTypes_serviceType_forObjects_completionHandler___block_invoke_100(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for get-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleMediaAccessorySetActionType:(id)type forObjects:(id)objects withServiceType:(id)serviceType completionHandler:(id)handler
{
  v85 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  objectsCopy = objects;
  serviceTypeCopy = serviceType;
  handlerCopy = handler;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x259C01AE0](self, a2);
  1678 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 1678];
  v46 = [v11 initWithName:1678];

  attribute = [typeCopy attribute];

  if (attribute)
  {
    v48 = [(HMDAssistantCommand *)self getValueOfType:0 action:typeCopy];
    attribute2 = [typeCopy attribute];
    v17 = [attribute2 isEqualToString:*MEMORY[0x277D48048]];

    if (v17)
    {
      v18 = @"HMDMediaProfileSetPowerKey";
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = objectsCopy;
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
              accessory = [v23 accessory];
              home = [accessory home];

              if (home)
              {
                array = [weakToStrongObjectsMapTable objectForKey:home];
                if (!array)
                {
                  array = [MEMORY[0x277CBEB18] array];
                  [weakToStrongObjectsMapTable setObject:array forKey:home];
                }

                [array addObject:v24];
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
      v81 = __Block_byref_object_copy__13089;
      v82 = __Block_byref_object_dispose__13090;
      array2 = [MEMORY[0x277CBEB18] array];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v29 = weakToStrongObjectsMapTable;
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
            assistantCommandHelper = [(HMDAssistantCommand *)self assistantCommandHelper];
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __102__HMDAssistantCommand_handleMediaAccessorySetActionType_forObjects_withServiceType_completionHandler___block_invoke;
            v59[3] = &unk_2797230B0;
            objc_copyWeak(&v68, &location);
            v60 = v28;
            v66 = handlerCopy;
            v61 = typeCopy;
            v62 = serviceTypeCopy;
            v63 = v32;
            v35 = @"HMDMediaProfileSetPowerKey";
            v64 = @"HMDMediaProfileSetPowerKey";
            p_buf = &buf;
            v65 = obj;
            [assistantCommandHelper addMediaWriteRequests:v33 withRequestProperty:@"HMDMediaProfileSetPowerKey" completion:v59];

            objc_destroyWeak(&v68);
            objc_destroyWeak(&location);

            ++v31;
          }

          while (v30 != v31);
          v30 = [v29 countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v30);
      }

      queue = [(HMDAssistantCommand *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__HMDAssistantCommand_handleMediaAccessorySetActionType_forObjects_withServiceType_completionHandler___block_invoke_97;
      block[3] = &unk_2797332C0;
      v55 = v46;
      selfCopy = self;
      v58 = &buf;
      v57 = handlerCopy;
      dispatch_group_notify(v28, queue, block);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v44;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@In Set action types, passed-in attribute in action is not supported.", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v41);
      [(HMDAssistantCommand *)selfCopy2 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v40;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@In Set action types, there is no attribute in action, reporting malformed results", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    [(HMDAssistantCommand *)selfCopy3 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received error %@ for read/write request with responses %@", buf, 0x20u);
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

uint64_t __102__HMDAssistantCommand_handleMediaAccessorySetActionType_forObjects_withServiceType_completionHandler___block_invoke_97(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@All results have been received for Apple Media Accessory get-action-types, calling result handler", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) reportResults:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 48)];
  result = [*(a1 + 32) end];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)populateResult:(id)result fromResponse:(id)response responses:(id)responses forAction:(id)action serviceType:(id)type forObjects:(id)objects
{
  v91 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  responseCopy = response;
  responsesCopy = responses;
  actionCopy = action;
  typeCopy = type;
  objectsCopy = objects;
  request = [responseCopy request];
  characteristic = [request characteristic];

  type = [characteristic type];
  LOBYTE(type) = [type isEqualToString:@"00000065-0000-1000-8000-0026BB765291"];

  if (type)
  {
    v19 = 0;
    v20 = typeCopy;
    goto LABEL_45;
  }

  error = [responseCopy error];
  service = [characteristic service];
  v80 = service;
  v75 = error;
  if (error)
  {
    v23 = service;
    v24 = [(HMDAssistantCommand *)self actionOutcomeFromError:error];
    [resultCopy setOutcome:v24];
  }

  else
  {
    request2 = [responseCopy request];
    [request2 characteristic];
    v26 = v73 = characteristic;
    [v26 value];
    v28 = v27 = actionCopy;
    request3 = [responseCopy request];
    [request3 characteristic];
    v31 = v30 = responseCopy;
    [v31 metadata];
    v33 = v32 = resultCopy;
    v34 = [(HMDAssistantCommand *)self compareForBoundary:v28 withMetadata:v33];
    [v32 setOutcome:v34];

    resultCopy = v32;
    responseCopy = v30;

    v23 = v80;
    actionCopy = v27;

    characteristic = v73;
    outcome = [v32 outcome];

    if (!outcome)
    {
      [v32 setOutcome:*MEMORY[0x277D47E50]];
    }
  }

  v36 = entityForService(v23, typeCopy, objectsCopy, [actionCopy includeCompleteInformation]);
  [resultCopy setEntity:v36];

  type2 = [characteristic type];
  v38 = [type2 isEqualToString:@"00000064-0000-1000-8000-0026BB765291"];

  if (!v38)
  {
    type3 = [characteristic type];
    v57 = [type3 isEqualToString:@"000000C6-0000-1000-8000-0026BB765291"];

    if (v57)
    {
      v55 = *MEMORY[0x277D48038];
      v58 = typeCopy;
    }

    else
    {
      type4 = [characteristic type];
      v65 = [type4 isEqualToString:@"000000C7-0000-1000-8000-0026BB765291"];

      if (v65)
      {
        v55 = *MEMORY[0x277D48030];
      }

      else
      {
        v55 = 0;
      }

      v58 = typeCopy;
    }

    v42 = v80;
    goto LABEL_44;
  }

  v74 = characteristic;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = responsesCopy;
  v39 = [obj countByEnumeratingWithState:&v86 objects:v90 count:16];
  if (!v39)
  {
    v55 = 0;
    v42 = v80;
    goto LABEL_43;
  }

  v40 = v39;
  v70 = actionCopy;
  v71 = responseCopy;
  v72 = resultCopy;
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
      request4 = [v85 request];
      characteristic2 = [request4 characteristic];

      service2 = [characteristic2 service];
      accessory = [service2 accessory];
      uuid = [accessory uuid];
      accessory2 = [v42 accessory];
      uuid2 = [accessory2 uuid];
      if (![uuid isEqual:uuid2])
      {
        goto LABEL_18;
      }

      v51 = characteristic2;
      instanceID = [v42 instanceID];
      instanceID2 = [service2 instanceID];
      if (![instanceID isEqual:instanceID2])
      {

        characteristic2 = v51;
        v41 = v82;
        v40 = v83;
LABEL_18:

        goto LABEL_19;
      }

      type5 = [v51 type];
      v81 = [type5 isEqualToString:@"00000065-0000-1000-8000-0026BB765291"];

      v42 = v80;
      characteristic2 = v51;

      v41 = v82;
      v40 = v83;
      if (v81)
      {
        value = [v85 value];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v61 = value;
        }

        else
        {
          v61 = 0;
        }

        v62 = v61;

        if (v62)
        {
          responseCopy = v71;
          resultCopy = v72;
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
          responseCopy = v71;
          resultCopy = v72;
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
  responseCopy = v71;
  resultCopy = v72;
LABEL_42:
  actionCopy = v70;
LABEL_43:

  v58 = typeCopy;
  characteristic = v74;
LABEL_44:
  v66 = v42;
  v67 = v42;
  v20 = v58;
  v19 = [HMDAssistantCommand populateResult:"populateResult:withService:serviceType:characteristic:resultAttribute:action:" withService:resultCopy serviceType:v66 characteristic:? resultAttribute:? action:?];

LABEL_45:
  v68 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)handleGetMetadataActionTypes:(id)types serviceType:(id)type forObjects:(id)objects completionHandler:(id)handler
{
  v76 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  typeCopy = type;
  objectsCopy = objects;
  handlerCopy = handler;
  attribute = [typesCopy attribute];

  if (attribute)
  {
    attribute2 = [typesCopy attribute];
    actionType = [typesCopy actionType];
    v16 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:objectsCopy byAttribute:attribute2 forActionType:actionType];

    if ([v16 count])
    {
      v17 = +[HMDHAPMetadata getSharedInstance];
      attribute3 = [typesCopy attribute];
      v19 = [v17 mapReadCharacteristicFromAssistantName:attribute3];

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
          v56 = handlerCopy;
          v57 = v19;
          v55 = v17;
          array = [MEMORY[0x277CBEB18] array];
          includeCompleteInformation = [typesCopy includeCompleteInformation];
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
            selfCopy = self;
            do
            {
              for (i = 0; i != v65; ++i)
              {
                if (*v67 != v62)
                {
                  objc_enumerationMutation(obj);
                }

                v36 = *(*(&v66 + 1) + 8 * i);
                service = [v36 service];
                v38 = actionResultForAction(typesCopy);
                [v38 setOutcome:v61];
                v39 = entityForService(service, typeCopy, v16, includeCompleteInformation);
                [v38 setEntity:v39];

                if ([(HMDAssistantCommand *)self populateResult:v38 withService:service serviceType:typeCopy characteristic:v36 resultAttribute:0 action:typesCopy])
                {
                  [array addObject:v38];
                }

                else
                {
                  v40 = v34;
                  v41 = objc_autoreleasePoolPush();
                  selfCopy2 = self;
                  v43 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v45 = v44 = typesCopy;
                    *buf = 138543618;
                    v73 = v45;
                    v74 = 2112;
                    v75 = v38;
                    _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Not including the result: %@ to the action results", buf, 0x16u);

                    typesCopy = v44;
                    self = selfCopy;
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
          selfCopy3 = self;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v51 = v50 = typesCopy;
            *buf = 138543362;
            v73 = v51;
            _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@All results have been received for get-metadata-action-types, calling result handler", buf, 0xCu);

            typesCopy = v50;
          }

          objc_autoreleasePoolPop(v47);
          handlerCopy = v56;
          [(HMDAssistantCommand *)selfCopy3 reportResults:array handler:v56];

          v16 = v46;
          v20 = v54;
          v17 = v55;
          v19 = v57;
          v33 = v53;
        }

        else
        {
          [(HMDAssistantCommand *)self returnResults:0 serviceType:typeCopy forAction:typesCopy completionHandler:handlerCopy];
        }
      }

      else
      {
        v26 = v17;
        v27 = v16;
        v28 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = HMFGetLogIdentifier();
          attribute4 = [typesCopy attribute];
          *buf = 138543618;
          v73 = v31;
          v74 = 2112;
          v75 = attribute4;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot map actionAttribute(%@) to a characteristicType", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        [(HMDAssistantCommand *)selfCopy4 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
        v16 = v27;
        v17 = v26;
        v19 = 0;
      }
    }

    else
    {
      [(HMDAssistantCommand *)self returnResults:0 serviceType:typeCopy forAction:typesCopy completionHandler:handlerCopy];
    }

    objectsCopy = v16;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@In Get metadata action types, There is no attribute in action, reporting results", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDAssistantCommand *)selfCopy5 returnResults:objectsCopy serviceType:typeCopy forAction:typesCopy completionHandler:handlerCopy];
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)executeActionSet:(id)set action:(id)action withCompletionHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  setCopy = set;
  actionCopy = action;
  handlerCopy = handler;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x259C01AE0](self, a2);
  1452 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 1452];
  v33 = [v11 initWithName:1452];

  attribute = [actionCopy attribute];
  LOBYTE(v13) = [*MEMORY[0x277D47F80] isEqualToString:attribute];

  if (v13)
  {
    home = [setCopy home];
    [(HMDAssistantCommand *)self setHome:home];
    v17 = +[HMDHAPMetadata getSharedInstance];
    attribute2 = [actionCopy attribute];
    v19 = [v17 mapCharacteristicValueType:attribute2];

    v20 = [(HMDAssistantCommand *)self getValueOfType:v19 action:actionCopy];
    v21 = v20;
    if (v20 && ([v20 BOOLValue] & 1) != 0)
    {
      objc_initWeak(location, self);
      assistantCommandHelper = [(HMDAssistantCommand *)self assistantCommandHelper];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __69__HMDAssistantCommand_executeActionSet_action_withCompletionHandler___block_invoke;
      v35[3] = &unk_279723088;
      objc_copyWeak(&v40, location);
      v36 = v33;
      v39 = handlerCopy;
      v37 = actionCopy;
      v38 = setCopy;
      [assistantCommandHelper addActionSetRequest:home actionSet:v38 completionHandler:v35];

      objc_destroyWeak(&v40);
      objc_destroyWeak(location);
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v31;
        v42 = 2112;
        v43 = v21;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ActionSet action value %@ not true", location, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      [(HMDAssistantCommand *)selfCopy reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      attribute3 = [actionCopy attribute];
      *location = 138543618;
      *&location[4] = v26;
      v42 = 2112;
      v43 = attribute3;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid action.attribute %@ for actionSet", location, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    [(HMDAssistantCommand *)selfCopy2 reportOutcome:*MEMORY[0x277D480C8] results:0 handler:handlerCopy];
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
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Result received for execute action set: %@, calling result handler", buf, 0x16u);

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

- (id)actionOutcomeFromError:(id)error
{
  code = [error code];
  if (code > 44)
  {
    if (code > 2403)
    {
      if (code == 2404)
      {
        v5 = MEMORY[0x277D47DC8];
        goto LABEL_25;
      }

      if (code == 2405)
      {
        v5 = MEMORY[0x277D47DD8];
        goto LABEL_25;
      }
    }

    else
    {
      if (code == 45)
      {
        v5 = MEMORY[0x277D47DF8];
        goto LABEL_25;
      }

      if (code == 88)
      {
        v5 = MEMORY[0x277D47DD0];
        goto LABEL_25;
      }
    }

    goto LABEL_22;
  }

  if (code > 14)
  {
    if (code == 15)
    {
      v5 = MEMORY[0x277D47DF0];
      goto LABEL_25;
    }

    if (code == 44)
    {
      v5 = MEMORY[0x277D47E48];
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (code != 4)
  {
    if (code == 5)
    {
      v5 = MEMORY[0x277D47E10];
      goto LABEL_25;
    }

LABEL_22:
    v5 = MEMORY[0x277D47DE0];
    goto LABEL_25;
  }

  home = [(HMDAssistantCommand *)self home];
  if (!home)
  {
    goto LABEL_24;
  }

  v7 = home;
  home2 = [(HMDAssistantCommand *)self home];
  primaryResident = [home2 primaryResident];
  if (primaryResident)
  {

LABEL_24:
    v5 = MEMORY[0x277D47E58];
    goto LABEL_25;
  }

  home3 = [(HMDAssistantCommand *)self home];
  homeLocation = [home3 homeLocation];

  if (homeLocation == 1)
  {
    goto LABEL_24;
  }

  v5 = MEMORY[0x277D47E08];
LABEL_25:
  v12 = *v5;

  return v12;
}

- (void)returnResults:(id)results serviceType:(id)type forAction:(id)action completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  typeCopy = type;
  actionCopy = action;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = resultsCopy;
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
        v20 = actionResultForAction(actionCopy);
        [v20 setOutcome:v17];
        [(HMDAssistantCommand *)self populateResult:v20 withObject:v19 serviceType:typeCopy action:actionCopy];
        [array addObject:v20];

        ++v18;
      }

      while (v15 != v18);
      v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  [(HMDAssistantCommand *)self reportResults:array handler:handlerCopy];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)reportUnlockRequired:(id)required
{
  requiredCopy = required;
  array = [MEMORY[0x277CBEA60] array];
  v5 = +[HMDDeviceCapabilities supportsDeviceLock];
  v6 = MEMORY[0x277D48120];
  if (v5 && isPasscodeEnabledOnThisDevice())
  {
    v6 = MEMORY[0x277D480F8];
  }

  [(HMDAssistantCommand *)self reportOutcome:*v6 results:array handler:requiredCopy];
}

- (void)reportResults:(id)results handler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  if ([resultsCopy count])
  {
    array = resultsCopy;
    v8 = MEMORY[0x277D480D0];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
    v8 = MEMORY[0x277D480D8];
  }

  v9 = *v8;
  [(HMDAssistantCommand *)self reportOutcome:v9 results:array handler:handlerCopy];
}

- (void)reportOutcome:(id)outcome results:(id)results handler:(id)handler
{
  v56 = *MEMORY[0x277D85DE8];
  outcomeCopy = outcome;
  resultsCopy = results;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x277D47350]);
    [v11 setCommandOutcome:outcomeCopy];
    if (resultsCopy)
    {
      [v11 setActionResults:resultsCopy];
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
      [v11 setActionResults:array];
    }

    home = [(HMDAssistantCommand *)self home];

    if (home)
    {
      v14 = MEMORY[0x277CBEBC0];
      home2 = [(HMDAssistantCommand *)self home];
      urlString = [home2 urlString];
      v17 = [v14 URLWithString:urlString];
      [v11 setHomeIdentifier:v17];
    }

    v41 = handlerCopy;
    v43 = resultsCopy;
    v44 = outcomeCopy;
    serverValidity = [(HMDAssistantCommand *)self serverValidity];
    [v11 setServerValidity:serverValidity];

    homeKitObjects = [(HMDAssistantCommand *)self homeKitObjects];
    v20 = [homeKitObjects count] + 1;

    homeManager = [(HMDAssistantCommand *)self homeManager];
    assistantGenerationCounter = [homeManager assistantGenerationCounter];

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu:%tu", assistantGenerationCounter, v20];
    [v11 setClientValidity:v23];

    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      aceId = [(HMDAssistantCommand *)self aceId];
      hm_headerDescription = [v11 hm_headerDescription];
      *buf = 138543874;
      v51 = v26;
      v52 = 2112;
      v53 = aceId;
      v54 = 2112;
      v55 = hm_headerDescription;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Response for Siri command(%@): %@", buf, 0x20u);
    }

    selfCopy = self;

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
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v35);
        }

        v31 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v31);
    }

    dictionary = [v40 dictionary];
    handlerCopy = v41;
    v41[2](v41, dictionary);

    [(HMDAssistantCommand *)selfCopy _logEvent:v40];
    resultsCopy = v43;
    outcomeCopy = v44;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_logEvent:(id)event
{
  v51 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = objc_alloc(MEMORY[0x277D0F770]);
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x259C01AE0](self, a2);
  1267 = [v7 stringWithFormat:@"%@, %s:%ld", v8, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommand.m", 1267];
  v43 = [v6 initWithName:1267];

  selfCopy = self;
  actions = [(HMDAssistantCommand *)self actions];
  firstObject = [actions firstObject];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = eventCopy;
  actionResults = [eventCopy actionResults];
  v12 = [actionResults countByEnumeratingWithState:&v46 objects:v50 count:16];
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
          objc_enumerationMutation(actionResults);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        outcome = [v19 outcome];
        v21 = isOutcomeSuccess(outcome);

        if ((v21 & 1) == 0)
        {
          outcome2 = [v19 outcome];
          v23 = [outcome2 isEqual:v17];

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
      v13 = [actionResults countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v13);
  }

  else
  {
    v45 = 0;
    v14 = 0;
    v15 = 0;
  }

  serverValidity = [(HMDAssistantCommand *)selfCopy serverValidity];

  if (serverValidity)
  {
    serverValidity2 = [(HMDAssistantCommand *)selfCopy serverValidity];
    v26 = [serverValidity2 componentsSeparatedByString:@":"];

    firstObject2 = [v26 firstObject];
    v28 = firstObject2;
    if (firstObject2)
    {
      firstObject2 = atoll([firstObject2 cStringUsingEncoding:4]);
    }

    v40 = firstObject2;
  }

  else
  {
    v40 = 0;
  }

  homeManager = [(HMDAssistantCommand *)selfCopy homeManager];
  assistantGenerationCounter = [homeManager assistantGenerationCounter];

  v31 = getLastSyncedAssistantConfigurationVersion();
  unsignedIntegerValue = [v31 unsignedIntegerValue];

  mach_absolute_time();
  v33 = UpTicksToMilliseconds();
  v34 = v33 - [(HMDAssistantCommand *)selfCopy startTime];
  actionType = [firstObject actionType];
  commandOutcome = [v44 commandOutcome];
  v37 = [HMDSiriCommandEvent commandEventWithDuration:v34 actionType:actionType outcome:commandOutcome numberOfEntities:v45 numberOfFailures:v15 numberOfIncompletions:v14 serverConfigurationVersion:v40 configurationVersion:assistantGenerationCounter lastSyncedConfigurationVersion:unsignedIntegerValue];

  v38 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v38 submitLogEvent:v37];

  [firstObject aceId];
  [firstObject actionType];

  [v44 commandOutcome];
  v39 = *MEMORY[0x277D85DE8];
}

- (id)filterObjects:(id)objects forCharacteristics:(id)characteristics
{
  v45 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  characteristicsCopy = characteristics;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = objectsCopy;
  v30 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v30)
  {
    v29 = *v36;
    selfCopy = self;
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
          v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v11 = characteristicsCopy;
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
                characteristics = [v9 characteristics];
                v18 = [characteristics hmf_firstObjectWithCharacteristicType:v16];

                if (!v18)
                {

                  self = selfCopy;
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

          self = selfCopy;
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
          selfCopy2 = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543618;
            v41 = v22;
            v42 = 2112;
            v43 = v8;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Filtered object %@ not a service", buf, 0x16u);
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

- (id)filterObjects:(id)objects forCharacteristicTypes:(id)types
{
  v60 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  typesCopy = types;
  array = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = objectsCopy;
  v38 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v38)
  {
    v37 = *v49;
    *&v7 = 138543618;
    v34 = v7;
    v8 = HMDIDSActivityMonitorHomeManagerDataSource;
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
          v11 = typesCopy;
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
                getSharedInstance = [&v8[63] getSharedInstance];
                type = [v12 type];
                v18 = [getSharedInstance disallowsAssistantServiceType:type characteristicType:v15];

                if (v18)
                {
                  v19 = objc_autoreleasePoolPush();
                  selfCopy = self;
                  v21 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v22 = v11;
                    v23 = v8;
                    v25 = v24 = self;
                    type2 = [v12 type];
                    *buf = 138543874;
                    v53 = v25;
                    v54 = 2112;
                    v55 = type2;
                    v56 = 2112;
                    v57 = v15;
                    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Filtering out request for disallowed service type: %@ characteristic type: %@", buf, 0x20u);

                    v12 = v41;
                    self = v24;
                    v8 = v23;
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
                    [array addObject:v27];
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
          selfCopy2 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = HMFGetLogIdentifier();
            *buf = v34;
            v53 = v31;
            v54 = 2112;
            v55 = v10;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Filtered object is not a service: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
        }
      }

      v38 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v38);
  }

  v32 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)objectsWithSearchFilter:(id)filter inHome:(id)home serviceTypeIsATV:(BOOL)v overrideServiceTypeIfNeeded:(id *)needed
{
  vCopy = v;
  v135 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  homeCopy = home;
  homeKitObjects = [(HMDAssistantCommand *)self homeKitObjects];
  if ([homeKitObjects count])
  {
    urlString = [homeCopy urlString];
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K = %@)", @"objectHomeIdentifier", urlString];
    v14 = [homeKitObjects filteredArrayUsingPredicate:v13];

    if (![v14 count])
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        [homeCopy name];
        v32 = v115 = urlString;
        [homeCopy uuid];
        v119 = filterCopy;
        v34 = v33 = homeCopy;
        uUIDString = [v34 UUIDString];
        *buf = 138543874;
        v130 = v31;
        v131 = 2112;
        v132 = v32;
        v133 = 2112;
        v134 = uUIDString;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@After filtering for home %@/%@, no objects to apply the command to", buf, 0x20u);

        homeCopy = v33;
        filterCopy = v119;

        urlString = v115;
      }

      objc_autoreleasePoolPop(v28);
      v27 = 0;
      goto LABEL_80;
    }

    v117 = vCopy;
    entityType = [filterCopy entityType];
    attribute = [filterCopy attribute];

    if (attribute)
    {
      v17 = *MEMORY[0x277D48170];
      if (entityType)
      {
        if (([entityType isEqualToString:v17] & 1) == 0 && (objc_msgSend(entityType, "isEqualToString:", *MEMORY[0x277D48168]) & 1) == 0)
        {
          v18 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          selfCopy3 = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v22 = v110 = entityType;
            *buf = 138543618;
            v130 = v22;
            v131 = 2112;
            v132 = filterCopy;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Attribute specified in search filter with entityType not SERVICE/SCENE(%@)", buf, 0x16u);

            entityType = v110;
          }

          objc_autoreleasePoolPop(v18);
          self = selfCopy2;
        }

        goto LABEL_18;
      }

      entityType = v17;
    }

    if (!entityType)
    {
      v118 = v13;
      goto LABEL_25;
    }

LABEL_18:
    v36 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"objectType", entityType];

    v37 = [v14 filteredArrayUsingPredicate:v36];

    if (![v37 count])
    {
      v38 = v36;
      v39 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543362;
        v130 = v42;
        v43 = "%{public}@After filtering for entityType, no objects to apply the command to";
LABEL_22:
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, v43, buf, 0xCu);
      }

LABEL_23:

      objc_autoreleasePoolPop(v39);
      v27 = 0;
      v44 = v38;
LABEL_79:

      v13 = v44;
      v14 = v37;
LABEL_80:

      homeKitObjects = v14;
      goto LABEL_81;
    }

    v118 = v36;
    v14 = v37;
LABEL_25:
    serviceType = [filterCopy serviceType];

    if (!serviceType)
    {
      goto LABEL_45;
    }

    v109 = homeCopy;
    v111 = entityType;
    v46 = +[HMDHAPMetadata getSharedInstance];
    serviceType2 = [filterCopy serviceType];
    v48 = [v46 mapFromAssistantServiceName:serviceType2];

    if (v117)
    {
      serviceType3 = [filterCopy serviceType];

      v48 = serviceType3;
    }

    else if (!v48)
    {

      v27 = 0;
      v37 = v14;
      goto LABEL_72;
    }

    selfCopy5 = self;
    v116 = urlString;
    v120 = filterCopy;
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
            if (needed)
            {
              *needed = [v120 serviceType];
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
      filterCopy = v120;
      homeCopy = v109;
      entityType = v111;
      self = selfCopy5;
      urlString = v116;
LABEL_45:
      roomName = [filterCopy roomName];
      if (roomName)
      {
      }

      else
      {
        zoneName = [filterCopy zoneName];

        if (!zoneName)
        {
          goto LABEL_50;
        }
      }

      homeName = [filterCopy homeName];
      roomName2 = [filterCopy roomName];
      zoneName2 = [filterCopy zoneName];
      v37 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:v14 forHomeName:homeName roomName:roomName2 zoneName:zoneName2];

      if (![v37 count])
      {
        v69 = objc_autoreleasePoolPush();
        selfCopy10 = self;
        v71 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = HMFGetLogIdentifier();
          *buf = 138543362;
          v130 = v72;
          v73 = "%{public}@After filtering for room/zone, no objects to apply the command to";
LABEL_75:
          _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, v73, buf, 0xCu);
        }

LABEL_76:

        objc_autoreleasePoolPop(v69);
LABEL_77:
        v27 = 0;
        goto LABEL_78;
      }

      v14 = v37;
LABEL_50:
      groupName = [filterCopy groupName];

      if (!groupName)
      {
        goto LABEL_53;
      }

      groupName2 = [filterCopy groupName];
      v37 = [(HMDAssistantCommand *)self filteredObjectsFromObjects:v14 forGroup:groupName2];

      if ([v37 count])
      {
        v14 = v37;
LABEL_53:
        accessoryName = [filterCopy accessoryName];

        if (accessoryName)
        {
          v66 = MEMORY[0x277CCAC30];
          accessoryName2 = [filterCopy accessoryName];
          v68 = [v66 predicateWithFormat:@"%K = %@", @"objectAccessory", accessoryName2];

          v37 = [v14 filteredArrayUsingPredicate:v68];

          if (![v37 count])
          {
            v91 = objc_autoreleasePoolPush();
            selfCopy7 = self;
            v93 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v95 = v94 = entityType;
              *buf = 138543362;
              v130 = v95;
              _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_INFO, "%{public}@After filtering for accessoryName, no objects to apply the command to", buf, 0xCu);

              entityType = v94;
            }

            objc_autoreleasePoolPop(v91);
            v27 = 0;
            v44 = v68;
            goto LABEL_79;
          }

          selfCopy9 = self;
          v14 = v37;
        }

        else
        {
          selfCopy9 = self;
          v68 = v118;
        }

        serviceName = [filterCopy serviceName];

        if (serviceName)
        {
          v79 = MEMORY[0x277CCAC30];
          serviceName2 = [filterCopy serviceName];
          v81 = [v79 predicateWithFormat:@"%K =[d] %@", @"objectName", serviceName2];

          v37 = [v14 filteredArrayUsingPredicate:v81];

          if (![v37 count])
          {
            v38 = v81;
            v39 = objc_autoreleasePoolPush();
            selfCopy4 = selfCopy9;
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

        sceneName = [filterCopy sceneName];

        if (!sceneName)
        {
          goto LABEL_68;
        }

        v83 = MEMORY[0x277CCAC30];
        sceneName2 = [filterCopy sceneName];
        v85 = [v83 predicateWithFormat:@"%K =[d] %@", @"objectName", sceneName2];

        v37 = [v14 filteredArrayUsingPredicate:v85];

        if ([v37 count])
        {
          v68 = v85;
          v14 = v37;
LABEL_68:
          sceneType = [filterCopy sceneType];

          if (!sceneType)
          {
            v44 = v68;
LABEL_104:
            attribute2 = [filterCopy attribute];
            if (!attribute2 || v117)
            {
              goto LABEL_110;
            }

            v118 = v44;
            attribute3 = [filterCopy attribute];
            if ([attribute3 isEqual:*MEMORY[0x277D47F48]])
            {
LABEL_109:

              v44 = v118;
LABEL_110:

LABEL_111:
              v37 = v14;
              v27 = v37;
              goto LABEL_79;
            }

            attribute4 = [filterCopy attribute];
            if ([attribute4 isEqual:*MEMORY[0x277D47EC8]])
            {

              goto LABEL_109;
            }

            v112 = entityType;
            entityType2 = [filterCopy entityType];
            v106 = [entityType2 isEqual:*MEMORY[0x277D48168]];

            if (v106)
            {
LABEL_118:
              entityType = v112;
              v44 = v118;
              goto LABEL_111;
            }

            attribute5 = [filterCopy attribute];
            v37 = [(HMDAssistantCommand *)selfCopy9 filteredObjectsFromObjects:v14 byAttribute:attribute5 forActionType:0];

            if ([v37 count])
            {
              v14 = v37;
              goto LABEL_118;
            }

            v69 = objc_autoreleasePoolPush();
            selfCopy10 = selfCopy9;
            v71 = HMFGetOSLogHandle();
            entityType = v112;
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

          sceneType2 = [filterCopy sceneType];
          if ([sceneType2 isEqualToString:*MEMORY[0x277D48198]])
          {
            v88 = MEMORY[0x277CCF1B0];
          }

          else if ([sceneType2 isEqualToString:*MEMORY[0x277D481A0]])
          {
            v88 = MEMORY[0x277CCF198];
          }

          else if ([sceneType2 isEqualToString:*MEMORY[0x277D481A8]])
          {
            v88 = MEMORY[0x277CCF180];
          }

          else
          {
            if (![sceneType2 isEqualToString:*MEMORY[0x277D481B0]])
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
              v101 = selfCopy9;
              v102 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v104 = v103 = entityType;
                *buf = 138543362;
                v130 = v104;
                _os_log_impl(&dword_2531F8000, v102, OS_LOG_TYPE_INFO, "%{public}@After filtering for actionSetType, no objects to apply the command to", buf, 0xCu);

                entityType = v103;
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
        selfCopy4 = selfCopy9;
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
      selfCopy10 = self;
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
    v75 = selfCopy5;
    v76 = HMFGetOSLogHandle();
    filterCopy = v120;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = HMFGetLogIdentifier();
      *buf = 138543362;
      v130 = v77;
      _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_INFO, "%{public}@After filtering for serviceType, no objects to apply the command to", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v74);
    v27 = 0;
    homeCopy = v109;
    urlString = v116;
LABEL_72:
    entityType = v111;
LABEL_78:
    v44 = v118;
    goto LABEL_79;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy11 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v130 = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@No objects to apply the command to", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = 0;
LABEL_81:

  v89 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_homeWithSearchFilter:(id)filter
{
  v52 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  homeManager = [(HMDAssistantCommand *)self homeManager];
  homeIdentifier = [filterCopy homeIdentifier];

  if (homeIdentifier)
  {
    homeIdentifier2 = [filterCopy homeIdentifier];
    absoluteString = [homeIdentifier2 absoluteString];
    v9 = [homeManager _homeWithAssistantIdentifier:absoluteString];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        homeIdentifier3 = [filterCopy homeIdentifier];
        v46 = 138543874;
        v47 = v14;
        v48 = 2112;
        v49 = v9;
        v50 = 2112;
        v51 = homeIdentifier3;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Matched home %@ with the homeIdentifier %@ from SCF", &v46, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      goto LABEL_31;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v16 = HMFGetLogIdentifier();
      homeIdentifier4 = [filterCopy homeIdentifier];
      v46 = 138543618;
      v47 = v16;
      v48 = 2112;
      v49 = homeIdentifier4;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_FAULT, "%{public}@No home found with identifier %@", &v46, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  homeName = [filterCopy homeName];

  if (homeName)
  {
    homeName2 = [filterCopy homeName];
    v20 = [homeManager _homesWithName:homeName2];

    if ([v20 count] >= 2)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = HMFGetLogIdentifier();
        homeName3 = [filterCopy homeName];
        v46 = 138543618;
        v47 = v24;
        v48 = 2112;
        v49 = homeName3;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_FAULT, "%{public}@Multiple homes found with name %@, homeIdentifier should be used instead", &v46, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }

    homeName4 = [filterCopy homeName];
    v27 = [(HMDAssistantCommand *)self _evaluateHomeOptionallyMatchingHomeName:homeName4];

    if (v27)
    {
      goto LABEL_19;
    }

    firstObject = [v20 firstObject];
    if (firstObject)
    {
      v27 = firstObject;
      v29 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        homeName5 = [filterCopy homeName];
        v46 = 138543874;
        v47 = v32;
        v48 = 2112;
        v49 = v27;
        v50 = 2112;
        v51 = homeName5;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Matched home %@ with the homeName %@ from SCF after a homeIdentifier mismatch", &v46, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
LABEL_19:
      v9 = v27;

      goto LABEL_31;
    }

    goto LABEL_24;
  }

  if (homeIdentifier)
  {
LABEL_24:
    v36 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v46 = 138543362;
      v47 = v39;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@No matches for the home name/identifier specified in Siri command - bailing out....", &v46, 0xCu);
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
    selfCopy5 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      v46 = 138543362;
      v47 = v43;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Cannot evaluate the home to apply the Siri command to - bailing out....", &v46, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
  }

LABEL_31:
  v44 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_evaluateHomeOptionallyMatchingHomeName:(id)name
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  homeManager = [(HMDAssistantCommand *)self homeManager];
  _accessoryOfCurrentDevice = [homeManager _accessoryOfCurrentDevice];
  home = [_accessoryOfCurrentDevice home];

  if (!home || nameCopy && ([home name], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(nameCopy, "isEqual:", v8), v8, !v9))
  {
    currentHomeUUID = [homeManager currentHomeUUID];
    v17 = [homeManager _homeWithUUID:currentHomeUUID];

    if (v17 && (!nameCopy || ([v17 name], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(nameCopy, "isEqual:", v18), v18, v19)))
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v23;
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Defaulting to current home %@ of the device", &v31, 0x16u);
      }
    }

    else
    {
      primaryHomeUUID = [homeManager primaryHomeUUID];

      v14 = [homeManager _homeWithUUID:primaryHomeUUID];

      if (!v14 || nameCopy && ([v14 name], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(nameCopy, "isEqual:", v25), v25, !v26))
      {
        v15 = 0;
        goto LABEL_20;
      }

      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v28;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Defaulting to primary home %@ of the device", &v31, 0x16u);
      }

      v17 = v14;
      currentHomeUUID = primaryHomeUUID;
    }

    objc_autoreleasePoolPop(v20);
    v14 = v17;
    primaryHomeUUID = currentHomeUUID;
    v15 = v14;
LABEL_20:

    goto LABEL_21;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v13;
    v33 = 2112;
    v34 = home;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Defaulting to home %@ that this device belongs to", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = home;
  v15 = v14;
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)filteredObjectsFromObjects:(id)objects byCharacteristicType:(id)type
{
  v25 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objectsCopy;
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
        v13 = [v12 objectForKeyedSubscript:{@"objectType", array}];
        if ([v13 isEqualToString:v10])
        {
          v14 = [v12 objectForKeyedSubscript:@"objectCharacteristics"];
          v15 = [v14 containsObject:typeCopy];

          if (v15)
          {
            [array addObject:v12];
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

  return array;
}

- (id)filteredObjectsFromObjects:(id)objects byAttribute:(id)attribute forActionType:(id)type
{
  v72 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  attributeCopy = attribute;
  typeCopy = type;
  v10 = +[HMDHAPMetadata getSharedInstance];
  if (!typeCopy || ([typeCopy isEqualToString:*MEMORY[0x277D47E78]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47EC0]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47EA0]) & 1) != 0)
  {
    v48 = 1;
  }

  else
  {
    v48 = [typeCopy isEqualToString:*MEMORY[0x277D47E70]];
  }

  v51 = [v10 mapReadCharacteristicFromAssistantName:attributeCopy];
  v47 = [v10 getAliasedCharacteristicTypes:?];
  v44 = typeCopy;
  if ([typeCopy isEqualToString:*MEMORY[0x277D47EA8]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47E98]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47EB8]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47EB0]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47E88]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47E80]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47E90]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47EC0]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D47EA0]))
  {
    v54 = 1;
  }

  else
  {
    v54 = [typeCopy isEqualToString:*MEMORY[0x277D47E70]];
  }

  v45 = attributeCopy;
  [v10 mapWriteCharacteristicFromAssistantName:attributeCopy];
  v49 = v43 = v10;
  v46 = [v10 getAliasedCharacteristicTypes:?];
  array = [MEMORY[0x277CBEB18] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = objectsCopy;
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
            [array addObject:v17];
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

  return array;
}

- (id)filteredObjectsFromObjects:(id)objects forGroup:(id)group
{
  v23 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  groupCopy = group;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = objectsCopy;
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
        if (v14 && [v14 containsObject:groupCopy])
        {
          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)filteredObjectsFromObjects:(id)objects forHomeName:(id)name roomName:(id)roomName zoneName:(id)zoneName
{
  v66[1] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  nameCopy = name;
  roomNameCopy = roomName;
  zoneNameCopy = zoneName;
  if (roomNameCopy | zoneNameCopy)
  {
    v13 = 0x277CBE000uLL;
    v45 = nameCopy;
    if (roomNameCopy)
    {
      v66[0] = roomNameCopy;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
    }

    else if (zoneNameCopy)
    {
      v44 = objectsCopy;
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
            if (!nameCopy || ([*(*(&v59 + 1) + 8 * v21) objectForKeyedSubscript:@"objectHome"], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", nameCopy), v23, v24))
            {
              v25 = [v22 objectForKeyedSubscript:v20];
              v26 = [v25 isEqualToString:v19];

              if (v26)
              {
                v27 = v20;
                v28 = nameCopy;
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

                      if ([zoneNameCopy isEqualToString:*(*(&v55 + 1) + 8 * i)])
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

                nameCopy = v28;
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

      objectsCopy = v44;
      roomNameCopy = 0;
      v13 = 0x277CBE000;
      v14 = v46;
    }

    else
    {
      v14 = 0;
    }

    array = [*(v13 + 2840) array];
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

          v41 = [objectsCopy filteredArrayUsingPredicate:v37];
          [array addObjectsFromArray:v41];

          ++v39;
          v40 = v37;
        }

        while (v36 != v39);
        v36 = [obja countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v36);
    }

    nameCopy = v45;
  }

  else
  {
    array = objectsCopy;
  }

  v42 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)objectsWithIdentifierList:(id)list error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  listCopy = list;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  homeKitObjects = [(HMDAssistantCommand *)self homeKitObjects];
  v8 = [homeKitObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
    v10 = 0;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(homeKitObjects);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:{@"objectIdentifier", errorCopy}];
        v15 = [listCopy containsObject:v14];

        if (v15)
        {
          v16 = [v13 objectForKeyedSubscript:@"objectHomeIdentifier"];
          v17 = v16;
          if (v10)
          {
            if (([v10 isEqualToString:v16] & 1) == 0)
            {
              if (errorCopy)
              {
                *errorCopy = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
              }

              v18 = MEMORY[0x277CBEBF8];
              v19 = array;
              goto LABEL_20;
            }
          }

          else
          {
            v10 = v16;
          }

          [array addObject:v13];
        }
      }

      v9 = [homeKitObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
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

  v19 = array;
  v18 = [array copy];
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)adjustGetValue:(id)value type:(id)type units:(id)units attribute:(id)attribute
{
  v34 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  typeCopy = type;
  unitsCopy = units;
  attributeCopy = attribute;
  v14 = valueCopy;
  v15 = +[HMDHAPMetadata getSharedInstance];
  if ([v15 supportsLocalization:attributeCopy])
  {
    v16 = v14;
    if (isTemperatureAttribute(attributeCopy))
    {
      v16 = v14;
      if (temperatureConversionIsNeeded(unitsCopy))
      {
        v17 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        *&v19 = (v18 * 1.8) + 32.0;
        v16 = [v17 numberWithFloat:v19];

        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v26 = 138544130;
          v27 = v23;
          v28 = 2112;
          v29 = attributeCopy;
          v30 = 2112;
          v31 = v14;
          v32 = 2112;
          v33 = v16;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@adjustGet: Attribute %@ value %@  adjusted to Fahrenheit %@", &v26, 0x2Au);
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }

  else
  {
    v16 = [v15 mapToAssistantCharacteristicValue:v14 name:attributeCopy getActionType:1];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)adjustSetValue:(id)value type:(id)type units:(id)units attribute:(id)attribute
{
  v34 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  typeCopy = type;
  unitsCopy = units;
  attributeCopy = attribute;
  v14 = valueCopy;
  v15 = +[HMDHAPMetadata getSharedInstance];
  if ([v15 supportsLocalization:attributeCopy])
  {
    v16 = v14;
    if (isTemperatureAttribute(attributeCopy))
    {
      v16 = v14;
      if (temperatureConversionIsNeeded(unitsCopy))
      {
        v17 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        *&v19 = ((v18 + -32.0) * 5.0) / 9.0;
        v16 = [v17 numberWithFloat:v19];

        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v26 = 138544130;
          v27 = v23;
          v28 = 2112;
          v29 = attributeCopy;
          v30 = 2112;
          v31 = v14;
          v32 = 2112;
          v33 = v16;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@adjustSet: Attribute %@ value %@  converted to Celsius as %@", &v26, 0x2Au);
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }

  else
  {
    v16 = [v15 mapFromAssistantCharacteristicValue:v14 name:attributeCopy];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)isAttributeValue:(id)value equalTo:(id)to
{
  valueCopy = value;
  toCopy = to;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = toCopy;
    value = [valueCopy value];
    value2 = [v7 value];

    v10 = value ^ value2 ^ 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = toCopy;
    value3 = [valueCopy value];
    value4 = [v11 value];

    v14 = value3 == value4;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = toCopy;
      value5 = [valueCopy value];
      value6 = [v20 value];

      v10 = [value5 isEqualToString:value6];
      goto LABEL_14;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v15 = toCopy;
  [valueCopy value];
  v17 = v16;
  [v15 value];
  v19 = v18;

  v14 = v17 == v19;
LABEL_8:
  v10 = v14;
LABEL_14:

  return v10;
}

- (id)getValueOfType:(id)type action:(id)action
{
  actionCopy = action;
  value = [actionCopy value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [actionCopy value];
  value5 = value2;
  if (isKindOfClass)
  {
    v8Value = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(value2, "value")}];
LABEL_9:
    v16 = v8Value;

    goto LABEL_10;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  value3 = [actionCopy value];
  value5 = value3;
  if (v10)
  {
    v12 = MEMORY[0x277CCABB0];
    [value3 value];
    v8Value = [v12 numberWithFloat:?];
    goto LABEL_9;
  }

  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  value4 = [actionCopy value];
  value5 = value4;
  if (v13)
  {
    v8Value = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(value4, "value")}];
    goto LABEL_9;
  }

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    value5 = [actionCopy value];
    v8Value = [value5 value];
    goto LABEL_9;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (id)getLocaleUnits:(id)units
{
  unitsCopy = units;
  v4 = *MEMORY[0x277CCF6F8];
  v5 = [unitsCopy isEqualToString:*MEMORY[0x277CCF6F8]];
  v6 = *MEMORY[0x277CCF700];
  if ((v5 & 1) != 0 || (v7 = unitsCopy, [unitsCopy isEqualToString:*MEMORY[0x277CCF700]]))
  {
    if (isMetricLocale_onceToken != -1)
    {
      dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_133089);
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

- (id)actionResultForCharacteristic:(id)characteristic actionSet:(id)set action:(id)action objects:(id)objects error:(id)error
{
  v62 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  setCopy = set;
  actionCopy = action;
  objectsCopy = objects;
  errorCopy = error;
  service = [characteristicCopy service];
  v16 = characteristicCopy;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  actions = [setCopy actions];
  v18 = [actions countByEnumeratingWithState:&v54 objects:buf count:16];
  v51 = objectsCopy;
  if (v18)
  {
    v19 = v18;
    v49 = errorCopy;
    v20 = actionCopy;
    v21 = setCopy;
    v22 = *v55;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v55 != v22)
        {
          objc_enumerationMutation(actions);
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
          targetValue = [v26 targetValue];

          goto LABEL_15;
        }
      }

      v19 = [actions countByEnumeratingWithState:&v54 objects:buf count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    targetValue = 0;
LABEL_15:
    setCopy = v21;
    actionCopy = v20;
    errorCopy = v49;
    objectsCopy = v51;
  }

  else
  {
    targetValue = 0;
  }

  v28 = entityForService(service, 0, objectsCopy, [actionCopy includeCompleteInformation]);
  if (v28)
  {
    v29 = actionResultForAction(actionCopy);
    v30 = [(HMDAssistantCommand *)self actionOutcomeFromError:errorCopy];
    [v29 setOutcome:v30];

    [v29 setEntity:v28];
    if (isMetricLocale_onceToken != -1)
    {
      dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_133089);
    }

    v31 = getTupleForCharacteristic(v16, targetValue, isMetricLocale_isMetricLocale);
    v32 = v31;
    if (v31)
    {
      attribute = [v31 attribute];
      [v29 setResultAttribute:attribute];

      value = [v32 value];
      [v29 setResultValue:value];
    }

    else
    {
      v50 = errorCopy;
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v43;
        v60 = 2112;
        v61 = v16;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@There is no Siri mapping attribute and/or format for characteristic : %@", buf, 0x16u);

        objectsCopy = v51;
      }

      objc_autoreleasePoolPop(context);
      errorCopy = v50;
    }

    if (v29)
    {
      resultValue = [v29 resultValue];
      if (resultValue)
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
    v35 = errorCopy;
    v36 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v39;
      v60 = 2112;
      v61 = service;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Unable to get the entity for service : %@", buf, 0x16u);

      objectsCopy = v51;
    }

    objc_autoreleasePoolPop(v36);
    v40 = 0;
    errorCopy = v35;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)actionResultForMediaProfile:(id)profile action:(id)action objects:(id)objects error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  actionCopy = action;
  objectsCopy = objects;
  errorCopy = error;
  v14 = entityForMediaProfile(profileCopy, objectsCopy, [actionCopy includeCompleteInformation]);
  if (v14)
  {
    v15 = actionResultForAction(actionCopy);
    v16 = [(HMDAssistantCommand *)self actionOutcomeFromError:errorCopy];
    [v15 setOutcome:v16];

    [v15 setEntity:v14];
    v17 = actionCopy;
    v18 = getAttributeForMediaProfile(v14);
    actionType = [v17 actionType];
    if ([actionType isEqualToString:*MEMORY[0x277D47EA8]])
    {
      v32 = errorCopy;
      attribute = [v17 attribute];
      v21 = [attribute isEqualToString:*MEMORY[0x277D47F80]];

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

      errorCopy = v32;
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
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v28;
      v35 = 2112;
      v36 = profileCopy;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to get the entity for service : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v15 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)failedActionResultsFromResponse:(id)response inActionSet:(id)set withAction:(id)action
{
  v87 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  setCopy = set;
  actionCopy = action;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K =[d] %@", @"objectType", *MEMORY[0x277D48170]];
  homeKitObjects = [(HMDAssistantCommand *)self homeKitObjects];
  v49 = v9;
  v62 = [homeKitObjects filteredArrayUsingPredicate:v9];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v11 = responseCopy;
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
        home = [(HMDAssistantCommand *)self home];
        v19 = [objc_alloc(*(v15 + 3448)) initWithUUIDString:v17];
        v20 = [home mediaProfileWithUUID:v19];

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
            v23 = [(HMDAssistantCommand *)self actionResultForMediaProfile:v20 action:actionCopy objects:v62 error:v22];
            if (v23)
            {
              [array addObject:v23];
            }
          }
        }

        else
        {
          v53 = v16;
          home2 = [(HMDAssistantCommand *)self home];
          v25 = [objc_alloc(*(v15 + 3448)) initWithUUIDString:v17];
          v26 = [home2 accessoryWithUUID:v25];

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
                        selfCopy = self;
                        v39 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                        {
                          HMFGetLogIdentifier();
                          v41 = v40 = self;
                          *buf = 138543618;
                          v81 = v41;
                          v82 = 2112;
                          v83 = v36;
                          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Parsing error for Siri : %@", buf, 0x16u);

                          self = v40;
                          v29 = v60;
                        }

                        objc_autoreleasePoolPop(v37);
                        v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v34, "integerValue")}];
                        v43 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v65, "integerValue")}];
                        v44 = [v64 findCharacteristic:v42 forService:v43];
                        if (v44)
                        {
                          v45 = [(HMDAssistantCommand *)selfCopy actionResultForCharacteristic:v44 actionSet:setCopy action:actionCopy objects:v62 error:v36];
                          if (v45)
                          {
                            [array addObject:v45];
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

  v46 = [array copy];
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)entityFromActionSet:(id)set
{
  v3 = MEMORY[0x277D47358];
  setCopy = set;
  v5 = objc_alloc_init(v3);
  name = [setCopy name];
  [v5 setName:name];

  v7 = MEMORY[0x277CBEBC0];
  urlString = [setCopy urlString];
  v9 = [v7 URLWithString:urlString];
  [v5 setIdentifier:v9];

  [v5 setEntityType:*MEMORY[0x277D48168]];
  type = [setCopy type];

  v11 = mapToSiriSceneType(type);
  [v5 setSceneType:v11];

  return v5;
}

- (BOOL)populateMediaProfileWriteResult:(id)result withValue:(id)value serviceType:(id)type action:(id)action
{
  actionCopy = action;
  valueCopy = value;
  resultCopy = result;
  v11 = +[HMDHAPMetadata getSharedInstance];
  attribute = [actionCopy attribute];
  v13 = [v11 mapWriteCharacteristicFromAssistantName:attribute];

  value = [actionCopy value];
  units = [value units];
  attribute2 = [actionCopy attribute];
  if (isMetricLocale_onceToken != -1)
  {
    dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_133089);
  }

  v17 = valueWithAssistantUnits(units, v13, attribute2, valueCopy, 0, isMetricLocale_isMetricLocale);

  [resultCopy setResultValue:v17];
  attribute3 = [actionCopy attribute];

  [resultCopy setResultAttribute:attribute3];
  return 1;
}

- (BOOL)populateResultWithEntity:(id)entity action:(id)action entity:(id)a5
{
  v7 = a5;
  entityCopy = entity;
  attribute = [action attribute];
  [entityCopy setResultAttribute:attribute];

  [entityCopy setEntity:v7];
  return 1;
}

- (BOOL)populateResult:(id)result withObject:(id)object serviceType:(id)type action:(id)action
{
  resultCopy = result;
  objectCopy = object;
  typeCopy = type;
  actionCopy = action;
  includeCompleteInformation = [actionCopy includeCompleteInformation];
  attribute = [actionCopy attribute];
  [resultCopy setResultAttribute:attribute];

  v16 = entityFromObject(objectCopy, includeCompleteInformation);
  [resultCopy setEntity:v16];

  attribute2 = [actionCopy attribute];
  if (attribute2 && (v18 = attribute2, [objectCopy objectForKeyedSubscript:@"objectType"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", *MEMORY[0x277D48170]), v19, v18, v20))
  {
    v21 = [(HMDAssistantCommand *)self serviceFromObject:objectCopy];
    v22 = [(HMDAssistantCommand *)self populateResult:resultCopy withService:v21 serviceType:typeCopy characteristic:0 resultAttribute:0 action:actionCopy];
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (BOOL)populateResult:(id)result withService:(id)service serviceType:(id)type characteristic:(id)characteristic resultAttribute:(id)attribute action:(id)action
{
  resultCopy = result;
  serviceCopy = service;
  characteristicCopy = characteristic;
  attributeCopy = attribute;
  actionCopy = action;
  v18 = +[HMDHAPMetadata getSharedInstance];
  if (attributeCopy)
  {
    [resultCopy setResultAttribute:attributeCopy];
  }

  else
  {
    if (characteristicCopy)
    {
      characteristicType = [characteristicCopy characteristicType];
      v20 = [v18 mapToAssistantCharacteristicName:characteristicType];
      [resultCopy setResultAttribute:v20];
    }

    else
    {
      characteristicType = [actionCopy attribute];
      [resultCopy setResultAttribute:characteristicType];
    }
  }

  attribute = [actionCopy attribute];
  if (attribute)
  {
    v22 = attribute;
    outcome = [resultCopy outcome];
    v24 = isOutcomeSuccess(outcome);

    if (v24)
    {
      selfCopy = self;
      if (characteristicCopy)
      {
        characteristicType2 = [characteristicCopy characteristicType];
      }

      else
      {
        if (!actionCopy)
        {
          goto LABEL_16;
        }

        actionType = [actionCopy actionType];
        if (!actionType || (v28 = actionType, [actionCopy actionType], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", *MEMORY[0x277D47E78]), v29, v28, v30))
        {
          attribute2 = [actionCopy attribute];
          v32 = [v18 mapReadCharacteristicFromAssistantName:attribute2];
        }

        else
        {
LABEL_16:
          attribute2 = [actionCopy attribute];
          v32 = [v18 mapWriteCharacteristicFromAssistantName:attribute2];
        }

        characteristicType2 = v32;

        characteristics = [serviceCopy characteristics];
        characteristicCopy = [characteristics hmf_firstObjectWithCharacteristicType:characteristicType2];

        if (!characteristicCopy)
        {
          v34 = [v18 getCharacteristicTypeAlias:characteristicType2];
          characteristics2 = [serviceCopy characteristics];
          characteristicCopy = [characteristics2 hmf_firstObjectWithCharacteristicType:v34];
        }
      }

      metadata = [characteristicCopy metadata];
      units = [metadata units];
      if (!characteristicCopy)
      {
        LOBYTE(minimumValue) = 1;
LABEL_46:

        goto LABEL_47;
      }

      v91 = units;
      v97 = characteristicType2;
      actionType2 = [actionCopy actionType];
      v39 = MEMORY[0x277D47E78];
      v92 = metadata;
      if (!actionType2)
      {
        v42 = *MEMORY[0x277D47E78];
        goto LABEL_35;
      }

      v40 = actionType2;
      actionType3 = [actionCopy actionType];
      v42 = *v39;
      if ([actionType3 isEqualToString:v42])
      {
        goto LABEL_34;
      }

      actionType4 = [actionCopy actionType];
      if ([actionType4 isEqualToString:*MEMORY[0x277D47E98]])
      {

LABEL_34:
        goto LABEL_35;
      }

      v94 = actionType4;
      actionType5 = [actionCopy actionType];
      if ([actionType5 isEqualToString:*MEMORY[0x277D47EA8]])
      {

LABEL_33:
        goto LABEL_34;
      }

      v90 = actionType5;
      actionType6 = [actionCopy actionType];
      if ([actionType6 isEqualToString:*MEMORY[0x277D47EA0]])
      {

LABEL_32:
        goto LABEL_33;
      }

      v89 = actionType6;
      actionType7 = [actionCopy actionType];
      if ([actionType7 isEqualToString:*MEMORY[0x277D47E70]])
      {

        goto LABEL_32;
      }

      actionType8 = [actionCopy actionType];
      v88 = [actionType8 isEqualToString:*MEMORY[0x277D47EC0]];

      if (v88)
      {
LABEL_35:
        value = [actionCopy value];
        units2 = [value units];
        stepValue = [v18 mapFromAssistantUnitName:units2];

        actionType9 = [actionCopy actionType];
        v50 = [actionType9 isEqualToString:v42];

        resultAttribute = [resultCopy resultAttribute];
        value2 = [characteristicCopy value];
        if (isMetricLocale_onceToken != -1)
        {
          dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_133089);
        }

        v53 = valueWithAssistantUnits(stepValue, v97, resultAttribute, value2, v50, isMetricLocale_isMetricLocale);
        [resultCopy setResultValue:v53];

        value3 = [actionCopy value];
        if (!value3)
        {
          LOBYTE(minimumValue) = 1;
          characteristicType2 = v97;
          goto LABEL_44;
        }

        v55 = value3;
        actionType10 = [actionCopy actionType];
        if (actionType10)
        {
          v57 = actionType10;
          actionType11 = [actionCopy actionType];
          v59 = [actionType11 isEqualToString:v42];

          characteristicType2 = v97;
          if (!v59)
          {
LABEL_40:
            LOBYTE(minimumValue) = 1;
LABEL_44:

LABEL_45:
            units = v91;
            metadata = v92;
            goto LABEL_46;
          }
        }

        else
        {

          characteristicType2 = v97;
        }

        value4 = [actionCopy value];
        resultValue = [resultCopy resultValue];
        LOBYTE(minimumValue) = [(HMDAssistantCommand *)selfCopy isAttributeValue:value4 equalTo:resultValue];

        goto LABEL_44;
      }

      actionType12 = [actionCopy actionType];
      if ([actionType12 isEqualToString:*MEMORY[0x277D47EB8]])
      {

        characteristicType2 = v97;
        goto LABEL_52;
      }

      actionType13 = [actionCopy actionType];
      v65 = [actionType13 isEqualToString:*MEMORY[0x277D47EB0]];

      characteristicType2 = v97;
      if (v65)
      {
LABEL_52:
        if (v18)
        {
          value5 = [actionCopy value];
          units3 = [value5 units];
          stepValue = [v18 mapFromAssistantUnitName:units3];

          resultAttribute2 = [resultCopy resultAttribute];
          value6 = [characteristicCopy value];
          if (isMetricLocale_onceToken != -1)
          {
            dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_133089);
          }

          v70 = valueWithAssistantUnits(stepValue, characteristicType2, resultAttribute2, value6, 0, isMetricLocale_isMetricLocale);
          [resultCopy setResultValue:v70];

          [resultCopy setOutcome:*MEMORY[0x277D47E50]];
          goto LABEL_40;
        }

LABEL_64:
        LOBYTE(minimumValue) = 0;
        goto LABEL_45;
      }

      actionType14 = [actionCopy actionType];
      v72 = *MEMORY[0x277D47E88];
      if (([actionType14 isEqualToString:*MEMORY[0x277D47E88]] & 1) == 0)
      {
        actionType15 = [actionCopy actionType];
        if (![actionType15 isEqualToString:*MEMORY[0x277D47E80]])
        {
          actionType16 = [actionCopy actionType];
          v96 = [actionType16 isEqualToString:*MEMORY[0x277D47E90]];

          characteristicType2 = v97;
          if ((v96 & 1) == 0)
          {
            LOBYTE(minimumValue) = 1;
            goto LABEL_45;
          }

LABEL_60:
          if (!v18)
          {
            goto LABEL_64;
          }

          actionType17 = [actionCopy actionType];
          v75 = [actionType17 isEqualToString:v72];

          if (v75)
          {
            minimumValue = [v92 minimumValue];

            if (minimumValue)
            {
              minimumValue2 = [v92 minimumValue];
LABEL_68:
              stepValue = minimumValue2;
              LOBYTE(minimumValue) = 1;
LABEL_78:
              resultAttribute3 = [resultCopy resultAttribute];
              if (isMetricLocale_onceToken != -1)
              {
                dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_133089);
              }

              v83 = valueWithAssistantUnits(v91, characteristicType2, resultAttribute3, stepValue, 1u, isMetricLocale_isMetricLocale);
              [resultCopy setResultValue:v83];

              value7 = [actionCopy value];

              if (value7)
              {
                value8 = [actionCopy value];
                resultValue2 = [resultCopy resultValue];
                LOBYTE(minimumValue) = [(HMDAssistantCommand *)selfCopy isAttributeValue:value8 equalTo:resultValue2];
              }

              [resultCopy setOutcome:*MEMORY[0x277D47E50]];
              goto LABEL_44;
            }

            goto LABEL_71;
          }

          actionType18 = [actionCopy actionType];
          v78 = [actionType18 isEqualToString:*MEMORY[0x277D47E80]];

          if (v78)
          {
            minimumValue = [v92 maximumValue];

            if (minimumValue)
            {
              minimumValue2 = [v92 maximumValue];
              goto LABEL_68;
            }

LABEL_71:
            stepValue = 0;
            goto LABEL_78;
          }

          actionType19 = [actionCopy actionType];
          v81 = [actionType19 isEqualToString:*MEMORY[0x277D47E90]];

          if (v81)
          {
            minimumValue = [v92 stepValue];

            if (!minimumValue)
            {
              stepValue = 0;
              goto LABEL_77;
            }

            stepValue = [v92 stepValue];
          }

          else
          {
            stepValue = 0;
          }

          LOBYTE(minimumValue) = 1;
LABEL_77:
          characteristicType2 = v97;
          goto LABEL_78;
        }
      }

      goto LABEL_60;
    }
  }

  LOBYTE(minimumValue) = 1;
LABEL_47:

  return minimumValue;
}

- (id)mediaProfileFromObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy objectForKeyedSubscript:@"objectReference"];
  v5 = [objectCopy hmf_stringForKey:@"objectType"];

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

- (id)serviceFromObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy objectForKeyedSubscript:@"objectReference"];
  v5 = [objectCopy hmf_stringForKey:@"objectType"];

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