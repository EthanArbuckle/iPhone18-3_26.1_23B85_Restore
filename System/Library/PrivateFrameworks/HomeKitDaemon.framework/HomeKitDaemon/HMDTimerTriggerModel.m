@interface HMDTimerTriggerModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
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
  if (properties_onceToken_41905 != -1)
  {
    dispatch_once(&properties_onceToken_41905, block);
  }

  v2 = properties__properties_41906;

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
  v4 = properties__properties_41906;
  properties__properties_41906 = v3;

  v5 = properties__properties_41906;
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

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"fireDateTimeZone"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"fireDateTimeZone"])
    {
      v11 = [(HMDTimerTriggerModel *)self fireDateTimeZone];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 decodeTimeZone];
LABEL_15:
        v17 = v13;

        goto LABEL_26;
      }

      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if ([v9 isEqualToString:@"fireRepeatInterval"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"fireRepeatInterval"])
    {
      v14 = [(HMDTimerTriggerModel *)self fireRepeatInterval];
      v12 = v14;
      if (v14)
      {
        v13 = [v14 decodeDateComponents];
        goto LABEL_15;
      }

LABEL_14:
      v13 = [MEMORY[0x277CBEB68] null];
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  if ([v9 isEqualToString:@"recurrences"])
  {
    v15 = @"recurrences";
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"recurrenceDays"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"recurrences"])
    {
      goto LABEL_25;
    }

    v18 = MEMORY[0x277CCABB0];
    v19 = [(HMDTimerTriggerModel *)self recurrences];
    v20 = [v19 decodeArrayOfDateComponents];
    v21 = [v18 numberWithUnsignedInteger:HMDaysOfTheWeekFromDateComponents()];
LABEL_19:
    v17 = v21;

    goto LABEL_26;
  }

  if ([v9 isEqualToString:@"significantEventOffset"])
  {
    v15 = @"significantEventOffset";
LABEL_11:
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:v15])
    {
      v16 = [MEMORY[0x277CBEB68] null];
LABEL_13:
      v17 = v16;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (![v9 isEqualToString:@"significantEventOffsetSeconds"])
  {
    v24.receiver = self;
    v24.super_class = HMDTimerTriggerModel;
    v16 = [(HMDTriggerModel *)&v24 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
    goto LABEL_13;
  }

  if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"significantEventOffset"])
  {
    v22 = MEMORY[0x277CCABB0];
    v19 = [(HMDTimerTriggerModel *)self significantEventOffset];
    v20 = [v19 decodeDateComponents];
    v21 = [v22 numberWithInteger:{HMDTimeOffsetFromDateComponents(v20, 0)}];
    goto LABEL_19;
  }

LABEL_25:
  v17 = 0;
LABEL_26:

  return v17;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"fireDateTimeZone"])
  {
    v11 = [v8 fireDateTimeZone];
    goto LABEL_5;
  }

  if ([v9 isEqualToString:@"fireRepeatInterval"])
  {
    v11 = [v8 fireRepeatInterval];
LABEL_5:
    v12 = v11;
    if (v11)
    {
LABEL_6:
      v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
LABEL_13:
      v18 = v13;

      goto LABEL_14;
    }

LABEL_12:
    v13 = [MEMORY[0x277CBEB68] null];
    goto LABEL_13;
  }

  if ([v9 isEqualToString:@"recurrences"])
  {
    v14 = [v8 recurrenceDays];
    v15 = [v14 unsignedIntegerValue];

    if (v15)
    {
      v16 = MEMORY[0x277CCAAB0];
      v17 = HMDaysOfTheWeekToDateComponents();
      v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];

      goto LABEL_14;
    }

    v21 = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    if ([v9 isEqualToString:@"significantEventOffset"])
    {
      v19 = [v8 significantEventOffsetSeconds];
      v12 = HMDTimeOffsetToDateComponents([v19 integerValue], 0);

      if (v12)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

    v22.receiver = self;
    v22.super_class = HMDTimerTriggerModel;
    v21 = [(HMDTriggerModel *)&v22 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
  }

  v18 = v21;
LABEL_14:

  return v18;
}

@end