@interface IRClassificationGenerator
- (BOOL)generateClassificationsWithCandiatesContainer:(id)container systemState:(id)state historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection date:(id)date;
- (IRClassificationGenerator)init;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (void)_adjustAdditionalFieldsForCandidate:(id)candidate selectedCandidateIdentifier:(id)identifier historyEvents:(id)events systemState:(id)state;
- (void)_adjustClassificationForCandidate:(id)candidate selectedCandidateIdentifier:(id)identifier systemState:(id)state andDate:(id)date;
- (void)_fillInspectionIfNeeded:(BOOL)needed withCandidates:(id)candidates selectedCandidate:(id)candidate negativeInputs:(id)inputs stateMachineClassification:(int64_t)classification;
- (void)_setCallToActionForCandidate:(id)candidate withHistoryEventsAsc:(id)asc andSystemState:(id)state;
- (void)_setConservativeFilteredForCandidate:(id)candidate andSystemState:(id)state;
- (void)_setLockScreenControlForCandidate:(id)candidate;
- (void)_setSortingHintForCandidate:(id)candidate;
@end

@implementation IRClassificationGenerator

- (NSDictionary)contexts
{
  internalContexts = [(IRClassificationGenerator *)self internalContexts];
  v3 = [internalContexts copy];

  return v3;
}

- (IRClassificationGenerator)init
{
  v16.receiver = self;
  v16.super_class = IRClassificationGenerator;
  v2 = [(IRClassificationGenerator *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IRClassificationGenerator *)v2 setInternalContexts:v3];

    v4 = objc_alloc(MEMORY[0x277D212A8]);
    v5 = [MEMORY[0x277CBEB98] set];
    v6 = [v4 initWithCandidateResults:v5 isBannerClassificationUnavailable:0 bundleIdentifier:0];
    internalContexts = [(IRClassificationGenerator *)v2 internalContexts];
    v8 = *MEMORY[0x277D21250];
    [internalContexts setObject:v6 forKeyedSubscript:*MEMORY[0x277D21250]];

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IRClassificationGenerator *)v2 setInternalPolicyInspections:v9];

    v10 = [[IRPolicyInspection alloc] initWithName:@"Media"];
    internalPolicyInspections = [(IRClassificationGenerator *)v2 internalPolicyInspections];
    [internalPolicyInspections setObject:v10 forKeyedSubscript:v8];

    v12 = objc_alloc_init(IRCandidateClassificationDetectorFiltered);
    [(IRClassificationGenerator *)v2 setDetectorFiltered:v12];

    v13 = objc_alloc_init(IRCandidateClassificationDetectorSameSpace);
    [(IRClassificationGenerator *)v2 setDetectorSameSpace:v13];

    v14 = objc_alloc_init(IRCandidateSelector);
    [(IRClassificationGenerator *)v2 setSelector:v14];
  }

  return v2;
}

