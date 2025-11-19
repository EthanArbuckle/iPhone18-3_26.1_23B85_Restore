@interface HMDIDSActivityRegistrationModel
+ (HMBModelInfiniteQuery)registeredDevicesQuery;
+ (id)hmbProperties;
+ (id)hmbQueries;
@end

@implementation HMDIDSActivityRegistrationModel

+ (id)hmbQueries
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 registeredDevicesQuery];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (HMBModelInfiniteQuery)registeredDevicesQuery
{
  if (registeredDevicesQuery_onceToken != -1)
  {
    dispatch_once(&registeredDevicesQuery_onceToken, &__block_literal_global_28_268326);
  }

  v3 = registeredDevicesQuery_query;

  return v3;
}

void __57__HMDIDSActivityRegistrationModel_registeredDevicesQuery__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v6 = @"subjectDeviceIdentifier";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"subjectDeviceIdentifier"];
  v7[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 queryWithSQLPredicate:@"subjectDeviceIdentifier == :subjectDeviceIdentifier" sequenceArgumentName:@"subjectDeviceIdentifier" indexedProperties:&unk_283E75CE0 arguments:v2];
  v4 = registeredDevicesQuery_query;
  registeredDevicesQuery_query = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_15 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_15, &__block_literal_global_18_268339);
  }

  v3 = hmbProperties_properties_16;

  return v3;
}

void __48__HMDIDSActivityRegistrationModel_hmbProperties__block_invoke()
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"subjectDeviceIdentifier";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v2 = [MEMORY[0x277D170C0] queryableField];
  v9 = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v4 = [v0 fieldWithClass:v1 options:v3];
  v10[1] = @"subActivities";
  v11[0] = v4;
  v5 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = hmbProperties_properties_16;
  hmbProperties_properties_16 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

@end