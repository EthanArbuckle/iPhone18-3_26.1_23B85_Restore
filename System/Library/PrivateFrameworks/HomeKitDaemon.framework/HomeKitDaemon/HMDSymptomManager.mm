@interface HMDSymptomManager
+ (BOOL)accessoryIsConfiguring:(id)configuring;
+ (id)_symptomsForProblemFlags:(unint64_t)flags;
+ (id)logCategory;
- (BOOL)_shouldFilterOutNDFSymptoms;
- (HMDSymptomManager)initWithDataSource:(id)source;
- (HMDSymptomManager)initWithQueue:(id)queue dataSource:(id)source supportsRegistering:(BOOL)registering supportsCurrentDeviceSymptoms:(BOOL)symptoms deviceDiscovery:(id)discovery companionLinkClient:(id)client wifiManager:(id)manager notificationCenter:(id)self0 sharingClientFactory:(id)self1;
- (HMDSymptomManagerDataSource)dataSource;
- (id)_registeredAccessoryWithIDSIdentifier:(id)identifier;
- (id)_symptomsForRegisteredAccessory:(id)accessory;
- (id)obtainDiscoveryAssertion;
- (unint64_t)currentDeviceProblemFlags;
- (void)_handleCaptivePortalSymptoms:(id)symptoms nearbySFDevice:(id)device accessory:(id)accessory;
- (void)_handleNetworkDiagnosticSymptoms:(id)symptoms accessory:(id)accessory shouldFilterOutNDFSymptoms:(BOOL)fSymptoms;
- (void)_handleWiFiRepairV2AndLegacySymptoms:(id)symptoms nearbySFDevice:(id)device accessory:(id)accessory symptomContainer:(id)container fallbackToRepairV2:(BOOL)v2;
- (void)_initiateFixForAccessory:(id)accessory completion:(id)completion;
- (void)_registerForCurrentDeviceSymptoms;
- (void)_rpDeviceChangedHandler:(id)handler;
- (void)_rpDeviceFoundHandler:(id)handler;
- (void)_rpDeviceLostHandler:(id)handler;
- (void)_sfDeviceChangedHandler:(id)handler;
- (void)_sfDeviceFoundHandler:(id)handler;
- (void)_sfDeviceLostHandler:(id)handler;
- (void)_start;
- (void)_startCompanionLinkClient;
- (void)_startDeviceDiscovery;
- (void)_stop;
- (void)_stopCompanionLinkClient;
- (void)_stopDeviceDiscovery;
- (void)_updateSymptoms:(id)symptoms forIDSIdentifier:(id)identifier;
- (void)_updateSymptomsForAllRegisteredAccessories;
- (void)_updateSymptomsForRegisteredAccessory:(id)accessory;
- (void)_updateSymptomsForRegisteredAccessoryWithIDSIdentifier:(id)identifier;
- (void)dealloc;
- (void)deregisterAccessory:(id)accessory;
- (void)handleAccessoryRemovedNotification:(id)notification;
- (void)handleAccessoryWiFiNetworkInfoUpdatedNotification:(id)notification;
- (void)handleCurrentNetworkDidChangeNotification:(id)notification;
- (void)initiateFixForAccessory:(id)accessory completion:(id)completion;
- (void)registerAccessory:(id)accessory delegate:(id)delegate;
- (void)releaseDiscoveryAssertionWithAssertionHandle:(id)handle;
- (void)setCurrentDeviceProblemFlags:(unint64_t)flags;
- (void)setDeviceDiscoveryFlags:(unint64_t)flags;
- (void)startDiscoveringSymptomsRequiringNearbyInfo;
- (void)startNetworkDiagnosticsObservation;
- (void)stopDiscoveringSymptomsRequiringNearbyInfo;
- (void)stopNetworkDiagnosticsObservation;
- (void)updateNetworkMismatchInfoWithCompletionHandler:(id)handler;
@end

@implementation HMDSymptomManager

void __42__HMDSymptomManager__startDeviceDiscovery__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v6 idsIdentifier];

  if (v5)
  {
    [WeakRetained _sfDeviceFoundHandler:v6];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t53_168560 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t53_168560, &__block_literal_global_50_168561);
  }

  v3 = logCategory__hmf_once_v54_168562;

  return v3;
}

void __42__HMDSymptomManager__startDeviceDiscovery__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v6 idsIdentifier];

  if (v5)
  {
    [WeakRetained _sfDeviceChangedHandler:v6];
  }
}

- (void)startNetworkDiagnosticsObservation
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_22A4DD9DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_22957F6B0(0, 0, v6, &unk_22A582030, v8);
}

- (void)stopNetworkDiagnosticsObservation
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_22957F3C0(0, 0, v5, &unk_22A582020, v7);
}

- (void)updateNetworkMismatchInfoWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A5837E8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A57B590;
  v13[5] = v12;
  selfCopy = self;
  sub_229859F70(0, 0, v8, &unk_22A581CC0, v13);
}

- (id)obtainDiscoveryAssertion
{
  selfCopy = self;
  sub_2297B9280(v5);

  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3 = sub_22A4DE5FC();
  __swift_destroy_boxed_opaque_existential_0(v5);

  return v3;
}

