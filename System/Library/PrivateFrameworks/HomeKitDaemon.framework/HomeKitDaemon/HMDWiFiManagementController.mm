@interface HMDWiFiManagementController
+ (id)logCategory;
+ (id)sharedPSKForNetworkWithSSID:(id)d;
- (HMDHAPAccessory)accessory;
- (HMDWiFiManagementController)initWithAccessory:(id)accessory wiFiTransportService:(id)service workQueue:(id)queue;
- (id)logIdentifier;
- (int64_t)capabilities;
- (void)_accessoryDidBecomeReachable:(id)reachable;
- (void)_commitConfigurationUpdate;
- (void)_performWiFiConfigurationControlRequest:(id)request withDescription:(id)description completion:(id)completion;
- (void)_reconfigurationCompletedWithSuccess:(BOOL)success error:(id)error;
- (void)reconfigureWithSSID:(id)d PSK:(id)k logEvent:(id)event completion:(id)completion;
- (void)safelyReconfigureWithSSID:(id)d PSK:(id)k verificationCallback:(id)callback logEvent:(id)event completion:(id)completion;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDWiFiManagementController

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMDWiFiManagementController *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (void)_performWiFiConfigurationControlRequest:(id)request withDescription:(id)description completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  descriptionCopy = description;
  completionCopy = completion;
  workQueue = [(HMDWiFiManagementController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  service = [(HMDWiFiManagementController *)self service];
  v13 = [service findCharacteristicWithType:@"0000022D-0000-1000-8000-0026BB765291"];

  if (v13)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__HMDWiFiManagementController__performWiFiConfigurationControlRequest_withDescription_completion___block_invoke;
    aBlock[3] = &unk_2786873B0;
    aBlock[4] = self;
    v39 = descriptionCopy;
    v14 = descriptionCopy;
    v43 = v14;
    v15 = completionCopy;
    v44 = v15;
    v38 = _Block_copy(aBlock);
    accessory = [(HMDWiFiManagementController *)self accessory];
    if (requestCopy)
    {
      v41 = 0;
      v16 = [requestCopy serializeWithError:&v41];
      v17 = v41;
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      v21 = v20;
      if (!v16)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543874;
          v48 = v37;
          v49 = 2112;
          v50 = v14;
          v51 = 2112;
          v52 = v17;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize Wi-Fi Configuration Control request for %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        if (!v15)
        {
          v16 = 0;
          v26 = v38;
          descriptionCopy = v39;
          goto LABEL_16;
        }

        workQueue3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v15 + 2))(v15, 0, workQueue3);
        v16 = 0;
        v26 = v38;
        descriptionCopy = v39;
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v48 = v22;
        v49 = 2112;
        v50 = v14;
        v51 = 2112;
        v52 = requestCopy;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Writing Wi-Fi Configuration Control request for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      workQueue3 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v13 value:v16 authorizationData:0 type:0];
      v46 = workQueue3;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      workQueue2 = [(HMDWiFiManagementController *)selfCopy workQueue];
      v26 = v38;
      [accessory writeCharacteristicValues:v24 source:1220 queue:workQueue2 completionHandler:v38];
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v35;
        v49 = 2112;
        v50 = v14;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Reading Wi-Fi Configuration Control for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v17 = [HMDCharacteristicRequest requestWithCharacteristic:v13];
      v45 = v17;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      workQueue3 = [(HMDWiFiManagementController *)selfCopy2 workQueue];
      v26 = v38;
      [accessory readCharacteristicValues:v16 source:1220 queue:workQueue3 completionHandler:v38];
    }

    descriptionCopy = v39;
    goto LABEL_15;
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v30;
    v49 = 2112;
    v50 = @"0000022D-0000-1000-8000-0026BB765291";
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Missing required characteristic: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  if (completionCopy)
  {
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, v31);
  }

LABEL_17:

  v36 = *MEMORY[0x277D85DE8];
}

