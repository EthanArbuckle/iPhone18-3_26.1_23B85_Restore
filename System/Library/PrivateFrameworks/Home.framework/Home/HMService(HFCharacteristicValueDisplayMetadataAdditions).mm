@interface HMService(HFCharacteristicValueDisplayMetadataAdditions)
+ (id)hf_allRequiredCharacteristicTypesForStandardServices;
+ (id)hf_requiredCharacteristicTypesForDisplayMetadataWithServiceType:()HFCharacteristicValueDisplayMetadataAdditions;
+ (id)hf_sensorCharacteristicTypeForServiceType:()HFCharacteristicValueDisplayMetadataAdditions;
- (id)hf_requiredCharacteristicTypesForDisplayMetadata;
@end

@implementation HMService(HFCharacteristicValueDisplayMetadataAdditions)

+ (id)hf_sensorCharacteristicTypeForServiceType:()HFCharacteristicValueDisplayMetadataAdditions
{
  v3 = a3;
  if (_MergedGlobals_250 != -1)
  {
    dispatch_once(&_MergedGlobals_250, &__block_literal_global_3_11);
  }

  v4 = qword_280E02F28;
  v5 = [v4 objectForKeyedSubscript:v3];
  if (!v5)
  {
    NSLog(&cfstr_NoCharacterist_0.isa, v3);
  }

  return v5;
}

