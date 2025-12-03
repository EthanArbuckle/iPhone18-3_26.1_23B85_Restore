@interface HMEventTrigger(NaturalLanguage)
+ (__CFString)_hf_triggerRangeKeyComponentForRangeType:()NaturalLanguage;
+ (id)_hf_alarmNaturalLanguageNameWithNameStringKey:()NaturalLanguage nameType:thresholdKey:thresholdValueDescription:roomName:actionsDescription:;
+ (id)_hf_localizedStringOrNilIfNotFoundForKey:()NaturalLanguage;
+ (id)_hf_naturalLanguageDetailsSentenceElementsWithRecurrences:()NaturalLanguage conditions:endEvents:withOptions:;
+ (id)_hf_naturalLanguageNameWithOptions:()NaturalLanguage nonSensorCharacteristics:triggerValue:;
+ (id)_hf_naturalLanguageNameWithOptions:()NaturalLanguage sensorCharacteristics:triggerValue:;
+ (id)hf_localizationKeyForProgrammableSwitchCharacteristic:()NaturalLanguage value:;
+ (id)hf_localizedStringForProgrammableSwitchCharacteristic:()NaturalLanguage value:;
+ (id)hf_naturalLanguageDescriptionForCharacteristic:()NaturalLanguage;
+ (id)hf_naturalLanguageDetailsWithRecurrences:()NaturalLanguage conditions:endEvents:withOptions:;
+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage characteristics:triggerValue:;
+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage events:recurrences:forUser:;
+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage presenceEvent:;
+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage region:forUser:;
+ (id)hf_naturalLanguageTurnOffAfterDuration:()NaturalLanguage style:;
+ (id)hf_triggerRangeValueNaturalLanguageDescriptionWithCharacteristics:()NaturalLanguage triggerValueRange:thresholdValue:;
+ (id)hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:()NaturalLanguage;
+ (id)hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:()NaturalLanguage triggerValue:visibleTriggerValues:;
+ (id)hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:()NaturalLanguage triggerValueRange:thresholdValue:;
+ (unint64_t)hf_triggerRangeTypeWithCharacteristics:()NaturalLanguage triggerValueRange:thresholdValue:;
- (id)_hf_naturalLanguageDetailsSentenceElementsWithOptions:()NaturalLanguage;
- (id)hf_naturalLanguageNameWithHome:()NaturalLanguage type:;
- (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage;
@end

@implementation HMEventTrigger(NaturalLanguage)

- (id)hf_naturalLanguageNameWithHome:()NaturalLanguage type:
{
  v6 = a3;
  v7 = [[HFTriggerNaturalLanguageOptions alloc] initWithHome:v6 nameType:a4];

  v8 = [self hf_naturalLanguageNameWithOptions:v7];

  return v8;
}

- (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage
{
  v4 = a3;
  v5 = objc_opt_class();
  events = [self events];
  hf_effectiveRecurrences = [self hf_effectiveRecurrences];
  creator = [self creator];
  v9 = [v5 hf_naturalLanguageNameWithOptions:v4 events:events recurrences:hf_effectiveRecurrences forUser:creator];

  if (v9)
  {
    name = v9;
  }

  else
  {
    name = [self name];
  }

  v11 = name;

  return v11;
}

+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage events:recurrences:forUser:
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 na_firstObjectPassingTest:&__block_literal_global_172_1];
  v14 = [v10 na_firstObjectPassingTest:&__block_literal_global_175];
  v15 = MEMORY[0x277CBEB98];
  v16 = [v10 na_filter:&__block_literal_global_178];
  v17 = [v15 setWithArray:v16];

  v18 = [v10 na_map:&__block_literal_global_231];
  v19 = [v18 na_firstObjectPassingTest:&__block_literal_global_235];
  v20 = v19;
  if (v14)
  {
    v21 = [objc_opt_class() hf_naturalLanguageNameWithOptions:v9 presenceEvent:v14];
  }

  else
  {
    if (v13)
    {
      [v13 region];
      v39 = v13;
      v23 = v17;
      v25 = v24 = v11;
      v22 = [objc_opt_class() hf_naturalLanguageNameWithOptions:v9 region:v25 forUser:v12];

      v11 = v24;
      v17 = v23;
      v13 = v39;
      if (v22)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    if (!v19)
    {
      if ([v17 count])
      {
        v40 = MEMORY[0x277CCA940];
        v36 = [v17 na_map:&__block_literal_global_247];
        [v40 setWithSet:v36];
        v29 = v35 = v11;
        na_mostCommonObject = [v29 na_mostCommonObject];

        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __96__HMEventTrigger_NaturalLanguage__hf_naturalLanguageNameWithOptions_events_recurrences_forUser___block_invoke_7;
        v43[3] = &unk_277DF7650;
        v44 = na_mostCommonObject;
        v34 = na_mostCommonObject;
        v33 = [v17 na_filter:v43];
        v30 = [v33 na_map:&__block_literal_global_250];
        v37 = MEMORY[0x277CCA940];
        v42 = v30;
        v32 = [v33 na_map:&__block_literal_global_252];
        v31 = [v37 setWithSet:v32];
        na_mostCommonObject2 = [v31 na_mostCommonObject];

        v11 = v35;
        v22 = [objc_opt_class() hf_naturalLanguageNameWithOptions:v9 characteristics:v42 triggerValue:na_mostCommonObject2];

        if (v22)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_7;
    }

    v21 = [v19 naturalLanguageNameWithOptions:v9 recurrences:v11];
  }

  v22 = v21;
  if (v21)
  {
    goto LABEL_10;
  }

LABEL_7:
  v26 = HFLogForCategory(0x4AuLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v46 = v10;
    _os_log_fault_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_FAULT, "Could not generate name for events: %@", buf, 0xCu);
  }

  v22 = _HFLocalizedStringWithDefaultValue(@"HFTriggerDescriptionUnknownName", @"HFTriggerDescriptionUnknownName", 1);
LABEL_10:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage region:forUser:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    identifier = [v9 identifier];
    if ([identifier length])
    {
      identifier2 = [v9 identifier];
    }

    else
    {
      identifier2 = 0;
    }

    home = [v8 home];
    currentUser = [home currentUser];

    v17 = @"HFOtherUser_";
    if (currentUser == v10)
    {
      v17 = @"HFCurrentUser_";
    }

    v18 = v17;
    if ([v9 notifyOnEntry] && (objc_msgSend(v9, "notifyOnExit") & 1) != 0)
    {
      v19 = @"ArriveOrLeaveLocationTriggerName";
    }

    else if ([v9 notifyOnEntry])
    {
      v19 = @"ArriveLocationTriggerName";
    }

    else
    {
      if (![v9 notifyOnExit])
      {
LABEL_18:
        if (identifier2)
        {
          if ([identifier2 isEqualToString:@"Home"])
          {
            v21 = @"_Home";
          }

          else if ([identifier2 isEqualToString:@"Work"])
          {
            v21 = @"_Work";
          }

          else
          {
            v21 = @"_placeName";
          }

          v22 = [(__CFString *)v18 stringByAppendingString:v21];

          v18 = v22;
        }

        v49 = identifier2;
        if ([v8 nameType] == 2)
        {
          v23 = [(__CFString *)v18 stringByAppendingString:@"_fullSentence"];

          actions = [v8 actions];
          v25 = [actions count];

          if (v25)
          {
            actionNaturalLanguageOptions = [v8 actionNaturalLanguageOptions];
            [actionNaturalLanguageOptions setFormattingContext:5];

            actions2 = [v8 actions];
            actionNaturalLanguageOptions2 = [v8 actionNaturalLanguageOptions];
            v29 = [HFActionNaturalLanguageUtilities hf_naturalLanguageDescriptionForActions:actions2 withOptions:actionNaturalLanguageOptions2];

            if ([(__CFString *)v29 length])
            {
              v30 = [(__CFString *)v23 stringByAppendingString:@"_WithAction"];
              v31 = v23;
              v23 = v30;
            }

            else
            {
              v31 = v29;
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }

          v18 = v23;
        }

        else
        {
          v29 = 0;
        }

        array = [MEMORY[0x277CBEB18] array];
        if (currentUser != v10)
        {
          selfCopy = self;
          v33 = [HFUserNameFormatter alloc];
          home2 = [v8 home];
          v35 = [(HFUserNameFormatter *)v33 initWithHome:home2];

          [(HFUserNameFormatter *)v35 setStyle:1];
          home3 = [v8 home];
          v37 = [home3 hf_handleForUser:v10];

          v38 = [(HFUserNameFormatter *)v35 stringForObjectValue:v37];
          if (v38)
          {
            [array na_safeAddObject:v38];
          }

          else
          {
            name = [v10 name];
            if (name)
            {
              [array na_safeAddObject:name];
            }

            else
            {
              userID = [v10 userID];
              v47 = userID;
              if (userID)
              {
                [array na_safeAddObject:userID];
              }

              else
              {
                v46 = _HFLocalizedStringWithDefaultValue(@"HFOtherUserDefaultName", @"HFOtherUserDefaultName", 1);
                [array na_safeAddObject:v46];
              }
            }
          }

          self = selfCopy;
        }

        [array na_safeAddObject:v49];
        [array na_safeAddObject:v29];
        v41 = MEMORY[0x277CCACA8];
        v42 = _HFLocalizedStringWithDefaultValue(v18, v18, 1);
        v14 = [v41 hf_stringWithFormat:v42 arguments:array];

        if (![v8 nameType])
        {
          home4 = [v8 home];
          v44 = [self hf_sanitizeTriggerName:v14 home:home4];

          v14 = v44;
        }

        goto LABEL_48;
      }

      v19 = @"LeaveLocationTriggerName";
    }

    v20 = [(__CFString *)v18 stringByAppendingString:v19];

    v18 = v20;
    goto LABEL_18;
  }

  v13 = HFLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "region is nil!", buf, 2u);
  }

  v14 = _HFLocalizedStringWithDefaultValue(@"HFUnknownLocationTriggerName", @"HFUnknownLocationTriggerName", 1);
