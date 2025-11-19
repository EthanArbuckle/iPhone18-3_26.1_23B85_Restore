@interface HMFConnectivityInfo
+ (HMFConnectivityInfo)connectivityInfoWithAccessoryIdentifier:(id)a3 wakeConfiguration:(id)a4;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMFConnectivityInfo)initWithAccessoryIdentifier:(id)a3 woBLEInfo:(id)a4 woWLANInfos:(id)a5;
- (HMFConnectivityInfo)initWithCoder:(id)a3;
- (HMFWoWLANInfo)woWLANInfo;
- (id)description;
- (unint64_t)hash;
- (unsigned)woWLANVersion;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFConnectivityInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMFConnectivityInfo *)self accessoryIdentifier];
  v5 = [(HMFConnectivityInfo *)self woBLEInfo];
  v6 = [(HMFConnectivityInfo *)self woWLANInfos];
  v7 = [v3 stringWithFormat:@"Identifier: %@ BLEInfo: %@, WLANInfos: %@", v4, v5, v6];

  return v7;
}

- (unsigned)woWLANVersion
{
  v2 = [(HMFConnectivityInfo *)self woWLANInfos];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 woWLANVersion];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HMFConnectivityInfo)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.ID"];
  v6 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HMFCI.woBLE"];

  v10 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"HMFCI.woWLAN"];

  v14 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v16 = [v14 setWithArray:v15];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"HMFCI.All.woWLAN"];

  if (![v17 count] && v13)
  {
    v22 = v13;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

    v17 = v18;
  }

  v19 = [(HMFConnectivityInfo *)self initWithAccessoryIdentifier:v5 woBLEInfo:v9 woWLANInfos:v17];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(HMFConnectivityInfo *)self accessoryIdentifier];
  [v12 encodeObject:v4 forKey:@"HMFCI.ID"];

  v5 = [(HMFConnectivityInfo *)self woBLEInfo];

  if (v5)
  {
    v6 = [(HMFConnectivityInfo *)self woBLEInfo];
    [v12 encodeObject:v6 forKey:@"HMFCI.woBLE"];
  }

  v7 = [(HMFConnectivityInfo *)self woWLANInfo];

  if (v7)
  {
    v8 = [(HMFConnectivityInfo *)self woWLANInfo];
    [v12 encodeObject:v8 forKey:@"HMFCI.woWLAN"];
  }

  v9 = [(HMFConnectivityInfo *)self woWLANInfos];

  v10 = v12;
  if (v9)
  {
    v11 = [(HMFConnectivityInfo *)self woWLANInfos];
    [v12 encodeObject:v11 forKey:@"HMFCI.All.woWLAN"];

    v10 = v12;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
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
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(HMFConnectivityInfo *)self accessoryIdentifier];
    v8 = [(HMFConnectivityInfo *)v6 accessoryIdentifier];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [(HMFConnectivityInfo *)self woBLEInfo];
    v11 = [(HMFConnectivityInfo *)v6 woBLEInfo];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = [(HMFConnectivityInfo *)self woWLANInfos];
      v14 = [(HMFConnectivityInfo *)v6 woWLANInfos];
      v15 = HMFEqualObjects();
    }

    else
    {
LABEL_9:
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(HMFConnectivityInfo *)self accessoryIdentifier];
  v4 = [v3 hash];
  v5 = [(HMFConnectivityInfo *)self woBLEInfo];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMFConnectivityInfo *)self woWLANInfos];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (HMFWoWLANInfo)woWLANInfo
{
  v2 = [(HMFConnectivityInfo *)self woWLANInfos];
  v3 = [v2 firstObject];

  return v3;
}

- (HMFConnectivityInfo)initWithAccessoryIdentifier:(id)a3 woBLEInfo:(id)a4 woWLANInfos:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9 && (v10 || [v11 count]))
  {
    v34.receiver = self;
    v34.super_class = HMFConnectivityInfo;
    v13 = [(HMFConnectivityInfo *)&v34 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_accessoryIdentifier, a3);
      objc_storeStrong(&v14->_woBLEInfo, a4);
      if (v12)
      {
        v15 = [MEMORY[0x277CBEB18] array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = v12;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v30 + 1) + 8 * i);
              if (([v15 containsObject:{v21, v30}] & 1) == 0)
              {
                [v15 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v18);
        }

        v22 = [v15 copy];
        woWLANInfos = v14->_woWLANInfos;
        v14->_woWLANInfos = v22;
      }
    }

    self = v14;
    v24 = self;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v27;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Returning nil for the invalid woBLEInfo and woWLANInfo of accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (HMFConnectivityInfo)connectivityInfoWithAccessoryIdentifier:(id)a3 wakeConfiguration:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 custom1];
  v8 = [v7 primaryIdentifier];

  if (v8)
  {
    v9 = [HMFWoBLEInfo alloc];
    v10 = [v6 custom1];
    v11 = [v10 primaryIdentifier];
    v12 = [(HMFWoBLEInfo *)v9 initWithBLEIdentifier:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 custom2];
  v14 = [v13 primaryIdentifier];

  if (v14)
  {
    v15 = [HMFWoWLANInfo alloc];
    v16 = [v6 custom2];
    v17 = [v16 primaryIdentifier];
    v18 = [v6 custom2];
    v19 = [v18 secondaryIdentifier];
    v20 = [(HMFWoWLANInfo *)v15 initWithPrimaryIdentifier:v17 wifiIdentifiers:v19];

    v21 = [HMFConnectivityInfo alloc];
    if (v20)
    {
      v26[0] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      v23 = [(HMFConnectivityInfo *)v21 initWithAccessoryIdentifier:v5 woBLEInfo:v12 woWLANInfos:v22];

      goto LABEL_9;
    }
  }

  else
  {
    v21 = [HMFConnectivityInfo alloc];
  }

  v23 = [(HMFConnectivityInfo *)v21 initWithAccessoryIdentifier:v5 woBLEInfo:v12 woWLANInfos:0];
LABEL_9:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end