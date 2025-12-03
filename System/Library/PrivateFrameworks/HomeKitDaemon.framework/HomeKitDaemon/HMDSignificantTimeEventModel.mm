@interface HMDSignificantTimeEventModel
+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDSignificantTimeEventModel

+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message
{
  dictionaryCopy = dictionary;
  homeCopy = home;
  dCopy = d;
  messageCopy = message;
  v13 = *MEMORY[0x277CD2680];
  v14 = [dictionaryCopy dateComponentsFromDataForKey:*MEMORY[0x277CD2680]];
  if ([HMDTimeEvent isValidOffsetDateComponents:v14])
  {
    responseHandler2 = [HMDEventModel eventModelWithDictionary:dictionaryCopy home:homeCopy eventTriggerUUID:dCopy className:objc_opt_class() message:messageCopy];
    v16 = [dictionaryCopy hmf_stringForKey:*MEMORY[0x277CD2688]];
    if (HMIsValidSignificantEvent())
    {
      [responseHandler2 setSignificantEvent:v16];
      v17 = [dictionaryCopy hmf_dataForKey:v13];
      [responseHandler2 setOffset:v17];

      responseHandler2 = responseHandler2;
      v18 = responseHandler2;
LABEL_8:

      goto LABEL_9;
    }

    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v20];

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(responseHandler2 + 2))(responseHandler2, v16, 0);
    goto LABEL_7;
  }

  v18 = 0;
LABEL_9:

  return v18;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDSignificantTimeEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_102938 != -1)
  {
    dispatch_once(&properties_onceToken_102938, block);
  }

  v2 = properties__properties_102939;

  return v2;
}

void __42__HMDSignificantTimeEventModel_properties__block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___HMDSignificantTimeEventModel;
  v2 = objc_msgSendSuper2(&v10, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_102939;
  properties__properties_102939 = v3;

  v5 = properties__properties_102939;
  v11[0] = @"significantEvent";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[1] = @"offset";
  v12[0] = v6;
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v5 addEntriesFromDictionary:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if (![fieldCopy isEqualToString:@"offset"])
  {
    if (![fieldCopy isEqualToString:@"offsetSeconds"])
    {
      v17.receiver = self;
      v17.super_class = HMDSignificantTimeEventModel;
      null = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
      goto LABEL_9;
    }

    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"offset"])
    {
      v12 = MEMORY[0x277CCABB0];
      offset = [(HMDSignificantTimeEventModel *)self offset];
      decodeDateComponents = [offset decodeDateComponents];
      v15 = [v12 numberWithInteger:{HMDTimeOffsetFromDateComponents(decodeDateComponents, 0)}];

      goto LABEL_10;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_10;
  }

  if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"offset"])
  {
    goto LABEL_7;
  }

  null = [MEMORY[0x277CBEB68] null];
LABEL_9:
  v15 = null;
LABEL_10:

  return v15;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  fieldCopy = field;
  infoCopy = info;
  objectCopy = object;
  if ([fieldCopy isEqualToString:@"offset"])
  {
    offsetSeconds = [objectCopy offsetSeconds];

    objectCopy = HMDTimeOffsetToDateComponents([offsetSeconds integerValue], 0);

    if (objectCopy)
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:0];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v12 = ;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HMDSignificantTimeEventModel;
    v12 = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  v13 = v12;

  return v13;
}

@end