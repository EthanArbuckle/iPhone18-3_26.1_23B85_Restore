@interface HMDSignificantTimeEventModel
+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6;
+ (id)properties;
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
  if (properties_onceToken_66944 != -1)
  {
    dispatch_once(&properties_onceToken_66944, block);
  }

  v2 = properties__properties_66945;

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
  v4 = properties__properties_66945;
  properties__properties_66945 = v3;

  v5 = properties__properties_66945;
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

@end