- (BOOL)generateClassificationsWithCandiatesContainer:(id)container systemState:(id)state historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection date:(id)date
{
  inspectionCopy = inspection;
  v102 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  stateCopy = state;
  eventsContainerCopy = eventsContainer;
  predictionCopy = prediction;
  dateCopy = date;
  deviceContainerCopy = deviceContainer;
  v81 = containerCopy;
  airplayOrUnknownCandidates = [containerCopy airplayOrUnknownCandidates];
  v21 = [airplayOrUnknownCandidates map:&__block_literal_global_13];

  v22 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v23 = *MEMORY[0x277D21260];
  v80 = predictionCopy;
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v77 = eventsContainerCopy;
    v24 = MEMORY[0x277CCABB0];
    v25 = v23;
    candidates = [v81 candidates];
    v27 = [v24 numberWithUnsignedInteger:{objc_msgSend(candidates, "count")}];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v21, "count")}];
    *buf = 136315906;
    v91 = "#classification-generator, ";
    v92 = 2112;
    v93 = v22;
    v94 = 2112;
    v95 = v27;
    v96 = 2112;
    v97 = v28;
    _os_log_impl(&dword_25543D000, v25, OS_LOG_TYPE_INFO, "%s[%@], #totalCandidates=%@, #validCandidates=%@", buf, 0x2Au);

    eventsContainerCopy = v77;
    predictionCopy = v80;
  }

  detectorSameSpace = [(IRClassificationGenerator *)self detectorSameSpace];
  historyEvents = [eventsContainerCopy historyEvents];
  [detectorSameSpace adjustSameSpaceParametersForCandidates:v21 withSystemState:stateCopy andHistoryEventsAsc:historyEvents andMiLoPrediction:predictionCopy andNearbyDevicesContainer:deviceContainerCopy andDate:dateCopy];

  detectorFiltered = [(IRClassificationGenerator *)self detectorFiltered];
  [detectorFiltered adjustFilteredParametersForCandidates:v21 withSystemState:stateCopy andDate:dateCopy];

  selector = [(IRClassificationGenerator *)self selector];
  historyEvents2 = [eventsContainerCopy historyEvents];
  v34 = [selector selectFromCandidates:v21 withSystemState:stateCopy andHistoryEventsAsc:historyEvents2 andDate:dateCopy];

  if (v34)
  {
    candidate = [v34 candidate];
    historyEvents3 = [eventsContainerCopy historyEvents];
    v37 = [IRCandicateClassificationEligibility classificationEligibilityForCandidate:candidate withHistoryEventsAsc:historyEvents3 systemState:stateCopy];

    v38 = v37;
    [v34 setNominatedClassification:v37];
    if ([v34 nominatedClassification] == 2)
    {
      nominatedClassificationDesc = [v34 nominatedClassificationDesc];
      v40 = [nominatedClassificationDesc stringByAppendingString:@"[Not Eligble]"];
      [v34 setNominatedClassificationDesc:v40];
    }

    v78 = v38;
    selector2 = [(IRClassificationGenerator *)self selector];
    historyEvents4 = [eventsContainerCopy historyEvents];
    v76 = [selector2 adjustClassificationForCandidateBasedOnNegativeInputs:v34 withSystemState:stateCopy andHistoryEventsAsc:historyEvents4 andMiloPrediction:predictionCopy andDate:dateCopy];

    v43 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v44 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      log = v44;
      candidate2 = [v34 candidate];
      name = [candidate2 name];
      candidate3 = [v34 candidate];
      candidateIdentifier = [candidate3 candidateIdentifier];
      [v34 nominatedClassification];
      v46 = IRCandidateClassificationToString();
      [v34 nominatedClassificationDesc];
      v74 = dateCopy;
      v48 = v47 = eventsContainerCopy;
      *buf = 136316418;
      v91 = "#classification-generator, ";
      v92 = 2112;
      v93 = v43;
      v94 = 2112;
      v95 = name;
      v96 = 2112;
      v97 = candidateIdentifier;
      v98 = 2112;
      v99 = v46;
      v100 = 2112;
      v101 = v48;
      _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_INFO, "%s[%@], SelectedCandidate: name: %@, identifier: %@, classification: %@, desc: %@", buf, 0x3Eu);

      eventsContainerCopy = v47;
      dateCopy = v74;
    }
  }

  else
  {
    v76 = 0;
    v78 = 0;
  }

  v49 = [MEMORY[0x277CBEB58] set];
  v50 = [MEMORY[0x277CBEB58] set];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __167__IRClassificationGenerator_generateClassificationsWithCandiatesContainer_systemState_historyEventsContainer_miloPrediction_nearbyDeviceContainer_fillInspection_date___block_invoke_34;
  v82[3] = &unk_2797E1C40;
  v82[4] = self;
  v83 = v34;
  v84 = stateCopy;
  v85 = dateCopy;
  v86 = eventsContainerCopy;
  v87 = v50;
  v89 = inspectionCopy;
  v88 = v49;
  v51 = v49;
  v52 = v50;
  v75 = eventsContainerCopy;
  v73 = dateCopy;
  v53 = stateCopy;
  v54 = v34;
  [v21 enumerateObjectsUsingBlock:v82];
  internalContexts = [(IRClassificationGenerator *)self internalContexts];
  v56 = *MEMORY[0x277D21250];
  [internalContexts objectForKeyedSubscript:*MEMORY[0x277D21250]];
  v57 = loga = v21;
  candidateResults = [v57 candidateResults];
  v69 = [v52 isEqual:candidateResults];

  v59 = objc_alloc(MEMORY[0x277D212A8]);
  appInFocusBundleID = [v53 appInFocusBundleID];
  v61 = [v59 initWithCandidateResults:v52 isBannerClassificationUnavailable:0 bundleIdentifier:appInFocusBundleID];
  internalContexts2 = [(IRClassificationGenerator *)self internalContexts];
  [internalContexts2 setObject:v61 forKeyedSubscript:v56];

  candidate4 = [v54 candidate];
  candidateIdentifier2 = [candidate4 candidateIdentifier];
  [(IRClassificationGenerator *)self _fillInspectionIfNeeded:inspectionCopy withCandidates:v51 selectedCandidate:candidateIdentifier2 negativeInputs:v76 stateMachineClassification:v78];

  v65 = *MEMORY[0x277D85DE8];
  return v69 ^ 1;
}