void __98__HMDWiFiManagementController__performWiFiConfigurationControlRequest_withDescription_completion___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v3 firstObject];
  v6 = [v5 error];

  if (!v6)
  {
    v15 = [v5 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v33 = 0;
      v18 = [MEMORY[0x277CFECB0] parsedFromData:v17 error:&v33];
      v14 = v33;
      if (v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 32);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          v23 = *(a1 + 40);
          *buf = 138543874;
          v35 = v22;
          v36 = 2112;
          v37 = v23;
          v38 = 2112;
          v39 = v18;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Received Wi-Fi Configuration Control response for %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
        v24 = *(a1 + 48);
        if (v24)
        {
          (*(v24 + 16))(v24, v18, 0);
        }

LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v14 = 0;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v29 = *(a1 + 40);
      *buf = 138543874;
      v35 = v28;
      v36 = 2112;
      v37 = v29;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Wi-Fi Configuration Control response for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v30 = *(a1 + 48);
    if (v30)
    {
      if (v14)
      {
        (*(v30 + 16))(v30, 0, v14);
      }

      else
      {
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
        (*(v30 + 16))(v30, 0, v31);

        v14 = 0;
      }
    }

    v18 = 0;
    goto LABEL_23;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = [v5 error];
    *buf = 138543874;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Wi-Fi Configuration Control request for %@ failed: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = [v5 error];
    (*(v13 + 16))(v13, 0, v14);
LABEL_24:
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_reconfigurationCompletedWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  workQueue = [(HMDWiFiManagementController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  reconfigurationLogEvent = [(HMDWiFiManagementController *)self reconfigurationLogEvent];
  if (reconfigurationLogEvent)
  {
    if (successCopy)
    {
      v8 = 0;
    }

    else
    {
      v8 = errorCopy;
      if (!errorCopy)
      {
        v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        [reconfigurationLogEvent setError:v13];

        goto LABEL_6;
      }
    }

    [reconfigurationLogEvent setError:v8];
LABEL_6:
    v9 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v9 submitLogEvent:reconfigurationLogEvent];

    [(HMDWiFiManagementController *)self setReconfigurationLogEvent:0];
  }

  reconfigurationCompletion = [(HMDWiFiManagementController *)self reconfigurationCompletion];
  notificationCenter = [(HMDWiFiManagementController *)self notificationCenter];
  [notificationCenter removeObserver:self];

  reconfigurationTimeoutTimer = [(HMDWiFiManagementController *)self reconfigurationTimeoutTimer];
  [reconfigurationTimeoutTimer cancel];

  [(HMDWiFiManagementController *)self setReconfigurationTimeoutTimer:0];
  [(HMDWiFiManagementController *)self setReconfigurationCookie:0];
  [(HMDWiFiManagementController *)self setReconfigurationVerificationCallback:0];
  [(HMDWiFiManagementController *)self setReconfigurationCompletion:0];
  [(HMDWiFiManagementController *)self setReconfigurationState:0];
  if (successCopy)
  {
    if (reconfigurationCompletion)
    {
      reconfigurationCompletion[2](reconfigurationCompletion, 0);
    }
  }

  else
  {
    completeWithError(reconfigurationCompletion, errorCopy);
  }
}

- (void)_commitConfigurationUpdate
{
  workQueue = [(HMDWiFiManagementController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDWiFiManagementController *)self setReconfigurationState:4];
  v4 = makeConfigurationControl(4);
  v5 = objc_alloc(MEMORY[0x277CFEC98]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDWiFiManagementController reconfigurationCookie](self, "reconfigurationCookie")}];
  v7 = [v5 initWithValue:v6];
  [v4 setCookie:v7];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HMDWiFiManagementController__commitConfigurationUpdate__block_invoke;
  v8[3] = &unk_278676750;
  v8[4] = self;
  [(HMDWiFiManagementController *)self _performWiFiConfigurationControlRequest:v4 withDescription:@"Commit Fail-Safe Update" completion:v8];
}

void __57__HMDWiFiManagementController__commitConfigurationUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v16 = *(a1 + 32);
    v17 = 0;
    v18 = v6;
