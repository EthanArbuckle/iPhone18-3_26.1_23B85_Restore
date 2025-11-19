@interface HMDEventTriggerModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (id)createPayload;
- (id)createPayloadWithCondition:(id)a3;
@end

@implementation HMDEventTriggerModel

- (id)createPayloadWithCondition:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HMDEventTriggerModel;
  v5 = [(HMDTriggerModel *)&v12 createPayload];
  v6 = [v5 mutableCopy];

  if (v4)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD2298]];
  }

  v8 = [(HMDEventTriggerModel *)self recurrences];
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD22C8]];

  v9 = [(HMDEventTriggerModel *)self executeOnce];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD22B8]];

  v10 = [v6 copy];

  return v10;
}

- (id)createPayload
{
  v12.receiver = self;
  v12.super_class = HMDEventTriggerModel;
  v3 = [(HMDTriggerModel *)&v12 createPayload];
  v4 = [v3 mutableCopy];

  v5 = [(HMDEventTriggerModel *)self evaluationCondition];

  if (v5)
  {
    v6 = [(HMDEventTriggerModel *)self evaluationCondition];
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2298]];
  }

  v7 = [(HMDEventTriggerModel *)self recurrences];

  if (v7)
  {
    v8 = [(HMDEventTriggerModel *)self recurrences];
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD22C8]];
  }

  v9 = [(HMDEventTriggerModel *)self executeOnce];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD22B8]];

  v10 = [v4 copy];

  return v10;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDEventTriggerModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_46652 != -1)
  {
    dispatch_once(&properties_onceToken_46652, block);
  }

  v2 = properties__properties_46653;

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
  v4 = properties__properties_46653;
  properties__properties_46653 = v3;

  v5 = properties__properties_46653;
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

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"evaluationCondition"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"evaluationCondition"])
    {
      v11 = [(HMDEventTriggerModel *)self evaluationCondition];
      if (v11)
      {
        [HMDPredicateUtilities unarchiveFromData:v11 error:0];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v16 = ;

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"recurrences"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"recurrences"])
    {
LABEL_11:
      v16 = 0;
      goto LABEL_16;
    }

    v12 = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    if ([v9 isEqualToString:@"recurrenceDays"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"recurrences"])
      {
        v13 = MEMORY[0x277CCABB0];
        v14 = [(HMDEventTriggerModel *)self recurrences];
        v15 = [v14 decodeArrayOfDateComponents];
        v16 = [v13 numberWithUnsignedInteger:HMDaysOfTheWeekFromDateComponents()];

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v18.receiver = self;
    v18.super_class = HMDEventTriggerModel;
    v12 = [(HMDTriggerModel *)&v18 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  v16 = v12;
LABEL_16:

  return v16;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"evaluationCondition"])
  {
    v11 = [v8 evaluationCondition];
    if (v11)
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v16 = ;

    goto LABEL_12;
  }

  if ([v9 isEqualToString:@"recurrences"])
  {
    v12 = [v8 recurrenceDays];
    v13 = [v12 unsignedIntegerValue];

    if (v13)
    {
      v14 = MEMORY[0x277CCAAB0];
      v15 = HMDaysOfTheWeekToDateComponents();
      v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];

      goto LABEL_12;
    }

    v17 = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = HMDEventTriggerModel;
    v17 = [(HMDTriggerModel *)&v19 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
  }

  v16 = v17;
LABEL_12:

  return v16;
}

@end