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
  v3[4] = self;
  v1 = __63__HMCharacteristic_Additions__hf_valueRangeCharacteristicTypes__block_invoke(v3);

  return v1;
}

+ (id)hf_continuousValueRangeCharacteristicTypes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__HMCharacteristic_Additions__hf_continuousValueRangeCharacteristicTypes__block_invoke;
  v3[3] = &__block_descriptor_40_e5__8__0l;
  v3[4] = self;
  v1 = __73__HMCharacteristic_Additions__hf_continuousValueRangeCharacteristicTypes__block_invoke(v3);

  return v1;
}

+ (id)hf_alarmCharacteristicTypes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__HMCharacteristic_Additions__hf_alarmCharacteristicTypes__block_invoke;
  v3[3] = &__block_descriptor_40_e5__8__0l;
  v3[4] = self;
  v1 = __58__HMCharacteristic_Additions__hf_alarmCharacteristicTypes__block_invoke(v3);

  return v1;
}

+ (id)hf_sensingCharacteristicTypes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__HMCharacteristic_Additions__hf_sensingCharacteristicTypes__block_invoke;
  v3[3] = &__block_descriptor_40_e5__8__0l;
  v3[4] = self;
  v1 = __60__HMCharacteristic_Additions__hf_sensingCharacteristicTypes__block_invoke(v3);

  return v1;
}

+ (id)hf_abnormalValueForAlarmCharacteristicType:()Additions
{
  v4 = a3;
  _hf_alarmCharacteristicTypeToAbnormalValueMap = [self _hf_alarmCharacteristicTypeToAbnormalValueMap];
  v6 = [_hf_alarmCharacteristicTypeToAbnormalValueMap objectForKeyedSubscript:v4];

  return v6;
}

+ (id)hf_defaultAbnormalValueForValueRangeSensorCharacteristicType:()Additions
{
  v4 = a3;
  _hf_valueRangeCharacteristicTypeToAbnormalValueMap = [self _hf_valueRangeCharacteristicTypeToAbnormalValueMap];
  v6 = [_hf_valueRangeCharacteristicTypeToAbnormalValueMap objectForKeyedSubscript:v4];

  return v6;
}

