@interface HMDSymptomManager
+ (BOOL)accessoryIsConfiguring:(id)configuring;
+ (id)_symptomsForProblemFlags:(unint64_t)flags;
+ (id)logCategory;
- (HMDSymptomManager)initWithDataSource:(id)source;
- (HMDSymptomManager)initWithQueue:(id)queue dataSource:(id)source supportsRegistering:(BOOL)registering supportsCurrentDeviceSymptoms:(BOOL)symptoms deviceDiscovery:(id)discovery companionLinkClient:(id)client wifiManager:(id)manager notificationCenter:(id)self0 sharingClientFactory:(id)self1;
- (HMDSymptomManagerDataSource)dataSource;
- (id)_registeredAccessoryWithIDSIdentifier:(id)identifier;
- (id)_symptomsForRegisteredAccessory:(id)accessory;
- (id)obtainDiscoveryAssertion;
- (unint64_t)currentDeviceProblemFlags;
- (void)_handleCaptivePortalSymptoms:(id)symptoms nearbySFDevice:(id)device accessory:(id)accessory;
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
- (void)stopDiscoveringSymptomsRequiringNearbyInfo;
- (void)updateNetworkMismatchInfoWithCompletionHandler:(id)handler;
@end

@implementation HMDSymptomManager

- (void)updateNetworkMismatchInfoWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_253CD0B58();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_253D491D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_253D48C28;
  v13[5] = v12;
  selfCopy = self;
  sub_253227FA0(0, 0, v8, &unk_253D48C30, v13);
}

- (id)obtainDiscoveryAssertion
{
  selfCopy = self;
  sub_25322628C(v5);

  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3 = sub_253CD1108();
  __swift_destroy_boxed_opaque_existential_0(v5);

  return v3;
}

- (void)releaseDiscoveryAssertionWithAssertionHandle:(id)handle
{
  if (handle)
  {
    swift_unknownObjectRetain();
    sub_253CD0E18();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_2532264A0(v6, v4);
  if (v5)
  {
    type metadata accessor for AssertionHandle();
    if (swift_dynamicCast())
    {
      sub_25321D668();
    }

    v3 = v6;
  }

  else
  {
    sub_253226510(v6);
    v3 = v4;
  }

  sub_253226510(v3);
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
  block[3] = &unk_279735D00;
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
    v14[3] = &unk_2797359B0;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain accessory from WiFi network info change notification: %@", buf, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Lost RPCompanionLinkDevice: %@", &v14, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@RPCompanionLinkDevice %@ changed", &v26, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@RPCompanionLinkDevice %@ changed", &v26, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Did not find RPCompanionLinkDevice %@ in the network reachable RPCompanionLinkDevices: %@", &v26, 0x20u);
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Found new RPCompanionLinkDevice: %@)", &v14, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Lost SFDevice: %@", &v18, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@SFDevice %@ changed", &v21, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Did not find SFDevice %@ in the nearby SFDevices, so treating it as a found device", &v21, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Found new SFDevice: %@", &v19, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Received captive network auth symptom, creating captive lease renewal symptom", buf, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Creating captive lease renewal symptom, WiFi SSID: %@", buf, 0x16u);

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
  v68 = *MEMORY[0x277D85DE8];
  symptomsCopy = symptoms;
  deviceCopy = device;
  accessoryCopy = accessory;
  containerCopy = container;
  if (!deviceCopy || !v2Copy)
  {
    goto LABEL_5;
  }

  networkReachableRPCompanionLinkDevices = [(HMDSymptomManager *)self networkReachableRPCompanionLinkDevices];
  idsIdentifier = [containerCopy idsIdentifier];
  v18 = [networkReachableRPCompanionLinkDevices objectForKey:idsIdentifier];
  if (v18)
  {

    goto LABEL_5;
  }

  wifiManager = [(HMDSymptomManager *)self wifiManager];
  currentNetworkSSID = [wifiManager currentNetworkSSID];

  if (!currentNetworkSSID)
  {
    goto LABEL_5;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy = self;
  v24 = HMFGetOSLogHandle();
  v58 = selfCopy;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    wifiManager = HMFGetLogIdentifier();
    uuid = [accessoryCopy uuid];
    wifiManager2 = [(HMDSymptomManager *)selfCopy wifiManager];
    [wifiManager2 currentNetworkSSID];
    v27 = v55 = v22;
    *buf = 138543874;
    v61 = wifiManager;
    v62 = 2112;
    v63 = uuid;
    v64 = 2112;
    v65 = v27;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Accessory: %@ is not reachable over local network: %@", buf, 0x20u);

    v22 = v55;
    selfCopy = v58;
  }

  objc_autoreleasePoolPop(v22);
  wifiNetworkInfo = [accessoryCopy wifiNetworkInfo];
  sSID = [wifiNetworkInfo SSID];
  if (sSID)
  {
    wifiNetworkInfo2 = [accessoryCopy wifiNetworkInfo];
    self = [wifiNetworkInfo2 SSID];
    selfCopy = [(HMDSymptomManager *)selfCopy wifiManager];
    wifiManager = [(HMDSymptomManager *)selfCopy currentNetworkSSID];
    if (![(HMDSymptomManager *)self isEqualToString:wifiManager])
    {

      goto LABEL_21;
    }

    v56 = wifiNetworkInfo;
    [(HMDSymptomManager *)v58 nearbyAccessoryUUIDsNotOnCurrentNetwork];
  }

  else
  {
    v56 = wifiNetworkInfo;
    [(HMDSymptomManager *)v58 nearbyAccessoryUUIDsNotOnCurrentNetwork];
  }
  v31 = ;
  uuid2 = [accessoryCopy uuid];
  v53 = [v31 containsObject:uuid2];

  if (sSID)
  {
  }

  if ((v53 & 1) == 0)
  {
    wifiNetworkInfo3 = [accessoryCopy wifiNetworkInfo];

    if (!wifiNetworkInfo3)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v58;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v61 = v37;
        v62 = 2112;
        v63 = accessoryCopy;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ WiFi info is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
    }

    goto LABEL_5;
  }

