@interface HREAutoArriveHomeTemplate
- (HREAutoArriveHomeTemplate)init;
- (id)_lazy_actionMap;
- (id)_lazy_allowedVariance;
@end

@implementation HREAutoArriveHomeTemplate

- (HREAutoArriveHomeTemplate)init
{
  v8.receiver = self;
  v8.super_class = HREAutoArriveHomeTemplate;
  v2 = [(HRETemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HREPresenceTriggerTemplate *)v2 setPresenceType:3];
    [(HREPresenceTriggerTemplate *)v3 setPresenceUserType:2];
    if (_MergedGlobals_26 != -1)
    {
      dispatch_once(&_MergedGlobals_26, &__block_literal_global_3_7);
    }

    v4 = qword_27F5F98A0;
    [(HRETemplate *)v3 setIdentifier:v4];

    [(HRETemplate *)v3 setSortingPriority:0.1];
    [(HRETemplate *)v3 setStarterRank:1.4];
    v5 = objc_alloc(MEMORY[0x277D14728]);
    v6 = [v5 initWithImageIdentifier:*MEMORY[0x277D13A70]];
    [(HRETriggerTemplate *)v3 setDefaultIconDescriptor:v6];
  }

  return v3;
}

void __33__HREAutoArriveHomeTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F98A0;
  qword_27F5F98A0 = @"autoArriveHome";
}

- (id)_lazy_actionMap
{
  v31[5] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277CD0EA0];
  v2 = *MEMORY[0x277CCF788];
  v28[0] = *MEMORY[0x277CCF9F0];
  v28[1] = v2;
  v29[0] = MEMORY[0x277CBEC38];
  v29[1] = &unk_28665D958;
  v3 = *MEMORY[0x277CCFA30];
  v28[2] = *MEMORY[0x277CCF8D8];
  v28[3] = v3;
  v29[2] = &unk_28665D970;
  v29[3] = &unk_28665D970;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v19 = [HRECharacteristicActionMap characteristicActionMap:v20];
  v31[0] = v19;
  v30[1] = *MEMORY[0x277CD0E30];
  v26 = *MEMORY[0x277CCFB50];
  v27 = &unk_28665D988;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v17 = [HRECharacteristicActionMap characteristicActionMap:v18];
  v31[1] = v17;
  v30[2] = *MEMORY[0x277CD0E58];
  v24 = *MEMORY[0x277CCFB08];
  v25 = &unk_28665D9A0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v31[2] = v5;
  v30[3] = *MEMORY[0x277CD0ED8];
  v22 = *MEMORY[0x277CCFB60];
  v23 = &unk_28665D9B8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v7 = [HRECharacteristicActionMap characteristicActionMap:v6];
  v31[3] = v7;
  v8 = HREMatterRVCType();
  v30[4] = v8;
  v9 = [HREMatterCommandActionMap alloc];
  v10 = +[HREMatterCommandMap pauseCleaning];
  v21[0] = v10;
  v11 = +[HREMatterCommandMap goHome];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v13 = [(HREMatterCommandActionMap *)v9 initWithCommands:v12];
  v31[4] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:5];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
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