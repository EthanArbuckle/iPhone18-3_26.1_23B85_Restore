@interface HRECharacteristicTriggerTemplate
- (HRECharacteristicTriggerTemplate)init;
- (id)_subclass_triggerBuilderForRecommendation:(id)recommendation withObjects:(id)objects;
@end

@implementation HRECharacteristicTriggerTemplate

- (HRECharacteristicTriggerTemplate)init
{
  v5.receiver = self;
  v5.super_class = HRECharacteristicTriggerTemplate;
  v2 = [(HRETemplate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HRECharacteristicTriggerTemplate *)v2 setCharacteristicPerServiceRule:0];
    [(HRECharacteristicTriggerTemplate *)v3 setEnforcePriority:0];
    [(HRECharacteristicTriggerTemplate *)v3 setAllowMultipleEventsFeature:0];
    [(HRECharacteristicTriggerTemplate *)v3 setSingleRecommendationPerSplit:0];
  }

  return v3;
}

- (id)_subclass_triggerBuilderForRecommendation:(id)recommendation withObjects:(id)objects
{
  v26[1] = *MEMORY[0x277D85DE8];
  recommendationCopy = recommendation;
  objectsCopy = objects;
  v8 = objc_alloc_init(HRERecommendationEmptyTriggerBuilderContext);
  v9 = objc_alloc(MEMORY[0x277D14668]);
  home = [recommendationCopy home];
  v11 = [v9 initWithHome:home context:v8];

  splitCharacteristic = [recommendationCopy splitCharacteristic];

  if (splitCharacteristic)
  {
    v13 = MEMORY[0x277CBEB98];
    splitCharacteristic2 = [recommendationCopy splitCharacteristic];
    v26[0] = splitCharacteristic2;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v16 = [v13 setWithArray:v15];

LABEL_5:
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_4;
    v23[3] = &unk_2797766A0;
    v23[4] = self;
    v17 = v11;
    v24 = v17;
    [v16 na_each:v23];
    characteristics = [v17 characteristics];
    v19 = [characteristics count];

    if (v19)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_9;
  }

  if ([(HRECharacteristicTriggerTemplate *)self allowMultipleEventsFeature])
  {
    splitCharacteristic2 = [objectsCopy na_flatMap:&__block_literal_global_1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_2;
    v25[3] = &unk_279776320;
    v25[4] = self;
    v16 = [splitCharacteristic2 na_filter:v25];
    goto LABEL_5;
  }

  v20 = 0;
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) triggerCharacteristicValues];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_3;
  v8[3] = &unk_279776650;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  v4 = [*(a1 + 32) characteristicType];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNotificationEnabled])
  {
    v4 = [*(a1 + 32) triggerCharacteristicValues];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_5;
    v15[3] = &unk_279776650;
    v5 = v3;
    v16 = v5;
    v6 = [v4 na_firstObjectPassingTest:v15];

    v7 = [v6 value];
    v8 = [MEMORY[0x277CBEB58] set];
    if (v7)
    {
      v9 = [MEMORY[0x277CD19F8] hf_allTriggerValuesForCharacteristic:v5 similarToValue:v7];
      if ([v9 count])
      {
        [v8 unionSet:v9];
      }

      [v8 addObject:v7];
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_6;
    v11[3] = &unk_279776678;
    v12 = *(a1 + 40);
    v13 = v5;
    v14 = v7;
    v10 = v7;
    [v8 na_each:v11];
  }
}

uint64_t __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  v4 = [*(a1 + 32) characteristicType];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __90__HRECharacteristicTriggerTemplate__subclass_triggerBuilderForRecommendation_withObjects___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) characteristicInterface];
    [v6 setCharacteristic:*(a1 + 40) triggerValueRange:v5];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v6 = [*(a1 + 32) characteristicInterface];
    [v6 setCharacteristic:*(a1 + 40) triggerValue:*(a1 + 48)];
  }

LABEL_9:
}

@end