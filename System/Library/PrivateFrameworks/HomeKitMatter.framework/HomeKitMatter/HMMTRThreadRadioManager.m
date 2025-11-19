@interface HMMTRThreadRadioManager
+ (id)logCategory;
- (BOOL)_shouldRetryWEDConnectionToAccessory;
- (BOOL)hasMatterThreadAccessoryInHomeWithFabricUUID:(id)a3;
- (BOOL)isReadyToEstablishWEDConnection;
- (BOOL)isReadyToTransitionToFullRouterModeForFirmwareUpdate;
- (BOOL)isThreadNetworkConnected;
- (HMMTRAccessoryServer)pairingAccessoryServer;
- (HMMTRAccessoryServer)wedAccessoryServer;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRThreadRadioControllerDelegate)delegate;
- (HMMTRThreadRadioManager)initWithBrowser:(id)a3;
- (double)_computeRetryDelayForError:(id)a3;
- (id)_connectionStateValueToString:(int64_t)a3;
- (id)_nodeTypeValueToString:(int64_t)a3;
- (void)_allowDisconnect;
- (void)_connectToAccessoryWithExtendedMACAddress:(id)a3 forRetry:(BOOL)a4 completion:(id)a5;
- (void)_notifyThreadRadioStateChanged:(int64_t)a3 nodeType:(int64_t)a4 fabricUUID:(id)a5;
- (void)_notifyWakeOnDeviceConnectionChanged:(int64_t)a3 eMACAddress:(id)a4;
- (void)_retryWEDConnectionToAccessoryWithDelayInMs:(double)a3;
- (void)_startAccessoryPairingWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 accessoryServer:(id)a5 completion:(id)a6;
- (void)_startThreadRadioForSystemCommissionerFabricUUID:(id)a3;
- (void)_stopAccessoryFirmwareUpdateWithCompletion:(id)a3;
- (void)_stopAccessoryPairingWithCompletion:(id)a3;
- (void)_stopThreadRadioForSystemCommissionerFabricUUID:(id)a3;
- (void)_stopThreadRadioForTargetFabricUUID:(id)a3;
- (void)allowDisconnect;
- (void)connectToAccessoryWithExtendedMACAddress:(id)a3 completion:(id)a4;
- (void)connectToWEDAccessory:(id)a3 completion:(id)a4;
- (void)disconnectFromWEDAccessory:(id)a3 completion:(id)a4;
- (void)dispatchAfter:(unint64_t)a3 block:(id)a4;
- (void)dispatchBlock:(id)a3;
- (void)handleDeviceLockStateChange:(BOOL)a3;
- (void)notifyPeripheralDeviceNodeTypeChanged:(int64_t)a3;
- (void)notifyThreadRadioStateChanged:(int64_t)a3 nodeType:(int64_t)a4 fabricUUID:(id)a5;
- (void)notifyWakeOnDeviceConnectionChanged:(int64_t)a3 eMACAddress:(id)a4;
- (void)overrideLocationCheckForPairingForFabricUUID:(id)a3;
- (void)postNotification:(id)a3 userInfo:(id)a4;
- (void)setDelegate:(id)a3;
- (void)startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5;
- (void)startAccessoryPairingWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 accessoryServer:(id)a5 completion:(id)a6;
- (void)startThreadRadioForHomeWithFabricUUID:(id)a3;
- (void)startThreadRadioForHomeWithFabricUUID:(id)a3 preventDisconnect:(BOOL)a4;
- (void)startThreadRadioForSystemCommissionerFabricUUID:(id)a3;
- (void)startThreadRadioForSystemCommissionerFabricUUID:(id)a3 completion:(id)a4;
- (void)stopAccessoryFirmwareUpdateWithCompletion:(id)a3;
- (void)stopAccessoryPairingWithCompletion:(id)a3;
- (void)stopThreadOnDeviceLockTimeout;
- (void)stopThreadOnUserLogout;
- (void)stopThreadRadioForHomeWithFabricUUID:(id)a3;
- (void)stopThreadRadioForSystemCommissionerFabricUUID:(id)a3;
@end

@implementation HMMTRThreadRadioManager

- (HMMTRAccessoryServer)wedAccessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_wedAccessoryServer);

  return WeakRetained;
}

- (HMMTRAccessoryServer)pairingAccessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingAccessoryServer);

  return WeakRetained;
}

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (id)_connectionStateValueToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2786EDFA8[a3];
  }
}

- (id)_nodeTypeValueToString:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2786EDF70[a3 - 1];
  }
}

- (void)dispatchAfter:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(HMMTRThreadRadioManager *)self workQueue];
  dispatch_after(a3, v7, v6);
}

- (void)dispatchBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRThreadRadioManager *)self workQueue];
  dispatch_async(v5, v4);
}

- (void)postNotification:(id)a3 userInfo:(id)a4
{
  v6 = MEMORY[0x277CCAB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultCenter];
  [v9 postNotificationName:v8 object:self userInfo:v7];
}

- (void)notifyPeripheralDeviceNodeTypeChanged:(int64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3 > 7)
  {
    v10 = 0;
  }

  else
  {
    if (((1 << a3) & 0xCF) != 0)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [(HMMTRThreadRadioManager *)v6 _nodeTypeValueToString:a3];
        v21 = 138543618;
        v22 = v8;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Pairing accessory is not sleepy (nodeType: %@)", &v21, 0x16u);
      }

      v10 = 0;
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v18 = self;
      v7 = HMFGetOSLogHandle();
      v10 = 1;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [(HMMTRThreadRadioManager *)v18 _nodeTypeValueToString:a3];
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v20;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Pairing accessory is sleepy (nodeType: %@)", &v21, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  v11 = [(HMMTRThreadRadioManager *)self pairingAccessoryServer];
  v12 = v11;
  if (v11)
  {
    [v11 handleThreadDirectConnectionSleepyTypeChange:v10];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@notifyPeripheralDeviceNodeTypeChanged: could not get a strong reference to accessory server", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_notifyWakeOnDeviceConnectionChanged:(int64_t)a3 eMACAddress:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMMTRThreadRadioManager *)v8 eMACAddressOfWEDAccessory];
    v15 = 138544130;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    v19 = 2048;
    v20 = a3;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Received thread WED connection changed notification for eMACAddress: %@ with state: %ld, eMACAddress of last connection: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if ((a3 - 2) <= 2)
  {
    v12 = [(HMMTRThreadRadioManager *)v8 eMACAddressOfWEDAccessory];
    if ([v12 isEqualToString:v6])
    {
      v13 = [(HMMTRThreadRadioManager *)v8 isWEDConnectionRetryActive];

      if (!v13)
      {
        [(HMMTRThreadRadioManager *)v8 setIsWEDConnectionRetryActive:1];
        [(HMMTRThreadRadioManager *)v8 _retryWEDConnectionToAccessoryWithDelayInMs:100.0];
      }
    }

    else
    {
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)notifyWakeOnDeviceConnectionChanged:(int64_t)a3 eMACAddress:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HMMTRThreadRadioManager_notifyWakeOnDeviceConnectionChanged_eMACAddress___block_invoke;
  v8[3] = &unk_2786EF918;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v8];
}

