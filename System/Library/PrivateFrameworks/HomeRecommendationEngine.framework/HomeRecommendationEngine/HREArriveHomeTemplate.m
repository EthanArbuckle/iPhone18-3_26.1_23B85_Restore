@interface HREArriveHomeTemplate
- (HREArriveHomeTemplate)init;
- (id)_lazy_actionMap;
- (id)_lazy_allowedVariance;
@end

@implementation HREArriveHomeTemplate

- (HREArriveHomeTemplate)init
{
  v8.receiver = self;
  v8.super_class = HREArriveHomeTemplate;
  v2 = [(HREActionSetTemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HREActionSetTemplate *)v2 setActionSetType:*MEMORY[0x277CCF180]];
    v4 = objc_alloc(MEMORY[0x277D14728]);
    v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13A70]];
    [(HREActionSetTemplate *)v3 setIconDescriptor:v5];

    if (_MergedGlobals_19 != -1)
    {
      dispatch_once(&_MergedGlobals_19, &__block_literal_global_3_3);
    }

    v6 = qword_27F5F9770;
    [(HRETemplate *)v3 setIdentifier:v6];

    [(HRETemplate *)v3 setSortingPriority:0.0];
    [(HRETemplate *)v3 setStarterRank:2.0];
  }

  return v3;
}

void __29__HREArriveHomeTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9770;
  qword_27F5F9770 = @"arriveHome";
}

- (id)_lazy_actionMap
{
  v28[5] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277CD0EA0];
  v2 = *MEMORY[0x277CCF788];
  v25[0] = *MEMORY[0x277CCF9F0];
  v25[1] = v2;
  v26[0] = MEMORY[0x277CBEC38];
  v26[1] = &unk_28665D820;
  v3 = *MEMORY[0x277CCFA30];
  v25[2] = *MEMORY[0x277CCF8D8];
  v25[3] = v3;
  v26[2] = &unk_28665D838;
  v26[3] = &unk_28665D838;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v15 = [HRECharacteristicActionMap characteristicActionMap:v16];
  v28[0] = v15;
  v27[1] = *MEMORY[0x277CD0E30];
  v23 = *MEMORY[0x277CCFB50];
  v24 = &unk_28665D850;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v28[1] = v5;
  v27[2] = *MEMORY[0x277CD0E58];
  v21 = *MEMORY[0x277CCFB08];
  v22 = &unk_28665D868;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v7 = [HRECharacteristicActionMap characteristicActionMap:v6];
  v28[2] = v7;
  v27[3] = *MEMORY[0x277CD0ED8];
  v19 = *MEMORY[0x277CCFB60];
  v20 = &unk_28665D880;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v9 = [HRECharacteristicActionMap characteristicActionMap:v8];
  v28[3] = v9;
  v27[4] = *MEMORY[0x277CD0EB0];
  v17 = *MEMORY[0x277CCFB40];
  v18 = &unk_28665D868;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v11 = [HRECharacteristicActionMap characteristicActionMap:v10];
  v28[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
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