LABEL_48:

  return v14;
}

+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage presenceEvent:
{
  v5 = a3;
  v6 = a4;
  v7 = [[HFPresenceEventFormatter alloc] initWithOptions:v5];
  [(HFPresenceEventFormatter *)v7 setStyle:0];
  actions = [v5 actions];
  v9 = [actions count];

  if (v9)
  {
    actionNaturalLanguageOptions = [v5 actionNaturalLanguageOptions];
    [actionNaturalLanguageOptions setFormattingContext:5];

    actions2 = [v5 actions];
    actionNaturalLanguageOptions2 = [v5 actionNaturalLanguageOptions];
    v13 = [HFActionNaturalLanguageUtilities hf_naturalLanguageDescriptionForActions:actions2 withOptions:actionNaturalLanguageOptions2];

    if ([v13 length])
    {
      v14 = [[HFPresenceEventBuilder alloc] initWithEvent:v6];
      v15 = [(HFPresenceEventFormatter *)v7 stringForPresenceEventBuilder:v14 actionsDescription:v13];

      goto LABEL_6;
    }
  }

  v15 = [(HFPresenceEventFormatter *)v7 stringForPresenceEvent:v6];
LABEL_6:

  return v15;
}

+ (id)hf_naturalLanguageDescriptionForCharacteristic:()NaturalLanguage
{
  characteristicType = [a3 characteristicType];
  if ([characteristicType isEqualToString:*MEMORY[0x277CCF770]])
  {
    v4 = @"HFCharacteristicTriggerDescriptionTypeAirQuality";
  }

  else if ([characteristicType isEqualToString:*MEMORY[0x277CCF850]])
  {
    v4 = @"HFCharacteristicTriggerDescriptionTypeHumidity";
  }

  else if ([characteristicType isEqualToString:*MEMORY[0x277CCF868]])
  {
    v4 = @"HFCharacteristicTriggerDescriptionTypeTemperature";
  }

  else if ([characteristicType isEqualToString:*MEMORY[0x277CCF830]])
  {
    v4 = @"HFCharacteristicTriggerDescriptionTypeLightLevel";
  }

  else
  {
    v4 = 0;
  }

  v5 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);
  if (!v5)
  {
    NSLog(&cfstr_NoLocalizedStr_0.isa, v4);
  }

  return v5;
}

