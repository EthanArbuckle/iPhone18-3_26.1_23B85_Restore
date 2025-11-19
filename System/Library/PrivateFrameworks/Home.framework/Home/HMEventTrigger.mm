@interface HMEventTrigger
@end

@implementation HMEventTrigger

uint64_t __62__HMEventTrigger_HFDebugging__hf_stateDumpBuilderWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 weekday];

  return [v2 numberWithInteger:v3];
}

uint64_t __96__HMEventTrigger_NaturalLanguage__hf_naturalLanguageNameWithOptions_events_recurrences_forUser___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __96__HMEventTrigger_NaturalLanguage__hf_naturalLanguageNameWithOptions_events_recurrences_forUser___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __96__HMEventTrigger_NaturalLanguage__hf_naturalLanguageNameWithOptions_events_recurrences_forUser___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = [v2 characteristicType];

  return v3;
}

uint64_t __96__HMEventTrigger_NaturalLanguage__hf_naturalLanguageNameWithOptions_events_recurrences_forUser___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 characteristic];
  v4 = [v3 characteristicType];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __98__HMEventTrigger_NaturalLanguage__hf_naturalLanguageNameWithOptions_characteristics_triggerValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristicType];
  if ([v4 isEqualToString:*MEMORY[0x277CCF7E8]])
  {
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v3 characteristicType];
    v5 = [v6 containsObject:v7];
  }

  return v5;
}

uint64_t __105__HMEventTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_sensorCharacteristics_triggerValue___block_invoke(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 characteristicType];

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *MEMORY[0x277CCF9A8];
  v21[0] = *MEMORY[0x277CCF978];
  v21[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v7 = [v3 characteristicType];
  v8 = [v6 containsObject:v7];

  v9 = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
  v10 = [v3 characteristicType];
  v11 = [v9 containsObject:v10];

  if (v11)
  {
    goto LABEL_5;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  v12 = MEMORY[0x277CD1970];
  v13 = [v3 characteristicType];
  v14 = [v12 hf_abnormalValueForSensorCharacteristicType:v13];
  v15 = [v14 isEqual:*(a1 + 32)];

  if (v15)
  {
LABEL_5:
    v16 = *(a1 + 40);
    v17 = [v3 characteristicType];
    v18 = [v16 containsObject:v17];
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __108__HMEventTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_nonSensorCharacteristics_triggerValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_containedServices];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

uint64_t __105__HMEventTrigger_NaturalLanguage__hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

uint64_t __130__HMEventTrigger_NaturalLanguage__hf_triggerValueNaturalLanguageDescriptionWithCharacteristics_triggerValue_visibleTriggerValues___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

uint64_t __134__HMEventTrigger_NaturalLanguage__hf_triggerRangeValueNaturalLanguageDescriptionWithCharacteristics_triggerValueRange_thresholdValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1970];
  v3 = a2;
  v4 = [v2 hf_valueRangeCharacteristicTypes];
  v5 = [v3 characteristicType];

  v6 = [v4 containsObject:v5];
  return v6;
}

uint64_t __129__HMEventTrigger_NaturalLanguage__hf_triggerValueNaturalLanguageDescriptionWithCharacteristics_triggerValueRange_thresholdValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

uint64_t __107__HMEventTrigger_NaturalLanguage__hf_triggerRangeTypeWithCharacteristics_triggerValueRange_thresholdValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

uint64_t __107__HMEventTrigger_NaturalLanguage__hf_triggerRangeTypeWithCharacteristics_triggerValueRange_thresholdValue___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_minimumTriggerValue];
  v3 = [*(a1 + 32) hf_maximumTriggerValue];
  v4 = [*(a1 + 40) maxValue];
  if (v4)
  {
  }

  else
  {
    v11 = [*(a1 + 40) minValue];

    if (v11)
    {
      goto LABEL_13;
    }
  }

  v5 = [*(a1 + 40) minValue];
  if (v5)
  {
  }

  else
  {
    v12 = [*(a1 + 40) maxValue];

    if (v12)
    {
LABEL_15:
      v10 = 1;
      goto LABEL_16;
    }
  }

  v6 = [*(a1 + 40) minValue];
  v7 = [v6 compare:v2];

  v8 = [*(a1 + 40) maxValue];
  v9 = [v8 compare:v3];

  if (!v7 && v9 == -1)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_16;
  }

  if (!v9 && v7 == 1)
  {
    goto LABEL_15;
  }

  if (*(a1 + 48))
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

LABEL_16:

  return v10;
}

