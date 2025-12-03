@interface HMDHomeReprovisionHandler
+ (id)logCategory;
- (HMDHomeReprovisionHandler)init;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)home;
- (id)logIdentifier;
- (id)messageDestination;
- (void)_handleReprovisionAccessory:(id)accessory;
- (void)_handleRequestSearchForAccessoriesNeedingReprovisioning:(id)reprovisioning;
- (void)_reportAccessoryNeedingReprovision:(void *)reprovision error:;
- (void)_reprovisionAccessory:(void *)accessory networkCredential:(void *)credential requestMessage:;
- (void)configure:(id)configure queue:(id)queue messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)handleFoundAccessoryNeedingReprovisioning:(id)reprovisioning error:(id)error;
- (void)handleReprovionedAccessory:(id)accessory identifier:(id)identifier error:(id)error;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDHomeReprovisionHandler

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = self->_workQueue;
  }

  return self;
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDHomeReprovisionHandler *)&self->super.super.isa home];
  uuid = [home uuid];

  return uuid;
}

- (id)home
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 4);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v24 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v4 = fireCopy;
    if (self->_disableReprovisionBrowsingTimer != fireCopy)
    {
      goto LABEL_11;
    }

    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Disable reprovision browsing timer fired", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    if (selfCopy->_reprovisionBrowsingPending)
    {
      selfCopy->_reprovisionBrowsingPending = 0;
      selfCopy->_reprovisionBrowsingAllowed = 0;
      WeakRetained = objc_loadWeakRetained(&selfCopy->_accessoryBrowser);
      [WeakRetained startDiscoveringAccessoriesNeedingReprovisioning];

      [(HMFTimer *)selfCopy->_disableReprovisionBrowsingTimer resume];
      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        disableReprovisionBrowsingTimer = v11->_disableReprovisionBrowsingTimer;
        *buf = 138543874;
        v19 = v13;
        v20 = 2048;
        v21 = disableReprovisionBrowsingTimer;
        v22 = 2048;
        v23 = disableReprivsionBrowsingPeriodInMinutes;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Resumed disable reprovision browsing timer %p for %f sec", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      selfCopy->_reprovisionBrowsingAllowed = 1;
      [(HMFTimer *)selfCopy->_disableReprovisionBrowsingTimer cancel];
      v15 = selfCopy->_disableReprovisionBrowsingTimer;
      selfCopy->_disableReprovisionBrowsingTimer = 0;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }

  v4 = fireCopy;
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleReprovionedAccessory:(id)accessory identifier:(id)identifier error:(id)error
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  errorCopy = error;
  if (self)
  {
    pendingReprovisionRequests = self->_pendingReprovisionRequests;
  }

  else
  {
    pendingReprovisionRequests = 0;
  }

  v11 = [(NSMutableDictionary *)pendingReprovisionRequests valueForKey:identifierCopy];

  if (v11)
  {
    [accessoryCopy setAccessoryReprovisionState:0];
    home = [(HMDHomeReprovisionHandler *)&self->super.super.isa home];
    homeManager = [home homeManager];
    uuid = [accessoryCopy uuid];
    [homeManager updateGenerationCounterWithReason:@"ReprovisionNotRequired" sourceUUID:uuid shouldNotifyClients:0];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    uuid2 = [accessoryCopy uuid];
    uUIDString = [uuid2 UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CCF0B0]];

    if (self)
    {
      v18 = self->_pendingReprovisionRequests;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(NSMutableDictionary *)v18 objectForKey:identifierCopy];
    if (self)
    {
      v20 = self->_pendingReprovisionRequests;
    }

    else
    {
      v20 = 0;
    }

    [(NSMutableDictionary *)v20 removeObjectForKey:identifierCopy];
    if (errorCopy)
    {
      networkCredential3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
      if (networkCredential3)
      {
        [dictionary setObject:networkCredential3 forKeyedSubscript:@"kPairedAccessoryErrorDataKey"];
      }
    }

    else
    {
      networkCredential = [v19 networkCredential];
      wiFiPSK = [networkCredential wiFiPSK];
      networkCredential2 = [v19 networkCredential];
      wiFiPSK2 = [networkCredential2 wiFiPSK];
      if (wiFiPSK2)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      [accessoryCopy saveWiFiUniquePreSharedKey:wiFiPSK credentialType:v26];

      networkCredential3 = [v19 networkCredential];
      clientIdentifier = [networkCredential3 clientIdentifier];
      networkCredential4 = [v19 networkCredential];
      networkRouterUUID = [networkCredential4 networkRouterUUID];
      [accessoryCopy saveNetworkClientIdentifier:clientIdentifier networkRouterUUID:networkRouterUUID clearProfileFingerprint:1];
    }

    v30 = MEMORY[0x277D0F818];
    v31 = *MEMORY[0x277CD2000];
    messageIdentifier = [v19 messageIdentifier];
    v33 = [v30 entitledMessageWithName:v31 identifier:messageIdentifier messagePayload:dictionary];

    messageDestination = [(HMDHomeReprovisionHandler *)self messageDestination];
    [v33 setDestination:messageDestination];

    if (self)
    {
      msgDispatcher = self->_msgDispatcher;
    }

    else
    {
      msgDispatcher = 0;
    }

    [(HMFMessageDispatcher *)msgDispatcher sendMessage:v33 completionHandler:0];
  }
}

