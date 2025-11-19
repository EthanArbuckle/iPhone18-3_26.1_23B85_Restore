@interface HMDSymptomManager
+ (BOOL)accessoryIsConfiguring:(id)a3;
+ (id)_symptomsForProblemFlags:(unint64_t)a3;
+ (id)logCategory;
- (HMDSymptomManager)initWithDataSource:(id)a3;
- (HMDSymptomManager)initWithQueue:(id)a3 dataSource:(id)a4 supportsRegistering:(BOOL)a5 supportsCurrentDeviceSymptoms:(BOOL)a6 deviceDiscovery:(id)a7 companionLinkClient:(id)a8 wifiManager:(id)a9 notificationCenter:(id)a10 sharingClientFactory:(id)a11;
- (HMDSymptomManagerDataSource)dataSource;
- (id)_registeredAccessoryWithIDSIdentifier:(id)a3;
- (id)_symptomsForRegisteredAccessory:(id)a3;
- (id)obtainDiscoveryAssertion;
- (unint64_t)currentDeviceProblemFlags;
- (void)_handleCaptivePortalSymptoms:(id)a3 nearbySFDevice:(id)a4 accessory:(id)a5;
- (void)_handleWiFiRepairV2AndLegacySymptoms:(id)a3 nearbySFDevice:(id)a4 accessory:(id)a5 symptomContainer:(id)a6 fallbackToRepairV2:(BOOL)a7;
- (void)_initiateFixForAccessory:(id)a3 completion:(id)a4;
- (void)_registerForCurrentDeviceSymptoms;
- (void)_rpDeviceChangedHandler:(id)a3;
- (void)_rpDeviceFoundHandler:(id)a3;
- (void)_rpDeviceLostHandler:(id)a3;
- (void)_sfDeviceChangedHandler:(id)a3;
- (void)_sfDeviceFoundHandler:(id)a3;
- (void)_sfDeviceLostHandler:(id)a3;
- (void)_start;
- (void)_startCompanionLinkClient;
- (void)_startDeviceDiscovery;
- (void)_stop;
- (void)_stopCompanionLinkClient;
- (void)_stopDeviceDiscovery;
- (void)_updateSymptomsForAllRegisteredAccessories;
- (void)_updateSymptomsForRegisteredAccessory:(id)a3;
- (void)_updateSymptomsForRegisteredAccessoryWithIDSIdentifier:(id)a3;
- (void)dealloc;
- (void)deregisterAccessory:(id)a3;
- (void)handleAccessoryRemovedNotification:(id)a3;
- (void)handleAccessoryWiFiNetworkInfoUpdatedNotification:(id)a3;
- (void)handleCurrentNetworkDidChangeNotification:(id)a3;
- (void)initiateFixForAccessory:(id)a3 completion:(id)a4;
- (void)registerAccessory:(id)a3 delegate:(id)a4;
- (void)releaseDiscoveryAssertionWithAssertionHandle:(id)a3;
- (void)setCurrentDeviceProblemFlags:(unint64_t)a3;
- (void)setDeviceDiscoveryFlags:(unint64_t)a3;
- (void)startDiscoveringSymptomsRequiringNearbyInfo;
- (void)stopDiscoveringSymptomsRequiringNearbyInfo;
- (void)updateNetworkMismatchInfoWithCompletionHandler:(id)a3;
@end

@implementation HMDSymptomManager

- (void)updateNetworkMismatchInfoWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_253227FA0(0, 0, v8, &unk_253D48C30, v13);
}

- (id)obtainDiscoveryAssertion
{
  v2 = self;
  sub_25322628C(v5);

  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3 = sub_253CD1108();
  __swift_destroy_boxed_opaque_existential_0(v5);

  return v3;
}

