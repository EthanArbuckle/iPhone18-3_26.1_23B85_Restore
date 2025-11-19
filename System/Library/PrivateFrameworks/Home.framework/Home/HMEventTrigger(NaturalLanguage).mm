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

  v8 = [a1 hf_naturalLanguageNameWithOptions:v7];

  return v8;
}

- (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 events];
  v7 = [a1 hf_effectiveRecurrences];
  v8 = [a1 creator];
  v9 = [v5 hf_naturalLanguageNameWithOptions:v4 events:v6 recurrences:v7 forUser:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [a1 name];
  }

  v11 = v10;

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
        v41 = [v29 na_mostCommonObject];

        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __96__HMEventTrigger_NaturalLanguage__hf_naturalLanguageNameWithOptions_events_recurrences_forUser___block_invoke_7;
        v43[3] = &unk_277DF7650;
        v44 = v41;
        v34 = v41;
        v33 = [v17 na_filter:v43];
        v30 = [v33 na_map:&__block_literal_global_250];
        v37 = MEMORY[0x277CCA940];
        v42 = v30;
        v32 = [v33 na_map:&__block_literal_global_252];
        v31 = [v37 setWithSet:v32];
        v38 = [v31 na_mostCommonObject];

        v11 = v35;
        v22 = [objc_opt_class() hf_naturalLanguageNameWithOptions:v9 characteristics:v42 triggerValue:v38];

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
    v11 = [v9 identifier];
    if ([v11 length])
    {
      v12 = [v9 identifier];
    }

    else
    {
      v12 = 0;
    }

    v15 = [v8 home];
    v16 = [v15 currentUser];

    v17 = @"HFOtherUser_";
    if (v16 == v10)
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
        if (v12)
        {
          if ([v12 isEqualToString:@"Home"])
          {
            v21 = @"_Home";
          }

          else if ([v12 isEqualToString:@"Work"])
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

        v49 = v12;
        if ([v8 nameType] == 2)
        {
          v23 = [(__CFString *)v18 stringByAppendingString:@"_fullSentence"];

          v24 = [v8 actions];
          v25 = [v24 count];

          if (v25)
          {
            v26 = [v8 actionNaturalLanguageOptions];
            [v26 setFormattingContext:5];

            v27 = [v8 actions];
            v28 = [v8 actionNaturalLanguageOptions];
            v29 = [HFActionNaturalLanguageUtilities hf_naturalLanguageDescriptionForActions:v27 withOptions:v28];

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

        v32 = [MEMORY[0x277CBEB18] array];
        if (v16 != v10)
        {
          v48 = a1;
          v33 = [HFUserNameFormatter alloc];
          v34 = [v8 home];
          v35 = [(HFUserNameFormatter *)v33 initWithHome:v34];

          [(HFUserNameFormatter *)v35 setStyle:1];
          v36 = [v8 home];
          v37 = [v36 hf_handleForUser:v10];

          v38 = [(HFUserNameFormatter *)v35 stringForObjectValue:v37];
          if (v38)
          {
            [v32 na_safeAddObject:v38];
          }

          else
          {
            v39 = [v10 name];
            if (v39)
            {
              [v32 na_safeAddObject:v39];
            }

            else
            {
              v40 = [v10 userID];
              v47 = v40;
              if (v40)
              {
                [v32 na_safeAddObject:v40];
              }

              else
              {
                v46 = _HFLocalizedStringWithDefaultValue(@"HFOtherUserDefaultName", @"HFOtherUserDefaultName", 1);
                [v32 na_safeAddObject:v46];
              }
            }
          }

          a1 = v48;
        }

        [v32 na_safeAddObject:v49];
        [v32 na_safeAddObject:v29];
        v41 = MEMORY[0x277CCACA8];
        v42 = _HFLocalizedStringWithDefaultValue(v18, v18, 1);
        v14 = [v41 hf_stringWithFormat:v42 arguments:v32];

        if (![v8 nameType])
        {
          v43 = [v8 home];
          v44 = [a1 hf_sanitizeTriggerName:v14 home:v43];

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
  v8 = [v5 actions];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v5 actionNaturalLanguageOptions];
    [v10 setFormattingContext:5];

    v11 = [v5 actions];
    v12 = [v5 actionNaturalLanguageOptions];
    v13 = [HFActionNaturalLanguageUtilities hf_naturalLanguageDescriptionForActions:v11 withOptions:v12];

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
  v3 = [a3 characteristicType];
  if ([v3 isEqualToString:*MEMORY[0x277CCF770]])
  {
    v4 = @"HFCharacteristicTriggerDescriptionTypeAirQuality";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CCF850]])
  {
    v4 = @"HFCharacteristicTriggerDescriptionTypeHumidity";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CCF868]])
  {
    v4 = @"HFCharacteristicTriggerDescriptionTypeTemperature";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CCF830]])
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
    v11 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__HMEventTrigger_NaturalLanguage__hf_naturalLanguageNameWithOptions_characteristics_triggerValue___block_invoke;
    v15[3] = &unk_277DF6218;
    v16 = v11;
    v12 = v11;
    if ([v9 na_any:v15])
    {
      [a1 _hf_naturalLanguageNameWithOptions:v8 sensorCharacteristics:v9 triggerValue:v10];
    }

    else
    {
      [a1 _hf_naturalLanguageNameWithOptions:v8 nonSensorCharacteristics:v9 triggerValue:v10];
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
  v10 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __105__HMEventTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_sensorCharacteristics_triggerValue___block_invoke;
  v55[3] = &unk_277DF7678;
  v11 = v9;
  v56 = v11;
  v12 = v10;
  v57 = v12;
  v13 = [v8 na_firstObjectPassingTest:v55];
  v14 = [v13 characteristicType];
  v15 = v14;
  if (!v14)
  {
    v22 = 0;
    goto LABEL_36;
  }

  v53 = v12;
  if (![v14 isEqualToString:*MEMORY[0x277CCF978]])
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

        v19 = [v18 BOOLValue];
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

  v19 = [v18 BOOLValue];
  v20 = @"HFCharacteristicTriggerDescriptionSensorMotionNotDetected";
  v21 = @"HFCharacteristicTriggerDescriptionSensorMotionDetected";
LABEL_7:
  if (v19)
  {
    v20 = v21;
  }

  v52 = v20;

LABEL_18:
  v24 = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
  v25 = [v24 containsObject:v15];

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
      v51 = [a1 _hf_triggerRangeKeyComponentForRangeType:{objc_msgSend(a1, "hf_triggerRangeTypeWithCharacteristics:triggerValueRange:thresholdValue:", v8, v28, v29)}];
      v49 = [a1 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v8 triggerValue:v29];
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

  v30 = [v7 actions];
  v50 = v13;
  v47 = v11;
  if (![v30 count])
  {
    v31 = 0;
    goto LABEL_31;
  }

  v31 = [v7 actionNaturalLanguageOptions];

  if (v31)
  {
    v30 = [v7 actions];
    v32 = [v7 actionNaturalLanguageOptions];
    v31 = [HFActionNaturalLanguageUtilities hf_naturalLanguageDescriptionForActions:v30 withOptions:v32];

LABEL_31:
  }

  v33 = v8;
  v34 = [v8 anyObject];
  v35 = [v34 service];

  v36 = [v35 hf_parentRoom];
  v37 = [v7 home];
  v38 = [v37 roomForEntireHome];
  v39 = [v36 isEqual:v38];

  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = [v36 name];
  }

  v22 = [a1 _hf_alarmNaturalLanguageNameWithNameStringKey:v52 nameType:objc_msgSend(v7 thresholdKey:"nameType") thresholdValueDescription:v51 roomName:v49 actionsDescription:{v40, v31}];

  v8 = v33;
  v11 = v48;
  v12 = v53;
  v13 = v50;
