@interface HMDMediaAccessory
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)a3;
- (HMDMediaAccessory)init;
- (HMDMediaAccessory)initWithCoder:(id)a3;
- (HMDMediaAccessory)initWithTransaction:(id)a3 home:(id)a4;
- (HMDMediaAccessoryAdvertisement)advertisement;
- (NSDictionary)assistantObject;
- (NSString)urlString;
- (id)_createMediaProfile;
- (id)dumpSimpleState;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)name;
- (id)transactionWithObjectChangeType:(unint64_t)a3;
- (int64_t)reachableTransports;
- (void)_registerForNotifications;
- (void)addAdvertisement:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleRoomChanged:(id)a3;
- (void)handleRoomNameChanged:(id)a3;
- (void)handleUpdatedAdvertisement:(id)a3;
- (void)notifyConnectivityChangedWithReachabilityState:(BOOL)a3;
- (void)removeAdvertisement:(id)a3;
- (void)setAdvertisement:(id)a3;
- (void)setRemotelyReachable:(BOOL)a3;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)unconfigure;
@end

@implementation HMDMediaAccessory

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = HMDMediaAccessory;
  [(HMDAccessory *)&v5 encodeWithCoder:v4];
  if ([v4 hmd_isForXPCTransport] && objc_msgSend(v4, "hmd_isForXPCTransportEntitledForSPIAccess"))
  {
    [v4 encodeBool:1 forKey:*MEMORY[0x277CCEFC8]];
  }
}

- (HMDMediaAccessory)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = HMDMediaAccessory;
  v3 = [(HMDAccessory *)&v9 initWithCoder:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v3->_notificationCenter;
    v3->_notificationCenter = v4;

    v6 = [(HMDMediaAccessory *)v3 _createMediaProfile];
    mediaProfile = v3->_mediaProfile;
    v3->_mediaProfile = v6;

    [(NSMutableSet *)v3->super._accessoryProfiles addObject:v3->_mediaProfile];
  }

  return v3;
}

- (id)dumpSimpleState
{
  v10.receiver = self;
  v10.super_class = HMDMediaAccessory;
  v3 = [(HMDAccessory *)&v10 dumpSimpleState];
  v4 = [v3 mutableCopy];

  v5 = *MEMORY[0x277D0F170];
  v6 = [v4 hmf_stringForKey:*MEMORY[0x277D0F170]];
  v7 = [(HMDAccessory *)self identifier];
  v8 = [v6 stringByAppendingFormat:@", identifier: %@", v7];

  [v4 setObject:v8 forKeyedSubscript:v5];

  return v4;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = HMDMediaAccessory;
  v4 = [(HMDAccessory *)&v11 dumpStateWithPrivacyLevel:a3];
  v5 = [v4 mutableCopy];

  v6 = *MEMORY[0x277D0F170];
  v7 = [v5 hmf_stringForKey:*MEMORY[0x277D0F170]];
  v8 = [(HMDAccessory *)self identifier];
  v9 = [v7 stringByAppendingFormat:@", identifier: %@", v8];

  [v5 setObject:v9 forKeyedSubscript:v6];

  return v5;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
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

  if (v13)
  {
    v28 = v8;
    v29 = v13;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__97636;
    v38 = __Block_byref_object_dispose__97637;
    v39 = 0;
    v14 = [v10 responseHandler];
    if (v14)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__HMDMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke;
      aBlock[3] = &unk_27867ADD0;
      aBlock[4] = &v34;
      v15 = _Block_copy(aBlock);
      [v10 setResponseHandler:v15];
    }

    v32.receiver = self;
    v32.super_class = HMDMediaAccessory;
    [(HMDAccessory *)&v32 transactionObjectUpdated:0 newValues:v11 message:v10];
    v30 = self;
    v16 = v29;
    v17 = v10;
    v18 = [v17 transactionResult];
    v19 = [v16 roomUUID];

    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x277CCAD78]);
      v21 = [v16 roomUUID];
      v22 = [v20 initWithUUIDString:v21];

      if (v22 && -[HMDAccessory _updateRoom:source:](v30, "_updateRoom:source:", v22, [v18 source]))
      {
        [v18 markChanged];
        [v18 markSaveToAssistant];
      }
    }

    v23 = [v16 identifier];
    if (v23)
    {
      v24 = [(HMDAccessory *)v30 identifier];
      v25 = [v16 identifier];
      v26 = [v24 isEqual:v25];

      if ((v26 & 1) == 0)
      {
        v27 = [v16 identifier];
        [(HMDAccessory *)v30 setIdentifier:v27];

        [v18 markChanged];
        [v18 markSaveToAssistant];
      }
    }

    [v17 respondWithPayload:0];

    if (v14)
    {
      v14[2](v14, v35[5], 0);
    }

    _Block_object_dispose(&v34, 8);
    v8 = v28;
    v13 = v29;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = HMDMediaAccessory;
    [(HMDAccessory *)&v31 transactionObjectUpdated:v8 newValues:v11 message:v10];
  }
}