- (void)releaseDiscoveryAssertionWithAssertionHandle:(id)a3
{
  if (a3)
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

- (void)handleCurrentNetworkDidChangeNotification:(id)a3
{
  v4 = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDSymptomManager_handleCurrentNetworkDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleAccessoryWiFiNetworkInfoUpdatedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(HMDSymptomManager *)self workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HMDSymptomManager_handleAccessoryWiFiNetworkInfoUpdatedNotification___block_invoke;
    v14[3] = &unk_2797359B0;
    v14[4] = self;
    v15 = v7;
    dispatch_async(v8, v14);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain accessory from WiFi network info change notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryRemovedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

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

- (void)_rpDeviceLostHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Lost RPCompanionLinkDevice: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDSymptomManager *)v7 networkReachableRPCompanionLinkDevices];
  v11 = [v4 idsDeviceIdentifier];
  [v10 removeObjectForKey:v11];

  v12 = [v4 idsDeviceIdentifier];
  [(HMDSymptomManager *)v7 _updateSymptomsForRegisteredAccessoryWithIDSIdentifier:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_rpDeviceChangedHandler:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v9;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@RPCompanionLinkDevice %@ changed", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDSymptomManager *)v7 networkReachableRPCompanionLinkDevices];
  v11 = [v4 idsDeviceIdentifier];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    v13 = [(HMDSymptomManager *)v7 networkReachableRPCompanionLinkDevices];
    v14 = [v4 idsDeviceIdentifier];
    [v13 setObject:v4 forKey:v14];

    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@RPCompanionLinkDevice %@ changed", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [v4 idsDeviceIdentifier];
    [(HMDSymptomManager *)v16 _updateSymptomsForRegisteredAccessoryWithIDSIdentifier:v19];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMDSymptomManager *)v21 networkReachableRPCompanionLinkDevices];
      v26 = 138543874;
      v27 = v23;
      v28 = 2112;
      v29 = v4;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Did not find RPCompanionLinkDevice %@ in the network reachable RPCompanionLinkDevices: %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDSymptomManager *)v21 _rpDeviceFoundHandler:v4];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_rpDeviceFoundHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Found new RPCompanionLinkDevice: %@)", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDSymptomManager *)v7 networkReachableRPCompanionLinkDevices];
  v11 = [v4 idsDeviceIdentifier];
  [v10 setObject:v4 forKey:v11];

  v12 = [v4 idsDeviceIdentifier];
  [(HMDSymptomManager *)v7 _updateSymptomsForRegisteredAccessoryWithIDSIdentifier:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sfDeviceLostHandler:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Lost SFDevice: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDSymptomManager *)v7 nearbySFDevices];
  v11 = [v4 idsIdentifier];
  [v10 removeObjectForKey:v11];

  v12 = [v4 idsIdentifier];
  v13 = [(HMDSymptomManager *)v7 _registeredAccessoryWithIDSIdentifier:v12];

  if (v13)
  {
    [(HMDSymptomManager *)v7 _updateSymptomsForRegisteredAccessory:v13];
    v14 = [(HMDSymptomManager *)v7 symptomContainerByRegisteredAccessory];
    v15 = [v14 objectForKey:v13];

    v16 = [v15 delegate];
    [v16 symptomManager:v7 didChangeSFDeviceIdentifier:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_sfDeviceChangedHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDSymptomManager *)self nearbySFDevices];
  v7 = [v4 idsIdentifier];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = [(HMDSymptomManager *)self nearbySFDevices];
    v10 = [v4 idsIdentifier];
    [v9 setObject:v4 forKey:v10];

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@SFDevice %@ changed", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [v4 idsIdentifier];
    [(HMDSymptomManager *)v12 _updateSymptomsForRegisteredAccessoryWithIDSIdentifier:v15];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Did not find SFDevice %@ in the nearby SFDevices, so treating it as a found device", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDSymptomManager *)v17 _sfDeviceFoundHandler:v4];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_sfDeviceFoundHandler:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Found new SFDevice: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDSymptomManager *)v7 nearbySFDevices];
  v11 = [v4 idsIdentifier];
  [v10 setObject:v4 forKey:v11];

  v12 = [v4 idsIdentifier];
  v13 = [(HMDSymptomManager *)v7 _registeredAccessoryWithIDSIdentifier:v12];

  if (v13)
  {
    [(HMDSymptomManager *)v7 _updateSymptomsForRegisteredAccessory:v13];
    v14 = [(HMDSymptomManager *)v7 symptomContainerByRegisteredAccessory];
    v15 = [v14 objectForKey:v13];

    v16 = [v15 delegate];
    v17 = [v4 identifier];
    [v16 symptomManager:v7 didChangeSFDeviceIdentifier:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateSymptomsForAllRegisteredAccessories
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(HMDSymptomManager *)self _updateSymptomsForRegisteredAccessory:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleCaptivePortalSymptoms:(id)a3 nearbySFDevice:(id)a4 accessory:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  if ([v9 hasProblem] && (objc_msgSend(v9, "problemFlags") & 0x200000) != 0)
  {
    v20 = objc_autoreleasePoolPush();
    v26 = self;
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
    [v8 addObject:v27];

    goto LABEL_15;
  }

  v12 = [(HMDSymptomManager *)self wifiManager];
  if (![v12 isCaptive] || !objc_msgSend(v9, "hasProblem"))
  {
    goto LABEL_10;
  }

  v13 = [v9 problemFlags];

  if ((v13 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v12 = [(HMDSymptomManager *)self wifiManager];
  v14 = [v12 currentNetworkSSID];
  if (!v14)
  {
LABEL_10:

    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v10 wifiNetworkInfo];
  v17 = [v16 SSID];
  v18 = [(HMDSymptomManager *)self wifiManager];
  v19 = [v18 currentNetworkSSID];
  v29 = [v17 isEqualToString:v19];

  if (v29)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v10 wifiNetworkInfo];
      v25 = [v24 SSID];
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Creating captive lease renewal symptom, WiFi SSID: %@", buf, 0x16u);

LABEL_13:
      goto LABEL_14;
    }

    goto LABEL_14;
  }

LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleWiFiRepairV2AndLegacySymptoms:(id)a3 nearbySFDevice:(id)a4 accessory:(id)a5 symptomContainer:(id)a6 fallbackToRepairV2:(BOOL)a7
{
  v7 = a7;
  v68 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v13 || !v7)
  {
    goto LABEL_5;
  }

  v16 = [(HMDSymptomManager *)self networkReachableRPCompanionLinkDevices];
  v17 = [v15 idsIdentifier];
  v18 = [v16 objectForKey:v17];
  if (v18)
  {

    goto LABEL_5;
  }

  v20 = [(HMDSymptomManager *)self wifiManager];
  v21 = [v20 currentNetworkSSID];

  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  v58 = v23;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v25 = [v14 uuid];
    v26 = [(HMDSymptomManager *)v23 wifiManager];
    [v26 currentNetworkSSID];
    v27 = v55 = v22;
    *buf = 138543874;
    v61 = v20;
    v62 = 2112;
    v63 = v25;
    v64 = 2112;
    v65 = v27;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Accessory: %@ is not reachable over local network: %@", buf, 0x20u);

    v22 = v55;
    v23 = v58;
  }

  objc_autoreleasePoolPop(v22);
  v28 = [v14 wifiNetworkInfo];
  v29 = [v28 SSID];
  if (v29)
  {
    v30 = [v14 wifiNetworkInfo];
    self = [v30 SSID];
    v23 = [(HMDSymptomManager *)v23 wifiManager];
    v20 = [(HMDSymptomManager *)v23 currentNetworkSSID];
    if (![(HMDSymptomManager *)self isEqualToString:v20])
    {

      goto LABEL_21;
    }

    v56 = v28;
    [(HMDSymptomManager *)v58 nearbyAccessoryUUIDsNotOnCurrentNetwork];
  }

  else
  {
    v56 = v28;
    [(HMDSymptomManager *)v58 nearbyAccessoryUUIDsNotOnCurrentNetwork];
  }
  v31 = ;
  v32 = [v14 uuid];
  v53 = [v31 containsObject:v32];

  if (v29)
  {
  }

  if ((v53 & 1) == 0)
  {
    v33 = [v14 wifiNetworkInfo];

    if (!v33)
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
        v63 = v14;
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
    v57 = [(HMDSymptomManager *)v39 wifiManager];
    v42 = [v57 currentNetworkSSID];
    [v14 uuid];
    v43 = v59 = v38;
    v54 = [v14 wifiNetworkInfo];
    v44 = [v54 SSID];
    *buf = 138544130;
    v61 = v41;
    v62 = 2112;
    v63 = v42;
    v64 = 2112;
    v65 = v43;
    v66 = 2112;
    v67 = v44;
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
    v49 = [v15 idsIdentifier];
    *buf = 138543618;
    v61 = v48;
    v62 = 2112;
    v63 = v49;
    _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Creating WiFi network mismatch symptom for nearby IDS identifier that is not network reachable: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v45);
  v50 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
  [v12 addObject:v50];

