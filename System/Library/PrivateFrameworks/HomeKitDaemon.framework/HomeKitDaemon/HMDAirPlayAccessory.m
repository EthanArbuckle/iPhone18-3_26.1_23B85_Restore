@interface HMDAirPlayAccessory
+ (id)logCategory;
+ (void)initialize;
- (HMDAirPlayAccessory)initWithCoder:(id)a3;
- (HMDAirPlayAccessory)initWithTransaction:(id)a3 home:(id)a4;
- (HMFPairingIdentity)pairingIdentity;
- (NSString)password;
- (id)advertisement;
- (id)backingStoreObjects:(int64_t)a3;
- (id)logIdentifier;
- (id)messageSendPolicy;
- (id)transactionWithObjectChangeType:(unint64_t)a3;
- (int64_t)minimumUserPriviledge;
- (void)_handleUpdatedName:(id)a3;
- (void)addUser:(id)a3 completionHandler:(id)a4;
- (void)disassociatePairingIdentity:(id)a3 completionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)handleUpdatedAdvertisement:(id)a3;
- (void)handleUpdatedMinimumUserPrivilege:(int64_t)a3;
- (void)handleUpdatedPassword:(id)a3;
- (void)pairingsWithCompletionHandler:(id)a3;
- (void)populateModelObject:(id)a3 version:(int64_t)a4;
- (void)removeUser:(id)a3 completionHandler:(id)a4;
- (void)removeUserPairingIdentity:(id)a3 isOwner:(BOOL)a4 completionHandler:(id)a5;
- (void)setAdvertisement:(id)a3;
- (void)setMinimumUserPriviledge:(int64_t)a3;
- (void)setPairingIdentity:(id)a3;
- (void)setPassword:(id)a3;
- (void)timerDidFire:(id)a3;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDAirPlayAccessory

