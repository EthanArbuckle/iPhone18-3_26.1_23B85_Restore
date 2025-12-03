@interface HMDCalendarEventModel
+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDCalendarEventModel

+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message
{
  dictionaryCopy = dictionary;
  homeCopy = home;
  dCopy = d;
  messageCopy = message;
  v13 = *MEMORY[0x277CD20E8];
  v14 = [dictionaryCopy dateComponentsFromDataForKey:*MEMORY[0x277CD20E8]];
  if ([HMDTimeEvent isValidAbsoluteDateComponents:v14])
  {
    v15 = [HMDEventModel eventModelWithDictionary:dictionaryCopy home:homeCopy eventTriggerUUID:dCopy className:objc_opt_class() message:messageCopy];
    v16 = [dictionaryCopy hmf_dataForKey:v13];
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
  block[4] = self;
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

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"fireDateComponents"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"fireDateComponents"])
    {
      fireDateComponents = [(HMDCalendarEventModel *)self fireDateComponents];
      v12 = fireDateComponents;
      if (fireDateComponents)
      {
        [fireDateComponents decodeDateComponents];
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
    v13 = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v13;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  fieldCopy = field;
  infoCopy = info;
  objectCopy = object;
  if ([fieldCopy isEqualToString:@"fireDateComponents"])
  {
    fireDateComponents = [objectCopy fireDateComponents];

    if (fireDateComponents)
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:fireDateComponents requiringSecureCoding:1 error:0];
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
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return v12;
}

@end