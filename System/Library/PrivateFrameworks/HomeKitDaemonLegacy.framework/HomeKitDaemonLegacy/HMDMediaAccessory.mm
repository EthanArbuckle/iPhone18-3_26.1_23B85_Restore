@interface HMDMediaAccessory
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)clients;
- (HMDMediaAccessory)init;
- (HMDMediaAccessory)initWithCoder:(id)coder;
- (HMDMediaAccessory)initWithTransaction:(id)transaction home:(id)home;
- (HMDMediaAccessoryAdvertisement)advertisement;
- (NSDictionary)assistantObject;
- (NSString)urlString;
- (id)_createMediaProfile;
- (id)dumpSimpleState;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)name;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (int64_t)reachableTransports;
- (void)_registerForNotifications;
- (void)addAdvertisement:(id)advertisement;
- (void)encodeWithCoder:(id)coder;
- (void)handleRoomChanged:(id)changed;
- (void)handleRoomNameChanged:(id)changed;
- (void)handleUpdatedAdvertisement:(id)advertisement;
- (void)notifyConnectivityChangedWithReachabilityState:(BOOL)state;
- (void)removeAdvertisement:(id)advertisement;
- (void)setAdvertisement:(id)advertisement;
- (void)setRemotelyReachable:(BOOL)reachable;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)unconfigure;
@end

@implementation HMDMediaAccessory

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = HMDMediaAccessory;
  [(HMDAccessory *)&v5 encodeWithCoder:coderCopy];
  if ([coderCopy hmd_isForXPCTransport] && objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess"))
  {
    [coderCopy encodeBool:1 forKey:*MEMORY[0x277CCEFC8]];
  }
}

- (HMDMediaAccessory)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = HMDMediaAccessory;
  v3 = [(HMDAccessory *)&v9 initWithCoder:coder];
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v3->_notificationCenter;
    v3->_notificationCenter = defaultCenter;

    _createMediaProfile = [(HMDMediaAccessory *)v3 _createMediaProfile];
    mediaProfile = v3->_mediaProfile;
    v3->_mediaProfile = _createMediaProfile;

    [(NSMutableSet *)v3->super._accessoryProfiles addObject:v3->_mediaProfile];
  }

  return v3;
}

