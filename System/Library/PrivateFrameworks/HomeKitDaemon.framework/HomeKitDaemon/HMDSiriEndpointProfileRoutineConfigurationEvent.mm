@interface HMDSiriEndpointProfileRoutineConfigurationEvent
- (HMDSiriEndpointProfileRoutineConfigurationEvent)initWithAccessoryCategoryType:(id)a3 profileFields:(id)a4 accessorySettingFields:(id)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDSiriEndpointProfileRoutineConfigurationEvent

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self accessoryCategoryType];
  v5 = [v3 initWithName:@"accessoryCategoryType" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self profileFields];
  v8 = [v6 initWithName:@"profileFields" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self accessorySettingFields];
  v11 = [v9 initWithName:@"accessorySettingFields" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = @"accessoryCategoryType";
  v4 = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self accessoryCategoryType];
  v14[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v3 addEntriesFromDictionary:v5];

  v6 = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self profileFields];
  v7 = [v6 serializeFields];
  [v3 addEntriesFromDictionary:v7];

  v8 = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self accessorySettingFields];
  v9 = [v8 serializeFields];
  [v3 addEntriesFromDictionary:v9];

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDSiriEndpointProfileRoutineConfigurationEvent)initWithAccessoryCategoryType:(id)a3 profileFields:(id)a4 accessorySettingFields:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    [(HMDNewPairedAccessoryServerInfo *)v16 .cxx_destruct];
    return result;
  }

  v18.receiver = self;
  v18.super_class = HMDSiriEndpointProfileRoutineConfigurationEvent;
  v13 = [(HMMLogEvent *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryCategoryType, a3);
    objc_storeStrong(&v14->_profileFields, a4);
    objc_storeStrong(&v14->_accessorySettingFields, a5);
  }

  return v14;
}

@end