- (void)_retryWEDConnectionToAccessoryWithDelayInMs:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(HMMTRThreadRadioManager *)self _shouldRetryWEDConnectionToAccessory])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMMTRThreadRadioManager *)v6 eMACAddressOfWEDAccessory];
      v10 = a3;
      *buf = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Attempting to retry WED connection to eMACAddress: %@ after %f milliseconds", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = dispatch_time(0, (a3 * 1000000.0));
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke;
    v13[3] = &unk_2786F0CA8;
    v13[4] = v6;
    [(HMMTRThreadRadioManager *)v6 dispatchAfter:v11 block:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _shouldRetryWEDConnectionToAccessory])
  {
    v2 = [*(a1 + 32) eMACAddressOfWEDAccessory];
    v3 = [v2 dataUsingEncoding:4];

    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) eMACAddressOfWEDAccessory];
      *buf = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Attempting to retry WED connection to eMACAddress: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke_35;
    v11[3] = &unk_2786EF290;
    v11[4] = v9;
    [v9 _connectToAccessoryWithExtendedMACAddress:v3 forRetry:1 completion:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke_35(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) eMACAddressOfWEDAccessory];
      *buf = 138543874;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@RETRY: Failed to establish WED connection to accessory with emac %@, error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke_36;
    v15[3] = &unk_2786EF328;
    v15[4] = v10;
    v16 = v3;
    [v10 dispatchBlock:v15];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) eMACAddressOfWEDAccessory];
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@RETRY: Connected to WED accessory with emac: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setIsWEDConnectionRetryActive:0];
    v13 = [*(a1 + 32) retryCompletionHandler];
    [*(a1 + 32) setRetryCompletionHandler:0];
    if (v13)
    {
      v13[2](v13, 0);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke_36(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _computeRetryDelayForError:*(a1 + 40)];

  return [v1 _retryWEDConnectionToAccessoryWithDelayInMs:?];
}

- (double)_computeRetryDelayForError:(id)a3
{
  v3 = a3;
  v4 = v3;
  v13 = 0x4059000000000000;
  if (v3 && ([v3 userInfo], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA498]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [MEMORY[0x277CCAC80] scannerWithString:v9];
      if (([v10 scanDouble:&v13] & 1) == 0)
      {
        v13 = 0x4059000000000000;
      }
    }

    v11 = *&v13;
  }

  else
  {
    v11 = 100.0;
  }

  return v11;
}

- (BOOL)_shouldRetryWEDConnectionToAccessory
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRThreadRadioManager *)self browser];
  if (![v3 isCurrentDeviceAllowedAccessoryControlDespiteReachableResident])
  {
    goto LABEL_7;
  }

  v4 = [(HMMTRThreadRadioManager *)self eMACAddressOfWEDAccessory];
  if (!v4 || ![(HMMTRThreadRadioManager *)self isWEDConnectionRetryActive])
  {

LABEL_7:
    goto LABEL_8;
  }

  v5 = [(HMMTRThreadRadioManager *)self isReadyToEstablishWEDConnection];

  if (v5)
  {
    result = 1;
    goto LABEL_15;
  }

LABEL_8:
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMMTRThreadRadioManager *)v8 eMACAddressOfWEDAccessory];
    v12 = [(HMMTRThreadRadioManager *)v8 browser];
    [v12 isCurrentDeviceAllowedAccessoryControlDespiteReachableResident];
    v13 = HMFBooleanToString();
    [(HMMTRThreadRadioManager *)v8 isWEDConnectionRetryActive];
    v14 = HMFBooleanToString();
    [(HMMTRThreadRadioManager *)v8 isReadyToEstablishWEDConnection];
    v15 = HMFBooleanToString();
    v23 = 138544386;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Not retrying thread connection. eMACAddress: %@, allowedAccessoryControlDespiteReachableResident: %@, connection retry: %@, isReadyToEstablishWEDConnection: %@", &v23, 0x34u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMMTRThreadRadioManager *)v8 setIsWEDConnectionRetryActive:0];
  v16 = [(HMMTRThreadRadioManager *)v8 retryCompletionHandler];
  [(HMMTRThreadRadioManager *)v8 setRetryCompletionHandler:0];
  if (v16)
  {
    v17 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:14];
    (v16)[2](v16, v17);
  }

  v18 = [(HMMTRThreadRadioManager *)v8 wedAccessoryServer];

  if (v18)
  {
    v19 = [(HMMTRThreadRadioManager *)v8 browser];
    v20 = [(HMMTRThreadRadioManager *)v8 wedAccessoryServer];
    v21 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:14];
    [v19 abortOperationsForAccessoryServer:v20 reason:v21];
  }

  result = 0;
LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_notifyThreadRadioStateChanged:(int64_t)a3 nodeType:(int64_t)a4 fabricUUID:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138544386;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    v62 = a4;
    *v63 = 2112;
    *&v63[2] = v8;
    *&v63[10] = 2048;
    *&v63[12] = [(HMMTRThreadRadioManager *)v10 lastKnownThreadNetworkConnectionState];
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Received thread radio state changed notification, connectionState: %ld, nodeType: %ld, fabric:%@, last known connectionState: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMMTRThreadRadioManager *)v10 fabricUUIDOfActiveThreadNetwork];
  v14 = v13 == 0;

  if (v14)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v10;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_INFO, "%{public}@No active fabric, no action taken on thread state change", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    [(HMMTRThreadRadioManager *)v32 setLastKnownThreadNetworkConnectionState:a3];
  }

  else
  {
    if (!v8)
    {
      v15 = [(HMMTRThreadRadioManager *)v10 browser];
      v8 = [v15 systemCommissionerFabricUUID];
    }

    v16 = [(HMMTRThreadRadioManager *)v10 fabricUUIDOfActiveThreadNetwork];
    v17 = [v16 isEqual:v8];

    if (v17)
    {
      if (a3 == 1)
      {
        if ([(HMMTRThreadRadioManager *)v10 lastKnownThreadNetworkConnectionState]&& [(HMMTRThreadRadioManager *)v10 lastKnownThreadNetworkConnectionState]!= 1)
        {
          context = objc_autoreleasePoolPush();
          v40 = v10;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v52 = HMFGetLogIdentifier();
            v42 = [(HMMTRThreadRadioManager *)v40 fabricUUIDOfActiveThreadNetwork];
            [(HMMTRThreadRadioManager *)v40 threadNetworkActivatedForSystemCommissionerFabric];
            v43 = HMFBooleanToString();
            [(HMMTRThreadRadioManager *)v40 preventDisconnect];
            v44 = HMFBooleanToString();
            *buf = 138544130;
            *&buf[4] = v52;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            *&buf[22] = 2112;
            v62 = v43;
            *v63 = 2112;
            *&v63[2] = v44;
            _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, thread radio went offline. Restarting thread radio for fabric ID: %@, is system commissioner: %@, preventDisconnect = %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(context);
          v57[0] = 0;
          v57[1] = v57;
          v57[2] = 0x2020000000;
          v58 = [(HMMTRThreadRadioManager *)v40 preventDisconnect];
          v55[0] = 0;
          v55[1] = v55;
          v55[2] = 0x2020000000;
          v56 = [(HMMTRThreadRadioManager *)v40 threadNetworkActivatedForSystemCommissionerFabric];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v62 = __Block_byref_object_copy__4540;
          *v63 = __Block_byref_object_dispose__4541;
          *&v63[8] = [(HMMTRThreadRadioManager *)v40 fabricUUIDOfActiveThreadNetwork];
          if ([(HMMTRThreadRadioManager *)v40 threadNetworkActivatedForSystemCommissionerFabric])
          {
            v45 = [(HMMTRThreadRadioManager *)v40 delegate];
            [v45 stopThreadRadioForUserPreferredNetwork];
          }

          else
          {
            v45 = [(HMMTRThreadRadioManager *)v40 delegate];
            v46 = [(HMMTRThreadRadioManager *)v40 fabricUUIDOfActiveThreadNetwork];
            [v45 stopThreadRadioForHomeWithFabricUUID:v46];
          }

          [(HMMTRThreadRadioManager *)v40 setPreventDisconnect:0];
          [(HMMTRThreadRadioManager *)v40 _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
          if (![(HMMTRThreadRadioManager *)v40 pendingThreadStart])
          {
            [(HMMTRThreadRadioManager *)v40 setPendingThreadStart:1];
            v47 = [(HMMTRThreadRadioManager *)v40 workQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __78__HMMTRThreadRadioManager__notifyThreadRadioStateChanged_nodeType_fabricUUID___block_invoke;
            block[3] = &unk_2786EDF50;
            block[4] = v40;
            block[5] = v55;
            block[6] = buf;
            block[7] = v57;
            dispatch_async(v47, block);
          }

          _Block_object_dispose(buf, 8);

          _Block_object_dispose(v55, 8);
          _Block_object_dispose(v57, 8);
        }

        goto LABEL_36;
      }

      if (a3 == 3)
      {
        v18 = [(HMMTRThreadRadioManager *)v10 fabricUUIDOfPendingStartPairingBlock];
        if ([v8 isEqual:v18])
        {
          v19 = [(HMMTRThreadRadioManager *)v10 pendingStartPairingBlock];
          v20 = v19 == 0;

          if (v20)
          {
            goto LABEL_16;
          }

          v21 = objc_autoreleasePoolPush();
          v22 = v10;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = HMFGetLogIdentifier();
            v25 = [(HMMTRThreadRadioManager *)v22 _connectionStateValueToString:3];
            *buf = 138543874;
            *&buf[4] = v24;
            *&buf[12] = 2112;
            *&buf[14] = v25;
            *&buf[22] = 2112;
            v62 = v8;
            _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Thread network connection state: %@ for fabric: %@, calling start pairing block now", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v21);
          v26 = [(HMMTRThreadRadioManager *)v22 pendingStartPairingBlock];
          v18 = v26;
          if (v26)
          {
            (*(v26 + 16))(v26, 0);
          }
        }
      }

LABEL_16:
      if ([(HMMTRThreadRadioManager *)v10 isWEDConnectionRetryActive])
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v10;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v30;
          _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@WED connection retry is active", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
      }

LABEL_36:
      [(HMMTRThreadRadioManager *)v10 setLastKnownThreadNetworkConnectionState:a3];
      v59[0] = @"HMMTRThreadRadioConnectionStateKey";
      v48 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v59[1] = @"HMMTRThreadRadioNodeTypeKey";
      v60[0] = v48;
      v49 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v60[1] = v49;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];

      [(HMMTRThreadRadioManager *)v10 postNotification:@"HMMTRThreadRadioStateChangedNotification" userInfo:v50];
      goto LABEL_37;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v10;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [(HMMTRThreadRadioManager *)v36 fabricUUIDOfActiveThreadNetwork];
      *buf = 138543874;
      *&buf[4] = v38;
      *&buf[12] = 2112;
      *&buf[14] = v39;
      *&buf[22] = 2112;
      v62 = v8;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@Dropping notification as the fabricID does not match that of the active network, activeNetworkFabricUUID: %@, fabricUUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v35);
  }

LABEL_37:

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __78__HMMTRThreadRadioManager__notifyThreadRadioStateChanged_nodeType_fabricUUID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPendingThreadStart:0];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {

    return [v2 startThreadRadioForSystemCommissionerFabricUUID:v3];
  }

  else
  {
    v5 = *(*(*(a1 + 56) + 8) + 24);

    return [v2 startThreadRadioForHomeWithFabricUUID:v3 preventDisconnect:v5];
  }
}

- (void)notifyThreadRadioStateChanged:(int64_t)a3 nodeType:(int64_t)a4 fabricUUID:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HMMTRThreadRadioManager_notifyThreadRadioStateChanged_nodeType_fabricUUID___block_invoke;
  v10[3] = &unk_2786EDF28;
  v12 = a3;
  v13 = a4;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v10];
}