void __64__HMDMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (id)transactionWithObjectChangeType:(unint64_t)a3
{
  v5 = [HMDMediaAccessoryModel alloc];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [(HMDAccessory *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  return v9;
}

- (int64_t)reachableTransports
{
  v7.receiver = self;
  v7.super_class = HMDMediaAccessory;
  v3 = [(HMDAccessory *)&v7 reachableTransports];
  if ([(HMDAccessory *)self isReachable])
  {
    v3 |= 0x10uLL;
  }

  v4 = [(HMDAccessory *)self home];
  v5 = [v4 isResidentSupported];

  if (v5 && [(HMDAccessory *)self isRemotelyReachable])
  {
    return v3 | 8;
  }

  return v3;
}

- (void)setRemotelyReachable:(BOOL)a3
{
  v3 = a3;
  os_unfair_recursive_lock_lock_with_options();
  remotelyReachable = self->super._remotelyReachable;
  if (remotelyReachable == v3)
  {

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v6 = (remotelyReachable & 1) != 0 || self->super._reachable;
    self->super._remotelyReachable = v3;
    v7 = self->super._reachable | v3;
    os_unfair_recursive_lock_unlock();
    if (v6 != v7)
    {

      [(HMDMediaAccessory *)self notifyConnectivityChangedWithReachabilityState:v7];
    }
  }
}

- (void)notifyConnectivityChangedWithReachabilityState:(BOOL)a3
{
  v5 = [(HMDAccessory *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HMDMediaAccessory_notifyConnectivityChangedWithReachabilityState___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __68__HMDMediaAccessory_notifyConnectivityChangedWithReachabilityState___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 isResidentSupported];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v10 = HMFBooleanToString();
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying clients of updated media accessory reachability: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [v2 notifyClientsOfReachabilityUpdateForAccessory:*(a1 + 32)];
  }

  else
  {
    if (v7)
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring non-remote reachability change while remote access is enabled", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedAdvertisement:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updated with advertisement: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setAdvertisement:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  advertisement = self->_advertisement;
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    objc_storeStrong(&self->_advertisement, a3);
    os_unfair_recursive_lock_unlock();
    [(HMDMediaAccessory *)self handleUpdatedAdvertisement:v6];
  }
}

- (HMDMediaAccessoryAdvertisement)advertisement
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_advertisement;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)handleRoomChanged:(id)a3
{
  v15 = a3;
  v4 = [v15 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 uuid];
    v8 = [(HMDAccessory *)self uuid];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = [(HMDAccessory *)self getConfiguredName];

      if (!v10)
      {
        v11 = [v15 userInfo];
        v12 = [v11 hmf_stringForKey:@"kRoomOldNameKey"];

        v13 = [(HMDMediaAccessory *)self name];
        v14 = HMFEqualObjects();

        if ((v14 & 1) == 0)
        {
          [(HMDAccessory *)self notifyAccessoryNameChanged:1];
        }
      }
    }
  }
}

- (void)handleRoomNameChanged:(id)a3
{
  v14 = a3;
  v4 = [v14 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(HMDAccessory *)self room];
    v8 = HMFEqualObjects();

    if (v8)
    {
      v9 = [(HMDAccessory *)self getConfiguredName];

      if (!v9)
      {
        v10 = [v14 userInfo];
        v11 = [v10 hmf_stringForKey:@"kRoomOldNameKey"];

        v12 = [(HMDMediaAccessory *)self name];
        v13 = HMFEqualObjects();

        if ((v13 & 1) == 0)
        {
          [(HMDAccessory *)self notifyAccessoryNameChanged:1];
        }
      }
    }
  }
}

- (id)name
{
  v3 = [(HMDAccessory *)self configuredName];
  v4 = [(HMDAccessory *)self room];
  v5 = v4;
  if (!v3)
  {
    v6 = [v4 name];
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = @"Media Accessory";
    }
  }

  return v3;
}