- (id)messageDestination
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc(MEMORY[0x277D0F820]);
    messageTargetUUID = [selfCopy messageTargetUUID];
    selfCopy = [v2 initWithTarget:messageTargetUUID];
  }

  return selfCopy;
}

- (void)handleFoundAccessoryNeedingReprovisioning:(id)reprovisioning error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  reprovisioningCopy = reprovisioning;
  errorCopy = error;
  if (![reprovisioningCopy accessoryReprovisionState])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      name = [reprovisioningCopy name];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = name;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ reprovision state is updated to Required", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [reprovisioningCopy setAccessoryReprovisionState:1];
    home = [(HMDHomeReprovisionHandler *)&selfCopy->super.super.isa home];
    homeManager = [home homeManager];
    uuid = [reprovisioningCopy uuid];
    [homeManager updateGenerationCounterWithReason:@"ReprovisionRequired" sourceUUID:uuid shouldNotifyClients:0];

    [(HMDHomeReprovisionHandler *)&selfCopy->super.super.isa _reportAccessoryNeedingReprovision:reprovisioningCopy error:errorCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_reportAccessoryNeedingReprovision:(void *)reprovision error:
{
  reprovisionCopy = reprovision;
  if (self)
  {
    v6 = MEMORY[0x277CBEB38];
    v16 = reprovisionCopy;
    v7 = a2;
    dictionary = [v6 dictionary];
    uuid = [v7 uuid];

    uUIDString = [uuid UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CCF0B0]];

    [dictionary setObject:&unk_283E72F20 forKeyedSubscript:*MEMORY[0x277CD2008]];
    if (v16)
    {
      v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
      if (v11)
      {
        [dictionary setObject:v11 forKeyedSubscript:@"kPairedAccessoryErrorDataKey"];
      }
    }

    v12 = MEMORY[0x277D0F848];
    v13 = *MEMORY[0x277CD1FF8];
    messageDestination = [(HMDHomeReprovisionHandler *)self messageDestination];
    v15 = [v12 messageWithName:v13 destination:messageDestination payload:dictionary];

    [self[3] sendMessage:v15 completionHandler:0];
    reprovisionCopy = v16;
  }
}

