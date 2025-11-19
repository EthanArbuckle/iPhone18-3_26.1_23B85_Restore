@interface HMDAccessorySymptomHandler
+ (id)logCategory;
- (BOOL)_shouldFilterWiFiMismatchSymptomForAccessory:(id)a3;
- (HMDAccessory)accessory;
- (HMDAccessorySymptomHandler)initWithAccessory:(id)a3;
- (HMDAccessorySymptomHandler)initWithAccessory:(id)a3 logIdentifier:(id)a4 symptomManager:(id)a5 activeClientConnectionsManager:(id)a6;
- (id)_filteredSymptomsForSymptoms:(id)a3;
- (void)_handleInitiateFixMessage:(id)a3;
- (void)_handleSetSymptomsMessage:(id)a3;
- (void)_handleSubscribeMessage:(id)a3;
- (void)_handleUnsubscribeMessage:(id)a3;
- (void)_notifyAllSubscribedClientConnections;
- (void)_notifySubscribedClientConnection:(id)a3;
- (void)_notifySubscribedClientConnections:(id)a3;
- (void)_registerMessages;
- (void)_updateSFDeviceIdentifier:(id)a3;
- (void)clientConnectionsManager:(id)a3 didHandleActivationForClientConnection:(id)a4;
- (void)configure;
- (void)handleAccessoryDeviceUpdated;
- (void)symptomManager:(id)a3 didChangeSFDeviceIdentifier:(id)a4;
- (void)symptomManager:(id)a3 didChangeSymptoms:(id)a4;
- (void)updateSymptoms:(id)a3;
@end

@implementation HMDAccessorySymptomHandler

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)clientConnectionsManager:(id)a3 didHandleActivationForClientConnection:(id)a4
{
  v6 = a4;
  v5 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDAccessorySymptomHandler *)self _notifySubscribedClientConnection:v6];
}

- (void)symptomManager:(id)a3 didChangeSFDeviceIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessorySymptomHandler *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HMDAccessorySymptomHandler_symptomManager_didChangeSFDeviceIdentifier___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)symptomManager:(id)a3 didChangeSymptoms:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessorySymptomHandler *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HMDAccessorySymptomHandler_symptomManager_didChangeSymptoms___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __63__HMDAccessorySymptomHandler_symptomManager_didChangeSymptoms___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _filteredSymptomsForSymptoms:*(a1 + 40)];
  [v1 updateSymptoms:v2];
}

- (void)_handleSetSymptomsMessage:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    *buf = 138543618;
    v55 = v9;
    v56 = 2112;
    v57 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling set symptoms message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = *MEMORY[0x277CD11F8];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v16 = [v4 unarchivedObjectForKey:v14 ofClasses:v15];

    if (v16)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v49;
        while (2)
        {
          v21 = 0;
          do
          {
            if (*v49 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v48 + 1) + 8 * v21);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v30 = objc_autoreleasePoolPush();
              v31 = v7;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543618;
                v55 = v33;
                v56 = 2112;
                v57 = v22;
                _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid type of symptom is pass in: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v30);
              v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
              [v4 respondWithError:v34];

              goto LABEL_26;
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v23 = [(HMDAccessorySymptomHandler *)v7 workQueue];
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __56__HMDAccessorySymptomHandler__handleSetSymptomsMessage___block_invoke;
      v45 = &unk_2797359B0;
      v46 = v7;
      v17 = v17;
      v47 = v17;
      dispatch_async(v23, &v42);

      [v4 respondWithSuccess];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = v7;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        v39 = [v4 shortDescription];
        *buf = 138543618;
        v55 = v38;
        v56 = 2112;
        v57 = v39;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Symptom values not found in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v40];

      v17 = 0;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v7;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = objc_opt_class();
      v29 = [v4 transport];
      *buf = 138543874;
      v55 = v27;
      v56 = 2112;
      v57 = v28;
      v58 = 2112;
      v59 = v29;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Set symptoms transport was not of expected class %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v17];
  }

