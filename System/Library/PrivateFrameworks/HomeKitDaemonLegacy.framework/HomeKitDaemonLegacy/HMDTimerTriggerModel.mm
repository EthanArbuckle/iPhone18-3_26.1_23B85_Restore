@interface HMDTimerTriggerModel
+ (id)properties;
- (id)createPayload;
@end

@implementation HMDTimerTriggerModel

- (id)createPayload
{
  v18.receiver = self;
  v18.super_class = HMDTimerTriggerModel;
  v3 = [(HMDTriggerModel *)&v18 createPayload];
  v4 = [v3 mutableCopy];

  v5 = [(HMDTimerTriggerModel *)self fireDate];

  if (v5)
  {
    v6 = [(HMDTimerTriggerModel *)self fireDate];
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD26C8]];
  }

  v7 = [(HMDTimerTriggerModel *)self fireDateTimeZone];

  if (v7)
  {
    v8 = [(HMDTimerTriggerModel *)self fireDateTimeZone];
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD2718]];
  }

  v9 = [(HMDTimerTriggerModel *)self fireRepeatInterval];

  if (v9)
  {
    v10 = [(HMDTimerTriggerModel *)self fireRepeatInterval];
    [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277CD26D0]];
  }

  v11 = [(HMDTimerTriggerModel *)self recurrences];

  if (v11)
  {
    v12 = [(HMDTimerTriggerModel *)self recurrences];
    [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD26D8]];
  }

  v13 = [(HMDTimerTriggerModel *)self significantEvent];

  if (v13)
  {
    v14 = [(HMDTimerTriggerModel *)self significantEvent];
    [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD2708]];
  }

  v15 = [(HMDTimerTriggerModel *)self significantEventOffset];

  if (v15)
  {
    v16 = [(HMDTimerTriggerModel *)self significantEventOffset];
    [v4 setObject:v16 forKeyedSubscript:*MEMORY[0x277CD2710]];
  }

  return v4;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDTimerTriggerModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_27944 != -1)
  {
    dispatch_once(&properties_onceToken_27944, block);
  }

  v2 = properties__properties_27945;

  return v2;
}

void __34__HMDTimerTriggerModel_properties__block_invoke(uint64_t a1)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v14.receiver = *(a1 + 32);
  v14.super_class = &OBJC_METACLASS___HMDTimerTriggerModel;
  v2 = objc_msgSendSuper2(&v14, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_27945;
  properties__properties_27945 = v3;

  v5 = properties__properties_27945;
  v15[0] = @"fireDate";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[0] = v6;
  v15[1] = @"fireDateTimeZone";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[1] = v7;
  v15[2] = @"significantEvent";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[2] = v8;
  v15[3] = @"significantEventOffset";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[3] = v9;
  v15[4] = @"fireRepeatInterval";
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[4] = v10;
  v15[5] = @"recurrences";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];
  [v5 addEntriesFromDictionary:v12];

  v13 = *MEMORY[0x277D85DE8];
}

@end