LABEL_36:
  if (![v7 nameType])
  {
    v41 = [v7 home];
    v42 = [a1 hf_sanitizeTriggerName:v22 home:v41];

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
    v18 = [MEMORY[0x277CBEB18] array];
    if (v14)
    {
      v19 = [v13 stringByAppendingFormat:@"_%@", v14];

      [v18 na_safeAddObject:v15];
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

      [v18 addObject:v16];
      v21 = v22;
    }

    if (v17)
    {
      v23 = [v21 stringByAppendingString:@"_WithAction"];

      [v18 addObject:v17];
      v21 = v23;
    }

    v24 = _HFLocalizedStringWithDefaultValue(v21, v21, 1);
    v25 = [MEMORY[0x277CCACA8] hf_stringWithFormat:v24 arguments:v18];
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

    v15 = [a1 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v10 triggerValueRange:v14 thresholdValue:0];
  }

  else
  {
    v15 = [a1 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v10 triggerValue:v9];
  }

  v16 = [v10 anyObject];

  v17 = [v16 service];

  v18 = [v8 home];
  v19 = [v18 hf_serviceGroupsForService:v17];
  v20 = [v19 firstObject];

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v17;
  }

  v22 = [v21 hf_displayName];
  v23 = [v8 objectsInContext];
  v24 = [v23 count];

  if (v24)
  {
    v25 = [v8 objectsInContext];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __108__HMEventTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_nonSensorCharacteristics_triggerValue___block_invoke;
    v51[3] = &unk_277DF5C10;
    v26 = v17;
    v52 = v26;
    v27 = [v25 na_firstObjectPassingTest:v51];

    if (v27)
    {
      if (v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = v26;
      }

      v29 = [v28 hf_serviceNameComponents];
      v30 = [v29 rawServiceName];

      v22 = v30;
    }
  }

  if (v22 && v15)
  {
    if ([v8 nameType] == 2)
    {
      v31 = [v8 actions];
      v32 = [v31 count];

      v33 = @"HFCharacteristicTriggerDescriptionFormatString_fullSentence";
      if (v32)
      {
        v34 = [v8 actionNaturalLanguageOptions];
        [v34 setFormattingContext:5];

        [v8 actions];
        v35 = v49 = a1;
        [v8 actionNaturalLanguageOptions];
        v36 = v48 = v15;
        v32 = [HFActionNaturalLanguageUtilities hf_naturalLanguageDescriptionForActions:v35 withOptions:v36];

        v15 = v48;
        a1 = v49;
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
      HFLocalizedStringWithFormat(v33, @"%@%@%@", v37, v38, v39, v40, v41, v42, v22);
    }

    else
    {
      HFLocalizedStringWithFormat(v33, @"%@%@", v37, v38, v39, v40, v41, v42, v22);
    }
    v43 = ;

    v11 = v43;
  }

  if (![v8 nameType])
  {
    [v8 home];
    v45 = v44 = v15;
    v46 = [a1 hf_sanitizeTriggerName:v11 home:v45];

    v15 = v44;
    v11 = v46;
  }

  return v11;
}