LABEL_26:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_handleUnsubscribeMessage:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    v23 = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling unsubscribe message: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [(HMDAccessorySymptomHandler *)v7 activeClientConnectionsManager];
    [v14 removeClientConnection:v13];

    [v4 respondWithSuccess];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = objc_opt_class();
      v20 = [v4 transport];
      v23 = 138543874;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unsubscribing transport was not of expected class %@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleSubscribeMessage:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    v23 = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [(HMDAccessorySymptomHandler *)v7 activeClientConnectionsManager];
    [v14 addClientConnection:v13];

    [v4 respondWithSuccess];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = objc_opt_class();
      v20 = [v4 transport];
      v23 = 138543874;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleInitiateFixMessage:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    *buf = 138543618;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling initiate fix message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDAccessorySymptomHandler *)v7 accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [(HMDAccessorySymptomHandler *)v7 symptomManager];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__HMDAccessorySymptomHandler__handleInitiateFixMessage___block_invoke;
    v22[3] = &unk_279734D88;
    v22[4] = v7;
    v23 = v13;
    v24 = v4;
    [v14 initiateFixForAccessory:v23 completion:v22];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDAccessorySymptomHandler *)v16 accessory];
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot initiate fix for non-Apple-media accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __56__HMDAccessorySymptomHandler__handleInitiateFixMessage___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to initiate fix for accessory %@: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithError:v3];
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully initiated fix for accessory: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithSuccess];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifySubscribedClientConnections:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(HMDAccessorySymptomHandler *)self symptoms];
  v8 = encodeRootObjectForIncomingXPCMessage(v7, 0);
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD11F8]];

  v9 = [(HMDAccessorySymptomHandler *)self sfDeviceIdentifier];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD11D8]];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    v13 = *MEMORY[0x277CD11F0];
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        v16 = [MEMORY[0x277D0F848] entitledMessageWithName:v13 messagePayload:v6];
        [v16 setTransport:v15];
        v17 = objc_alloc(MEMORY[0x277D0F820]);
        v18 = [(HMDAccessorySymptomHandler *)self messageTargetUUID];
        v19 = [v17 initWithTarget:v18];
        [v16 setDestination:v19];

        v20 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
        [v20 sendMessage:v16];

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifySubscribedClientConnection:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribed client of updated symptom state: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB98] setWithObject:v4];
  [(HMDAccessorySymptomHandler *)v7 _notifySubscribedClientConnections:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAllSubscribedClientConnections
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessorySymptomHandler *)self activeClientConnectionsManager];
  v5 = [v4 clientConnections];

  v6 = [v5 count];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2048;
      v17 = [v5 count];
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying all %lu subscribed clients of updated symptom state", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDAccessorySymptomHandler *)v8 _notifySubscribedClientConnections:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed clients to notify of updated symptom state", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldFilterWiFiMismatchSymptomForAccessory:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 home];
  v6 = [v4 device];
  v7 = [v6 productInfo];

  if (v7)
  {
    if ([v7 productClass] != 6)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v13;
        v14 = "%{public}@Removing WiFi network mismatch symptom for accessory because it is not an audio accessory";
LABEL_18:
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, v14, &buf, 0xCu);
      }

LABEL_19:

      objc_autoreleasePoolPop(v10);
      v18 = 1;
      goto LABEL_20;
    }

    v8 = [v7 softwareVersion];
    v9 = v8;
    if (v8)
    {
      [v8 operatingSystemVersion];
    }

    else
    {
      buf = 0uLL;
      v25 = 0;
    }

    v22 = *MEMORY[0x277D0F5A0];
    v23 = *(MEMORY[0x277D0F5A0] + 16);
    v15 = HMFOperatingSystemVersionCompare();

    if (v15 == -1)
    {
      v10 = objc_autoreleasePoolPush();
      v19 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v13;
        v14 = "%{public}@Removing WiFi network mismatch symptom for accessory because it is a pre-Peace accessory";
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  if ([v5 synchronouslyFetchIsConnectedToCarPlayNetwork])
  {
    v10 = objc_autoreleasePoolPush();
    v16 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      v14 = "%{public}@Removing WiFi network mismatch symptom for accessory because there is a wireless CarPlay connection";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ([v5 hasActiveWACPairing])
  {
    v10 = objc_autoreleasePoolPush();
    v17 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      v14 = "%{public}@Removing WiFi network mismatch symptom for accessory because there is an active WAC pairing";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v18 = 0;
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_filteredSymptomsForSymptoms:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 mutableCopy];
  v7 = [(HMDAccessorySymptomHandler *)self accessory];
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
    v10 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
    if ([v6 containsObject:v10] && -[HMDAccessorySymptomHandler _shouldFilterWiFiMismatchSymptomForAccessory:](self, "_shouldFilterWiFiMismatchSymptomForAccessory:", v9))
    {
      [v6 removeObject:v10];
    }

    v11 = [v9 capabilities];
    if (([v11 supportsCaptiveNetworks] & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v15;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Remove NeedCaptiveLeaseRenewal symptom as accessory %@ does not support captive networks", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:19];
      [v6 removeObject:v16];
    }
  }

  v17 = [v6 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_registerMessages
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v4 = *MEMORY[0x277CD11D0];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v26[0] = v5;
  v6 = [(HMDAccessorySymptomHandler *)self accessory];
  v7 = [v6 home];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v7 userPrivilege:4 remoteAccessRequired:0];
  v26[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [v3 registerForMessage:v4 receiver:self policies:v9 selector:sel__handleInitiateFixMessage_];

  v10 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v11 = *MEMORY[0x277CD11E8];
  v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v25 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [v10 registerForMessage:v11 receiver:self policies:v13 selector:sel__handleSubscribeMessage_];

  v14 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v15 = *MEMORY[0x277CD1200];
  v16 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v24 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [v14 registerForMessage:v15 receiver:self policies:v17 selector:sel__handleUnsubscribeMessage_];

  v18 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v19 = *MEMORY[0x277CD11E0];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v23 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [v18 registerForMessage:v19 receiver:self policies:v21 selector:sel__handleSetSymptomsMessage_];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateSFDeviceIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDAccessorySymptomHandler *)self sfDeviceIdentifier];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    [(HMDAccessorySymptomHandler *)self setSfDeviceIdentifier:v7];
    [(HMDAccessorySymptomHandler *)self _notifyAllSubscribedClientConnections];
  }
}

