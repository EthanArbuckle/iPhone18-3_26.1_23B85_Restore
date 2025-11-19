@interface HRETriggerTemplate
- (id)_subclass_triggerBuilderForRecommendation:(id)a3 withObjects:(id)a4;
- (id)iconDescriptorForRecommendation:(id)a3 withObjects:(id)a4;
- (id)triggerBuilderForRecommendation:(id)a3 withObjects:(id)a4;
@end

@implementation HRETriggerTemplate

- (id)triggerBuilderForRecommendation:(id)a3 withObjects:(id)a4
{
  v5 = [(HRETriggerTemplate *)self _subclass_triggerBuilderForRecommendation:a3 withObjects:a4];
  v6 = [(HRETemplate *)self title];
  [v5 setDisplayName:v6];

  return v5;
}

- (id)_subclass_triggerBuilderForRecommendation:(id)a3 withObjects:(id)a4
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  NSLog(&cfstr_DoesnTImplemen.isa, v6, v7);

  return 0;
}

- (id)iconDescriptorForRecommendation:(id)a3 withObjects:(id)a4
{
  v5 = a3;
  v6 = [(HRETriggerTemplate *)self iconDescriptorsByTriggerCharacteristic];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 triggerBuilders];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__HRETriggerTemplate_iconDescriptorForRecommendation_withObjects___block_invoke;
    v12[3] = &unk_2797767C0;
    v12[4] = self;
    v9 = [v8 na_flatMap:v12];

    if ([v9 count] == 1)
    {
      v10 = [v9 anyObject];

      goto LABEL_6;
    }
  }

  v10 = [(HRETriggerTemplate *)self defaultIconDescriptor];
LABEL_6:

  return v10;
}

id __66__HRETriggerTemplate_iconDescriptorForRecommendation_withObjects___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 characteristics];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__HRETriggerTemplate_iconDescriptorForRecommendation_withObjects___block_invoke_2;
    v10[3] = &unk_279776798;
    v10[4] = *(a1 + 32);
    v8 = [v7 na_map:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __66__HRETriggerTemplate_iconDescriptorForRecommendation_withObjects___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 iconDescriptorsByTriggerCharacteristic];
  v5 = [v3 characteristicType];

  v6 = [v4 objectForKey:v5];

  return v6;
}

@end