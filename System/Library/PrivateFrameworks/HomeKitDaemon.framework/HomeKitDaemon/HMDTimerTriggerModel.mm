@interface HMDTimerTriggerModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)createPayload;
@end

@implementation HMDTimerTriggerModel

- (id)createPayload
{
  v18.receiver = self;
  v18.super_class = HMDTimerTriggerModel;
  createPayload = [(HMDTriggerModel *)&v18 createPayload];
  v4 = [createPayload mutableCopy];

  fireDate = [(HMDTimerTriggerModel *)self fireDate];

  if (fireDate)
  {
    fireDate2 = [(HMDTimerTriggerModel *)self fireDate];
    [v4 setObject:fireDate2 forKeyedSubscript:*MEMORY[0x277CD26C8]];
  }

  fireDateTimeZone = [(HMDTimerTriggerModel *)self fireDateTimeZone];

  if (fireDateTimeZone)
  {
    fireDateTimeZone2 = [(HMDTimerTriggerModel *)self fireDateTimeZone];
    [v4 setObject:fireDateTimeZone2 forKeyedSubscript:*MEMORY[0x277CD2718]];
  }

  fireRepeatInterval = [(HMDTimerTriggerModel *)self fireRepeatInterval];

  if (fireRepeatInterval)
  {
    fireRepeatInterval2 = [(HMDTimerTriggerModel *)self fireRepeatInterval];
    [v4 setObject:fireRepeatInterval2 forKeyedSubscript:*MEMORY[0x277CD26D0]];
  }

  recurrences = [(HMDTimerTriggerModel *)self recurrences];

  if (recurrences)
  {
    recurrences2 = [(HMDTimerTriggerModel *)self recurrences];
    [v4 setObject:recurrences2 forKeyedSubscript:*MEMORY[0x277CD26D8]];
  }

  significantEvent = [(HMDTimerTriggerModel *)self significantEvent];

  if (significantEvent)
  {
    significantEvent2 = [(HMDTimerTriggerModel *)self significantEvent];
    [v4 setObject:significantEvent2 forKeyedSubscript:*MEMORY[0x277CD2708]];
  }

  significantEventOffset = [(HMDTimerTriggerModel *)self significantEventOffset];

  if (significantEventOffset)
  {
    significantEventOffset2 = [(HMDTimerTriggerModel *)self significantEventOffset];
    [v4 setObject:significantEventOffset2 forKeyedSubscript:*MEMORY[0x277CD2710]];
  }

  return v4;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDTimerTriggerModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"fireDateTimeZone"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"fireDateTimeZone"])
    {
      fireDateTimeZone = [(HMDTimerTriggerModel *)self fireDateTimeZone];
      v12 = fireDateTimeZone;
      if (fireDateTimeZone)
      {
        decodeTimeZone = [fireDateTimeZone decodeTimeZone];
LABEL_15:
        v17 = decodeTimeZone;

        goto LABEL_26;
      }

      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if ([fieldCopy isEqualToString:@"fireRepeatInterval"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"fireRepeatInterval"])
    {
      fireRepeatInterval = [(HMDTimerTriggerModel *)self fireRepeatInterval];
      v12 = fireRepeatInterval;
      if (fireRepeatInterval)
      {
        decodeTimeZone = [fireRepeatInterval decodeDateComponents];
        goto LABEL_15;
      }

LABEL_14:
      decodeTimeZone = [MEMORY[0x277CBEB68] null];
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  if ([fieldCopy isEqualToString:@"recurrences"])
  {
    v15 = @"recurrences";
    goto LABEL_11;
  }

  if ([fieldCopy isEqualToString:@"recurrenceDays"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"recurrences"])
    {
      goto LABEL_25;
    }

    v18 = MEMORY[0x277CCABB0];
    recurrences = [(HMDTimerTriggerModel *)self recurrences];
    decodeArrayOfDateComponents = [recurrences decodeArrayOfDateComponents];
    v21 = [v18 numberWithUnsignedInteger:HMDaysOfTheWeekFromDateComponents()];
LABEL_19:
    v17 = v21;

    goto LABEL_26;
  }

  if ([fieldCopy isEqualToString:@"significantEventOffset"])
  {
    v15 = @"significantEventOffset";
LABEL_11:
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:v15])
    {
      null = [MEMORY[0x277CBEB68] null];
LABEL_13:
      v17 = null;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (![fieldCopy isEqualToString:@"significantEventOffsetSeconds"])
  {
    v24.receiver = self;
    v24.super_class = HMDTimerTriggerModel;
    null = [(HMDTriggerModel *)&v24 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
    goto LABEL_13;
  }

  if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"significantEventOffset"])
  {
    v22 = MEMORY[0x277CCABB0];
    recurrences = [(HMDTimerTriggerModel *)self significantEventOffset];
    decodeArrayOfDateComponents = [recurrences decodeDateComponents];
    v21 = [v22 numberWithInteger:{HMDTimeOffsetFromDateComponents(decodeArrayOfDateComponents, 0)}];
    goto LABEL_19;
  }

LABEL_25:
  v17 = 0;
LABEL_26:

  return v17;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"fireDateTimeZone"])
  {
    fireDateTimeZone = [objectCopy fireDateTimeZone];
    goto LABEL_5;
  }

  if ([fieldCopy isEqualToString:@"fireRepeatInterval"])
  {
    fireDateTimeZone = [objectCopy fireRepeatInterval];
LABEL_5:
    v12 = fireDateTimeZone;
    if (fireDateTimeZone)
    {
LABEL_6:
      null = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
LABEL_13:
      v18 = null;

      goto LABEL_14;
    }

LABEL_12:
    null = [MEMORY[0x277CBEB68] null];
    goto LABEL_13;
  }

  if ([fieldCopy isEqualToString:@"recurrences"])
  {
    recurrenceDays = [objectCopy recurrenceDays];
    unsignedIntegerValue = [recurrenceDays unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v16 = MEMORY[0x277CCAAB0];
      v17 = HMDaysOfTheWeekToDateComponents();
      v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];

      goto LABEL_14;
    }

    null2 = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    if ([fieldCopy isEqualToString:@"significantEventOffset"])
    {
      significantEventOffsetSeconds = [objectCopy significantEventOffsetSeconds];
      v12 = HMDTimeOffsetToDateComponents([significantEventOffsetSeconds integerValue], 0);

      if (v12)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

    v22.receiver = self;
    v22.super_class = HMDTimerTriggerModel;
    null2 = [(HMDTriggerModel *)&v22 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  v18 = null2;
LABEL_14:

  return v18;
}

@end