- (id)dumpSimpleState
{
  v10.receiver = self;
  v10.super_class = HMDMediaAccessory;
  dumpSimpleState = [(HMDAccessory *)&v10 dumpSimpleState];
  v4 = [dumpSimpleState mutableCopy];

  v5 = *MEMORY[0x277D0F170];
  v6 = [v4 hmf_stringForKey:*MEMORY[0x277D0F170]];
  identifier = [(HMDAccessory *)self identifier];
  v8 = [v6 stringByAppendingFormat:@", identifier: %@", identifier];

  [v4 setObject:v8 forKeyedSubscript:v5];

  return v4;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v11.receiver = self;
  v11.super_class = HMDMediaAccessory;
  v4 = [(HMDAccessory *)&v11 dumpStateWithPrivacyLevel:level];
  v5 = [v4 mutableCopy];

  v6 = *MEMORY[0x277D0F170];
  v7 = [v5 hmf_stringForKey:*MEMORY[0x277D0F170]];
  identifier = [(HMDAccessory *)self identifier];
  v9 = [v7 stringByAppendingFormat:@", identifier: %@", identifier];

  [v5 setObject:v9 forKeyedSubscript:v6];

  return v5;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
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

  if (v13)
  {
    v28 = updatedCopy;
    v29 = v13;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__62366;
    v38 = __Block_byref_object_dispose__62367;
    v39 = 0;
    responseHandler = [messageCopy responseHandler];
    if (responseHandler)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__HMDMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke;
      aBlock[3] = &unk_27972A108;
      aBlock[4] = &v34;
      v15 = _Block_copy(aBlock);
      [messageCopy setResponseHandler:v15];
    }

    v32.receiver = self;
    v32.super_class = HMDMediaAccessory;
    [(HMDAccessory *)&v32 transactionObjectUpdated:0 newValues:v11 message:messageCopy];
    selfCopy = self;
    v16 = v29;
    v17 = messageCopy;
    transactionResult = [v17 transactionResult];
    roomUUID = [v16 roomUUID];

    if (roomUUID)
    {
      v20 = objc_alloc(MEMORY[0x277CCAD78]);
      roomUUID2 = [v16 roomUUID];
      v22 = [v20 initWithUUIDString:roomUUID2];

      if (v22 && -[HMDAccessory _updateRoom:source:](selfCopy, "_updateRoom:source:", v22, [transactionResult source]))
      {
        [transactionResult markChanged];
        [transactionResult markSaveToAssistant];
      }
    }

    identifier = [v16 identifier];
    if (identifier)
    {
      identifier2 = [(HMDAccessory *)selfCopy identifier];
      identifier3 = [v16 identifier];
      v26 = [identifier2 isEqual:identifier3];

      if ((v26 & 1) == 0)
      {
        identifier4 = [v16 identifier];
        [(HMDAccessory *)selfCopy setIdentifier:identifier4];

        [transactionResult markChanged];
        [transactionResult markSaveToAssistant];
      }
    }

    [v17 respondWithPayload:0];

    if (responseHandler)
    {
      responseHandler[2](responseHandler, v35[5], 0);
    }

    _Block_object_dispose(&v34, 8);
    updatedCopy = v28;
    v13 = v29;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = HMDMediaAccessory;
    [(HMDAccessory *)&v31 transactionObjectUpdated:updatedCopy newValues:v11 message:messageCopy];
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

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  v5 = [HMDMediaAccessoryModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v9;
}

- (int64_t)reachableTransports
{
  v7.receiver = self;
  v7.super_class = HMDMediaAccessory;
  reachableTransports = [(HMDAccessory *)&v7 reachableTransports];
  if ([(HMDAccessory *)self isReachable])
  {
    reachableTransports |= 0x10uLL;
  }

  home = [(HMDAccessory *)self home];
  isResidentSupported = [home isResidentSupported];

  if (isResidentSupported && [(HMDAccessory *)self isRemotelyReachable])
  {
    return reachableTransports | 8;
  }

  return reachableTransports;
}

- (void)setRemotelyReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  os_unfair_recursive_lock_lock_with_options();
  remotelyReachable = self->super._remotelyReachable;
  if (remotelyReachable == reachableCopy)
  {

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v6 = (remotelyReachable & 1) != 0 || self->super._reachable;
    self->super._remotelyReachable = reachableCopy;
    v7 = self->super._reachable | reachableCopy;
    os_unfair_recursive_lock_unlock();
    if (v6 != v7)
    {

      [(HMDMediaAccessory *)self notifyConnectivityChangedWithReachabilityState:v7];
    }
  }
}

- (void)notifyConnectivityChangedWithReachabilityState:(BOOL)state
{
  workQueue = [(HMDAccessory *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HMDMediaAccessory_notifyConnectivityChangedWithReachabilityState___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  stateCopy = state;
  dispatch_async(workQueue, v6);
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying clients of updated media accessory reachability: %@", &v13, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring non-remote reachability change while remote access is enabled", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedAdvertisement:(id)advertisement
{
  v14 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = advertisementCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updated with advertisement: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  os_unfair_recursive_lock_lock_with_options();
  advertisement = self->_advertisement;
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    objc_storeStrong(&self->_advertisement, advertisement);
    os_unfair_recursive_lock_unlock();
    [(HMDMediaAccessory *)self handleUpdatedAdvertisement:advertisementCopy];
  }
}

- (HMDMediaAccessoryAdvertisement)advertisement
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_advertisement;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)handleRoomChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    uuid = [v6 uuid];
    uuid2 = [(HMDAccessory *)self uuid];
    v9 = [uuid isEqual:uuid2];

    if (v9)
    {
      getConfiguredName = [(HMDAccessory *)self getConfiguredName];

      if (!getConfiguredName)
      {
        userInfo = [changedCopy userInfo];
        v12 = [userInfo hmf_stringForKey:@"kRoomOldNameKey"];

        name = [(HMDMediaAccessory *)self name];
        v14 = HMFEqualObjects();

        if ((v14 & 1) == 0)
        {
          [(HMDAccessory *)self notifyAccessoryNameChanged:1];
        }
      }
    }
  }
}

