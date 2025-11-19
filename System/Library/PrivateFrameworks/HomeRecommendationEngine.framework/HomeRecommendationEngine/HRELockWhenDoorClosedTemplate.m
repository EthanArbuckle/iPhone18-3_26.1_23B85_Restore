@interface HRELockWhenDoorClosedTemplate
- (HRELockWhenDoorClosedTemplate)init;
- (id)_lazy_actionMap;
@end

@implementation HRELockWhenDoorClosedTemplate

- (HRELockWhenDoorClosedTemplate)init
{
  v31[2] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = HRELockWhenDoorClosedTemplate;
  v2 = [(HRECharacteristicTriggerTemplate *)&v27 init];
  v3 = v2;
  if (v2)
  {
    [(HRETemplate *)v2 setSplitStrategy:1];
    v4 = *MEMORY[0x277CCF7E8];
    v5 = [HRETypeValueTuple type:*MEMORY[0x277CCF7E8] value:&unk_28665D9D0];
    v31[0] = v5;
    v6 = *MEMORY[0x277CCF848];
    v7 = [HRETypeValueTuple type:*MEMORY[0x277CCF848] value:&unk_28665D9E8];
    v31[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [(HRECharacteristicTriggerTemplate *)v3 setTriggerCharacteristicValues:v8];

    v30[0] = v4;
    v30[1] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    [(HRECharacteristicTriggerTemplate *)v3 setCharacteristicTypePriority:v9];

    [(HRECharacteristicTriggerTemplate *)v3 setEnforcePriority:1];
    [(HRECharacteristicTriggerTemplate *)v3 setSingleRecommendationPerSplit:1];
    v10 = MEMORY[0x277CBEB98];
    v11 = *MEMORY[0x277CD0EB0];
    v12 = [HRERecommendableObjectTypeRule ruleWithRequiredType:*MEMORY[0x277CD0EB0]];
    v29[0] = v12;
    v13 = *MEMORY[0x277CD0E30];
    v14 = [HRERecommendableObjectTypeRule ruleWithRequiredType:*MEMORY[0x277CD0E30]];
    v29[1] = v14;
    v15 = [HRERecommendableObjectCountRule ruleWithAccessoryType:v11 allowedCount:1, 1];
    v29[2] = v15;
    v16 = [HRERecommendableObjectCountRule ruleWithAccessoryType:v13 allowedCount:0, 2];
    v29[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    v18 = [v10 setWithArray:v17];
    [(HRETemplate *)v3 setRules:v18];

    if (_MergedGlobals_28 != -1)
    {
      dispatch_once(&_MergedGlobals_28, &__block_literal_global_11_1);
    }

    v19 = qword_27F5F9920;
    [(HRETemplate *)v3 setIdentifier:v19];

    [(HRETemplate *)v3 setSortingPriority:4.0];
    [(HRETemplate *)v3 setStarterRank:-1.4];
    v20 = objc_alloc(MEMORY[0x277D14440]);
    v21 = [v20 initWithPackageIdentifier:*MEMORY[0x277D13700] state:*MEMORY[0x277D13768]];
    [(HRETriggerTemplate *)v3 setDefaultIconDescriptor:v21];

    v22 = MEMORY[0x277CBEB98];
    v28[0] = v11;
    v28[1] = v13;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v24 = [v22 setWithArray:v23];
    [(HREActionTemplate *)v3 setExtraInvolvedTypes:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v3;
}

void __37__HRELockWhenDoorClosedTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9920;
  qword_27F5F9920 = @"lockWhenDoorClosed";
}

- (id)_lazy_actionMap
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CD0EB0];
  v7 = *MEMORY[0x277CCFB40];
  v8 = &unk_28665DA00;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v3 = [HRECharacteristicActionMap characteristicActionMap:v2];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end