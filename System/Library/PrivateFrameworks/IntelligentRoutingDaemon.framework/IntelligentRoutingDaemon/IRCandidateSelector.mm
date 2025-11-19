@interface IRCandidateSelector
+ (BOOL)_isPickerChoiceOverrideActiveAtDate:(id)a3 withSystemState:(id)a4;
- (id)_nearestRangeCandidateFromCandidates:(id)a3;
- (id)_selectBasedOnContinuityFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6;
- (id)_selectBasedOnMostRecentMainBrokeredDeviceFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6;
- (id)_selectBasedOnMostUsedAnyAppFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6;
- (id)_selectBasedOnMostUsedSimilarAppFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6;
- (id)_selectBasedOnNearestRangeFromCandidates:(id)a3;
- (id)_selectBasedOnNearestRangeWithHistoryOrSameICloudFromCandidates:(id)a3 withSystemState:(id)a4;
- (id)_selectFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6 andRule:(id)a7;
- (id)adjustClassificationForCandidateBasedOnNegativeInputs:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andMiloPrediction:(id)a6 andDate:(id)a7;
- (id)getSelectorReasons;
- (id)selectFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6;
@end

@implementation IRCandidateSelector

- (id)getSelectorReasons
{
  v14[7] = *MEMORY[0x277D85DE8];
  v13[0] = @"candidateSelectorReasonRecentlyUsed";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRCandidateSelector candidateSelectorReasonRecentlyUsed](self, "candidateSelectorReasonRecentlyUsed")}];
  v14[0] = v3;
  v13[1] = @"candidateSelectorReasonMostlyUsedSimilarApp";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRCandidateSelector candidateSelectorReasonMostlyUsedSimilarApp](self, "candidateSelectorReasonMostlyUsedSimilarApp")}];
  v14[1] = v4;
  v13[2] = @"candidateSelectorReasonProximityWithHistoryOrSameICloud";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRCandidateSelector candidateSelectorReasonProximityWithHistoryOrSameICloud](self, "candidateSelectorReasonProximityWithHistoryOrSameICloud")}];
  v14[2] = v5;
  v13[3] = @"candidateSelectorReasonProximity";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRCandidateSelector candidateSelectorReasonProximity](self, "candidateSelectorReasonProximity")}];
  v14[3] = v6;
  v13[4] = @"candidateSelectorReasonMostlyUsedAnyApp";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRCandidateSelector candidateSelectorReasonMostlyUsedAnyApp](self, "candidateSelectorReasonMostlyUsedAnyApp")}];
  v14[4] = v7;
  v13[5] = @"candidateSelectorReasonBrokeredMainDeviceFirstUse";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRCandidateSelector candidateSelectorReasonBrokeredMainDeviceFirstUse](self, "candidateSelectorReasonBrokeredMainDeviceFirstUse")}];
  v14[5] = v8;
  v13[6] = @"candidateSelectorReasonSingle";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRCandidateSelector candidateSelectorReasonSingle](self, "candidateSelectorReasonSingle")}];
  v14[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)selectFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(IRCandidateSelector *)self _candidatesToSelectFrom:v10];
  if ([v14 count] > 1)
  {
    v16 = [(IRCandidateSelector *)self _selectBasedOnContinuityFromCandidates:v14 withSystemState:v11 andHistoryEventsAsc:v12 andDate:v13];
    if (v16)
    {
      v15 = v16;
      [v16 setNominatedClassificationDesc:@"{Continuity}"];
      [(IRCandidateSelector *)self setCandidateSelectorReasonRecentlyUsed:1];
    }

    else
    {
      v17 = [(IRCandidateSelector *)self _selectBasedOnMostUsedSimilarAppFromCandidates:v14 withSystemState:v11 andHistoryEventsAsc:v12 andDate:v13];
      if (v17)
      {
        v15 = v17;
        [v17 setNominatedClassificationDesc:@"{Most used similar app}"];
        [(IRCandidateSelector *)self setCandidateSelectorReasonMostlyUsedSimilarApp:1];
      }

      else
      {
        v18 = [(IRCandidateSelector *)self _selectBasedOnMostUsedAnyAppFromCandidates:v14 withSystemState:v11 andHistoryEventsAsc:v12 andDate:v13];
        if (v18)
        {
          v15 = v18;
          [v18 setNominatedClassificationDesc:@"{Most used any app}"];
          [(IRCandidateSelector *)self setCandidateSelectorReasonMostlyUsedAnyApp:1];
        }

        else
        {
          v19 = [(IRCandidateSelector *)self _selectBasedOnNearestRangeWithHistoryOrSameICloudFromCandidates:v14 withSystemState:v11];
          if (v19)
          {
            v15 = v19;
            [v19 setNominatedClassificationDesc:@"{Nearest used or same iCloud}"];
            [(IRCandidateSelector *)self setCandidateSelectorReasonProximityWithHistoryOrSameICloud:1];
          }

          else
          {
            v20 = [(IRCandidateSelector *)self _selectBasedOnNearestRangeFromCandidates:v10];
            if (v20)
            {
              v15 = v20;
              [v20 setNominatedClassificationDesc:@"{Nearest}"];
              [(IRCandidateSelector *)self setCandidateSelectorReasonProximity:1];
            }

            else
            {
              v21 = [(IRCandidateSelector *)self _selectBasedOnMostRecentMainBrokeredDeviceFromCandidates:v14 withSystemState:v11 andHistoryEventsAsc:v12 andDate:v13];
              if (v21)
              {
                v15 = v21;
                [v21 setNominatedClassificationDesc:@"{Brokered Main Device First Use}"];
                [(IRCandidateSelector *)self setCandidateSelectorReasonBrokeredMainDeviceFirstUse:1];
              }

              else
              {
                v22 = dispatch_get_specific(*MEMORY[0x277D21308]);
                v23 = *MEMORY[0x277D21260];
                if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
                {
                  v26 = 136315394;
                  v27 = "#tie-breaker, ";
                  v28 = 2112;
                  v29 = v22;
                  _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate selector error] selectFromCandidates should always select one candidate if we got here", &v26, 0x16u);
                }

                v15 = 0;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v15 = [v14 anyObject];
    [v15 setNominatedClassificationDesc:@"{Single}"];
    [(IRCandidateSelector *)self setCandidateSelectorReasonSingle:1];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)adjustClassificationForCandidateBasedOnNegativeInputs:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andMiloPrediction:(id)a6 andDate:(id)a7
{
  v63[8] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = a6;
  v14 = +[IRAirPlaySettings shared];
  v15 = [v14 isAutoRoutingSettingEnabled];

  v16 = +[IRAirPlaySettings shared];
  v17 = [v16 isRoutePredictionSettingEnabled];

  v18 = [v11 isHeadphonesRoutedOrPredicted];
  if (v11)
  {
    LODWORD(v57) = [v11 isInsideAppInFocusWindow] ^ 1;
  }

  else
  {
    LODWORD(v57) = 0;
  }

  v59 = [v13 isTemporarilyUnavailable];
  v19 = [v11 appInFocusWindowScreenUnlockEvent];
  v20 = [v13 isMotionDetected];

  v21 = [v10 candidate];
  v22 = [v21 isBrokeredDevice];

  v60 = [IRCandidateSelector _isPickerChoiceOverrideActiveAtDate:v12 withSystemState:v11];
  v61 = +[IRPlatformInfo isTVOS];
  v23 = MEMORY[0x277CBEB38];
  v62[0] = @"kRuleIsMiLoTemporarilyUnavailable";
  v62[1] = @"kRuleIsAutoRoutingSettingDisabled";
  v63[0] = MEMORY[0x277CBEC28];
  v63[1] = MEMORY[0x277CBEC28];
  v62[2] = @"kRuleIsRoutePredictionSettingDisabled";
  v62[3] = @"kIsHeadsetConnected";
  v63[2] = MEMORY[0x277CBEC28];
  v63[3] = MEMORY[0x277CBEC28];
  v62[4] = @"kIsOutsideAppLaunchWindow";
  v62[5] = @"kIsAppInFocusWindowScreenLockToUnlock";
  v63[4] = MEMORY[0x277CBEC28];
  v63[5] = MEMORY[0x277CBEC28];
  v62[6] = @"kIsBrokeredDevice";
  v62[7] = @"kIsPickerChoiceOverrideActive";
  v63[6] = MEMORY[0x277CBEC28];
  v63[7] = MEMORY[0x277CBEC28];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:8];
  v25 = [v23 dictionaryWithDictionary:v24];

  if (v15)
  {
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if ([v10 nominatedClassification] == 4)
    {
      [v10 setNominatedClassification:3];
    }

    v26 = [v10 nominatedClassificationDesc];
    v27 = [v26 stringByAppendingString:@"[ARS Disabled]"];
    [v10 setNominatedClassificationDesc:v27];

    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kRuleIsAutoRoutingSettingDisabled"];
    if (!v19)
    {
LABEL_6:
      if (!v20)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  if ([v10 nominatedClassification] == 4)
  {
    [v10 setNominatedClassification:3];
  }

  v28 = [v10 nominatedClassificationDesc];
  v29 = [v28 stringByAppendingString:@"[App Window Unlock To Lock]"];
  [v10 setNominatedClassificationDesc:v29];

  [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kIsAppInFocusWindowScreenLockToUnlock"];
  if (!v20)
  {
LABEL_7:
    if (!v22)
    {
      goto LABEL_28;
    }

LABEL_18:
    if ([v10 nominatedClassification] == 4)
    {
      [v10 setNominatedClassification:3];
    }

    v32 = [v10 nominatedClassificationDesc];
    v33 = [v32 stringByAppendingString:@"[Brokered Device]"];
    [v10 setNominatedClassificationDesc:v33];

    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kIsBrokeredDevice"];
    if ([v10 sameSpaceBasedOnMiLo])
    {
      v34 = +[IRPreferences shared];
      v35 = [v34 candidateSelectorAllowSelectByMiLo];
      v36 = [v35 BOOLValue];
    }

    else
    {
      v36 = 0;
    }

    if ([v10 sameSpaceBasedOnPDRFence])
    {
      v37 = +[IRPreferences shared];
      v38 = [v37 candidateSelectorAllowSelectByPDRFence];
      v39 = [v38 BOOLValue];

      if ((v39 | v36))
      {
        goto LABEL_28;
      }
    }

    else if (v36)
    {
      goto LABEL_28;
    }

    [v10 setNominatedClassification:2];
    v40 = [v10 nominatedClassificationDesc];
    v41 = [v40 stringByAppendingString:@"[PDR Fence/MiLo Room Detection Disabled]"];
    [v10 setNominatedClassificationDesc:v41];

    goto LABEL_28;
  }

LABEL_15:
  if ([v10 nominatedClassification] == 4)
  {
    [v10 setNominatedClassification:3];
  }

  v30 = [v10 nominatedClassificationDesc];
  v31 = [v30 stringByAppendingString:@"[MiLo In Motion]"];
  [v10 setNominatedClassificationDesc:v31];

  [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kIsMiLoInMotion"];
  if (v22)
  {
    goto LABEL_18;
  }

LABEL_28:
  if ((v17 & 1) == 0)
  {
    [v10 setNominatedClassification:2];
    [v10 setIsCallToAction:MEMORY[0x277CBEC28]];
    v42 = [v10 nominatedClassificationDesc];
    v43 = [v42 stringByAppendingString:@"[RPS Disabled]"];
    [v10 setNominatedClassificationDesc:v43];

    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kRuleIsRoutePredictionSettingDisabled"];
  }

  if (v18)
  {
    [v10 setNominatedClassification:2];
    [v10 setIsCallToAction:MEMORY[0x277CBEC28]];
    v44 = [v10 nominatedClassificationDesc];
    v45 = [v44 stringByAppendingString:@"[Headset Or AirPods]"];
    [v10 setNominatedClassificationDesc:v45];

    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kIsHeadsetConnected"];
  }

  if (v58)
  {
    [v10 setNominatedClassification:2];
    [v10 setIsCallToAction:MEMORY[0x277CBEC28]];
    v46 = [v10 nominatedClassificationDesc];
    v47 = [v46 stringByAppendingString:@"[Outside App Window]"];
    [v10 setNominatedClassificationDesc:v47];

    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kIsOutsideAppLaunchWindow"];
  }

  if (v59)
  {
    [v10 setNominatedClassification:2];
    [v10 setIsCallToAction:MEMORY[0x277CBEC28]];
    v48 = [v10 nominatedClassificationDesc];
    v49 = [v48 stringByAppendingString:@"[MiLo Temporarily Unavailable]"];
    [v10 setNominatedClassificationDesc:v49];

    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kRuleIsMiLoTemporarilyUnavailable"];
  }

  if (v60)
  {
    [v10 setNominatedClassification:2];
    [v10 setIsCallToAction:MEMORY[0x277CBEC28]];
    v50 = [v10 nominatedClassificationDesc];
    v51 = [v50 stringByAppendingString:@"[Picker Choice Override]"];
    [v10 setNominatedClassificationDesc:v51];

    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kIsPickerChoiceOverrideActive"];
  }

  if (v61)
  {
    if ([v10 nominatedClassification] == 4)
    {
      [v10 setNominatedClassification:3];
    }

    v52 = [v10 nominatedClassificationDesc];
    v53 = [v52 stringByAppendingString:@"[TV OS]"];
    [v10 setNominatedClassificationDesc:v53];

    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kIsTVOS"];
  }

  v54 = [v25 copy];

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (id)_selectBasedOnContinuityFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6
{
  v27[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IRPreferences shared];
  v15 = [v14 candidateSelectorIsContinuityEnabled];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = objc_alloc_init(IRRuleHistoryPattern);
    v18 = +[IREventDO mediaUserInteractionEvents];
    [(IRRuleHistoryPattern *)v17 setEventsToWatch:v18];

    v19 = MEMORY[0x277CBEB98];
    v27[0] = @"kIRRuleHistoryPatternFilterIsSimilarApp";
    v27[1] = @"kIRRuleHistoryPatternFilterOnlyTestedCandidates";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v21 = [v19 setWithArray:v20];
    [(IRRuleHistoryPattern *)v17 setFilters:v21];

    v22 = +[IRPreferences shared];
    v23 = [v22 mediaRulesContinuityTimeIntervalInSeconds];
    [v23 doubleValue];
    [(IRRuleHistoryPattern *)v17 setTimeInterval:?];

    [(IRRuleHistoryPattern *)v17 setMaxNumberOfEventsInHistory:1];
    [(IRRuleHistoryPattern *)v17 setMinNumberOfEventsInHistory:1];
    [(IRRuleHistoryPattern *)v17 setThreshold:1.0];
    [(IRRuleHistoryPattern *)v17 setCalculateScoreWithoutPortion:1];
    v24 = [(IRCandidateSelector *)self _selectFromCandidates:v10 withSystemState:v11 andHistoryEventsAsc:v12 andDate:v13 andRule:v17];
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_selectBasedOnMostUsedSimilarAppFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6
{
  v29[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IRPreferences shared];
  v15 = [v14 candidateSelectorIsMostUsedSimilarAppEnabled];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = objc_alloc_init(IRRuleHistoryPattern);
    v18 = +[IREventDO mediaUserInteractionEvents];
    [(IRRuleHistoryPattern *)v17 setEventsToWatch:v18];

    v19 = MEMORY[0x277CBEB98];
    v29[0] = @"kIRRuleHistoryPatternFilterIsSimilarApp";
    v29[1] = @"kIRRuleHistoryPatternFilterOnlyTestedCandidates";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v21 = [v19 setWithArray:v20];
    [(IRRuleHistoryPattern *)v17 setFilters:v21];

    v22 = +[IRPreferences shared];
    v23 = [v22 candidateSelectorMostUsedSimilarAppTimeIntervalSeconds];
    [v23 doubleValue];
    [(IRRuleHistoryPattern *)v17 setTimeInterval:?];

    v24 = +[IRPreferences shared];
    v25 = [v24 candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents];
    -[IRRuleHistoryPattern setMaxNumberOfEventsInHistory:](v17, "setMaxNumberOfEventsInHistory:", [v25 unsignedIntegerValue]);

    [(IRRuleHistoryPattern *)v17 setMinNumberOfEventsInHistory:1];
    [(IRRuleHistoryPattern *)v17 setThreshold:2147483650.0];
    [(IRRuleHistoryPattern *)v17 setCalculateScoreWithoutPortion:1];
    v26 = [(IRCandidateSelector *)self _selectFromCandidates:v10 withSystemState:v11 andHistoryEventsAsc:v12 andDate:v13 andRule:v17];
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_selectBasedOnMostUsedAnyAppFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6
{
  v29[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IRPreferences shared];
  v15 = [v14 candidateSelectorIsMostUsedAnyAppEnabled];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = objc_alloc_init(IRRuleHistoryPattern);
    v18 = +[IREventDO mediaUserInteractionEvents];
    [(IRRuleHistoryPattern *)v17 setEventsToWatch:v18];

    v19 = MEMORY[0x277CBEB98];
    v29[0] = @"kIRRuleHistoryPatternFilterOnlyTestedCandidates";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    v21 = [v19 setWithArray:v20];
    [(IRRuleHistoryPattern *)v17 setFilters:v21];

    v22 = +[IRPreferences shared];
    v23 = [v22 candidateSelectorMostUsedAnyAppTimeIntervalSeconds];
    [v23 doubleValue];
    [(IRRuleHistoryPattern *)v17 setTimeInterval:?];

    v24 = +[IRPreferences shared];
    v25 = [v24 candidateSelectorMostUsedAnyAppMaximumNumberOfEvents];
    -[IRRuleHistoryPattern setMaxNumberOfEventsInHistory:](v17, "setMaxNumberOfEventsInHistory:", [v25 unsignedIntegerValue]);

    [(IRRuleHistoryPattern *)v17 setMinNumberOfEventsInHistory:1];
    [(IRRuleHistoryPattern *)v17 setThreshold:2147483650.0];
    [(IRRuleHistoryPattern *)v17 setCalculateScoreWithoutPortion:1];
    v26 = [(IRCandidateSelector *)self _selectFromCandidates:v10 withSystemState:v11 andHistoryEventsAsc:v12 andDate:v13 andRule:v17];
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_selectBasedOnMostRecentMainBrokeredDeviceFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(IRRuleHistoryPattern);
  v14 = MEMORY[0x277CBEB98];
  v15 = [IREventDO eventDOWithMediaType:9];
  v30[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v17 = [v14 setWithArray:v16];
  [(IRRuleHistoryPattern *)v13 setEventsToWatch:v17];

  v18 = MEMORY[0x277CBEB98];
  v29 = @"kIRRuleHistoryPatternFilterOnlyTestedCandidates";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v20 = [v18 setWithArray:v19];
  [(IRRuleHistoryPattern *)v13 setFilters:v20];

  v21 = +[IRPreferences shared];
  v22 = [v21 candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds];
  [v22 doubleValue];
  [(IRRuleHistoryPattern *)v13 setTimeInterval:?];

  v23 = +[IRPreferences shared];
  v24 = [v23 candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents];
  -[IRRuleHistoryPattern setMaxNumberOfEventsInHistory:](v13, "setMaxNumberOfEventsInHistory:", [v24 unsignedIntegerValue]);

  [(IRRuleHistoryPattern *)v13 setMinNumberOfEventsInHistory:1];
  [(IRRuleHistoryPattern *)v13 setThreshold:2147483650.0];
  [(IRRuleHistoryPattern *)v13 setCalculateScoreWithoutPortion:1];
  v25 = [(IRCandidateSelector *)self _selectFromCandidates:v12 withSystemState:v11 andHistoryEventsAsc:v10 andDate:v9 andRule:v13];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_selectFromCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6 andRule:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v15 map:&__block_literal_global_12];
  v17 = [IRCandidatesContainerDO candidatesContainerDOWithCandidates:v16];

  v18 = [IRHistoryEventsContainerDO historyEventsContainerDOWithHistoryEvents:v13];

  v19 = [[IRNearbyDeviceContainerDO alloc] initWithFreezeDateNIHomeDevice:0 nearbyDevices:0];
  v20 = [v11 executeRuleWithCandiatesContainer:v17 systemStatus:v14 historyContainer:v18 miloPrediction:0 nearbyDeviceContainer:v19 date:v12];

  v21 = [v20 scoreForCandidates];
  v22 = [v21 allValues];
  v23 = [v22 valueForKeyPath:@"@max.self"];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __97__IRCandidateSelector__selectFromCandidates_withSystemState_andHistoryEventsAsc_andDate_andRule___block_invoke_2;
  v28[3] = &unk_2797E1A78;
  v29 = v20;
  v30 = v23;
  v24 = v23;
  v25 = v20;
  v26 = [v15 firstWhere:v28];

  return v26;
}

uint64_t __97__IRCandidateSelector__selectFromCandidates_withSystemState_andHistoryEventsAsc_andDate_andRule___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 candidate];
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) scoreForCandidates];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__IRCandidateSelector__selectFromCandidates_withSystemState_andHistoryEventsAsc_andDate_andRule___block_invoke_3;
  v10[3] = &unk_2797E1BD8;
  v11 = *(a1 + 40);
  v6 = [v5 keysOfEntriesPassingTest:v10];
  v7 = [v6 anyObject];
  v8 = [v4 isEqual:v7];

  return v8;
}

uint64_t __97__IRCandidateSelector__selectFromCandidates_withSystemState_andHistoryEventsAsc_andDate_andRule___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 doubleValue];
  if (v5 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 isEqual:*(a1 + 32)];
  }

  return v6;
}

- (id)_selectBasedOnNearestRangeWithHistoryOrSameICloudFromCandidates:(id)a3 withSystemState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IRPreferences shared];
  v9 = [v8 candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled];
  v10 = [v9 BOOLValue];

  if (v10 && (+[IRPreferences shared](IRPreferences, "shared"), v11 = objc_claimAutoreleasedReturnValue(), [v11 candidateSelectorAllowSelectByUWB], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, v11, v13))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __103__IRCandidateSelector__selectBasedOnNearestRangeWithHistoryOrSameICloudFromCandidates_withSystemState___block_invoke;
    v17[3] = &unk_2797E1940;
    v18 = v7;
    v14 = [v6 allWhere:v17];

    v15 = [(IRCandidateSelector *)self _nearestRangeCandidateFromCandidates:v14];

    v6 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

BOOL __103__IRCandidateSelector__selectBasedOnNearestRangeWithHistoryOrSameICloudFromCandidates_withSystemState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 sameSpaceBasedOnUWB])
  {
    v4 = [v3 candidate];
    if ([v4 isSameICloudWithSystemState:*(a1 + 32)])
    {
      v5 = 1;
    }

    else
    {
      v6 = [v3 candidate];
      v7 = [v6 lastUsedDate];
      v5 = v7 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_selectBasedOnNearestRangeFromCandidates:(id)a3
{
  v4 = a3;
  v5 = +[IRPreferences shared];
  v6 = [v5 candidateSelectorIsNearestRangeEnabled];
  v7 = [v6 BOOLValue];

  if (v7 && (+[IRPreferences shared](IRPreferences, "shared"), v8 = objc_claimAutoreleasedReturnValue(), [v8 candidateSelectorAllowSelectByUWB], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, v10))
  {
    v11 = [v4 allWhere:&__block_literal_global_148];

    v12 = [(IRCandidateSelector *)self _nearestRangeCandidateFromCandidates:v11];
    v4 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_nearestRangeCandidateFromCandidates:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKeyPath:@"@min.uwbRange"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__IRCandidateSelector__nearestRangeCandidateFromCandidates___block_invoke;
  v11[3] = &unk_2797E1940;
  v12 = v4;
  v5 = v4;
  v6 = [v3 allWhere:v11];

  v7 = [v6 allObjects];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_154];
  v9 = [v8 firstObject];

  return v9;
}

uint64_t __60__IRCandidateSelector__nearestRangeCandidateFromCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uwbRange];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __60__IRCandidateSelector__nearestRangeCandidateFromCandidates___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 candidate];
  v6 = [v5 nodes];
  v7 = [v6 count];

  v8 = [v4 candidate];

  v9 = [v8 nodes];
  v10 = [v9 count];

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

uint64_t __47__IRCandidateSelector__candidatesToSelectFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 sameSpaceBasedOnMiLo])
  {
    v3 = +[IRPreferences shared];
    v4 = [v3 candidateSelectorAllowSelectByMiLo];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  if ([v2 sameSpaceBasedOnUWB])
  {
    v6 = +[IRPreferences shared];
    v7 = [v6 candidateSelectorAllowSelectByUWB];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  if ([v2 sameSpaceBasedOnBLE])
  {
    v9 = +[IRPreferences shared];
    v10 = [v9 candidateSelectorAllowSelectByBLE];
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  if ([v2 sameSpaceBasedOnBrokeredLOI])
  {
    v12 = +[IRPreferences shared];
    v13 = [v12 candidateSelectorAllowSelectByLOI];
    v14 = [v13 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  if ([v2 sameSpaceBasedOnPDRFence])
  {
    v15 = +[IRPreferences shared];
    v16 = [v15 candidateSelectorAllowSelectByPDRFence];
    v17 = [v16 BOOLValue];
  }

  else
  {
    v17 = 0;
  }

  if ([v2 sameSpaceBasedOnHistory])
  {
    v18 = +[IRPreferences shared];
    v19 = [v18 candidateSelectorAllowSelectByHistory];
    v20 = [v19 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  return ((v5 | v8 | v11 | v14) | (v17 | v20)) & 1;
}

+ (BOOL)_isPickerChoiceOverrideActiveAtDate:(id)a3 withSystemState:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = a3;
    v7 = [a4 latestPickerChoiceDate];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    v10 = +[IRPreferences shared];
    v11 = [v10 pickerChoiceOverrideIntervalSeconds];
    [v11 doubleValue];
    v4 = v9 < v12 && v9 >= 0.0;
  }

  return v4;
}

@end