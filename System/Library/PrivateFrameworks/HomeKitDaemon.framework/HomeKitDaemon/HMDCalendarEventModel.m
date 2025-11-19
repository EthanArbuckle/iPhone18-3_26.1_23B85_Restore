@interface HMDCalendarEventModel
+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
@end

@implementation HMDCalendarEventModel

+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277CD20E8];
  v14 = [v9 dateComponentsFromDataForKey:*MEMORY[0x277CD20E8]];
  if ([HMDTimeEvent isValidAbsoluteDateComponents:v14])
  {
    v15 = [HMDEventModel eventModelWithDictionary:v9 home:v10 eventTriggerUUID:v11 className:objc_opt_class() message:v12];
    v16 = [v9 hmf_dataForKey:v13];
    [v15 setFireDateComponents:v16];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDCalendarEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_14229 != -1)
  {
    dispatch_once(&properties_onceToken_14229, block);
  }

  v2 = properties__properties_14230;

  return v2;
}

void __35__HMDCalendarEventModel_properties__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDCalendarEventModel;
  v2 = objc_msgSendSuper2(&v9, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_14230;
  properties__properties_14230 = v3;

  v5 = properties__properties_14230;
  v10 = @"fireDateComponents";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"fireDateComponents"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"fireDateComponents"])
    {
      v11 = [(HMDCalendarEventModel *)self fireDateComponents];
      v12 = v11;
      if (v11)
      {
        [v11 decodeDateComponents];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v13 = ;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HMDCalendarEventModel;
    v13 = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  return v13;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"fireDateComponents"])
  {
    v11 = [v10 fireDateComponents];

    if (v11)
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v12 = ;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDCalendarEventModel;
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  return v12;
}

@end