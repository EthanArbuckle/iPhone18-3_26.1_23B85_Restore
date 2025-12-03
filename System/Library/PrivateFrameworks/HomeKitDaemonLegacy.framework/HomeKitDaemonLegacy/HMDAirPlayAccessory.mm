@interface HMDAirPlayAccessory
+ (id)logCategory;
+ (void)initialize;
- (HMDAirPlayAccessory)initWithCoder:(id)coder;
- (HMDAirPlayAccessory)initWithTransaction:(id)transaction home:(id)home;
- (HMFPairingIdentity)pairingIdentity;
- (NSString)password;
- (id)advertisement;
- (id)backingStoreObjects:(int64_t)objects;
- (id)logIdentifier;
- (id)messageSendPolicy;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (int64_t)minimumUserPriviledge;
- (void)_handleUpdatedName:(id)name;
- (void)addUser:(id)user completionHandler:(id)handler;
- (void)disassociatePairingIdentity:(id)identity completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)handleUpdatedAdvertisement:(id)advertisement;
- (void)handleUpdatedMinimumUserPrivilege:(int64_t)privilege;
- (void)handleUpdatedPassword:(id)password;
- (void)pairingsWithCompletionHandler:(id)handler;
- (void)populateModelObject:(id)object version:(int64_t)version;
- (void)removeUser:(id)user completionHandler:(id)handler;
- (void)removeUserPairingIdentity:(id)identity isOwner:(BOOL)owner completionHandler:(id)handler;
- (void)setAdvertisement:(id)advertisement;
- (void)setMinimumUserPriviledge:(int64_t)priviledge;
- (void)setPairingIdentity:(id)identity;
- (void)setPassword:(id)password;
- (void)setReachable:(BOOL)reachable;
- (void)timerDidFire:(id)fire;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDAirPlayAccessory

- (id)logIdentifier
{
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForLocalStore = [coderCopy hmd_isForLocalStore];
  v11.receiver = self;
  v11.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v11 encodeWithCoder:coderCopy];
  pairingIdentity = [(HMDAirPlayAccessory *)self pairingIdentity];
  v8 = pairingIdentity;
  if ((hmd_isForXPCTransport & 1) == 0)
  {
    if (hmd_isForLocalStore)
    {
      [coderCopy encodeObject:pairingIdentity forKey:*MEMORY[0x277CCEC20]];
    }

    else if (pairingIdentity)
    {
      publicPairingIdentity = [pairingIdentity publicPairingIdentity];
      [coderCopy encodeObject:publicPairingIdentity forKey:*MEMORY[0x277CCEC20]];
    }
  }

  if (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount"))
  {
    password = [(HMDAirPlayAccessory *)self password];
    [coderCopy encodeObject:password forKey:@"HM.password"];

    [coderCopy encodeInteger:-[HMDAirPlayAccessory minimumUserPriviledge](self forKey:{"minimumUserPriviledge"), @"HM.minimumUserPriviledge"}];
  }
}

- (HMDAirPlayAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMDAirPlayAccessory;
  v5 = [(HMDMediaAccessory *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC20]];
    pairingIdentity = v5->_pairingIdentity;
    v5->_pairingIdentity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.password"];
    password = v5->_password;
    v5->_password = v8;

    v5->_minimumUserPriviledge = [coderCopy decodeIntegerForKey:@"HM.minimumUserPriviledge"];
    v5->super.super._reachable = 1;
  }

  return v5;
}