+ (id)hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:()NaturalLanguage
{
  v3 = a3;
  v4 = [v3 anyObject];
  v5 = [v4 characteristicType];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __105__HMEventTrigger_NaturalLanguage__hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics___block_invoke;
  v12[3] = &unk_277DF6218;
  v6 = v5;
  v13 = v6;
  v7 = [v3 na_any:v12];

  if (v7)
  {
    goto LABEL_2;
  }

  if ([v6 isEqualToString:*MEMORY[0x277CCF770]])
  {
    v8 = [MEMORY[0x277CCAA28] hf_valueFormatterForCharacteristic:v4 options:0];
  }

  else
  {
    if ([v6 isEqualToString:*MEMORY[0x277CCF868]])
    {
      v9 = +[HFFormatterManager sharedInstance];
      v10 = [v9 temperatureFormatter];
    }

    else if ([v6 isEqualToString:*MEMORY[0x277CCF850]])
    {
      v9 = +[HFFormatterManager sharedInstance];
      v10 = [v9 percentFormatter];
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
      v10 = [v9 luxFormatter];
    }

    v8 = v10;
  }

LABEL_12:

  return v8;
}

+ (id)hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:()NaturalLanguage triggerValue:visibleTriggerValues:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 anyObject];
  v12 = [v11 characteristicType];
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __130__HMEventTrigger_NaturalLanguage__hf_triggerValueNaturalLanguageDescriptionWithCharacteristics_triggerValue_visibleTriggerValues___block_invoke;
  v43 = &unk_277DF6218;
  v13 = v12;
  v44 = v13;
  v14 = [v8 na_any:&v40];
  v15 = [a1 hf_triggerValueNaturalLanguageDescriptionFormatterWithCharacteristics:v8];
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

    v18 = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
    v19 = [v18 containsObject:v13];

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
      v27 = [v11 hf_visibleTriggerValueClosestToValue:v17];
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
    v22 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
    v23 = [v22 containsObject:v13];

    if (v23)
    {
      v24 = [v9 BOOLValue];
      v25 = @"HFCharacteristicTriggerDescriptionValueOff";
      v26 = @"HFCharacteristicTriggerDescriptionValueOn";
LABEL_14:
      if (v24)
      {
        v25 = v26;
      }

LABEL_30:
      v17 = v25;
      goto LABEL_31;
    }

    if ([v13 isEqualToString:*MEMORY[0x277CCF838]])
    {
      v31 = [v9 integerValue];
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
            v39 = [v9 integerValue];
            if (v39 < 5)
            {
              v17 = off_277DF7708[v39];
              goto LABEL_31;
            }

            goto LABEL_11;
          }

          if (![v13 isEqualToString:*MEMORY[0x277CCF848]])
          {
            if ([v13 isEqualToString:*MEMORY[0x277CCF910]])
            {
              v17 = [a1 hf_localizationKeyForProgrammableSwitchCharacteristic:v11 value:v9];
              if (v17)
              {
                goto LABEL_31;
              }

              goto LABEL_11;
            }

            if ([v13 isEqualToString:*MEMORY[0x277CCF978]])
            {
              v24 = [v9 BOOLValue];
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

              v24 = [v9 BOOLValue];
              v25 = @"HFCharacteristicTriggerDescriptionValueDetectsNoOccupancy";
              v26 = @"HFCharacteristicTriggerDescriptionValueDetectsOccupancy";
            }

            goto LABEL_14;
          }
        }

        v38 = [v9 integerValue];
        v25 = @"HFCharacteristicTriggerDescriptionValueOpen";
        v32 = @"HFCharacteristicTriggerDescriptionValueClosed";
        v33 = v38 == 0;
