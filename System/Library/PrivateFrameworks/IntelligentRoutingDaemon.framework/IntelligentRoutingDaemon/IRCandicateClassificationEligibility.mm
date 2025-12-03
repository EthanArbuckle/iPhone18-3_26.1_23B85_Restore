@interface IRCandicateClassificationEligibility
+ (id)_generateSettingsStruct:(id)struct;
+ (int64_t)_eligibilityTypeFromEvent:(id)event;
+ (int64_t)classificationEligibilityForCandidate:(id)candidate withHistoryEventsAsc:(id)asc systemState:(id)state;
@end

@implementation IRCandicateClassificationEligibility

+ (int64_t)classificationEligibilityForCandidate:(id)candidate withHistoryEventsAsc:(id)asc systemState:(id)state
{
  candidateCopy = candidate;
  ascCopy = asc;
  stateCopy = state;
  candidateIdentifier = [candidateCopy candidateIdentifier];
  v11 = [IRCandicateClassificationEligibility _generateSettingsStruct:candidateCopy];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__9;
  v36 = __Block_byref_object_dispose__9;
  v37 = objc_opt_new();
  initialStateIsOneTap = [v11 initialStateIsOneTap];
  bOOLValue = [initialStateIsOneTap BOOLValue];

  if (bOOLValue)
  {
    [v33[5] setEligibilityState:1];
  }

  v14 = [IREventDO eventDOWithMediaType:1];
  v15 = [IREventDO eventDOWithMediaType:0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __111__IRCandicateClassificationEligibility_classificationEligibilityForCandidate_withHistoryEventsAsc_systemState___block_invoke;
  v24[3] = &unk_2797E1B90;
  v16 = candidateIdentifier;
  v25 = v16;
  v17 = stateCopy;
  v26 = v17;
  v18 = v14;
  v27 = v18;
  v19 = ascCopy;
  v28 = v19;
  v20 = v15;
  v29 = v20;
  v31 = &v32;
  v21 = v11;
  v30 = v21;
  [v19 enumerateObjectsUsingBlock:v24];
  v22 = +[IRCandicateClassificationEligibilityStateMachine _classificationFromEligibility:](IRCandicateClassificationEligibilityStateMachine, "_classificationFromEligibility:", [v33[5] eligibilityState]);

  _Block_object_dispose(&v32, 8);
  return v22;
}

void __111__IRCandicateClassificationEligibility_classificationEligibilityForCandidate_withHistoryEventsAsc_systemState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v27 = v5;
  v7 = [v5 candidateIdentifier];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6 && ([IRRuleHistoryPattern filterHistoryBySimilarApp:v27 withSystemState:*(a1 + 40)]|| [IRRuleHistoryPattern filterHistoryByBrokeredDeviceScan:v27]))
  {
    v8 = [v27 event];
    v9 = [IRCandicateClassificationEligibility _eligibilityTypeFromEvent:v8];

    v10 = *(a1 + 48);
    v11 = [v27 event];
    LODWORD(v10) = [v10 isEqual:v11];

    if (v10)
    {
      v12 = 3;
      while (++a3 < [*(a1 + 56) count])
      {
        v13 = [*(a1 + 56) objectAtIndexedSubscript:a3];
        v14 = [v13 date];
        v15 = [v27 date];
        [v14 timeIntervalSinceDate:v15];
        v17 = v16;
        v18 = +[IRPreferences shared];
        v19 = [v18 pickerAutoSelectToPicketChoiceMinInterval];
        [v19 doubleValue];
        v21 = v20;

        if (v17 > v21)
        {

          break;
        }

        v22 = [v13 candidateIdentifier];
        v23 = [v27 candidateIdentifier];
        v24 = [v22 isEqual:v23];

        if (v24)
        {
        }

        else
        {
          v25 = *(a1 + 64);
          v26 = [v13 event];
          LOBYTE(v25) = [v25 isEqual:v26];

          if (v25)
          {
            goto LABEL_14;
          }
        }
      }
    }

    v12 = v9;
LABEL_14:
    [*(*(*(a1 + 80) + 8) + 40) runWithEventType:v12 smSettings:*(a1 + 72)];
  }
}

