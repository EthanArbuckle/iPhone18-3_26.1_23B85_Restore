@interface HMDEventTriggerModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
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

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"evaluationCondition"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"evaluationCondition"])
    {
      evaluationCondition = [(HMDEventTriggerModel *)self evaluationCondition];
      if (evaluationCondition)
      {
        [HMDPredicateUtilities unarchiveFromData:evaluationCondition error:0];
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

  if ([fieldCopy isEqualToString:@"recurrences"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"recurrences"])
    {
LABEL_11:
      v16 = 0;
      goto LABEL_16;
    }

    null = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    if ([fieldCopy isEqualToString:@"recurrenceDays"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"recurrences"])
      {
        v13 = MEMORY[0x277CCABB0];
        recurrences = [(HMDEventTriggerModel *)self recurrences];
        decodeArrayOfDateComponents = [recurrences decodeArrayOfDateComponents];
        v16 = [v13 numberWithUnsignedInteger:HMDaysOfTheWeekFromDateComponents()];

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v18.receiver = self;
    v18.super_class = HMDEventTriggerModel;
    null = [(HMDTriggerModel *)&v18 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  v16 = null;
LABEL_16:

  return v16;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"evaluationCondition"])
  {
    evaluationCondition = [objectCopy evaluationCondition];
    if (evaluationCondition)
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:evaluationCondition requiringSecureCoding:1 error:0];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v16 = ;

    goto LABEL_12;
  }

  if ([fieldCopy isEqualToString:@"recurrences"])
  {
    recurrenceDays = [objectCopy recurrenceDays];
    unsignedIntegerValue = [recurrenceDays unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v14 = MEMORY[0x277CCAAB0];
      v15 = HMDaysOfTheWeekToDateComponents();
      v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];

      goto LABEL_12;
    }

    null = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = HMDEventTriggerModel;
    null = [(HMDTriggerModel *)&v19 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  v16 = null;
LABEL_12:

  return v16;
}

@end