- (void)releaseDiscoveryAssertionWithAssertionHandle:(id)handle
{
  if (handle)
  {
    swift_unknownObjectRetain();
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_229609A64(v6, v4);
  if (v5)
  {
    type metadata accessor for AssertionHandle();
    if (swift_dynamicCast())
    {
      sub_229710B48();
    }

    v3 = v6;
  }

  else
  {
    sub_229609094(v6);
    v3 = v4;
  }

  sub_229609094(v3);
}

- (HMDSymptomManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)handleCurrentNetworkDidChangeNotification:(id)notification
{
  workQueue = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDSymptomManager_handleCurrentNetworkDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleAccessoryWiFiNetworkInfoUpdatedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    workQueue = [(HMDSymptomManager *)self workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HMDSymptomManager_handleAccessoryWiFiNetworkInfoUpdatedNotification___block_invoke;
    v14[3] = &unk_27868A750;
    v14[4] = self;
    v15 = v7;
    dispatch_async(workQueue, v14);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = notificationCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain accessory from WiFi network info change notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryRemovedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [(HMDSymptomManager *)self deregisterAccessory:v7];
  }
}

- (void)_rpDeviceLostHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = handlerCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Lost RPCompanionLinkDevice: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  networkReachableRPCompanionLinkDevices = [(HMDSymptomManager *)selfCopy networkReachableRPCompanionLinkDevices];
  idsDeviceIdentifier = [handlerCopy idsDeviceIdentifier];
  [networkReachableRPCompanionLinkDevices removeObjectForKey:idsDeviceIdentifier];

  idsDeviceIdentifier2 = [handlerCopy idsDeviceIdentifier];
  [(HMDSymptomManager *)selfCopy _updateSymptomsForRegisteredAccessoryWithIDSIdentifier:idsDeviceIdentifier2];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_rpDeviceChangedHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v9;
    v28 = 2112;
    v29 = handlerCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@RPCompanionLinkDevice %@ changed", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  networkReachableRPCompanionLinkDevices = [(HMDSymptomManager *)selfCopy networkReachableRPCompanionLinkDevices];
  idsDeviceIdentifier = [handlerCopy idsDeviceIdentifier];
  v12 = [networkReachableRPCompanionLinkDevices objectForKey:idsDeviceIdentifier];

  if (v12)
  {
    networkReachableRPCompanionLinkDevices2 = [(HMDSymptomManager *)selfCopy networkReachableRPCompanionLinkDevices];
    idsDeviceIdentifier2 = [handlerCopy idsDeviceIdentifier];
    [networkReachableRPCompanionLinkDevices2 setObject:handlerCopy forKey:idsDeviceIdentifier2];

    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = handlerCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@RPCompanionLinkDevice %@ changed", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    idsDeviceIdentifier3 = [handlerCopy idsDeviceIdentifier];
    [(HMDSymptomManager *)v16 _updateSymptomsForRegisteredAccessoryWithIDSIdentifier:idsDeviceIdentifier3];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      networkReachableRPCompanionLinkDevices3 = [(HMDSymptomManager *)v21 networkReachableRPCompanionLinkDevices];
      v26 = 138543874;
      v27 = v23;
      v28 = 2112;
      v29 = handlerCopy;
      v30 = 2112;
      v31 = networkReachableRPCompanionLinkDevices3;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Did not find RPCompanionLinkDevice %@ in the network reachable RPCompanionLinkDevices: %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDSymptomManager *)v21 _rpDeviceFoundHandler:handlerCopy];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_rpDeviceFoundHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = handlerCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Found new RPCompanionLinkDevice: %@)", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  networkReachableRPCompanionLinkDevices = [(HMDSymptomManager *)selfCopy networkReachableRPCompanionLinkDevices];
  idsDeviceIdentifier = [handlerCopy idsDeviceIdentifier];
  [networkReachableRPCompanionLinkDevices setObject:handlerCopy forKey:idsDeviceIdentifier];

  idsDeviceIdentifier2 = [handlerCopy idsDeviceIdentifier];
  [(HMDSymptomManager *)selfCopy _updateSymptomsForRegisteredAccessoryWithIDSIdentifier:idsDeviceIdentifier2];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sfDeviceLostHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = handlerCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Lost SFDevice: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  nearbySFDevices = [(HMDSymptomManager *)selfCopy nearbySFDevices];
  idsIdentifier = [handlerCopy idsIdentifier];
  [nearbySFDevices removeObjectForKey:idsIdentifier];

  idsIdentifier2 = [handlerCopy idsIdentifier];
  v13 = [(HMDSymptomManager *)selfCopy _registeredAccessoryWithIDSIdentifier:idsIdentifier2];

  if (v13)
  {
    [(HMDSymptomManager *)selfCopy _updateSymptomsForRegisteredAccessory:v13];
    symptomContainerByRegisteredAccessory = [(HMDSymptomManager *)selfCopy symptomContainerByRegisteredAccessory];
    v15 = [symptomContainerByRegisteredAccessory objectForKey:v13];

    delegate = [v15 delegate];
    [delegate symptomManager:selfCopy didChangeSFDeviceIdentifier:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_sfDeviceChangedHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  nearbySFDevices = [(HMDSymptomManager *)self nearbySFDevices];
  idsIdentifier = [handlerCopy idsIdentifier];
  v8 = [nearbySFDevices objectForKey:idsIdentifier];

  if (v8)
  {
    nearbySFDevices2 = [(HMDSymptomManager *)self nearbySFDevices];
    idsIdentifier2 = [handlerCopy idsIdentifier];
    [nearbySFDevices2 setObject:handlerCopy forKey:idsIdentifier2];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = handlerCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@SFDevice %@ changed", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    idsIdentifier3 = [handlerCopy idsIdentifier];
    [(HMDSymptomManager *)selfCopy _updateSymptomsForRegisteredAccessoryWithIDSIdentifier:idsIdentifier3];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = handlerCopy;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Did not find SFDevice %@ in the nearby SFDevices, so treating it as a found device", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDSymptomManager *)selfCopy2 _sfDeviceFoundHandler:handlerCopy];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_sfDeviceFoundHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = handlerCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Found new SFDevice: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  nearbySFDevices = [(HMDSymptomManager *)selfCopy nearbySFDevices];
  idsIdentifier = [handlerCopy idsIdentifier];
  [nearbySFDevices setObject:handlerCopy forKey:idsIdentifier];

  idsIdentifier2 = [handlerCopy idsIdentifier];
  v13 = [(HMDSymptomManager *)selfCopy _registeredAccessoryWithIDSIdentifier:idsIdentifier2];

  if (v13)
  {
    [(HMDSymptomManager *)selfCopy _updateSymptomsForRegisteredAccessory:v13];
    symptomContainerByRegisteredAccessory = [(HMDSymptomManager *)selfCopy symptomContainerByRegisteredAccessory];
    v15 = [symptomContainerByRegisteredAccessory objectForKey:v13];

    delegate = [v15 delegate];
    identifier = [handlerCopy identifier];
    [delegate symptomManager:selfCopy didChangeSFDeviceIdentifier:identifier];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateSymptomsForAllRegisteredAccessories
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  symptomContainerByRegisteredAccessory = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
  v5 = [symptomContainerByRegisteredAccessory countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(symptomContainerByRegisteredAccessory);
        }

        [(HMDSymptomManager *)self _updateSymptomsForRegisteredAccessory:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [symptomContainerByRegisteredAccessory countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldFilterOutNDFSymptoms
{
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  shouldDisableWiFiPickerBasedOnOSEligibilityFactory = [(HMDSymptomManager *)self shouldDisableWiFiPickerBasedOnOSEligibilityFactory];

  if (shouldDisableWiFiPickerBasedOnOSEligibilityFactory)
  {
    shouldDisableWiFiPickerBasedOnOSEligibilityFactory2 = [(HMDSymptomManager *)self shouldDisableWiFiPickerBasedOnOSEligibilityFactory];
    v6 = shouldDisableWiFiPickerBasedOnOSEligibilityFactory2[2]();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277CD1A90];

    return [v8 shouldDisableWiFiPickerBasedOnOSEligibility];
  }
}

- (void)_handleCaptivePortalSymptoms:(id)symptoms nearbySFDevice:(id)device accessory:(id)accessory
{
  v34 = *MEMORY[0x277D85DE8];
  symptomsCopy = symptoms;
  deviceCopy = device;
  accessoryCopy = accessory;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([deviceCopy hasProblem] && (objc_msgSend(deviceCopy, "problemFlags") & 0x200000) != 0)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Received captive network auth symptom, creating captive lease renewal symptom", buf, 0xCu);
      goto LABEL_13;
    }

LABEL_14:

    objc_autoreleasePoolPop(v20);
    v27 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:19];
    [symptomsCopy addObject:v27];

    goto LABEL_15;
  }

  wifiManager = [(HMDSymptomManager *)self wifiManager];
  if (![wifiManager isCaptive] || !objc_msgSend(deviceCopy, "hasProblem"))
  {
    goto LABEL_10;
  }

  problemFlags = [deviceCopy problemFlags];

  if ((problemFlags & 0x10) == 0)
  {
    goto LABEL_15;
  }

  wifiManager = [(HMDSymptomManager *)self wifiManager];
  currentNetworkSSID = [wifiManager currentNetworkSSID];
  if (!currentNetworkSSID)
  {
LABEL_10:

    goto LABEL_15;
  }

  v15 = currentNetworkSSID;
  wifiNetworkInfo = [accessoryCopy wifiNetworkInfo];
  sSID = [wifiNetworkInfo SSID];
  wifiManager2 = [(HMDSymptomManager *)self wifiManager];
  currentNetworkSSID2 = [wifiManager2 currentNetworkSSID];
  v29 = [sSID isEqualToString:currentNetworkSSID2];

  if (v29)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      wifiNetworkInfo2 = [accessoryCopy wifiNetworkInfo];
      sSID2 = [wifiNetworkInfo2 SSID];
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = sSID2;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Creating captive lease renewal symptom, WiFi SSID: %@", buf, 0x16u);

LABEL_13:
      goto LABEL_14;
    }

    goto LABEL_14;
  }

LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleWiFiRepairV2AndLegacySymptoms:(id)symptoms nearbySFDevice:(id)device accessory:(id)accessory symptomContainer:(id)container fallbackToRepairV2:(BOOL)v2
{
  v2Copy = v2;
  v114 = *MEMORY[0x277D85DE8];
  symptomsCopy = symptoms;
  deviceCopy = device;
  accessoryCopy = accessory;
  containerCopy = container;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [accessoryCopy home];
  primaryResident = [home primaryResident];
  messageAddress = [primaryResident messageAddress];
  idsIdentifier = [messageAddress idsIdentifier];
  device = [accessoryCopy device];
  idsIdentifier2 = [device idsIdentifier];
  v95 = [idsIdentifier isEqual:idsIdentifier2];

  nearbyAccessoryUUIDsReportingDiagnostic = [(HMDSymptomManager *)self nearbyAccessoryUUIDsReportingDiagnostic];
  uuid = [accessoryCopy uuid];
  wifiManager3 = [nearbyAccessoryUUIDsReportingDiagnostic containsObject:uuid];

  *buf = *MEMORY[0x277D0F698];
  *&buf[16] = *(MEMORY[0x277D0F698] + 16);
  v24 = [MEMORY[0x277D0F8F8] versionFromOperatingSystemVersion:buf];
  softwareVersion = [accessoryCopy softwareVersion];
  v96 = v24;
  v94 = [softwareVersion isGreaterThanVersion:v24];

  v97 = home;
  featuresDataSource = [home featuresDataSource];
  isWiFiRepairV2Enabled = [featuresDataSource isWiFiRepairV2Enabled];

  v101 = accessoryCopy;
  v28 = [HMDSymptomManager accessoryIsConfiguring:accessoryCopy];
  v29 = objc_autoreleasePoolPush();
  selfCopy = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    v89 = isWiFiRepairV2Enabled;
    [v101 uuid];
    v33 = v88 = v29;
    [v101 device];
    v34 = v92 = symptomsCopy;
    v35 = HMFBooleanToString();
    HMFBooleanToString();
    v36 = v90 = deviceCopy;
    wifiManager3 = HMFBooleanToString();
    v37 = HMFBooleanToString();
    HMFBooleanToString();
    v38 = v87 = v28;
    *buf = 138545154;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = v33;
    *&buf[22] = 2112;
    v103 = v34;
    v104 = 2112;
    v105 = v35;
    v106 = 2112;
    v107 = v36;
    v108 = 2112;
    v109 = wifiManager3;
    v110 = 2112;
    v111 = v37;
    v112 = 2112;
    v113 = v38;
    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Accessory (%@, device: %@) is primary: %@, support reporting diagnostic: %@, reporting diagnostic: %@, configuring: %@, fallback to v2: %@", buf, 0x52u);

    symptomsCopy = v92;
    v29 = v88;

    v28 = v87;
    isWiFiRepairV2Enabled = v89;

    deviceCopy = v90;
  }

  objc_autoreleasePoolPop(v29);
  if (v28)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy;
    v41 = HMFGetOSLogHandle();
    currentNetworkSSID4 = v101;
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
LABEL_7:

      objc_autoreleasePoolPop(v39);
      goto LABEL_20;
    }

    v43 = HMFGetLogIdentifier();
    idsIdentifier3 = [containerCopy idsIdentifier];
    *buf = 138543618;
    *&buf[4] = v43;
    *&buf[12] = 2112;
    *&buf[14] = idsIdentifier3;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ is configuring, so we skip checking for the WiFi network mismatch symptom. ", buf, 0x16u);

