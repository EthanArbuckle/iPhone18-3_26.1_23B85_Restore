@interface HMDAccessorySymptomHandler
+ (id)logCategory;
- (BOOL)_shouldFilterWiFiMismatchSymptomForAccessory:(id)accessory;
- (HMDAccessory)accessory;
- (HMDAccessorySymptomHandler)initWithAccessory:(id)accessory;
- (HMDAccessorySymptomHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier symptomManager:(id)manager activeClientConnectionsManager:(id)connectionsManager;
- (id)_filteredSymptomsForSymptoms:(id)symptoms;
- (void)_handleInitiateFixMessage:(id)message;
- (void)_handleSetSymptomsMessage:(id)message;
- (void)_handleSubscribeMessage:(id)message;
- (void)_handleUnsubscribeMessage:(id)message;
- (void)_notifyAllSubscribedClientConnections;
- (void)_notifySubscribedClientConnection:(id)connection;
- (void)_notifySubscribedClientConnections:(id)connections;
- (void)_registerMessages;
- (void)_updateSFDeviceIdentifier:(id)identifier;
- (void)clientConnectionsManager:(id)manager didHandleActivationForClientConnection:(id)connection;
- (void)configure;
- (void)handleAccessoryDeviceUpdated;
- (void)symptomManager:(id)manager didChangeSFDeviceIdentifier:(id)identifier;
- (void)symptomManager:(id)manager didChangeSymptoms:(id)symptoms;
- (void)updateSymptoms:(id)symptoms;
@end

@implementation HMDAccessorySymptomHandler

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)clientConnectionsManager:(id)manager didHandleActivationForClientConnection:(id)connection
{
  connectionCopy = connection;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessorySymptomHandler *)self _notifySubscribedClientConnection:connectionCopy];
}

- (void)symptomManager:(id)manager didChangeSFDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HMDAccessorySymptomHandler_symptomManager_didChangeSFDeviceIdentifier___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(workQueue, v8);
}

- (void)symptomManager:(id)manager didChangeSymptoms:(id)symptoms
{
  symptomsCopy = symptoms;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HMDAccessorySymptomHandler_symptomManager_didChangeSymptoms___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = symptomsCopy;
  v7 = symptomsCopy;
  dispatch_async(workQueue, v8);
}

void __63__HMDAccessorySymptomHandler_symptomManager_didChangeSymptoms___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _filteredSymptomsForSymptoms:*(a1 + 40)];
  [v1 updateSymptoms:v2];
}

- (void)_handleSetSymptomsMessage:(id)message
{
  v60 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v55 = v9;
    v56 = 2112;
    v57 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling set symptoms message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = transport;
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
    v16 = [messageCopy unarchivedObjectForKey:v14 ofClasses:v15];

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
              v31 = selfCopy;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543618;
                v55 = v33;
                v56 = 2112;
                v57 = v22;
                _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid type of symptom is pass in: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v30);
              v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
              [messageCopy respondWithError:v34];

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

      workQueue2 = [(HMDAccessorySymptomHandler *)selfCopy workQueue];
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __56__HMDAccessorySymptomHandler__handleSetSymptomsMessage___block_invoke;
      v45 = &unk_27868A750;
      v46 = selfCopy;
      v17 = v17;
      v47 = v17;
      dispatch_async(workQueue2, &v42);

      [messageCopy respondWithSuccess];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        shortDescription2 = [messageCopy shortDescription];
        *buf = 138543618;
        v55 = v38;
        v56 = 2112;
        v57 = shortDescription2;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Symptom values not found in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v40];

      v17 = 0;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = objc_opt_class();
      transport2 = [messageCopy transport];
      *buf = 138543874;
      v55 = v27;
      v56 = 2112;
      v57 = v28;
      v58 = 2112;
      v59 = transport2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Set symptoms transport was not of expected class %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v17];
  }

