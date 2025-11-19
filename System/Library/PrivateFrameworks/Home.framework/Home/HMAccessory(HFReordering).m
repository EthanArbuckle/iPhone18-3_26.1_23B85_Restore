@interface HMAccessory(HFReordering)
- (HFServiceNameComponents)hf_serviceNameComponents;
- (HFServiceNameComponents)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;
- (id)hf_displayName;
- (id)hf_updateDateAdded:()HFReordering;
@end

@implementation HMAccessory(HFReordering)

- (id)hf_displayName
{
  v1 = [a1 hf_serviceNameComponents];
  v2 = [v1 composedString];

  return v2;
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  v2 = [HFNamingComponents namingComponentFromAccessory:a1];
  v3 = [HFServiceNameComponents alloc];
  v4 = [v2 name];
  v5 = [a1 room];
  v6 = [v5 name];
  v7 = [(HFServiceNameComponents *)v3 initWithRawServiceName:v4 rawRoomName:v6];

  return v7;
}

- (HFServiceNameComponents)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
{
  v2 = [HFNamingComponents namingComponentFromAccessory:a1];
  v3 = [HFServiceNameComponents alloc];
  v4 = [v2 name];
  v5 = [a1 room];
  v6 = [v5 name];
  v7 = [(HFServiceNameComponents *)v3 initWithRawServiceName:v4 rawRoomName:v6 allowRepeat:0];

  return v7;
}

- (id)hf_updateDateAdded:()HFReordering
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFUpdateDateAddedForApplicationDataContainer(a1, v4);
  v6 = [a1 services];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __48__HMAccessory_HFReordering__hf_updateDateAdded___block_invoke;
  v19 = &unk_277DF7AF8;
  v20 = v4;
  v7 = v4;
  v8 = [v6 na_map:&v16];

  v9 = MEMORY[0x277D2C900];
  v21[0] = v5;
  v21[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:{2, v16, v17, v18, v19}];
  v11 = [v10 na_arrayByFlattening];
  v12 = [v9 combineAllFutures:v11];
  v13 = [v12 flatMap:&__block_literal_global_241];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end