LABEL_6:
    goto LABEL_7;
  }

  currentNetworkSSID4 = v101;
  if (((v95 ^ 1) & v94 & isWiFiRepairV2Enabled & v2Copy) != 0)
  {
    if (!deviceCopy)
    {
      goto LABEL_20;
    }

    wifiManager = [(HMDSymptomManager *)selfCopy wifiManager];
    currentNetworkSSID = [wifiManager currentNetworkSSID];
    if (currentNetworkSSID)
    {
      v47 = currentNetworkSSID;
      nearbyAccessoryUUIDsNotConnectToPrimaryResident = [(HMDSymptomManager *)selfCopy nearbyAccessoryUUIDsNotConnectToPrimaryResident];
      uuid2 = [v101 uuid];
      v50 = [nearbyAccessoryUUIDsNotConnectToPrimaryResident containsObject:uuid2];

      if (!v50)
      {
        goto LABEL_20;
      }

      v51 = objc_autoreleasePoolPush();
      v52 = selfCopy;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        idsIdentifier4 = [containerCopy idsIdentifier];
        *buf = 138543618;
        *&buf[4] = v54;
        *&buf[12] = 2112;
        *&buf[14] = idsIdentifier4;
        _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Creating WiFi network mismatch symptom for nearby IDS identifier that is not connect to primary resident: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v51);
      wifiManager = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
      [symptomsCopy addObject:wifiManager];
    }

