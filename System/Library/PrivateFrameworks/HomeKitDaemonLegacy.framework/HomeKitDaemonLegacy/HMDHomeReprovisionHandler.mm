@interface HMDHomeReprovisionHandler
+ (id)logCategory;
- (HMDHomeReprovisionHandler)init;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)home;
- (id)logIdentifier;
- (id)messageDestination;
- (void)_handleReprovisionAccessory:(id)a3;
- (void)_handleRequestSearchForAccessoriesNeedingReprovisioning:(id)a3;
- (void)_reportAccessoryNeedingReprovision:(void *)a3 error:;
- (void)_reprovisionAccessory:(void *)a3 networkCredential:(void *)a4 requestMessage:;
- (void)configure:(id)a3 queue:(id)a4 messageDispatcher:(id)a5;
- (void)dealloc;
- (void)handleFoundAccessoryNeedingReprovisioning:(id)a3 error:(id)a4;
- (void)handleReprovionedAccessory:(id)a3 identifier:(id)a4 error:(id)a5;
- (void)timerDidFire:(id)a3;
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
  v2 = [(HMDHomeReprovisionHandler *)&self->super.super.isa home];
  v3 = [v2 uuid];

  return v3;
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

- (void)timerDidFire:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v4 = v17;
    if (self->_disableReprovisionBrowsingTimer != v17)
    {
      goto LABEL_11;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Disable reprovision browsing timer fired", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    if (v6->_reprovisionBrowsingPending)
    {
      v6->_reprovisionBrowsingPending = 0;
      v6->_reprovisionBrowsingAllowed = 0;
      WeakRetained = objc_loadWeakRetained(&v6->_accessoryBrowser);
      [WeakRetained startDiscoveringAccessoriesNeedingReprovisioning];

      [(HMFTimer *)v6->_disableReprovisionBrowsingTimer resume];
      v10 = objc_autoreleasePoolPush();
      v11 = v6;
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
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Resumed disable reprovision browsing timer %p for %f sec", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v6->_reprovisionBrowsingAllowed = 1;
      [(HMFTimer *)v6->_disableReprovisionBrowsingTimer cancel];
      v15 = v6->_disableReprovisionBrowsingTimer;
      v6->_disableReprovisionBrowsingTimer = 0;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }

  v4 = v17;
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleReprovionedAccessory:(id)a3 identifier:(id)a4 error:(id)a5
{
  v36 = a3;
  v8 = a4;
  v9 = a5;
  if (self)
  {
    pendingReprovisionRequests = self->_pendingReprovisionRequests;
  }

  else
  {
    pendingReprovisionRequests = 0;
  }

  v11 = [(NSMutableDictionary *)pendingReprovisionRequests valueForKey:v8];

  if (v11)
  {
    [v36 setAccessoryReprovisionState:0];
    v12 = [(HMDHomeReprovisionHandler *)&self->super.super.isa home];
    v13 = [v12 homeManager];
    v14 = [v36 uuid];
    [v13 updateGenerationCounterWithReason:@"ReprovisionNotRequired" sourceUUID:v14 shouldNotifyClients:0];

    v15 = [MEMORY[0x277CBEB38] dictionary];
    v16 = [v36 uuid];
    v17 = [v16 UUIDString];
    [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

    if (self)
    {
      v18 = self->_pendingReprovisionRequests;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(NSMutableDictionary *)v18 objectForKey:v8];
    if (self)
    {
      v20 = self->_pendingReprovisionRequests;
    }

    else
    {
      v20 = 0;
    }

    [(NSMutableDictionary *)v20 removeObjectForKey:v8];
    if (v9)
    {
      v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
      if (v21)
      {
        [v15 setObject:v21 forKeyedSubscript:@"kPairedAccessoryErrorDataKey"];
      }
    }

    else
    {
      v22 = [v19 networkCredential];
      v23 = [v22 wiFiPSK];
      v24 = [v19 networkCredential];
      v25 = [v24 wiFiPSK];
      if (v25)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      [v36 saveWiFiUniquePreSharedKey:v23 credentialType:v26];

      v21 = [v19 networkCredential];
      v27 = [v21 clientIdentifier];
      v28 = [v19 networkCredential];
      v29 = [v28 networkRouterUUID];
      [v36 saveNetworkClientIdentifier:v27 networkRouterUUID:v29 clearProfileFingerprint:1];
    }

    v30 = MEMORY[0x277D0F818];
    v31 = *MEMORY[0x277CD2000];
    v32 = [v19 messageIdentifier];
    v33 = [v30 entitledMessageWithName:v31 identifier:v32 messagePayload:v15];

    v34 = [(HMDHomeReprovisionHandler *)self messageDestination];
    [v33 setDestination:v34];

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
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x277D0F820]);
    v3 = [v1 messageTargetUUID];
    v1 = [v2 initWithTarget:v3];
  }

  return v1;
}

