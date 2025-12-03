@interface HMFConnectivityInfo
+ (HMFConnectivityInfo)connectivityInfoWithAccessoryIdentifier:(id)identifier wakeConfiguration:(id)configuration;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMFConnectivityInfo)initWithAccessoryIdentifier:(id)identifier woBLEInfo:(id)info woWLANInfos:(id)infos;
- (HMFConnectivityInfo)initWithCoder:(id)coder;
- (HMFWoWLANInfo)woWLANInfo;
- (id)description;
- (unint64_t)hash;
- (unsigned)woWLANVersion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFConnectivityInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accessoryIdentifier = [(HMFConnectivityInfo *)self accessoryIdentifier];
  woBLEInfo = [(HMFConnectivityInfo *)self woBLEInfo];
  woWLANInfos = [(HMFConnectivityInfo *)self woWLANInfos];
  v7 = [v3 stringWithFormat:@"Identifier: %@ BLEInfo: %@, WLANInfos: %@", accessoryIdentifier, woBLEInfo, woWLANInfos];

  return v7;
}

- (unsigned)woWLANVersion
{
  woWLANInfos = [(HMFConnectivityInfo *)self woWLANInfos];
  firstObject = [woWLANInfos firstObject];

  if (firstObject)
  {
    woWLANVersion = [firstObject woWLANVersion];
  }

  else
  {
    woWLANVersion = 0;
  }

  return woWLANVersion;
}

- (HMFConnectivityInfo)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.ID"];
  v6 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HMFCI.woBLE"];

  v10 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"HMFCI.woWLAN"];

  v14 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v16 = [v14 setWithArray:v15];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"HMFCI.All.woWLAN"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryIdentifier = [(HMFConnectivityInfo *)self accessoryIdentifier];
  [coderCopy encodeObject:accessoryIdentifier forKey:@"HMFCI.ID"];

  woBLEInfo = [(HMFConnectivityInfo *)self woBLEInfo];

  if (woBLEInfo)
  {
    woBLEInfo2 = [(HMFConnectivityInfo *)self woBLEInfo];
    [coderCopy encodeObject:woBLEInfo2 forKey:@"HMFCI.woBLE"];
  }

  woWLANInfo = [(HMFConnectivityInfo *)self woWLANInfo];

  if (woWLANInfo)
  {
    woWLANInfo2 = [(HMFConnectivityInfo *)self woWLANInfo];
    [coderCopy encodeObject:woWLANInfo2 forKey:@"HMFCI.woWLAN"];
  }

  woWLANInfos = [(HMFConnectivityInfo *)self woWLANInfos];

  v10 = coderCopy;
  if (woWLANInfos)
  {
    woWLANInfos2 = [(HMFConnectivityInfo *)self woWLANInfos];
    [coderCopy encodeObject:woWLANInfos2 forKey:@"HMFCI.All.woWLAN"];

    v10 = coderCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

    accessoryIdentifier = [(HMFConnectivityInfo *)self accessoryIdentifier];
    accessoryIdentifier2 = [(HMFConnectivityInfo *)v6 accessoryIdentifier];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_9;
    }

    woBLEInfo = [(HMFConnectivityInfo *)self woBLEInfo];
    woBLEInfo2 = [(HMFConnectivityInfo *)v6 woBLEInfo];
    v12 = HMFEqualObjects();

    if (v12)
    {
      woWLANInfos = [(HMFConnectivityInfo *)self woWLANInfos];
      woWLANInfos2 = [(HMFConnectivityInfo *)v6 woWLANInfos];
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
  accessoryIdentifier = [(HMFConnectivityInfo *)self accessoryIdentifier];
  v4 = [accessoryIdentifier hash];
  woBLEInfo = [(HMFConnectivityInfo *)self woBLEInfo];
  v6 = [woBLEInfo hash] ^ v4;
  woWLANInfos = [(HMFConnectivityInfo *)self woWLANInfos];
  v8 = [woWLANInfos hash];

  return v6 ^ v8;
}

- (HMFWoWLANInfo)woWLANInfo
{
  woWLANInfos = [(HMFConnectivityInfo *)self woWLANInfos];
  firstObject = [woWLANInfos firstObject];

  return firstObject;
}

- (HMFConnectivityInfo)initWithAccessoryIdentifier:(id)identifier woBLEInfo:(id)info woWLANInfos:(id)infos
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  infosCopy = infos;
  v12 = infosCopy;
  if (identifierCopy && (infoCopy || [infosCopy count]))
  {
    v34.receiver = self;
    v34.super_class = HMFConnectivityInfo;
    v13 = [(HMFConnectivityInfo *)&v34 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_accessoryIdentifier, identifier);
      objc_storeStrong(&v14->_woBLEInfo, info);
      if (v12)
      {
        array = [MEMORY[0x277CBEB18] array];
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
              if (([array containsObject:{v21, v30}] & 1) == 0)
              {
                [array addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v18);
        }

        v22 = [array copy];
        woWLANInfos = v14->_woWLANInfos;
        v14->_woWLANInfos = v22;
      }
    }

    self = v14;
    selfCopy = self;
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
      v39 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Returning nil for the invalid woBLEInfo and woWLANInfo of accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    selfCopy = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (HMFConnectivityInfo)connectivityInfoWithAccessoryIdentifier:(id)identifier wakeConfiguration:(id)configuration
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  configurationCopy = configuration;
  custom1 = [configurationCopy custom1];
  primaryIdentifier = [custom1 primaryIdentifier];

  if (primaryIdentifier)
  {
    v9 = [HMFWoBLEInfo alloc];
    custom12 = [configurationCopy custom1];
    primaryIdentifier2 = [custom12 primaryIdentifier];
    v12 = [(HMFWoBLEInfo *)v9 initWithBLEIdentifier:primaryIdentifier2];
  }

  else
  {
    v12 = 0;
  }

  custom2 = [configurationCopy custom2];
  primaryIdentifier3 = [custom2 primaryIdentifier];

  if (primaryIdentifier3)
  {
    v15 = [HMFWoWLANInfo alloc];
    custom22 = [configurationCopy custom2];
    primaryIdentifier4 = [custom22 primaryIdentifier];
    custom23 = [configurationCopy custom2];
    secondaryIdentifier = [custom23 secondaryIdentifier];
    v20 = [(HMFWoWLANInfo *)v15 initWithPrimaryIdentifier:primaryIdentifier4 wifiIdentifiers:secondaryIdentifier];

    v21 = [HMFConnectivityInfo alloc];
    if (v20)
    {
      v26[0] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      v23 = [(HMFConnectivityInfo *)v21 initWithAccessoryIdentifier:identifierCopy woBLEInfo:v12 woWLANInfos:v22];

      goto LABEL_9;
    }
  }

  else
  {
    v21 = [HMFConnectivityInfo alloc];
  }

  v23 = [(HMFConnectivityInfo *)v21 initWithAccessoryIdentifier:identifierCopy woBLEInfo:v12 woWLANInfos:0];
LABEL_9:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end