LABEL_19:

    goto LABEL_20;
  }

  if (deviceCopy && v2Copy)
  {
    wifiManager = [(HMDSymptomManager *)selfCopy networkReachableRPCompanionLinkDevices];
    idsIdentifier5 = [containerCopy idsIdentifier];
    v57 = [wifiManager objectForKey:idsIdentifier5];
    if (v57)
    {

      goto LABEL_19;
    }

    wifiManager2 = [(HMDSymptomManager *)selfCopy wifiManager];
    currentNetworkSSID2 = [wifiManager2 currentNetworkSSID];

    if (!currentNetworkSSID2)
    {
      goto LABEL_20;
    }

    v61 = objc_autoreleasePoolPush();
    v62 = selfCopy;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      wifiManager2 = HMFGetLogIdentifier();
      currentNetworkSSID2 = [v101 uuid];
      wifiManager3 = [(HMDSymptomManager *)v62 wifiManager];
      currentNetworkSSID3 = [wifiManager3 currentNetworkSSID];
      *buf = 138543874;
      *&buf[4] = wifiManager2;
      *&buf[12] = 2112;
      *&buf[14] = currentNetworkSSID2;
      *&buf[22] = 2112;
      v103 = currentNetworkSSID3;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Accessory: %@ is not reachable over local network: %@", buf, 0x20u);

      currentNetworkSSID4 = v101;
    }

    objc_autoreleasePoolPop(v61);
    wifiNetworkInfo = [currentNetworkSSID4 wifiNetworkInfo];
    sSID = [wifiNetworkInfo SSID];
    if (sSID)
    {
      currentNetworkSSID2 = [currentNetworkSSID4 wifiNetworkInfo];
      wifiManager2 = [currentNetworkSSID2 SSID];
      wifiManager3 = [(HMDSymptomManager *)v62 wifiManager];
      currentNetworkSSID4 = [wifiManager3 currentNetworkSSID];
      if (![wifiManager2 isEqualToString:currentNetworkSSID4])
      {

LABEL_35:
        v71 = objc_autoreleasePoolPush();
        v72 = v62;
        v73 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v74 = HMFGetLogIdentifier();
          wifiManager4 = [(HMDSymptomManager *)v72 wifiManager];
          currentNetworkSSID5 = [wifiManager4 currentNetworkSSID];
          v99 = v71;
          uuid3 = [v101 uuid];
          wifiNetworkInfo2 = [v101 wifiNetworkInfo];
          [wifiNetworkInfo2 SSID];
          v80 = v79 = deviceCopy;
          *buf = 138544130;
          *&buf[4] = v74;
          *&buf[12] = 2112;
          *&buf[14] = currentNetworkSSID5;
          *&buf[22] = 2112;
          v103 = uuid3;
          v104 = 2112;
          v105 = v80;
          _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Mismatched WiFi SSID, current: %@ accessory(%@): %@", buf, 0x2Au);

          deviceCopy = v79;
          v71 = v99;
        }

        objc_autoreleasePoolPop(v71);
        v81 = objc_autoreleasePoolPush();
        v82 = v72;
        v83 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          v84 = HMFGetLogIdentifier();
          idsIdentifier6 = [containerCopy idsIdentifier];
          *buf = 138543618;
          *&buf[4] = v84;
          *&buf[12] = 2112;
          *&buf[14] = idsIdentifier6;
          _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_INFO, "%{public}@Creating WiFi network mismatch symptom for nearby IDS identifier that is not network reachable: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v81);
        v86 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
        [symptomsCopy addObject:v86];

        currentNetworkSSID4 = v101;
        goto LABEL_20;
      }

      v91 = deviceCopy;
      v93 = symptomsCopy;
    }

    else
    {
      v91 = deviceCopy;
      v93 = symptomsCopy;
    }

    nearbyAccessoryUUIDsNotOnCurrentNetwork = [(HMDSymptomManager *)v62 nearbyAccessoryUUIDsNotOnCurrentNetwork];
    uuid4 = [v101 uuid];
    v69 = [nearbyAccessoryUUIDsNotOnCurrentNetwork containsObject:uuid4];

    if (sSID)
    {
    }

    deviceCopy = v91;
    symptomsCopy = v93;
    if ((v69 & 1) == 0)
    {
      currentNetworkSSID4 = v101;
      wifiNetworkInfo3 = [v101 wifiNetworkInfo];

      if (wifiNetworkInfo3)
      {
        goto LABEL_20;
      }

      v39 = objc_autoreleasePoolPush();
      v40 = v62;
      v41 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }

      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v43;
      *&buf[12] = 2112;
      *&buf[14] = v101;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ WiFi info is nil", buf, 0x16u);
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_20:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_handleNetworkDiagnosticSymptoms:(id)symptoms accessory:(id)accessory shouldFilterOutNDFSymptoms:(BOOL)fSymptoms
{
  fSymptomsCopy = fSymptoms;
  v34 = *MEMORY[0x277D85DE8];
  symptomsCopy = symptoms;
  accessoryCopy = accessory;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40_168463];
  [symptomsCopy filterUsingPredicate:v11];

  accessoryNetworkDiagnosticSymptoms = [(HMDSymptomManager *)self accessoryNetworkDiagnosticSymptoms];
  v13 = [accessoryNetworkDiagnosticSymptoms objectForKey:accessoryCopy];

  if (fSymptomsCopy)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v17;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Attempting to filter out network misconfiguration symptoms from: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [v13 na_filter:&__block_literal_global_44_168465];

    v13 = v18;
  }

  if ([v13 count])
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      uuid = [accessoryCopy uuid];
      device = [accessoryCopy device];
      v26 = 138544130;
      v27 = v22;
      v28 = 2112;
      v29 = uuid;
      v30 = 2112;
      v31 = device;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Accessory (%@, device: %@) has these network diagnostic symptoms %@", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    [symptomsCopy addObjectsFromArray:v13];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateSymptomsForRegisteredAccessory:(id)accessory
{
  v57 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  symptomContainerByRegisteredAccessory = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
  v7 = [symptomContainerByRegisteredAccessory objectForKey:accessoryCopy];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    nearbySFDevices = [(HMDSymptomManager *)self nearbySFDevices];
    idsIdentifier = [v7 idsIdentifier];
    v11 = [nearbySFDevices objectForKey:idsIdentifier];

    if ([v11 hasProblem])
    {
      v12 = [objc_opt_class() _symptomsForProblemFlags:{objc_msgSend(v11, "problemFlags")}];
      [v8 unionSet:v12];
    }

    home = [accessoryCopy home];
    featuresDataSource = [home featuresDataSource];
    isNetworkDiagnosticsEnabled = [featuresDataSource isNetworkDiagnosticsEnabled];

    v15 = isNetworkDiagnosticsEnabled & [accessoryCopy supportsNetworkDiagnostics];
    _shouldFilterOutNDFSymptoms = [(HMDSymptomManager *)self _shouldFilterOutNDFSymptoms];
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v36 = v40 = _shouldFilterOutNDFSymptoms;
      uuid = [accessoryCopy uuid];
      [accessoryCopy device];
      v38 = v11;
      v19 = v39 = v15;
      HMFBooleanToString();
      v35 = v37 = v8;
      v20 = HMFBooleanToString();
      v21 = HMFBooleanToString();
      HMFBooleanToString();
      *buf = 138544898;
      v44 = v36;
      v45 = 2112;
      v46 = uuid;
      v47 = 2112;
      v48 = v19;
      v49 = 2112;
      v50 = v35;
      v51 = 2112;
      v52 = v20;
      v22 = v20;
      v53 = 2112;
      v54 = v21;
      v56 = v55 = 2112;
      v23 = v56;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Accessory (%@, device: %@) support network diagnostic: %@, controller enabled diagnostic: %@, use network diagnostics: %@, shouldFilterOutNDFSymptoms: %@", buf, 0x48u);

      v15 = v39;
      v11 = v38;

      v8 = v37;
      _shouldFilterOutNDFSymptoms = v40;
    }

    objc_autoreleasePoolPop(context);
    if (v15)
    {
      [(HMDSymptomManager *)selfCopy _handleNetworkDiagnosticSymptoms:v8 accessory:accessoryCopy shouldFilterOutNDFSymptoms:_shouldFilterOutNDFSymptoms];
    }

    [(HMDSymptomManager *)selfCopy _handleWiFiRepairV2AndLegacySymptoms:v8 nearbySFDevice:v11 accessory:accessoryCopy symptomContainer:v7 fallbackToRepairV2:_shouldFilterOutNDFSymptoms & 1 | ((v15 & 1) == 0)];
    [(HMDSymptomManager *)selfCopy _handleCaptivePortalSymptoms:v8 nearbySFDevice:v11 accessory:accessoryCopy];
    delegate = [v7 delegate];
    symptoms = [v7 symptoms];
    v26 = [symptoms isEqualToSet:v8];

    if ((v26 & 1) == 0)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        [v7 idsIdentifier];
        v32 = v31 = v11;
        *buf = 138543874;
        v44 = v30;
        v45 = 2112;
        v46 = v32;
        v47 = 2112;
        v48 = v8;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Updating symptoms for accessory with IDS identifier %@: %@", buf, 0x20u);

        v11 = v31;
      }

      objc_autoreleasePoolPop(v27);
      [v7 setSymptoms:v8];
      [delegate symptomManager:v28 didChangeSymptoms:v8];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_updateSymptomsForRegisteredAccessoryWithIDSIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDSymptomManager *)self _registeredAccessoryWithIDSIdentifier:identifierCopy];
  if (v6)
  {
    [(HMDSymptomManager *)self _updateSymptomsForRegisteredAccessory:v6];
    nearbyAccessoryUUIDsNotOnCurrentNetwork = [(HMDSymptomManager *)self nearbyAccessoryUUIDsNotOnCurrentNetwork];
    uuid = [v6 uuid];
    v9 = [nearbyAccessoryUUIDsNotOnCurrentNetwork containsObject:uuid];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Peforming network mismatch fetch as accessory is in list", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDSymptomManager *)selfCopy updateNetworkMismatchInfoWithCompletionHandler:&__block_literal_global_35_168475];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateSymptoms:(id)symptoms forIDSIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  symptomsCopy = symptoms;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v20 = v11;
    v21 = 2112;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = symptomsCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory with IDS identifier %@ has these network diagnostic symptoms %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMDSymptomManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDSymptomManager__updateSymptoms_forIDSIdentifier___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = selfCopy;
  v17 = identifierCopy;
  v18 = symptomsCopy;
  v13 = symptomsCopy;
  v14 = identifierCopy;
  dispatch_async(workQueue, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __54__HMDSymptomManager__updateSymptoms_forIDSIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _registeredAccessoryWithIDSIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) accessoryNetworkDiagnosticSymptoms];
    [v3 setObject:*(a1 + 48) forKey:v4];

    [*(a1 + 32) _updateSymptomsForRegisteredAccessory:v4];
    v2 = v4;
  }
}

- (id)_registeredAccessoryWithIDSIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  symptomContainerByRegisteredAccessory = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
  v7 = [symptomContainerByRegisteredAccessory countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(symptomContainerByRegisteredAccessory);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        symptomContainerByRegisteredAccessory2 = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
        v13 = [symptomContainerByRegisteredAccessory2 objectForKey:v11];

        idsIdentifier = [v13 idsIdentifier];
        v15 = [idsIdentifier isEqualToString:identifierCopy];

        if (v15)
        {
          v16 = v11;

          goto LABEL_11;
        }
      }

      v8 = [symptomContainerByRegisteredAccessory countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_initiateFixForAccessory:(id)accessory completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  completionCopy = completion;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  device = [accessoryCopy device];
  idsIdentifier = [device idsIdentifier];
  uUIDString = [idsIdentifier UUIDString];

  if (uUIDString)
  {
    nearbySFDevices = [(HMDSymptomManager *)self nearbySFDevices];
    v13 = [nearbySFDevices objectForKey:uUIDString];

    if (v13)
    {
      v14 = [(HMDSymptomManager *)self _symptomsForRegisteredAccessory:accessoryCopy];
      v15 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
      v16 = [v14 containsObject:v15];

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v31 = 138543874;
        v32 = v20;
        v33 = 2112;
        v34 = v13;
        v35 = 1024;
        v36 = v16;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Asking SFClient to repair device %@ with flags %d", &v31, 0x1Cu);
      }

      objc_autoreleasePoolPop(v17);
      deviceDiscovery = [(HMDSymptomManager *)selfCopy deviceDiscovery];
      [deviceDiscovery repairDevice:v13 flags:v16 completion:completionCopy];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v29;
        v33 = 2112;
        v34 = accessoryCopy;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Sharing has not discovered SFDevice for %@, not initiating fix process.", &v31, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      completionCopy[2](completionCopy, v14);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v25;
      v33 = 2112;
      v34 = accessoryCopy;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@The accessory (%@) does not have idsIdentifier, not initiating fix process.", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, v13);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_symptomsForRegisteredAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  symptomContainerByRegisteredAccessory = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
  v7 = [symptomContainerByRegisteredAccessory objectForKey:accessoryCopy];

  symptoms = [v7 symptoms];
  v9 = symptoms;
  if (symptoms)
  {
    v10 = symptoms;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  v11 = v10;

  return v11;
}

- (void)_registerForCurrentDeviceSymptoms
{
  v15 = *MEMORY[0x277D85DE8];
  sharingClientFactory = [(HMDSymptomManager *)self sharingClientFactory];
  v4 = sharingClientFactory[2]();

  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__HMDSymptomManager__registerForCurrentDeviceSymptoms__block_invoke;
    v12[3] = &unk_278688DF8;
    v12[4] = self;
    [v4 getProblemFlagsWithCompletionHandler:v12];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Device doesn't support retrieving problem flags.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  workQueue = [(HMDSymptomManager *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HMDSymptomManager__registerForCurrentDeviceSymptoms__block_invoke_28;
  v11[3] = &unk_278681818;
  v11[4] = self;
  notify_register_dispatch("com.apple.sharing.problems", &self->_deviceProblemNotificationToken, workQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __54__HMDSymptomManager__registerForCurrentDeviceSymptoms__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v9;
    v13 = 2048;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Setting current device problem flags on start %llu, error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 32) setCurrentDeviceProblemFlags:a2];

  v10 = *MEMORY[0x277D85DE8];
}

void __54__HMDSymptomManager__registerForCurrentDeviceSymptoms__block_invoke_28(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sharingClientFactory];
  v3 = v2[2]();

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Current device problem flags changed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__HMDSymptomManager__registerForCurrentDeviceSymptoms__block_invoke_29;
    v13[3] = &unk_278688DF8;
    v13[4] = *(a1 + 32);
    [v3 getProblemFlagsWithCompletionHandler:v13];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Device doesn't support retrieving problem flags.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __54__HMDSymptomManager__registerForCurrentDeviceSymptoms__block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v9;
    v13 = 2048;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Setting current device problem flags to %llu, error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 32) setCurrentDeviceProblemFlags:a2];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_stopCompanionLinkClient
{
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  companionLinkClient = [(HMDSymptomManager *)self companionLinkClient];
  [companionLinkClient setDeviceFoundHandler:0];

  companionLinkClient2 = [(HMDSymptomManager *)self companionLinkClient];
  [companionLinkClient2 setDeviceChangedHandler:0];

  companionLinkClient3 = [(HMDSymptomManager *)self companionLinkClient];
  [companionLinkClient3 setDeviceLostHandler:0];

  companionLinkClient4 = [(HMDSymptomManager *)self companionLinkClient];
  [companionLinkClient4 stop];
}