- (void)_handleReprovisionAccessory:(id)accessory
{
  v86 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (isiOSDevice())
  {
    if (self)
    {
      self->_reprovisionBrowsingPending = 0;
      self->_reprovisionBrowsingAllowed = 1;
      [(HMFTimer *)self->_disableReprovisionBrowsingTimer cancel];
      objc_storeStrong(&self->_disableReprovisionBrowsingTimer, 0);
    }

    else
    {
      [0 cancel];
    }

    v5 = *MEMORY[0x277CCF0B0];
    responseHandler9 = [accessoryCopy uuidForKey:*MEMORY[0x277CCF0B0]];
    if (!responseHandler9)
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        messagePayload = [accessoryCopy messagePayload];
        *buf = 138543618;
        v83 = v35;
        v84 = 2112;
        v85 = messagePayload;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Missing target accessory UUID from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      responseHandler = [accessoryCopy responseHandler];

      if (!responseHandler)
      {
        goto LABEL_47;
      }

      home = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      responseHandler2 = [accessoryCopy responseHandler];
      (responseHandler2)[2](responseHandler2, home, 0);
      goto LABEL_46;
    }

    home = [(HMDHomeReprovisionHandler *)&self->super.super.isa home];
    responseHandler2 = [home homeManager];
    v9 = [home accessoryWithUUID:responseHandler9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v78 = v11;
    if (v11)
    {
      v77 = responseHandler2;
      if ([v11 reachableTransports])
      {
        v76 = home;
        v44 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = HMFGetLogIdentifier();
          name = [v9 name];
          *buf = 138543618;
          v83 = v47;
          v84 = 2112;
          v85 = name;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@Reprovision accessory failed since the accessory: %@ is already in the network", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v49 = objc_autoreleasePoolPush();
        v50 = selfCopy2;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = HMFGetLogIdentifier();
          name2 = [v9 name];
          *buf = 138543618;
          v83 = v52;
          v84 = 2112;
          v85 = name2;
          _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ reprovision state is updated to NotRequired", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v49);
        [v9 setAccessoryReprovisionState:0];
        uuid = [v9 uuid];
        [v77 updateGenerationCounterWithReason:@"ReprovisionNotRequired" sourceUUID:uuid shouldNotifyClients:0];

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        uuid2 = [v9 uuid];
        uUIDString = [uuid2 UUIDString];
        [dictionary setObject:uUIDString forKeyedSubscript:v5];

        [dictionary setObject:&unk_283E72EF0 forKeyedSubscript:*MEMORY[0x277CD2008]];
        v57 = MEMORY[0x277D0F848];
        v58 = *MEMORY[0x277CD1FF8];
        messageDestination = [(HMDHomeReprovisionHandler *)v50 messageDestination];
        responseHandler7 = [v57 messageWithName:v58 destination:messageDestination payload:dictionary];

        if (self)
        {
          msgDispatcher = v50->_msgDispatcher;
        }

        else
        {
          msgDispatcher = 0;
        }

        home = v76;
        [(HMFMessageDispatcher *)msgDispatcher sendMessage:responseHandler7 completionHandler:0];
        responseHandler3 = [accessoryCopy responseHandler];

        responseHandler2 = v77;
        if (responseHandler3)
        {
          v62 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Accessory already in the network" reason:0 suggestion:0 underlyingError:0];
          responseHandler4 = [accessoryCopy responseHandler];
          (responseHandler4)[2](responseHandler4, v62, 0);
        }

        goto LABEL_44;
      }

      isPaired = [v11 isPaired];
      v13 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v15 = HMFGetOSLogHandle();
      v16 = v15;
      if (isPaired)
      {
        v75 = home;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          [v9 name];
          v19 = v18 = v13;
          *buf = 138543618;
          v83 = v17;
          v84 = 2112;
          v85 = v19;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ reprovision state is updated to InProgress", buf, 0x16u);

          v13 = v18;
        }

        objc_autoreleasePoolPop(v13);
        [v9 setAccessoryReprovisionState:2];
        uuid3 = [v9 uuid];
        [v77 updateGenerationCounterWithReason:@"ReprovisionInProgress" sourceUUID:uuid3 shouldNotifyClients:0];

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        uuid4 = [v9 uuid];
        uUIDString2 = [uuid4 UUIDString];
        [dictionary setObject:uUIDString2 forKeyedSubscript:v5];

        [dictionary setObject:&unk_283E72F08 forKeyedSubscript:*MEMORY[0x277CD2008]];
        v24 = MEMORY[0x277D0F848];
        v25 = *MEMORY[0x277CD1FF8];
        messageDestination2 = [(HMDHomeReprovisionHandler *)selfCopy3 messageDestination];
        responseHandler7 = [v24 messageWithName:v25 destination:messageDestination2 payload:dictionary];

        transport = [accessoryCopy transport];
        [responseHandler7 setTransport:transport];

        if (self)
        {
          v29 = selfCopy3->_msgDispatcher;
        }

        else
        {
          v29 = 0;
        }

        home = v75;
        [(HMFMessageDispatcher *)v29 sendMessage:responseHandler7 completionHandler:0];
        if (([v75 networkRouterSupport] & 8) != 0)
        {
          wiFiUniquePreSharedKey = [v78 wiFiUniquePreSharedKey];

          if (wiFiUniquePreSharedKey)
          {
            v74 = [HMDAccessoryNetworkCredential alloc];
            networkRouterUUID = [v78 networkRouterUUID];
            networkClientIdentifier = [v78 networkClientIdentifier];
            wiFiUniquePreSharedKey2 = [v78 wiFiUniquePreSharedKey];
            v71 = [(HMDAccessoryNetworkCredential *)v74 initWithNetworkRouterUUID:networkRouterUUID clientIdentifier:networkClientIdentifier wiFiPSK:wiFiUniquePreSharedKey2];

            home = v75;
            [(HMDHomeReprovisionHandler *)selfCopy3 _reprovisionAccessory:v78 networkCredential:v71 requestMessage:accessoryCopy];
          }

          else
          {
            v79[0] = MEMORY[0x277D85DD0];
            v79[1] = 3221225472;
            v79[2] = __57__HMDHomeReprovisionHandler__handleReprovisionAccessory___block_invoke;
            v79[3] = &unk_278679FB0;
            v79[4] = selfCopy3;
            v80 = v78;
            v81 = accessoryCopy;
            [v75 _createUniquePSKClientConfigurationWithRequestMessage:v81 pairingEvent:0 completion:v79];
          }
        }

        else
        {
          [(HMDHomeReprovisionHandler *)selfCopy3 _reprovisionAccessory:v78 networkCredential:0 requestMessage:accessoryCopy];
        }

        responseHandler2 = v77;
        goto LABEL_44;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v64 = HMFGetLogIdentifier();
        [v9 name];
        v66 = v65 = v13;
        *buf = 138543618;
        v83 = v64;
        v84 = 2112;
        v85 = v66;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Reprovision accessory failed since the accessory: %@ is not paired", buf, 0x16u);

        v13 = v65;
      }

      objc_autoreleasePoolPop(v13);
      responseHandler5 = [accessoryCopy responseHandler];

      responseHandler2 = v77;
      if (!responseHandler5)
      {
        goto LABEL_45;
      }

      v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:@"Accessory not paired" reason:0 suggestion:0 underlyingError:0];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v83 = v41;
        v84 = 2112;
        v85 = responseHandler9;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      responseHandler6 = [accessoryCopy responseHandler];

      if (!responseHandler6)
      {
        goto LABEL_45;
      }

      v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    dictionary = v43;
    responseHandler7 = [accessoryCopy responseHandler];
    (responseHandler7)[2](responseHandler7, dictionary, 0);
LABEL_44:

LABEL_45:
LABEL_46:

    goto LABEL_47;
  }

  responseHandler8 = [accessoryCopy responseHandler];

  if (responseHandler8)
  {
    responseHandler9 = [accessoryCopy responseHandler];
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (responseHandler9)[2](responseHandler9, v31, 0);

LABEL_47:
  }

  v72 = *MEMORY[0x277D85DE8];
}

