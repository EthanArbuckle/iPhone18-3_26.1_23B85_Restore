@interface HMCharacteristic(Additions)
+ (id)_hf_alarmCharacteristicTypeToAbnormalValueMap;
+ (id)_hf_valueRangeCharacteristicTypeToAbnormalValueMap;
+ (id)_hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap;
+ (id)_hf_visibleLightLevelTriggerValues;
+ (id)hf_abnormalValueForAlarmCharacteristicType:()Additions;
+ (id)hf_abnormalValueForSensorCharacteristicType:()Additions;
+ (id)hf_alarmCharacteristicTypes;
+ (id)hf_associatedCharacteristicTypeForCharacteristicType:()Additions;
+ (id)hf_characteristicSortComparator;
+ (id)hf_continuousValueRangeCharacteristicTypes;
+ (id)hf_currentStateCharacteristicTypeForTargetStateCharacteristicType:()Additions;
+ (id)hf_defaultAbnormalValueForValueRangeSensorCharacteristicType:()Additions;
+ (id)hf_descriptionForCharacteristicType:()Additions;
+ (id)hf_powerStateCharacteristicTypes;
+ (id)hf_sensingCharacteristicTypes;
+ (id)hf_targetStateCharacteristicTypeForCurrentStateCharacteristicType:()Additions;
+ (id)hf_valueRangeCharacteristicTypes;
+ (uint64_t)_hf_indexOfSortedValues:()Additions closestToValue:top:bottom:;
+ (uint64_t)hf_indexOfSortedValues:()Additions closestToValue:;
+ (uint64_t)hf_shouldCaptureCharacteristicTypeInActionSets:()Additions;
+ (uint64_t)hf_sortPriorityForCharacteristicType:()Additions;
- (HFMultiStateValueSet)hf_programmableSwitchValidValueSet;
- (id)_hf_lightLevelVisibleTriggerValues;
- (id)_hf_stepValue;
- (id)_hf_triggerValuesWithMinStepValue:()Additions;
- (id)hf_associatedCharacteristicType;
- (id)hf_characteristicTypeDescription;
- (id)hf_defaultValue;
- (id)hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:()Additions;
- (id)hf_eventTriggers;
- (id)hf_eventTriggersForTriggerValue:()Additions;
- (id)hf_formattedValueUpdatedTime;
- (id)hf_home;
- (id)hf_maximumTriggerValue;
- (id)hf_minimumTriggerValue;
- (id)hf_programmableSwitchTriggerValueToEventTriggersMap;
- (id)hf_thresholdValueForRange:()Additions;
- (id)hf_triggerValues;
- (id)hf_valueAfterTriggerValue:()Additions;
- (id)hf_valueBeforeTriggerValue:()Additions;
- (id)hf_visibleTriggerValueClosestToValue:()Additions;
- (id)hf_visibleTriggerValues;
- (uint64_t)hf_isProgrammableSwitchInputEventConfigured;
- (uint64_t)hf_isReadable;
- (uint64_t)hf_isWritable;
- (uint64_t)hf_shouldCaptureInActionSets;
- (uint64_t)hf_sortPriority;
@end

@implementation HMCharacteristic(Additions)

+ (id)hf_powerStateCharacteristicTypes
{
  if (_MergedGlobals_294 != -1)
  {
    dispatch_once(&_MergedGlobals_294, &__block_literal_global_3_26);
  }

  v1 = qword_280E038B0;

  return v1;
}

+ (id)hf_valueRangeCharacteristicTypes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HMCharacteristic_Additions__hf_valueRangeCharacteristicTypes__block_invoke;
  v3[3] = &__block_descriptor_40_e5__8__0l;
  v3[4] = a1;
  v1 = __63__HMCharacteristic_Additions__hf_valueRangeCharacteristicTypes__block_invoke(v3);

  return v1;
}