- (BOOL)isReadyToTransitionToFullRouterModeForFirmwareUpdate
{
  v25 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v3 = [(HMMTRThreadRadioManager *)self delegate];
    if (v3)
    {
      v4 = v3;
      v5 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService];

      if (v5)
      {
        v6 = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
        if (v6)
        {
          if ([(HMMTRThreadRadioManager *)self threadNetworkActivatedForSystemCommissionerFabric])
          {
            v7 = objc_autoreleasePoolPush();
            v8 = self;
            v9 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v10 = HMFGetLogIdentifier();
              v23 = 138543362;
              v24 = v10;
              v11 = "%{public}@Firmware updates shouldn't be triggered from system commissioner fabric";
LABEL_17:
              v18 = v9;
              v19 = OS_LOG_TYPE_ERROR;
              goto LABEL_18;
            }
          }

          else
          {
            if (![(HMMTRThreadRadioManager *)self isPairingActive])
            {
              v20 = [(HMMTRThreadRadioManager *)self delegate];
              v21 = [v20 getThreadNetworkConnectionStateWithFabricUUID:v6];

              if (v21 == 3)
              {
                v22 = [(HMMTRThreadRadioManager *)self delegate];
                v13 = [v22 getThreadNetworkNodeTypeWithFabricUUID:v6];

                if (v13 <= 7)
                {
                  LODWORD(v13) = 0x86u >> v13;
                  goto LABEL_21;
                }
              }

LABEL_20:
              LOBYTE(v13) = 0;
LABEL_21:

              goto LABEL_11;
            }

            v7 = objc_autoreleasePoolPush();
            v8 = self;
            v9 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v10 = HMFGetLogIdentifier();
              v23 = 138543362;
              v24 = v10;
              v11 = "%{public}@Currently in pairing mode, cannot transition to fw update mode";
              goto LABEL_17;
            }
          }
        }

        else
        {
          v7 = objc_autoreleasePoolPush();
          v8 = self;
          v9 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = HMFGetLogIdentifier();
            v23 = 138543362;
            v24 = v10;
            v11 = "%{public}@isReadyToTransitionToFullRouterModeForFirmwareUpdate - Thread is not active";
            v18 = v9;
            v19 = OS_LOG_TYPE_INFO;
LABEL_18:
            _os_log_impl(&dword_22AEAE000, v18, v19, v11, &v23, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v7);
        goto LABEL_20;
      }
    }
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v23 = 138543362;
    v24 = v15;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v23, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  LOBYTE(v13) = 0;
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

- (BOOL)isReadyToEstablishWEDConnection
{
  v33 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v3 = [(HMMTRThreadRadioManager *)self delegate];
    if (v3)
    {
      v4 = v3;
      v5 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService];

      if (v5)
      {
        v6 = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
        if (v6)
        {
          v7 = [(HMMTRThreadRadioManager *)self threadNetworkActivatedForSystemCommissionerFabric];
          v8 = [(HMMTRThreadRadioManager *)self delegate];
          v9 = v8;
          if (v7)
          {
            v30 = 0;
            v10 = [v8 getUserPreferredThreadNetworkConnectionStateWithError:&v30];
            v11 = v30;

            if (v11)
            {
              v12 = 1;
            }

            else if (v10 == 3)
            {
              v26 = [(HMMTRThreadRadioManager *)self delegate];
              v29 = 0;
              v27 = [v26 getUserPreferredThreadNetworkNodeTypeWithError:&v29];
              v11 = v29;

              if (v11)
              {
                v28 = 1;
              }

              else
              {
                v28 = v27 == 1;
              }

              v12 = v28;
            }

            else
            {
              v11 = 0;
              v12 = 0;
            }

            goto LABEL_28;
          }

          v23 = [v8 getThreadNetworkConnectionStateWithFabricUUID:v6];

          if (v23 == 3)
          {
            v24 = [(HMMTRThreadRadioManager *)self delegate];
            v25 = [v24 getThreadNetworkNodeTypeWithFabricUUID:v6];

            if (v25 == 1)
            {
              v12 = 1;
LABEL_28:

              goto LABEL_11;
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
            v32 = v22;
            _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@isReadyToEstablishWEDConnection - Thread is not active", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v19);
        }

        v12 = 0;
        goto LABEL_28;
      }
    }
  }

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v16;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v12 = 0;
LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isThreadNetworkConnected
{
  v30 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v3 = [(HMMTRThreadRadioManager *)self delegate];
    if (v3)
    {
      v4 = v3;
      v5 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService];

      if (v5)
      {
        v6 = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
        if (!v6)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543362;
            v29 = v23;
            _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@isThreadNetworkConnected - Thread is not active", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v20);
          goto LABEL_22;
        }

        v7 = [(HMMTRThreadRadioManager *)self threadNetworkActivatedForSystemCommissionerFabric];
        v8 = [(HMMTRThreadRadioManager *)self delegate];
        v9 = v8;
        if (v7)
        {
          v27 = 0;
          v10 = [v8 getUserPreferredThreadNetworkConnectionStateWithError:&v27];
          v11 = v27;

          v12 = 0;
          if (!v11 && v10 == 3)
          {
            v13 = [(HMMTRThreadRadioManager *)self delegate];
            v26 = 0;
            v12 = [v13 getUserPreferredThreadNetworkNodeTypeWithError:&v26];
            v11 = v26;

            if (v11)
            {
              v12 = 0;
            }
          }
        }

        else
        {
          v24 = [v8 getThreadNetworkConnectionStateWithFabricUUID:v6];

          if (v24 != 3)
          {
            goto LABEL_22;
          }

          v25 = [(HMMTRThreadRadioManager *)self delegate];
          v12 = [v25 getThreadNetworkNodeTypeWithFabricUUID:v6];
        }

        if (v12 <= 7)
        {
          LODWORD(v15) = 0xFCu >> v12;
LABEL_23:

          goto LABEL_14;
        }

LABEL_22:
        LOBYTE(v15) = 0;
        goto LABEL_23;
      }
    }
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v17;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  LOBYTE(v15) = 0;
LABEL_14:
  v18 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)_stopThreadRadioForSystemCommissionerFabricUUID:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, v7 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v6, !v7))
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v32, 0xCu);
    }

    v24 = v20;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v32 = 138543618;
    v33 = v11;
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Stop thread for system commissioner fabric %@", &v32, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (!v4)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Invalid fabricID, ignoring thread radio stop", &v32, 0xCu);
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if ([(HMMTRThreadRadioManager *)v9 preventDisconnect])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMMTRThreadRadioManager *)v13 fabricUUIDOfActiveThreadNetwork];
      v32 = 138543874;
      v33 = v15;
      v34 = 2112;
      v35 = v4;
      v36 = 2112;
      v37 = v16;
      v17 = "%{public}@Preventing thread stop for system commissioner fabricID %@ because preventDisconnect is true and locked to fabric %@";
      v18 = v14;
      v19 = 32;