- (void)_stopDeviceDiscovery
{
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  deviceDiscovery = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery setDeviceFoundHandler:0];

  deviceDiscovery2 = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery2 setDeviceChangedHandler:0];

  deviceDiscovery3 = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery3 setDeviceLostHandler:0];

  deviceDiscovery4 = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery4 stop];
}

- (void)_stop
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping SFDeviceDiscovery and RPCompanionLinkClient in HMDSymptomManager.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDSymptomManager *)selfCopy _stopDeviceDiscovery];
  [(HMDSymptomManager *)selfCopy _stopCompanionLinkClient];
  nearbySFDevices = [(HMDSymptomManager *)selfCopy nearbySFDevices];
  [nearbySFDevices removeAllObjects];

  networkReachableRPCompanionLinkDevices = [(HMDSymptomManager *)selfCopy networkReachableRPCompanionLinkDevices];
  [networkReachableRPCompanionLinkDevices removeAllObjects];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startCompanionLinkClient
{
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  workQueue2 = [(HMDSymptomManager *)self workQueue];
  companionLinkClient = [(HMDSymptomManager *)self companionLinkClient];
  [companionLinkClient setDispatchQueue:workQueue2];

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__HMDSymptomManager__startCompanionLinkClient__block_invoke;
  v19[3] = &unk_27867CA08;
  objc_copyWeak(&v20, &location);
  companionLinkClient2 = [(HMDSymptomManager *)self companionLinkClient];
  [companionLinkClient2 setDeviceFoundHandler:v19];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__HMDSymptomManager__startCompanionLinkClient__block_invoke_21;
  v17[3] = &unk_27867CA30;
  objc_copyWeak(&v18, &location);
  companionLinkClient3 = [(HMDSymptomManager *)self companionLinkClient];
  [companionLinkClient3 setDeviceChangedHandler:v17];

  v15 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v16, &location);
  v8 = [(HMDSymptomManager *)self companionLinkClient:v15];
  [v8 setDeviceLostHandler:&v15];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting RPCompanionLinkClient in HMDSymptomManager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  companionLinkClient4 = [(HMDSymptomManager *)selfCopy companionLinkClient];
  [companionLinkClient4 start];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
}

void __46__HMDSymptomManager__startCompanionLinkClient__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Found RPCompanionLinkDevice: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v3 idsDeviceIdentifier];

  if (v10)
  {
    [v7 _rpDeviceFoundHandler:v3];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__HMDSymptomManager__startCompanionLinkClient__block_invoke_21(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@RPCompanionLinkDevice %@ changed", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v3 idsDeviceIdentifier];

  if (v10)
  {
    [v7 _rpDeviceChangedHandler:v3];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__HMDSymptomManager__startCompanionLinkClient__block_invoke_23(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Lost RPCompanionLinkDevice: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v3 idsDeviceIdentifier];

  if (v10)
  {
    [v7 _rpDeviceLostHandler:v3];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_startDeviceDiscovery
{
  v26 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  workQueue2 = [(HMDSymptomManager *)self workQueue];
  deviceDiscovery = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery setDispatchQueue:workQueue2];

  deviceDiscoveryFlags = [(HMDSymptomManager *)self deviceDiscoveryFlags];
  deviceDiscovery2 = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery2 setDiscoveryFlags:deviceDiscoveryFlags];

  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__HMDSymptomManager__startDeviceDiscovery__block_invoke;
  v21[3] = &unk_27867C9B8;
  objc_copyWeak(&v22, &location);
  deviceDiscovery3 = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery3 setDeviceFoundHandler:v21];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__HMDSymptomManager__startDeviceDiscovery__block_invoke_2;
  v19[3] = &unk_27867C9E0;
  objc_copyWeak(&v20, &location);
  deviceDiscovery4 = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery4 setDeviceChangedHandler:v19];

  v17 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v18, &location);
  v10 = [(HMDSymptomManager *)self deviceDiscovery:v17];
  [v10 setDeviceLostHandler:&v17];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Starting SFDeviceDiscovery in HMDSymptomManager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  deviceDiscovery5 = [(HMDSymptomManager *)selfCopy deviceDiscovery];
  [deviceDiscovery5 start];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  v16 = *MEMORY[0x277D85DE8];
}

void __42__HMDSymptomManager__startDeviceDiscovery__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v6 idsIdentifier];

  if (v5)
  {
    [WeakRetained _sfDeviceLostHandler:v6];
  }
}

- (void)_start
{
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDSymptomManager *)self _startDeviceDiscovery];

  [(HMDSymptomManager *)self _startCompanionLinkClient];
}

- (void)setCurrentDeviceProblemFlags:(unint64_t)flags
{
  os_unfair_lock_lock_with_options();
  self->_currentDeviceProblemFlags = flags;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)currentDeviceProblemFlags
{
  os_unfair_lock_lock_with_options();
  currentDeviceProblemFlags = self->_currentDeviceProblemFlags;
  os_unfair_lock_unlock(&self->_lock);
  return currentDeviceProblemFlags;
}

