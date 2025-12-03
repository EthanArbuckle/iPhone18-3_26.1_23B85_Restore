@interface HMDAppleMediaAccessoryInfoController
+ (id)logCategory;
- (HMDAppleMediaAccessoryInfoController)initWithQueue:(id)queue dataSource:(id)source delegate:(id)delegate notificationCenter:(id)center wifiManager:(id)manager;
- (HMDAppleMediaAccessoryInfoControllerDataSource)dataSource;
- (HMDAppleMediaAccessoryInfoControllerDelegate)delegate;
- (id)currentWifiNetworkInfo;
- (void)_notifyDelegateWifiInfoUpdated:(id)updated;
- (void)_postUpdateSoftwareVersionIfDifferent:(id)different;
- (void)_postUpdateWifiNetworkInfoIfDifferent:(id)different;
- (void)configure;
- (void)handleCurrentNetworkChangedNotification:(id)notification;
@end

@implementation HMDAppleMediaAccessoryInfoController

- (HMDAppleMediaAccessoryInfoControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDAppleMediaAccessoryInfoControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_notifyDelegateWifiInfoUpdated:(id)updated
{
  v21 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = updatedCopy;
  if (updatedCopy && ([updatedCopy SSID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    delegate = [(HMDAppleMediaAccessoryInfoController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      queue = [(HMDAppleMediaAccessoryInfoController *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HMDAppleMediaAccessoryInfoController__notifyDelegateWifiInfoUpdated___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = self;
      v15 = v5;
      v16 = delegate;
      dispatch_async(queue, block);
    }
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
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Trying to notify with invalid WiFi info: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __71__HMDAppleMediaAccessoryInfoController__notifyDelegateWifiInfoUpdated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate to update WiFi info: %@ ", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) accessoryInfoController:*(a1 + 32) didUpdateWifiInfo:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_postUpdateSoftwareVersionIfDifferent:(id)different
{
  v15 = *MEMORY[0x277D85DE8];
  differentCopy = different;
  if (differentCopy)
  {
    queue = [(HMDAppleMediaAccessoryInfoController *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__HMDAppleMediaAccessoryInfoController__postUpdateSoftwareVersionIfDifferent___block_invoke;
    v11[3] = &unk_27868A750;
    v11[4] = self;
    v12 = differentCopy;
    dispatch_async(queue, v11);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error posting software version update: object is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __78__HMDAppleMediaAccessoryInfoController__postUpdateSoftwareVersionIfDifferent___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [v6 buildVersion];
    *buf = 138543874;
    v39 = v5;
    v40 = 2112;
    v41 = v6;
    v42 = 2112;
    v43 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Posting updated software version: %@ (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) dataSource];
  v9 = [v8 accessoryInfoControllerSoftwareVersionTopicForController:*(a1 + 32)];
  v10 = [v8 eventStoreReadHandle];
  v11 = [v10 lastEventForTopic:v9];
  if (!v11)
  {
    v35 = v10;
LABEL_13:
    v14 = 0;
LABEL_15:
    v25 = [v8 eventSourceIdentifierNameForAccessoryInfoController:{*(a1 + 32), v35}];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v27 = v26;
    v28 = [objc_alloc(MEMORY[0x277CD1738]) initWithSoftwareVersion:*(a1 + 40)];
    v29 = [objc_alloc(MEMORY[0x277D174B0]) initWithSource:v25 cachePolicy:2 combineType:2 timestamp:v27];
    v30 = objc_alloc(MEMORY[0x277D174A0]);
    v31 = [v28 protoData];
    v32 = [v30 initWithEventData:v31 metadata:v29];

    v33 = [v8 eventForwarder];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __78__HMDAppleMediaAccessoryInfoController__postUpdateSoftwareVersionIfDifferent___block_invoke_10;
    v37[3] = &unk_27868A250;
    v37[4] = *(a1 + 32);
    [v33 forwardEvent:v32 topic:v9 completion:v37];

    v10 = v36;
    goto LABEL_16;
  }

  v12 = objc_alloc(MEMORY[0x277CD1738]);
  v13 = [v11 encodedData];
  v14 = [v12 initWithProtoData:v13];

  if (!v14)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v24;
      v40 = 2112;
      v41 = v9;
      v42 = 2112;
      v43 = 0;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Error reading stored software version for topic %@, error: %@", buf, 0x20u);
    }

    v35 = v10;

    objc_autoreleasePoolPop(v21);
    goto LABEL_13;
  }

  v15 = [v14 softwareVersion];
  v16 = [v15 isEqual:*(a1 + 40)];

  if (!v16)
  {
    v35 = v10;
    goto LABEL_15;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Skip sending event update for software version as it matches stored", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
LABEL_16:

  v34 = *MEMORY[0x277D85DE8];
}

void __78__HMDAppleMediaAccessoryInfoController__postUpdateSoftwareVersionIfDifferent___block_invoke_10(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error in forwarding the software version info event: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_postUpdateWifiNetworkInfoIfDifferent:(id)different
{
  v19 = *MEMORY[0x277D85DE8];
  differentCopy = different;
  v5 = differentCopy;
  if (differentCopy && ([differentCopy SSID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    queue = [(HMDAppleMediaAccessoryInfoController *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__HMDAppleMediaAccessoryInfoController__postUpdateWifiNetworkInfoIfDifferent___block_invoke;
    v13[3] = &unk_27868A750;
    v13[4] = self;
    v14 = v5;
    dispatch_async(queue, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Trying to post invalid WiFi info: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __78__HMDAppleMediaAccessoryInfoController__postUpdateWifiNetworkInfoIfDifferent___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) SSID];
    v7 = [*(a1 + 40) MACAddress];
    v8 = [v7 formattedString];
    *buf = 138543874;
    v41 = v5;
    v42 = 2112;
    v43 = v6;
    v44 = 2112;
    v45 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Posting updated WiFi: SSID: %@, MAC: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = [*(a1 + 32) dataSource];
  v10 = [v9 accessoryInfoControllerTopicForWifiInfo];
  v11 = [v9 eventStoreReadHandle];
  v12 = [v11 lastEventForTopic:v10];
  if (!v12)
  {
    v37 = v11;
LABEL_13:
    v15 = 0;
LABEL_15:
    v27 = [v9 eventSourceIdentifierNameForAccessoryInfoController:{*(a1 + 32), v37}];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v29 = v28;
    v30 = [objc_alloc(MEMORY[0x277CD1740]) initWithWifiNetworkInfo:*(a1 + 40)];
    v31 = [objc_alloc(MEMORY[0x277D174B0]) initWithSource:v27 cachePolicy:2 combineType:2 timestamp:v29];
    v32 = objc_alloc(MEMORY[0x277D174A0]);
    v33 = [v30 protoData];
    v34 = [v32 initWithEventData:v33 metadata:v31];

    v35 = [v9 eventForwarder];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __78__HMDAppleMediaAccessoryInfoController__postUpdateWifiNetworkInfoIfDifferent___block_invoke_7;
    v39[3] = &unk_27868A250;
    v39[4] = *(a1 + 32);
    [v35 forwardEvent:v34 topic:v10 completion:v39];

    v11 = v38;
    goto LABEL_16;
  }

  v13 = objc_alloc(MEMORY[0x277CD1740]);
  v14 = [v12 encodedData];
  v15 = [v13 initWithProtoData:v14];

  if (!v15)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v41 = v26;
      v42 = 2112;
      v43 = v10;
      v44 = 2112;
      v45 = 0;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Error reading stored setting for topic %@, error: %@", buf, 0x20u);
    }

    v37 = v11;

    objc_autoreleasePoolPop(v23);
    goto LABEL_13;
  }

  v16 = [v15 networkSSID];
  v17 = [*(a1 + 40) SSID];
  v18 = [v16 isEqualToString:v17];

  if (!v18)
  {
    v37 = v11;
    goto LABEL_15;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 32);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Skip sending event update for WiFi as it matches stored", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_16:

  v36 = *MEMORY[0x277D85DE8];
}

void __78__HMDAppleMediaAccessoryInfoController__postUpdateWifiNetworkInfoIfDifferent___block_invoke_7(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error in forwarding the WiFi network info event: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)currentWifiNetworkInfo
{
  wifiManager = [(HMDAppleMediaAccessoryInfoController *)self wifiManager];
  mACAddress = [wifiManager MACAddress];

  wifiManager2 = [(HMDAppleMediaAccessoryInfoController *)self wifiManager];
  currentNetworkSSID = [wifiManager2 currentNetworkSSID];

  wifiManager3 = [(HMDAppleMediaAccessoryInfoController *)self wifiManager];
  currentNetworkAssociation = [wifiManager3 currentNetworkAssociation];

  v9 = objc_alloc(MEMORY[0x277D0F958]);
  bSSID = [currentNetworkAssociation BSSID];
  formattedString = [bSSID formattedString];
  gatewayIPAddress = [currentNetworkAssociation gatewayIPAddress];
  gatewayMACAddress = [currentNetworkAssociation gatewayMACAddress];
  formattedString2 = [gatewayMACAddress formattedString];
  v15 = [v9 initWithMACAddress:mACAddress SSID:currentNetworkSSID BSSID:formattedString gatewayIPAddress:gatewayIPAddress gatewayMACAddress:formattedString2];

  return v15;
}

- (void)handleCurrentNetworkChangedNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received current network changed notification: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  lastWifiNetworkInfo = [(HMDAppleMediaAccessoryInfoController *)selfCopy lastWifiNetworkInfo];
  if (lastWifiNetworkInfo)
  {
    v10 = lastWifiNetworkInfo;
    lastWifiNetworkInfo2 = [(HMDAppleMediaAccessoryInfoController *)selfCopy lastWifiNetworkInfo];
    sSID = [lastWifiNetworkInfo2 SSID];
    wifiManager = [(HMDAppleMediaAccessoryInfoController *)selfCopy wifiManager];
    currentNetworkSSID = [wifiManager currentNetworkSSID];
    v15 = [sSID isEqualToString:currentNetworkSSID];

    if ((v15 & 1) == 0)
    {
      currentWifiNetworkInfo = [(HMDAppleMediaAccessoryInfoController *)selfCopy currentWifiNetworkInfo];
      [(HMDAppleMediaAccessoryInfoController *)selfCopy setLastWifiNetworkInfo:currentWifiNetworkInfo];

      lastWifiNetworkInfo3 = [(HMDAppleMediaAccessoryInfoController *)selfCopy lastWifiNetworkInfo];
      [(HMDAppleMediaAccessoryInfoController *)selfCopy _notifyDelegateWifiInfoUpdated:lastWifiNetworkInfo3];

      lastWifiNetworkInfo4 = [(HMDAppleMediaAccessoryInfoController *)selfCopy lastWifiNetworkInfo];
      [(HMDAppleMediaAccessoryInfoController *)selfCopy _postUpdateWifiNetworkInfoIfDifferent:lastWifiNetworkInfo4];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  currentWifiNetworkInfo = [(HMDAppleMediaAccessoryInfoController *)self currentWifiNetworkInfo];
  [(HMDAppleMediaAccessoryInfoController *)self setLastWifiNetworkInfo:currentWifiNetworkInfo];

  lastWifiNetworkInfo = [(HMDAppleMediaAccessoryInfoController *)self lastWifiNetworkInfo];
  [(HMDAppleMediaAccessoryInfoController *)self _notifyDelegateWifiInfoUpdated:lastWifiNetworkInfo];

  lastWifiNetworkInfo2 = [(HMDAppleMediaAccessoryInfoController *)self lastWifiNetworkInfo];
  [(HMDAppleMediaAccessoryInfoController *)self _postUpdateWifiNetworkInfoIfDifferent:lastWifiNetworkInfo2];

  dataSource = [(HMDAppleMediaAccessoryInfoController *)self dataSource];
  currentAccessorySoftwareVersion = [dataSource currentAccessorySoftwareVersion];
  [(HMDAppleMediaAccessoryInfoController *)self _postUpdateSoftwareVersionIfDifferent:currentAccessorySoftwareVersion];

  notificationCenter = [(HMDAppleMediaAccessoryInfoController *)self notificationCenter];
  v9 = *MEMORY[0x277D0F768];
  [notificationCenter removeObserver:self name:*MEMORY[0x277D0F768] object:0];

  notificationCenter2 = [(HMDAppleMediaAccessoryInfoController *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleCurrentNetworkChangedNotification_ name:v9 object:0];
}

- (HMDAppleMediaAccessoryInfoController)initWithQueue:(id)queue dataSource:(id)source delegate:(id)delegate notificationCenter:(id)center wifiManager:(id)manager
{
  queueCopy = queue;
  sourceCopy = source;
  delegateCopy = delegate;
  centerCopy = center;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = HMDAppleMediaAccessoryInfoController;
  v18 = [(HMDAppleMediaAccessoryInfoController *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeWeak(&v19->_dataSource, sourceCopy);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v19->_notificationCenter, center);
    objc_storeStrong(&v19->_wifiManager, manager);
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_125119 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_125119, &__block_literal_global_125120);
  }

  v3 = logCategory__hmf_once_v14_125121;

  return v3;
}

void __51__HMDAppleMediaAccessoryInfoController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_125121;
  logCategory__hmf_once_v14_125121 = v1;
}

@end