+ (id)hf_requiredCharacteristicTypesForDisplayMetadataWithServiceType:()HFCharacteristicValueDisplayMetadataAdditions
{
  v43[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[HFServiceDescriptor alloc] initWithServiceType:v3 serviceSubtype:0 parentServiceDescriptor:0];
  v5 = [HFServiceState stateClassForServiceDescriptor:v4];
  if (v5)
  {
    requiredCharacteristicTypes = [(objc_class *)v5 requiredCharacteristicTypes];
    goto LABEL_15;
  }

  hf_sensorServiceTypes = [MEMORY[0x277CD1D90] hf_sensorServiceTypes];
  v8 = __HFSimplePowerStateServices_block_invoke();
  v9 = __HFSimpleActiveStateServices_block_invoke();
  v10 = __HFCurrentTargetPositionServices_block_invoke();
  if ([v3 isEqualToString:*MEMORY[0x277CD0DD0]])
  {
    goto LABEL_4;
  }

  if ([hf_sensorServiceTypes containsObject:v3])
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = [objc_opt_class() hf_sensorCharacteristicTypeForServiceType:v3];
    v43[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    requiredCharacteristicTypes = [v12 setWithArray:v14];

    goto LABEL_14;
  }

  if ([v8 containsObject:v3])
  {
    v15 = MEMORY[0x277CBEB98];
    v42 = *MEMORY[0x277CCF9F0];
    v16 = MEMORY[0x277CBEA60];
    v17 = &v42;
LABEL_12:
    v18 = 1;
LABEL_13:
    v19 = [v16 arrayWithObjects:v17 count:v18];
    requiredCharacteristicTypes = [v15 setWithArray:v19];

    goto LABEL_14;
  }

  if ([v9 containsObject:v3])
  {
    v15 = MEMORY[0x277CBEB98];
    v41 = *MEMORY[0x277CCF748];
    v16 = MEMORY[0x277CBEA60];
    v17 = &v41;
    goto LABEL_12;
  }

  if ([v10 containsObject:v3])
  {
    v15 = MEMORY[0x277CBEB98];
    v22 = *MEMORY[0x277CCFB50];
    v40[0] = *MEMORY[0x277CCF848];
    v40[1] = v22;
    v40[2] = *MEMORY[0x277CCF9A0];
    v16 = MEMORY[0x277CBEA60];
    v17 = v40;
LABEL_22:
    v18 = 3;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD0E58]])
  {
    v15 = MEMORY[0x277CBEB98];
    v23 = *MEMORY[0x277CCFB08];
    v39[0] = *MEMORY[0x277CCF800];
    v39[1] = v23;
    v39[2] = *MEMORY[0x277CCF9A0];
    v16 = MEMORY[0x277CBEA60];
    v17 = v39;
    goto LABEL_22;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD0EB0]])
  {
    v15 = MEMORY[0x277CBEB98];
    v24 = *MEMORY[0x277CCFB40];
    v38[0] = *MEMORY[0x277CCF838];
    v38[1] = v24;
    v16 = MEMORY[0x277CBEA60];
    v17 = v38;
LABEL_27:
    v18 = 2;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD0ED8]])
  {
    v15 = MEMORY[0x277CBEB98];
    v25 = *MEMORY[0x277CCFB60];
    v37[0] = *MEMORY[0x277CCF858];
    v37[1] = v25;
    v16 = MEMORY[0x277CBEA60];
    v17 = v37;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD0F30]])
  {
    v15 = MEMORY[0x277CBEB98];
    v26 = *MEMORY[0x277CCFB68];
    v36[0] = *MEMORY[0x277CCF868];
    v36[1] = v26;
    v27 = *MEMORY[0x277CCFB20];
    v36[2] = *MEMORY[0x277CCF818];
    v36[3] = v27;
    v16 = MEMORY[0x277CBEA60];
    v17 = v36;
LABEL_32:
    v18 = 4;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD0E60]])
  {
    v15 = MEMORY[0x277CBEB98];
    v28 = *MEMORY[0x277CCF868];
    v35[0] = *MEMORY[0x277CCF748];
    v35[1] = v28;
    v29 = *MEMORY[0x277CCFB18];
    v35[2] = *MEMORY[0x277CCF810];
    v35[3] = v29;
    v16 = MEMORY[0x277CBEA60];
    v17 = v35;
    goto LABEL_32;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD0DD8]])
  {
    v15 = MEMORY[0x277CBEB98];
    v30 = *MEMORY[0x277CCF7F8];
    v34[0] = *MEMORY[0x277CCF748];
    v34[1] = v30;
    v16 = MEMORY[0x277CBEA60];
    v17 = v34;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD0E68]])
  {
    v15 = MEMORY[0x277CBEB98];
    v31 = *MEMORY[0x277CCF850];
    v33[0] = *MEMORY[0x277CCF748];
    v33[1] = v31;
    v32 = *MEMORY[0x277CCFB30];
    v33[2] = *MEMORY[0x277CCF828];
    v33[3] = v32;
    v16 = MEMORY[0x277CBEA60];
    v17 = v33;
    goto LABEL_32;
  }

  if (![v3 isEqualToString:*MEMORY[0x277CD0EF8]] && !objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0F00]))
  {
    if (![v3 isEqualToString:*MEMORY[0x277CD0E78]])
    {
      NSLog(&cfstr_UnknownOrUnimp.isa, v3);
      requiredCharacteristicTypes = 0;
      goto LABEL_14;
    }

    v11 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF918]];
    goto LABEL_5;
  }

LABEL_4:
  v11 = [MEMORY[0x277CBEB98] set];
LABEL_5:
  requiredCharacteristicTypes = v11;
LABEL_14:

LABEL_15:
  v20 = *MEMORY[0x277D85DE8];

  return requiredCharacteristicTypes;
}

+ (id)hf_allRequiredCharacteristicTypesForStandardServices
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __112__HMService_HFCharacteristicValueDisplayMetadataAdditions__hf_allRequiredCharacteristicTypesForStandardServices__block_invoke;
  v3[3] = &__block_descriptor_40_e5__8__0l;
  v3[4] = self;
  v1 = __112__HMService_HFCharacteristicValueDisplayMetadataAdditions__hf_allRequiredCharacteristicTypesForStandardServices__block_invoke(v3);

  return v1;
}

- (id)hf_requiredCharacteristicTypesForDisplayMetadata
{
  v2 = objc_opt_class();
  serviceType = [self serviceType];
  v4 = [v2 hf_requiredCharacteristicTypesForDisplayMetadataWithServiceType:serviceType];

  return v4;
}

@end