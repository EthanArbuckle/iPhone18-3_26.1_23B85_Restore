@interface HMDEventTriggerModel
+ (id)properties;
- (id)createPayload;
- (id)createPayloadWithCondition:(id)condition;
@end

@implementation HMDEventTriggerModel

- (id)createPayloadWithCondition:(id)condition
{
  conditionCopy = condition;
  v12.receiver = self;
  v12.super_class = HMDEventTriggerModel;
  createPayload = [(HMDTriggerModel *)&v12 createPayload];
  v6 = [createPayload mutableCopy];

  if (conditionCopy)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:conditionCopy requiringSecureCoding:1 error:0];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD2298]];
  }

  recurrences = [(HMDEventTriggerModel *)self recurrences];
  [v6 setObject:recurrences forKeyedSubscript:*MEMORY[0x277CD22C8]];

  executeOnce = [(HMDEventTriggerModel *)self executeOnce];
  [v6 setObject:executeOnce forKeyedSubscript:*MEMORY[0x277CD22B8]];

  v10 = [v6 copy];

  return v10;
}

- (id)createPayload
{
  v12.receiver = self;
  v12.super_class = HMDEventTriggerModel;
  createPayload = [(HMDTriggerModel *)&v12 createPayload];
  v4 = [createPayload mutableCopy];

  evaluationCondition = [(HMDEventTriggerModel *)self evaluationCondition];

  if (evaluationCondition)
  {
    evaluationCondition2 = [(HMDEventTriggerModel *)self evaluationCondition];
    [v4 setObject:evaluationCondition2 forKeyedSubscript:*MEMORY[0x277CD2298]];
  }

  recurrences = [(HMDEventTriggerModel *)self recurrences];

  if (recurrences)
  {
    recurrences2 = [(HMDEventTriggerModel *)self recurrences];
    [v4 setObject:recurrences2 forKeyedSubscript:*MEMORY[0x277CD22C8]];
  }

  executeOnce = [(HMDEventTriggerModel *)self executeOnce];
  [v4 setObject:executeOnce forKeyedSubscript:*MEMORY[0x277CD22B8]];

  v10 = [v4 copy];

  return v10;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDEventTriggerModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_31469 != -1)
  {
    dispatch_once(&properties_onceToken_31469, block);
  }

  v2 = properties__properties_31470;

  return v2;
}

void __34__HMDEventTriggerModel_properties__block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___HMDEventTriggerModel;
  v2 = objc_msgSendSuper2(&v11, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_31470;
  properties__properties_31470 = v3;

  v5 = properties__properties_31470;
  v12[0] = @"evaluationCondition";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[0] = v6;
  v12[1] = @"recurrences";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[1] = v7;
  v12[2] = @"executeOnce";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v5 addEntriesFromDictionary:v9];

  v10 = *MEMORY[0x277D85DE8];
}

@end