LABEL_21:
  v38 = objc_autoreleasePoolPush();
  v39 = v58;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = HMFGetLogIdentifier();
    wifiManager3 = [(HMDSymptomManager *)v39 wifiManager];
    currentNetworkSSID2 = [wifiManager3 currentNetworkSSID];
    [accessoryCopy uuid];
    v43 = v59 = v38;
    wifiNetworkInfo4 = [accessoryCopy wifiNetworkInfo];
    sSID2 = [wifiNetworkInfo4 SSID];
    *buf = 138544130;
    v61 = v41;
    v62 = 2112;
    v63 = currentNetworkSSID2;
    v64 = 2112;
    v65 = v43;
    v66 = 2112;
    v67 = sSID2;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Mismatched WiFi SSID, current: %@ accessory(%@): %@", buf, 0x2Au);

    v38 = v59;
  }

  objc_autoreleasePoolPop(v38);
  v45 = objc_autoreleasePoolPush();
  v46 = v39;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = HMFGetLogIdentifier();
    idsIdentifier2 = [containerCopy idsIdentifier];
    *buf = 138543618;
    v61 = v48;
    v62 = 2112;
    v63 = idsIdentifier2;
    _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Creating WiFi network mismatch symptom for nearby IDS identifier that is not network reachable: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v45);
  v50 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
  [symptomsCopy addObject:v50];

