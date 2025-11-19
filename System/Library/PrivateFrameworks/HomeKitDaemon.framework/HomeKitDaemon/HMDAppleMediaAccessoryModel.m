@interface HMDAppleMediaAccessoryModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
@end

@implementation HMDAppleMediaAccessoryModel

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqual:@"deviceUUID"])
  {
    v11 = [v8 device];
    v12 = [v11 identifier];
    v13 = [v12 UUIDString];
    v14 = v13;
    v15 = *MEMORY[0x277CBEEE8];
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;
    goto LABEL_8;
  }

  if ([v9 isEqual:@"device"])
  {
    v17 = [v8 device];
    v18 = [v17 identifier];

    if (v18)
    {
      v11 = +[HMDAccountRegistry sharedRegistry];
      v12 = [v8 device];
      v14 = [v12 identifier];
      v16 = [v11 deviceForIdentifier:v14];
LABEL_8:
      v19 = v16;

LABEL_9:
      goto LABEL_10;
    }
  }

  else
  {
    if (![v9 isEqual:@"deviceAddress"])
    {
      v23.receiver = self;
      v23.super_class = HMDAppleMediaAccessoryModel;
      v19 = [(HMDAccessoryTransaction *)&v23 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
      goto LABEL_10;
    }

    v19 = [v8 idsIdentifier];
    if (!v19)
    {
      goto LABEL_10;
    }

    v21 = [v8 idsDestination];

    if (v21)
    {
      v22 = [HMDDeviceAddress alloc];
      v11 = [v8 idsIdentifier];
      v12 = [v8 idsDestination];
      v19 = [(HMDDeviceAddress *)v22 initWithIDSIdentifier:v11 idsDestination:v12];
      goto LABEL_9;
    }
  }

  v19 = 0;
LABEL_10:

  return v19;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDAppleMediaAccessoryModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_142258 != -1)
  {
    dispatch_once(&properties_onceToken_142258, block);
  }

  v2 = properties__properties_142259;

  return v2;
}

void __41__HMDAppleMediaAccessoryModel_properties__block_invoke(uint64_t a1)
{
  v86[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v54.receiver = *(a1 + 32);
  v54.super_class = &OBJC_METACLASS___HMDAppleMediaAccessoryModel;
  v2 = objc_msgSendSuper2(&v54, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_142259;
  properties__properties_142259 = v3;

  v5 = properties__properties_142259;
  v85 = @"deviceUUID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v86[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = properties__properties_142259;
  v83 = @"device";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v84 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  [v8 addEntriesFromDictionary:v10];

  v11 = properties__properties_142259;
  v81 = @"pairingIdentity";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v82 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
  [v11 addEntriesFromDictionary:v13];

  v14 = properties__properties_142259;
  v79 = @"loggedInAccount";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v80 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  [v14 addEntriesFromDictionary:v16];

  v17 = properties__properties_142259;
  v77 = @"softwareVersion";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v78 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  [v17 addEntriesFromDictionary:v19];

  v20 = properties__properties_142259;
  v75 = @"variant";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v76 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  [v20 addEntriesFromDictionary:v22];

  v23 = properties__properties_142259;
  v73 = @"accessoryCapabilities";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v74 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  [v23 addEntriesFromDictionary:v25];

  v26 = properties__properties_142259;
  v71 = @"deviceAddress";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v72 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  [v26 addEntriesFromDictionary:v28];

  v29 = properties__properties_142259;
  v69 = @"deviceIRKData";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v70 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
  [v29 addEntriesFromDictionary:v31];

  v32 = properties__properties_142259;
  v67 = @"wifiNetworkInfo";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v68 = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  [v32 addEntriesFromDictionary:v34];

  v35 = properties__properties_142259;
  v65 = @"appleMediaAccessoryChangeTag";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v66 = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  [v35 addEntriesFromDictionary:v37];

  v38 = properties__properties_142259;
  v63 = @"supportedStereoPairVersions";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v64 = v39;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  [v38 addEntriesFromDictionary:v40];

  v41 = properties__properties_142259;
  v61 = @"preferredMediaUserUUID";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62 = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  [v41 addEntriesFromDictionary:v43];

  v44 = properties__properties_142259;
  v59 = @"preferredUserSelectionType";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v60 = v45;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  [v44 addEntriesFromDictionary:v46];

  v47 = properties__properties_142259;
  v57 = @"productColor";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58 = v48;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  [v47 addEntriesFromDictionary:v49];

  v50 = properties__properties_142259;
  v55 = @"idsIdentifier";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v56 = v51;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  [v50 addEntriesFromDictionary:v52];

  v53 = *MEMORY[0x277D85DE8];
}

@end