@interface HMDAppleMediaAccessoryModel
+ (id)appleMediaAccessoryModelWithChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5;
+ (id)homePodAccessoryModelWithChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5;
+ (id)properties;
- (id)_initWithObjectChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5;
@end

@implementation HMDAppleMediaAccessoryModel

- (id)_initWithObjectChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5
{
  v6.receiver = self;
  v6.super_class = HMDAppleMediaAccessoryModel;
  return [(HMDBackingStoreModelObject *)&v6 initWithObjectChangeType:a3 uuid:a4 parentUUID:a5];
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDAppleMediaAccessoryModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_93997 != -1)
  {
    dispatch_once(&properties_onceToken_93997, block);
  }

  v2 = properties__properties_93998;

  return v2;
}

void __41__HMDAppleMediaAccessoryModel_properties__block_invoke(uint64_t a1)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v42.receiver = *(a1 + 32);
  v42.super_class = &OBJC_METACLASS___HMDAppleMediaAccessoryModel;
  v2 = objc_msgSendSuper2(&v42, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_93998;
  properties__properties_93998 = v3;

  v5 = properties__properties_93998;
  v65 = @"deviceUUID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v66[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = properties__properties_93998;
  v63 = @"device";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v64 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  [v8 addEntriesFromDictionary:v10];

  v11 = properties__properties_93998;
  v61 = @"pairingIdentity";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  [v11 addEntriesFromDictionary:v13];

  v14 = properties__properties_93998;
  v59 = @"loggedInAccount";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v60 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  [v14 addEntriesFromDictionary:v16];

  v17 = properties__properties_93998;
  v57 = @"softwareVersion";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  [v17 addEntriesFromDictionary:v19];

  v20 = properties__properties_93998;
  v55 = @"wifiNetworkInfo";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v56 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  [v20 addEntriesFromDictionary:v22];

  v23 = properties__properties_93998;
  v53 = @"appleMediaAccessoryChangeTag";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v54 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  [v23 addEntriesFromDictionary:v25];

  v26 = properties__properties_93998;
  v51 = @"supportedStereoPairVersions";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v52 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  [v26 addEntriesFromDictionary:v28];

  v29 = properties__properties_93998;
  v49 = @"preferredMediaUserUUID";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v50 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  [v29 addEntriesFromDictionary:v31];

  v32 = properties__properties_93998;
  v47 = @"preferredUserSelectionType";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v48 = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  [v32 addEntriesFromDictionary:v34];

  v35 = properties__properties_93998;
  v45 = @"productColor";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46 = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  [v35 addEntriesFromDictionary:v37];

  v38 = properties__properties_93998;
  v43 = @"idsIdentifier";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v44 = v39;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  [v38 addEntriesFromDictionary:v40];

  v41 = *MEMORY[0x277D85DE8];
}

+ (id)homePodAccessoryModelWithChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [objc_alloc(objc_opt_class()) _initWithObjectChangeType:a3 uuid:v8 parentUUID:v7];

  return v9;
}

+ (id)appleMediaAccessoryModelWithChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [objc_alloc(objc_opt_class()) _initWithObjectChangeType:a3 uuid:v8 parentUUID:v7];

  return v9;
}

@end