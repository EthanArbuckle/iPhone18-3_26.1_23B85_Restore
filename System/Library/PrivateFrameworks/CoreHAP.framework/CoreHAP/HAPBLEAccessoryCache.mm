@interface HAPBLEAccessoryCache
+ (int64_t)currentDiscoveryVersion;
- (BOOL)isEqual:(id)a3;
- (HAPBLEAccessoryCache)initWithCoder:(id)a3;
- (HAPBLEAccessoryCache)initWithPairingIdentifier:(id)a3;
- (id)description;
- (id)getCachedServiceWithUUID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)save;
- (void)setLastKeyBagIdentityIndexFailingPV:(id)a3;
- (void)updateCurrentPairingIdentityIndexIfNeededForKeyBag:(id)a3;
- (void)updateWithPeripheralInfo:(id)a3;
- (void)updateWithService:(id)a3;
@end

@implementation HAPBLEAccessoryCache

- (id)description
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPBLEAccessoryCache *)self cachedServices];
  v5 = [v3 stringWithFormat:@"\n\nList of Services: %tu\n", objc_msgSend(v4, "count")];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(HAPBLEAccessoryCache *)self cachedServices];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v5 = [v11 stringByAppendingFormat:@"%@", *(*(&v17 + 1) + 8 * v10)];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  v14 = [v12 stringWithFormat:@"%@ %@", v13, v5];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)updateCurrentPairingIdentityIndexIfNeededForKeyBag:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];

  if (v5)
  {
    v6 = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];
    v7 = [v6 longLongValue];

    if ([v4 isValidIndex:v7 + 1])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:v7 + 1];
        v13 = [(HAPBLEAccessoryCache *)v9 pairingIdentifier];
        v17 = 138543874;
        v18 = v11;
        v19 = 2114;
        v20 = v12;
        v21 = 2114;
        v22 = v13;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating keybag identity index to %{public}@ for %{public}@.", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v14 = [v4 getCurrentIndexInBag];
      [v4 setCurrentIndexInBag:v7 + 1];
      v15 = [v4 currentIdentity];

      if (!v15)
      {
        [v4 setCurrentIndexInBag:v14];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setLastKeyBagIdentityIndexFailingPV:(id)a3
{
  v5 = a3;
  lastKeyBagIdentityIndexFailingPV = self->_lastKeyBagIdentityIndexFailingPV;
  v7 = v5;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_lastKeyBagIdentityIndexFailingPV, a3);
    [(HAPBLEAccessoryCache *)self save];
  }
}

- (void)save
{
  v2 = [(HAPBLEAccessoryCache *)self saveBlock];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)updateWithService:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEqual:v4])
        {
          [v10 updateWithService:v4];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(HAPBLEAccessoryCache *)self cachedServices];
  [v5 addObject:v4];
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)getCachedServiceWithUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 serviceUUID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (HAPBLEAccessoryCache)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HAPBLEAccessoryCache;
  v5 = [(HAPBLEAccessoryCache *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MV"];
    metadataVersion = v5->_metadataVersion;
    v5->_metadataVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PI"];
    pairingIdentifier = v5->_pairingIdentifier;
    v5->_pairingIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PIN"];
    peripheralInfo = v5->_peripheralInfo;
    v5->_peripheralInfo = v10;

    v12 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"CS"];
    cachedServices = v5->_cachedServices;
    v5->_cachedServices = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PVX"];
    lastKeyBagIdentityIndexFailingPV = v5->_lastKeyBagIdentityIndexFailingPV;
    v5->_lastKeyBagIdentityIndexFailingPV = v17;

    v5->_discoveryVersion = [v4 decodeIntegerForKey:@"DV"];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(HAPBLEAccessoryCache *)self pairingIdentifier];
  [v9 encodeObject:v4 forKey:@"PI"];

  v5 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  [v9 encodeObject:v5 forKey:@"PIN"];

  v6 = [(HAPBLEAccessoryCache *)self cachedServices];
  [v9 encodeObject:v6 forKey:@"CS"];

  v7 = [(HAPBLEAccessoryCache *)self metadataVersion];
  [v9 encodeObject:v7 forKey:@"MV"];

  v8 = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];
  [v9 encodeObject:v8 forKey:@"PVX"];

  [v9 encodeInteger:-[HAPBLEAccessoryCache discoveryVersion](self forKey:{"discoveryVersion"), @"DV"}];
}

- (void)updateWithPeripheralInfo:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  v7 = [v5 accessoryName];

  [(HAPBLEAccessoryCache *)self setPeripheralInfo:v4];
  v6 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  [v6 updateAccessoryName:v7];
}

- (unint64_t)hash
{
  v2 = [(HAPBLEAccessoryCache *)self pairingIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPBLEAccessoryCache *)self pairingIdentifier];
      v7 = [(HAPBLEAccessoryCache *)v5 pairingIdentifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HAPBLEAccessoryCache)initWithPairingIdentifier:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HAPBLEAccessoryCache;
  v6 = [(HAPBLEAccessoryCache *)&v12 init];
  if (v6)
  {
    v7 = HAPGetHAPMetadataVersion();
    metadataVersion = v6->_metadataVersion;
    v6->_metadataVersion = v7;

    objc_storeStrong(&v6->_pairingIdentifier, a3);
    v9 = [MEMORY[0x277CBEB18] array];
    cachedServices = v6->_cachedServices;
    v6->_cachedServices = v9;
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