LABEL_28:
        if (v33)
        {
          v25 = v32;
        }

        goto LABEL_30;
      }

      v31 = [v9 integerValue];
      v25 = @"HFCharacteristicTriggerDescriptionValueOpen";
      v32 = @"HFCharacteristicTriggerDescriptionValueClosed";
    }

    v33 = v31 == 1;
    goto LABEL_28;
  }

LABEL_11:
  v17 = @"HFCharacteristicTriggerDescriptionValueOther";
LABEL_31:
  if ([v8 count] >= 2)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_Plural", v17, v40, v41, v42, v43];
    v35 = [a1 _hf_localizedStringOrNilIfNotFoundForKey:v34];

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
    v15 = [a1 _hf_triggerRangeKeyComponentForRangeType:{objc_msgSend(a1, "hf_triggerRangeTypeWithCharacteristics:triggerValueRange:thresholdValue:", v8, v9, v10)}];
    v12 = v15;
    if (v10)
    {
      v13 = [a1 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v8 triggerValue:v10];
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
  v11 = [v8 anyObject];
  v12 = [v11 characteristicType];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __129__HMEventTrigger_NaturalLanguage__hf_triggerValueNaturalLanguageDescriptionWithCharacteristics_triggerValueRange_thresholdValue___block_invoke;
  v22 = &unk_277DF6218;
  v13 = v12;
  v23 = v13;
  if ([v8 na_any:&v19])
  {
    goto LABEL_2;
  }

  v15 = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
  v16 = [v15 containsObject:v13];

  if (v16)
  {
    v14 = [a1 hf_triggerRangeValueNaturalLanguageDescriptionWithCharacteristics:v8 triggerValueRange:v9 thresholdValue:v10];
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
    v17 = [v9 hf_representativeValue];
    v14 = [a1 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v8 triggerValue:v17];
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
    v8 = [a3 metadata];
    v9 = [v8 hf_isValidValue:v6];

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
  v1 = [a1 hf_localizationKeyForProgrammableSwitchCharacteristic:? value:?];
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
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 preferredLocalizations];
  v10 = [v9 firstObject];
  v11 = [v10 isEqualToString:@"en"];

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
  v10 = [v7 anyObject];
  v11 = [v10 characteristicType];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __107__HMEventTrigger_NaturalLanguage__hf_triggerRangeTypeWithCharacteristics_triggerValueRange_thresholdValue___block_invoke;
  v26[3] = &unk_277DF6218;
  v12 = v11;
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
    v23 = v10;
    v24 = v8;
    v25 = v9;
    v13 = __107__HMEventTrigger_NaturalLanguage__hf_triggerRangeTypeWithCharacteristics_triggerValueRange_thresholdValue___block_invoke_2(&v19);
  }

  v14 = [v7 anyObject];
  v15 = [v14 characteristicType];
  v16 = [v15 isEqualToString:*MEMORY[0x277CCF770]];

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
  v5 = [a1 predicate];
  v6 = [HFConditionCollection conditionCollectionForPredicate:v5];

  v7 = [v6 conditions];
  v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_484];

  if (v8)
  {
    v9 = [v8 predicate];

    if (!v9)
    {
      [v6 removeCondition:v8];
    }
  }

  v10 = objc_opt_class();
  v11 = [a1 hf_effectiveRecurrences];
  v12 = [a1 endEvents];
  v13 = [v10 _hf_naturalLanguageDetailsSentenceElementsWithRecurrences:v11 conditions:v6 endEvents:v12 withOptions:v4];

  return v13;
}

