@interface HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel
+ (NSUUID)namespaceID;
+ (id)hmbProperties;
+ (id)logCategory;
+ (id)modelIDForRecordID:(id)a3;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithCloudZoneID:(id)a3 recordID:(id)a4 networkDeclarationsData:(id)a5;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithCloudZoneID:(id)a3 recordID:(id)a4 networkDeclarationsData:(id)a5 pairedMetadataData:(id)a6;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithModelID:(id)a3 parentModelID:(id)a4 networkDeclarationsData:(id)a5 pairedMetadataData:(id)a6;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithCloudZoneID:(id)a3 recordID:(id)a4 networkDeclarationsData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() modelIDForRecordID:v9];

  v12 = [v10 modelID];

  v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)self initWithModelID:v11 parentModelID:v12 networkDeclarationsData:v8];
  return v13;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithCloudZoneID:(id)a3 recordID:(id)a4 networkDeclarationsData:(id)a5 pairedMetadataData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_opt_class() modelIDForRecordID:v12];

  v15 = [v13 modelID];

  v16 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)self initWithModelID:v14 parentModelID:v15 networkDeclarationsData:v11 pairedMetadataData:v10];
  return v16;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithModelID:(id)a3 parentModelID:(id)a4 networkDeclarationsData:(id)a5 pairedMetadataData:(id)a6
{
  v10 = a5;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel;
  v12 = [(HMBModel *)&v16 initWithModelID:a3 parentModelID:a4];
  v13 = v12;
  if (v12)
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)v12 setNetworkDeclarationsData:v10];
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)v13 setPairedMetadataData:v11];
    v14 = v13;
  }

  return v13;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_137674 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_137674, &__block_literal_global_7_137675);
  }

  v3 = hmbProperties_properties_137676;

  return v3;
}

void __83__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel_hmbProperties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"networkDeclarationsData";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[1] = @"pairedMetadataData";
  v6[0] = v0;
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = hmbProperties_properties_137676;
  hmbProperties_properties_137676 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)modelIDForRecordID:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 recordName];
  v26[0] = v5;
  v6 = [v4 zoneID];
  v7 = [v6 zoneName];
  v26[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  v9 = [MEMORY[0x277CBEB28] data];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v21 + 1) + 8 * i) dataUsingEncoding:{4, v21}];
        [v9 appendData:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v16 = MEMORY[0x277CCAD78];
  v17 = [a1 namespaceID];
  v18 = [v16 hmf_UUIDWithNamespace:v17 data:v9];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (NSUUID)namespaceID
{
  if (namespaceID_onceToken != -1)
  {
    dispatch_once(&namespaceID_onceToken, &__block_literal_global_2_137690);
  }

  v3 = namespaceID_namespaceID;

  return v3;
}

uint64_t __81__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel_namespaceID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"da9f7191-31bc-4567-9424-89b86310c2e7"];
  v1 = namespaceID_namespaceID;
  namespaceID_namespaceID = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_137695 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_137695, &__block_literal_global_137696);
  }

  v3 = logCategory__hmf_once_v1_137697;

  return v3;
}

uint64_t __81__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_137697;
  logCategory__hmf_once_v1_137697 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end