- (void)timerDidFire:(id)fire
{
  workQueue = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDAirPlayAccessory_timerDidFire___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __36__HMDAirPlayAccessory_timerDidFire___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Retrying configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) advertisement];
  if (v6)
  {
    v7 = [*(a1 + 32) configurationRetryTimer];
    [v7 suspend];

    v8 = __configurationFromAdvertisement(*(a1 + 32), v6);
    v9 = [v8 count] == 0;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v20;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Accessory no longer out of sync", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      __stopConfigurationRetryTimer(*(a1 + 32));
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory out of sync, updating configuration", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      objc_initWeak(buf, *(a1 + 32));
      v15 = *(a1 + 32);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __36__HMDAirPlayAccessory_timerDidFire___block_invoke_66;
      v22[3] = &unk_279734708;
      objc_copyWeak(&v23, buf);
      __updateConfiguration(v15, v8, v22);
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing advertisement, continuing configuration retries", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __36__HMDAirPlayAccessory_timerDidFire___block_invoke_66(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      v10 = "%{public}@Failed to update accessory configuration with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Successfully updated accessory configuration";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v52 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
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

  v38 = updatedCopy;
  if (v13)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__90437;
    v46 = __Block_byref_object_dispose__90438;
    v47 = 0;
    responseHandler = [messageCopy responseHandler];
    if (responseHandler)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__HMDAirPlayAccessory_transactionObjectUpdated_newValues_message___block_invoke;
      aBlock[3] = &unk_27972A108;
      aBlock[4] = &v42;
      v15 = _Block_copy(aBlock);
      [messageCopy setResponseHandler:v15];
    }

    v40.receiver = self;
    v40.super_class = HMDAirPlayAccessory;
    [(HMDMediaAccessory *)&v40 transactionObjectUpdated:0 newValues:v11 message:messageCopy];
    selfCopy = self;
    v17 = v13;
    v18 = messageCopy;
    transactionResult = [v18 transactionResult];
    pairingIdentity = [v17 pairingIdentity];

    if (pairingIdentity)
    {
      pairingIdentity2 = [v17 pairingIdentity];
      pairingIdentity3 = [(HMDAirPlayAccessory *)selfCopy pairingIdentity];
      v22 = [pairingIdentity2 isEqual:pairingIdentity3];

      if ((v22 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          pairingIdentity4 = [v17 pairingIdentity];
          *buf = 138543618;
          v49 = v35;
          v50 = 2112;
          v51 = pairingIdentity4;
          v34 = pairingIdentity4;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        pairingIdentity5 = [v17 pairingIdentity];
        [(HMDAirPlayAccessory *)v23 setPairingIdentity:pairingIdentity5];

        [transactionResult markChanged];
      }
    }

    if ([v17 propertyWasSet:{@"password", v34}])
    {
      password = [v17 password];
      password2 = [(HMDAirPlayAccessory *)selfCopy password];
      v29 = HMFEqualObjects();

      if ((v29 & 1) == 0)
      {
        password3 = [v17 password];
        [(HMDAirPlayAccessory *)selfCopy setPassword:password3];

        [transactionResult markChanged];
      }
    }

    if ([v17 propertyWasSet:@"minimumUserPriviledge"])
    {
      minimumUserPriviledge = [v17 minimumUserPriviledge];
      integerValue = [minimumUserPriviledge integerValue];

      if ([(HMDAirPlayAccessory *)selfCopy minimumUserPriviledge]!= integerValue)
      {
        [(HMDAirPlayAccessory *)selfCopy setMinimumUserPriviledge:integerValue];
        [transactionResult markChanged];
      }
    }

    [v18 respondWithPayload:0];

    if (responseHandler)
    {
      responseHandler[2](responseHandler, v43[5], 0);
    }

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    v39.receiver = self;
    v39.super_class = HMDAirPlayAccessory;
    [(HMDMediaAccessory *)&v39 transactionObjectUpdated:updatedCopy newValues:v11 message:messageCopy];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __66__HMDAirPlayAccessory_transactionObjectUpdated_newValues_message___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)pairingsWithCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Requesting pairings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    advertisement = [(HMDAirPlayAccessory *)selfCopy advertisement];
    outputDevice = [advertisement outputDevice];
    av_OutputDevice = [outputDevice av_OutputDevice];

    if (av_OutputDevice)
    {
      objc_initWeak(buf, selfCopy);
      v14 = __outputDeviceConfigurationOptions();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __53__HMDAirPlayAccessory_pairingsWithCompletionHandler___block_invoke_2;
      v25[3] = &unk_279729CA0;
      v26 = advertisement;
      objc_copyWeak(&v28, buf);
      v27 = handlerCopy;
      [av_OutputDevice configureUsingBlock:&__block_literal_global_90444 options:v14 completionHandler:v25];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
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
        v30 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      (*(handlerCopy + 2))(handlerCopy, 0, v23);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Only owner can remove users", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    advertisement = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    (*(handlerCopy + 2))(handlerCopy, 0, advertisement);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __53__HMDAirPlayAccessory_pairingsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v8)
  {
    v33 = v9;
    v12 = MEMORY[0x277CBEB18];
    v13 = [v8 peersInHomeGroup];
    v14 = [v12 arrayWithCapacity:{objc_msgSend(v13, "count")}];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = [v8 peersInHomeGroup];
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        v19 = 0;
        do
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v34 + 1) + 8 * v19) hmd_pairingIdentity];
          [v14 addObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);
    }

    v21 = [v14 copy];
    v22 = objc_autoreleasePoolPush();
    v23 = WeakRetained;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v25;
      v41 = 2112;
      v42 = v21;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Successfully requested pairing identities: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = 0;
    v9 = v33;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v30;
      v41 = 2112;
      v42 = v10;
      v43 = 2112;
      v44 = v9;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get peers with error: %@, cancellationReason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to get configuration." suggestion:0 underlyingError:v10];
    v21 = 0;
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    (*(v31 + 16))(v31, v21, v26);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)removeUserPairingIdentity:(id)identity isOwner:(BOOL)owner completionHandler:(id)handler
{
  ownerCopy = owner;
  v35 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  handlerCopy = handler;
  if (ownerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@User is the owner, disassociating from device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDAirPlayAccessory *)selfCopy disassociatePairingIdentity:identityCopy completionHandler:handlerCopy];
  }

  else
  {
    advertisement = [(HMDAirPlayAccessory *)self advertisement];
    outputDevice = [advertisement outputDevice];
    av_OutputDevice = [outputDevice av_OutputDevice];

    if (av_OutputDevice)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke;
      aBlock[3] = &unk_279729C78;
      v17 = identityCopy;
      v32 = v17;
      v18 = _Block_copy(aBlock);
      objc_initWeak(buf, self);
      v19 = __outputDeviceConfigurationOptions();
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke_2;
      v26[3] = &unk_279729CC8;
      v27 = advertisement;
      objc_copyWeak(&v30, buf);
      v28 = v17;
      v29 = handlerCopy;
      [av_OutputDevice configureUsingBlock:v18 options:v19 completionHandler:v26];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);

      v20 = v32;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      (*(handlerCopy + 2))(handlerCopy, v20);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  [v3 removePeerWithIDFromHomeGroup:v4];
}