IRCandidateWrapper *__167__IRClassificationGenerator_generateClassificationsWithCandiatesContainer_systemState_historyEventsContainer_miloPrediction_nearbyDeviceContainer_fillInspection_date___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[IRCandidateWrapper alloc] initWithCandidate:v2];

  return v3;
}

void __167__IRClassificationGenerator_generateClassificationsWithCandiatesContainer_systemState_historyEventsContainer_miloPrediction_nearbyDeviceContainer_fillInspection_date___block_invoke_34(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) candidate];
  v5 = [v4 candidateIdentifier];
  [v3 _adjustClassificationForCandidate:v23 selectedCandidateIdentifier:v5 systemState:*(a1 + 48) andDate:*(a1 + 56)];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) candidate];
  v8 = [v7 candidateIdentifier];
  v9 = [*(a1 + 64) historyEvents];
  [v6 _adjustAdditionalFieldsForCandidate:v23 selectedCandidateIdentifier:v8 historyEvents:v9 systemState:*(a1 + 48)];

  v10 = objc_alloc(MEMORY[0x277D21298]);
  v11 = [v23 candidate];
  v12 = [IRCandidateDO candidateFromCandidateDO:v11];
  v13 = [v23 nominatedClassification];
  v14 = [v23 nominatedClassificationDesc];
  v15 = [v23 sortingHint];
  v16 = [v23 isCallToAction];
  v17 = [v16 BOOLValue];
  v18 = [v23 isLockScreenControl];
  LOBYTE(v22) = [v23 isConservativeFiltered];
  v19 = [v10 initWithCandidate:v12 classification:v13 classificationDescription:v14 sortingHint:v15 isCallToAction:v17 isLockScreenControl:v18 isConservativeFiltered:v22];

  [*(a1 + 72) addObject:v19];
  if (*(a1 + 88) == 1)
  {
    v20 = [v23 nominatedClassification];
    v21 = [v23 nominatedClassificationDesc];
    [v23 setClassification:v20 withDescription:v21];

    [*(a1 + 80) addObject:v23];
  }
}

- (NSDictionary)policyInspections
{
  internalPolicyInspections = [(IRClassificationGenerator *)self internalPolicyInspections];
  v3 = [internalPolicyInspections copy];

  return v3;
}

- (void)_adjustClassificationForCandidate:(id)candidate selectedCandidateIdentifier:(id)identifier systemState:(id)state andDate:(id)date
{
  candidateCopy = candidate;
  identifierCopy = identifier;
  isFiltered = [candidateCopy isFiltered];
  candidate = [candidateCopy candidate];
  candidateIdentifier = [candidate candidateIdentifier];
  v11 = [identifierCopy isEqual:candidateIdentifier];

  isSameSpace = [candidateCopy isSameSpace];
  if (isFiltered)
  {
    [candidateCopy setNominatedClassification:1];
    v13 = @"{Filtered}";
    v14 = candidateCopy;
  }

  else if (v11)
  {
    nominatedClassificationDesc = [candidateCopy nominatedClassificationDesc];
    v14 = candidateCopy;
    v13 = nominatedClassificationDesc;
  }

  else
  {
    v14 = candidateCopy;
    if (isSameSpace)
    {
      [candidateCopy setNominatedClassification:2];
      v14 = candidateCopy;
      v13 = @"{Same space}";
    }

    else
    {
      v13 = &stru_286755D18;
    }
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "sameSpaceBasedOnUWB")}];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(candidateCopy, "sameSpaceBasedOnBLE")}];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(candidateCopy, "sameSpaceBasedOnMiLo")}];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(candidateCopy, "sameSpaceBasedOnBrokeredLOI")}];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(candidateCopy, "sameSpaceBasedOnPDRFence")}];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(candidateCopy, "sameSpaceBasedOnHistory")}];
  v23 = [v16 stringWithFormat:@"{UWB:%@, BLE:%@, MILO:%@, BrokeredInLOI:%@, PDRFence:%@, History:%@}%@", v17, v18, v19, v20, v21, v22, v13];
  [candidateCopy setNominatedClassificationDesc:v23];
}