+ (int64_t)_eligibilityTypeFromEvent:(id)event
{
  eventCopy = event;
  v4 = [IREventDO eventDOWithMediaType:5];
  v5 = [IREventDO eventDOWithMediaType:0];
  v14 = [IREventDO eventDOWithMediaType:3];
  v6 = 1;
  v7 = [IREventDO eventDOWithMediaType:1];
  v8 = [IREventDO eventDOWithMediaType:4];
  v9 = [IREventDO eventDOWithMediaType:2];
  v10 = [IREventDO eventDOWithMediaType:8];
  v11 = [IREventDO eventDOWithMediaType:9];
  v12 = [IREventDO eventDOWithMediaType:10];
  if (([eventCopy isEqual:v4] & 1) == 0)
  {
    if ([eventCopy isEqual:v5])
    {
      v6 = 1;
    }

    else if ([eventCopy isEqual:v14] & 1) != 0 || (objc_msgSend(eventCopy, "isEqual:", v7))
    {
      v6 = 4;
    }

    else if ([eventCopy isEqual:v8])
    {
      v6 = 2;
    }

    else if ([eventCopy isEqual:v9])
    {
      v6 = 3;
    }

    else if ([eventCopy isEqual:v10])
    {
      v6 = 5;
    }

    else if ([eventCopy isEqual:v11])
    {
      v6 = 6;
    }

    else if ([eventCopy isEqual:v12])
    {
      v6 = 7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_generateSettingsStruct:(id)struct
{
  structCopy = struct;
  v4 = objc_alloc_init(IREligibilitySettings);
  isFirstPartyDevice = [structCopy isFirstPartyDevice];

  v6 = +[IRPreferences shared];
  v7 = v6;
  if (isFirstPartyDevice)
  {
    uprankToOneTapEligibilityThreshold1stParty = [v6 uprankToOneTapEligibilityThreshold1stParty];
    [(IREligibilitySettings *)v4 setUpRankToOneTapThr:uprankToOneTapEligibilityThreshold1stParty];

    v9 = +[IRPreferences shared];
    uprankToAutorouteEligibilityThreshold1stParty = [v9 uprankToAutorouteEligibilityThreshold1stParty];
    [(IREligibilitySettings *)v4 setUprankToAutorouteThr:uprankToAutorouteEligibilityThreshold1stParty];

    v11 = +[IRPreferences shared];
    downrankToNoneEligibilityThreshold1stParty = [v11 downrankToNoneEligibilityThreshold1stParty];
    [(IREligibilitySettings *)v4 setDownrankToNoneThr:downrankToNoneEligibilityThreshold1stParty];

    v13 = +[IRPreferences shared];
    downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty = [v13 downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty];
    [(IREligibilitySettings *)v4 setDownrankToNoneWithIgnoringThr:downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty];

    v15 = +[IRPreferences shared];
    downrankToOneTapEligibilityThreshold1stParty = [v15 downrankToOneTapEligibilityThreshold1stParty];
    [(IREligibilitySettings *)v4 setDownrankToOneTapThr:downrankToOneTapEligibilityThreshold1stParty];

    v17 = +[IRPreferences shared];
    [v17 eligibilityInitStateIsOneTap1stParty];
  }

  else
  {
    uprankToOneTapEligibilityThreshold3rdParty = [v6 uprankToOneTapEligibilityThreshold3rdParty];
    [(IREligibilitySettings *)v4 setUpRankToOneTapThr:uprankToOneTapEligibilityThreshold3rdParty];

    v19 = +[IRPreferences shared];
    uprankToAutorouteEligibilityThreshold3rdParty = [v19 uprankToAutorouteEligibilityThreshold3rdParty];
    [(IREligibilitySettings *)v4 setUprankToAutorouteThr:uprankToAutorouteEligibilityThreshold3rdParty];

    v21 = +[IRPreferences shared];
    downrankToNoneEligibilityThreshold3rdParty = [v21 downrankToNoneEligibilityThreshold3rdParty];
    [(IREligibilitySettings *)v4 setDownrankToNoneThr:downrankToNoneEligibilityThreshold3rdParty];

    v23 = +[IRPreferences shared];
    downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty = [v23 downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty];
    [(IREligibilitySettings *)v4 setDownrankToNoneWithIgnoringThr:downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty];

    v25 = +[IRPreferences shared];
    downrankToOneTapEligibilityThreshold3rdParty = [v25 downrankToOneTapEligibilityThreshold3rdParty];
    [(IREligibilitySettings *)v4 setDownrankToOneTapThr:downrankToOneTapEligibilityThreshold3rdParty];

    v17 = +[IRPreferences shared];
    [v17 eligibilityInitStateIsOneTap3rdParty];
  }
  v27 = ;
  [(IREligibilitySettings *)v4 setInitialStateIsOneTap:v27];

  v28 = +[IRPreferences shared];
  brokeredUseScansForEligibilityOfMainDevice = [v28 brokeredUseScansForEligibilityOfMainDevice];
  -[IREligibilitySettings setUseBrokeredScanForMain:](v4, "setUseBrokeredScanForMain:", [brokeredUseScansForEligibilityOfMainDevice BOOLValue]);

  v30 = +[IRPreferences shared];
  brokeredUseScansForEligibilityOfSecondaryDevice = [v30 brokeredUseScansForEligibilityOfSecondaryDevice];
  -[IREligibilitySettings setUseBrokeredScanForSecondary:](v4, "setUseBrokeredScanForSecondary:", [brokeredUseScansForEligibilityOfSecondaryDevice BOOLValue]);

  return v4;
}

@end