void __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v8)
  {
    v35 = v9;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = [v8 peersInHomeGroup];
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v36 + 1) + 8 * v16) peerID];
          v18 = [*(a1 + 40) identifier];

          if (v17 == v18)
          {
            v24 = objc_autoreleasePoolPush();
            v25 = WeakRetained;
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = HMFGetLogIdentifier();
              v28 = *(a1 + 40);
              *buf = 138543618;
              v42 = v27;
              v43 = 2112;
              v44 = v28;
              _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove user pairing identity: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v24);
            v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:41];

            goto LABEL_16;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully removed peer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = 0;
LABEL_16:
    v9 = v35;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = WeakRetained;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v32;
      v43 = 2112;
      v44 = v10;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove peer with error: %@, cancellationReason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to set configuration." suggestion:0 underlyingError:v10];
  }

  v33 = *(a1 + 48);
  if (v33)
  {
    (*(v33 + 16))(v33, v23);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)removeUser:(id)user completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = userCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Removing user: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  pairingIdentity = [userCopy pairingIdentity];
  if (pairingIdentity)
  {
    -[HMDAirPlayAccessory removeUserPairingIdentity:isOwner:completionHandler:](selfCopy, "removeUserPairingIdentity:isOwner:completionHandler:", pairingIdentity, [userCopy isOwner], handlerCopy);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = userCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to get pairing identity for user: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    handlerCopy[2](handlerCopy, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __72__HMDAirPlayAccessory_addUserPairingIdentity_isOwner_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v8)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      v30 = 138543874;
      v31 = v24;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add peer with error: %@, cancellationReason: %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to set configuration." suggestion:0 underlyingError:v10];
    goto LABEL_12;
  }

  v12 = [v8 peersInHomeGroup];
  v13 = [v12 containsObject:*(a1 + 40)];

  v14 = objc_autoreleasePoolPush();
  v15 = WeakRetained;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if ((v13 & 1) == 0)
  {
    if (v17)
    {
      v26 = HMFGetLogIdentifier();
      v27 = *(a1 + 40);
      v30 = 138543618;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add peer: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
LABEL_12:
    v20 = v25;
    goto LABEL_13;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    v19 = *(a1 + 40);
    v30 = 138543618;
    v31 = v18;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully added peer: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v20 = 0;
LABEL_13:
  v28 = *(a1 + 48);
  if (v28)
  {
    (*(v28 + 16))(v28, v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)addUser:(id)user completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = userCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Adding user: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMDAccessory *)selfCopy home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    pairingIdentity = [userCopy pairingIdentity];
    if (pairingIdentity)
    {
      v15 = pairingIdentity;
      -[HMDAirPlayAccessory addUserPairingIdentity:isOwner:completionHandler:](selfCopy, "addUserPairingIdentity:isOwner:completionHandler:", pairingIdentity, [userCopy isOwner], handlerCopy);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = userCopy;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Failed to get pairing identity for user: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      handlerCopy[2](handlerCopy, v24);

      v15 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Only owner can add users", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    handlerCopy[2](handlerCopy, v15);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)disassociatePairingIdentity:(id)identity completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting disassociation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  advertisement = [(HMDAirPlayAccessory *)selfCopy advertisement];
  outputDevice = [advertisement outputDevice];
  av_OutputDevice = [outputDevice av_OutputDevice];

  if (av_OutputDevice)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke;
    aBlock[3] = &unk_279729C78;
    v28 = identityCopy;
    v15 = _Block_copy(aBlock);
    objc_initWeak(buf, selfCopy);
    v16 = __outputDeviceConfigurationOptions();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke_2;
    v23[3] = &unk_279729CA0;
    v24 = advertisement;
    objc_copyWeak(&v26, buf);
    v25 = handlerCopy;
    [av_OutputDevice configureUsingBlock:v15 options:v16 completionHandler:v23];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);

    v17 = v28;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDevicePassword:&stru_286509E58];
  [v3 stopAutomaticallyAllowingConnectionsFromPeersInHomeGroup];
  v4 = [*(a1 + 32) identifier];
  [v3 removePeerWithIDFromHomeGroup:v4];
}