+ (id)hf_abnormalValueForSensorCharacteristicType:()Additions
{
  v4 = a3;
  v5 = [self hf_abnormalValueForAlarmCharacteristicType:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [self hf_defaultAbnormalValueForValueRangeSensorCharacteristicType:v4];
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
  characteristicType = [self characteristicType];
  v4 = [v2 hf_descriptionForCharacteristicType:characteristicType];

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
  properties = [self properties];
  v2 = [properties containsObject:*MEMORY[0x277CCF740]];

  return v2;
}

- (uint64_t)hf_isReadable
{
  properties = [self properties];
  v2 = [properties containsObject:*MEMORY[0x277CCF728]];

  return v2;
}

- (id)hf_formattedValueUpdatedTime
{
  if (qword_280E03930 != -1)
  {
    dispatch_once(&qword_280E03930, &__block_literal_global_32_4);
  }

  valueUpdatedTime = [self valueUpdatedTime];
  if (valueUpdatedTime)
  {
    v3 = qword_280E03928;
    valueUpdatedTime2 = [self valueUpdatedTime];
    v5 = [v3 stringFromDate:valueUpdatedTime2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hf_defaultValue
{
  metadata = [self metadata];
  format = [metadata format];
  if ([format isEqualToString:*MEMORY[0x277CCF6B0]])
  {
    v3 = MEMORY[0x277CBEC28];
  }

  else if ([metadata hf_isNumeric])
  {
    minimumValue = [metadata minimumValue];
    v5 = minimumValue;
    v6 = &unk_282525630;
    if (minimumValue)
    {
      v6 = minimumValue;
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
  characteristicType = [self characteristicType];
  v4 = [v2 hf_associatedCharacteristicTypeForCharacteristicType:characteristicType];

  return v4;
}

+ (id)hf_associatedCharacteristicTypeForCharacteristicType:()Additions
{
  v4 = a3;
  v5 = [self hf_currentStateCharacteristicTypeForTargetStateCharacteristicType:v4];
  if (!v5)
  {
    v5 = [self hf_targetStateCharacteristicTypeForCurrentStateCharacteristicType:v4];
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

  integerValue = [v6 integerValue];

  return integerValue;
}

- (uint64_t)hf_sortPriority
{
  v2 = objc_opt_class();
  characteristicType = [self characteristicType];
  v4 = [v2 hf_sortPriorityForCharacteristicType:characteristicType];

  return v4;
}

+ (id)hf_characteristicSortComparator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__HMCharacteristic_Additions__hf_characteristicSortComparator__block_invoke;
  v4[3] = &__block_descriptor_48_e11_q24__0_8_16l;
  v4[4] = self;
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
  if (![self hf_isReadable] || !objc_msgSend(self, "hf_isWritable"))
  {
    return 0;
  }

  v2 = objc_opt_class();
  characteristicType = [self characteristicType];
  v4 = [v2 hf_shouldCaptureCharacteristicTypeInActionSets:characteristicType];

  return v4;
}

- (uint64_t)hf_isProgrammableSwitchInputEventConfigured
{
  hf_programmableSwitchValidValueSet = [self hf_programmableSwitchValidValueSet];
  allValues = [hf_programmableSwitchValidValueSet allValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__HMCharacteristic_Additions__hf_isProgrammableSwitchInputEventConfigured__block_invoke;
  v6[3] = &unk_277DF3770;
  v6[4] = self;
  v4 = [allValues na_any:v6];

  return v4;
}

- (HFMultiStateValueSet)hf_programmableSwitchValidValueSet
{
  metadata = [self metadata];
  v3 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:metadata];
  characteristicType = [self characteristicType];
  v5 = [characteristicType isEqualToString:*MEMORY[0x277CCF910]];

  if (v5)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__HMCharacteristic_Additions__hf_programmableSwitchValidValueSet__block_invoke;
    aBlock[3] = &unk_277DFF1F8;
    objc_copyWeak(&v22, &location);
    v6 = _Block_copy(aBlock);
    validValues = [metadata validValues];
    validValues2 = [metadata validValues];
    if (![validValues2 count])
    {
      format = [metadata format];
      v10 = [format isEqualToString:*MEMORY[0x277CCF6E8]];

      if (!v10)
      {
LABEL_12:
        [(HFMultiStateValueSet *)v3 addValuesFromArray:validValues displayResultsGenerator:v6];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
        goto LABEL_14;
      }

      minimumValue = [metadata minimumValue];
      v12 = minimumValue;
      if (!minimumValue)
      {
        minimumValue = &unk_282524BD0;
      }

      integerValue = [minimumValue integerValue];

      maximumValue = [metadata maximumValue];
      v15 = maximumValue;
      if (!maximumValue)
      {
        maximumValue = &unk_282524BE8;
      }

      integerValue2 = [maximumValue integerValue];

      stepValue = [metadata stepValue];
      v18 = stepValue;
      if (!stepValue)
      {
        stepValue = &unk_282524B70;
      }

      integerValue3 = [stepValue integerValue];

      [MEMORY[0x277CBEA60] hf_arrayWithNumbersInRange:integerValue stride:{integerValue2 - integerValue, integerValue3}];
      validValues = validValues2 = validValues;
    }

    goto LABEL_12;
  }

  NSLog(&cfstr_MethodCalledFr.isa, 0);
LABEL_14:

  return v3;
}

- (id)hf_home
{
  service = [self service];
  accessory = [service accessory];
  home = [accessory home];

  return home;
}

- (id)hf_eventTriggers
{
  v2 = objc_opt_new();
  hf_home = [self hf_home];
  triggers = [hf_home triggers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__HMCharacteristic_Additions__hf_eventTriggers__block_invoke;
  v10[3] = &unk_277DFF248;
  v10[4] = self;
  v5 = [triggers na_filter:v10];
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HMCharacteristic+HFAdditions.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"triggerValue"}];
  }

  v6 = objc_opt_new();
  hf_home = [self hf_home];
  triggers = [hf_home triggers];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMCharacteristic_Additions__hf_eventTriggersForTriggerValue___block_invoke;
  v16[3] = &unk_277DFF298;
  v16[4] = self;
  v17 = v5;
  v9 = v5;
  v10 = [triggers na_filter:v16];
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
  v1 = [self hf_eventTriggersForTriggerValue:?];
  v2 = [v1 na_filter:&__block_literal_global_111_0];
  if ([v2 count] >= 2)
  {
    NSLog(&cfstr_HomeappSomehow.isa);
  }

  if ([v2 count] == 1)
  {
    anyObject = [v2 anyObject];
  }

  else
  {
    v4 = [v1 mutableCopy];
    [v4 minusSet:v2];
    if ([v4 count] == 1)
    {
      anyObject = [v4 anyObject];
    }

    else
    {
      anyObject = 0;
    }
  }

  return anyObject;
}

- (id)hf_programmableSwitchTriggerValueToEventTriggersMap
{
  hf_eventTriggers = [self hf_eventTriggers];
  if ([hf_eventTriggers count])
  {
    v3 = objc_opt_new();
    hf_programmableSwitchValidValueSet = [self hf_programmableSwitchValidValueSet];
    sortedValues = [hf_programmableSwitchValidValueSet sortedValues];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__HMCharacteristic_Additions__hf_programmableSwitchTriggerValueToEventTriggersMap__block_invoke;
    v10[3] = &unk_277DFF330;
    v6 = v3;
    v11 = v6;
    v12 = hf_eventTriggers;
    [sortedValues enumerateObjectsUsingBlock:v10];

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
  hf_triggerValues = [self hf_triggerValues];
  v6 = [objc_opt_class() hf_indexOfSortedValues:hf_triggerValues closestToValue:v4];

  if ((v6 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [hf_triggerValues objectAtIndexedSubscript:?];
  }

  return v7;
}

- (id)hf_valueAfterTriggerValue:()Additions
{
  v4 = a3;
  hf_triggerValues = [self hf_triggerValues];
  v6 = [objc_opt_class() hf_indexOfSortedValues:hf_triggerValues closestToValue:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v6 >= [hf_triggerValues count] - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [hf_triggerValues objectAtIndexedSubscript:v6 + 1];
  }

  return v7;
}

- (id)hf_thresholdValueForRange:()Additions
{
  v4 = a3;
  minValue = [v4 minValue];
  maxValue = [v4 maxValue];

  if (minValue != maxValue)
  {
    minValue2 = [v4 minValue];
    v8 = minValue2;
    if (minValue2)
    {
      hf_minimumTriggerValue = minValue2;
    }

    else
    {
      hf_minimumTriggerValue = [self hf_minimumTriggerValue];
    }

    minValue3 = hf_minimumTriggerValue;

    maxValue2 = [v4 maxValue];
    v15 = maxValue2;
    if (maxValue2)
    {
      hf_maximumTriggerValue = maxValue2;
    }

    else
    {
      hf_maximumTriggerValue = [self hf_maximumTriggerValue];
    }

    v17 = hf_maximumTriggerValue;

    hf_minimumTriggerValue2 = [self hf_minimumTriggerValue];
    if ([minValue3 compare:hf_minimumTriggerValue2])
    {
    }

    else
    {
      hf_maximumTriggerValue2 = [self hf_maximumTriggerValue];
      v21 = [v17 compare:hf_maximumTriggerValue2];

      if (v21)
      {
        v22 = [self hf_valueAfterTriggerValue:v17];
        goto LABEL_19;
      }
    }

    hf_maximumTriggerValue3 = [self hf_maximumTriggerValue];
    if ([v17 compare:hf_maximumTriggerValue3])
    {

LABEL_14:
      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    hf_minimumTriggerValue3 = [self hf_minimumTriggerValue];
    v24 = [minValue3 compare:hf_minimumTriggerValue3];

    if (!v24)
    {
      goto LABEL_14;
    }

    v22 = [self hf_valueBeforeTriggerValue:minValue3];
LABEL_19:
    v13 = v22;
    goto LABEL_20;
  }

  characteristicType = [self characteristicType];
  v11 = [characteristicType isEqualToString:*MEMORY[0x277CCF770]];

  minValue3 = [v4 minValue];
  if (!v11)
  {
    goto LABEL_22;
  }

  v13 = [self hf_valueAfterTriggerValue:minValue3];
LABEL_21:

  minValue3 = v13;
LABEL_22:

  return minValue3;
}

- (id)hf_minimumTriggerValue
{
  characteristicType = [self characteristicType];
  v3 = [characteristicType isEqualToString:*MEMORY[0x277CCF770]];

  if (v3)
  {
    minimumValue = &unk_282524C00;
  }

  else
  {
    metadata = [self metadata];
    minimumValue = [metadata minimumValue];
  }

  return minimumValue;
}

- (id)hf_maximumTriggerValue
{
  metadata = [self metadata];
  maximumValue = [metadata maximumValue];

  return maximumValue;
}

- (id)hf_triggerValues
{
  metadata = [self metadata];
  if (([metadata hf_isNumeric] & 1) == 0 || (objc_msgSend(self, "hf_minimumTriggerValue"), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_10;
  }

  v4 = v3;
  hf_maximumTriggerValue = [self hf_maximumTriggerValue];

  if (!hf_maximumTriggerValue)
  {
LABEL_10:
    array = 0;
    goto LABEL_11;
  }

  metadata2 = [self metadata];
  format = [metadata2 format];
  v8 = [format isEqualToString:*MEMORY[0x277CCF6B8]];

  if (v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    _hf_stepValue = [self _hf_stepValue];
    [_hf_stepValue floatValue];
    v12 = v11;

    hf_minimumTriggerValue = [self hf_minimumTriggerValue];
    [hf_minimumTriggerValue floatValue];
    v15 = v14;

    hf_maximumTriggerValue2 = [self hf_maximumTriggerValue];
    [hf_maximumTriggerValue2 floatValue];
    v18 = v17;

    for (; v15 <= v18; v15 = v12 + v15)
    {
      *&v19 = v15;
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      [array addObject:v20];
    }

    if ((v15 - v12) < v18)
    {
      *&v19 = v18;
      v21 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      [array addObject:v21];
    }
  }

  else
  {
    array = [self _hf_triggerValuesWithMinStepValue:0];
  }

LABEL_11:

  return array;
}

- (id)hf_visibleTriggerValueClosestToValue:()Additions
{
  v4 = a3;
  metadata = [self metadata];
  hf_isNumeric = [metadata hf_isNumeric];

  if (!hf_isNumeric)
  {
    v13 = 0;
    goto LABEL_23;
  }

  characteristicType = [self characteristicType];
  v8 = [characteristicType isEqualToString:*MEMORY[0x277CCF830]];

  if (!v8)
  {
LABEL_5:
    hf_minimumTriggerValue = [self hf_minimumTriggerValue];
    hf_maximumTriggerValue = [self hf_maximumTriggerValue];
    v12 = hf_maximumTriggerValue;
    v13 = 0;
    if (hf_minimumTriggerValue && hf_maximumTriggerValue)
    {
      if ([v4 compare:hf_minimumTriggerValue] == -1)
      {
        v14 = hf_minimumTriggerValue;
      }

      else
      {
        if ([v4 compare:v12] != 1)
        {
          _hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap = [objc_opt_class() _hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap];
          characteristicType2 = [self characteristicType];
          v17 = [_hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap objectForKeyedSubscript:characteristicType2];

          if (v17)
          {
            _hf_stepValue = v17;
          }

          else
          {
            _hf_stepValue = [self _hf_stepValue];
          }

          v19 = _hf_stepValue;
          metadata2 = [self metadata];
          format = [metadata2 format];
          v22 = [format isEqualToString:*MEMORY[0x277CCF6B8]];

          if (v22)
          {
            [v4 floatValue];
            v24 = v23;
            [hf_minimumTriggerValue floatValue];
            v26 = v24 - v25;
            [v19 floatValue];
            v28 = roundf(v26 / v27);
            [v19 floatValue];
            v30 = v29 * v28;
            [hf_minimumTriggerValue floatValue];
            *&v32 = v31 + v30;
            [MEMORY[0x277CCABB0] numberWithFloat:v32];
          }

          else
          {
            intValue = [v4 intValue];
            v34 = (intValue - [hf_minimumTriggerValue intValue]);
            [v19 floatValue];
            v36 = llroundf(v34 / v35);
            intValue2 = [v19 intValue];
            intValue3 = [hf_minimumTriggerValue intValue];
            [MEMORY[0x277CCABB0] numberWithInt:intValue3 + intValue2 * v36];
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

  hf_minimumTriggerValue = [self _hf_lightLevelVisibleTriggerValues];
  v10 = [objc_opt_class() hf_indexOfSortedValues:hf_minimumTriggerValue closestToValue:v4];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_5;
  }

  v13 = [hf_minimumTriggerValue objectAtIndex:v10];
LABEL_22:

LABEL_23:

  return v13;
}

- (id)hf_visibleTriggerValues
{
  characteristicType = [self characteristicType];
  v3 = [characteristicType isEqualToString:*MEMORY[0x277CCF830]];

  if (v3)
  {
    _hf_lightLevelVisibleTriggerValues = [self _hf_lightLevelVisibleTriggerValues];
  }

  else
  {
    _hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap = [objc_opt_class() _hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap];
    characteristicType2 = [self characteristicType];
    v7 = [_hf_valueRangeCharacteristicTypeToVisibleTriggerValueStepMap objectForKeyedSubscript:characteristicType2];

    if (v7)
    {
      [self _hf_triggerValuesWithMinStepValue:v7];
    }

    else
    {
      [self hf_triggerValues];
    }
    _hf_lightLevelVisibleTriggerValues = ;
  }

  return _hf_lightLevelVisibleTriggerValues;
}

+ (uint64_t)hf_indexOfSortedValues:()Additions closestToValue:
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [self _hf_indexOfSortedValues:v6 closestToValue:v7 top:objc_msgSend(v6 bottom:{"count") - 1, 0}];
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
      selfCopy2 = self;
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

      selfCopy2 = self;
      v29 = v10;
      v30 = v11;
      v31 = v12;
      v32 = a6;
    }

    v12 = [selfCopy2 _hf_indexOfSortedValues:v29 closestToValue:v30 top:v31 bottom:v32];
    goto LABEL_17;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

  return v12;
}

- (id)_hf_lightLevelVisibleTriggerValues
{
  _hf_visibleLightLevelTriggerValues = [objc_opt_class() _hf_visibleLightLevelTriggerValues];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__HMCharacteristic_Additions___hf_lightLevelVisibleTriggerValues__block_invoke;
  v5[3] = &unk_277DF5910;
  v5[4] = self;
  v3 = [_hf_visibleLightLevelTriggerValues na_map:v5];

  return v3;
}

- (id)_hf_triggerValuesWithMinStepValue:()Additions
{
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __65__HMCharacteristic_Additions___hf_triggerValuesWithMinStepValue___block_invoke;
  v20 = &unk_277DFF358;
  selfCopy = self;
  v6 = v4;
  v22 = v6;
  v7 = __65__HMCharacteristic_Additions___hf_triggerValuesWithMinStepValue___block_invoke(&v17);
  hf_minimumTriggerValue = [self hf_minimumTriggerValue];
  intValue = [hf_minimumTriggerValue intValue];

  hf_maximumTriggerValue = [self hf_maximumTriggerValue];
  intValue2 = [hf_maximumTriggerValue intValue];

  if (intValue <= intValue2)
  {
    do
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
      [array addObject:v12];

      intValue = (intValue + v7);
      hf_maximumTriggerValue2 = [self hf_maximumTriggerValue];
      intValue3 = [hf_maximumTriggerValue2 intValue];
    }

    while (intValue <= intValue3);
  }

  v15 = [array copy];

  return v15;
}

- (id)_hf_stepValue
{
  metadata = [self metadata];
  stepValue = [metadata stepValue];
  v4 = stepValue;
  v5 = &unk_282525910;
  if (stepValue)
  {
    v5 = stepValue;
  }

  v6 = v5;

  metadata2 = [self metadata];
  format = [metadata2 format];
  v9 = [format isEqualToString:*MEMORY[0x277CCF6B8]];

  if (v9)
  {
    [v6 floatValue];
    if (v10 < 0.01)
    {

      v6 = &unk_282525920;
    }

    hf_maximumTriggerValue = [self hf_maximumTriggerValue];
    [hf_maximumTriggerValue floatValue];
    v13 = v12;
    hf_minimumTriggerValue = [self hf_minimumTriggerValue];
    [hf_minimumTriggerValue floatValue];
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

  metadata3 = [self metadata];
  hf_isNumeric = [metadata3 hf_isNumeric];

  if (hf_isNumeric)
  {
    if ([v6 integerValue] <= 0)
    {

      v6 = &unk_282525910;
    }

    hf_minimumTriggerValue2 = [self hf_minimumTriggerValue];
    intValue = [hf_minimumTriggerValue2 intValue];

    hf_maximumTriggerValue2 = [self hf_maximumTriggerValue];
    intValue2 = [hf_maximumTriggerValue2 intValue];

    v24 = intValue2 - intValue >= 0 ? intValue2 - intValue : intValue - intValue2;
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