+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage characteristics:triggerValue:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 count])
  {
    NSLog(&cfstr_Characteristic_11.isa);
  }

  if ([v9 count])
  {
    hf_sensingCharacteristicTypes = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__HMEventTrigger_NaturalLanguage__hf_naturalLanguageNameWithOptions_characteristics_triggerValue___block_invoke;
    v15[3] = &unk_277DF6218;
    v16 = hf_sensingCharacteristicTypes;
    v12 = hf_sensingCharacteristicTypes;
    if ([v9 na_any:v15])
    {
      [self _hf_naturalLanguageNameWithOptions:v8 sensorCharacteristics:v9 triggerValue:v10];
    }

    else
    {
      [self _hf_naturalLanguageNameWithOptions:v8 nonSensorCharacteristics:v9 triggerValue:v10];
    }
    v13 = ;
  }

  else
  {
    v13 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicTriggerDescriptionUnknownName", @"HFCharacteristicTriggerDescriptionUnknownName", 1);
  }

  return v13;
}

+ (id)_hf_naturalLanguageNameWithOptions:()NaturalLanguage sensorCharacteristics:triggerValue:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  hf_sensingCharacteristicTypes = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __105__HMEventTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_sensorCharacteristics_triggerValue___block_invoke;
  v55[3] = &unk_277DF7678;
  v11 = v9;
  v56 = v11;
  v12 = hf_sensingCharacteristicTypes;
  v57 = v12;
  v13 = [v8 na_firstObjectPassingTest:v55];
  characteristicType = [v13 characteristicType];
  v15 = characteristicType;
  if (!characteristicType)
  {
    v22 = 0;
    goto LABEL_36;
  }

  v53 = v12;
  if (![characteristicType isEqualToString:*MEMORY[0x277CCF978]])
  {
    if ([v15 isEqualToString:*MEMORY[0x277CCF7A0]])
    {
      v23 = @"HFCharacteristicTriggerDescriptionSensorCO2Detected";
    }

    else if ([v15 isEqualToString:*MEMORY[0x277CCF7B8]])
    {
      v23 = @"HFCharacteristicTriggerDescriptionSensorCODetected";
    }

    else if ([v15 isEqualToString:*MEMORY[0x277CCF938]])
    {
      v23 = @"HFCharacteristicTriggerDescriptionSensorLeakDetected";
    }

    else
    {
      if ([v15 isEqualToString:*MEMORY[0x277CCF9A8]])
      {
        objc_opt_class();
        v44 = v11;
        if (objc_opt_isKindOfClass())
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        v18 = v45;

        bOOLValue = [v18 BOOLValue];
        v20 = @"HFCharacteristicTriggerDescriptionSensorOccupancyNotDetected";
        v21 = @"HFCharacteristicTriggerDescriptionSensorOccupancyDetected";
        goto LABEL_7;
      }

      if ([v15 isEqualToString:*MEMORY[0x277CCFA80]])
      {
        v23 = @"HFCharacteristicTriggerDescriptionSensorSmokeDetected";
      }

      else if ([v15 isEqualToString:*MEMORY[0x277CCF770]])
      {
        v23 = @"HFCharacteristicTriggerDescriptionSensorAirQuality";
      }

      else if ([v15 isEqualToString:*MEMORY[0x277CCF868]])
      {
        v23 = @"HFCharacteristicTriggerDescriptionSensorTemperature";
      }

      else if ([v15 isEqualToString:*MEMORY[0x277CCF850]])
      {
        v23 = @"HFCharacteristicTriggerDescriptionSensorHumidity";
      }

      else
      {
        v46 = [v15 isEqualToString:*MEMORY[0x277CCF830]];
        v23 = @"HFCharacteristicTriggerDescriptionSensorLightLevel";
        if (!v46)
        {
          v23 = 0;
        }
      }
    }

    v52 = v23;
    goto LABEL_18;
  }

  objc_opt_class();
  v16 = v11;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  bOOLValue = [v18 BOOLValue];
  v20 = @"HFCharacteristicTriggerDescriptionSensorMotionNotDetected";
  v21 = @"HFCharacteristicTriggerDescriptionSensorMotionDetected";