uint64_t __89__HMEventTrigger_NaturalLanguage___hf_naturalLanguageDetailsSentenceElementsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __109__HMEventTrigger_NaturalLanguage__hf_naturalLanguageDetailsWithRecurrences_conditions_endEvents_withOptions___block_invoke_2()
{
  v0 = objc_alloc_init(HFListFormatter);
  v1 = qword_280E02E58;
  qword_280E02E58 = v0;
}

id __126__HMEventTrigger_NaturalLanguage___hf_naturalLanguageDetailsSentenceElementsWithRecurrences_conditions_endEvents_withOptions___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 home];
  v6 = [HFConditionNaturalLanguageOptions optionsForCondition:v4 inHome:v5 formattingContext:a1[5] formattingStyle:a1[6]];

  v7 = [v4 hf_naturalLanguageSummaryWithOptions:v6];

  v8 = [v7 conditionTitle];
  if ([v8 length])
  {
    v9 = [v7 conditionTitle];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __126__HMEventTrigger_NaturalLanguage___hf_naturalLanguageDetailsSentenceElementsWithRecurrences_conditions_endEvents_withOptions___block_invoke_3()
{
  v0 = objc_alloc_init(HFListFormatter);
  v1 = qword_280E02E68;
  qword_280E02E68 = v0;
}

uint64_t __126__HMEventTrigger_NaturalLanguage___hf_naturalLanguageDetailsSentenceElementsWithRecurrences_conditions_endEvents_withOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __59__HMEventTrigger_HFAdditions__hf_requiresConfirmationToRun__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __57__HMEventTrigger_HFEventTriggerAdditions__hf_triggerType__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __57__HMEventTrigger_HFEventTriggerAdditions__hf_triggerType__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __57__HMEventTrigger_HFEventTriggerAdditions__hf_triggerType__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __57__HMEventTrigger_HFEventTriggerAdditions__hf_triggerType__block_invoke_390(uint64_t a1, void *a2)
{
  v3 = [a2 characteristic];
  v4 = [v3 characteristicType];

  if (v4)
  {
    v5 = [*(a1 + 32) containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __69__HMEventTrigger_HFEventTriggerAdditions__hf_isHomeAppCreatedTrigger__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v13 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v13;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 characteristic];
  v7 = [v6 service];

  v8 = [MEMORY[0x277CD1D90] hf_programmableSwitchServiceTypes];
  v9 = [v7 serviceType];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v7 accessory];
    [v11 na_safeAddObject:v12];
  }
}

void __63__HMEventTrigger_HFEventTriggerAdditions__hf_designateTrigger___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v13 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v13;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 characteristic];
  v7 = [v6 service];

  v8 = [MEMORY[0x277CD1D90] hf_programmableSwitchServiceTypes];
  v9 = [v7 serviceType];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v7 accessory];
    [v11 na_safeAddObject:v12];
  }
}

void __63__HMEventTrigger_HFEventTriggerAdditions__hf_designateTrigger___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) applicationData];
  v4 = [v3 objectForKey:@"HFDesignatedTriggerAppDataKey"];
  v5 = [v4 mutableCopy];

  if (v5)
  {
LABEL_4:
    v6 = *(a1 + 48);
    if (*(a1 + 56) == 1)
    {
      [v5 addObject:v6];
    }

    else
    {
      [v5 removeObject:v6];
    }

    [v3 setObject:v5 forKey:@"HFDesignatedTriggerAppDataKey"];
    [*(a1 + 32) hf_updateApplicationData:v3 handleError:1 completionHandler:v7];

    goto LABEL_8;
  }

  if (*(a1 + 56))
  {
    v5 = objc_opt_new();
    goto LABEL_4;
  }

  NSLog(&cfstr_TriggerIsAlrea.isa, *(a1 + 40));
  v7[2](v7, 0);
LABEL_8:
}

id __69__HMEventTrigger_HFEventTriggerAdditions__hf_characteristicsInEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    v3 = [v2 performSelector:sel_characteristic];
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __95__HMEventTrigger_HFEventTriggerAdditions__hf_allTriggerValuesForCharacteristic_similarToValue___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_282524450, &unk_282524468, &unk_282524480, 0}];
  v1 = qword_280E03348;
  qword_280E03348 = v0;
}

void __95__HMEventTrigger_HFEventTriggerAdditions__hf_allTriggerValuesForCharacteristic_similarToValue___block_invoke_2_417()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_282524450, &unk_282524480, 0}];
  v1 = qword_280E03358;
  qword_280E03358 = v0;
}

void __95__HMEventTrigger_HFEventTriggerAdditions__hf_allTriggerValuesForCharacteristic_similarToValue___block_invoke_4()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_282524450, &unk_282524480, &unk_282524498, 0}];
  v1 = qword_280E03368;
  qword_280E03368 = v0;
}

@end