+ (id)hf_naturalLanguageDetailsWithRecurrences:()NaturalLanguage conditions:endEvents:withOptions:
{
  v1 = [a1 _hf_naturalLanguageDetailsSentenceElementsWithRecurrences:? conditions:? endEvents:? withOptions:?];
  v2 = [v1 mutableCopy];

  if ([v2 count])
  {
    if (qword_280E02E50 != -1)
    {
      dispatch_once(&qword_280E02E50, &__block_literal_global_489);
    }

    v3 = qword_280E02E58;
    [v3 setListStyle:2];
    v4 = [v2 array];
    v5 = [v3 stringForObjectValue:v4];
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
  v13 = [MEMORY[0x277CBEB40] orderedSet];
  if ([v9 count])
  {
    v14 = [MEMORY[0x277CD1EB0] hf_recurrenceNaturalLanguageStringKeyWithOptions:v12 recurrences:v9];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [v14 localizedStringWithArgumentBlock:0];
        [v13 addObject:v15];
      }
    }
  }

  if (v10)
  {
    v16 = [v10 conditions];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __126__HMEventTrigger_NaturalLanguage___hf_naturalLanguageDetailsSentenceElementsWithRecurrences_conditions_endEvents_withOptions___block_invoke;
    v30[3] = &unk_277DF76E8;
    v31 = v12;
    v32 = xmmword_20DD973C0;
    v17 = [v16 na_map:v30];

    if ([v17 count])
    {
      if (qword_280E02E60 != -1)
      {
        dispatch_once(&qword_280E02E60, &__block_literal_global_496);
      }

      v18 = qword_280E02E68;
      v19 = [v18 stringForObjectValue:v17];
      v20 = [v19 hf_stringByCapitalizingFirstWord];
      [v13 addObject:v20];
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

    [v13 addObject:v27];
  }

  v28 = [v13 copy];

  return v28;
}

@end