- (void)setDeviceDiscoveryFlags:(unint64_t)flags
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_deviceDiscoveryFlags != flags)
  {
    self->_deviceDiscoveryFlags = flags;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    nearbySFDevices = [(HMDSymptomManager *)self nearbySFDevices];
    v7 = NSAllMapTableValues(nearbySFDevices);

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(HMDSymptomManager *)self _sfDeviceLostHandler:*(*(&v15 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    symptomContainerByRegisteredAccessory = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
    v13 = [symptomContainerByRegisteredAccessory count];

    if (v13)
    {
      [(HMDSymptomManager *)self _stopDeviceDiscovery];
      [(HMDSymptomManager *)self _startDeviceDiscovery];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)initiateFixForAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  workQueue = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDSymptomManager_initiateFixForAccessory_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = accessoryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = accessoryCopy;
  dispatch_async(workQueue, block);
}

- (void)stopDiscoveringSymptomsRequiringNearbyInfo
{
  workQueue = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDSymptomManager_stopDiscoveringSymptomsRequiringNearbyInfo__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __63__HMDSymptomManager_stopDiscoveringSymptomsRequiringNearbyInfo__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping discovery for symptoms requiring nearby info", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setDeviceDiscoveryFlags:0x10000];
  [*(a1 + 32) setNearbyAccessoryUUIDsNotOnCurrentNetwork:MEMORY[0x277CBEBF8]];
  v6 = *(a1 + 32);
  v7 = [v6 discoveryAssertion];
  [v6 releaseDiscoveryAssertionWithAssertionHandle:v7];

  [*(a1 + 32) setDiscoveryAssertion:0];
  [*(a1 + 32) stopNetworkDiagnosticsObservation];
  v8 = [*(a1 + 32) accessoryNetworkDiagnosticSymptoms];
  [v8 removeAllObjects];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startDiscoveringSymptomsRequiringNearbyInfo
{
  workQueue = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting discovery for symptoms requiring nearby info", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setDeviceDiscoveryFlags:65537];
  v6 = *(a1 + 32);
  v7 = [v6 discoveryAssertion];
  [v6 releaseDiscoveryAssertionWithAssertionHandle:v7];

  v8 = [*(a1 + 32) obtainDiscoveryAssertion];
  [*(a1 + 32) setDiscoveryAssertion:v8];

  objc_initWeak(buf, *(a1 + 32));
  v9 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke_17;
  v11[3] = &unk_278686B80;
  objc_copyWeak(&v12, buf);
  [v9 updateNetworkMismatchInfoWithCompletionHandler:v11];
  [*(a1 + 32) startNetworkDiagnosticsObservation];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke_2;
  block[3] = &unk_27868A728;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

void __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) nearbyAccessoryUUIDsNotOnCurrentNetwork];
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Updated network mismatch accessories with current network to %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 32) nearbyAccessoryUUIDsNotConnectToPrimaryResident];
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updated accessories disconnected with primary resident to %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)deregisterAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDSymptomManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDSymptomManager_deregisterAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __41__HMDSymptomManager_deregisterAccessory___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) symptomContainerByRegisteredAccessory];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v14 = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Deregistering accessory: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [*(a1 + 32) symptomContainerByRegisteredAccessory];
    [v9 removeObjectForKey:*(a1 + 40)];

    v10 = [*(a1 + 32) accessoryNetworkDiagnosticSymptoms];
    [v10 removeObjectForKey:*(a1 + 40)];

    v11 = [*(a1 + 32) symptomContainerByRegisteredAccessory];
    v12 = [v11 count];

    if (!v12)
    {
      [*(a1 + 32) _stop];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerAccessory:(id)accessory delegate:(id)delegate
{
  accessoryCopy = accessory;
  delegateCopy = delegate;
  workQueue = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDSymptomManager_registerAccessory_delegate___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = accessoryCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = accessoryCopy;
  dispatch_async(workQueue, block);
}

void __48__HMDSymptomManager_registerAccessory_delegate___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) supportsRegisteringAccessories])
  {
    v2 = [*(a1 + 40) idsIdentifier];
    v3 = [v2 UUIDString];

    if (v3)
    {
      v4 = [*(a1 + 32) symptomContainerByRegisteredAccessory];
      v5 = [v4 objectForKey:*(a1 + 40)];

      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (!v5)
      {
        if (v9)
        {
          v20 = HMFGetLogIdentifier();
          v21 = *(a1 + 40);
          v33 = 138543874;
          v34 = v20;
          v35 = 2112;
          v36 = v21;
          v37 = 2112;
          v38 = v3;
          _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering accessory (%@) for idsIdentifier %@", &v33, 0x20u);
        }

        objc_autoreleasePoolPop(v6);
        v22 = [[HMDSymptomContainer alloc] initWithIDSIdentifier:v3];
        [(HMDSymptomContainer *)v22 setDelegate:*(a1 + 48)];
        v23 = [*(a1 + 32) symptomContainerByRegisteredAccessory];
        [v23 setObject:v22 forKey:*(a1 + 40)];

        v24 = [*(a1 + 32) symptomContainerByRegisteredAccessory];
        v25 = [v24 count];

        v26 = *(a1 + 32);
        if (v25 == 1)
        {
          [v26 _start];
        }

        else
        {
          [v26 _updateSymptomsForRegisteredAccessory:*(a1 + 40)];
          v27 = [*(a1 + 32) nearbySFDevices];
          v28 = [v27 objectForKey:v3];

          if (v28)
          {
            v29 = *(a1 + 48);
            v30 = *(a1 + 32);
            v31 = [v28 identifier];
            [v29 symptomManager:v30 didChangeSFDeviceIdentifier:v31];
          }
        }

        goto LABEL_21;
      }

      if (v9)
      {
        v10 = HMFGetLogIdentifier();
        v11 = *(a1 + 40);
        v33 = 138543618;
        v34 = v10;
        v35 = 2112;
        v36 = v11;
        v12 = "%{public}@The accessory (%@) is already registered.";
        v13 = v8;
        v14 = OS_LOG_TYPE_INFO;
LABEL_11:
        _os_log_impl(&dword_229538000, v13, v14, v12, &v33, 0x16u);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v19 = *(a1 + 40);
        v33 = 138543618;
        v34 = v10;
        v35 = 2112;
        v36 = v19;
        v12 = "%{public}@The accessory (%@) does not have idsIdentifier, not registering for the discovery.";
        v13 = v8;
        v14 = OS_LOG_TYPE_ERROR;
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v6);
LABEL_21:

    goto LABEL_22;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@This device doesn't support registering accessories", &v33, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_22:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  deviceProblemNotificationToken = self->_deviceProblemNotificationToken;
  if (deviceProblemNotificationToken != -1)
  {
    notify_cancel(deviceProblemNotificationToken);
  }

  deviceDiscovery = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery stop];

  companionLinkClient = [(HMDSymptomManager *)self companionLinkClient];
  [companionLinkClient stop];

  v6.receiver = self;
  v6.super_class = HMDSymptomManager;
  [(HMDSymptomManager *)&v6 dealloc];
}

