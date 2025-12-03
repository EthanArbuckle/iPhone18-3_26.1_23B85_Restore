@interface HMDUnassociatedMediaAccessory
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHAPAirPlay2Accessory;
- (HMDUnassociatedMediaAccessory)initWithAdvertisement:(id)advertisement messageDispatcher:(id)dispatcher;
- (HMDUnassociatedMediaAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category messageDispatcher:(id)dispatcher;
- (id)addTransactionForHome:(id)home;
- (id)dumpDescription;
- (id)modelForChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
- (int64_t)associationOptions;
- (unint64_t)hash;
- (void)updateAdvertisementData:(id)data;
@end

@implementation HMDUnassociatedMediaAccessory

- (id)addTransactionForHome:(id)home
{
  v51 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  uuid = [(HMDUnassociatedAccessory *)self uuid];
  uuid2 = [homeCopy uuid];
  v7 = [(HMDUnassociatedMediaAccessory *)self modelForChangeType:1 uuid:uuid parentUUID:uuid2];

  identifier = [(HMDUnassociatedAccessory *)self identifier];
  [v7 setIdentifier:identifier];

  name = [(HMDUnassociatedAccessory *)self name];
  [v7 setProvidedName:name];

  v10 = MEMORY[0x277CD1680];
  category = [(HMDUnassociatedAccessory *)self category];
  v12 = [v10 categoryIdentifierForCategory:category];
  [v7 setAccessoryCategory:v12];

  providedName = [v7 providedName];
  if (providedName)
  {
    v14 = providedName;
    configuredName = [v7 configuredName];

    if (!configuredName)
    {
      category2 = [(HMDUnassociatedAccessory *)self category];
      localizedDescription = [category2 localizedDescription];
      providedName2 = [v7 providedName];
      v19 = [localizedDescription isEqualToString:providedName2];

      if ((v19 & 1) == 0)
      {
        category3 = [(HMDUnassociatedAccessory *)self category];
        categoryType = [category3 categoryType];
        v22 = [categoryType isEqualToString:*MEMORY[0x277CCE8B0]];

        if ((v22 & 1) == 0)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          rooms = [homeCopy rooms];
          v24 = [rooms countByEnumeratingWithState:&v42 objects:v50 count:16];
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
                objc_enumerationMutation(rooms);
              }

              name2 = [*(*(&v42 + 1) + 8 * v27) name];
              providedName3 = [v7 providedName];
              v30 = [name2 caseInsensitiveCompare:providedName3];

              if (!v30)
              {
                break;
              }

              if (v25 == ++v27)
              {
                v25 = [rooms countByEnumeratingWithState:&v42 objects:v50 count:16];
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

            roomForEntireHome = [homeCopy roomForEntireHome];
            name3 = [roomForEntireHome name];
            providedName4 = [v7 providedName];
            v34 = [name3 caseInsensitiveCompare:providedName4];

            if (!v34)
            {
              goto LABEL_18;
            }

            v35 = objc_autoreleasePoolPush();
            selfCopy = self;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              providedName5 = [v7 providedName];
              *buf = 138543618;
              v47 = v38;
              v48 = 2112;
              v49 = providedName5;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Populating configuredName with providedName: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            rooms = [v7 providedName];
            [v7 setConfiguredName:rooms];
          }
        }
      }
    }
  }

LABEL_18:

  v40 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
    if (v6)
    {
      identifier = [(HMDUnassociatedAccessory *)self identifier];
      identifier2 = [(HMDUnassociatedAccessory *)v6 identifier];
      v9 = [identifier isEqual:identifier2];
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
  identifier = [(HMDUnassociatedAccessory *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (int64_t)associationOptions
{
  advertisement = [(HMDUnassociatedMediaAccessory *)self advertisement];

  if (!advertisement)
  {
    return 0;
  }

  advertisement2 = [(HMDUnassociatedMediaAccessory *)self advertisement];
  associationOptions = [advertisement2 associationOptions];

  return associationOptions;
}

- (id)dumpDescription
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = MEMORY[0x277CCACA8];
  name = [(HMDUnassociatedAccessory *)self name];
  uuid = [(HMDUnassociatedAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  category = [(HMDUnassociatedAccessory *)self category];
  identifier = [(HMDUnassociatedAccessory *)self identifier];
  v10 = [v4 stringWithFormat:@"Media Accessory '%@': uuid %@  category %@ identifier %@", name, uUIDString, category, identifier];

  [v3 setObject:v10 forKey:*MEMORY[0x277D0F170]];

  return v3;
}

- (BOOL)isHAPAirPlay2Accessory
{
  advertisement = [(HMDUnassociatedMediaAccessory *)self advertisement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = advertisement;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    outputDevice = [v4 outputDevice];
    v5OutputDevice = [outputDevice outputDevice];
    supportsHAP = [v5OutputDevice supportsHAP];
  }

  else
  {
    supportsHAP = 0;
  }

  return supportsHAP;
}

- (void)updateAdvertisementData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v6 = dataCopy;
    os_unfair_recursive_lock_lock_with_options();
    objc_storeStrong(&self->_advertisement, data);
    os_unfair_recursive_lock_unlock();
    dataCopy = v6;
  }
}

- (HMDUnassociatedMediaAccessory)initWithAdvertisement:(id)advertisement messageDispatcher:(id)dispatcher
{
  advertisementCopy = advertisement;
  dispatcherCopy = dispatcher;
  name = [advertisementCopy name];
  identifier = [advertisementCopy identifier];
  category = [advertisementCopy category];
  v12 = [(HMDUnassociatedMediaAccessory *)self initWithIdentifier:identifier name:name category:category messageDispatcher:dispatcherCopy];

  if (v12)
  {
    objc_storeStrong(&v12->_advertisement, advertisement);
  }

  return v12;
}

- (HMDUnassociatedMediaAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category messageDispatcher:(id)dispatcher
{
  identifierCopy = identifier;
  nameCopy = name;
  categoryCopy = category;
  dispatcherCopy = dispatcher;
  if (!categoryCopy)
  {
    v14 = MEMORY[0x277CD1680];
    v15 = objc_alloc(MEMORY[0x277CCAD78]);
    v16 = [v15 initWithUUIDString:*MEMORY[0x277CCE900]];
    categoryCopy = [v14 categoryWithIdentifier:v16];
  }

  v19.receiver = self;
  v19.super_class = HMDUnassociatedMediaAccessory;
  v17 = [(HMDUnassociatedAccessory *)&v19 initWithIdentifier:identifierCopy name:nameCopy category:categoryCopy messageDispatcher:dispatcherCopy];

  return v17;
}

- (id)modelForChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  dCopy = d;
  uuidCopy = uuid;
  v9 = [(HMDBackingStoreModelObject *)[HMDMediaAccessoryModel alloc] initWithObjectChangeType:type uuid:uuidCopy parentUUID:dCopy];

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