- (void)_reprovisionAccessory:(void *)accessory networkCredential:(void *)credential requestMessage:
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  accessoryCopy = accessory;
  credentialCopy = credential;
  if (self)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      identifier = [v7 identifier];
      *buf = 138543618;
      v33 = v12;
      v34 = 2112;
      v35 = identifier;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Storing reprovison request message identifier for accessory with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [HMDHomeReprovisioningPendingInformation alloc];
    identifier2 = [credentialCopy identifier];
    v16 = [(HMDHomeReprovisioningPendingInformation *)v14 initWithMessageUUID:identifier2 networkCredential:accessoryCopy];

    v17 = selfCopy[7];
    identifier3 = [v7 identifier];
    [v17 setObject:v16 forKey:identifier3];

    objc_initWeak(buf, selfCopy);
    WeakRetained = objc_loadWeakRetained(selfCopy + 5);
    identifier4 = [v7 identifier];
    wiFiPSK = [accessoryCopy wiFiPSK];
    home = [v7 home];
    homeLocationHandler = [home homeLocationHandler];
    isoCountryCode = [homeLocationHandler isoCountryCode];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__HMDHomeReprovisionHandler__reprovisionAccessory_networkCredential_requestMessage___block_invoke;
    v27[3] = &unk_278681F48;
    objc_copyWeak(&v31, buf);
    v28 = credentialCopy;
    v29 = v7;
    v30 = accessoryCopy;
    [WeakRetained reprovisionAccessoryWithIdentifier:identifier4 wiFiPSK:wiFiPSK countryCode:isoCountryCode withCompletion:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __57__HMDHomeReprovisionHandler__handleReprovisionAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDHomeReprovisionHandler__handleReprovisionAccessory___block_invoke_2;
  block[3] = &unk_278689550;
  v13 = v6;
  v14 = v8;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = v5;
  v10 = v5;
  v11 = v7;
  dispatch_async(v9, block);
}