- (void)handleFoundAccessoryNeedingReprovisioning:(id)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 accessoryReprovisionState])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 name];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ reprovision state is updated to Required", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 setAccessoryReprovisionState:1];
    v13 = [(HMDHomeReprovisionHandler *)&v9->super.super.isa home];
    v14 = [v13 homeManager];
    v15 = [v6 uuid];
    [v14 updateGenerationCounterWithReason:@"ReprovisionRequired" sourceUUID:v15 shouldNotifyClients:0];

    [(HMDHomeReprovisionHandler *)&v9->super.super.isa _reportAccessoryNeedingReprovision:v6 error:v7];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_reportAccessoryNeedingReprovision:(void *)a3 error:
{
  v5 = a3;
  if (a1)
  {
    v6 = MEMORY[0x277CBEB38];
    v16 = v5;
    v7 = a2;
    v8 = [v6 dictionary];
    v9 = [v7 uuid];

    v10 = [v9 UUIDString];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

    [v8 setObject:&unk_2866285B8 forKeyedSubscript:*MEMORY[0x277CD2008]];
    if (v16)
    {
      v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
      if (v11)
      {
        [v8 setObject:v11 forKeyedSubscript:@"kPairedAccessoryErrorDataKey"];
      }
    }

    v12 = MEMORY[0x277D0F848];
    v13 = *MEMORY[0x277CD1FF8];
    v14 = [(HMDHomeReprovisionHandler *)a1 messageDestination];
    v15 = [v12 messageWithName:v13 destination:v14 payload:v8];

    [a1[3] sendMessage:v15 completionHandler:0];
    v5 = v16;
  }
}