LABEL_24:
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, v17, &v32, v19);

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v26 = [(HMMTRThreadRadioManager *)v9 fabricUUIDOfActiveThreadNetwork];
  if (v26)
  {
    v27 = v26;
    v28 = [(HMMTRThreadRadioManager *)v9 fabricUUIDOfActiveThreadNetwork];
    v29 = [v28 isEqual:v4];

    if ((v29 & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v9;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [(HMMTRThreadRadioManager *)v13 fabricUUIDOfActiveThreadNetwork];
        v32 = 138543618;
        v33 = v15;
        v34 = 2112;
        v35 = v16;
        v17 = "%{public}@Thread network is running for another fabric ID %@. Not stopping Thread.";
        v18 = v14;
        v19 = 22;
        goto LABEL_24;
      }

LABEL_26:

      v24 = v12;
LABEL_13:
      objc_autoreleasePoolPop(v24);
      goto LABEL_14;
    }
  }

  [(HMMTRThreadRadioManager *)v9 setLastKnownThreadNetworkConnectionState:1];
  v30 = [(HMMTRThreadRadioManager *)v9 delegate];
  [v30 stopThreadRadioForUserPreferredNetwork];

  [(HMMTRThreadRadioManager *)v9 _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
  if (CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) && [(HMMTRThreadRadioManager *)v9 deviceIsLockedAndPendingStopThread])
  {
    v31 = [(HMMTRThreadRadioManager *)v9 delegate];
    [v31 stopThreadRadioOnDeviceLock];
  }

LABEL_14:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadRadioForSystemCommissionerFabricUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__HMMTRThreadRadioManager_stopThreadRadioForSystemCommissionerFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)_startThreadRadioForSystemCommissionerFabricUUID:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, v7 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v6, !v7))
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v21;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v25, 0xCu);
    }

    v22 = v18;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Start thread for system commissioner fabric %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v4)
  {
    v12 = [(HMMTRThreadRadioManager *)v9 fabricUUIDOfActiveThreadNetwork];

    if (!v12)
    {
      [(HMMTRThreadRadioManager *)v9 _updateFabricUUIDOfActiveThreadNetwork:v4 isFabricUUIDOfSystemCommissioner:1];
      [(HMMTRThreadRadioManager *)v9 setPreventDisconnect:0];
      v24 = [(HMMTRThreadRadioManager *)v9 delegate];
      [v24 startThreadRadioForUserPreferredNetwork];

      goto LABEL_14;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = v9;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v16 = HMFGetLogIdentifier();
    v17 = [(HMMTRThreadRadioManager *)v14 fabricUUIDOfActiveThreadNetwork];
    v25 = 138543618;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Thread network is already running for fabric %@. Not starting Thread.", &v25, 0x16u);

    goto LABEL_17;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = v9;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v16;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Invalid fabricUUID, ignoring thread radio start", &v25, 0xCu);
LABEL_17:
  }

LABEL_18:

  v22 = v13;
LABEL_13:
  objc_autoreleasePoolPop(v22);
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)overrideLocationCheckForPairingForFabricUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HMMTRThreadRadioManager_overrideLocationCheckForPairingForFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

void __72__HMMTRThreadRadioManager_overrideLocationCheckForPairingForFabricUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 overrideLocationCheckForPairingForFabricUUID:*(a1 + 40)];
}

- (void)startThreadRadioForSystemCommissionerFabricUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__HMMTRThreadRadioManager_startThreadRadioForSystemCommissionerFabricUUID_completion___block_invoke;
    v11[3] = &unk_2786F0EA8;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    v8 = v7;
    v9 = v6;
    [(HMMTRThreadRadioManager *)self dispatchBlock:v11];
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    __86__HMMTRThreadRadioManager_startThreadRadioForSystemCommissionerFabricUUID_completion___block_invoke(v10);
  }
}

uint64_t __86__HMMTRThreadRadioManager_startThreadRadioForSystemCommissionerFabricUUID_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startThreadRadioForSystemCommissionerFabricUUID:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)startThreadRadioForSystemCommissionerFabricUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HMMTRThreadRadioManager_startThreadRadioForSystemCommissionerFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)_stopThreadRadioForTargetFabricUUID:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, v7 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v6, !v7))
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v25, 0xCu);
    }

    v21 = v17;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Stop thread for fabric %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (!v4)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Invalid fabric UUID, ignoring thread radio stop", &v25, 0xCu);
      goto LABEL_17;
    }

LABEL_18:

    v21 = v12;
LABEL_13:
    objc_autoreleasePoolPop(v21);
    goto LABEL_14;
  }

  if ([(HMMTRThreadRadioManager *)v9 preventDisconnect])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMMTRThreadRadioManager *)v13 fabricUUIDOfActiveThreadNetwork];
      v25 = 138543874;
      v26 = v15;
      v27 = 2112;
      v28 = v4;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Preventing thread stop for fabric %@ because preventDisconnect is true and locked to fabric %@", &v25, 0x20u);

LABEL_17:
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  [(HMMTRThreadRadioManager *)v9 setLastKnownThreadNetworkConnectionState:1];
  v23 = [(HMMTRThreadRadioManager *)v9 delegate];
  [v23 stopThreadRadioForHomeWithFabricUUID:v4];

  [(HMMTRThreadRadioManager *)v9 _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
  [(HMMTRThreadRadioManager *)v9 setEMACAddressOfWEDAccessory:0];
  [(HMMTRThreadRadioManager *)v9 setWedAccessoryServer:0];
  if (CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) && [(HMMTRThreadRadioManager *)v9 deviceIsLockedAndPendingStopThread])
  {
    v24 = [(HMMTRThreadRadioManager *)v9 delegate];
    [v24 stopThreadRadioOnDeviceLock];
  }

LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadRadioForHomeWithFabricUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HMMTRThreadRadioManager_stopThreadRadioForHomeWithFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)_allowDisconnect
{
  v31 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() && ([(HMMTRThreadRadioManager *)self delegate], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, v5 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v4, v5))
  {
    v6 = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
    if (!v6 || (v7 = v6, v8 = [(HMMTRThreadRadioManager *)self preventDisconnect], v7, !v8))
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [(HMMTRThreadRadioManager *)v10 fabricUUIDOfActiveThreadNetwork];
        [(HMMTRThreadRadioManager *)v10 preventDisconnect];
        v14 = HMFBooleanToString();
        v25 = 138543874;
        v26 = v12;
        v27 = 2112;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpected state, fabricUUIDOfActiveThreadNetwork = %@, preventDisconnect = %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMMTRThreadRadioManager *)v16 fabricUUIDOfActiveThreadNetwork];
      v25 = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Allowing thread stop for fabric %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMMTRThreadRadioManager *)v16 setPreventDisconnect:0];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)allowDisconnect
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__HMMTRThreadRadioManager_allowDisconnect__block_invoke;
  v2[3] = &unk_2786F0CA8;
  v2[4] = self;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v2];
}

- (BOOL)hasMatterThreadAccessoryInHomeWithFabricUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRThreadRadioManager *)self delegate];
  v6 = [v5 hasMatterThreadAccessoryInHomeWithFabricUUID:v4];

  return v6;
}