- (void)_adjustAdditionalFieldsForCandidate:(id)candidate selectedCandidateIdentifier:(id)identifier historyEvents:(id)events systemState:(id)state
{
  candidateCopy = candidate;
  eventsCopy = events;
  stateCopy = state;
  identifierCopy = identifier;
  candidate = [candidateCopy candidate];
  candidateIdentifier = [candidate candidateIdentifier];
  v15 = [candidateIdentifier isEqual:identifierCopy];

  if (v15)
  {
    [(IRClassificationGenerator *)self _setSortingHintForCandidate:candidateCopy];
    [(IRClassificationGenerator *)self _setCallToActionForCandidate:candidateCopy withHistoryEventsAsc:eventsCopy andSystemState:stateCopy];
  }

  else if (![candidateCopy isSameSpace])
  {
    goto LABEL_5;
  }

  [(IRClassificationGenerator *)self _setLockScreenControlForCandidate:candidateCopy];
LABEL_5:
  [(IRClassificationGenerator *)self _setConservativeFilteredForCandidate:candidateCopy andSystemState:stateCopy];
}

- (void)_fillInspectionIfNeeded:(BOOL)needed withCandidates:(id)candidates selectedCandidate:(id)candidate negativeInputs:(id)inputs stateMachineClassification:(int64_t)classification
{
  neededCopy = needed;
  candidateCopy = candidate;
  if (neededCopy)
  {
    inputsCopy = inputs;
    candidatesCopy = candidates;
    v15 = [[IRPolicyInspection alloc] initWithName:@"Media"];
    internalPolicyInspections = [(IRClassificationGenerator *)self internalPolicyInspections];
    v17 = *MEMORY[0x277D21250];
    [internalPolicyInspections setObject:v15 forKeyedSubscript:*MEMORY[0x277D21250]];

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __128__IRClassificationGenerator__fillInspectionIfNeeded_withCandidates_selectedCandidate_negativeInputs_stateMachineClassification___block_invoke;
    v25 = &unk_2797E1C68;
    v26 = candidateCopy;
    selfCopy = self;
    [candidatesCopy enumerateObjectsUsingBlock:&v22];

    v18 = [(IRClassificationGenerator *)self internalPolicyInspections:v22];
    v19 = [v18 objectForKeyedSubscript:v17];
    [v19 setGeneratorNegativeInputs:inputsCopy];

    internalPolicyInspections2 = [(IRClassificationGenerator *)self internalPolicyInspections];
    v21 = [internalPolicyInspections2 objectForKeyedSubscript:v17];
    [v21 setStateMachineClassification:classification];
  }
}

void __128__IRClassificationGenerator__fillInspectionIfNeeded_withCandidates_selectedCandidate_negativeInputs_stateMachineClassification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidate];
  v5 = [v4 candidateIdentifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  v27 = a1;
  if (v6)
  {
    v7 = [*(a1 + 40) selector];
    v28 = [v7 getSelectorReasons];
  }

  else
  {
    v28 = 0;
  }

  v25 = [IRCandidateInspection alloc];
  v23 = [IRCandidateInspectionGenerator alloc];
  v26 = [v3 candidateResult];
  v22 = [v26 classification];
  v24 = [v3 candidateResult];
  v8 = [v24 classificationDescription];
  v9 = [v3 sameSpaceBasedOnMiLo];
  v10 = [v3 sameSpaceBasedOnBrokeredLOI];
  v11 = [v3 sameSpaceBasedOnPDRFence];
  v12 = [v3 sameSpaceBasedOnUWB];
  v13 = [v3 sameSpaceBasedOnBLE];
  v14 = [v3 sameSpaceBasedOnHistory];
  v15 = [v3 candidate];

  v16 = [IRCandidateDO candidateFromCandidateDO:v15];
  BYTE1(v21) = v14;
  LOBYTE(v21) = v13;
  v17 = [(IRCandidateInspectionGenerator *)v23 initWithClassification:v22 ClassificationDescription:v8 sameSpaceBasedOnMiLo:v9 sameSpaceBasedOnBrokeredLOI:v10 sameSpaceBasedOnPDRFence:v11 sameSpaceBasedOnUWB:v12 sameSpaceBasedOnBLE:v21 sameSpaceBasedOnHistory:v28 candidateSelectorReasons:v16 forCandidate:?];
  v18 = [(IRCandidateInspection *)v25 initWithInspectionGenerator:v17];

  v19 = [*(v27 + 40) internalPolicyInspections];
  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D21250]];
  [v20 addCandidate:v18];
}