LABEL_7:
  if (bOOLValue)
  {
    v20 = v21;
  }

  v52 = v20;

LABEL_18:
  hf_valueRangeCharacteristicTypes = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
  v25 = [hf_valueRangeCharacteristicTypes containsObject:v15];

  if (v25)
  {
    objc_opt_class();
    v26 = v11;
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      v29 = [v13 hf_thresholdValueForRange:v28];
      v51 = [self _hf_triggerRangeKeyComponentForRangeType:{objc_msgSend(self, "hf_triggerRangeTypeWithCharacteristics:triggerValueRange:thresholdValue:", v8, v28, v29)}];
      v49 = [self hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v8 triggerValue:v29];
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  actions = [v7 actions];
  v50 = v13;
  v47 = v11;
  if (![actions count])
  {
    actionNaturalLanguageOptions = 0;
    goto LABEL_31;
  }

  actionNaturalLanguageOptions = [v7 actionNaturalLanguageOptions];

  if (actionNaturalLanguageOptions)
  {
    actions = [v7 actions];
    actionNaturalLanguageOptions2 = [v7 actionNaturalLanguageOptions];
    actionNaturalLanguageOptions = [HFActionNaturalLanguageUtilities hf_naturalLanguageDescriptionForActions:actions withOptions:actionNaturalLanguageOptions2];

LABEL_31:
  }

  v33 = v8;
  anyObject = [v8 anyObject];
  service = [anyObject service];

  hf_parentRoom = [service hf_parentRoom];
  home = [v7 home];
  roomForEntireHome = [home roomForEntireHome];
  v39 = [hf_parentRoom isEqual:roomForEntireHome];

  if (v39)
  {
    name = 0;
  }

  else
  {
    name = [hf_parentRoom name];
  }

  v22 = [self _hf_alarmNaturalLanguageNameWithNameStringKey:v52 nameType:objc_msgSend(v7 thresholdKey:"nameType") thresholdValueDescription:v51 roomName:v49 actionsDescription:{name, actionNaturalLanguageOptions}];

  v8 = v33;
  v11 = v48;
  v12 = v53;
  v13 = v50;
LABEL_36:
  if (![v7 nameType])
  {
    home2 = [v7 home];
    v42 = [self hf_sanitizeTriggerName:v22 home:home2];

    v22 = v42;
  }

  return v22;
}

+ (id)_hf_alarmNaturalLanguageNameWithNameStringKey:()NaturalLanguage nameType:thresholdKey:thresholdValueDescription:roomName:actionsDescription:
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v13)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (v14)
    {
      v19 = [v13 stringByAppendingFormat:@"_%@", v14];

      [array na_safeAddObject:v15];
      v13 = v19;
    }

    if (a4 == 1)
    {
      v20 = @"_Fragment";
    }

    else
    {
      v20 = @"_Sentence";
    }

    v21 = [v13 stringByAppendingString:v20];

    if (v16)
    {
      v22 = [v21 stringByAppendingString:@"_withRoom"];

      [array addObject:v16];
      v21 = v22;
    }

    if (v17)
    {
      v23 = [v21 stringByAppendingString:@"_WithAction"];

      [array addObject:v17];
      v21 = v23;
    }

    v24 = _HFLocalizedStringWithDefaultValue(v21, v21, 1);
    v25 = [MEMORY[0x277CCACA8] hf_stringWithFormat:v24 arguments:array];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicTriggerDescriptionUnknownName", @"HFCharacteristicTriggerDescriptionUnknownName", 1);
    }

    v28 = v27;
  }

  else
  {
    v28 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicTriggerDescriptionUnknownName", @"HFCharacteristicTriggerDescriptionUnknownName", 1);
  }

  return v28;
}

