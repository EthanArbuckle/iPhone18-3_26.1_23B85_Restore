@interface HMDResidentDeviceElectionParameters
- (BOOL)isEqual:(id)equal;
- (HMDResidentDeviceElectionParameters)initWithResident:(id)resident dictionaryRepresentation:(id)representation;
- (HMDResidentDeviceElectionParameters)initWithResident:(id)resident enabled:(id)enabled location:(int64_t)location accessories:(id)accessories;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (int64_t)compare:(id)compare outCriteria:(unint64_t *)criteria;
- (unint64_t)hash;
@end

@implementation HMDResidentDeviceElectionParameters

- (id)attributeDescriptions
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  resident = [(HMDResidentDeviceElectionParameters *)self resident];
  shortDescription = [resident shortDescription];
  v20 = [v3 initWithName:@"Resident" value:shortDescription];
  v23[0] = v20;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  version = [(HMDResidentDeviceElectionParameters *)self version];
  versionString = [version versionString];
  v7 = [v4 initWithName:@"Version" value:versionString];
  v23[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  isEnabled = [(HMDResidentDeviceElectionParameters *)self isEnabled];
  v10 = [v8 initWithName:@"Enabled" value:isEnabled];
  v23[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDResidentDeviceElectionParameters *)self location];
  v12 = HMStringFromHomeLocation();
  v13 = [v11 initWithName:@"Location" value:v12];
  v23[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  accessories = [(HMDResidentDeviceElectionParameters *)self accessories];
  v16 = [v14 initWithName:@"Accessories" value:accessories];
  v23[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  if (v6)
  {
    v7 = [(HMDResidentDeviceElectionParameters *)self compare:v6]== 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  resident = [(HMDResidentDeviceElectionParameters *)self resident];
  v3 = [resident hash];

  return v3;
}

- (int64_t)compare:(id)compare outCriteria:(unint64_t *)criteria
{
  v42 = *MEMORY[0x277D85DE8];
  compareCopy = compare;
  if (self != compareCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = compareCopy;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (!v8)
    {
      goto LABEL_35;
    }

    if (criteria)
    {
      *criteria = 1;
    }

    isEnabled = [(HMDResidentDeviceElectionParameters *)self isEnabled];
    isEnabled2 = [(HMDResidentDeviceElectionParameters *)v8 isEnabled];
    if ((HMFEqualObjects() & 1) == 0)
    {
      if (isEnabled && isEnabled2)
      {
LABEL_33:
        v21 = [isEnabled compare:isEnabled2];
LABEL_60:

        goto LABEL_61;
      }

      if ([isEnabled BOOLValue])
      {
        goto LABEL_59;
      }

      if ([isEnabled2 BOOLValue])
      {
LABEL_40:
        v21 = -1;
        goto LABEL_60;
      }
    }

    if (criteria)
    {
      *criteria = 3;
    }

    location = [(HMDResidentDeviceElectionParameters *)self location];
    location2 = [(HMDResidentDeviceElectionParameters *)v8 location];
    if (location == location2)
    {
LABEL_12:
      if (criteria)
      {
        *criteria = 4;
      }

      isEnabled = [(HMDResidentDeviceElectionParameters *)self productInfo];
      isEnabled2 = [(HMDResidentDeviceElectionParameters *)v8 productInfo];
      productClass = [isEnabled productClass];
      if (productClass != [isEnabled2 productClass])
      {
        if ([isEnabled productClass] == 3)
        {
          goto LABEL_40;
        }

        if ([isEnabled2 productClass] == 3)
        {
          goto LABEL_59;
        }
      }

      if (criteria)
      {
        *criteria = 6;
      }

      isEnabled = [(HMDResidentDeviceElectionParameters *)self version];
      isEnabled2 = [(HMDResidentDeviceElectionParameters *)v8 version];
      majorVersion = [isEnabled majorVersion];
      if (majorVersion == [isEnabled2 majorVersion] || !isEnabled)
      {
        if (criteria)
        {
          *criteria = 9;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        accessories = [(HMDResidentDeviceElectionParameters *)self accessories];
        v16 = [accessories countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v37;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(accessories);
              }

              v18 += [*(*(&v36 + 1) + 8 * i) isReachable];
            }

            v17 = [accessories countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v17);
        }

        else
        {
          v18 = 0;
        }

        v31 = isEnabled2;

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        accessories2 = [(HMDResidentDeviceElectionParameters *)v8 accessories];
        v23 = [accessories2 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = 0;
          v26 = *v33;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v33 != v26)
              {
                objc_enumerationMutation(accessories2);
              }

              v25 += [*(*(&v32 + 1) + 8 * j) isReachable];
            }

            v24 = [accessories2 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v24);
        }

        else
        {
          v25 = 0;
        }

        if (v18 < v25)
        {
          v21 = -1;
          isEnabled2 = v31;
          goto LABEL_60;
        }

        isEnabled2 = v31;
        if (v18 <= v25)
        {
          v30 = [isEnabled compare:v31];
          if (v30)
          {
            v21 = v30;
            if (criteria)
            {
              *criteria = 7;
            }
          }

          else
          {
            v21 = 0;
            if (criteria)
            {
              *criteria = 0;
            }
          }

          goto LABEL_60;
        }

LABEL_59:
        v21 = 1;
        goto LABEL_60;
      }

      goto LABEL_33;
    }

    if (location != 1)
    {
      if (location2 != 1)
      {
        goto LABEL_12;
      }

      v21 = -1;
    }

    else
    {
LABEL_35:
      v21 = 1;
    }

LABEL_61:

    goto LABEL_62;
  }

  v21 = 0;
  if (criteria)
  {
    *criteria = 0;
  }

