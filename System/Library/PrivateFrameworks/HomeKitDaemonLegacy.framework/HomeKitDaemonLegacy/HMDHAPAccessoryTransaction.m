@interface HMDHAPAccessoryTransaction
+ (id)properties;
- (NSSet)chipPairings;
- (id)dependentUUIDs;
- (void)setChipPairings:(id)a3;
@end

@implementation HMDHAPAccessoryTransaction

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDHAPAccessoryTransaction_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_49209 != -1)
  {
    dispatch_once(&properties_onceToken_49209, block);
  }

  v2 = properties__properties_49210;

  return v2;
}

void __40__HMDHAPAccessoryTransaction_properties__block_invoke(uint64_t a1)
{
  v46[33] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v43.receiver = *(a1 + 32);
  v43.super_class = &OBJC_METACLASS___HMDHAPAccessoryTransaction;
  v2 = objc_msgSendSuper2(&v43, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_49210;
  properties__properties_49210 = v3;

  v35 = properties__properties_49210;
  v45[0] = @"uniqueIdentifier";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[0] = v42;
  v45[1] = @"bridgeUUID";
  v41 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[1] = v41;
  v45[2] = @"paired";
  v40 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v46[2] = v40;
  v45[3] = @"accessoryFlags";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[3] = v39;
  v45[4] = @"certificationStatus";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[4] = v38;
  v45[5] = @"pairingUsername";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[5] = v37;
  v45[6] = @"publicKey";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[6] = v36;
  v45[7] = @"transportInformation";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[7] = v34;
  v45[8] = @"communicationProtocol";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[8] = v33;
  v45[9] = @"accessorySetupHash";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[9] = v32;
  v45[10] = @"broadcastKey";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[10] = v31;
  v45[11] = @"keyUpdatedStateNumber";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[11] = v30;
  v45[12] = @"keyUpdatedTime";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[12] = v29;
  v45[13] = @"targetUUIDs";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[13] = v28;
  v45[14] = @"hardwareSupport";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[14] = v27;
  v45[15] = @"connectivityInfo";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[15] = v26;
  v45[16] = @"wiFiTransportCapabilities";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[16] = v25;
  v45[17] = @"sleepInterval";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[17] = v24;
  v45[18] = @"hasOnboardedForNaturalLighting";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[18] = v23;
  v45[19] = @"initialServiceTypeUUIDs";
  v5 = objc_opt_class();
  v44 = objc_opt_class();
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v5 additionalDecodeClasses:v22];
  v46[19] = v21;
  v45[20] = @"needsOnboarding";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[20] = v20;
  v45[21] = @"suspendedState";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[21] = v19;
  v45[22] = @"preferredMediaUserUUID";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[22] = v18;
  v45[23] = @"preferredUserSelectionType";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[23] = v17;
  v45[24] = @"chipNodeID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[24] = v6;
  v45[25] = @"chipVendorID";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[25] = v7;
  v45[26] = @"chipProductID";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[26] = v8;
  v45[27] = @"chipAttributeDatabase";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[27] = v9;
  v45[28] = @"chipPairingsData";
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[28] = v10;
  v45[29] = @"chipWEDSupport";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[29] = v11;
  v45[30] = @"chipExtendedMACAddress";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[30] = v12;
  v45[31] = @"matterSoftwareVersionNumber";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[31] = v13;
  v45[32] = @"supportedLinkLayerTypes";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v46[32] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:33];
  [v35 addEntriesFromDictionary:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setChipPairings:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v12 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
    v6 = v12;
    if (v5)
    {
      [(HMDHAPAccessoryTransaction *)self setChipPairingsData:v5];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543874;
        v14 = v10;
        v15 = 2112;
        v16 = v4;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize pairings %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    [(HMDHAPAccessoryTransaction *)self setChipPairingsData:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSSet)chipPairings
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDHAPAccessoryTransaction *)self chipPairingsData];
  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v7 = [v5 setWithArray:v6];
    v17 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:v3 error:&v17];
    v9 = v17;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize pairings from data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)dependentUUIDs
{
  v2 = self;
  v40 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = HMDHAPAccessoryTransaction;
  v3 = [(HMDAccessoryTransaction *)&v34 dependentUUIDs];
  v4 = [v3 mutableCopy];

  v5 = [(HMDHAPAccessoryTransaction *)v2 bridgeUUID];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    v7 = [(HMDHAPAccessoryTransaction *)v2 bridgeUUID];
    v8 = [v6 initWithUUIDString:v7];
    [v4 addObject:v8];
  }

  v9 = [(HMDHAPAccessoryTransaction *)v2 targetUUIDs];
  v10 = [v9 count];

  if (v10)
  {
    v27 = v4;
    v11 = MEMORY[0x277CBEB18];
    v12 = [(HMDHAPAccessoryTransaction *)v2 targetUUIDs];
    v29 = [v11 arrayWithCapacity:{objc_msgSend(v12, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(HMDHAPAccessoryTransaction *)v2 targetUUIDs];
    v13 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    v14 = 0x277CCA000uLL;
    if (v13)
    {
      v15 = v13;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = [objc_alloc(*(v14 + 3448)) initWithUUIDString:v18];
          if (v19)
          {
            [v29 addObject:v19];
          }

          else
          {
            v20 = objc_autoreleasePoolPush();
            v21 = v2;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v24 = v23 = v2;
              *buf = 138543618;
              v36 = v24;
              v37 = 2112;
              v38 = v18;
              _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@UUID string not well-formed: %@", buf, 0x16u);

              v2 = v23;
              v14 = 0x277CCA000;
            }

            objc_autoreleasePoolPop(v20);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v15);
    }

    v4 = v27;
    [v27 addObjectsFromArray:v29];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

@end