+ (id)_hf_naturalLanguageNameWithOptions:()NaturalLanguage nonSensorCharacteristics:triggerValue:
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicTriggerDescriptionUnknownName", @"HFCharacteristicTriggerDescriptionUnknownName", 1);
  objc_opt_class();
  v50 = v9;
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v12 = v9;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [self hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v10 triggerValueRange:v14 thresholdValue:0];
  }

  else
  {
    v15 = [self hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v10 triggerValue:v9];
  }

  anyObject = [v10 anyObject];

  service = [anyObject service];

  home = [v8 home];
  v19 = [home hf_serviceGroupsForService:service];
  firstObject = [v19 firstObject];

  if (firstObject)
  {
    v21 = firstObject;
  }

  else
  {
    v21 = service;
  }

  hf_displayName = [v21 hf_displayName];
  objectsInContext = [v8 objectsInContext];
  v24 = [objectsInContext count];

  if (v24)
  {
    objectsInContext2 = [v8 objectsInContext];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __108__HMEventTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_nonSensorCharacteristics_triggerValue___block_invoke;
    v51[3] = &unk_277DF5C10;
    v26 = service;
    v52 = v26;
    v27 = [objectsInContext2 na_firstObjectPassingTest:v51];

    if (v27)
    {
      if (firstObject)
      {
        v28 = firstObject;
      }

      else
      {
        v28 = v26;
      }

      hf_serviceNameComponents = [v28 hf_serviceNameComponents];
      rawServiceName = [hf_serviceNameComponents rawServiceName];

      hf_displayName = rawServiceName;
    }
  }

  if (hf_displayName && v15)
  {
    if ([v8 nameType] == 2)
    {
      actions = [v8 actions];
      v32 = [actions count];

      v33 = @"HFCharacteristicTriggerDescriptionFormatString_fullSentence";
      if (v32)
      {
        actionNaturalLanguageOptions = [v8 actionNaturalLanguageOptions];
        [actionNaturalLanguageOptions setFormattingContext:5];

        [v8 actions];
        v35 = v49 = self;
        [v8 actionNaturalLanguageOptions];
        v36 = v48 = v15;
        v32 = [HFActionNaturalLanguageUtilities hf_naturalLanguageDescriptionForActions:v35 withOptions:v36];

        v15 = v48;
        self = v49;
        if ([v32 length])
        {
          v33 = @"HFCharacteristicTriggerDescriptionFormatString_fullSentence_WithAction";
        }
      }
    }

    else
    {
      v32 = 0;
      v33 = @"HFCharacteristicTriggerDescriptionFormatString";
    }

    if ([v32 length])
    {
      HFLocalizedStringWithFormat(v33, @"%@%@%@", v37, v38, v39, v40, v41, v42, hf_displayName);
    }

    else
    {
      HFLocalizedStringWithFormat(v33, @"%@%@", v37, v38, v39, v40, v41, v42, hf_displayName);
    }
    v43 = ;

    v11 = v43;
  }

  if (![v8 nameType])
  {
    [v8 home];
    v45 = v44 = v15;
    v46 = [self hf_sanitizeTriggerName:v11 home:v45];

    v15 = v44;
    v11 = v46;
  }

  return v11;
}

+ (id)hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:()NaturalLanguage
{
  v3 = a3;
  anyObject = [v3 anyObject];
  characteristicType = [anyObject characteristicType];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __105__HMEventTrigger_NaturalLanguage__hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics___block_invoke;
  v12[3] = &unk_277DF6218;
  v6 = characteristicType;
  v13 = v6;
  v7 = [v3 na_any:v12];

  if (v7)
  {
    goto LABEL_2;
  }

  if ([v6 isEqualToString:*MEMORY[0x277CCF770]])
  {
    v8 = [MEMORY[0x277CCAA28] hf_valueFormatterForCharacteristic:anyObject options:0];
  }

  else
  {
    if ([v6 isEqualToString:*MEMORY[0x277CCF868]])
    {
      v9 = +[HFFormatterManager sharedInstance];
      temperatureFormatter = [v9 temperatureFormatter];
    }

    else if ([v6 isEqualToString:*MEMORY[0x277CCF850]])
    {
      v9 = +[HFFormatterManager sharedInstance];
      temperatureFormatter = [v9 percentFormatter];
    }

    else
    {
      if (![v6 isEqualToString:*MEMORY[0x277CCF830]])
      {
LABEL_2:
        v8 = 0;
        goto LABEL_12;
      }

      v9 = +[HFFormatterManager sharedInstance];
      temperatureFormatter = [v9 luxFormatter];
    }

    v8 = temperatureFormatter;
  }

LABEL_12:

  return v8;
}

