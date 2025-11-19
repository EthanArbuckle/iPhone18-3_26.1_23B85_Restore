@interface HREAutoLightsOnUnlockTemplate
- (HREAutoLightsOnUnlockTemplate)init;
- (id)_lazy_actionMap;
- (id)_lazy_allowedVariance;
@end

@implementation HREAutoLightsOnUnlockTemplate

- (HREAutoLightsOnUnlockTemplate)init
{
  v42[4] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = HREAutoLightsOnUnlockTemplate;
  v2 = [(HRECharacteristicTriggerTemplate *)&v37 init];
  if (v2)
  {
    v3 = [HRETypeValueTuple alloc];
    v36 = *MEMORY[0x277CCF838];
    v4 = [HRETypeValueTuple initWithType:v3 value:"initWithType:value:"];
    v42[0] = v4;
    v5 = [HRETypeValueTuple alloc];
    v6 = *MEMORY[0x277CCF800];
    v7 = [(HRETypeValueTuple *)v5 initWithType:*MEMORY[0x277CCF800] value:&unk_28665D898];
    v42[1] = v7;
    v8 = [HRETypeValueTuple alloc];
    v9 = *MEMORY[0x277CCF848];
    v10 = [MEMORY[0x277CD1CB0] numberRangeWithMinValue:&unk_28665D8B0];
    v11 = [(HRETypeValueTuple *)v8 initWithType:v9 value:v10];
    v42[2] = v11;
    v12 = [HRETypeValueTuple alloc];
    v13 = *MEMORY[0x277CCF7E8];
    v14 = [(HRETypeValueTuple *)v12 initWithType:*MEMORY[0x277CCF7E8] value:&unk_28665D8C8];
    v42[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [(HRECharacteristicTriggerTemplate *)v2 setTriggerCharacteristicValues:v15];

    v41[0] = v9;
    v41[1] = v6;
    v41[2] = v36;
    v41[3] = v13;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
    [(HRECharacteristicTriggerTemplate *)v2 setCharacteristicTypePriority:v16];

    v17 = MEMORY[0x277CBEB98];
    v18 = [HRERecommendableObjectTypeRule ruleWithRequiredType:*MEMORY[0x277CD0EA0]];
    v40[0] = v18;
    v19 = MEMORY[0x277CBEB98];
    v20 = *MEMORY[0x277CD0EB0];
    v21 = *MEMORY[0x277CD0E30];
    v39[0] = *MEMORY[0x277CD0EB0];
    v39[1] = v21;
    v22 = *MEMORY[0x277CD0E58];
    v39[2] = *MEMORY[0x277CD0E58];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
    v24 = [v19 setWithArray:v23];
    v25 = [HRERecommendableObjectTypeListRule ruleRequiringOneOfTypes:v24];
    v40[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v27 = [v17 setWithArray:v26];
    [(HRETemplate *)v2 setRules:v27];

    [(HRETemplate *)v2 setSplitStrategy:1];
    [(HRECharacteristicTriggerTemplate *)v2 setCharacteristicPerServiceRule:1];
    [(HRECharacteristicTriggerTemplate *)v2 setSingleRecommendationPerSplit:1];
    [(HRETemplate *)v2 setSortingPriority:4.0];
    [(HRETemplate *)v2 setStarterRank:-1.4];
    v28 = objc_alloc(MEMORY[0x277D14728]);
    v29 = [v28 initWithImageIdentifier:*MEMORY[0x277D13AF8]];
    [(HRETriggerTemplate *)v2 setDefaultIconDescriptor:v29];

    if (_MergedGlobals_21 != -1)
    {
      dispatch_once(&_MergedGlobals_21, &__block_literal_global_15_0);
    }

    v30 = qword_27F5F97A0;
    [(HRETemplate *)v2 setIdentifier:v30];

    v31 = MEMORY[0x277CBEB98];
    v38[0] = v20;
    v38[1] = v21;
    v38[2] = v22;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    v33 = [v31 setWithArray:v32];
    [(HREActionTemplate *)v2 setExtraInvolvedTypes:v33];
  }

  v34 = *MEMORY[0x277D85DE8];
  return v2;
}

void __37__HREAutoLightsOnUnlockTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F97A0;
  qword_27F5F97A0 = @"autoLightsOnUnlock";
}

- (id)_lazy_actionMap
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CD0EA0];
  v2 = *MEMORY[0x277CCF788];
  v9[0] = *MEMORY[0x277CCF9F0];
  v9[1] = v2;
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = &unk_28665D8E0;
  v3 = *MEMORY[0x277CCFA30];
  v9[2] = *MEMORY[0x277CCF8D8];
  v9[3] = v3;
  v10[2] = &unk_28665D8F8;
  v10[3] = &unk_28665D8F8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_lazy_allowedVariance
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [HREActionRangeVarianceRule rangeVarianceWithType:*MEMORY[0x277CCF788] min:1];
  v3 = [HRECharacteristicActionVarianceRule anyVarianceRuleForCharacteristicType:*MEMORY[0x277CCF8D8], v2];
  v9[1] = v3;
  v4 = [HRECharacteristicActionVarianceRule anyVarianceRuleForCharacteristicType:*MEMORY[0x277CCFA30]];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v6 = [HREActionVarianceCollection varianceRuleCollectionWithRules:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end