LABEL_62:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (NSDictionary)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  accessories = [(HMDResidentDeviceElectionParameters *)self accessories];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(accessories, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = accessories;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
        [v4 addEntriesFromDictionary:dictionaryRepresentation];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  v24[0] = @"kEnabledKey";
  v11 = MEMORY[0x277CCABB0];
  isEnabled = [(HMDResidentDeviceElectionParameters *)self isEnabled];
  v13 = [v11 numberWithBool:{objc_msgSend(isEnabled, "BOOLValue")}];
  v25[0] = v13;
  v24[1] = @"kAtHomeStateKey";
  location = [(HMDResidentDeviceElectionParameters *)self location];
  v15 = MEMORY[0x277CBEC28];
  if (location == 1)
  {
    v15 = MEMORY[0x277CBEC38];
  }

  v25[1] = v15;
  v24[2] = @"kAccessoriesListKey";
  v16 = [v4 copy];
  v25[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMDResidentDeviceElectionParameters)initWithResident:(id)resident enabled:(id)enabled location:(int64_t)location accessories:(id)accessories
{
  residentCopy = resident;
  enabledCopy = enabled;
  accessoriesCopy = accessories;
  if (residentCopy)
  {
    v27.receiver = self;
    v27.super_class = HMDResidentDeviceElectionParameters;
    v14 = [(HMDResidentDeviceElectionParameters *)&v27 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_resident, resident);
      device = [residentCopy device];
      productInfo = [device productInfo];
      productInfo = v15->_productInfo;
      v15->_productInfo = productInfo;

      version = [device version];
      version = v15->_version;
      v15->_version = version;

      v21 = [enabledCopy copy];
      enabled = v15->_enabled;
      v15->_enabled = v21;

      v15->_location = location;
      v23 = [accessoriesCopy copy];
      accessories = v15->_accessories;
      v15->_accessories = v23;
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDResidentDeviceElectionParameters)initWithResident:(id)resident dictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v7 = MEMORY[0x277CBEB58];
  residentCopy = resident;
  v9 = [v7 set];
  v10 = [representationCopy hmf_numberForKey:@"kEnabledKey"];
  v11 = v10;
  if (v10)
  {
    v12 = [MEMORY[0x277D0F788] BOOLeanWithBool:{objc_msgSend(v10, "BOOLValue")}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [representationCopy hmf_numberForKey:@"kAtHomeStateKey"];
  v14 = v13;
  if (v13)
  {
    if ([v13 BOOLValue])
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = 2;
  }

  v16 = [representationCopy hmf_dictionaryForKey:@"kAccessoriesListKey"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__HMDResidentDeviceElectionParameters_initWithResident_dictionaryRepresentation___block_invoke;
  v20[3] = &unk_2786866F8;
  v21 = v9;
  v17 = v9;
  [v16 enumerateKeysAndObjectsUsingBlock:v20];

  v18 = [(HMDResidentDeviceElectionParameters *)self initWithResident:residentCopy enabled:v12 location:v15 accessories:v17];
  return v18;
}

void __81__HMDResidentDeviceElectionParameters_initWithResident_dictionaryRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HMDAccessoryReachabilityElectionParameter alloc];
  v11 = v5;
  v12[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [(HMDAccessoryReachabilityElectionParameter *)v7 initWithDictionaryRepresentation:v8];

  if (v9)
  {
    [*(a1 + 32) addObject:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end