+ (id)hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:()NaturalLanguage triggerValue:visibleTriggerValues:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  anyObject = [v8 anyObject];
  characteristicType = [anyObject characteristicType];
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __130__HMEventTrigger_NaturalLanguage__hf_triggerValueNaturalLanguageDescriptionWithCharacteristics_triggerValue_visibleTriggerValues___block_invoke;
  v43 = &unk_277DF6218;
  v13 = characteristicType;
  v44 = v13;
  v14 = [v8 na_any:&v40];
  v15 = [self hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:v8];
  if (v15)
  {
    objc_opt_class();
    v9 = v9;
    if (objc_opt_isKindOfClass())
    {
      v16 = v9;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    hf_valueRangeCharacteristicTypes = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
    v19 = [hf_valueRangeCharacteristicTypes containsObject:v13];

    if (!v19 || !v17)
    {
      goto LABEL_22;
    }

    if (v10)
    {
      v20 = [MEMORY[0x277CD1970] hf_indexOfSortedValues:v10 closestToValue:v17];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_22:
        v30 = [v15 stringForObjectValue:v9];
        goto LABEL_37;
      }

      v21 = [v10 objectAtIndexedSubscript:v20];
    }

    else
    {
      v27 = [anyObject hf_visibleTriggerValueClosestToValue:v17];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v9;
      }

      v21 = v29;

      v9 = v28;
    }

    v9 = v21;
    goto LABEL_22;
  }

  if (!((v9 == 0) | v14 & 1))
  {
    hf_powerStateCharacteristicTypes = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
    v23 = [hf_powerStateCharacteristicTypes containsObject:v13];

    if (v23)
    {
      bOOLValue = [v9 BOOLValue];
      v25 = @"HFCharacteristicTriggerDescriptionValueOff";
      v26 = @"HFCharacteristicTriggerDescriptionValueOn";
LABEL_14:
      if (bOOLValue)
      {
        v25 = v26;
      }

LABEL_30:
      v17 = v25;
      goto LABEL_31;
    }

    if ([v13 isEqualToString:*MEMORY[0x277CCF838]])
    {
      integerValue = [v9 integerValue];
      v25 = @"HFCharacteristicTriggerDescriptionValueUnlocked";
      v32 = @"HFCharacteristicTriggerDescriptionValueLocked";
    }

    else
    {
      if (![v13 isEqualToString:*MEMORY[0x277CCF800]])
      {
        if (![v13 isEqualToString:*MEMORY[0x277CCF7E8]])
        {
          if ([v13 isEqualToString:*MEMORY[0x277CCF858]])
          {
            integerValue2 = [v9 integerValue];
            if (integerValue2 < 5)
            {
              v17 = off_277DF7708[integerValue2];
              goto LABEL_31;
            }

            goto LABEL_11;
          }

          if (![v13 isEqualToString:*MEMORY[0x277CCF848]])
          {
            if ([v13 isEqualToString:*MEMORY[0x277CCF910]])
            {
              v17 = [self hf_localizationKeyForProgrammableSwitchCharacteristic:anyObject value:v9];
              if (v17)
              {
                goto LABEL_31;
              }

              goto LABEL_11;
            }

            if ([v13 isEqualToString:*MEMORY[0x277CCF978]])
            {
              bOOLValue = [v9 BOOLValue];
              v25 = @"HFCharacteristicTriggerDescriptionValueDetectsNoMotion";
              v26 = @"HFCharacteristicTriggerDescriptionValueDetectsMotion";
            }

            else
            {
              if ([v13 isEqualToString:*MEMORY[0x277CCF7A0]])
              {
                v17 = @"HFCharacteristicTriggerDescriptionValueDetectsCO2";
                goto LABEL_31;
              }

              if ([v13 isEqualToString:*MEMORY[0x277CCF7B8]])
              {
                v17 = @"HFCharacteristicTriggerDescriptionValueDetectsCO";
                goto LABEL_31;
              }

              if ([v13 isEqualToString:*MEMORY[0x277CCF938]])
              {
                v17 = @"HFCharacteristicTriggerDescriptionValueDetectsLeak";
                goto LABEL_31;
              }

              if (![v13 isEqualToString:*MEMORY[0x277CCF9A8]])
              {
                if ([v13 isEqualToString:*MEMORY[0x277CCFA80]])
                {
                  v17 = @"HFCharacteristicTriggerDescriptionValueDetectsSmoke";
                  goto LABEL_31;
                }

                goto LABEL_11;
              }

              bOOLValue = [v9 BOOLValue];
              v25 = @"HFCharacteristicTriggerDescriptionValueDetectsNoOccupancy";
              v26 = @"HFCharacteristicTriggerDescriptionValueDetectsOccupancy";
            }

            goto LABEL_14;
          }
        }

        integerValue3 = [v9 integerValue];
        v25 = @"HFCharacteristicTriggerDescriptionValueOpen";
        v32 = @"HFCharacteristicTriggerDescriptionValueClosed";
        v33 = integerValue3 == 0;
LABEL_28:
        if (v33)
        {
          v25 = v32;
        }

        goto LABEL_30;
      }

      integerValue = [v9 integerValue];
      v25 = @"HFCharacteristicTriggerDescriptionValueOpen";
      v32 = @"HFCharacteristicTriggerDescriptionValueClosed";
    }

    v33 = integerValue == 1;
    goto LABEL_28;
  }

LABEL_11:
  v17 = @"HFCharacteristicTriggerDescriptionValueOther";