LABEL_12:
    [v16 _reconfigurationCompletedWithSuccess:v17 error:v18];
    goto LABEL_13;
  }

  v7 = [v5 updateStatus];
  v8 = [v7 value];

  v9 = [v5 cookie];
  v10 = [v9 value];
  v11 = [v10 unsignedIntegerValue];

  if ((v8 & 0x40000) != 0 && [*(a1 + 32) reconfigurationCookie] == v8 && objc_msgSend(*(a1 + 32), "reconfigurationCookie") == v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Fail-safe Wi-Fi reconfiguration successful", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 32);
    v17 = 1;
    v18 = 0;
    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 32);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [*(a1 + 32) reconfigurationCookie];
    v27 = 138544130;
    v28 = v22;
    v29 = 1024;
    v30 = v11;
    v31 = 1024;
    v32 = v8;
    v33 = 1024;
    v34 = v23;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit fail-safe Wi-Fi reconfiguration (cookie: %04x, status: %08x, expected cookie: %04x)", &v27, 0x1Eu);
  }

  objc_autoreleasePoolPop(v19);
  v24 = *(a1 + 32);
  v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  [v24 _reconfigurationCompletedWithSuccess:0 error:v25];

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDWiFiManagementController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  reconfigurationTimeoutTimer = [(HMDWiFiManagementController *)self reconfigurationTimeoutTimer];
  if (reconfigurationTimeoutTimer != fireCopy)
  {
LABEL_6:

    goto LABEL_7;
  }

  reconfigurationState = [(HMDWiFiManagementController *)self reconfigurationState];

  if (reconfigurationState == 2)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fail-safe Wi-Fi reconfiguration failed - timed out waiting for accessory reconnection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    reconfigurationTimeoutTimer = [MEMORY[0x277CCA9B8] hmErrorWithCode:100];
    [(HMDWiFiManagementController *)selfCopy _reconfigurationCompletedWithSuccess:0 error:reconfigurationTimeoutTimer];
    goto LABEL_6;
  }

LABEL_7:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryDidBecomeReachable:(id)reachable
{
  workQueue = [(HMDWiFiManagementController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDWiFiManagementController__accessoryDidBecomeReachable___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __60__HMDWiFiManagementController__accessoryDidBecomeReachable___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) reconfigurationState] == 2)
  {
    v2 = [*(a1 + 32) notificationCenter];
    [v2 removeObserver:*(a1 + 32)];

    v3 = [*(a1 + 32) reconfigurationTimeoutTimer];
    [v3 suspend];

    [*(a1 + 32) setReconfigurationState:3];
    v4 = [*(a1 + 32) reconfigurationVerificationCallback];

    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = [v5 reconfigurationVerificationCallback];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __60__HMDWiFiManagementController__accessoryDidBecomeReachable___block_invoke_2;
      v7[3] = &unk_278682310;
      v7[4] = *(a1 + 32);
      (v6)[2](v6, v7);
    }

    else
    {

      [v5 _commitConfigurationUpdate];
    }
  }
}

void __60__HMDWiFiManagementController__accessoryDidBecomeReachable___block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HMDWiFiManagementController__accessoryDidBecomeReachable___block_invoke_3;
  v5[3] = &unk_278688650;
  v6 = a2;
  v5[4] = *(a1 + 32);
  dispatch_async(v4, v5);
}