- (void)_stopAccessoryFirmwareUpdateWithCompletion:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v21;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
    }

    v22 = v18;
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMMTRThreadRadioManager *)v7 eMACAddressOfWEDAccessory];
    *buf = 138543618;
    v36 = v9;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@stop accessory firmware update for accessory with emac = %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMMTRThreadRadioManager *)v7 fabricUUIDOfActiveThreadNetwork];

  if (!v11)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v7;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v28;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@No active thread network configured, dropping request to inform thread SW of stop firmware update", buf, 0xCu);
    }

    v22 = v25;
LABEL_14:
    objc_autoreleasePoolPop(v22);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
    v4[2](v4, v23);

    goto LABEL_15;
  }

  if (![(HMMTRThreadRadioManager *)v7 isFirmwareUpdateActive])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v7;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Not currently in a firmware update mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = [(HMMTRThreadRadioManager *)v7 delegate];
  v17 = [(HMMTRThreadRadioManager *)v7 fabricUUIDOfActiveThreadNetwork];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __70__HMMTRThreadRadioManager__stopAccessoryFirmwareUpdateWithCompletion___block_invoke;
  v32 = &unk_2786EF8A0;
  v33 = v7;
  v34 = v4;
  [v16 stopAccessoryFirmwareUpdateWithFabricUUID:v17 completion:&v29];

  [(HMMTRThreadRadioManager *)v7 allowDisconnect:v29];
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
}

void __70__HMMTRThreadRadioManager__stopAccessoryFirmwareUpdateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v8;
      v9 = "%{public}@Failed to inform thread SW of stop firmware update";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v10, v11, v9, &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Informed thread SW of stop firmware update";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setFirmwareUpdateActive:0];
  [*(a1 + 32) setEMACAddressOfFWUpdatesAccessory:0];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopAccessoryFirmwareUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HMMTRThreadRadioManager_stopAccessoryFirmwareUpdateWithCompletion___block_invoke;
  v6[3] = &unk_2786EF5A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

void __102__HMMTRThreadRadioManager__startAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v13 = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to inform thread SW of start firmware update with emac %@, error %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setFirmwareUpdateActive:0];
    [*(a1 + 32) setEMACAddressOfFWUpdatesAccessory:0];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Informed thread SW of start firmware update with emac %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HMMTRThreadRadioManager_startAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke;
  v12[3] = &unk_2786EEB30;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v12];
}

- (void)_stopAccessoryPairingWithCompletion:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
    }

    v24 = v20;
    goto LABEL_14;
  }

  v6 = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (!v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v27;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@No active thread network configured, dropping request to inform thread SW of stop pairing", buf, 0xCu);
    }

    v24 = v7;
LABEL_14:
    objc_autoreleasePoolPop(v24);
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
    v4[2](v4, v25);

    goto LABEL_15;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMMTRThreadRadioManager *)v8 pairingAccessoryServer];
    v13 = [v12 nodeID];
    v14 = [(HMMTRThreadRadioManager *)v8 eMACAddressOfWEDAccessory];
    *buf = 138543874;
    v35 = v11;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@stop accessory pairing for accessory with nodeID = %@, emac = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMMTRThreadRadioManager *)v8 setPairingActive:0];
  [(HMMTRThreadRadioManager *)v8 setPairingAccessoryServer:0];
  v15 = [(HMMTRThreadRadioManager *)v8 delegate];
  v16 = [(HMMTRThreadRadioManager *)v8 fabricUUIDOfActiveThreadNetwork];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __63__HMMTRThreadRadioManager__stopAccessoryPairingWithCompletion___block_invoke;
  v31 = &unk_2786EF8A0;
  v32 = v8;
  v33 = v4;
  [v15 stopAccessoryPairingWithFabricUUID:v16 completion:&v28];

  v17 = [(HMMTRThreadRadioManager *)v8 pendingStartPairingBlock:v28];

  if (v17)
  {
    v18 = [(HMMTRThreadRadioManager *)v8 pendingStartPairingBlock];
    if (v18)
    {
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
      (v18)[2](v18, v19);
    }
  }

  [(HMMTRThreadRadioManager *)v8 allowDisconnect];

LABEL_15:
  v26 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRThreadRadioManager__stopAccessoryPairingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v8;
      v9 = "%{public}@Failed to inform thread SW of stop pairing";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v10, v11, v9, &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Informed thread SW of stop pairing";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopAccessoryPairingWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HMMTRThreadRadioManager_stopAccessoryPairingWithCompletion___block_invoke;
  v6[3] = &unk_2786EF5A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

void __112__HMMTRThreadRadioManager___startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      v10 = "%{public}@Failed to inform thread SW of start pairing with emac %@, error %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v11, v12, v10, &v18, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v14;
    v10 = "%{public}@Informed thread SW of start pairing with emac %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_startAccessoryPairingWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 accessoryServer:(id)a5 completion:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __111__HMMTRThreadRadioManager__startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke;
  v46[3] = &unk_2786EDF00;
  objc_copyWeak(&v50, &location);
  v13 = v12;
  v49 = v13;
  v45 = v10;
  v47 = v45;
  v51 = a4;
  v14 = v11;
  v48 = v14;
  v15 = MEMORY[0x2318887D0](v46);
  v16 = [(HMMTRThreadRadioManager *)self pendingStartPairingBlock];

  if (v16)
  {
    v17 = [(HMMTRThreadRadioManager *)self pendingStartPairingBlock];
    if (v17)
    {
      v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
      (v17)[2](v17, v18);
    }
  }

  v19 = [(HMMTRThreadRadioManager *)self delegate];
  v20 = [v14 fabricUUID];
  v21 = [v19 getThreadNetworkConnectionStateWithFabricUUID:v20];

  v22 = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
  v24 = [v14 fabricUUID];
  v25 = [v23 isEqual:v24];
  v26 = v21 == 3 ? v25 : 0;

  if (v26)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [(HMMTRThreadRadioManager *)v28 _connectionStateValueToString:3];
      v32 = [v14 fabricUUID];
      v33 = [(HMMTRThreadRadioManager *)v28 fabricUUIDOfActiveThreadNetwork];
      *buf = 138544130;
      v54 = v30;
      v55 = 2112;
      v56 = v31;
      v57 = 2112;
      v58 = v32;
      v59 = 2112;
      v60 = v33;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Thread network connection state: %@ for fabric: %@, calling start pairing block now. ActiveThreadNetworkFabricID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v27);
    v34 = [v14 fabricUUID];
    [(HMMTRThreadRadioManager *)v28 setFabricUUIDOfPendingStartPairingBlock:v34];

    v35 = MEMORY[0x2318887D0](v15);
    v36 = v35;
    if (v35)
    {
      (*(v35 + 16))(v35, 0);
    }
  }

  else
  {
LABEL_14:
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      v41 = [(HMMTRThreadRadioManager *)v38 _connectionStateValueToString:v21];
      v42 = [v14 fabricUUID];
      v43 = [(HMMTRThreadRadioManager *)v38 fabricUUIDOfActiveThreadNetwork];
      *buf = 138544130;
      v54 = v40;
      v55 = 2112;
      v56 = v41;
      v57 = 2112;
      v58 = v42;
      v59 = 2112;
      v60 = v43;
      _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@Thread network connection state: %@ for fabric: %@, deferring call to start pairing block. ActiveThreadNetworkFabricUUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v37);
    [(HMMTRThreadRadioManager *)v38 setPendingStartPairingBlock:v15];
    v36 = [v14 fabricUUID];
    [(HMMTRThreadRadioManager *)v38 setFabricUUIDOfPendingStartPairingBlock:v36];
  }

  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);

  v44 = *MEMORY[0x277D85DE8];
}