- (void)_handleReprovisionAccessory:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v6 = [v4 uuidForKey:*MEMORY[0x277CCF0B0]];
    if (!v6)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [v4 messagePayload];
        *buf = 138543618;
        v83 = v35;
        v84 = 2112;
        v85 = v36;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Missing target accessory UUID from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v37 = [v4 responseHandler];

      if (!v37)
      {
        goto LABEL_47;
      }

      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v8 = [v4 responseHandler];
      (v8)[2](v8, v7, 0);
      goto LABEL_46;
    }

    v7 = [(HMDHomeReprovisionHandler *)&self->super.super.isa home];
    v8 = [v7 homeManager];
    v9 = [v7 accessoryWithUUID:v6];
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
      v77 = v8;
      if ([v11 reachableTransports])
      {
        v76 = v7;
        v44 = objc_autoreleasePoolPush();
        v45 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = HMFGetLogIdentifier();
          v48 = [v9 name];
          *buf = 138543618;
          v83 = v47;
          v84 = 2112;
          v85 = v48;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@Reprovision accessory failed since the accessory: %@ is already in the network", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v49 = objc_autoreleasePoolPush();
        v50 = v45;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = HMFGetLogIdentifier();
          v53 = [v9 name];
          *buf = 138543618;
          v83 = v52;
          v84 = 2112;
          v85 = v53;
          _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ reprovision state is updated to NotRequired", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v49);
        [v9 setAccessoryReprovisionState:0];
        v54 = [v9 uuid];
        [v77 updateGenerationCounterWithReason:@"ReprovisionNotRequired" sourceUUID:v54 shouldNotifyClients:0];

        v21 = [MEMORY[0x277CBEB38] dictionary];
        v55 = [v9 uuid];
        v56 = [v55 UUIDString];
        [v21 setObject:v56 forKeyedSubscript:v5];

        [v21 setObject:&unk_286628588 forKeyedSubscript:*MEMORY[0x277CD2008]];
        v57 = MEMORY[0x277D0F848];
        v58 = *MEMORY[0x277CD1FF8];
        v59 = [(HMDHomeReprovisionHandler *)v50 messageDestination];
        v27 = [v57 messageWithName:v58 destination:v59 payload:v21];

        if (self)
        {
          msgDispatcher = v50->_msgDispatcher;
        }

        else
        {
          msgDispatcher = 0;
        }

        v7 = v76;
        [(HMFMessageDispatcher *)msgDispatcher sendMessage:v27 completionHandler:0];
        v61 = [v4 responseHandler];

        v8 = v77;
        if (v61)
        {
          v62 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Accessory already in the network" reason:0 suggestion:0 underlyingError:0];
          v63 = [v4 responseHandler];
          (v63)[2](v63, v62, 0);
        }

        goto LABEL_44;
      }

      v12 = [v11 isPaired];
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      v16 = v15;
      if (v12)
      {
        v75 = v7;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          [v9 name];
          v19 = v18 = v13;
          *buf = 138543618;
          v83 = v17;
          v84 = 2112;
          v85 = v19;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ reprovision state is updated to InProgress", buf, 0x16u);

          v13 = v18;
        }

        objc_autoreleasePoolPop(v13);
        [v9 setAccessoryReprovisionState:2];
        v20 = [v9 uuid];
        [v77 updateGenerationCounterWithReason:@"ReprovisionInProgress" sourceUUID:v20 shouldNotifyClients:0];

        v21 = [MEMORY[0x277CBEB38] dictionary];
        v22 = [v9 uuid];
        v23 = [v22 UUIDString];
        [v21 setObject:v23 forKeyedSubscript:v5];

        [v21 setObject:&unk_2866285A0 forKeyedSubscript:*MEMORY[0x277CD2008]];
        v24 = MEMORY[0x277D0F848];
        v25 = *MEMORY[0x277CD1FF8];
        v26 = [(HMDHomeReprovisionHandler *)v14 messageDestination];
        v27 = [v24 messageWithName:v25 destination:v26 payload:v21];

        v28 = [v4 transport];
        [v27 setTransport:v28];

        if (self)
        {
          v29 = v14->_msgDispatcher;
        }

        else
        {
          v29 = 0;
        }

        v7 = v75;
        [(HMFMessageDispatcher *)v29 sendMessage:v27 completionHandler:0];
        if (([v75 networkRouterSupport] & 8) != 0)
        {
          v68 = [v78 wiFiUniquePreSharedKey];

          if (v68)
          {
            v74 = [HMDAccessoryNetworkCredential alloc];
            v73 = [v78 networkRouterUUID];
            v69 = [v78 networkClientIdentifier];
            v70 = [v78 wiFiUniquePreSharedKey];
            v71 = [(HMDAccessoryNetworkCredential *)v74 initWithNetworkRouterUUID:v73 clientIdentifier:v69 wiFiPSK:v70];

            v7 = v75;
            [(HMDHomeReprovisionHandler *)v14 _reprovisionAccessory:v78 networkCredential:v71 requestMessage:v4];
          }

          else
          {
            v79[0] = MEMORY[0x277D85DD0];
            v79[1] = 3221225472;
            v79[2] = __57__HMDHomeReprovisionHandler__handleReprovisionAccessory___block_invoke;
            v79[3] = &unk_279729598;
            v79[4] = v14;
            v80 = v78;
            v81 = v4;
            [v75 _createUniquePSKClientConfigurationWithRequestMessage:v81 pairingEvent:0 completion:v79];
          }
        }

        else
        {
          [(HMDHomeReprovisionHandler *)v14 _reprovisionAccessory:v78 networkCredential:0 requestMessage:v4];
        }

        v8 = v77;
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
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Reprovision accessory failed since the accessory: %@ is not paired", buf, 0x16u);

        v13 = v65;
      }

      objc_autoreleasePoolPop(v13);
      v67 = [v4 responseHandler];

      v8 = v77;
      if (!v67)
      {
        goto LABEL_45;
      }

      v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:@"Accessory not paired" reason:0 suggestion:0 underlyingError:0];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v83 = v41;
        v84 = 2112;
        v85 = v6;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v42 = [v4 responseHandler];

      if (!v42)
      {
        goto LABEL_45;
      }

      v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    v21 = v43;
    v27 = [v4 responseHandler];
    (v27)[2](v27, v21, 0);