+ (id)hf_continuousValueRangeCharacteristicTypes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__HMCharacteristic_Additions__hf_continuousValueRangeCharacteristicTypes__block_invoke;
  v3[3] = &__block_descriptor_40_e5__8__0l;
  v3[4] = a1;
  v1 = __73__HMCharacteristic_Additions__hf_continuousValueRangeCharacteristicTypes__block_invoke(v3);

  return v1;
}

+ (id)hf_alarmCharacteristicTypes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__HMCharacteristic_Additions__hf_alarmCharacteristicTypes__block_invoke;
  v3[3] = &__block_descriptor_40_e5__8__0l;
  v3[4] = a1;
  v1 = __58__HMCharacteristic_Additions__hf_alarmCharacteristicTypes__block_invoke(v3);

  return v1;
}

+ (id)hf_sensingCharacteristicTypes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__HMCharacteristic_Additions__hf_sensingCharacteristicTypes__block_invoke;
  v3[3] = &__block_descriptor_40_e5__8__0l;
  v3[4] = a1;
  v1 = __60__HMCharacteristic_Additions__hf_sensingCharacteristicTypes__block_invoke(v3);

  return v1;
}

+ (id)hf_abnormalValueForAlarmCharacteristicType:()Additions
{
  v4 = a3;
  v5 = [a1 _hf_alarmCharacteristicTypeToAbnormalValueMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (id)hf_defaultAbnormalValueForValueRangeSensorCharacteristicType:()Additions
{
  v4 = a3;
  v5 = [a1 _hf_valueRangeCharacteristicTypeToAbnormalValueMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (id)hf_abnormalValueForSensorCharacteristicType:()Additions
{
  v4 = a3;
  v5 = [a1 hf_abnormalValueForAlarmCharacteristicType:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 hf_defaultAbnormalValueForValueRangeSensorCharacteristicType:v4];
  }

  v8 = v7;

  return v8;
}

+ (id)_hf_alarmCharacteristicTypeToAbnormalValueMap
{
  if (qword_280E038F8 != -1)
  {
    dispatch_once(&qword_280E038F8, &__block_literal_global_8_8);
  }

  v1 = qword_280E03900;

  return v1;
}

+ (id)_hf_valueRangeCharacteristicTypeToAbnormalValueMap
{
  if (qword_280E03908 != -1)
  {
    dispatch_once(&qword_280E03908, &__block_literal_global_17_7);
  }

  v1 = qword_280E03910;

  return v1;
}

+ (id)_hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap
{
  if (qword_280E03918 != -1)
  {
    dispatch_once(&qword_280E03918, &__block_literal_global_28_5);
  }

  v1 = qword_280E03920;

  return v1;
}

- (id)hf_characteristicTypeDescription
{
  v2 = objc_opt_class();
  v3 = [a1 characteristicType];
  v4 = [v2 hf_descriptionForCharacteristicType:v3];

  return v4;
}

+ (id)hf_descriptionForCharacteristicType:()Additions
{
  v3 = a3;
  v4 = [objc_opt_class() localizedDescriptionForCharacteristicType:v3];

  return v4;
}

- (uint64_t)hf_isWritable
{
  v1 = [a1 properties];
  v2 = [v1 containsObject:*MEMORY[0x277CCF740]];

  return v2;
}

- (uint64_t)hf_isReadable
{
  v1 = [a1 properties];
  v2 = [v1 containsObject:*MEMORY[0x277CCF728]];

  return v2;
}

- (id)hf_formattedValueUpdatedTime
{
  if (qword_280E03930 != -1)
  {
    dispatch_once(&qword_280E03930, &__block_literal_global_32_4);
  }

  v2 = [a1 valueUpdatedTime];
  if (v2)
  {
    v3 = qword_280E03928;
    v4 = [a1 valueUpdatedTime];
    v5 = [v3 stringFromDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hf_defaultValue
{
  v1 = [a1 metadata];
  v2 = [v1 format];
  if ([v2 isEqualToString:*MEMORY[0x277CCF6B0]])
  {
    v3 = MEMORY[0x277CBEC28];
  }

  else if ([v1 hf_isNumeric])
  {
    v4 = [v1 minimumValue];
    v5 = v4;
    v6 = &unk_282525630;
    if (v4)
    {
      v6 = v4;
    }

    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hf_associatedCharacteristicType
{
  v2 = objc_opt_class();
  v3 = [a1 characteristicType];
  v4 = [v2 hf_associatedCharacteristicTypeForCharacteristicType:v3];

  return v4;
}

+ (id)hf_associatedCharacteristicTypeForCharacteristicType:()Additions
{
  v4 = a3;
  v5 = [a1 hf_currentStateCharacteristicTypeForTargetStateCharacteristicType:v4];
  if (!v5)
  {
    v5 = [a1 hf_targetStateCharacteristicTypeForCurrentStateCharacteristicType:v4];
  }

  return v5;
}

+ (id)hf_targetStateCharacteristicTypeForCurrentStateCharacteristicType:()Additions
{
  v3 = qword_280E03940;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03940, &__block_literal_global_36_2);
  }

  v5 = [qword_280E03938 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)hf_currentStateCharacteristicTypeForTargetStateCharacteristicType:()Additions
{
  v3 = qword_280E03950;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03950, &__block_literal_global_38_3);
  }

  v5 = [qword_280E03948 objectForKeyedSubscript:v4];

  return v5;
}

+ (uint64_t)hf_sortPriorityForCharacteristicType:()Additions
{
  v3 = qword_280E03960;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03960, &__block_literal_global_40_5);
  }

  v5 = [qword_280E03958 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_282524BD0;
  }

  v7 = [v6 integerValue];

  return v7;
}

- (uint64_t)hf_sortPriority
{
  v2 = objc_opt_class();
  v3 = [a1 characteristicType];
  v4 = [v2 hf_sortPriorityForCharacteristicType:v3];

  return v4;
}

+ (id)hf_characteristicSortComparator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__HMCharacteristic_Additions__hf_characteristicSortComparator__block_invoke;
  v4[3] = &__block_descriptor_48_e11_q24__0_8_16l;
  v4[4] = a1;
  v4[5] = a2;
  v2 = _Block_copy(v4);

  return v2;
}

+ (uint64_t)hf_shouldCaptureCharacteristicTypeInActionSets:()Additions
{
  v3 = a3;
  if (qword_280E03968 != -1)
  {
    dispatch_once(&qword_280E03968, &__block_literal_global_85_1);
  }

  v4 = qword_280E03970;
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (uint64_t)hf_shouldCaptureInActionSets
{
  if (![a1 hf_isReadable] || !objc_msgSend(a1, "hf_isWritable"))
  {
    return 0;
  }

  v2 = objc_opt_class();
  v3 = [a1 characteristicType];
  v4 = [v2 hf_shouldCaptureCharacteristicTypeInActionSets:v3];

  return v4;
}

- (uint64_t)hf_isProgrammableSwitchInputEventConfigured
{
  v2 = [a1 hf_programmableSwitchValidValueSet];
  v3 = [v2 allValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__HMCharacteristic_Additions__hf_isProgrammableSwitchInputEventConfigured__block_invoke;
  v6[3] = &unk_277DF3770;
  v6[4] = a1;
  v4 = [v3 na_any:v6];

  return v4;
}

- (HFMultiStateValueSet)hf_programmableSwitchValidValueSet
{
  v2 = [a1 metadata];
  v3 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:v2];
  v4 = [a1 characteristicType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCF910]];

  if (v5)
  {
    objc_initWeak(&location, a1);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__HMCharacteristic_Additions__hf_programmableSwitchValidValueSet__block_invoke;
    aBlock[3] = &unk_277DFF1F8;
    objc_copyWeak(&v22, &location);
    v6 = _Block_copy(aBlock);
    v7 = [v2 validValues];
    v8 = [v2 validValues];
    if (![v8 count])
    {
      v9 = [v2 format];
      v10 = [v9 isEqualToString:*MEMORY[0x277CCF6E8]];

      if (!v10)
      {
LABEL_12:
        [(HFMultiStateValueSet *)v3 addValuesFromArray:v7 displayResultsGenerator:v6];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
        goto LABEL_14;
      }

      v11 = [v2 minimumValue];
      v12 = v11;
      if (!v11)
      {
        v11 = &unk_282524BD0;
      }

      v13 = [v11 integerValue];

      v14 = [v2 maximumValue];
      v15 = v14;
      if (!v14)
      {
        v14 = &unk_282524BE8;
      }

      v16 = [v14 integerValue];

      v17 = [v2 stepValue];
      v18 = v17;
      if (!v17)
      {
        v17 = &unk_282524B70;
      }

      v19 = [v17 integerValue];

      [MEMORY[0x277CBEA60] hf_arrayWithNumbersInRange:v13 stride:{v16 - v13, v19}];
      v7 = v8 = v7;
    }

    goto LABEL_12;
  }

  NSLog(&cfstr_MethodCalledFr.isa, 0);
LABEL_14:

  return v3;
}

- (id)hf_home
{
  v1 = [a1 service];
  v2 = [v1 accessory];
  v3 = [v2 home];

  return v3;
}

- (id)hf_eventTriggers
{
  v2 = objc_opt_new();
  v3 = [a1 hf_home];
  v4 = [v3 triggers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__HMCharacteristic_Additions__hf_eventTriggers__block_invoke;
  v10[3] = &unk_277DFF248;
  v10[4] = a1;
  v5 = [v4 na_filter:v10];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  [v2 addObjectsFromArray:v8];

  return v2;
}

- (id)hf_eventTriggersForTriggerValue:()Additions
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"HMCharacteristic+HFAdditions.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"triggerValue"}];
  }

  v6 = objc_opt_new();
  v7 = [a1 hf_home];
  v8 = [v7 triggers];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMCharacteristic_Additions__hf_eventTriggersForTriggerValue___block_invoke;
  v16[3] = &unk_277DFF298;
  v16[4] = a1;
  v17 = v5;
  v9 = v5;
  v10 = [v8 na_filter:v16];
  v11 = v10;
  v12 = MEMORY[0x277CBEBF8];
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  [v6 addObjectsFromArray:v13];

  return v6;
}

- (id)hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:()Additions
{
  v1 = [a1 hf_eventTriggersForTriggerValue:?];
  v2 = [v1 na_filter:&__block_literal_global_111_0];
  if ([v2 count] >= 2)
  {
    NSLog(&cfstr_HomeappSomehow.isa);
  }

  if ([v2 count] == 1)
  {
    v3 = [v2 anyObject];
  }

  else
  {
    v4 = [v1 mutableCopy];
    [v4 minusSet:v2];
    if ([v4 count] == 1)
    {
      v3 = [v4 anyObject];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)hf_programmableSwitchTriggerValueToEventTriggersMap
{
  v2 = [a1 hf_eventTriggers];
  if ([v2 count])
  {
    v3 = objc_opt_new();
    v4 = [a1 hf_programmableSwitchValidValueSet];
    v5 = [v4 sortedValues];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__HMCharacteristic_Additions__hf_programmableSwitchTriggerValueToEventTriggersMap__block_invoke;
    v10[3] = &unk_277DFF330;
    v6 = v3;
    v11 = v6;
    v12 = v2;
    [v5 enumerateObjectsUsingBlock:v10];

    v7 = v12;
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)hf_valueBeforeTriggerValue:()Additions
{
  v4 = a3;
  v5 = [a1 hf_triggerValues];
  v6 = [objc_opt_class() hf_indexOfSortedValues:v5 closestToValue:v4];

  if ((v6 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:?];
  }

  return v7;
}

- (id)hf_valueAfterTriggerValue:()Additions
{
  v4 = a3;
  v5 = [a1 hf_triggerValues];
  v6 = [objc_opt_class() hf_indexOfSortedValues:v5 closestToValue:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v6 >= [v5 count] - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v6 + 1];
  }

  return v7;
}

- (id)hf_thresholdValueForRange:()Additions
{
  v4 = a3;
  v5 = [v4 minValue];
  v6 = [v4 maxValue];

  if (v5 != v6)
  {
    v7 = [v4 minValue];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [a1 hf_minimumTriggerValue];
    }

    v12 = v9;

    v14 = [v4 maxValue];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [a1 hf_maximumTriggerValue];
    }

    v17 = v16;

    v18 = [a1 hf_minimumTriggerValue];
    if ([v12 compare:v18])
    {
    }

    else
    {
      v20 = [a1 hf_maximumTriggerValue];
      v21 = [v17 compare:v20];

      if (v21)
      {
        v22 = [a1 hf_valueAfterTriggerValue:v17];
        goto LABEL_19;
      }
    }

    v19 = [a1 hf_maximumTriggerValue];
    if ([v17 compare:v19])
    {

LABEL_14:
      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v23 = [a1 hf_minimumTriggerValue];
    v24 = [v12 compare:v23];

    if (!v24)
    {
      goto LABEL_14;
    }

    v22 = [a1 hf_valueBeforeTriggerValue:v12];
LABEL_19:
    v13 = v22;
    goto LABEL_20;
  }

  v10 = [a1 characteristicType];
  v11 = [v10 isEqualToString:*MEMORY[0x277CCF770]];

  v12 = [v4 minValue];
  if (!v11)
  {
    goto LABEL_22;
  }

  v13 = [a1 hf_valueAfterTriggerValue:v12];
LABEL_21:

  v12 = v13;
LABEL_22:

  return v12;
}

- (id)hf_minimumTriggerValue
{
  v2 = [a1 characteristicType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF770]];

  if (v3)
  {
    v4 = &unk_282524C00;
  }

  else
  {
    v5 = [a1 metadata];
    v4 = [v5 minimumValue];
  }

  return v4;
}

- (id)hf_maximumTriggerValue
{
  v1 = [a1 metadata];
  v2 = [v1 maximumValue];

  return v2;
}

- (id)hf_triggerValues
{
  v2 = [a1 metadata];
  if (([v2 hf_isNumeric] & 1) == 0 || (objc_msgSend(a1, "hf_minimumTriggerValue"), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_10;
  }

  v4 = v3;
  v5 = [a1 hf_maximumTriggerValue];

  if (!v5)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v6 = [a1 metadata];
  v7 = [v6 format];
  v8 = [v7 isEqualToString:*MEMORY[0x277CCF6B8]];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [a1 _hf_stepValue];
    [v10 floatValue];
    v12 = v11;

    v13 = [a1 hf_minimumTriggerValue];
    [v13 floatValue];
    v15 = v14;

    v16 = [a1 hf_maximumTriggerValue];
    [v16 floatValue];
    v18 = v17;

    for (; v15 <= v18; v15 = v12 + v15)
    {
      *&v19 = v15;
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      [v9 addObject:v20];
    }

    if ((v15 - v12) < v18)
    {
      *&v19 = v18;
      v21 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      [v9 addObject:v21];
    }
  }

  else
  {
    v9 = [a1 _hf_triggerValuesWithMinStepValue:0];
  }

LABEL_11:

  return v9;
}

- (id)hf_visibleTriggerValueClosestToValue:()Additions
{
  v4 = a3;
  v5 = [a1 metadata];
  v6 = [v5 hf_isNumeric];

  if (!v6)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v7 = [a1 characteristicType];
  v8 = [v7 isEqualToString:*MEMORY[0x277CCF830]];

  if (!v8)
  {
LABEL_5:
    v9 = [a1 hf_minimumTriggerValue];
    v11 = [a1 hf_maximumTriggerValue];
    v12 = v11;
    v13 = 0;
    if (v9 && v11)
    {
      if ([v4 compare:v9] == -1)
      {
        v14 = v9;
      }

      else
      {
        if ([v4 compare:v12] != 1)
        {
          v15 = [objc_opt_class() _hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap];
          v16 = [a1 characteristicType];
          v17 = [v15 objectForKeyedSubscript:v16];

          if (v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = [a1 _hf_stepValue];
          }

          v19 = v18;
          v20 = [a1 metadata];
          v21 = [v20 format];
          v22 = [v21 isEqualToString:*MEMORY[0x277CCF6B8]];

          if (v22)
          {
            [v4 floatValue];
            v24 = v23;
            [v9 floatValue];
            v26 = v24 - v25;
            [v19 floatValue];
            v28 = roundf(v26 / v27);
            [v19 floatValue];
            v30 = v29 * v28;
            [v9 floatValue];
            *&v32 = v31 + v30;
            [MEMORY[0x277CCABB0] numberWithFloat:v32];
          }

          else
          {
            v33 = [v4 intValue];
            v34 = (v33 - [v9 intValue]);
            [v19 floatValue];
            v36 = llroundf(v34 / v35);
            v37 = [v19 intValue];
            v38 = [v9 intValue];
            [MEMORY[0x277CCABB0] numberWithInt:v38 + v37 * v36];
          }
          v13 = ;

          goto LABEL_21;
        }

        v14 = v12;
      }

      v13 = v14;
    }

LABEL_21:

    goto LABEL_22;
  }

  v9 = [a1 _hf_lightLevelVisibleTriggerValues];
  v10 = [objc_opt_class() hf_indexOfSortedValues:v9 closestToValue:v4];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_5;
  }

  v13 = [v9 objectAtIndex:v10];
LABEL_22:

LABEL_23:

  return v13;
}