void __111__HMMTRThreadRadioManager__startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Aborting call to thread start pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x2318887D0](*(a1 + 48));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, v3);
    }

    [v7 setPendingStartPairingBlock:0];
    [v7 setFabricUUIDOfPendingStartPairingBlock:0];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __111__HMMTRThreadRadioManager__startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke_22;
    v13[3] = &unk_2786EF8F0;
    v13[4] = WeakRetained;
    v14 = *(a1 + 32);
    v17 = *(a1 + 64);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    [v5 dispatchBlock:v13];
    [v5 setPendingStartPairingBlock:0];
    [v5 setFabricUUIDOfPendingStartPairingBlock:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startAccessoryPairingWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 accessoryServer:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HMMTRThreadRadioManager_startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke;
  v16[3] = &unk_2786EF8F0;
  v16[4] = self;
  v17 = v10;
  v20 = a4;
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v16];
}

- (void)_connectToAccessoryWithExtendedMACAddress:(id)a3 forRetry:(BOOL)a4 completion:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, v12 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v11, !v12))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
LABEL_10:

      objc_autoreleasePoolPop(v15);
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
      v9[2](v9, v14);
      goto LABEL_11;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v18;
    v19 = "%{public}@Thread radio feature is not enabled";
    v20 = v17;
    v21 = OS_LOG_TYPE_DEBUG;
    v22 = 12;
LABEL_9:
    _os_log_impl(&dword_22AEAE000, v20, v21, v19, buf, v22);

    goto LABEL_10;
  }

  v13 = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];

  if (!v13)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v18;
    v54 = 2112;
    v55 = v8;
    v19 = "%{public}@No active thread network configured, dropping request to connect to accessory with eMAC %@";
    v20 = v17;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 22;
    goto LABEL_9;
  }

  if (v8)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
  }

  else
  {
    v14 = 0;
  }

  if (-[HMMTRThreadRadioManager isPairingActive](self, "isPairingActive") && !v14 || -[HMMTRThreadRadioManager isPairingActive](self, "isPairingActive") && (-[HMMTRThreadRadioManager eMACAddressOfWEDAccessory](self, "eMACAddressOfWEDAccessory"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 isEqualToString:v14], v30, (v31 & 1) == 0))
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [(HMMTRThreadRadioManager *)v25 eMACAddressOfWEDAccessory];
      *buf = 138543874;
      v53 = v27;
      v54 = 2112;
      v55 = v14;
      v56 = 2112;
      v57 = v28;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Not processing connect request to a different WED accessory emac %@ when pairing is active for emac %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
    v9[2](v9, v29);
  }

  else
  {
    if (v8)
    {
      [(HMMTRThreadRadioManager *)self setEMACAddressOfWEDAccessory:v14];
    }

    else
    {
      if (a4 || ([(HMMTRThreadRadioManager *)self retryCompletionHandler], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
      {
        v37 = 0;
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543362;
          v53 = v36;
          _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Previously attempted WED connection is aborted", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v33);
        v37 = [(HMMTRThreadRadioManager *)v34 retryCompletionHandler];
        [(HMMTRThreadRadioManager *)v34 setRetryCompletionHandler:0];
      }

      [(HMMTRThreadRadioManager *)self setEMACAddressOfWEDAccessory:0];
      [(HMMTRThreadRadioManager *)self setIsWEDConnectionRetryActive:0];
      if (v37)
      {
        v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
        (v37)[2](v37, v38);
      }

      [(HMMTRThreadRadioManager *)self setWedAccessoryServer:0];
    }

    v39 = objc_autoreleasePoolPush();
    v40 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      v43 = [(HMMTRThreadRadioManager *)v40 eMACAddressOfWEDAccessory];
      *buf = 138543618;
      v53 = v42;
      v54 = 2112;
      v55 = v43;
      _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Set eMACAddress of WED accessory to :%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke;
    v50[3] = &unk_2786EDEB0;
    v50[4] = v40;
    v44 = v8;
    v51 = v44;
    v45 = MEMORY[0x2318887D0](v50);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke_2;
    v46[3] = &unk_2786EDED8;
    v46[4] = v40;
    v47 = v44;
    v49 = a4;
    v48 = v9;
    (v45)[2](v45, v46);
  }

LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
}

void __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 threadNetworkActivatedForSystemCommissionerFabric];
  v8 = [*(a1 + 32) delegate];
  v6 = *(a1 + 40);
  if (v5)
  {
    [v8 connectToAccessoryForUserPreferredNetworkWithExtendedMACAddress:*(a1 + 40) completion:v4];
  }

  else
  {
    v7 = [*(a1 + 32) fabricUUIDOfActiveThreadNetwork];
    [v8 connectToAccessoryWithExtendedMACAddress:v6 withFabricUUID:v7 completion:v4];

    v4 = v7;
  }
}

void __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke_3;
  v6[3] = &unk_2786EF8F0;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 dispatchBlock:v6];
}

uint64_t __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_8;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to connect to accessory with emac %@, error %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) isWEDConnectionRetryActive])
  {
    goto LABEL_8;
  }

  [*(a1 + 40) setIsWEDConnectionRetryActive:1];
  if ((*(a1 + 64) & 1) == 0)
  {
    [*(a1 + 40) setRetryCompletionHandler:*(a1 + 56)];
  }

  result = [*(a1 + 40) _retryWEDConnectionToAccessoryWithDelayInMs:100.0];
  if (*(a1 + 64) == 1)
  {
LABEL_8:
    v9 = *(a1 + 32);
    result = (*(*(a1 + 56) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)connectToAccessoryWithExtendedMACAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HMMTRThreadRadioManager_connectToAccessoryWithExtendedMACAddress_completion___block_invoke;
  v10[3] = &unk_2786F0EA8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v10];
}

