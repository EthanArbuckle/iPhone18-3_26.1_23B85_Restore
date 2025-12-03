@interface HMDCapabilitiesController
+ (id)logCategory;
- (BOOL)areCurrentAccessoryCapabilitiesPresentAndDifferent:(id)different;
- (BOOL)areCurrentResidentCapabilitiesPresentAndDifferent:(id)different;
- (HMAccessoryCapabilities)currentAccessoryCapabilitiesInternal;
- (HMDCapabilitiesController)initWithQueue:(id)queue dataSource:(id)source;
- (HMResidentCapabilities)currentResidentCapabilitiesInternal;
- (id)_lastCachedAccessoryCapabilities;
- (id)_lastCachedResidentCapabilities;
- (id)_metadataForEvent;
- (id)accessoryUUID;
- (id)encodedCurrentAccessoryCapabilities;
- (id)encodedCurrentResidentCapabilities;
- (id)homeUUID;
- (id)logIdentifier;
- (void)_postCurrentAccessoryCapabilitiesEventIfNeeded:(uint64_t)needed;
- (void)_postCurrentResidentCapabilitiesEventIfNeeded:(uint64_t)needed;
- (void)currentAccessoryDidBecomeAvailable;
- (void)didRemoveCurrentAccessory:(id)accessory;
- (void)setAccessoryUUID:(uint64_t)d;
- (void)setCurrentAccessoryCapabilitiesInternal:(id)internal;
- (void)setCurrentResidentCapabilitiesInternal:(id)internal;
- (void)setHomeUUID:(uint64_t)d;
- (void)updateCurrentAccessoryCapabilities;
@end

@implementation HMDCapabilitiesController