- (id)logIdentifier
{
  v2 = [(HMDAccessory *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 hmd_isForXPCTransport];
  v6 = [v4 hmd_isForLocalStore];
  v11.receiver = self;
  v11.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v11 encodeWithCoder:v4];
  v7 = [(HMDAirPlayAccessory *)self pairingIdentity];
  v8 = v7;
  if ((v5 & 1) == 0)
  {
    if (v6)
    {
      [v4 encodeObject:v7 forKey:*MEMORY[0x277CCEC20]];
    }

    else if (v7)
    {
      v9 = [v7 publicPairingIdentity];
      [v4 encodeObject:v9 forKey:*MEMORY[0x277CCEC20]];
    }
  }

  if (([v4 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount"))
  {
    v10 = [(HMDAirPlayAccessory *)self password];
    [v4 encodeObject:v10 forKey:@"HM.password"];

    [v4 encodeInteger:-[HMDAirPlayAccessory minimumUserPriviledge](self forKey:{"minimumUserPriviledge"), @"HM.minimumUserPriviledge"}];
  }
}

- (HMDAirPlayAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDAirPlayAccessory;
  v5 = [(HMDMediaAccessory *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC20]];
    pairingIdentity = v5->_pairingIdentity;
    v5->_pairingIdentity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.password"];
    password = v5->_password;
    v5->_password = v8;

    v5->_minimumUserPriviledge = [v4 decodeIntegerForKey:@"HM.minimumUserPriviledge"];
  }

  return v5;
}

- (void)timerDidFire:(id)a3
{
  v4 = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDAirPlayAccessory_timerDidFire___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __36__HMDAirPlayAccessory_timerDidFire___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Retrying configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) advertisement];
  if (v6)
  {
    v7 = [*(a1 + 32) home];
    if ([v7 hasAnyResident] && objc_msgSend(v7, "isCurrentDevicePrimaryResident"))
    {
      __updateAccessoryInformation(*(a1 + 32), v6);
    }

    v8 = [*(a1 + 32) configurationRetryTimer];
    [v8 suspend];

    v9 = __configurationFromAdvertisement(*(a1 + 32), v6);
    v10 = [v9 count] == 0;
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v21;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory no longer out of sync", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      __stopConfigurationRetryTimer(*(a1 + 32));
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory out of sync, updating configuration", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      objc_initWeak(buf, *(a1 + 32));
      v16 = *(a1 + 32);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __36__HMDAirPlayAccessory_timerDidFire___block_invoke_64;
      v23[3] = &unk_278688A18;
      objc_copyWeak(&v24, buf);
      __updateConfiguration(v16, v9, v23);
      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Missing advertisement, continuing configuration retries", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __36__HMDAirPlayAccessory_timerDidFire___block_invoke_64(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
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

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
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

  v38 = v8;
  if (v13)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__136270;
    v46 = __Block_byref_object_dispose__136271;
    v47 = 0;
    v14 = [v10 responseHandler];
    if (v14)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__HMDAirPlayAccessory_transactionObjectUpdated_newValues_message___block_invoke;
      aBlock[3] = &unk_27867ADD0;
      aBlock[4] = &v42;
      v15 = _Block_copy(aBlock);
      [v10 setResponseHandler:v15];
    }

    v40.receiver = self;
    v40.super_class = HMDAirPlayAccessory;
    [(HMDMediaAccessory *)&v40 transactionObjectUpdated:0 newValues:v11 message:v10];
    v16 = self;
    v17 = v13;
    v18 = v10;
    v37 = [v18 transactionResult];
    v19 = [v17 pairingIdentity];

    if (v19)
    {
      v20 = [v17 pairingIdentity];
      v21 = [(HMDAirPlayAccessory *)v16 pairingIdentity];
      v22 = [v20 isEqual:v21];

      if ((v22 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        v23 = v16;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          v25 = [v17 pairingIdentity];
          *buf = 138543618;
          v49 = v35;
          v50 = 2112;
          v51 = v25;
          v34 = v25;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v26 = [v17 pairingIdentity];
        [(HMDAirPlayAccessory *)v23 setPairingIdentity:v26];

        [v37 markChanged];
      }
    }

    if ([v17 propertyWasSet:{@"password", v34}])
    {
      v27 = [v17 password];
      v28 = [(HMDAirPlayAccessory *)v16 password];
      v29 = HMFEqualObjects();

      if ((v29 & 1) == 0)
      {
        v30 = [v17 password];
        [(HMDAirPlayAccessory *)v16 setPassword:v30];

        [v37 markChanged];
      }
    }

    if ([v17 propertyWasSet:@"minimumUserPriviledge"])
    {
      v31 = [v17 minimumUserPriviledge];
      v32 = [v31 integerValue];

      if ([(HMDAirPlayAccessory *)v16 minimumUserPriviledge]!= v32)
      {
        [(HMDAirPlayAccessory *)v16 setMinimumUserPriviledge:v32];
        [v37 markChanged];
      }
    }

    [v18 respondWithPayload:0];

    if (v14)
    {
      v14[2](v14, v43[5], 0);
    }

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    v39.receiver = self;
    v39.super_class = HMDAirPlayAccessory;
    [(HMDMediaAccessory *)&v39 transactionObjectUpdated:v8 newValues:v11 message:v10];
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

- (void)pairingsWithCompletionHandler:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Requesting pairings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessory *)v6 home];
  v10 = [v9 isOwnerUser];

  if (v10)
  {
    v11 = [(HMDAirPlayAccessory *)v6 advertisement];
    v12 = [v11 outputDevice];
    v13 = [v12 av_OutputDevice];

    if (v13)
    {
      objc_initWeak(buf, v6);
      v14 = __outputDeviceConfigurationOptions();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __53__HMDAirPlayAccessory_pairingsWithCompletionHandler___block_invoke_2;
      v25[3] = &unk_27867A4F0;
      v26 = v11;
      objc_copyWeak(&v28, buf);
      v27 = v4;
      [v13 configureUsingBlock:&__block_literal_global_136277 options:v14 completionHandler:v25];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
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
        v30 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      (*(v4 + 2))(v4, 0, v23);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v6;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Only owner can remove users", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    (*(v4 + 2))(v4, 0, v11);
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
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Successfully requested pairing identities: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get peers with error: %@, cancellationReason: %@", buf, 0x20u);
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

- (void)removeUserPairingIdentity:(id)a3 isOwner:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@User is the owner, disassociating from device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDAirPlayAccessory *)v11 disassociatePairingIdentity:v8 completionHandler:v9];
  }

  else
  {
    v14 = [(HMDAirPlayAccessory *)self advertisement];
    v15 = [v14 outputDevice];
    v16 = [v15 av_OutputDevice];

    if (v16)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke;
      aBlock[3] = &unk_27867A4C8;
      v17 = v8;
      v32 = v17;
      v18 = _Block_copy(aBlock);
      objc_initWeak(buf, self);
      v19 = __outputDeviceConfigurationOptions();
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke_2;
      v26[3] = &unk_27867A518;
      v27 = v14;
      objc_copyWeak(&v30, buf);
      v28 = v17;
      v29 = v9;
      [v16 configureUsingBlock:v18 options:v19 completionHandler:v26];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);

      v20 = v32;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      (*(v9 + 2))(v9, v20);
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
              _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove user pairing identity: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully removed peer", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove peer with error: %@, cancellationReason: %@", buf, 0x20u);
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