LABEL_5:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateSymptomsForRegisteredAccessory:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = [(HMDSymptomManager *)self nearbySFDevices];
    v10 = [v7 idsIdentifier];
    v11 = [v9 objectForKey:v10];

    if ([v11 hasProblem])
    {
      v12 = [objc_opt_class() _symptomsForProblemFlags:{objc_msgSend(v11, "problemFlags")}];
      [v8 unionSet:v12];
    }

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v29 = [v4 uuid];
      [v4 device];
      v16 = v32 = v8;
      v30 = HMFBooleanToString();
      v17 = HMFBooleanToString();
      v18 = HMFBooleanToString();
      HMFBooleanToString();
      v19 = v33 = v13;
      *buf = 138544898;
      v35 = v31;
      v36 = 2112;
      v37 = v29;
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
    [(HMDSymptomManager *)v14 _handleWiFiRepairV2AndLegacySymptoms:v8 nearbySFDevice:v11 accessory:v4 symptomContainer:v7 fallbackToRepairV2:1];
    [(HMDSymptomManager *)v14 _handleCaptivePortalSymptoms:v8 nearbySFDevice:v11 accessory:v4];
    v20 = [v7 delegate];
    v21 = [v7 symptoms];
    v22 = [v21 isEqualToSet:v8];

    if ((v22 & 1) == 0)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v14;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v7 idsIdentifier];
        *buf = 138543874;
        v35 = v26;
        v36 = 2112;
        v37 = v27;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Updating symptoms for accessory with IDS identifier %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      [v7 setSymptoms:v8];
      [v20 symptomManager:v24 didChangeSymptoms:v8];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_updateSymptomsForRegisteredAccessoryWithIDSIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDSymptomManager *)self _registeredAccessoryWithIDSIdentifier:v4];
  if (v6)
  {
    [(HMDSymptomManager *)self _updateSymptomsForRegisteredAccessory:v6];
    v7 = [(HMDSymptomManager *)self nearbyAccessoryUUIDsNotOnCurrentNetwork];
    v8 = [v6 uuid];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Peforming network mismatch fetch as accessory is in list", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDSymptomManager *)v11 updateNetworkMismatchInfoWithCompletionHandler:&__block_literal_global_35_111940];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_registeredAccessoryWithIDSIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
        v13 = [v12 objectForKey:v11];

        v14 = [v13 idsIdentifier];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          v16 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)_initiateFixForAccessory:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 device];
  v10 = [v9 idsIdentifier];
  v11 = [v10 UUIDString];

  if (v11)
  {
    v12 = [(HMDSymptomManager *)self nearbySFDevices];
    v13 = [v12 objectForKey:v11];

    if (v13)
    {
      v14 = [(HMDSymptomManager *)self _symptomsForRegisteredAccessory:v6];
      v15 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
      v16 = [v14 containsObject:v15];

      v17 = objc_autoreleasePoolPush();
      v18 = self;
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
      v21 = [(HMDSymptomManager *)v18 deviceDiscovery];
      [v21 repairDevice:v13 flags:v16 completion:v7];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v29;
        v33 = 2112;
        v34 = v6;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Sharing has not discovered SFDevice for %@, not initiating fix process.", &v31, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v7[2](v7, v14);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v25;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@The accessory (%@) does not have idsIdentifier, not initiating fix process.", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v7[2](v7, v13);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_symptomsForRegisteredAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 symptoms];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
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
  v3 = [(HMDSymptomManager *)self sharingClientFactory];
  v4 = v3[2]();

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
    v6 = self;
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

  v9 = [(HMDSymptomManager *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HMDSymptomManager__registerForCurrentDeviceSymptoms__block_invoke_28;
  v11[3] = &unk_279732E48;
  v11[4] = self;
  notify_register_dispatch("com.apple.sharing.problems", &self->_deviceProblemNotificationToken, v9, v11);

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
  v3 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDSymptomManager *)self companionLinkClient];
  [v4 setDeviceFoundHandler:0];

  v5 = [(HMDSymptomManager *)self companionLinkClient];
  [v5 setDeviceChangedHandler:0];

  v6 = [(HMDSymptomManager *)self companionLinkClient];
  [v6 setDeviceLostHandler:0];

  v7 = [(HMDSymptomManager *)self companionLinkClient];
  [v7 stop];
}

