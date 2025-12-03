@interface HMDMediaPlaybackActionModel
+ (id)properties;
- (BOOL)validForStorage;
- (id)dependentUUIDs;
- (id)validate;
- (void)loadModelWithActionInformation:(id)information;
@end

@implementation HMDMediaPlaybackActionModel

- (id)dependentUUIDs
{
  v32 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HMDMediaPlaybackActionModel;
  dependentUUIDs = [(HMDBackingStoreModelObject *)&v29 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v4 addObject:parentUUID2];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  accessories = [(HMDMediaPlaybackActionModel *)self accessories];
  v8 = [accessories countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(accessories);
        }

        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v25 + 1) + 8 * i)];
        [v4 addObject:v12];
      }

      v9 = [accessories countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  services = [(HMDMediaPlaybackActionModel *)self services];
  v14 = [services countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(services);
        }

        v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v21 + 1) + 8 * j)];
        [v4 addObject:v18];
      }

      v15 = [services countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)validate
{
  profiles = [(HMDMediaPlaybackActionModel *)self profiles];
  state = [(HMDMediaPlaybackActionModel *)self state];
  integerValue = [state integerValue];
  volume = [(HMDMediaPlaybackActionModel *)self volume];
  v7 = [HMDMediaPlaybackAction isPlaybackActionValidWithProfiles:profiles state:integerValue volume:volume];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v8;
}

- (BOOL)validForStorage
{
  profiles = [(HMDMediaPlaybackActionModel *)self profiles];
  if ([profiles count])
  {
    accessories = [(HMDMediaPlaybackActionModel *)self accessories];
    if ([accessories count])
    {
      state = [(HMDMediaPlaybackActionModel *)self state];
      if ([state integerValue])
      {
        v6 = 1;
      }

      else
      {
        volume = [(HMDMediaPlaybackActionModel *)self volume];
        if (volume)
        {
          v6 = 1;
        }

        else
        {
          encodedPlaybackArchive = [(HMDMediaPlaybackActionModel *)self encodedPlaybackArchive];
          v6 = encodedPlaybackArchive != 0;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadModelWithActionInformation:(id)information
{
  informationCopy = information;
  v11.receiver = self;
  v11.super_class = HMDMediaPlaybackActionModel;
  [(HMDActionModel *)&v11 loadModelWithActionInformation:informationCopy];
  v5 = [informationCopy hmf_numberForKey:*MEMORY[0x277CD08B0]];
  [(HMDMediaPlaybackActionModel *)self setState:v5];

  v6 = [informationCopy hmf_numberForKey:*MEMORY[0x277CD08C0]];
  [(HMDMediaPlaybackActionModel *)self setVolume:v6];

  v7 = [informationCopy hmf_arrayForKey:*MEMORY[0x277CD08A0]];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
    [(HMDMediaPlaybackActionModel *)self setProfiles:v8];
  }

  v9 = [informationCopy hmf_dataForKey:*MEMORY[0x277CD0890]];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:0];
    if (v10)
    {
      [(HMDMediaPlaybackActionModel *)self setEncodedPlaybackArchive:v10];
    }
  }
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDMediaPlaybackActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_177518 != -1)
  {
    dispatch_once(&properties_onceToken_177518, block);
  }

  v2 = properties__properties_177519;

  return v2;
}

void __41__HMDMediaPlaybackActionModel_properties__block_invoke(uint64_t a1)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v19.receiver = *(a1 + 32);
  v19.super_class = &OBJC_METACLASS___HMDMediaPlaybackActionModel;
  v1 = objc_msgSendSuper2(&v19, sel_properties);
  v2 = [v1 mutableCopy];
  v3 = properties__properties_177519;
  properties__properties_177519 = v2;

  v18 = properties__properties_177519;
  v23[0] = @"accessories";
  v4 = objc_opt_class();
  v22 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v4 additionalDecodeClasses:v17];
  v24[0] = v5;
  v23[1] = @"state";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[1] = v6;
  v23[2] = @"volume";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[2] = v7;
  v23[3] = @"profiles";
  v8 = objc_opt_class();
  v21 = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v8 additionalDecodeClasses:v9];
  v24[3] = v10;
  v23[4] = @"encodedPlaybackArchive";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[4] = v11;
  v23[5] = @"services";
  v12 = objc_opt_class();
  v20 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v12 additionalDecodeClasses:v13];
  v24[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  [v18 addEntriesFromDictionary:v15];

  v16 = *MEMORY[0x277D85DE8];
}

@end