LABEL_44:

LABEL_45:
LABEL_46:

    goto LABEL_47;
  }

  v30 = [v4 responseHandler];

  if (v30)
  {
    v6 = [v4 responseHandler];
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (v6)[2](v6, v31, 0);

LABEL_47:
  }

  v72 = *MEMORY[0x277D85DE8];
}

- (void)_reprovisionAccessory:(void *)a3 networkCredential:(void *)a4 requestMessage:
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v26 = a4;
  if (a1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v7 identifier];
      *buf = 138543618;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Storing reprovison request message identifier for accessory with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [HMDHomeReprovisioningPendingInformation alloc];
    v15 = [v26 identifier];
    v16 = [(HMDHomeReprovisioningPendingInformation *)v14 initWithMessageUUID:v15 networkCredential:v8];

    v17 = v10[7];
    v18 = [v7 identifier];
    [v17 setObject:v16 forKey:v18];

    objc_initWeak(buf, v10);
    WeakRetained = objc_loadWeakRetained(v10 + 5);
    v20 = [v7 identifier];
    v21 = [v8 wiFiPSK];
    v22 = [v7 home];
    v23 = [v22 homeLocationHandler];
    v24 = [v23 isoCountryCode];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__HMDHomeReprovisionHandler__reprovisionAccessory_networkCredential_requestMessage___block_invoke;
    v27[3] = &unk_27972F820;
    objc_copyWeak(&v31, buf);
    v28 = v26;
    v29 = v7;
    v30 = v8;
    [WeakRetained reprovisionAccessoryWithIdentifier:v20 wiFiPSK:v21 countryCode:v24 withCompletion:v27];

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
  block[3] = &unk_2797352C0;
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
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate WiFi credential for accessory %@ with error: %@", &v14, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to reprovision accessory with identifier: %@", &v37, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ reprovision state is updated to NotRequired", &v37, 0x16u);
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

      [v27 setObject:&unk_2866285A0 forKeyedSubscript:*MEMORY[0x277CD2008]];
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