void __57__HMDHomeReprovisionHandler__handleReprovisionAccessory___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v14 = 138543874;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate WiFi credential for accessory %@ with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 56) respondWithError:*(a1 + 32)];
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = *(a1 + 64);
    v13 = *MEMORY[0x277D85DE8];

    [(HMDHomeReprovisionHandler *)v9 _reprovisionAccessory:v10 networkCredential:v11 requestMessage:v12];
  }
}

void __84__HMDHomeReprovisionHandler__reprovisionAccessory_networkCredential_requestMessage___block_invoke(id *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = [a1[4] responseHandler];

  if (v5)
  {
    if (v3)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = WeakRetained;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [a1[5] identifier];
        v37 = 138543618;
        v38 = v9;
        v39 = 2112;
        v40 = v10;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to reprovision accessory with identifier: %@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      if (v7)
      {
        v11 = v7[7];
      }

      else
      {
        v11 = 0;
      }

      v12 = a1[5];
      v13 = v11;
      v14 = [v12 identifier];
      [v13 removeObjectForKey:v14];

      v15 = objc_autoreleasePoolPush();
      v16 = v7;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [a1[5] name];
        v37 = 138543618;
        v38 = v18;
        v39 = 2112;
        v40 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ reprovision state is updated to NotRequired", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [a1[5] setAccessoryReprovisionState:0];
      v20 = [(HMDHomeReprovisionHandler *)v16 home];
      v21 = [v20 homeManager];
      v22 = [a1[5] uuid];
      [v21 updateGenerationCounterWithReason:@"ReprovisionErrored" sourceUUID:v22 shouldNotifyClients:0];

      v23 = [a1[6] clientIdentifier];
      if (v23)
      {
        v24 = v23;
        v25 = [a1[5] networkClientIdentifier];

        if (!v25)
        {
          v26 = [a1[6] clientIdentifier];
          [v20 _removeClientConfigurationWithIdentifier:v26];
        }
      }

      v27 = [MEMORY[0x277CBEB38] dictionary];
      v28 = [a1[5] uuid];
      v29 = [v28 UUIDString];
      [v27 setObject:v29 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

      [v27 setObject:&unk_283E72F08 forKeyedSubscript:*MEMORY[0x277CD2008]];
      v30 = MEMORY[0x277D0F848];
      v31 = *MEMORY[0x277CD1FF8];
      v32 = [(HMDHomeReprovisionHandler *)v16 messageDestination];
      v33 = [v30 messageWithName:v31 destination:v32 payload:v27];

      if (v7)
      {
        v34 = v16[3];
      }

      else
      {
        v34 = 0;
      }

      [v34 sendMessage:v33 completionHandler:0];
    }

    v35 = [a1[4] responseHandler];
    (v35)[2](v35, v3, 0);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestSearchForAccessoriesNeedingReprovisioning:(id)reprovisioning
{
  v43 = *MEMORY[0x277D85DE8];
  reprovisioningCopy = reprovisioning;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to start searching for accessories need reprovisioning", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy && selfCopy->_reprovisionBrowsingAllowed)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_accessoryBrowser);
    [WeakRetained startDiscoveringAccessoriesNeedingReprovisioning];

    selfCopy->_reprovisionBrowsingPending = 0;
    if (!selfCopy->_disableReprovisionBrowsingTimer)
    {
      selfCopy->_reprovisionBrowsingAllowed = 0;
      v10 = objc_alloc(MEMORY[0x277D0F920]);
      v11 = [v10 initWithTimeInterval:1 options:*&disableReprivsionBrowsingPeriodInMinutes];
      objc_storeStrong(&selfCopy->_disableReprovisionBrowsingTimer, v11);

      [(HMFTimer *)selfCopy->_disableReprovisionBrowsingTimer setDelegate:selfCopy];
      disableReprovisionBrowsingTimer = selfCopy->_disableReprovisionBrowsingTimer;
      v13 = selfCopy->_workQueue;
      [(HMFTimer *)disableReprovisionBrowsingTimer setDelegateQueue:v13];

      [(HMFTimer *)selfCopy->_disableReprovisionBrowsingTimer resume];
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = v15->_disableReprovisionBrowsingTimer;
        *buf = 138543874;
        v38 = v17;
        v39 = 2048;
        v40 = v18;
        v41 = 2048;
        v42 = disableReprivsionBrowsingPeriodInMinutes;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Started disable reprovision browsing timer %p for %f sec", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Request to start searching for accessories need reprovisioning is deferred", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    if (selfCopy)
    {
      v20->_reprovisionBrowsingPending = 1;
    }
  }

  [reprovisioningCopy respondWithSuccess];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  home = [(HMDHomeReprovisionHandler *)&selfCopy->super.super.isa home];
  accessories = [home accessories];
  v25 = [accessories copy];

  v26 = [v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v32 + 1) + 8 * i);
        if ([v30 accessoryReprovisionState] == 1)
        {
          [(HMDHomeReprovisionHandler *)&selfCopy->super.super.isa _reportAccessoryNeedingReprovision:v30 error:0];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  home = [(HMDHomeReprovisionHandler *)&self->super.super.isa home];
  name = [home name];
  v5 = [v2 stringWithFormat:@"%@", name];

  return v5;
}

- (void)configure:(id)configure queue:(id)queue messageDispatcher:(id)dispatcher
{
  v32[2] = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  if (self)
  {
    objc_storeWeak(&self->_home, configureCopy);
    objc_storeStrong(&self->_workQueue, queue);
    objc_storeStrong(&self->_msgDispatcher, dispatcher);
    accessoryBrowser = [configureCopy accessoryBrowser];
    objc_storeWeak(&self->_accessoryBrowser, accessoryBrowser);
  }

  else
  {
    accessoryBrowser = [configureCopy accessoryBrowser];
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    home = [(HMDHomeReprovisionHandler *)&selfCopy->super.super.isa home];
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = home;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Configured reprovision handler for home %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_home);
    v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:WeakRetained userPrivilege:3 remoteAccessRequired:0];

    v18 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    msgDispatcher = selfCopy->_msgDispatcher;
    v20 = *MEMORY[0x277CD2570];
    *buf = v18;
    *&buf[8] = v17;
    v21 = MEMORY[0x277CBEA60];
    v22 = msgDispatcher;
    v23 = [v21 arrayWithObjects:buf count:2];
    [(HMFMessageDispatcher *)v22 registerForMessage:v20 receiver:selfCopy policies:v23 selector:sel__handleRequestSearchForAccessoriesNeedingReprovisioning_];

    v24 = selfCopy->_msgDispatcher;
    v25 = *MEMORY[0x277CD2560];
    v32[0] = v18;
    v32[1] = v17;
    v26 = MEMORY[0x277CBEA60];
    v27 = v24;
    v28 = [v26 arrayWithObjects:v32 count:2];
    [(HMFMessageDispatcher *)v27 registerForMessage:v25 receiver:selfCopy policies:v28 selector:sel__handleReprovisionAccessory_];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_msgDispatcher;
  }

  [(HMDHomeReprovisionHandler *)self deregisterReceiver:selfCopy];
  home = [(HMDHomeReprovisionHandler *)&selfCopy->super.super.isa home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:selfCopy];

  v5.receiver = selfCopy;
  v5.super_class = HMDHomeReprovisionHandler;
  [(HMDHomeReprovisionHandler *)&v5 dealloc];
}

- (HMDHomeReprovisionHandler)init
{
  v7.receiver = self;
  v7.super_class = HMDHomeReprovisionHandler;
  v2 = [(HMDHomeReprovisionHandler *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_reprovisionBrowsingAllowed = 1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingReprovisionRequests = v3->_pendingReprovisionRequests;
    v3->_pendingReprovisionRequests = dictionary;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_131291 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_131291, &__block_literal_global_131292);
  }

  v3 = logCategory__hmf_once_v2_131293;

  return v3;
}

void __40__HMDHomeReprovisionHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_131293;
  logCategory__hmf_once_v2_131293 = v1;
}

@end