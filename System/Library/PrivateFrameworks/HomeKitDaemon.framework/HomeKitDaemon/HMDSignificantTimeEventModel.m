@interface HMDSignificantTimeEventModel
+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
@end

@implementation HMDSignificantTimeEventModel

+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277CD2680];
  v14 = [v9 dateComponentsFromDataForKey:*MEMORY[0x277CD2680]];
  if ([HMDTimeEvent isValidOffsetDateComponents:v14])
  {
    v15 = [HMDEventModel eventModelWithDictionary:v9 home:v10 eventTriggerUUID:v11 className:objc_opt_class() message:v12];
    v16 = [v9 hmf_stringForKey:*MEMORY[0x277CD2688]];
    if (HMIsValidSignificantEvent())
    {
      [v15 setSignificantEvent:v16];
      v17 = [v9 hmf_dataForKey:v13];
      [v15 setOffset:v17];

      v15 = v15;
      v18 = v15;
LABEL_8:

      goto LABEL_9;
    }

    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v12 respondWithError:v20];

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v19 = [v12 responseHandler];

  if (v19)
  {
    v15 = [v12 responseHandler];
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v15 + 2))(v15, v16, 0);
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
  block[4] = a1;
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

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 isEqualToString:@"offset"])
  {
    if (![v9 isEqualToString:@"offsetSeconds"])
    {
      v17.receiver = self;
      v17.super_class = HMDSignificantTimeEventModel;
      v11 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
      goto LABEL_9;
    }

    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"offset"])
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = [(HMDSignificantTimeEventModel *)self offset];
      v14 = [v13 decodeDateComponents];
      v15 = [v12 numberWithInteger:{HMDTimeOffsetFromDateComponents(v14, 0)}];

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

  v11 = [MEMORY[0x277CBEB68] null];
LABEL_9:
  v15 = v11;
LABEL_10:

  return v15;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"offset"])
  {
    v11 = [v10 offsetSeconds];

    v10 = HMDTimeOffsetToDateComponents([v11 integerValue], 0);

    if (v10)
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
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
    v12 = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  v13 = v12;

  return v13;
}

@end