- (void)_stopDeviceDiscovery
{
  v3 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDSymptomManager *)self deviceDiscovery];
  [v4 setDeviceFoundHandler:0];

  v5 = [(HMDSymptomManager *)self deviceDiscovery];
  [v5 setDeviceChangedHandler:0];

  v6 = [(HMDSymptomManager *)self deviceDiscovery];
  [v6 setDeviceLostHandler:0];

  v7 = [(HMDSymptomManager *)self deviceDiscovery];
  [v7 stop];
}

- (void)_stop
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping SFDeviceDiscovery and RPCompanionLinkClient in HMDSymptomManager.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDSymptomManager *)v5 _stopDeviceDiscovery];
  [(HMDSymptomManager *)v5 _stopCompanionLinkClient];
  v8 = [(HMDSymptomManager *)v5 nearbySFDevices];
  [v8 removeAllObjects];

  v9 = [(HMDSymptomManager *)v5 networkReachableRPCompanionLinkDevices];
  [v9 removeAllObjects];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startCompanionLinkClient
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDSymptomManager *)self workQueue];
  v5 = [(HMDSymptomManager *)self companionLinkClient];
  [v5 setDispatchQueue:v4];

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__HMDSymptomManager__startCompanionLinkClient__block_invoke;
  v19[3] = &unk_27972FEB8;
  objc_copyWeak(&v20, &location);
  v6 = [(HMDSymptomManager *)self companionLinkClient];
  [v6 setDeviceFoundHandler:v19];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__HMDSymptomManager__startCompanionLinkClient__block_invoke_21;
  v17[3] = &unk_27972FEE0;
  objc_copyWeak(&v18, &location);
  v7 = [(HMDSymptomManager *)self companionLinkClient];
  [v7 setDeviceChangedHandler:v17];

  v15 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v16, &location);
  v8 = [(HMDSymptomManager *)self companionLinkClient:v15];
  [v8 setDeviceLostHandler:&v15];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting RPCompanionLinkClient in HMDSymptomManager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDSymptomManager *)v10 companionLinkClient];
  [v13 start];

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
  v3 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDSymptomManager *)self workQueue];
  v5 = [(HMDSymptomManager *)self deviceDiscovery];
  [v5 setDispatchQueue:v4];

  v6 = [(HMDSymptomManager *)self deviceDiscoveryFlags];
  v7 = [(HMDSymptomManager *)self deviceDiscovery];
  [v7 setDiscoveryFlags:v6];

  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__HMDSymptomManager__startDeviceDiscovery__block_invoke;
  v21[3] = &unk_27972B3F0;
  objc_copyWeak(&v22, &location);
  v8 = [(HMDSymptomManager *)self deviceDiscovery];
  [v8 setDeviceFoundHandler:v21];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__HMDSymptomManager__startDeviceDiscovery__block_invoke_2;
  v19[3] = &unk_27972B418;
  objc_copyWeak(&v20, &location);
  v9 = [(HMDSymptomManager *)self deviceDiscovery];
  [v9 setDeviceChangedHandler:v19];

  v17 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v18, &location);
  v10 = [(HMDSymptomManager *)self deviceDiscovery:v17];
  [v10 setDeviceLostHandler:&v17];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Starting SFDeviceDiscovery in HMDSymptomManager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDSymptomManager *)v12 deviceDiscovery];
  [v15 start];

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
  v3 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDSymptomManager *)self _startDeviceDiscovery];

  [(HMDSymptomManager *)self _startCompanionLinkClient];
}