LABEL_31:
  if ([v8 count] >= 2)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_Plural", v17, v40, v41, v42, v43];
    v35 = [self _hf_localizedStringOrNilIfNotFoundForKey:v34];

    if (v35)
    {
      v36 = v34;

      v17 = v36;
    }
  }

  v30 = _HFLocalizedStringWithDefaultValue(v17, v17, 1);
  if (!v17)
  {
    NSLog(&cfstr_NoLocalizedStr_1.isa, 0);
  }

LABEL_37:

  return v30;
}

+ (id)hf_triggerRangeValueNaturalLanguageDescriptionWithCharacteristics:()NaturalLanguage triggerValueRange:thresholdValue:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 na_any:&__block_literal_global_450];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (v9 && v11)
  {
    v15 = [self _hf_triggerRangeKeyComponentForRangeType:{objc_msgSend(self, "hf_triggerRangeTypeWithCharacteristics:triggerValueRange:thresholdValue:", v8, v9, v10)}];
    v12 = v15;
    if (v10)
    {
      v13 = [self hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v8 triggerValue:v10];
      if (v12)
      {
LABEL_5:
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTriggerRangeValueNaturalLanguageDescription_%@", v12];
        v23 = v16;
        if (v13)
        {
          v14 = HFLocalizedStringWithFormat(v16, @"%@", v17, v18, v19, v20, v21, v22, v13);
        }

        else
        {
          v24 = [v16 stringByAppendingString:@"_WithoutValue"];
          v14 = _HFLocalizedStringWithDefaultValue(v24, v24, 1);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v13 = 0;
      if (v15)
      {
        goto LABEL_5;
      }
    }

    v14 = 0;
  }

LABEL_11:

  return v14;
}

+ (id)hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:()NaturalLanguage triggerValueRange:thresholdValue:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  anyObject = [v8 anyObject];
  characteristicType = [anyObject characteristicType];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __129__HMEventTrigger_NaturalLanguage__hf_triggerValueNaturalLanguageDescriptionWithCharacteristics_triggerValueRange_thresholdValue___block_invoke;
  v22 = &unk_277DF6218;
  v13 = characteristicType;
  v23 = v13;
  if ([v8 na_any:&v19])
  {
    goto LABEL_2;
  }

  hf_valueRangeCharacteristicTypes = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
  v16 = [hf_valueRangeCharacteristicTypes containsObject:v13];

  if (v16)
  {
    v14 = [self hf_triggerRangeValueNaturalLanguageDescriptionWithCharacteristics:v8 triggerValueRange:v9 thresholdValue:v10];
    goto LABEL_8;
  }

  if (![v13 isEqualToString:*MEMORY[0x277CCF848]])
  {
LABEL_2:
    v14 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicTriggerDescriptionValueOther", @"HFCharacteristicTriggerDescriptionValueOther", 1);
    if (!v14)
    {
      NSLog(&cfstr_NoLocalizedStr_2.isa, @"HFCharacteristicTriggerDescriptionValueOther", v19, v20, v21, v22);
    }
  }

  else
  {
    hf_representativeValue = [v9 hf_representativeValue];
    v14 = [self hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v8 triggerValue:hf_representativeValue];
  }

LABEL_8:

  return v14;
}

