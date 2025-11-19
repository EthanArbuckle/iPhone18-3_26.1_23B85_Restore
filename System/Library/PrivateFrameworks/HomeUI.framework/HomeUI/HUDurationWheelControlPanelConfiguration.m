@interface HUDurationWheelControlPanelConfiguration
+ (id)_valuesBetweenMinValue:(id)a3 maxValue:(id)a4 stepValue:(id)a5;
- (HUControlPanelRule)rule;
- (id)_characteristicTypesFromControlPanelItem:(id)a3;
- (id)sectionFooterForItem:(id)a3 forSourceItem:(id)a4;
- (void)setupControlsForCell:(id)a3 item:(id)a4;
@end

@implementation HUDurationWheelControlPanelConfiguration

- (HUControlPanelRule)rule
{
  v2 = [HUControlPanelFilterRule ruleWithFilter:&__block_literal_global_187_0];
  [v2 setPriority:100.0];

  return v2;
}

uint64_t __48__HUDurationWheelControlPanelConfiguration_rule__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 controlItems];
  v3 = [v2 anyObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 incrementalCharacteristicType];
    v5 = [v4 isEqualToString:*MEMORY[0x277CCFA60]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setupControlsForCell:(id)a3 item:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = v5;
  v38 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = v38;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v8 = v38;
  v11 = v38;
  if (!v10)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

    v8 = v38;
LABEL_7:
    v11 = 0;
  }

  v14 = objc_opt_class();
  v15 = [v6 controlItems];
  v16 = [v15 anyObject];
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v16;
    if (v17)
    {
      goto LABEL_15;
    }

    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class()}];
  }

  v18 = 0;
LABEL_15:

  v21 = MEMORY[0x277CCAA28];
  v22 = [v18 incrementalCharacteristicType];
  v23 = [v18 valueSource];
  v24 = [v18 incrementalCharacteristicType];
  v25 = [v23 metadataForCharacteristicType:v24];
  v26 = [v21 hf_valueFormatterForCharacteristicType:v22 withMetadata:v25 options:0];

  v27 = objc_alloc_init(HUWheelControlView);
  v28 = [v6 identifierForControlItem:v18];
  [(HUWheelControlView *)v27 setIdentifier:v28];

  v29 = objc_opt_class();
  v30 = [v18 minValue];
  v31 = [v18 maxValue];
  v32 = [v18 stepValue];
  v33 = [v29 _valuesBetweenMinValue:v30 maxValue:v31 stepValue:v32];
  [(HUWheelControlView *)v27 setValues:v33];

  [(HUWheelControlView *)v27 setValueFormatter:v26];
  [(HUWheelControlView *)v27 setCanBeHighlighted:1];
  v34 = MEMORY[0x277CBEB98];
  v35 = [v18 latestResults];
  v36 = [v35 objectForKeyedSubscript:*MEMORY[0x277D13818]];
  v37 = [v34 na_setWithSafeObject:v36];
  [(HUWheelControlView *)v27 setCustomValues:v37];

  [v11 setControlView:v27];
}

- (id)sectionFooterForItem:(id)a3 forSourceItem:(id)a4
{
  v4 = [a4 service];
  v5 = [v4 serviceSubtype];

  if ([v5 isEqualToString:*MEMORY[0x277CD0DA8]])
  {
    v6 = @"HUControlPanelSectionFooterSetDurationIrrigation";
LABEL_9:
    v7 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
    goto LABEL_10;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CD0DB0]])
  {
    v6 = @"HUControlPanelSectionFooterSetDurationShower";
    goto LABEL_9;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CD0DC0]])
  {
    v6 = @"HUControlPanelSectionFooterSetDurationFaucet";
    goto LABEL_9;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CD0DA0]])
  {
    v6 = @"HUControlPanelSectionFooterSetDurationGeneric";
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)_characteristicTypesFromControlPanelItem:(id)a3
{
  v3 = MEMORY[0x277CBEB58];
  v4 = a3;
  v5 = [v3 set];
  v6 = [v4 controlItems];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__HUDurationWheelControlPanelConfiguration__characteristicTypesFromControlPanelItem___block_invoke;
  v9[3] = &unk_277DBF718;
  v7 = v5;
  v10 = v7;
  [v6 na_each:v9];

  return v7;
}

void __85__HUDurationWheelControlPanelConfiguration__characteristicTypesFromControlPanelItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 characteristicOptions];
  v3 = [v4 allCharacteristicTypes];
  [v2 unionSet:v3];
}

+ (id)_valuesBetweenMinValue:(id)a3 maxValue:(id)a4 stepValue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 unsignedIntegerValue];
  v11 = [v8 unsignedIntegerValue];
  v12 = v11 - [v7 unsignedIntegerValue];
  if (v12 <= 0x12B)
  {
    v13 = v12 / 5u / v10 * v10;
  }

  else
  {
    v13 = 300;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v15 = [v14 na_largerNumber:v9];
  v16 = [v15 unsignedIntegerValue];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  v18 = [v7 na_largerNumber:v17];
  v19 = [v18 unsignedIntegerValue];

  v20 = [v8 unsignedIntegerValue];
  v21 = [MEMORY[0x277CBEB18] array];
  while (v19 <= v20)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    [v21 addObject:v22];

    v19 += v16;
  }

  return v21;
}

@end