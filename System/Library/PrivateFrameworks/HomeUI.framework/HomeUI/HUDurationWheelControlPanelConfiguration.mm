@interface HUDurationWheelControlPanelConfiguration
+ (id)_valuesBetweenMinValue:(id)value maxValue:(id)maxValue stepValue:(id)stepValue;
- (HUControlPanelRule)rule;
- (id)_characteristicTypesFromControlPanelItem:(id)item;
- (id)sectionFooterForItem:(id)item forSourceItem:(id)sourceItem;
- (void)setupControlsForCell:(id)cell item:(id)item;
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

- (void)setupControlsForCell:(id)cell item:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v7 = objc_opt_class();
  v8 = cellCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

    v8 = v38;
LABEL_7:
    v11 = 0;
  }

  v14 = objc_opt_class();
  controlItems = [itemCopy controlItems];
  anyObject = [controlItems anyObject];
  if (anyObject)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = anyObject;
    }

    else
    {
      v17 = 0;
    }

    v18 = anyObject;
    if (v17)
    {
      goto LABEL_15;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler2 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class()}];
  }

  v18 = 0;
LABEL_15:

  v21 = MEMORY[0x277CCAA28];
  incrementalCharacteristicType = [v18 incrementalCharacteristicType];
  valueSource = [v18 valueSource];
  incrementalCharacteristicType2 = [v18 incrementalCharacteristicType];
  v25 = [valueSource metadataForCharacteristicType:incrementalCharacteristicType2];
  v26 = [v21 hf_valueFormatterForCharacteristicType:incrementalCharacteristicType withMetadata:v25 options:0];

  v27 = objc_alloc_init(HUWheelControlView);
  v28 = [itemCopy identifierForControlItem:v18];
  [(HUWheelControlView *)v27 setIdentifier:v28];

  v29 = objc_opt_class();
  minValue = [v18 minValue];
  maxValue = [v18 maxValue];
  stepValue = [v18 stepValue];
  v33 = [v29 _valuesBetweenMinValue:minValue maxValue:maxValue stepValue:stepValue];
  [(HUWheelControlView *)v27 setValues:v33];

  [(HUWheelControlView *)v27 setValueFormatter:v26];
  [(HUWheelControlView *)v27 setCanBeHighlighted:1];
  v34 = MEMORY[0x277CBEB98];
  latestResults = [v18 latestResults];
  v36 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];
  v37 = [v34 na_setWithSafeObject:v36];
  [(HUWheelControlView *)v27 setCustomValues:v37];

  [v11 setControlView:v27];
}

- (id)sectionFooterForItem:(id)item forSourceItem:(id)sourceItem
{
  service = [sourceItem service];
  serviceSubtype = [service serviceSubtype];

  if ([serviceSubtype isEqualToString:*MEMORY[0x277CD0DA8]])
  {
    v6 = @"HUControlPanelSectionFooterSetDurationIrrigation";
LABEL_9:
    v7 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
    goto LABEL_10;
  }

  if ([serviceSubtype isEqualToString:*MEMORY[0x277CD0DB0]])
  {
    v6 = @"HUControlPanelSectionFooterSetDurationShower";
    goto LABEL_9;
  }

  if ([serviceSubtype isEqualToString:*MEMORY[0x277CD0DC0]])
  {
    v6 = @"HUControlPanelSectionFooterSetDurationFaucet";
    goto LABEL_9;
  }

  if ([serviceSubtype isEqualToString:*MEMORY[0x277CD0DA0]])
  {
    v6 = @"HUControlPanelSectionFooterSetDurationGeneric";
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)_characteristicTypesFromControlPanelItem:(id)item
{
  v3 = MEMORY[0x277CBEB58];
  itemCopy = item;
  v5 = [v3 set];
  controlItems = [itemCopy controlItems];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__HUDurationWheelControlPanelConfiguration__characteristicTypesFromControlPanelItem___block_invoke;
  v9[3] = &unk_277DBF718;
  v7 = v5;
  v10 = v7;
  [controlItems na_each:v9];

  return v7;
}

void __85__HUDurationWheelControlPanelConfiguration__characteristicTypesFromControlPanelItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 characteristicOptions];
  v3 = [v4 allCharacteristicTypes];
  [v2 unionSet:v3];
}

+ (id)_valuesBetweenMinValue:(id)value maxValue:(id)maxValue stepValue:(id)stepValue
{
  valueCopy = value;
  maxValueCopy = maxValue;
  stepValueCopy = stepValue;
  unsignedIntegerValue = [stepValueCopy unsignedIntegerValue];
  unsignedIntegerValue2 = [maxValueCopy unsignedIntegerValue];
  v12 = unsignedIntegerValue2 - [valueCopy unsignedIntegerValue];
  if (v12 <= 0x12B)
  {
    v13 = v12 / 5u / unsignedIntegerValue * unsignedIntegerValue;
  }

  else
  {
    v13 = 300;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v15 = [v14 na_largerNumber:stepValueCopy];
  unsignedIntegerValue3 = [v15 unsignedIntegerValue];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue3];
  v18 = [valueCopy na_largerNumber:v17];
  unsignedIntegerValue4 = [v18 unsignedIntegerValue];

  unsignedIntegerValue5 = [maxValueCopy unsignedIntegerValue];
  array = [MEMORY[0x277CBEB18] array];
  while (unsignedIntegerValue4 <= unsignedIntegerValue5)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue4];
    [array addObject:v22];

    unsignedIntegerValue4 += unsignedIntegerValue3;
  }

  return array;
}

@end