+ (id)hf_localizationKeyForProgrammableSwitchCharacteristic:()NaturalLanguage value:
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    metadata = [a3 metadata];
    v9 = [metadata hf_isValidValue:v6];

    if (v9)
    {
      v7 = HFProgrammableSwitchLocalizedStringKeyForValue(v6);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)hf_localizedStringForProgrammableSwitchCharacteristic:()NaturalLanguage value:
{
  v1 = [self hf_localizationKeyForProgrammableSwitchCharacteristic:? value:?];
  v2 = v1;
  if (v1)
  {
    v3 = _HFLocalizedStringWithDefaultValue(v1, v1, 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)hf_naturalLanguageTurnOffAfterDuration:()NaturalLanguage style:
{
  if (!a3)
  {
    v21 = _HFLocalizedStringWithDefaultValue(@"HFTriggerDurationValueNoDuration", @"HFTriggerDurationValueNoDuration", 1);
    goto LABEL_13;
  }

  [a3 doubleValue];
  v6 = v5;
  v7 = objc_opt_new();
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v11 = [firstObject isEqualToString:@"en"];

  if (v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  [v7 setUnitsStyle:v12];
  v13 = [v7 stringFromTimeInterval:v6];
  v20 = v13;
  if (a4 == 1)
  {
    HFLocalizedStringWithFormat(@"HFTriggerDurationValueDurationFormatSentence", @"%@", v14, v15, v16, v17, v18, v19, v13);
  }

  else
  {
    if (a4)
    {
      v22 = v13;
      goto LABEL_12;
    }

    HFLocalizedStringWithFormat(@"HFTriggerDurationValueDurationFormat", @"%@", v14, v15, v16, v17, v18, v19, v13);
  }
  v22 = ;
LABEL_12:
  v21 = v22;

LABEL_13:

  return v21;
}

+ (__CFString)_hf_triggerRangeKeyComponentForRangeType:()NaturalLanguage
{
  if ((a3 - 1) > 2)
  {
    return @"DropsBelow";
  }

  else
  {
    return off_277DF7730[a3 - 1];
  }
}

+ (unint64_t)hf_triggerRangeTypeWithCharacteristics:()NaturalLanguage triggerValueRange:thresholdValue:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  anyObject = [v7 anyObject];
  characteristicType = [anyObject characteristicType];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __107__HMEventTrigger_NaturalLanguage__hf_triggerRangeTypeWithCharacteristics_triggerValueRange_thresholdValue___block_invoke;
  v26[3] = &unk_277DF6218;
  v12 = characteristicType;
  v27 = v12;
  if ([v7 na_any:v26])
  {
    v13 = 3;
  }

  else
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __107__HMEventTrigger_NaturalLanguage__hf_triggerRangeTypeWithCharacteristics_triggerValueRange_thresholdValue___block_invoke_2;
    v22 = &unk_277DF76A0;
    v23 = anyObject;
    v24 = v8;
    v25 = v9;
    v13 = __107__HMEventTrigger_NaturalLanguage__hf_triggerRangeTypeWithCharacteristics_triggerValueRange_thresholdValue___block_invoke_2(&v19);
  }

  anyObject2 = [v7 anyObject];
  characteristicType2 = [anyObject2 characteristicType];
  v16 = [characteristicType2 isEqualToString:*MEMORY[0x277CCF770]];

  if (v13 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v13;
  }

  if (v13 == 1)
  {
    v17 = 0;
  }

  if (v16)
  {
    v13 = v17;
  }

  return v13;
}

+ (id)_hf_localizedStringOrNilIfNotFoundForKey:()NaturalLanguage
{
  v3 = a3;
  v4 = _HFLocalizedStringWithDefaultValue(v3, v3, 1);
  v5 = v4;
  if (!v4 || ([v4 isEqualToString:&stru_2824B1A78] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", v3))
  {

    v5 = 0;
  }

  return v5;
}

- (id)_hf_naturalLanguageDetailsSentenceElementsWithOptions:()NaturalLanguage
{
  v4 = a3;
  predicate = [self predicate];
  v6 = [HFConditionCollection conditionCollectionForPredicate:predicate];

  conditions = [v6 conditions];
  v8 = [conditions na_firstObjectPassingTest:&__block_literal_global_484];

  if (v8)
  {
    predicate2 = [v8 predicate];

    if (!predicate2)
    {
      [v6 removeCondition:v8];
    }
  }

  v10 = objc_opt_class();
  hf_effectiveRecurrences = [self hf_effectiveRecurrences];
  endEvents = [self endEvents];
  v13 = [v10 _hf_naturalLanguageDetailsSentenceElementsWithRecurrences:hf_effectiveRecurrences conditions:v6 endEvents:endEvents withOptions:v4];

  return v13;
}

+ (id)hf_naturalLanguageDetailsWithRecurrences:()NaturalLanguage conditions:endEvents:withOptions:
{
  v1 = [self _hf_naturalLanguageDetailsSentenceElementsWithRecurrences:? conditions:? endEvents:? withOptions:?];
  v2 = [v1 mutableCopy];

  if ([v2 count])
  {
    if (qword_280E02E50 != -1)
    {
      dispatch_once(&qword_280E02E50, &__block_literal_global_489);
    }

    v3 = qword_280E02E58;
    [v3 setListStyle:2];
    array = [v2 array];
    v5 = [v3 stringForObjectValue:array];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_hf_naturalLanguageDetailsSentenceElementsWithRecurrences:()NaturalLanguage conditions:endEvents:withOptions:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  if ([v9 count])
  {
    v14 = [MEMORY[0x277CD1EB0] hf_recurrenceNaturalLanguageStringKeyWithOptions:v12 recurrences:v9];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [v14 localizedStringWithArgumentBlock:0];
        [orderedSet addObject:v15];
      }
    }
  }

  if (v10)
  {
    conditions = [v10 conditions];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __126__HMEventTrigger_NaturalLanguage___hf_naturalLanguageDetailsSentenceElementsWithRecurrences_conditions_endEvents_withOptions___block_invoke;
    v30[3] = &unk_277DF76E8;
    v31 = v12;
    v32 = xmmword_20DD973C0;
    v17 = [conditions na_map:v30];

    if ([v17 count])
    {
      if (qword_280E02E60 != -1)
      {
        dispatch_once(&qword_280E02E60, &__block_literal_global_496);
      }

      v18 = qword_280E02E68;
      v19 = [v18 stringForObjectValue:v17];
      hf_stringByCapitalizingFirstWord = [v19 hf_stringByCapitalizingFirstWord];
      [orderedSet addObject:hf_stringByCapitalizingFirstWord];
    }
  }

  v21 = [v11 na_firstObjectPassingTest:&__block_literal_global_498];
  v22 = v21;
  if (v21)
  {
    [v21 duration];
    v24 = v23;
    v25 = objc_opt_class();
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
    v27 = [v25 hf_naturalLanguageTurnOffAfterDuration:v26 style:1];

    [orderedSet addObject:v27];
  }

  v28 = [orderedSet copy];

  return v28;
}

@end