void __60__HMDWiFiManagementController__accessoryDidBecomeReachable___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    [v2 _commitConfigurationUpdate];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Fail-safe Wi-Fi reconfiguration connection verification failed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1081];
    [v8 _reconfigurationCompletedWithSuccess:0 error:v9];

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)safelyReconfigureWithSSID:(id)d PSK:(id)k verificationCallback:(id)callback logEvent:(id)event completion:(id)completion
{
  dCopy = d;
  kCopy = k;
  callbackCopy = callback;
  eventCopy = event;
  completionCopy = completion;
  workQueue = [(HMDWiFiManagementController *)self workQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __102__HMDWiFiManagementController_safelyReconfigureWithSSID_PSK_verificationCallback_logEvent_completion___block_invoke;
  v23[3] = &unk_278676728;
  v23[4] = self;
  v24 = dCopy;
  v27 = completionCopy;
  v28 = callbackCopy;
  v25 = eventCopy;
  v26 = kCopy;
  v18 = kCopy;
  v19 = eventCopy;
  v20 = callbackCopy;
  v21 = dCopy;
  v22 = completionCopy;
  dispatch_async(workQueue, v23);
}

void __102__HMDWiFiManagementController_safelyReconfigureWithSSID_PSK_verificationCallback_logEvent_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) reconfigurationState])
  {
    v2 = *(a1 + 64);
    v3 = MEMORY[0x277CCA9B8];
    v4 = 15;
LABEL_9:
    v17 = [v3 hmErrorWithCode:v4];
    completeWithError(v2, v17);
    v12 = *MEMORY[0x277D85DE8];

    return;
  }

  if (([*(a1 + 32) supportsStationConfiguration] & 1) == 0)
  {
    v2 = *(a1 + 64);
    v3 = MEMORY[0x277CCA9B8];
    v4 = 48;
    goto LABEL_9;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    *buf = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Performing fail-safe Wi-Fi reconfiguration with SSID '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) setReconfigurationState:1];
  [*(a1 + 32) setReconfigurationVerificationCallback:*(a1 + 72)];
  [*(a1 + 32) setReconfigurationCompletion:*(a1 + 64)];
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_alloc_init(HMDWiFiReconfigurationLogEvent);
  }

  v13 = v11;
  v14 = [*(a1 + 32) accessory];
  [(HMDWiFiReconfigurationLogEvent *)v13 setAccessory:v14];

  [(HMDWiFiReconfigurationLogEvent *)v13 setUsingFailSafeUpdate:1];
  [*(a1 + 32) setReconfigurationLogEvent:v13];
  v15 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__HMDWiFiManagementController_safelyReconfigureWithSSID_PSK_verificationCallback_logEvent_completion___block_invoke_24;
  v18[3] = &unk_278676700;
  v18[4] = v15;
  v19 = *(a1 + 40);
  v20 = *(a1 + 56);
  [v15 _performWiFiConfigurationControlRequest:0 withDescription:@"Get Status" completion:v18];

  v16 = *MEMORY[0x277D85DE8];
}