- (void)removeUser:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Removing user: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v6 pairingIdentity];
  if (v12)
  {
    -[HMDAirPlayAccessory removeUserPairingIdentity:isOwner:completionHandler:](v9, "removeUserPairingIdentity:isOwner:completionHandler:", v12, [v6 isOwner], v7);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v9;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to get pairing identity for user: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v7[2](v7, v17);
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
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add peer with error: %@, cancellationReason: %@", &v30, 0x20u);
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add peer: %@", &v30, 0x16u);
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
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully added peer: %@", &v30, 0x16u);
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

- (void)addUser:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Adding user: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDAccessory *)v9 home];
  v13 = [v12 isOwnerUser];

  if (v13)
  {
    v14 = [v6 pairingIdentity];
    if (v14)
    {
      v15 = v14;
      -[HMDAirPlayAccessory addUserPairingIdentity:isOwner:completionHandler:](v9, "addUserPairingIdentity:isOwner:completionHandler:", v14, [v6 isOwner], v7);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v9;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Failed to get pairing identity for user: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v7[2](v7, v24);

      v15 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Only owner can add users", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v7[2](v7, v15);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)disassociatePairingIdentity:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting disassociation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDAirPlayAccessory *)v9 advertisement];
  v13 = [v12 outputDevice];
  v14 = [v13 av_OutputDevice];

  if (v14)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke;
    aBlock[3] = &unk_27867A4C8;
    v28 = v6;
    v15 = _Block_copy(aBlock);
    objc_initWeak(buf, v9);
    v16 = __outputDeviceConfigurationOptions();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke_2;
    v23[3] = &unk_27867A4F0;
    v24 = v12;
    objc_copyWeak(&v26, buf);
    v25 = v7;
    [v14 configureUsingBlock:v15 options:v16 completionHandler:v23];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);

    v17 = v28;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v9;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    (*(v7 + 2))(v7, v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDevicePassword:&stru_283CF9D50];
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
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to disassociate with error: %@, cancellationReason: %@", &v31, 0x20u);
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, v18, &v31, 0xCu);

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
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully disassociated", &v31, 0xCu);
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

- (id)transactionWithObjectChangeType:(unint64_t)a3
{
  v5 = [HMDAirPlayAccessoryModel alloc];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [(HMDAccessory *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  return v9;
}

- (void)populateModelObject:(id)a3 version:(int64_t)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v12.receiver = self;
  v12.super_class = HMDAirPlayAccessory;
  [(HMDAccessory *)&v12 populateModelObject:v8 version:a4];
  v9 = [(HMDAirPlayAccessory *)self pairingIdentity];
  [v8 setPairingIdentity:v9];

  v10 = [(HMDAirPlayAccessory *)self password];
  [v8 setPassword:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAirPlayAccessory minimumUserPriviledge](self, "minimumUserPriviledge")}];
  [v8 setMinimumUserPriviledge:v11];
}

