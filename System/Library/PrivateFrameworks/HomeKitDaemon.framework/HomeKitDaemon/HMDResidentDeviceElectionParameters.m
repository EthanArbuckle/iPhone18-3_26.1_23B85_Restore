@interface HMDResidentDeviceElectionParameters
- (BOOL)isEqual:(id)a3;
- (HMDResidentDeviceElectionParameters)initWithResident:(id)a3 dictionaryRepresentation:(id)a4;
- (HMDResidentDeviceElectionParameters)initWithResident:(id)a3 enabled:(id)a4 location:(int64_t)a5 accessories:(id)a6;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (int64_t)compare:(id)a3 outCriteria:(unint64_t *)a4;
- (unint64_t)hash;
@end

@implementation HMDResidentDeviceElectionParameters

- (id)attributeDescriptions
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [(HMDResidentDeviceElectionParameters *)self resident];
  v21 = [v22 shortDescription];
  v20 = [v3 initWithName:@"Resident" value:v21];
  v23[0] = v20;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDResidentDeviceElectionParameters *)self version];
  v6 = [v5 versionString];
  v7 = [v4 initWithName:@"Version" value:v6];
  v23[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDResidentDeviceElectionParameters *)self isEnabled];
  v10 = [v8 initWithName:@"Enabled" value:v9];
  v23[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDResidentDeviceElectionParameters *)self location];
  v12 = HMStringFromHomeLocation();
  v13 = [v11 initWithName:@"Location" value:v12];
  v23[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDResidentDeviceElectionParameters *)self accessories];
  v16 = [v14 initWithName:@"Accessories" value:v15];
  v23[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  v2 = [(HMDResidentDeviceElectionParameters *)self resident];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compare:(id)a3 outCriteria:(unint64_t *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self != v6)
  {
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
    if (!v8)
    {
      goto LABEL_35;
    }

    if (a4)
    {
      *a4 = 1;
    }

    v9 = [(HMDResidentDeviceElectionParameters *)self isEnabled];
    v10 = [(HMDResidentDeviceElectionParameters *)v8 isEnabled];
    if ((HMFEqualObjects() & 1) == 0)
    {
      if (v9 && v10)
      {
LABEL_33:
        v21 = [v9 compare:v10];
LABEL_60:

        goto LABEL_61;
      }

      if ([v9 BOOLValue])
      {
        goto LABEL_59;
      }

      if ([v10 BOOLValue])
      {
LABEL_40:
        v21 = -1;
        goto LABEL_60;
      }
    }

    if (a4)
    {
      *a4 = 3;
    }

    v11 = [(HMDResidentDeviceElectionParameters *)self location];
    v12 = [(HMDResidentDeviceElectionParameters *)v8 location];
    if (v11 == v12)
    {
LABEL_12:
      if (a4)
      {
        *a4 = 4;
      }

      v9 = [(HMDResidentDeviceElectionParameters *)self productInfo];
      v10 = [(HMDResidentDeviceElectionParameters *)v8 productInfo];
      v13 = [v9 productClass];
      if (v13 != [v10 productClass])
      {
        if ([v9 productClass] == 3)
        {
          goto LABEL_40;
        }

        if ([v10 productClass] == 3)
        {
          goto LABEL_59;
        }
      }

      if (a4)
      {
        *a4 = 6;
      }

      v9 = [(HMDResidentDeviceElectionParameters *)self version];
      v10 = [(HMDResidentDeviceElectionParameters *)v8 version];
      v14 = [v9 majorVersion];
      if (v14 == [v10 majorVersion] || !v9)
      {
        if (a4)
        {
          *a4 = 9;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v15 = [(HMDResidentDeviceElectionParameters *)self accessories];
        v16 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
                objc_enumerationMutation(v15);
              }

              v18 += [*(*(&v36 + 1) + 8 * i) isReachable];
            }

            v17 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v17);
        }

        else
        {
          v18 = 0;
        }

        v31 = v10;

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v22 = [(HMDResidentDeviceElectionParameters *)v8 accessories];
        v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
                objc_enumerationMutation(v22);
              }

              v25 += [*(*(&v32 + 1) + 8 * j) isReachable];
            }

            v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
          v10 = v31;
          goto LABEL_60;
        }

        v10 = v31;
        if (v18 <= v25)
        {
          v30 = [v9 compare:v31];
          if (v30)
          {
            v21 = v30;
            if (a4)
            {
              *a4 = 7;
            }
          }

          else
          {
            v21 = 0;
            if (a4)
            {
              *a4 = 0;
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

    if (v11 != 1)
    {
      if (v12 != 1)
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
  if (a4)
  {
    *a4 = 0;
  }

LABEL_62:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (NSDictionary)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceElectionParameters *)self accessories];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
        [v4 addEntriesFromDictionary:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  v24[0] = @"kEnabledKey";
  v11 = MEMORY[0x277CCABB0];
  v12 = [(HMDResidentDeviceElectionParameters *)self isEnabled];
  v13 = [v11 numberWithBool:{objc_msgSend(v12, "BOOLValue")}];
  v25[0] = v13;
  v24[1] = @"kAtHomeStateKey";
  v14 = [(HMDResidentDeviceElectionParameters *)self location];
  v15 = MEMORY[0x277CBEC28];
  if (v14 == 1)
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

- (HMDResidentDeviceElectionParameters)initWithResident:(id)a3 enabled:(id)a4 location:(int64_t)a5 accessories:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    v27.receiver = self;
    v27.super_class = HMDResidentDeviceElectionParameters;
    v14 = [(HMDResidentDeviceElectionParameters *)&v27 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_resident, a3);
      v16 = [v11 device];
      v17 = [v16 productInfo];
      productInfo = v15->_productInfo;
      v15->_productInfo = v17;

      v19 = [v16 version];
      version = v15->_version;
      v15->_version = v19;

      v21 = [v12 copy];
      enabled = v15->_enabled;
      v15->_enabled = v21;

      v15->_location = a5;
      v23 = [v13 copy];
      accessories = v15->_accessories;
      v15->_accessories = v23;
    }

    self = v15;
    v25 = self;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (HMDResidentDeviceElectionParameters)initWithResident:(id)a3 dictionaryRepresentation:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB58];
  v8 = a3;
  v9 = [v7 set];
  v10 = [v6 hmf_numberForKey:@"kEnabledKey"];
  v11 = v10;
  if (v10)
  {
    v12 = [MEMORY[0x277D0F788] BOOLeanWithBool:{objc_msgSend(v10, "BOOLValue")}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 hmf_numberForKey:@"kAtHomeStateKey"];
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

  v16 = [v6 hmf_dictionaryForKey:@"kAccessoriesListKey"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__HMDResidentDeviceElectionParameters_initWithResident_dictionaryRepresentation___block_invoke;
  v20[3] = &unk_2786866F8;
  v21 = v9;
  v17 = v9;
  [v16 enumerateKeysAndObjectsUsingBlock:v20];

  v18 = [(HMDResidentDeviceElectionParameters *)self initWithResident:v8 enabled:v12 location:v15 accessories:v17];
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