void __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v8)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v22;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to disassociate with error: %@, cancellationReason: %@", &v31, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to set configuration." suggestion:0 underlyingError:v10];
    goto LABEL_14;
  }

  v12 = [v8 devicePassword];
  v13 = [v12 length];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = WeakRetained;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v17;
      v18 = "%{public}@Failed to reset device password";
LABEL_12:
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, v18, &v31, 0xCu);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (([v8 automaticallyAllowsConnectionsFromPeersInHomeGroup] & 1) != 0 || objc_msgSend(v8, "onlyAllowsConnectionsFromPeersInHomeGroup"))
  {
    v14 = objc_autoreleasePoolPush();
    v15 = WeakRetained;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v17;
      v18 = "%{public}@Failed to disable home peers";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v14);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
LABEL_14:
    v24 = v23;
    goto LABEL_15;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = WeakRetained;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v30;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully disassociated", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  v24 = 0;
LABEL_15:
  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, v24);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  v5 = [HMDAirPlayAccessoryModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v9;
}

- (void)populateModelObject:(id)object version:(int64_t)version
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objectCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v12.receiver = self;
  v12.super_class = HMDAirPlayAccessory;
  [(HMDAccessory *)&v12 populateModelObject:v8 version:version];
  pairingIdentity = [(HMDAirPlayAccessory *)self pairingIdentity];
  [v8 setPairingIdentity:pairingIdentity];

  password = [(HMDAirPlayAccessory *)self password];
  [v8 setPassword:password];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAirPlayAccessory minimumUserPriviledge](self, "minimumUserPriviledge")}];
  [v8 setMinimumUserPriviledge:v11];
}