- (id)hf_visibleTriggerValues
{
  v2 = [a1 characteristicType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF830]];

  if (v3)
  {
    v4 = [a1 _hf_lightLevelVisibleTriggerValues];
  }

  else
  {
    v5 = [objc_opt_class() _hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap];
    v6 = [a1 characteristicType];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      [a1 _hf_triggerValuesWithMinStepValue:v7];
    }

    else
    {
      [a1 hf_triggerValues];
    }
    v4 = ;
  }

  return v4;
}

+ (uint64_t)hf_indexOfSortedValues:()Additions closestToValue:
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [a1 _hf_indexOfSortedValues:v6 closestToValue:v7 top:objc_msgSend(v6 bottom:{"count") - 1, 0}];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

+ (uint64_t)_hf_indexOfSortedValues:()Additions closestToValue:top:bottom:
{
  v10 = a3;
  v11 = a4;
  if ([v10 count])
  {
    v12 = vcvtpd_u64_f64(vcvtd_n_f64_u64(a5 - a6, 1uLL) + a6);
    v13 = [v10 objectAtIndexedSubscript:v12];
    v14 = v13;
    if (a5 - a6 <= 1)
    {
      v15 = v12 - 1;
      v16 = v12 + 1;
      v17 = [v10 count] - 1;
      if (v12 + 1 < v17)
      {
        v17 = v12 + 1;
      }

      while (v15 <= v17)
      {
        v18 = [v10 objectAtIndexedSubscript:v15];
        v19 = [v10 objectAtIndexedSubscript:v12];
        [v18 doubleValue];
        v21 = v20;
        [v11 doubleValue];
        v23 = vabdd_f64(v21, v22);
        [v19 doubleValue];
        v25 = v24;
        [v11 doubleValue];
        if (v23 < vabdd_f64(v25, v26))
        {
          v12 = v15;
        }

        ++v15;
        v17 = [v10 count] - 1;
        if (v16 < v17)
        {
          v17 = v16;
        }
      }

      goto LABEL_17;
    }

    v27 = [v13 compare:v11];
    if (v27 == -1)
    {
      v28 = a1;
      v29 = v10;
      v30 = v11;
      v31 = a5;
      v32 = v12;
    }

    else
    {
      if (v27 != 1)
      {
LABEL_17:

        goto LABEL_18;
      }

      v28 = a1;
      v29 = v10;
      v30 = v11;
      v31 = v12;
      v32 = a6;
    }

    v12 = [v28 _hf_indexOfSortedValues:v29 closestToValue:v30 top:v31 bottom:v32];
    goto LABEL_17;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

  return v12;
}

- (id)_hf_lightLevelVisibleTriggerValues
{
  v2 = [objc_opt_class() _hf_visibleLightLevelTriggerValues];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__HMCharacteristic_Additions___hf_lightLevelVisibleTriggerValues__block_invoke;
  v5[3] = &unk_277DF5910;
  v5[4] = a1;
  v3 = [v2 na_map:v5];

  return v3;
}

- (id)_hf_triggerValuesWithMinStepValue:()Additions
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __65__HMCharacteristic_Additions___hf_triggerValuesWithMinStepValue___block_invoke;
  v20 = &unk_277DFF358;
  v21 = a1;
  v6 = v4;
  v22 = v6;
  v7 = __65__HMCharacteristic_Additions___hf_triggerValuesWithMinStepValue___block_invoke(&v17);
  v8 = [a1 hf_minimumTriggerValue];
  v9 = [v8 intValue];

  v10 = [a1 hf_maximumTriggerValue];
  v11 = [v10 intValue];

  if (v9 <= v11)
  {
    do
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInt:v9];
      [v5 addObject:v12];

      v9 = (v9 + v7);
      v13 = [a1 hf_maximumTriggerValue];
      v14 = [v13 intValue];
    }

    while (v9 <= v14);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)_hf_stepValue
{
  v2 = [a1 metadata];
  v3 = [v2 stepValue];
  v4 = v3;
  v5 = &unk_282525910;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [a1 metadata];
  v8 = [v7 format];
  v9 = [v8 isEqualToString:*MEMORY[0x277CCF6B8]];

  if (v9)
  {
    [v6 floatValue];
    if (v10 < 0.01)
    {

      v6 = &unk_282525920;
    }

    v11 = [a1 hf_maximumTriggerValue];
    [v11 floatValue];
    v13 = v12;
    v14 = [a1 hf_minimumTriggerValue];
    [v14 floatValue];
    v16 = vabds_f32(v13, v15);

    [v6 floatValue];
    if ((v16 / *&v17) <= 10000.0)
    {
      goto LABEL_17;
    }

LABEL_16:
    *&v17 = v16 / 10000.0;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v17];

    v6 = v25;
    goto LABEL_17;
  }

  v18 = [a1 metadata];
  v19 = [v18 hf_isNumeric];

  if (v19)
  {
    if ([v6 integerValue] <= 0)
    {

      v6 = &unk_282525910;
    }

    v20 = [a1 hf_minimumTriggerValue];
    v21 = [v20 intValue];

    v22 = [a1 hf_maximumTriggerValue];
    v23 = [v22 intValue];

    v24 = v23 - v21 >= 0 ? v23 - v21 : v21 - v23;
    if (v24 / [v6 intValue] >= 10001)
    {
      v16 = v24;
      goto LABEL_16;
    }
  }

LABEL_17:

  return v6;
}

+ (id)_hf_visibleLightLevelTriggerValues
{
  if (qword_280E03978 != -1)
  {
    dispatch_once(&qword_280E03978, &__block_literal_global_127_4);
  }

  v1 = qword_280E03980;

  return v1;
}

@end