LABEL_26:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_handleUnsubscribeMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v23 = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling unsubscribe message: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = transport;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    activeClientConnectionsManager = [(HMDAccessorySymptomHandler *)selfCopy activeClientConnectionsManager];
    [activeClientConnectionsManager removeClientConnection:v13];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = objc_opt_class();
      transport2 = [messageCopy transport];
      v23 = 138543874;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = transport2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unsubscribing transport was not of expected class %@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleSubscribeMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v23 = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = transport;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    activeClientConnectionsManager = [(HMDAccessorySymptomHandler *)selfCopy activeClientConnectionsManager];
    [activeClientConnectionsManager addClientConnection:v13];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = objc_opt_class();
      transport2 = [messageCopy transport];
      v23 = 138543874;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = transport2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleInitiateFixMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v26 = v9;
    v27 = 2112;
    v28 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling initiate fix message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  accessory = [(HMDAccessorySymptomHandler *)selfCopy accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = accessory;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    symptomManager = [(HMDAccessorySymptomHandler *)selfCopy symptomManager];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__HMDAccessorySymptomHandler__handleInitiateFixMessage___block_invoke;
    v22[3] = &unk_278688D58;
    v22[4] = selfCopy;
    v23 = v13;
    v24 = messageCopy;
    [symptomManager initiateFixForAccessory:v23 completion:v22];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      accessory2 = [(HMDAccessorySymptomHandler *)v16 accessory];
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = accessory2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot initiate fix for non-Apple-media accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v20];
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to initiate fix for accessory %@: %@", &v13, 0x20u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully initiated fix for accessory: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithSuccess];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifySubscribedClientConnections:(id)connections
{
  v28 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  symptoms = [(HMDAccessorySymptomHandler *)self symptoms];
  v8 = encodeRootObjectForIncomingXPCMessage(symptoms, 0);
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277CD11F8]];

  sfDeviceIdentifier = [(HMDAccessorySymptomHandler *)self sfDeviceIdentifier];
  [dictionary setObject:sfDeviceIdentifier forKeyedSubscript:*MEMORY[0x277CD11D8]];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = connectionsCopy;
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
        v16 = [MEMORY[0x277D0F848] entitledMessageWithName:v13 messagePayload:dictionary];
        [v16 setTransport:v15];
        v17 = objc_alloc(MEMORY[0x277D0F820]);
        messageTargetUUID = [(HMDAccessorySymptomHandler *)self messageTargetUUID];
        v19 = [v17 initWithTarget:messageTargetUUID];
        [v16 setDestination:v19];

        msgDispatcher = [(HMDAccessorySymptomHandler *)self msgDispatcher];
        [msgDispatcher sendMessage:v16];

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifySubscribedClientConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = connectionCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribed client of updated symptom state: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB98] setWithObject:connectionCopy];
  [(HMDAccessorySymptomHandler *)selfCopy _notifySubscribedClientConnections:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAllSubscribedClientConnections
{
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  activeClientConnectionsManager = [(HMDAccessorySymptomHandler *)self activeClientConnectionsManager];
  clientConnections = [activeClientConnectionsManager clientConnections];

  v6 = [clientConnections count];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
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
      v17 = [clientConnections count];
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying all %lu subscribed clients of updated symptom state", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDAccessorySymptomHandler *)selfCopy _notifySubscribedClientConnections:clientConnections];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed clients to notify of updated symptom state", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldFilterWiFiMismatchSymptomForAccessory:(id)accessory
{
  v26 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  device = [accessoryCopy device];
  productInfo = [device productInfo];

  if (productInfo)
  {
    if ([productInfo productClass] != 6)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v13;
        v14 = "%{public}@Removing WiFi network mismatch symptom for accessory because it is not an audio accessory";
LABEL_18:
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v14, &buf, 0xCu);
      }

LABEL_19:

      objc_autoreleasePoolPop(v10);
      v18 = 1;
      goto LABEL_20;
    }

    softwareVersion = [productInfo softwareVersion];
    v9 = softwareVersion;
    if (softwareVersion)
    {
      [softwareVersion operatingSystemVersion];
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
      selfCopy2 = self;
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

  if ([home synchronouslyFetchIsConnectedToCarPlayNetwork])
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

  if ([home hasActiveWACPairing])
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy4 = self;
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

- (id)_filteredSymptomsForSymptoms:(id)symptoms
{
  v24 = *MEMORY[0x277D85DE8];
  symptomsCopy = symptoms;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [symptomsCopy mutableCopy];
  accessory = [(HMDAccessorySymptomHandler *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = accessory;
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

    capabilities = [v9 capabilities];
    if (([capabilities supportsCaptiveNetworks] & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v15;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Remove NeedCaptiveLeaseRenewal symptom as accessory %@ does not support captive networks", &v20, 0x16u);
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
  msgDispatcher = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v4 = *MEMORY[0x277CD11D0];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v26[0] = v5;
  accessory = [(HMDAccessorySymptomHandler *)self accessory];
  home = [accessory home];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v26[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [msgDispatcher registerForMessage:v4 receiver:self policies:v9 selector:sel__handleInitiateFixMessage_];

  msgDispatcher2 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v11 = *MEMORY[0x277CD11E8];
  v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v25 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [msgDispatcher2 registerForMessage:v11 receiver:self policies:v13 selector:sel__handleSubscribeMessage_];

  msgDispatcher3 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v15 = *MEMORY[0x277CD1200];
  v16 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v24 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [msgDispatcher3 registerForMessage:v15 receiver:self policies:v17 selector:sel__handleUnsubscribeMessage_];

  msgDispatcher4 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v19 = *MEMORY[0x277CD11E0];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v23 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [msgDispatcher4 registerForMessage:v19 receiver:self policies:v21 selector:sel__handleSetSymptomsMessage_];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateSFDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sfDeviceIdentifier = [(HMDAccessorySymptomHandler *)self sfDeviceIdentifier];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    [(HMDAccessorySymptomHandler *)self setSfDeviceIdentifier:identifierCopy];
    [(HMDAccessorySymptomHandler *)self _notifyAllSubscribedClientConnections];
  }
}

- (void)updateSymptoms:(id)symptoms
{
  v23 = *MEMORY[0x277D85DE8];
  symptomsCopy = symptoms;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  symptoms = [(HMDAccessorySymptomHandler *)self symptoms];
  v7 = [symptoms isEqualToSet:symptomsCopy];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      symptoms2 = [(HMDAccessorySymptomHandler *)selfCopy symptoms];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = symptoms2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not updating accessory symptoms from %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      symptoms3 = [(HMDAccessorySymptomHandler *)selfCopy symptoms];
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = symptoms3;
      v21 = 2112;
      v22 = symptomsCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory symptoms from %@ to %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDAccessorySymptomHandler *)selfCopy setSymptoms:symptomsCopy];
    [(HMDAccessorySymptomHandler *)selfCopy _notifyAllSubscribedClientConnections];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryDeviceUpdated
{
  accessory = [(HMDAccessorySymptomHandler *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = accessory;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  home = [v8 home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    symptomManager = [(HMDAccessorySymptomHandler *)self symptomManager];
    [symptomManager registerAccessory:v8 delegate:self];
  }
}

- (void)configure
{
  activeClientConnectionsManager = [(HMDAccessorySymptomHandler *)self activeClientConnectionsManager];
  [activeClientConnectionsManager setDelegate:self];

  activeClientConnectionsManager2 = [(HMDAccessorySymptomHandler *)self activeClientConnectionsManager];
  [activeClientConnectionsManager2 configure];

  accessory = [(HMDAccessorySymptomHandler *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = accessory;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;

  home = [v10 home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    if (v10)
    {
      symptomManager = [(HMDAccessorySymptomHandler *)self symptomManager];
      [symptomManager registerAccessory:v10 delegate:self];
    }

    [(HMDAccessorySymptomHandler *)self _registerMessages];
  }
}

- (HMDAccessorySymptomHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier symptomManager:(id)manager activeClientConnectionsManager:(id)connectionsManager
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  managerCopy = manager;
  connectionsManagerCopy = connectionsManager;
  v27.receiver = self;
  v27.super_class = HMDAccessorySymptomHandler;
  v14 = [(HMDAccessorySymptomHandler *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, accessoryCopy);
    objc_storeStrong(&v15->_logIdentifier, identifier);
    objc_storeStrong(&v15->_symptomManager, manager);
    objc_storeStrong(&v15->_activeClientConnectionsManager, connectionsManager);
    workQueue = [accessoryCopy workQueue];
    workQueue = v15->_workQueue;
    v15->_workQueue = workQueue;

    msgDispatcher = [accessoryCopy msgDispatcher];
    msgDispatcher = v15->_msgDispatcher;
    v15->_msgDispatcher = msgDispatcher;

    uuid = [accessoryCopy uuid];
    accessoryUUID = v15->_accessoryUUID;
    v15->_accessoryUUID = uuid;

    v22 = [MEMORY[0x277CBEB98] set];
    symptoms = v15->_symptoms;
    v15->_symptoms = v22;

    v24 = [MEMORY[0x277CD1E88] symptomsHandlerUUIDFromAccessoryUUID:v15->_accessoryUUID];
    uuid = v15->_uuid;
    v15->_uuid = v24;
  }

  return v15;
}

- (HMDAccessorySymptomHandler)initWithAccessory:(id)accessory
{
  v4 = MEMORY[0x277CCACA8];
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  uuid2 = [(HMDAccessorySymptomHandler *)self uuid];
  v8 = [v4 stringWithFormat:@"%@.%@", uuid, uuid2];

  v9 = +[HMDMainDriver driver];
  symptomManager = [v9 symptomManager];

  v11 = [HMDActiveXPCClientConnectionsManager alloc];
  workQueue = [accessoryCopy workQueue];
  v13 = [(HMDActiveXPCClientConnectionsManager *)v11 initWithLogIdentifier:v8 workQueue:workQueue];

  v14 = [(HMDAccessorySymptomHandler *)self initWithAccessory:accessoryCopy logIdentifier:v8 symptomManager:symptomManager activeClientConnectionsManager:v13];
  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29, &__block_literal_global_21643);
  }

  v3 = logCategory__hmf_once_v30;

  return v3;
}

void __41__HMDAccessorySymptomHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v30;
  logCategory__hmf_once_v30 = v1;
}

@end