- (void)_setSortingHintForCandidate:(id)candidate
{
  candidateCopy = candidate;
  [candidateCopy setSortingHint:&unk_286769310];
  nominatedClassificationDesc = [candidateCopy nominatedClassificationDesc];
  sortingHint = [candidateCopy sortingHint];
  v5 = [nominatedClassificationDesc stringByAppendingFormat:@"(SH=%@)", sortingHint];
  [candidateCopy setNominatedClassificationDesc:v5];
}

- (void)_setCallToActionForCandidate:(id)candidate withHistoryEventsAsc:(id)asc andSystemState:(id)state
{
  v52 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  ascCopy = asc;
  stateCopy = state;
  if ((([candidateCopy sameSpaceBasedOnUWB] & 1) != 0 || objc_msgSend(candidateCopy, "sameSpaceBasedOnBrokeredLOI")) && (objc_msgSend(candidateCopy, "isFiltered") & 1) == 0)
  {
    isCallToAction = [candidateCopy isCallToAction];

    if (!isCallToAction)
    {
      v44 = [IREventDO eventDOWithMediaType:11];
      v10 = MEMORY[0x277CBEB98];
      v11 = [IREventDO eventDOWithMediaType:9];
      v12 = [IREventDO eventDOWithMediaType:10];
      v13 = [IREventDO eventDOWithMediaType:8];
      v14 = [IREventDO eventDOWithMediaType:4];
      v43 = [v10 setWithObjects:{v11, v12, v13, v14, 0}];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v42 = ascCopy;
      obj = ascCopy;
      v15 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v48;
LABEL_7:
        v19 = 0;
        while (1)
        {
          if (*v48 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v47 + 1) + 8 * v19);
          candidate = [candidateCopy candidate];
          candidateIdentifier = [candidate candidateIdentifier];
          candidateIdentifier2 = [v20 candidateIdentifier];
          v24 = [candidateIdentifier isEqual:candidateIdentifier2];

          if (v24)
          {
            appInFocusBundleID = [stateCopy appInFocusBundleID];
            event = [v20 event];
            bundleID = [event bundleID];
            v28 = [appInFocusBundleID isEqual:bundleID];

            if (v28)
            {
              event2 = [v20 event];
              v30 = [event2 isEqual:v44];

              if (v30)
              {
                ++v17;
                v31 = +[IRPreferences shared];
                candidateSelectorCallToActionAppearThreshold = [v31 candidateSelectorCallToActionAppearThreshold];
                unsignedIntValue = [candidateSelectorCallToActionAppearThreshold unsignedIntValue];

                if (v17 > unsignedIntValue)
                {
                  v38 = @"[C2A Exceeded]";
LABEL_20:
                  nominatedClassificationDesc = [candidateCopy nominatedClassificationDesc];
                  v40 = [nominatedClassificationDesc stringByAppendingString:v38];
                  [candidateCopy setNominatedClassificationDesc:v40];

                  goto LABEL_21;
                }
              }

              else
              {
                event3 = [v20 event];
                v35 = [v43 containsObject:event3];

                if (!v35)
                {
                  v38 = @"[C2A interaction]";
                  goto LABEL_20;
                }
              }
            }
          }

          if (v16 == ++v19)
          {
            v16 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
            if (v16)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }

      nominatedClassificationDesc2 = [candidateCopy nominatedClassificationDesc];
      v37 = [nominatedClassificationDesc2 stringByAppendingString:@"(C2A)"];
      [candidateCopy setNominatedClassificationDesc:v37];

      [candidateCopy setIsCallToAction:MEMORY[0x277CBEC38]];
LABEL_21:

      ascCopy = v42;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_setLockScreenControlForCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (([candidateCopy sameSpaceBasedOnMiLo] & 1) != 0 || objc_msgSend(candidateCopy, "sameSpaceBasedOnUWB"))
  {
    nominatedClassificationDesc = [candidateCopy nominatedClassificationDesc];
    v4 = [nominatedClassificationDesc stringByAppendingString:@"(Lock Screen Control)"];
    [candidateCopy setNominatedClassificationDesc:v4];

    [candidateCopy setIsLockScreenControl:1];
  }
}

- (void)_setConservativeFilteredForCandidate:(id)candidate andSystemState:(id)state
{
  candidateCopy = candidate;
  if ([candidateCopy isConservativeFiltered])
  {
    nominatedClassificationDesc = [candidateCopy nominatedClassificationDesc];
    v5 = [nominatedClassificationDesc stringByAppendingString:@"(Conservative Filtered)"];
    [candidateCopy setNominatedClassificationDesc:v5];
  }
}

@end