- (id)backingStoreObjects:(int64_t)objects
{
  v5 = [HMDAirPlayAccessoryModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:uuid parentUUID:uuid2];

  [(HMDAirPlayAccessory *)self populateModelObject:v9 version:objects];
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  v13.receiver = self;
  v13.super_class = HMDAirPlayAccessory;
  v11 = [(HMDAccessory *)&v13 backingStoreObjects:objects];
  [v10 addObjectsFromArray:v11];

  return v10;
}

- (void)setMinimumUserPriviledge:(int64_t)priviledge
{
  os_unfair_recursive_lock_lock_with_options();
  self->_minimumUserPriviledge = priviledge;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)minimumUserPriviledge
{
  os_unfair_recursive_lock_lock_with_options();
  minimumUserPriviledge = self->_minimumUserPriviledge;
  os_unfair_recursive_lock_unlock();
  return minimumUserPriviledge;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [passwordCopy copy];
  password = self->_password;
  self->_password = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)password
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_password;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setPairingIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [identityCopy copy];
  pairingIdentity = self->_pairingIdentity;
  self->_pairingIdentity = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMFPairingIdentity)pairingIdentity
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_pairingIdentity;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)handleUpdatedPassword:(id)password
{
  passwordCopy = password;
  v10.receiver = self;
  v10.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v10 handleUpdatedPassword:passwordCopy];
  password = [(HMDAirPlayAccessory *)self password];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    workQueue = [(HMDAccessory *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__HMDAirPlayAccessory_handleUpdatedPassword___block_invoke;
    v8[3] = &unk_2797359B0;
    v8[4] = self;
    v9 = passwordCopy;
    dispatch_async(workQueue, v8);
  }
}

void __45__HMDAirPlayAccessory_handleUpdatedPassword___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = v2;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Updating password to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    if (v3)
    {
      v15 = @"password";
      v16[0] = v3;
    }

    else
    {
      v15 = @"password";
      v16[0] = &stru_286509E58;
    }

    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v9 = [v5 configurationRetryTimer];
    [v9 reset];

    objc_initWeak(&location, v5);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____updatePassword_block_invoke;
    v13 = &unk_279734708;
    objc_copyWeak(&v14, &location);
    __updateConfiguration(v5, v8, buf);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedMinimumUserPrivilege:(int64_t)privilege
{
  v7.receiver = self;
  v7.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v7 handleUpdatedMinimumUserPrivilege:?];
  if ([(HMDAirPlayAccessory *)self minimumUserPriviledge]!= privilege)
  {
    workQueue = [(HMDAccessory *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__HMDAirPlayAccessory_handleUpdatedMinimumUserPrivilege___block_invoke;
    v6[3] = &unk_279734BB8;
    v6[4] = self;
    v6[5] = privilege;
    dispatch_async(workQueue, v6);
  }
}

void __57__HMDAirPlayAccessory_handleUpdatedMinimumUserPrivilege___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v2;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = HMUserPrivilegeToString();
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Updating minimum user privilege to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v16 = @"privilege";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
    v17[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v10 = [v4 configurationRetryTimer];
    [v10 reset];

    objc_initWeak(&location, v4);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____updateMinimumUserPrivilege_block_invoke;
    v14 = &unk_279734708;
    objc_copyWeak(&v15, &location);
    __updateConfiguration(v4, v9, buf);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)messageSendPolicy
{
  v2 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:1 options:257];

  return v2;
}