- (void)removeAdvertisement:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HMDMediaAccessory;
  [(HMDAccessory *)&v19 removeAdvertisement:v4];
  v5 = v4;
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
    [(HMDMediaAccessory *)self setAdvertisement:0];
    v8 = [(HMDMediaAccessory *)self mediaProfile];
    [v8 setMediaSession:0];

    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDAccessory *)v10 identifier];
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Remove advertisement for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDAccessory *)v10 setReachable:0];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid removed advertisement: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addAdvertisement:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDMediaAccessory;
  [(HMDAccessory *)&v13 addAdvertisement:v4];
  v5 = v4;
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
    [(HMDMediaAccessory *)self setAdvertisement:v7];
    [(HMDAccessory *)self setReachable:1];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid added advertisement: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_createMediaProfile
{
  v2 = [[HMDMediaProfile alloc] initWithAccessory:self];

  return v2;
}

- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HMDMediaAccessory;
    v5 = [(HMDAccessory *)&v7 _shouldFilterAccessoryProfileForUnentitledClients:v4];
  }

  return v5;
}

- (void)unconfigure
{
  v3 = [(HMDMediaAccessory *)self notificationCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDMediaAccessory;
  [(HMDAccessory *)&v4 unconfigure];
}

- (void)_registerForNotifications
{
  v3 = [(HMDMediaAccessory *)self notificationCenter];
  [v3 addObserver:self selector:sel_handleRoomChanged_ name:@"HMDNotificationAccessoryChangedRoom" object:self];

  v4 = [(HMDMediaAccessory *)self notificationCenter];
  [v4 addObserver:self selector:sel_handleRoomNameChanged_ name:@"HMDRoomNameUpdatedNotification" object:0];
}

- (HMDMediaAccessory)init
{
  v8.receiver = self;
  v8.super_class = HMDMediaAccessory;
  v2 = [(HMDAccessory *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    accessoryProfiles = v2->super._accessoryProfiles;
    v2->super._accessoryProfiles = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v5;
  }

  return v2;
}

- (HMDMediaAccessory)initWithTransaction:(id)a3 home:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
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

  if (!v10)
  {
    v19 = objc_autoreleasePoolPush();
    v17 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v21;
      v22 = "%{public}@Cannot initialize a media accessory without an media model.";
LABEL_13:
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    }

LABEL_14:

    objc_autoreleasePoolPop(v19);
    v18 = 0;
    goto LABEL_15;
  }

  v11 = [v10 identifier];

  if (!v11)
  {
    v19 = objc_autoreleasePoolPush();
    v17 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v21;
      v22 = "%{public}@The media identifier is required";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v25.receiver = self;
  v25.super_class = HMDMediaAccessory;
  v12 = [(HMDAccessory *)&v25 initWithTransaction:v8 home:v7];
  if (v12)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v12->_notificationCenter;
    v12->_notificationCenter = v13;

    v15 = [(HMDMediaAccessory *)v12 _createMediaProfile];
    mediaProfile = v12->_mediaProfile;
    v12->_mediaProfile = v15;

    [(NSMutableSet *)v12->super._accessoryProfiles addObject:v12->_mediaProfile];
  }

  v17 = v12;
  v18 = v17;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HMDMediaAccessory;
  v5 = objc_msgSendSuper2(&v7, sel_messageBindingForDispatcher_message_receiver_, a3, a4, a5);

  return v5;
}

- (NSDictionary)assistantObject
{
  v29 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = HMDMediaAccessory;
  v3 = [(HMDAccessory *)&v22 assistantObject];
  v4 = [v3 mutableCopy];

  v5 = [(HMDAccessory *)self category];
  v6 = [v5 categoryType];
  v7 = [v6 isEqual:*MEMORY[0x277CCE860]];

  if (v7)
  {
    v8 = MEMORY[0x277D48258];
    goto LABEL_5;
  }

  v9 = [v5 categoryType];
  v10 = [v9 isEqual:*MEMORY[0x277CCE900]];

  if (v10)
  {
    v8 = MEMORY[0x277D48350];
LABEL_5:
    v11 = *v8;
    v12 = *MEMORY[0x277D481C0];
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v23[0] = @"objectServiceType";
      v23[1] = @"objectServiceSubType";
      v24[0] = v11;
      v24[1] = v12;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      [v4 addEntriesFromDictionary:v15];
    }

    goto LABEL_15;
  }

  if ([(HMDMediaAccessory *)self isMemberOfClass:objc_opt_class()])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Media accessory with invalid accessory category: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v11 = 0;
  v13 = 0;
LABEL_15:
  v19 = [v4 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSString)urlString
{
  v4.receiver = self;
  v4.super_class = HMDMediaAccessory;
  v2 = [(HMDAccessory *)&v4 urlString];

  return v2;
}

@end