- (void)connectToWEDAccessory:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HMMTRThreadRadioManager *)self setWedAccessoryServer:v7];
  v8 = [v7 eMACAddress];

  v9 = [v8 dataUsingEncoding:4];

  [(HMMTRThreadRadioManager *)self connectToAccessoryWithExtendedMACAddress:v9 completion:v6];
}

- (void)disconnectFromWEDAccessory:(id)a3 completion:(id)a4
{
  [(HMMTRThreadRadioManager *)self connectToAccessoryWithExtendedMACAddress:0 completion:a4];

  [(HMMTRThreadRadioManager *)self setWedAccessoryServer:0];
}

- (void)startThreadRadioForHomeWithFabricUUID:(id)a3 preventDisconnect:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HMMTRThreadRadioManager_startThreadRadioForHomeWithFabricUUID_preventDisconnect___block_invoke;
  v8[3] = &unk_2786F0418;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v8];
}

- (void)startThreadRadioForHomeWithFabricUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMMTRThreadRadioManager_startThreadRadioForHomeWithFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)stopThreadOnUserLogout
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping thread due to user logout", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HMMTRThreadRadioManager_stopThreadOnUserLogout__block_invoke;
  v8[3] = &unk_2786F0CA8;
  v8[4] = v4;
  [(HMMTRThreadRadioManager *)v4 dispatchBlock:v8];
  v7 = *MEMORY[0x277D85DE8];
}

void __49__HMMTRThreadRadioManager_stopThreadOnUserLogout__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) preventDisconnect])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@stopping thread even though preventDisconnect is true due to logout", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) _allowDisconnect];
  }

  v6 = [*(a1 + 32) threadNetworkActivatedForSystemCommissionerFabric];
  v7 = [*(a1 + 32) delegate];
  v8 = v7;
  if (v6)
  {
    [v7 stopThreadRadioForUserPreferredNetwork];
  }

  else
  {
    v9 = [*(a1 + 32) fabricUUIDOfActiveThreadNetwork];
    [v8 stopThreadRadioForHomeWithFabricUUID:v9];
  }

  [*(a1 + 32) _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
  v10 = [*(a1 + 32) delegate];
  [v10 stopThreadRadioOnDeviceLock];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadOnDeviceLockTimeout
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRThreadRadioManager *)self preventDisconnect];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@stopThreadOnDeviceLockTimeout - not stopping because preventDisconnect is true", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMMTRThreadRadioManager *)v5 setDeviceIsLockedAndPendingStopThread:1];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@stopping thread due to device lock", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [(HMMTRThreadRadioManager *)v5 threadNetworkActivatedForSystemCommissionerFabric];
    v11 = [(HMMTRThreadRadioManager *)v5 delegate];
    v12 = v11;
    if (v10)
    {
      [v11 stopThreadRadioForUserPreferredNetwork];
    }

    else
    {
      v13 = [(HMMTRThreadRadioManager *)v5 fabricUUIDOfActiveThreadNetwork];
      [v12 stopThreadRadioForHomeWithFabricUUID:v13];
    }

    [(HMMTRThreadRadioManager *)v5 _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
    v14 = [(HMMTRThreadRadioManager *)v5 delegate];
    [v14 stopThreadRadioOnDeviceLock];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceLockStateChange:(BOOL)a3
{
  v3 = a3;
  [(HMMTRThreadRadioManager *)self setDeviceIsLockedAndPendingStopThread:0];
  if (v3)
  {
    v5 = v9;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v6 = __55__HMMTRThreadRadioManager_handleDeviceLockStateChange___block_invoke;
  }

  else
  {
    v5 = &v7;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v6 = __55__HMMTRThreadRadioManager_handleDeviceLockStateChange___block_invoke_17;
  }

  v5[2] = v6;
  v5[3] = &unk_2786F0CA8;
  v5[4] = self;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v7, v8];
}

void __55__HMMTRThreadRadioManager_handleDeviceLockStateChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) disconnectTimer];
  v3 = [v2 isRunning];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Thread disconnect timer is already running", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2048;
      v15 = 0x402E000000000000;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting %f seconds thread disconnect timer", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) disconnectTimer];
    [v10 resume];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __55__HMMTRThreadRadioManager_handleDeviceLockStateChange___block_invoke_17(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@starting thread on device unlock", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) disconnectTimer];
  [v6 suspend];

  v7 = [*(a1 + 32) browser];
  v8 = [v7 currentFabricUUID];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Not starting thread on device unlock - fabric is already active", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [v13 browser];
    v15 = [v14 systemCommissionerFabricUUID];
    [v13 startThreadRadioForSystemCommissionerFabricUUID:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMTRThreadRadioControllerDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMMTRThreadRadioManager)initWithBrowser:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HMMTRThreadRadioManager;
  v5 = [(HMMTRThreadRadioManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    fabricUUIDOfActiveThreadNetwork = v5->_fabricUUIDOfActiveThreadNetwork;
    v5->_fabricUUIDOfActiveThreadNetwork = 0;

    v6->_threadNetworkActivatedForSystemCommissionerFabric = 0;
    v6->_preventDisconnect = 0;
    v6->_lastKnownThreadNetworkConnectionState = 0;
    v6->_deviceSupportsThreadService = 0;
    v6->_pairingActive = 0;
    v6->_firmwareUpdateActive = 0;
    v6->_pendingThreadStart = 0;
    v6->_isWEDConnectionRetryActive = 0;
    v6->_deviceIsLockedAndPendingStopThread = 0;
    eMACAddressOfWEDAccessory = v6->_eMACAddressOfWEDAccessory;
    v6->_eMACAddressOfWEDAccessory = 0;

    eMACAddressOfFWUpdatesAccessory = v6->_eMACAddressOfFWUpdatesAccessory;
    v6->_eMACAddressOfFWUpdatesAccessory = 0;

    v10 = HMFDispatchQueueName();
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    workQueue = v6->_workQueue;
    v6->_workQueue = v12;

    objc_storeWeak(&v6->_browser, v4);
    v14 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:15.0];
    disconnectTimer = v6->_disconnectTimer;
    v6->_disconnectTimer = v14;

    [(HMFTimer *)v6->_disconnectTimer setDelegateQueue:v6->_workQueue];
    [(HMFTimer *)v6->_disconnectTimer setDelegate:v6];
    pendingStartPairingBlock = v6->_pendingStartPairingBlock;
    v6->_pendingStartPairingBlock = 0;

    fabricUUIDOfPendingStartPairingBlock = v6->_fabricUUIDOfPendingStartPairingBlock;
    v6->_fabricUUIDOfPendingStartPairingBlock = 0;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t93 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t93, &__block_literal_global_4637);
  }

  v3 = logCategory__hmf_once_v94;

  return v3;
}

uint64_t __38__HMMTRThreadRadioManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v94 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end