- (id)backingStoreObjects:(int64_t)a3
{
  v5 = [HMDAirPlayAccessoryModel alloc];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [(HMDAccessory *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:v8];

  [(HMDAirPlayAccessory *)self populateModelObject:v9 version:a3];
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  v13.receiver = self;
  v13.super_class = HMDAirPlayAccessory;
  v11 = [(HMDAccessory *)&v13 backingStoreObjects:a3];
  [v10 addObjectsFromArray:v11];

  return v10;
}

- (void)setMinimumUserPriviledge:(int64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_minimumUserPriviledge = a3;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)minimumUserPriviledge
{
  os_unfair_recursive_lock_lock_with_options();
  minimumUserPriviledge = self->_minimumUserPriviledge;
  os_unfair_recursive_lock_unlock();
  return minimumUserPriviledge;
}

- (void)setPassword:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)setPairingIdentity:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)handleUpdatedPassword:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v10 handleUpdatedPassword:v4];
  v5 = [(HMDAirPlayAccessory *)self password];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    v7 = [(HMDAccessory *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__HMDAirPlayAccessory_handleUpdatedPassword___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Updating password to: %@", buf, 0x16u);
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
      v16[0] = &stru_283CF9D50;
    }

    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v9 = [v5 configurationRetryTimer];
    [v9 reset];

    objc_initWeak(&location, v5);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____updatePassword_block_invoke;
    v13 = &unk_278688A18;
    objc_copyWeak(&v14, &location);
    __updateConfiguration(v5, v8, buf);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedMinimumUserPrivilege:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v7 handleUpdatedMinimumUserPrivilege:?];
  if ([(HMDAirPlayAccessory *)self minimumUserPriviledge]!= a3)
  {
    v5 = [(HMDAccessory *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__HMDAirPlayAccessory_handleUpdatedMinimumUserPrivilege___block_invoke;
    v6[3] = &unk_27868A0D0;
    v6[4] = self;
    v6[5] = a3;
    dispatch_async(v5, v6);
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Updating minimum user privilege to: %@", buf, 0x16u);
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
    v14 = &unk_278688A18;
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

- (void)_handleUpdatedName:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HMDAirPlayAccessory;
  [(HMDAccessory *)&v19 _handleUpdatedName:v4];
  v5 = [(HMDAccessory *)self room];
  v6 = [v5 name];

  v7 = [(HMDAccessory *)self getConfiguredName];

  if (v7)
  {
    v8 = [(HMDAccessory *)self getConfiguredName];

    v6 = v8;
  }

  v9 = self;
  v10 = v6;
  v11 = v10;
  if (v9 && v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating name to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v24 = @"name";
    v25[0] = v11;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [(HMDAirPlayAccessory *)v13 configurationRetryTimer];
    [v17 reset];

    objc_initWeak(&location, v13);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____updateName_block_invoke;
    v22 = &unk_278688A18;
    objc_copyWeak(&v23, &location);
    __updateConfiguration(v13, v16, buf);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedAdvertisement:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v21.receiver = self;
  v21.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v21 handleUpdatedAdvertisement:v4];
  if (v4)
  {
    v6 = [(HMDAccessory *)self home];
    if ([v6 hasAnyResident] && (objc_msgSend(v6, "primaryResident"), v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == 0, v7, v8))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Deferring configuration because there currently is not a primary resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      __startConfigurationRetryTimer(v16);
    }

    else
    {
      __updateAccessoryInformation(self, v4);
      v9 = __configurationFromAdvertisement(self, v4);
      if ([v9 count])
      {
        v10 = objc_autoreleasePoolPush();
        v11 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v23 = v13;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory out of sync, updating configuration", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        objc_initWeak(buf, v11);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __50__HMDAirPlayAccessory_handleUpdatedAdvertisement___block_invoke;
        v19[3] = &unk_278688A18;
        objc_copyWeak(&v20, buf);
        __updateConfiguration(v11, v9, v19);
        objc_destroyWeak(&v20);
        objc_destroyWeak(buf);
      }

      else
      {
        __stopConfigurationRetryTimer(self);
      }
    }
  }

  else
  {
    __stopConfigurationRetryTimer(self);
  }

  v14 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
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

- (void)setAdvertisement:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDAccessory *)v6 identifier];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Ignoring setting the advertisement data for AirPlay accessory %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)advertisement
{
  v3 = [HMDMediaAccessoryBrowseOperation alloc];
  v4 = [(HMDAccessory *)self identifier];
  v5 = [(HMDMediaAccessoryBrowseOperation *)v3 initWithAccessoryIdentifier:v4];

  [(HMDMediaAccessoryBrowseOperation *)v5 setEndpointFeatures:1];
  [(HMFOperation *)v5 start];
  [(HMDMediaAccessoryBrowseOperation *)v5 waitUntilFinished];
  v6 = [(HMFOperation *)v5 error];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(HMDMediaAccessoryBrowseOperation *)v5 outputDevices];
    v9 = [v8 firstObject];

    v7 = [[HMDMediaAccessoryAdvertisement alloc] initWithOutputDevice:v9];
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

- (HMDAirPlayAccessory)initWithTransaction:(id)a3 home:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    v11 = [(HMDMediaAccessory *)&v23 initWithTransaction:v8 home:v7];
    if (v11)
    {
      v12 = [v10 pairingIdentity];
      pairingIdentity = v11->_pairingIdentity;
      v11->_pairingIdentity = v12;

      v14 = [v10 password];
      password = v11->_password;
      v11->_password = v14;
    }

    v16 = v11;
    v17 = v16;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v16 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize an AirPlay accessory without an AirPlay model.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t82 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t82, &__block_literal_global_78);
  }

  v3 = logCategory__hmf_once_v83;

  return v3;
}

void __34__HMDAirPlayAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v83;
  logCategory__hmf_once_v83 = v1;
}

+ (void)initialize
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75EC8 forPreferenceKey:@"airPlayConfigurationRetryMinimum"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75ED8 forPreferenceKey:@"airPlayConfigurationRetryMaximum"];
  v2 = MEMORY[0x277D0F8D0];

  [v2 setDefaultValue:&unk_283E72F38 forPreferenceKey:@"airPlayConfigurationRetryFactor"];
}

@end