- (void)setCurrentDeviceProblemFlags:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_currentDeviceProblemFlags = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)currentDeviceProblemFlags
{
  os_unfair_lock_lock_with_options();
  currentDeviceProblemFlags = self->_currentDeviceProblemFlags;
  os_unfair_lock_unlock(&self->_lock);
  return currentDeviceProblemFlags;
}

- (void)setDeviceDiscoveryFlags:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(HMDSymptomManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_deviceDiscoveryFlags != a3)
  {
    self->_deviceDiscoveryFlags = a3;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(HMDSymptomManager *)self nearbySFDevices];
    v7 = NSAllMapTableValues(v6);

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

    v12 = [(HMDSymptomManager *)self symptomContainerByRegisteredAccessory];
    v13 = [v12 count];

    if (v13)
    {
      [(HMDSymptomManager *)self _stopDeviceDiscovery];
      [(HMDSymptomManager *)self _startDeviceDiscovery];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)initiateFixForAccessory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDSymptomManager_initiateFixForAccessory_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)stopDiscoveringSymptomsRequiringNearbyInfo
{
  v3 = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDSymptomManager_stopDiscoveringSymptomsRequiringNearbyInfo__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDSymptomManager_startDiscoveringSymptomsRequiringNearbyInfo__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)deregisterAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDSymptomManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDSymptomManager_deregisterAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)registerAccessory:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSymptomManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDSymptomManager_registerAccessory_delegate___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

  v4 = [(HMDSymptomManager *)self deviceDiscovery];
  [v4 stop];

  v5 = [(HMDSymptomManager *)self companionLinkClient];
  [v5 stop];

  v6.receiver = self;
  v6.super_class = HMDSymptomManager;
  [(HMDSymptomManager *)&v6 dealloc];
}