void __102__HMDWiFiManagementController_safelyReconfigureWithSSID_PSK_verificationCallback_logEvent_completion___block_invoke_24(id *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 updateStatus];
    v8 = [v7 value];

    if ((v8 & 0x10000) != 0)
    {
      v37 = a1[4];
      v38 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
      [v37 _reconfigurationCompletedWithSuccess:0 error:v38];
    }

    else
    {
      v9 = v5;
      do
      {
        while (1)
        {
          do
          {
            do
            {
              v10 = arc4random();
              v11 = v10;
            }

            while (!v10);
          }

          while (v10 == 1);
          v12 = v10;
          v13 = [v9 cookie];
          v14 = [v13 value];
          if (v11 != [v14 unsignedIntValue])
          {
            break;
          }
        }

        v15 = [v9 updateStatus];
        v16 = [v15 value];
      }

      while (v16 == v12);

      [a1[4] setReconfigurationCookie:v12];
      v17 = [MEMORY[0x277D0F8D0] sharedPreferences];
      v18 = [v17 preferenceForKey:@"wiFiReconfigurationTimeout"];
      v19 = [v18 numberValue];
      v20 = [v19 integerValue];

      v21 = 255;
      if (v20 < 255)
      {
        v21 = v20;
      }

      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      if (v22 != v20)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = a1[4];
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138544130;
          v42 = v26;
          v43 = 2112;
          v44 = @"wiFiReconfigurationTimeout";
          v45 = 2048;
          v46 = v20;
          v47 = 2048;
          v48 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Configured %@ value %ld is out of range, using %ld", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v23);
      }

      v27 = objc_alloc_init(MEMORY[0x277CFECB0]);
      v28 = [objc_alloc(MEMORY[0x277CFECB8]) initWithValue:3];
      [v27 setOperationType:v28];

      v29 = objc_alloc(MEMORY[0x277CFEC98]);
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(a1[4], "reconfigurationCookie")}];
      v31 = [v29 initWithValue:v30];
      [v27 setCookie:v31];

      v32 = makeStationConfiguration(a1[5], a1[6]);
      [v27 setStationConfiguration:v32];

      v33 = objc_alloc(MEMORY[0x277CFEC98]);
      v34 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
      v35 = [v33 initWithValue:v34];
      [v27 setOperationTimeout:v35];

      v36 = a1[4];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __102__HMDWiFiManagementController_safelyReconfigureWithSSID_PSK_verificationCallback_logEvent_completion___block_invoke_32;
      v40[3] = &unk_2786766D8;
      v40[4] = v36;
      v40[5] = v22;
      [v36 _performWiFiConfigurationControlRequest:v27 withDescription:@"Fail-Safe Configuration Update" completion:v40];
    }
  }

  else
  {
    [a1[4] _reconfigurationCompletedWithSuccess:0 error:v6];
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __102__HMDWiFiManagementController_safelyReconfigureWithSSID_PSK_verificationCallback_logEvent_completion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    [*(a1 + 32) _reconfigurationCompletedWithSuccess:0 error:v6];
    goto LABEL_14;
  }

  v7 = [v5 updateStatus];
  v8 = [v7 value];

  if ((v8 & 0x10000) != 0 && [*(a1 + 32) reconfigurationCookie] == v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if ((v8 & 0x20000) != 0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = *(a1 + 40);
        v29 = 138543618;
        v30 = v23;
        v31 = 2048;
        *v32 = v24;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Fail-safe Wi-Fi reconfiguration initiated, awaiting accessory disconnect/reconnect with timeout of %ld seconds", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v21 = [*(a1 + 32) accessory];
      [*(a1 + 32) setReconfigurationState:2];
      v25 = [*(a1 + 32) notificationCenter];
      [v25 addObserver:*(a1 + 32) selector:sel__accessoryDidBecomeReachable_ name:@"HMDAccessoryIsReachableNotification" object:v21];

      v26 = [*(a1 + 32) notificationCenter];
      [v26 addObserver:*(a1 + 32) selector:sel__accessoryDidBecomeReachable_ name:@"HMDAccessoryConfigNumberUpdatedNotification" object:v21];

      v27 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:*(a1 + 40)];
      v28 = [*(a1 + 32) workQueue];
      [v27 setDelegateQueue:v28];

      [v27 setDelegate:*(a1 + 32)];
      [*(a1 + 32) setReconfigurationTimeoutTimer:v27];
      [v27 resume];

      goto LABEL_12;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Wi-Fi reconfiguration without session restart is not supported", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) reconfigurationCookie];
      v29 = 138543874;
      v30 = v19;
      v31 = 1024;
      *v32 = v8;
      v32[2] = 1024;
      *&v32[3] = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to initiate fail-safe Wi-Fi reconfiguration (status: %08x, expected cookie: %04x)", &v29, 0x18u);
    }

    objc_autoreleasePoolPop(v16);
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1080];
  }

  v21 = v15;
  [v14 _reconfigurationCompletedWithSuccess:0 error:v15];
LABEL_12:

LABEL_14:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)reconfigureWithSSID:(id)d PSK:(id)k logEvent:(id)event completion:(id)completion
{
  dCopy = d;
  kCopy = k;
  eventCopy = event;
  completionCopy = completion;
  workQueue = [(HMDWiFiManagementController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDWiFiManagementController_reconfigureWithSSID_PSK_logEvent_completion___block_invoke;
  block[3] = &unk_278688978;
  v22 = kCopy;
  v23 = completionCopy;
  block[4] = self;
  v20 = dCopy;
  v21 = eventCopy;
  v15 = kCopy;
  v16 = eventCopy;
  v17 = dCopy;
  v18 = completionCopy;
  dispatch_async(workQueue, block);
}

void __75__HMDWiFiManagementController_reconfigureWithSSID_PSK_logEvent_completion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) reconfigurationState])
  {
    v2 = *(a1 + 64);
    v3 = MEMORY[0x277CCA9B8];
    v4 = 15;
LABEL_9:
    v21 = [v3 hmErrorWithCode:v4];
    completeWithError(v2, v21);
    v12 = *MEMORY[0x277D85DE8];

    return;
  }

  if (([*(a1 + 32) supportsStationConfiguration] & 1) == 0)
  {
    v2 = *(a1 + 64);
    v3 = MEMORY[0x277CCA9B8];
    v4 = 48;
    goto LABEL_9;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    *buf = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Performing simple Wi-Fi reconfiguration with SSID '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_alloc_init(HMDWiFiReconfigurationLogEvent);
  }

  v13 = v11;
  v14 = [*(a1 + 32) accessory];
  [(HMDWiFiReconfigurationLogEvent *)v13 setAccessory:v14];

  [(HMDWiFiReconfigurationLogEvent *)v13 setUsingFailSafeUpdate:0];
  [*(a1 + 32) setReconfigurationState:1];
  v15 = makeConfigurationControl(2);
  v16 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_283E72668];
  [v15 setCookie:v16];

  v17 = makeStationConfiguration(*(a1 + 40), *(a1 + 56));
  [v15 setStationConfiguration:v17];

  v18 = *(a1 + 32);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__HMDWiFiManagementController_reconfigureWithSSID_PSK_logEvent_completion___block_invoke_17;
  v22[3] = &unk_2786766B0;
  v23 = v13;
  v24 = v18;
  v25 = *(a1 + 64);
  v19 = v13;
  [v18 _performWiFiConfigurationControlRequest:v15 withDescription:@"Simple Configuration Update" completion:v22];

  v20 = *MEMORY[0x277D85DE8];
}

void __75__HMDWiFiManagementController_reconfigureWithSSID_PSK_logEvent_completion___block_invoke_17(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = 0;
LABEL_4:
    v9 = a1 + 4;
    [a1[4] setError:v8];
    goto LABEL_5;
  }

  v8 = v6;
  if (v6)
  {
    goto LABEL_4;
  }

  v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  v9 = a1 + 4;
  [a1[4] setError:v17];

LABEL_5:
  v10 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v10 submitLogEvent:*v9];

  if (v5)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1[5];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Simple Wi-Fi reconfiguration successful", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [a1[5] setReconfigurationState:0];
    v15 = a1[6];
    if (v15)
    {
      v15[2](v15, 0);
    }
  }

  else
  {
    [a1[5] setReconfigurationState:0];
    completeWithError(a1[6], v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (int64_t)capabilities
{
  accessory = [(HMDWiFiManagementController *)self accessory];
  wiFiTransportCapabilities = [accessory wiFiTransportCapabilities];
  unsignedIntegerValue = [wiFiTransportCapabilities unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (HMDWiFiManagementController)initWithAccessory:(id)accessory wiFiTransportService:(id)service workQueue:(id)queue
{
  accessoryCopy = accessory;
  serviceCopy = service;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = HMDWiFiManagementController;
  v11 = [(HMDWiFiManagementController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_accessory, accessoryCopy);
    objc_storeStrong(&v12->_service, service);
    objc_storeStrong(&v12->_workQueue, queue);
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23_82440 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23_82440, &__block_literal_global_82441);
  }

  v3 = logCategory__hmf_once_v24_82442;

  return v3;
}

void __42__HMDWiFiManagementController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v24_82442;
  logCategory__hmf_once_v24_82442 = v1;
}

+ (id)sharedPSKForNetworkWithSSID:(id)d
{
  v25[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v24 = @"ssid";
  v25[0] = dCopy;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v5 = WiFiCopyNetworkInfo();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hmf_stringForKey:@"password"];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 dataUsingEncoding:1];
      goto LABEL_11;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@No password available for Wi-Fi network '%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:0 userInfo:0];
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = dCopy;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve Wi-Fi network information for '%@': %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v9 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

@end