- (HMDSymptomManager)initWithQueue:(id)queue dataSource:(id)source supportsRegistering:(BOOL)registering supportsCurrentDeviceSymptoms:(BOOL)symptoms deviceDiscovery:(id)discovery companionLinkClient:(id)client wifiManager:(id)manager notificationCenter:(id)self0 sharingClientFactory:(id)self1
{
  symptomsCopy = symptoms;
  queueCopy = queue;
  sourceCopy = source;
  discoveryCopy = discovery;
  clientCopy = client;
  managerCopy = manager;
  centerCopy = center;
  factoryCopy = factory;
  v39.receiver = self;
  v39.super_class = HMDSymptomManager;
  v20 = [(HMDSymptomManager *)&v39 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_workQueue, queue);
    objc_storeWeak(&v21->_dataSource, sourceCopy);
    v22 = _Block_copy(factoryCopy);
    sharingClientFactory = v21->_sharingClientFactory;
    v21->_sharingClientFactory = v22;

    objc_storeStrong(&v21->_deviceDiscovery, discovery);
    objc_storeStrong(&v21->_companionLinkClient, client);
    objc_storeStrong(&v21->_wifiManager, manager);
    objc_storeStrong(&v21->_notificationCenter, center);
    v21->_supportsRegisteringAccessories = registering;
    v21->_supportsCurrentDeviceSymptoms = symptomsCopy;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    symptomContainerByRegisteredAccessory = v21->_symptomContainerByRegisteredAccessory;
    v21->_symptomContainerByRegisteredAccessory = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    nearbySFDevices = v21->_nearbySFDevices;
    v21->_nearbySFDevices = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    networkReachableRPCompanionLinkDevices = v21->_networkReachableRPCompanionLinkDevices;
    v21->_networkReachableRPCompanionLinkDevices = strongToStrongObjectsMapTable3;

    strongToStrongObjectsMapTable4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryNetworkDiagnosticSymptoms = v21->_accessoryNetworkDiagnosticSymptoms;
    v21->_accessoryNetworkDiagnosticSymptoms = strongToStrongObjectsMapTable4;

    v21->_deviceDiscoveryFlags = 0x10000;
    v21->_deviceProblemNotificationToken = -1;
    nearbyAccessoryUUIDsNotOnCurrentNetwork = v21->_nearbyAccessoryUUIDsNotOnCurrentNetwork;
    v21->_nearbyAccessoryUUIDsNotOnCurrentNetwork = MEMORY[0x277CBEBF8];

    [(NSNotificationCenter *)v21->_notificationCenter addObserver:v21 selector:sel_handleAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];
    [(NSNotificationCenter *)v21->_notificationCenter addObserver:v21 selector:sel_handleAccessoryWiFiNetworkInfoUpdatedNotification_ name:@"HMDAppleMediaAccessoryWiFiNetworkInfoUpdatedNotification" object:0];
    [(NSNotificationCenter *)v21->_notificationCenter addObserver:v21 selector:sel_handleCurrentNetworkDidChangeNotification_ name:*MEMORY[0x277D0F768] object:0];
  }

  if (symptomsCopy)
  {
    [(HMDSymptomManager *)v21 _registerForCurrentDeviceSymptoms];
  }

  return v21;
}

- (HMDSymptomManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = HMDispatchQueueNameString();
  uTF8String = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(uTF8String, v7);

  v9 = objc_alloc_init(HMDSharingDeviceDiscovery);
  v10 = objc_alloc_init(HMDCompanionLinkClient);
  mEMORY[0x277D0F950] = [MEMORY[0x277D0F950] sharedManager];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [(HMDSymptomManager *)self initWithQueue:v8 dataSource:sourceCopy supportsRegistering:+[HMDDeviceCapabilities supportsCurrentDeviceSymptoms:"supportsSymptomsHandler"]deviceDiscovery:0 companionLinkClient:v9 wifiManager:v10 notificationCenter:mEMORY[0x277D0F950] sharingClientFactory:defaultCenter, &__block_literal_global_168549];

  return v13;
}

id __40__HMDSymptomManager_initWithDataSource___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D54C30]);

  return v0;
}

void __32__HMDSymptomManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v54_168562;
  logCategory__hmf_once_v54_168562 = v1;
}

+ (id)_symptomsForProblemFlags:(unint64_t)flags
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v8;
    v33 = 2048;
    flagsCopy = flags;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Parsing problem flags %llu to HMSymptoms", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CBEB58] set];
  if ((flags & 2) != 0)
  {
    v16 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:1];
    [v9 addObject:v16];

    if ((flags & 4) == 0)
    {
LABEL_5:
      if ((flags & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }
  }

  else if ((flags & 4) == 0)
  {
    goto LABEL_5;
  }

  v17 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:2];
  [v9 addObject:v17];

  if ((flags & 8) == 0)
  {
LABEL_6:
    if ((flags & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:3];
  [v9 addObject:v18];

  if ((flags & 0x10) == 0)
  {
LABEL_7:
    if ((flags & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:4];
  [v9 addObject:v19];

  if ((flags & 0x40) == 0)
  {
LABEL_8:
    if ((flags & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:5];
  [v9 addObject:v20];

  if ((flags & 0x80) == 0)
  {
LABEL_9:
    if ((flags & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:6];
  [v9 addObject:v21];

  if ((flags & 0x100) == 0)
  {
LABEL_10:
    if ((flags & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v22 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:7];
  [v9 addObject:v22];

  if ((flags & 0x2000) == 0)
  {
LABEL_11:
    if ((flags & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v23 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:8];
  [v9 addObject:v23];

  if ((flags & 0x1000) == 0)
  {
LABEL_12:
    if ((flags & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v24 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:9];
  [v9 addObject:v24];

  if ((flags & 0x4000) == 0)
  {
LABEL_13:
    if ((flags & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v25 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:10];
  [v9 addObject:v25];

  if ((flags & 0x8000) == 0)
  {
LABEL_14:
    if ((flags & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v26 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:13];
  [v9 addObject:v26];

  if ((flags & 0x10000) == 0)
  {
LABEL_15:
    if ((flags & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v27 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:14];
  [v9 addObject:v27];

  if ((flags & 0x40000) == 0)
  {
LABEL_16:
    if ((flags & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v28 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:16];
  [v9 addObject:v28];

  if ((flags & 0x100000) == 0)
  {
LABEL_17:
    if ((flags & 0x80000) == 0)
    {
      goto LABEL_18;
    }

LABEL_40:
    v30 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:18];
    [v9 addObject:v30];

    if ((flags & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  v29 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:17];
  [v9 addObject:v29];

  if ((flags & 0x80000) != 0)
  {
    goto LABEL_40;
  }

LABEL_18:
  if ((flags & 0x20000) != 0)
  {
LABEL_19:
    v10 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:20];
    [v9 addObject:v10];
  }

LABEL_20:
  v11 = [v9 count];
  if ((flags & 0x20) != 0 && v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:1000];
    [v9 addObject:v12];
  }

  v13 = [v9 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)accessoryIsConfiguring:(id)configuring
{
  configuringCopy = configuring;
  home = [configuringCopy home];
  homeManager = [home homeManager];
  uuid = [configuringCopy uuid];

  v7 = [homeManager accessorySetupMetricDispatcherForAccessoryUUID:uuid];

  if (v7)
  {
    v8 = [v7 submitted] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end