- (HMDSymptomManager)initWithQueue:(id)a3 dataSource:(id)a4 supportsRegistering:(BOOL)a5 supportsCurrentDeviceSymptoms:(BOOL)a6 deviceDiscovery:(id)a7 companionLinkClient:(id)a8 wifiManager:(id)a9 notificationCenter:(id)a10 sharingClientFactory:(id)a11
{
  v13 = a6;
  v36 = a3;
  v18 = a4;
  v35 = a7;
  v34 = a8;
  v33 = a9;
  v32 = a10;
  v19 = a11;
  v37.receiver = self;
  v37.super_class = HMDSymptomManager;
  v20 = [(HMDSymptomManager *)&v37 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_workQueue, a3);
    objc_storeWeak(&v21->_dataSource, v18);
    v22 = _Block_copy(v19);
    sharingClientFactory = v21->_sharingClientFactory;
    v21->_sharingClientFactory = v22;

    objc_storeStrong(&v21->_deviceDiscovery, a7);
    objc_storeStrong(&v21->_companionLinkClient, a8);
    objc_storeStrong(&v21->_wifiManager, a9);
    objc_storeStrong(&v21->_notificationCenter, a10);
    v21->_supportsRegisteringAccessories = a5;
    v21->_supportsCurrentDeviceSymptoms = v13;
    v24 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    symptomContainerByRegisteredAccessory = v21->_symptomContainerByRegisteredAccessory;
    v21->_symptomContainerByRegisteredAccessory = v24;

    v26 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    nearbySFDevices = v21->_nearbySFDevices;
    v21->_nearbySFDevices = v26;

    v28 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    networkReachableRPCompanionLinkDevices = v21->_networkReachableRPCompanionLinkDevices;
    v21->_networkReachableRPCompanionLinkDevices = v28;

    v21->_deviceDiscoveryFlags = 0x10000;
    v21->_deviceProblemNotificationToken = -1;
    nearbyAccessoryUUIDsNotOnCurrentNetwork = v21->_nearbyAccessoryUUIDsNotOnCurrentNetwork;
    v21->_nearbyAccessoryUUIDsNotOnCurrentNetwork = MEMORY[0x277CBEBF8];

    [(NSNotificationCenter *)v21->_notificationCenter addObserver:v21 selector:sel_handleAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];
    [(NSNotificationCenter *)v21->_notificationCenter addObserver:v21 selector:sel_handleAccessoryWiFiNetworkInfoUpdatedNotification_ name:@"HMDAppleMediaAccessoryWiFiNetworkInfoUpdatedNotification" object:0];
    [(NSNotificationCenter *)v21->_notificationCenter addObserver:v21 selector:sel_handleCurrentNetworkDidChangeNotification_ name:*MEMORY[0x277D0F768] object:0];
  }

  if (v13)
  {
    [(HMDSymptomManager *)v21 _registerForCurrentDeviceSymptoms];
  }

  return v21;
}

