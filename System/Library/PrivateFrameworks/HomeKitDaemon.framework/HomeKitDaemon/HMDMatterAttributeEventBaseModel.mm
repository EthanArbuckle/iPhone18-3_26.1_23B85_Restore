@interface HMDMatterAttributeEventBaseModel
+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 className:(Class)a6 message:(id)a7;
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDMatterAttributeEventBaseModel

+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 className:(Class)a6 message:(id)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v43 = a4;
  v39 = a5;
  v40 = a7;
  v42 = [v12 hmf_numberForKey:*MEMORY[0x277CCFD10]];
  v41 = [v12 hmf_numberForKey:*MEMORY[0x277CCFC08]];
  v13 = [v12 hmf_numberForKey:*MEMORY[0x277CCF2D8]];
  v14 = [v12 hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
  v15 = [v43 accessoryWithUUID:v14];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = [v17 matterAdapter];
    v19 = [MEMORY[0x277CD51C0] attributePathWithEndpointID:v42 clusterID:v41 attributeID:v13];
    v20 = [v18 mtrAttributePaths];
    v21 = [v20 containsObject:v19];

    if (v21)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v54 = __Block_byref_object_copy__279142;
      v55 = __Block_byref_object_dispose__279143;
      v56 = [HMDMatterPath PathWithAttributeID:v13 endpointID:v42 clusterID:v41 accessory:v17];
      if (*(*&buf[8] + 40))
      {
        v22 = [v18 attributePaths];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __101__HMDMatterAttributeEventBaseModel_eventModelWithDictionary_home_eventTriggerUUID_className_message___block_invoke;
        v44[3] = &unk_278689C88;
        v44[4] = buf;
        [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:v44];

        v23 = [HMDEventModel eventModelWithDictionary:v12 home:v43 eventTriggerUUID:v39 className:a6 message:v40];
        v24 = [*(*&buf[8] + 40) uuid];
        [v23 setMatterPathUUID:v24];
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = a1;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *v45 = 138544130;
          v46 = v36;
          v47 = 2112;
          v48 = v13;
          v49 = 2112;
          v50 = v42;
          v51 = 2112;
          v52 = v41;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to create matter path from attributeID/endpointID/clusterID %@/%@/%@", v45, 0x2Au);
        }

        objc_autoreleasePoolPop(v33);
        v23 = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = a1;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v32;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        *&buf[22] = 2112;
        v54 = v17;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to find attribute path %@ on accessory %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      v23 = 0;
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = a1;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with UUID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v23 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v23;
}

void __101__HMDMatterAttributeEventBaseModel_eventModelWithDictionary_home_eventTriggerUUID_className_message___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isEqual:*(*(*(a1 + 32) + 8) + 40)])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDMatterAttributeEventBaseModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_279146 != -1)
  {
    dispatch_once(&properties_onceToken_279146, block);
  }

  v2 = properties__properties_279147;

  return v2;
}

void __46__HMDMatterAttributeEventBaseModel_properties__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDMatterAttributeEventBaseModel;
  v2 = objc_msgSendSuper2(&v9, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_279147;
  properties__properties_279147 = v3;

  v5 = properties__properties_279147;
  v10 = @"matterPathUUID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v4 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v4)
  {
    v5 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:v5];
  }

  v6 = [(HMDMatterAttributeEventBaseModel *)self matterPathUUID];

  if (v6)
  {
    v7 = [(HMDMatterAttributeEventBaseModel *)self matterPathUUID];
    [v3 addObject:v7];
  }

  return v3;
}

@end