LABEL_5:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateSymptomsForRegisteredAccessory:(id)accessory
{
  v48 = *MEMORY[0x277D85DE8];
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

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      uuid = [accessoryCopy uuid];
      [accessoryCopy device];
      v16 = v32 = v8;
      v30 = HMFBooleanToString();
      v17 = HMFBooleanToString();
      v18 = HMFBooleanToString();
      HMFBooleanToString();
      v19 = v33 = v13;
      *buf = 138544898;
      v35 = v31;
      v36 = 2112;
      v37 = uuid;
      v38 = 2112;
      v39 = v16;
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = v17;
      v44 = 2112;
      v45 = v18;
      v46 = 2112;
      v47 = v19;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Accessory (%@, device: %@) support network diagnostic: %@, controller enabled diagnostic: %@, use network diagnostics: %@, shouldFilterOutNDFSymptoms: %@", buf, 0x48u);

      v8 = v32;
      v13 = v33;
    }

    objc_autoreleasePoolPop(v13);
    [(HMDSymptomManager *)selfCopy _handleWiFiRepairV2AndLegacySymptoms:v8 nearbySFDevice:v11 accessory:accessoryCopy symptomContainer:v7 fallbackToRepairV2:1];
    [(HMDSymptomManager *)selfCopy _handleCaptivePortalSymptoms:v8 nearbySFDevice:v11 accessory:accessoryCopy];
    delegate = [v7 delegate];
    symptoms = [v7 symptoms];
    v22 = [symptoms isEqualToSet:v8];

    if ((v22 & 1) == 0)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        idsIdentifier2 = [v7 idsIdentifier];
        *buf = 138543874;
        v35 = v26;
        v36 = 2112;
        v37 = idsIdentifier2;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Updating symptoms for accessory with IDS identifier %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      [v7 setSymptoms:v8];
      [delegate symptomManager:v24 didChangeSymptoms:v8];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Peforming network mismatch fetch as accessory is in list", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDSymptomManager *)selfCopy updateNetworkMismatchInfoWithCompletionHandler:&__block_literal_global_35_111940];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Asking SFClient to repair device %@ with flags %d", &v31, 0x1Cu);
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
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Sharing has not discovered SFDevice for %@, not initiating fix process.", &v31, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@The accessory (%@) does not have idsIdentifier, not initiating fix process.", &v31, 0x16u);
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
    v12[3] = &unk_279734E28;
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Device doesn't support retrieving problem flags.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  workQueue = [(HMDSymptomManager *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HMDSymptomManager__registerForCurrentDeviceSymptoms__block_invoke_28;
  v11[3] = &unk_279732E48;
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Setting current device problem flags on start %llu, error: %@", &v11, 0x20u);
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Current device problem flags changed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__HMDSymptomManager__registerForCurrentDeviceSymptoms__block_invoke_29;
    v13[3] = &unk_279734E28;
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Device doesn't support retrieving problem flags.", buf, 0xCu);
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Setting current device problem flags to %llu, error: %@", &v11, 0x20u);
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping SFDeviceDiscovery and RPCompanionLinkClient in HMDSymptomManager.", &v11, 0xCu);
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
  v19[3] = &unk_27972FEB8;
  objc_copyWeak(&v20, &location);
  companionLinkClient2 = [(HMDSymptomManager *)self companionLinkClient];
  [companionLinkClient2 setDeviceFoundHandler:v19];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__HMDSymptomManager__startCompanionLinkClient__block_invoke_21;
  v17[3] = &unk_27972FEE0;
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
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting RPCompanionLinkClient in HMDSymptomManager", buf, 0xCu);
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Found RPCompanionLinkDevice: %@", &v12, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@RPCompanionLinkDevice %@ changed", &v12, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Lost RPCompanionLinkDevice: %@", &v12, 0x16u);
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
  v21[3] = &unk_27972B3F0;
  objc_copyWeak(&v22, &location);
  deviceDiscovery3 = [(HMDSymptomManager *)self deviceDiscovery];
  [deviceDiscovery3 setDeviceFoundHandler:v21];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__HMDSymptomManager__startDeviceDiscovery__block_invoke_2;
  v19[3] = &unk_27972B418;
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
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Starting SFDeviceDiscovery in HMDSymptomManager", buf, 0xCu);
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
  block[3] = &unk_2797355D0;
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
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __63__HMDSymptomManager_stopDiscoveringSymptomsRequiringNearbyInfo__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping discovery for symptoms requiring nearby info", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setDeviceDiscoveryFlags:0x10000];
  [*(a1 + 32) setNearbyAccessoryUUIDsNotOnCurrentNetwork:MEMORY[0x277CBEBF8]];
  v6 = *(a1 + 32);
  v7 = [v6 discoveryAssertion];
  [v6 releaseDiscoveryAssertionWithAssertionHandle:v7];

  result = [*(a1 + 32) setDiscoveryAssertion:0];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startDiscoveringSymptomsRequiringNearbyInfo
{
  workQueue = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting discovery for symptoms requiring nearby info", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  [v7 setDeviceDiscoveryFlags:65537];
  v8 = *v6;
  v9 = [*v6 discoveryAssertion];
  [v8 releaseDiscoveryAssertionWithAssertionHandle:v9];

  v10 = [*v6 obtainDiscoveryAssertion];
  [*v6 setDiscoveryAssertion:v10];

  objc_initWeak(buf, *v6);
  v11 = *v6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke_17;
  v13[3] = &unk_279732FD8;
  objc_copyWeak(&v14, buf);
  [v11 updateNetworkMismatchInfoWithCompletionHandler:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke_2;
  block[3] = &unk_279735D00;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

void __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) nearbyAccessoryUUIDsNotOnCurrentNetwork];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Updated network mismatch accessories with current network to %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deregisterAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDSymptomManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDSymptomManager_deregisterAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __41__HMDSymptomManager_deregisterAccessory___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Deregistering accessory: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [*(a1 + 32) symptomContainerByRegisteredAccessory];
    [v9 removeObjectForKey:*(a1 + 40)];

    v10 = [*(a1 + 32) symptomContainerByRegisteredAccessory];
    v11 = [v10 count];

    if (!v11)
    {
      [*(a1 + 32) _stop];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerAccessory:(id)accessory delegate:(id)delegate
{
  accessoryCopy = accessory;
  delegateCopy = delegate;
  workQueue = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDSymptomManager_registerAccessory_delegate___block_invoke;
  block[3] = &unk_279734960;
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
          _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering accessory (%@) for idsIdentifier %@", &v33, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v13, v14, v12, &v33, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@This device doesn't support registering accessories", &v33, 0xCu);
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
  v37.receiver = self;
  v37.super_class = HMDSymptomManager;
  v20 = [(HMDSymptomManager *)&v37 init];
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
  v13 = [(HMDSymptomManager *)self initWithQueue:v8 dataSource:sourceCopy supportsRegistering:+[HMDDeviceCapabilities supportsCurrentDeviceSymptoms:"supportsSymptomsHandler"]deviceDiscovery:0 companionLinkClient:v9 wifiManager:v10 notificationCenter:mEMORY[0x277D0F950] sharingClientFactory:defaultCenter, &__block_literal_global_112015];

  return v13;
}

id __40__HMDSymptomManager_initWithDataSource___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D54C30]);

  return v0;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t46_112026 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t46_112026, &__block_literal_global_39_112027);
  }

  v3 = logCategory__hmf_once_v47_112028;

  return v3;
}

uint64_t __32__HMDSymptomManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v47_112028;
  logCategory__hmf_once_v47_112028 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Parsing problem flags %llu to HMSymptoms", &v31, 0x16u);
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