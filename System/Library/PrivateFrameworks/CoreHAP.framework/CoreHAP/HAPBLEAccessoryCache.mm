@interface HAPBLEAccessoryCache
+ (int64_t)currentDiscoveryVersion;
- (BOOL)isEqual:(id)equal;
- (HAPBLEAccessoryCache)initWithCoder:(id)coder;
- (HAPBLEAccessoryCache)initWithPairingIdentifier:(id)identifier;
- (id)description;
- (id)getCachedServiceWithUUID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)save;
- (void)setLastKeyBagIdentityIndexFailingPV:(id)v;
- (void)updateCurrentPairingIdentityIndexIfNeededForKeyBag:(id)bag;
- (void)updateWithPeripheralInfo:(id)info;
- (void)updateWithService:(id)service;
@end

@implementation HAPBLEAccessoryCache

- (id)description
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  v5 = [v3 stringWithFormat:@"\n\nList of Services: %tu\n", objc_msgSend(cachedServices, "count")];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  cachedServices2 = [(HAPBLEAccessoryCache *)self cachedServices];
  v7 = [cachedServices2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(cachedServices2);
        }

        v5 = [v11 stringByAppendingFormat:@"%@", *(*(&v17 + 1) + 8 * v10)];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [cachedServices2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x277CCACA8];
  peripheralInfo = [(HAPBLEAccessoryCache *)self peripheralInfo];
  v14 = [v12 stringWithFormat:@"%@ %@", peripheralInfo, v5];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)updateCurrentPairingIdentityIndexIfNeededForKeyBag:(id)bag
{
  v23 = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  lastKeyBagIdentityIndexFailingPV = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];

  if (lastKeyBagIdentityIndexFailingPV)
  {
    lastKeyBagIdentityIndexFailingPV2 = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];
    longLongValue = [lastKeyBagIdentityIndexFailingPV2 longLongValue];

    if ([bagCopy isValidIndex:longLongValue + 1])
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:longLongValue + 1];
        pairingIdentifier = [(HAPBLEAccessoryCache *)selfCopy pairingIdentifier];
        v17 = 138543874;
        v18 = v11;
        v19 = 2114;
        v20 = v12;
        v21 = 2114;
        v22 = pairingIdentifier;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating keybag identity index to %{public}@ for %{public}@.", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      getCurrentIndexInBag = [bagCopy getCurrentIndexInBag];
      [bagCopy setCurrentIndexInBag:longLongValue + 1];
      currentIdentity = [bagCopy currentIdentity];

      if (!currentIdentity)
      {
        [bagCopy setCurrentIndexInBag:getCurrentIndexInBag];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setLastKeyBagIdentityIndexFailingPV:(id)v
{
  vCopy = v;
  lastKeyBagIdentityIndexFailingPV = self->_lastKeyBagIdentityIndexFailingPV;
  v7 = vCopy;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_lastKeyBagIdentityIndexFailingPV, v);
    [(HAPBLEAccessoryCache *)self save];
  }
}

- (void)save
{
  saveBlock = [(HAPBLEAccessoryCache *)self saveBlock];
  if (saveBlock)
  {
    v3 = saveBlock;
    saveBlock[2]();
    saveBlock = v3;
  }
}

- (void)updateWithService:(id)service
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [cachedServices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(cachedServices);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEqual:serviceCopy])
        {
          [v10 updateWithService:serviceCopy];
          goto LABEL_11;
        }
      }

      v7 = [cachedServices countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  [cachedServices addObject:serviceCopy];
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)getCachedServiceWithUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [cachedServices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(cachedServices);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        serviceUUID = [v9 serviceUUID];
        v11 = [serviceUUID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [cachedServices countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HAPBLEAccessoryCache)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HAPBLEAccessoryCache;
  v5 = [(HAPBLEAccessoryCache *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MV"];
    metadataVersion = v5->_metadataVersion;
    v5->_metadataVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PI"];
    pairingIdentifier = v5->_pairingIdentifier;
    v5->_pairingIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PIN"];
    peripheralInfo = v5->_peripheralInfo;
    v5->_peripheralInfo = v10;

    v12 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"CS"];
    cachedServices = v5->_cachedServices;
    v5->_cachedServices = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PVX"];
    lastKeyBagIdentityIndexFailingPV = v5->_lastKeyBagIdentityIndexFailingPV;
    v5->_lastKeyBagIdentityIndexFailingPV = v17;

    v5->_discoveryVersion = [coderCopy decodeIntegerForKey:@"DV"];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pairingIdentifier = [(HAPBLEAccessoryCache *)self pairingIdentifier];
  [coderCopy encodeObject:pairingIdentifier forKey:@"PI"];

  peripheralInfo = [(HAPBLEAccessoryCache *)self peripheralInfo];
  [coderCopy encodeObject:peripheralInfo forKey:@"PIN"];

  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  [coderCopy encodeObject:cachedServices forKey:@"CS"];

  metadataVersion = [(HAPBLEAccessoryCache *)self metadataVersion];
  [coderCopy encodeObject:metadataVersion forKey:@"MV"];

  lastKeyBagIdentityIndexFailingPV = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];
  [coderCopy encodeObject:lastKeyBagIdentityIndexFailingPV forKey:@"PVX"];

  [coderCopy encodeInteger:-[HAPBLEAccessoryCache discoveryVersion](self forKey:{"discoveryVersion"), @"DV"}];
}

- (void)updateWithPeripheralInfo:(id)info
{
  infoCopy = info;
  peripheralInfo = [(HAPBLEAccessoryCache *)self peripheralInfo];
  accessoryName = [peripheralInfo accessoryName];

  [(HAPBLEAccessoryCache *)self setPeripheralInfo:infoCopy];
  peripheralInfo2 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  [peripheralInfo2 updateAccessoryName:accessoryName];
}

- (unint64_t)hash
{
  pairingIdentifier = [(HAPBLEAccessoryCache *)self pairingIdentifier];
  v3 = [pairingIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      pairingIdentifier = [(HAPBLEAccessoryCache *)self pairingIdentifier];
      pairingIdentifier2 = [(HAPBLEAccessoryCache *)v5 pairingIdentifier];

      v8 = [pairingIdentifier isEqual:pairingIdentifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HAPBLEAccessoryCache)initWithPairingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HAPBLEAccessoryCache;
  v6 = [(HAPBLEAccessoryCache *)&v12 init];
  if (v6)
  {
    v7 = HAPGetHAPMetadataVersion();
    metadataVersion = v6->_metadataVersion;
    v6->_metadataVersion = v7;

    objc_storeStrong(&v6->_pairingIdentifier, identifier);
    array = [MEMORY[0x277CBEB18] array];
    cachedServices = v6->_cachedServices;
    v6->_cachedServices = array;
  }

  return v6;
}

+ (int64_t)currentDiscoveryVersion
{
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  return HAPIsHH2Enabled_hh2Enabled;
}

@end