- (void)setReachable:(BOOL)reachable
{
  v15 = *MEMORY[0x277D85DE8];
  if (!reachable)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      *buf = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Forcing accessory reachability to YES and ignoring real value of %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10.receiver = self;
  v10.super_class = HMDAirPlayAccessory;
  [(HMDAccessory *)&v10 setReachable:1];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdatedName:(id)name
{
  v25[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = HMDAirPlayAccessory;
  [(HMDAccessory *)&v19 _handleUpdatedName:nameCopy];
  room = [(HMDAccessory *)self room];
  name = [room name];

  getConfiguredName = [(HMDAccessory *)self getConfiguredName];

  if (getConfiguredName)
  {
    getConfiguredName2 = [(HMDAccessory *)self getConfiguredName];

    name = getConfiguredName2;
  }

  selfCopy = self;
  v10 = name;
  v11 = v10;
  if (selfCopy && v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating name to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v24 = @"name";
    v25[0] = v11;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    configurationRetryTimer = [(HMDAirPlayAccessory *)v13 configurationRetryTimer];
    [configurationRetryTimer reset];

    objc_initWeak(&location, v13);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____updateName_block_invoke;
    v22 = &unk_279734708;
    objc_copyWeak(&v23, &location);
    __updateConfiguration(v13, v16, buf);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedAdvertisement:(id)advertisement
{
  v75 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  workQueue = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v72.receiver = self;
  v72.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v72 handleUpdatedAdvertisement:advertisementCopy];
  if (!advertisementCopy)
  {
    __stopConfigurationRetryTimer(self);
    goto LABEL_44;
  }

  selfCopy = self;
  v7 = advertisementCopy;
  v8 = objc_autoreleasePoolPush();
  v9 = selfCopy;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory information", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  outputDevice = [v7 outputDevice];
  av_OutputDevice = [outputDevice av_OutputDevice];

  if (av_OutputDevice)
  {
    v14 = [(HMDAirPlayAccessory *)v9 transactionWithObjectChangeType:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    modelID = [av_OutputDevice modelID];
    if (!modelID)
    {
      goto LABEL_10;
    }

    modelID2 = [av_OutputDevice modelID];
    model = [(HMDAccessory *)v9 model];
    v20 = HMFEqualObjects();

    if ((v20 & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v9;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v74 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Updating model", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      modelID3 = [av_OutputDevice modelID];
      [v16 setModel:modelID3];

      v21 = 1;
    }

    else
    {
LABEL_10:
      v21 = 0;
    }

    manufacturer = [av_OutputDevice manufacturer];
    if (manufacturer)
    {
      manufacturer2 = [av_OutputDevice manufacturer];
      manufacturer3 = [(HMDAccessory *)v9 manufacturer];
      v30 = HMFEqualObjects();

      if ((v30 & 1) == 0)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v9;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543362;
          v74 = v34;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating manufacturer", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v31);
        manufacturer4 = [av_OutputDevice manufacturer];
        [v16 setManufacturer:manufacturer4];

        v21 = 1;
      }
    }

    serialNumber = [av_OutputDevice serialNumber];
    if (serialNumber)
    {
      serialNumber2 = [av_OutputDevice serialNumber];
      serialNumber3 = [(HMDAccessory *)v9 serialNumber];
      v39 = HMFEqualObjects();

      if ((v39 & 1) == 0)
      {
        v40 = objc_autoreleasePoolPush();
        v41 = v9;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v74 = v43;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Updating serial number", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        serialNumber4 = [av_OutputDevice serialNumber];
        [v16 setSerialNumber:serialNumber4];

        v21 = 1;
      }
    }

    firmwareVersion = [av_OutputDevice firmwareVersion];

    if (firmwareVersion)
    {
      v46 = [HMDAccessoryVersion alloc];
      firmwareVersion2 = [av_OutputDevice firmwareVersion];
      v48 = [(HMDAccessoryVersion *)v46 initWithString:firmwareVersion2];

      firmwareVersion3 = [(HMDAccessory *)v9 firmwareVersion];
      v50 = HMFEqualObjects();

      if (v50)
      {

        if ((v21 & 1) == 0)
        {
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = v9;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543362;
          v74 = v54;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Updating firmware version", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v51);
        firmwareVersion4 = [av_OutputDevice firmwareVersion];
        [v16 setFirmwareVersion:firmwareVersion4];
      }
    }

    else if (!v21)
    {
      goto LABEL_37;
    }

    v56 = objc_autoreleasePoolPush();
    v57 = v9;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v59;
      _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@Updated accessory information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v56);
    home = [(HMDAccessory *)v57 home];
    backingStore = [home backingStore];
    v62 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v63 = [backingStore transaction:@"Update Accessory Information" options:v62];

    [v63 add:v16 withMessage:0];
    [v63 run];

    goto LABEL_37;
  }

LABEL_38:

  v64 = __configurationFromAdvertisement(v9, v7);
  if ([v64 count])
  {
    v65 = objc_autoreleasePoolPush();
    v66 = v9;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v68;
      _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory out of sync, updating configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v65);
    objc_initWeak(buf, v66);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __50__HMDAirPlayAccessory_handleUpdatedAdvertisement___block_invoke;
    v70[3] = &unk_279734708;
    objc_copyWeak(&v71, buf);
    __updateConfiguration(v66, v64, v70);
    objc_destroyWeak(&v71);
    objc_destroyWeak(buf);
  }

  else
  {
    __stopConfigurationRetryTimer(v9);
  }

LABEL_44:
  v69 = *MEMORY[0x277D85DE8];
}

void __50__HMDAirPlayAccessory_handleUpdatedAdvertisement___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      v10 = "%{public}@Failed to update accessory configuration with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Successfully updated accessory configuration";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setAdvertisement:(id)advertisement
{
  v15 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [(HMDAccessory *)selfCopy identifier];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = identifier;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Ignoring setting the advertisement data for AirPlay accessory %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)advertisement
{
  v3 = [HMDMediaAccessoryBrowseOperation alloc];
  identifier = [(HMDAccessory *)self identifier];
  v5 = [(HMDMediaAccessoryBrowseOperation *)v3 initWithAccessoryIdentifier:identifier];

  [(HMDMediaAccessoryBrowseOperation *)v5 setEndpointFeatures:1];
  [(HMFOperation *)v5 start];
  [(HMDMediaAccessoryBrowseOperation *)v5 waitUntilFinished];
  error = [(HMFOperation *)v5 error];

  if (error)
  {
    v7 = 0;
  }

  else
  {
    outputDevices = [(HMDMediaAccessoryBrowseOperation *)v5 outputDevices];
    firstObject = [outputDevices firstObject];

    v7 = [[HMDMediaAccessoryAdvertisement alloc] initWithOutputDevice:firstObject];
  }

  return v7;
}

void __97__HMDAirPlayAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) advertisement];
  v3 = *(a1 + 32);
  v7 = v2;
  if (v2)
  {
    v4 = [v3 advertisement];
    [v3 handleUpdatedAdvertisement:v4];
  }

  else
  {
    v5 = [v3 configurationRetryTimer];
    [v5 reset];

    __startConfigurationRetryTimer(*(a1 + 32));
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    dispatch_group_leave(v6);
  }
}