- (void)updateSymptoms:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessorySymptomHandler *)self symptoms];
  v7 = [v6 isEqualToSet:v4];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDAccessorySymptomHandler *)v9 symptoms];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Not updating accessory symptoms from %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDAccessorySymptomHandler *)v9 symptoms];
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory symptoms from %@ to %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDAccessorySymptomHandler *)v9 setSymptoms:v4];
    [(HMDAccessorySymptomHandler *)v9 _notifyAllSubscribedClientConnections];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryDeviceUpdated
{
  v3 = [(HMDAccessorySymptomHandler *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  v5 = [v8 home];
  v6 = [v5 isOwnerUser];

  if (v6)
  {
    v7 = [(HMDAccessorySymptomHandler *)self symptomManager];
    [v7 registerAccessory:v8 delegate:self];
  }
}

- (void)configure
{
  v3 = [(HMDAccessorySymptomHandler *)self activeClientConnectionsManager];
  [v3 setDelegate:self];

  v4 = [(HMDAccessorySymptomHandler *)self activeClientConnectionsManager];
  [v4 configure];

  v5 = [(HMDAccessorySymptomHandler *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;

  v7 = [v10 home];
  v8 = [v7 isOwnerUser];

  if (v8)
  {
    if (v10)
    {
      v9 = [(HMDAccessorySymptomHandler *)self symptomManager];
      [v9 registerAccessory:v10 delegate:self];
    }

    [(HMDAccessorySymptomHandler *)self _registerMessages];
  }
}

- (HMDAccessorySymptomHandler)initWithAccessory:(id)a3 logIdentifier:(id)a4 symptomManager:(id)a5 activeClientConnectionsManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = HMDAccessorySymptomHandler;
  v14 = [(HMDAccessorySymptomHandler *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, v10);
    objc_storeStrong(&v15->_logIdentifier, a4);
    objc_storeStrong(&v15->_symptomManager, a5);
    objc_storeStrong(&v15->_activeClientConnectionsManager, a6);
    v16 = [v10 workQueue];
    workQueue = v15->_workQueue;
    v15->_workQueue = v16;

    v18 = [v10 msgDispatcher];
    msgDispatcher = v15->_msgDispatcher;
    v15->_msgDispatcher = v18;

    v20 = [v10 uuid];
    accessoryUUID = v15->_accessoryUUID;
    v15->_accessoryUUID = v20;

    v22 = [MEMORY[0x277CBEB98] set];
    symptoms = v15->_symptoms;
    v15->_symptoms = v22;

    v24 = [MEMORY[0x277CD1E88] symptomsHandlerUUIDFromAccessoryUUID:v15->_accessoryUUID];
    uuid = v15->_uuid;
    v15->_uuid = v24;
  }

  return v15;
}

- (HMDAccessorySymptomHandler)initWithAccessory:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v5 uuid];
  v7 = [(HMDAccessorySymptomHandler *)self uuid];
  v8 = [v4 stringWithFormat:@"%@.%@", v6, v7];

  v9 = +[HMDMainDriver driver];
  v10 = [v9 symptomManager];

  v11 = [HMDActiveXPCClientConnectionsManager alloc];
  v12 = [v5 workQueue];
  v13 = [(HMDActiveXPCClientConnectionsManager *)v11 initWithLogIdentifier:v8 workQueue:v12];

  v14 = [(HMDAccessorySymptomHandler *)self initWithAccessory:v5 logIdentifier:v8 symptomManager:v10 activeClientConnectionsManager:v13];
  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29, &__block_literal_global_15069);
  }

  v3 = logCategory__hmf_once_v30;

  return v3;
}

uint64_t __41__HMDAccessorySymptomHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v30 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end