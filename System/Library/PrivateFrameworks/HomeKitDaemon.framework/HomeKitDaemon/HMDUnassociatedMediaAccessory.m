@interface HMDUnassociatedMediaAccessory
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHAPAirPlay2Accessory;
- (HMDUnassociatedMediaAccessory)initWithAdvertisement:(id)a3 messageDispatcher:(id)a4;
- (HMDUnassociatedMediaAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 messageDispatcher:(id)a6;
- (id)addTransactionForHome:(id)a3;
- (id)dumpDescription;
- (id)modelForChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5;
- (int64_t)associationOptions;
- (unint64_t)hash;
- (void)updateAdvertisementData:(id)a3;
@end

@implementation HMDUnassociatedMediaAccessory

- (id)addTransactionForHome:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUnassociatedAccessory *)self uuid];
  v6 = [v4 uuid];
  v7 = [(HMDUnassociatedMediaAccessory *)self modelForChangeType:1 uuid:v5 parentUUID:v6];

  v8 = [(HMDUnassociatedAccessory *)self identifier];
  [v7 setIdentifier:v8];

  v9 = [(HMDUnassociatedAccessory *)self name];
  [v7 setProvidedName:v9];

  v10 = MEMORY[0x277CD1680];
  v11 = [(HMDUnassociatedAccessory *)self category];
  v12 = [v10 categoryIdentifierForCategory:v11];
  [v7 setAccessoryCategory:v12];

  v13 = [v7 providedName];
  if (v13)
  {
    v14 = v13;
    v15 = [v7 configuredName];

    if (!v15)
    {
      v16 = [(HMDUnassociatedAccessory *)self category];
      v17 = [v16 localizedDescription];
      v18 = [v7 providedName];
      v19 = [v17 isEqualToString:v18];

      if ((v19 & 1) == 0)
      {
        v20 = [(HMDUnassociatedAccessory *)self category];
        v21 = [v20 categoryType];
        v22 = [v21 isEqualToString:*MEMORY[0x277CCE8B0]];

        if ((v22 & 1) == 0)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v23 = [v4 rooms];
          v24 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v43;
LABEL_7:
            v27 = 0;
            while (1)
            {
              if (*v43 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = [*(*(&v42 + 1) + 8 * v27) name];
              v29 = [v7 providedName];
              v30 = [v28 caseInsensitiveCompare:v29];

              if (!v30)
              {
                break;
              }

              if (v25 == ++v27)
              {
                v25 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
                if (v25)
                {
                  goto LABEL_7;
                }

                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:

            v31 = [v4 roomForEntireHome];
            v32 = [v31 name];
            v33 = [v7 providedName];
            v34 = [v32 caseInsensitiveCompare:v33];

            if (!v34)
            {
              goto LABEL_18;
            }

            v35 = objc_autoreleasePoolPush();
            v36 = self;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              v39 = [v7 providedName];
              *buf = 138543618;
              v47 = v38;
              v48 = 2112;
              v49 = v39;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Populating configuredName with providedName: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            v23 = [v7 providedName];
            [v7 setConfiguredName:v23];
          }
        }
      }
    }
  }

LABEL_18:

  v40 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
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
    if (v6)
    {
      v7 = [(HMDUnassociatedAccessory *)self identifier];
      v8 = [(HMDUnassociatedAccessory *)v6 identifier];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDUnassociatedAccessory *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)associationOptions
{
  v3 = [(HMDUnassociatedMediaAccessory *)self advertisement];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HMDUnassociatedMediaAccessory *)self advertisement];
  v5 = [v4 associationOptions];

  return v5;
}

- (id)dumpDescription
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HMDUnassociatedAccessory *)self name];
  v6 = [(HMDUnassociatedAccessory *)self uuid];
  v7 = [v6 UUIDString];
  v8 = [(HMDUnassociatedAccessory *)self category];
  v9 = [(HMDUnassociatedAccessory *)self identifier];
  v10 = [v4 stringWithFormat:@"Media Accessory '%@': uuid %@  category %@ identifier %@", v5, v7, v8, v9];

  [v3 setObject:v10 forKey:*MEMORY[0x277D0F170]];

  return v3;
}

- (BOOL)isHAPAirPlay2Accessory
{
  v2 = [(HMDUnassociatedMediaAccessory *)self advertisement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [v4 outputDevice];
    v6 = [v5 outputDevice];
    v7 = [v6 supportsHAP];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateAdvertisementData:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    os_unfair_recursive_lock_lock_with_options();
    objc_storeStrong(&self->_advertisement, a3);
    os_unfair_recursive_lock_unlock();
    v5 = v6;
  }
}

- (HMDUnassociatedMediaAccessory)initWithAdvertisement:(id)a3 messageDispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 name];
  v10 = [v7 identifier];
  v11 = [v7 category];
  v12 = [(HMDUnassociatedMediaAccessory *)self initWithIdentifier:v10 name:v9 category:v11 messageDispatcher:v8];

  if (v12)
  {
    objc_storeStrong(&v12->_advertisement, a3);
  }

  return v12;
}

- (HMDUnassociatedMediaAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 messageDispatcher:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v14 = MEMORY[0x277CD1680];
    v15 = objc_alloc(MEMORY[0x277CCAD78]);
    v16 = [v15 initWithUUIDString:*MEMORY[0x277CCE900]];
    v12 = [v14 categoryWithIdentifier:v16];
  }

  v19.receiver = self;
  v19.super_class = HMDUnassociatedMediaAccessory;
  v17 = [(HMDUnassociatedAccessory *)&v19 initWithIdentifier:v10 name:v11 category:v12 messageDispatcher:v13];

  return v17;
}

- (id)modelForChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HMDBackingStoreModelObject *)[HMDMediaAccessoryModel alloc] initWithObjectChangeType:a3 uuid:v8 parentUUID:v7];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_77040 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_77040, &__block_literal_global_77041);
  }

  v3 = logCategory__hmf_once_v5_77042;

  return v3;
}

void __44__HMDUnassociatedMediaAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_77042;
  logCategory__hmf_once_v5_77042 = v1;
}

@end