- (BOOL)areCurrentResidentCapabilitiesPresentAndDifferent:(id)different
{
  differentCopy = different;
  _lastCachedResidentCapabilities = [(HMDCapabilitiesController *)self _lastCachedResidentCapabilities];
  v6 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:differentCopy];

  if (_lastCachedResidentCapabilities)
  {
    v7 = [_lastCachedResidentCapabilities isLocalEqual:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_lastCachedResidentCapabilities
{
  if (self)
  {
    v2 = MEMORY[0x277CD16F0];
    v3 = *MEMORY[0x277CCEA88];
    homeUUID = [(HMDCapabilitiesController *)self homeUUID];
    accessoryUUID = [(HMDCapabilitiesController *)self accessoryUUID];
    v6 = [v2 topicFromSuffixID:v3 homeUUID:homeUUID accessoryUUID:accessoryUUID];

    WeakRetained = objc_loadWeakRetained((self + 56));
    eventStoreReadHandle = [WeakRetained eventStoreReadHandle];
    v9 = [eventStoreReadHandle lastEventForTopic:v6];

    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x277CD1D60]);
      encodedData = [v9 encodedData];
      v12 = [v10 initWithProtoData:encodedData];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)homeUUID
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 16);
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessoryUUID
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 24);
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)areCurrentAccessoryCapabilitiesPresentAndDifferent:(id)different
{
  differentCopy = different;
  _lastCachedAccessoryCapabilities = [(HMDCapabilitiesController *)self _lastCachedAccessoryCapabilities];
  v6 = [objc_alloc(MEMORY[0x277CD1678]) initWithProtoData:differentCopy];

  if (_lastCachedAccessoryCapabilities)
  {
    v7 = [_lastCachedAccessoryCapabilities isLocalEqual:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_lastCachedAccessoryCapabilities
{
  if (self)
  {
    v2 = MEMORY[0x277CD16F0];
    v3 = *MEMORY[0x277CCEA50];
    homeUUID = [(HMDCapabilitiesController *)self homeUUID];
    accessoryUUID = [(HMDCapabilitiesController *)self accessoryUUID];
    v6 = [v2 topicFromSuffixID:v3 homeUUID:homeUUID accessoryUUID:accessoryUUID];

    WeakRetained = objc_loadWeakRetained((self + 56));
    eventStoreReadHandle = [WeakRetained eventStoreReadHandle];
    v9 = [eventStoreReadHandle lastEventForTopic:v6];

    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x277CD1678]);
      encodedData = [v9 encodedData];
      v12 = [v10 initWithProtoData:encodedData];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)didRemoveCurrentAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDCapabilitiesController_didRemoveCurrentAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(queue, v7);
}

void __55__HMDCapabilitiesController_didRemoveCurrentAccessory___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [(HMDCapabilitiesController *)*(a1 + 32) accessoryUUID];
  v3 = [v2 hmf_isEqualToUUID:*(a1 + 40)];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Reset accessory on removal", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDCapabilitiesController *)*(a1 + 32) setAccessoryUUID:?];
    [(HMDCapabilitiesController *)*(a1 + 32) setHomeUUID:?];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryUUID:(uint64_t)d
{
  v5 = a2;
  if (d)
  {
    os_unfair_lock_lock_with_options();
    v3 = [v5 copy];
    v4 = *(d + 24);
    *(d + 24) = v3;

    os_unfair_lock_unlock((d + 8));
  }
}

- (void)setHomeUUID:(uint64_t)d
{
  v5 = a2;
  if (d)
  {
    os_unfair_lock_lock_with_options();
    v3 = [v5 copy];
    v4 = *(d + 16);
    *(d + 16) = v3;

    os_unfair_lock_unlock((d + 8));
  }
}

- (void)currentAccessoryDidBecomeAvailable
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDCapabilitiesController_currentAccessoryDidBecomeAvailable__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__HMDCapabilitiesController_currentAccessoryDidBecomeAvailable__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v36 = 138543362;
    v37 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Current accessory available", &v36, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 56));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = [WeakRetained currentAccessoryHomeUUID];
      if (v9)
      {
        v10 = v9;
        v11 = [v8 currentAccessoryUUID];

        if (v11)
        {
          v12 = [(HMDCapabilitiesController *)*(a1 + 32) homeUUID];
          v13 = [v8 currentAccessoryHomeUUID];
          if ([v12 hmf_isEqualToUUID:v13])
          {
            v14 = [(HMDCapabilitiesController *)*(a1 + 32) accessoryUUID];
            v15 = [v8 currentAccessoryUUID];
            v16 = [v14 hmf_isEqualToUUID:v15];

            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }

          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = HMFGetLogIdentifier();
            v36 = 138543362;
            v37 = v20;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Current accessory became available and is different", &v36, 0xCu);
          }

          objc_autoreleasePoolPop(v17);
          v21 = [v8 currentAccessoryHomeUUID];
          [(HMDCapabilitiesController *)*(a1 + 32) setHomeUUID:v21];

          v22 = [v8 currentAccessoryUUID];
          [(HMDCapabilitiesController *)*(a1 + 32) setAccessoryUUID:v22];

          v23 = [(HMDCapabilitiesController *)*(a1 + 32) _lastCachedAccessoryCapabilities];
          if (v23)
          {
            v24 = [*(a1 + 32) currentAccessoryCapabilitiesInternal];
            v25 = [v23 isLocalEqual:v24];

            if (v25)
            {
              [*(a1 + 32) setCurrentAccessoryCapabilitiesInternal:v23];
            }
          }

          v26 = [*(a1 + 32) currentAccessoryCapabilitiesInternal];

          if (v26)
          {
            v27 = *(a1 + 32);
            v28 = [v27 currentAccessoryCapabilitiesInternal];
            [(HMDCapabilitiesController *)v27 _postCurrentAccessoryCapabilitiesEventIfNeeded:v28];
          }

          v29 = [(HMDCapabilitiesController *)*(a1 + 32) _lastCachedResidentCapabilities];
          if (v29)
          {
            v30 = [*(a1 + 32) currentResidentCapabilitiesInternal];
            v31 = [v29 isLocalEqual:v30];

            if (v31)
            {
              [*(a1 + 32) setCurrentResidentCapabilitiesInternal:v29];
            }
          }

          v32 = [*(a1 + 32) currentResidentCapabilitiesInternal];

          if (v32)
          {
            v33 = *(a1 + 32);
            v34 = [v33 currentResidentCapabilitiesInternal];
            [(HMDCapabilitiesController *)v33 _postCurrentResidentCapabilitiesEventIfNeeded:v34];
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_24:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_postCurrentAccessoryCapabilitiesEventIfNeeded:(uint64_t)needed
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (needed)
  {
    dispatch_assert_queue_V2(*(needed + 48));
    WeakRetained = objc_loadWeakRetained((needed + 56));
    if (WeakRetained)
    {
      homeUUID = [(HMDCapabilitiesController *)needed homeUUID];
      if (homeUUID)
      {
        v6 = homeUUID;
        accessoryUUID = [(HMDCapabilitiesController *)needed accessoryUUID];

        if (accessoryUUID)
        {
          v8 = MEMORY[0x277CD16F0];
          v9 = *MEMORY[0x277CCEA50];
          homeUUID2 = [(HMDCapabilitiesController *)needed homeUUID];
          accessoryUUID2 = [(HMDCapabilitiesController *)needed accessoryUUID];
          v12 = [v8 topicFromSuffixID:v9 homeUUID:homeUUID2 accessoryUUID:accessoryUUID2];

          _lastCachedAccessoryCapabilities = [(HMDCapabilitiesController *)needed _lastCachedAccessoryCapabilities];
          v14 = [v3 isLocalEqual:_lastCachedAccessoryCapabilities];
          v15 = objc_autoreleasePoolPush();
          neededCopy = needed;
          v17 = HMFGetOSLogHandle();
          v18 = v17;
          if (v14)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543618;
              v30 = v19;
              v31 = 2112;
              v32 = v3;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Accessory capabilities are the same not posting: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v15);
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v20 = HMFGetLogIdentifier();
              *buf = 138543618;
              v30 = v20;
              v31 = 2112;
              v32 = v3;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Posting event as current accessory capabilities are different: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v15);
            v21 = objc_alloc(MEMORY[0x277D174A0]);
            pbCapabilities = [v3 pbCapabilities];
            data = [pbCapabilities data];
            _metadataForEvent = [(HMDCapabilitiesController *)neededCopy _metadataForEvent];
            v25 = [v21 initWithEventData:data metadata:_metadataForEvent];

            eventForwarder = [WeakRetained eventForwarder];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __76__HMDCapabilitiesController__postCurrentAccessoryCapabilitiesEventIfNeeded___block_invoke;
            v28[3] = &unk_27868A250;
            v28[4] = neededCopy;
            [eventForwarder forwardEvent:v25 topic:v12 completion:v28];
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_postCurrentResidentCapabilitiesEventIfNeeded:(uint64_t)needed
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (needed)
  {
    dispatch_assert_queue_V2(*(needed + 48));
    WeakRetained = objc_loadWeakRetained((needed + 56));
    if (WeakRetained)
    {
      homeUUID = [(HMDCapabilitiesController *)needed homeUUID];
      if (homeUUID)
      {
        v6 = homeUUID;
        accessoryUUID = [(HMDCapabilitiesController *)needed accessoryUUID];

        if (accessoryUUID)
        {
          v8 = MEMORY[0x277CD16F0];
          v9 = *MEMORY[0x277CCEA88];
          homeUUID2 = [(HMDCapabilitiesController *)needed homeUUID];
          accessoryUUID2 = [(HMDCapabilitiesController *)needed accessoryUUID];
          v12 = [v8 topicFromSuffixID:v9 homeUUID:homeUUID2 accessoryUUID:accessoryUUID2];

          _lastCachedResidentCapabilities = [(HMDCapabilitiesController *)needed _lastCachedResidentCapabilities];
          if ([v3 isLocalEqual:_lastCachedResidentCapabilities])
          {
            if (v3)
            {
              v14 = objc_autoreleasePoolPush();
              neededCopy = needed;
              v16 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                v17 = HMFGetLogIdentifier();
                *buf = 138543618;
                v31 = v17;
                v32 = 2112;
                v33 = v3;
                _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Resident capabilities are the same not posting: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v14);
            }
          }

          else
          {
            v18 = objc_autoreleasePoolPush();
            neededCopy2 = needed;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543618;
              v31 = v21;
              v32 = 2112;
              v33 = v3;
              _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Posting event as current resident capabilities are different: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v18);
            v22 = objc_alloc(MEMORY[0x277D174A0]);
            pbCapabilities = [v3 pbCapabilities];
            data = [pbCapabilities data];
            _metadataForEvent = [(HMDCapabilitiesController *)neededCopy2 _metadataForEvent];
            v26 = [v22 initWithEventData:data metadata:_metadataForEvent];

            eventForwarder = [WeakRetained eventForwarder];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __75__HMDCapabilitiesController__postCurrentResidentCapabilitiesEventIfNeeded___block_invoke;
            v29[3] = &unk_27868A250;
            v29[4] = neededCopy2;
            [eventForwarder forwardEvent:v26 topic:v12 completion:v29];
          }
        }
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_metadataForEvent
{
  v2 = objc_alloc(MEMORY[0x277D174B0]);
  accessoryUUID = [(HMDCapabilitiesController *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = [v2 initWithSource:uUIDString cachePolicy:2 combineType:2 timestamp:?];

  return v5;
}

void __75__HMDCapabilitiesController__postCurrentResidentCapabilitiesEventIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Posted event for current resident capabilities error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __76__HMDCapabilitiesController__postCurrentAccessoryCapabilitiesEventIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Posted event for current accessory capabilities error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)encodedCurrentResidentCapabilities
{
  currentResidentCapabilitiesInternal = [(HMDCapabilitiesController *)self currentResidentCapabilitiesInternal];
  pbCapabilities = [currentResidentCapabilitiesInternal pbCapabilities];
  data = [pbCapabilities data];

  return data;
}

- (id)encodedCurrentAccessoryCapabilities
{
  currentAccessoryCapabilitiesInternal = [(HMDCapabilitiesController *)self currentAccessoryCapabilitiesInternal];
  pbCapabilities = [currentAccessoryCapabilitiesInternal pbCapabilities];
  data = [pbCapabilities data];

  return data;
}

- (void)setCurrentResidentCapabilitiesInternal:(id)internal
{
  internalCopy = internal;
  os_unfair_lock_lock_with_options();
  currentResidentCapabilitiesInternal = self->_currentResidentCapabilitiesInternal;
  self->_currentResidentCapabilitiesInternal = internalCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMResidentCapabilities)currentResidentCapabilitiesInternal
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentResidentCapabilitiesInternal;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCurrentAccessoryCapabilitiesInternal:(id)internal
{
  internalCopy = internal;
  os_unfair_lock_lock_with_options();
  currentAccessoryCapabilitiesInternal = self->_currentAccessoryCapabilitiesInternal;
  self->_currentAccessoryCapabilitiesInternal = internalCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessoryCapabilities)currentAccessoryCapabilitiesInternal
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentAccessoryCapabilitiesInternal;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateCurrentAccessoryCapabilities
{
  v30 = *MEMORY[0x277D85DE8];
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_dataSource)) != 0)
  {
    v4 = WeakRetained;
    createCurrentAccessoryCapabilities = [WeakRetained createCurrentAccessoryCapabilities];
    _lastCachedAccessoryCapabilities = [(HMDCapabilitiesController *)self _lastCachedAccessoryCapabilities];
    v7 = _lastCachedAccessoryCapabilities;
    if (_lastCachedAccessoryCapabilities && [_lastCachedAccessoryCapabilities isLocalEqual:createCurrentAccessoryCapabilities])
    {
      v8 = v7;

      createCurrentAccessoryCapabilities = v8;
    }

    objc_storeStrong(&self->_currentAccessoryCapabilitiesInternal, createCurrentAccessoryCapabilities);
    createCurrentResidentCapabilities = [v4 createCurrentResidentCapabilities];
    _lastCachedResidentCapabilities = [(HMDCapabilitiesController *)self _lastCachedResidentCapabilities];
    v11 = _lastCachedResidentCapabilities;
    if (_lastCachedResidentCapabilities && [_lastCachedResidentCapabilities isLocalEqual:createCurrentResidentCapabilities])
    {
      v12 = v11;

      createCurrentResidentCapabilities = v12;
    }

    objc_storeStrong(&self->_currentResidentCapabilitiesInternal, createCurrentResidentCapabilities);
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Finished loading current capabilities", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    queue = selfCopy->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDCapabilitiesController_updateCurrentAccessoryCapabilities__block_invoke;
    block[3] = &unk_27868A010;
    block[4] = selfCopy;
    v26 = createCurrentAccessoryCapabilities;
    v27 = createCurrentResidentCapabilities;
    v18 = createCurrentResidentCapabilities;
    v19 = createCurrentAccessoryCapabilities;
    dispatch_async(queue, block);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil dataSource", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __63__HMDCapabilitiesController_updateCurrentAccessoryCapabilities__block_invoke(uint64_t a1)
{
  [(HMDCapabilitiesController *)*(a1 + 32) _postCurrentAccessoryCapabilitiesEventIfNeeded:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  [(HMDCapabilitiesController *)v2 _postCurrentResidentCapabilitiesEventIfNeeded:v3];
}

- (HMDCapabilitiesController)initWithQueue:(id)queue dataSource:(id)source
{
  queueCopy = queue;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = HMDCapabilitiesController;
  v9 = [(HMDCapabilitiesController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_queue, queue);
    objc_storeWeak(&v10->_dataSource, sourceCopy);
    currentAccessoryHomeUUID = [sourceCopy currentAccessoryHomeUUID];
    homeUUID = v10->_homeUUID;
    v10->_homeUUID = currentAccessoryHomeUUID;

    currentAccessoryUUID = [sourceCopy currentAccessoryUUID];
    accessoryUUID = v10->_accessoryUUID;
    v10->_accessoryUUID = currentAccessoryUUID;
  }

  [(HMDCapabilitiesController *)v10 updateCurrentAccessoryCapabilities];

  return v10;
}

- (id)logIdentifier
{
  accessoryUUID = [(HMDCapabilitiesController *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];

  return uUIDString;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_67857 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_67857, &__block_literal_global_67858);
  }

  v3 = logCategory__hmf_once_v1_67859;

  return v3;
}

void __40__HMDCapabilitiesController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_67859;
  logCategory__hmf_once_v1_67859 = v1;
}

@end