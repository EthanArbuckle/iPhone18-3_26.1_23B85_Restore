@interface HMEventTrigger(HFEventTriggerAdditions)
+ (id)hf_allTriggerValuesForCharacteristic:()HFEventTriggerAdditions similarToValue:;
+ (id)hf_representativeTriggerValueForCharacteristic:()HFEventTriggerAdditions similarToValue:;
+ (uint64_t)_hf_valueIsValidForCharacteristic:()HFEventTriggerAdditions value:;
- (id)hf_characteristicsInEvents;
- (id)hf_designateTrigger:()HFEventTriggerAdditions;
- (id)hf_durationEndEvent;
- (id)hf_effectiveRecurrences;
- (uint64_t)hf_isHomeAppCreatedTrigger;
- (uint64_t)hf_triggerType;
@end

@implementation HMEventTrigger(HFEventTriggerAdditions)

- (id)hf_durationEndEvent
{
  v26 = *MEMORY[0x277D85DE8];
  endEvents = [self endEvents];
  v3 = [endEvents count];

  if (v3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    endEvents2 = [self endEvents];
    v5 = [endEvents2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(endEvents2);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          v11 = v10;
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          [v13 duration];
          if (v14 > 1.0)
          {
            if (!v7 || ([v7 duration], v16 = v15, objc_msgSend(v13, "duration"), v16 > v17))
            {
              v18 = v13;

              v7 = v18;
            }
          }
        }

        v6 = [endEvents2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)hf_effectiveRecurrences
{
  recurrences = [self recurrences];
  if (![recurrences count])
  {
    hf_dailyWeekdayIntervalComponents = [MEMORY[0x277CBEAB8] hf_dailyWeekdayIntervalComponents];

    recurrences = hf_dailyWeekdayIntervalComponents;
  }

  if ([self executeOnce])
  {

    recurrences = MEMORY[0x277CBEBF8];
  }

  return recurrences;
}

- (uint64_t)hf_triggerType
{
  events = [self events];
  v3 = [events na_any:&__block_literal_global_366];

  events2 = [self events];
  v5 = [events2 na_any:&__block_literal_global_368];

  events3 = [self events];
  v7 = [events3 na_firstObjectPassingTest:&__block_literal_global_372];

  events4 = [self events];
  v9 = [events4 na_filter:&__block_literal_global_375_0];

  if (v7)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "presenceEventType")}];
    v11 = [&unk_282525828 containsObject:v10];

    if (v11)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v13 = v3 | v5;
    if (v3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if ((v13 & 1) == 0)
    {
      if ([v9 count])
      {
        hf_sensingCharacteristicTypes = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __57__HMEventTrigger_HFEventTriggerAdditions__hf_triggerType__block_invoke_390;
        v17[3] = &unk_277DF7650;
        v18 = hf_sensingCharacteristicTypes;
        v15 = hf_sensingCharacteristicTypes;
        if ([v9 na_any:v17])
        {
          v12 = 6;
        }

        else
        {
          v12 = 5;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

- (uint64_t)hf_isHomeAppCreatedTrigger
{
  v26 = *MEMORY[0x277D85DE8];
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  if (uUIDString)
  {
    v4 = objc_opt_new();
    events = [self events];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__HMEventTrigger_HFEventTriggerAdditions__hf_isHomeAppCreatedTrigger__block_invoke;
    v23[3] = &unk_277DF4FB0;
    v6 = v4;
    v24 = v6;
    [events na_each:v23];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          applicationData = [*(*(&v19 + 1) + 8 * v11) applicationData];
          v13 = [applicationData objectForKey:@"HFDesignatedTriggerAppDataKey"];

          v14 = [MEMORY[0x277CBEB98] setWithArray:v13];
          v15 = [v14 containsObject:uUIDString];

          if (v15)
          {
            v16 = 1;
            goto LABEL_12;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)hf_designateTrigger:()HFEventTriggerAdditions
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  if ([uUIDString length])
  {
    if ([self hf_isHomeAppCreatedTrigger] == a3)
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      v7 = objc_opt_new();
      events = [self events];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __63__HMEventTrigger_HFEventTriggerAdditions__hf_designateTrigger___block_invoke;
      v23[3] = &unk_277DF4FB0;
      v9 = v7;
      v24 = v9;
      [events na_each:v23];

      if ([v9 count])
      {
        firstObject = [v9 firstObject];
        v11 = MEMORY[0x277D2C900];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __63__HMEventTrigger_HFEventTriggerAdditions__hf_designateTrigger___block_invoke_2;
        v18[3] = &unk_277DFDA30;
        v22 = a3;
        v19 = firstObject;
        selfCopy = self;
        v21 = uUIDString;
        v12 = firstObject;
        futureWithNoResult = [v11 futureWithErrorOnlyHandlerAdapterBlock:v18];
      }

      else
      {
        v16 = MEMORY[0x277D2C900];
        v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
        futureWithNoResult = [v16 futureWithError:v12];
      }
    }
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    futureWithNoResult = [v14 futureWithError:v15];
  }

  return futureWithNoResult;
}

- (id)hf_characteristicsInEvents
{
  events = [self events];
  v2 = [events na_map:&__block_literal_global_401_1];

  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];

  return v3;
}

+ (id)hf_allTriggerValuesForCharacteristic:()HFEventTriggerAdditions similarToValue:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
  characteristicType = [v6 characteristicType];
  v10 = [characteristicType isEqualToString:*MEMORY[0x277CCF858]];

  if (v10)
  {
    if (qword_280E03340 != -1)
    {
      dispatch_once(&qword_280E03340, &__block_literal_global_406);
    }

    v11 = qword_280E03348;
    goto LABEL_9;
  }

  characteristicType2 = [v6 characteristicType];
  v13 = [characteristicType2 isEqualToString:*MEMORY[0x277CCF800]];

  if (v13)
  {
    if (qword_280E03350 != -1)
    {
      dispatch_once(&qword_280E03350, &__block_literal_global_419);
    }

    v11 = qword_280E03358;
LABEL_9:
    v14 = v11;
    if (([v14 containsObject:v7] & 1) == 0)
    {
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v14 = v14;

    v8 = v14;
    goto LABEL_11;
  }

  characteristicType3 = [v6 characteristicType];
  v19 = [characteristicType3 isEqualToString:*MEMORY[0x277CCF838]];

  if (v19)
  {
    if (qword_280E03360 != -1)
    {
      dispatch_once(&qword_280E03360, &__block_literal_global_423);
    }

    v14 = qword_280E03368;
    if (![v14 containsObject:v7])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__HMEventTrigger_HFEventTriggerAdditions__hf_allTriggerValuesForCharacteristic_similarToValue___block_invoke_426;
  v20[3] = &unk_277DFDA78;
  v21 = v6;
  selfCopy = self;
  v15 = v6;
  v16 = [v8 na_filter:v20];

  return v16;
}

+ (uint64_t)_hf_valueIsValidForCharacteristic:()HFEventTriggerAdditions value:
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    metadata = [v5 metadata];
    maximumValue = [metadata maximumValue];
    v9 = [maximumValue compare:v6];

    metadata2 = [v5 metadata];
    minimumValue = [metadata2 minimumValue];
    v12 = [minimumValue compare:v6];

    metadata3 = [v5 metadata];
    validValues = [metadata3 validValues];

    v15 = v9 == -1 || v12 == 1;
    v16 = !v15;
    v17 = !v15 && validValues == 0;
    if (validValues && v16)
    {
      v17 = [validValues containsObject:v6];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)hf_representativeTriggerValueForCharacteristic:()HFEventTriggerAdditions similarToValue:
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [self hf_allTriggerValuesForCharacteristic:v6 similarToValue:v7];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9;
    anyObject = 0;
    v12 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        v15 = v14;
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        if (v17 && (!anyObject || [v17 compare:anyObject] == -1))
        {
          v18 = v15;

          anyObject = v18;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
    if (!anyObject)
    {
LABEL_17:
      anyObject = [v8 anyObject];
    }
  }

  else
  {
    anyObject = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return anyObject;
}

@end