- (void)handleRoomNameChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    room = [(HMDAccessory *)self room];
    v8 = HMFEqualObjects();

    if (v8)
    {
      getConfiguredName = [(HMDAccessory *)self getConfiguredName];

      if (!getConfiguredName)
      {
        userInfo = [changedCopy userInfo];
        v11 = [userInfo hmf_stringForKey:@"kRoomOldNameKey"];

        name = [(HMDMediaAccessory *)self name];
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
  configuredName = [(HMDAccessory *)self configuredName];
  room = [(HMDAccessory *)self room];
  v5 = room;
  if (!configuredName)
  {
    name = [room name];
    if (name)
    {
      configuredName = name;
    }

    else
    {
      configuredName = @"Media Accessory";
    }
  }

  return configuredName;
}

- (void)removeAdvertisement:(id)advertisement
{
  v24 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v19.receiver = self;
  v19.super_class = HMDMediaAccessory;
  [(HMDAccessory *)&v19 removeAdvertisement:advertisementCopy];
  v5 = advertisementCopy;
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
    mediaProfile = [(HMDMediaAccessory *)self mediaProfile];
    [mediaProfile setMediaSession:0];

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      identifier = [(HMDAccessory *)selfCopy identifier];
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = identifier;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Remove advertisement for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDAccessory *)selfCopy setReachable:0];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid removed advertisement: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addAdvertisement:(id)advertisement
{
  v18 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v13.receiver = self;
  v13.super_class = HMDMediaAccessory;
  [(HMDAccessory *)&v13 addAdvertisement:advertisementCopy];
  v5 = advertisementCopy;
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
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid added advertisement: %@", buf, 0x16u);
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

- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)clients
{
  clientsCopy = clients;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HMDMediaAccessory;
    v5 = [(HMDAccessory *)&v7 _shouldFilterAccessoryProfileForUnentitledClients:clientsCopy];
  }

  return v5;
}

- (void)unconfigure
{
  notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDMediaAccessory;
  [(HMDAccessory *)&v4 unconfigure];
}

- (void)_registerForNotifications
{
  notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleRoomChanged_ name:@"HMDNotificationAccessoryChangedRoom" object:self];

  notificationCenter2 = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleRoomNameChanged_ name:@"HMDRoomNameUpdatedNotification" object:0];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = defaultCenter;
  }

  return v2;
}

- (HMDMediaAccessory)initWithTransaction:(id)transaction home:(id)home
{
  v28 = *MEMORY[0x277D85DE8];
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

  if (!v10)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v21;
      v22 = "%{public}@Cannot initialize a media accessory without an media model.";
LABEL_13:
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    }

LABEL_14:

    objc_autoreleasePoolPop(v19);
    v18 = 0;
    goto LABEL_15;
  }

  identifier = [v10 identifier];

  if (!identifier)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  v12 = [(HMDAccessory *)&v25 initWithTransaction:v8 home:homeCopy];
  if (v12)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v12->_notificationCenter;
    v12->_notificationCenter = defaultCenter;

    _createMediaProfile = [(HMDMediaAccessory *)v12 _createMediaProfile];
    mediaProfile = v12->_mediaProfile;
    v12->_mediaProfile = _createMediaProfile;

    [(NSMutableSet *)v12->super._accessoryProfiles addObject:v12->_mediaProfile];
  }

  selfCopy2 = v12;
  v18 = selfCopy2;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HMDMediaAccessory;
  v5 = objc_msgSendSuper2(&v7, sel_messageBindingForDispatcher_message_receiver_, dispatcher, message, receiver);

  return v5;
}

- (NSDictionary)assistantObject
{
  v29 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = HMDMediaAccessory;
  assistantObject = [(HMDAccessory *)&v22 assistantObject];
  v4 = [assistantObject mutableCopy];

  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v7 = [categoryType isEqual:*MEMORY[0x277CCE860]];

  if (v7)
  {
    v8 = MEMORY[0x277D48258];
    goto LABEL_5;
  }

  categoryType2 = [category categoryType];
  v10 = [categoryType2 isEqual:*MEMORY[0x277CCE900]];

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
      v28 = category;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Media accessory with invalid accessory category: %@", buf, 0x16u);
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
  urlString = [(HMDAccessory *)&v4 urlString];

  return urlString;
}

@end