- (HMDAirPlayAccessory)initWithTransaction:(id)transaction home:(id)home
{
  v26 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  homeCopy = home;
  v8 = transactionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v23.receiver = self;
    v23.super_class = HMDAirPlayAccessory;
    v11 = [(HMDMediaAccessory *)&v23 initWithTransaction:v8 home:homeCopy];
    if (v11)
    {
      pairingIdentity = [v10 pairingIdentity];
      pairingIdentity = v11->_pairingIdentity;
      v11->_pairingIdentity = pairingIdentity;

      password = [v10 password];
      password = v11->_password;
      v11->_password = password;

      v11->super.super._reachable = 1;
    }

    selfCopy = v11;
    v17 = selfCopy;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize an AirPlay accessory without an AirPlay model.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t81 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t81, &__block_literal_global_80_90517);
  }

  v3 = logCategory__hmf_once_v82;

  return v3;
}

uint64_t __34__HMDAirPlayAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v82;
  logCategory__hmf_once_v82 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (void)initialize
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662BE18 forPreferenceKey:@"airPlayConfigurationRetryMinimum"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662BE28 forPreferenceKey:@"airPlayConfigurationRetryMaximum"];
  v2 = MEMORY[0x277D0F8D0];

  [v2 setDefaultValue:&unk_286628618 forPreferenceKey:@"airPlayConfigurationRetryFactor"];
}

@end