- (HMDSymptomManager)initWithDataSource:(id)a3
{
  v4 = a3;
  v5 = HMDispatchQueueNameString();
  v6 = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(v6, v7);

  v9 = objc_alloc_init(HMDSharingDeviceDiscovery);
  v10 = objc_alloc_init(HMDCompanionLinkClient);
  v11 = [MEMORY[0x277D0F950] sharedManager];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [(HMDSymptomManager *)self initWithQueue:v8 dataSource:v4 supportsRegistering:+[HMDDeviceCapabilities supportsCurrentDeviceSymptoms:"supportsSymptomsHandler"]deviceDiscovery:0 companionLinkClient:v9 wifiManager:v10 notificationCenter:v11 sharingClientFactory:v12, &__block_literal_global_112015];

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

+ (id)_symptomsForProblemFlags:(unint64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v8;
    v33 = 2048;
    v34 = a3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Parsing problem flags %llu to HMSymptoms", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CBEB58] set];
  if ((a3 & 2) != 0)
  {
    v16 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:1];
    [v9 addObject:v16];

    if ((a3 & 4) == 0)
    {
LABEL_5:
      if ((a3 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }
  }

  else if ((a3 & 4) == 0)
  {
    goto LABEL_5;
  }

  v17 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:2];
  [v9 addObject:v17];

  if ((a3 & 8) == 0)
  {
LABEL_6:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:3];
  [v9 addObject:v18];

  if ((a3 & 0x10) == 0)
  {
LABEL_7:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:4];
  [v9 addObject:v19];

  if ((a3 & 0x40) == 0)
  {
LABEL_8:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:5];
  [v9 addObject:v20];

  if ((a3 & 0x80) == 0)
  {
LABEL_9:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:6];
  [v9 addObject:v21];

  if ((a3 & 0x100) == 0)
  {
LABEL_10:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v22 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:7];
  [v9 addObject:v22];

  if ((a3 & 0x2000) == 0)
  {
LABEL_11:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v23 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:8];
  [v9 addObject:v23];

  if ((a3 & 0x1000) == 0)
  {
LABEL_12:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v24 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:9];
  [v9 addObject:v24];

  if ((a3 & 0x4000) == 0)
  {
LABEL_13:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v25 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:10];
  [v9 addObject:v25];

  if ((a3 & 0x8000) == 0)
  {
LABEL_14:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v26 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:13];
  [v9 addObject:v26];

  if ((a3 & 0x10000) == 0)
  {
LABEL_15:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v27 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:14];
  [v9 addObject:v27];

  if ((a3 & 0x40000) == 0)
  {
LABEL_16:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v28 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:16];
  [v9 addObject:v28];

  if ((a3 & 0x100000) == 0)
  {
LABEL_17:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

LABEL_40:
    v30 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:18];
    [v9 addObject:v30];

    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  v29 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:17];
  [v9 addObject:v29];

  if ((a3 & 0x80000) != 0)
  {
    goto LABEL_40;
  }

LABEL_18:
  if ((a3 & 0x20000) != 0)
  {
LABEL_19:
    v10 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:20];
    [v9 addObject:v10];
  }

LABEL_20:
  v11 = [v9 count];
  if ((a3 & 0x20) != 0 && v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:1000];
    [v9 addObject:v12];
  }

  v13 = [v9 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)accessoryIsConfiguring:(id)a3
{
  v3 = a3;
  v4 = [v3 home];
  v5 = [v4 homeManager];
  v6 = [v3 uuid];

  v7 = [v5 accessorySetupMetricDispatcherForAccessoryUUID:v6];

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