- (void)_handleRequestSearchForAccessoriesNeedingReprovisioning:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to start searching for accessories need reprovisioning", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (v6 && v6->_reprovisionBrowsingAllowed)
  {
    WeakRetained = objc_loadWeakRetained(&v6->_accessoryBrowser);
    [WeakRetained startDiscoveringAccessoriesNeedingReprovisioning];

    v6->_reprovisionBrowsingPending = 0;
    if (!v6->_disableReprovisionBrowsingTimer)
    {
      v6->_reprovisionBrowsingAllowed = 0;
      v10 = objc_alloc(MEMORY[0x277D0F920]);
      v11 = [v10 initWithTimeInterval:1 options:*&disableReprivsionBrowsingPeriodInMinutes];
      objc_storeStrong(&v6->_disableReprovisionBrowsingTimer, v11);

      [(HMFTimer *)v6->_disableReprovisionBrowsingTimer setDelegate:v6];
      disableReprovisionBrowsingTimer = v6->_disableReprovisionBrowsingTimer;
      v13 = v6->_workQueue;
      [(HMFTimer *)disableReprovisionBrowsingTimer setDelegateQueue:v13];

      [(HMFTimer *)v6->_disableReprovisionBrowsingTimer resume];
      v14 = objc_autoreleasePoolPush();
      v15 = v6;
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
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Started disable reprovision browsing timer %p for %f sec", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v6;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Request to start searching for accessories need reprovisioning is deferred", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    if (v6)
    {
      v20->_reprovisionBrowsingPending = 1;
    }
  }

  [v4 respondWithSuccess];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = [(HMDHomeReprovisionHandler *)&v6->super.super.isa home];
  v24 = [v23 accessories];
  v25 = [v24 copy];

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
          [(HMDHomeReprovisionHandler *)&v6->super.super.isa _reportAccessoryNeedingReprovision:v30 error:0];
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
  v3 = [(HMDHomeReprovisionHandler *)&self->super.super.isa home];
  v4 = [v3 name];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

- (void)configure:(id)a3 queue:(id)a4 messageDispatcher:(id)a5
{
  v32[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v30 = a4;
  v9 = a5;
  if (self)
  {
    objc_storeWeak(&self->_home, v8);
    objc_storeStrong(&self->_workQueue, a4);
    objc_storeStrong(&self->_msgDispatcher, a5);
    v10 = [v8 accessoryBrowser];
    objc_storeWeak(&self->_accessoryBrowser, v10);
  }

  else
  {
    v10 = [v8 accessoryBrowser];
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDHomeReprovisionHandler *)&v12->super.super.isa home];
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Configured reprovision handler for home %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&v12->_home);
    v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:WeakRetained userPrivilege:3 remoteAccessRequired:0];

    v18 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    msgDispatcher = v12->_msgDispatcher;
    v20 = *MEMORY[0x277CD2570];
    *buf = v18;
    *&buf[8] = v17;
    v21 = MEMORY[0x277CBEA60];
    v22 = msgDispatcher;
    v23 = [v21 arrayWithObjects:buf count:2];
    [(HMFMessageDispatcher *)v22 registerForMessage:v20 receiver:v12 policies:v23 selector:sel__handleRequestSearchForAccessoriesNeedingReprovisioning_];

    v24 = v12->_msgDispatcher;
    v25 = *MEMORY[0x277CD2560];
    v32[0] = v18;
    v32[1] = v17;
    v26 = MEMORY[0x277CBEA60];
    v27 = v24;
    v28 = [v26 arrayWithObjects:v32 count:2];
    [(HMFMessageDispatcher *)v27 registerForMessage:v25 receiver:v12 policies:v28 selector:sel__handleReprovisionAccessory_];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_msgDispatcher;
  }

  [(HMDHomeReprovisionHandler *)self deregisterReceiver:v2];
  v3 = [(HMDHomeReprovisionHandler *)&v2->super.super.isa home];
  v4 = [v3 administratorHandler];
  [v4 deregisterReceiver:v2];

  v5.receiver = v2;
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
    v4 = [MEMORY[0x277CBEB38] dictionary];
    pendingReprovisionRequests = v3->_pendingReprovisionRequests;
    v3->_pendingReprovisionRequests = v4;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_85595 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_85595, &__block_literal_global_85596);
  }

  v3 = logCategory__hmf_once_v2_85597;

  return v3;
}

uint64_t __40__HMDHomeReprovisionHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_85597;
  logCategory__hmf_once_v2_85597 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end