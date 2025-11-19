@interface IRClassificationGenerator
- (BOOL)generateClassificationsWithCandiatesContainer:(id)a3 systemState:(id)a4 historyEventsContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 fillInspection:(BOOL)a8 date:(id)a9;
- (IRClassificationGenerator)init;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (void)_adjustAdditionalFieldsForCandidate:(id)a3 selectedCandidateIdentifier:(id)a4 historyEvents:(id)a5 systemState:(id)a6;
- (void)_adjustClassificationForCandidate:(id)a3 selectedCandidateIdentifier:(id)a4 systemState:(id)a5 andDate:(id)a6;
- (void)_fillInspectionIfNeeded:(BOOL)a3 withCandidates:(id)a4 selectedCandidate:(id)a5 negativeInputs:(id)a6 stateMachineClassification:(int64_t)a7;
- (void)_setCallToActionForCandidate:(id)a3 withHistoryEventsAsc:(id)a4 andSystemState:(id)a5;
- (void)_setConservativeFilteredForCandidate:(id)a3 andSystemState:(id)a4;
- (void)_setLockScreenControlForCandidate:(id)a3;
- (void)_setSortingHintForCandidate:(id)a3;
@end

@implementation IRClassificationGenerator

- (NSDictionary)contexts
{
  v2 = [(IRClassificationGenerator *)self internalContexts];
  v3 = [v2 copy];

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
    v7 = [(IRClassificationGenerator *)v2 internalContexts];
    v8 = *MEMORY[0x277D21250];
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277D21250]];

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IRClassificationGenerator *)v2 setInternalPolicyInspections:v9];

    v10 = [[IRPolicyInspection alloc] initWithName:@"Media"];
    v11 = [(IRClassificationGenerator *)v2 internalPolicyInspections];
    [v11 setObject:v10 forKeyedSubscript:v8];

    v12 = objc_alloc_init(IRCandidateClassificationDetectorFiltered);
    [(IRClassificationGenerator *)v2 setDetectorFiltered:v12];

    v13 = objc_alloc_init(IRCandidateClassificationDetectorSameSpace);
    [(IRClassificationGenerator *)v2 setDetectorSameSpace:v13];

    v14 = objc_alloc_init(IRCandidateSelector);
    [(IRClassificationGenerator *)v2 setSelector:v14];
  }

  return v2;
}

- (BOOL)generateClassificationsWithCandiatesContainer:(id)a3 systemState:(id)a4 historyEventsContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 fillInspection:(BOOL)a8 date:(id)a9
{
  v79 = a8;
  v102 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = a7;
  v81 = v14;
  v20 = [v14 airplayOrUnknownCandidates];
  v21 = [v20 map:&__block_literal_global_13];

  v22 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v23 = *MEMORY[0x277D21260];
  v80 = v17;
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v77 = v16;
    v24 = MEMORY[0x277CCABB0];
    v25 = v23;
    v26 = [v81 candidates];
    v27 = [v24 numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
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

    v16 = v77;
    v17 = v80;
  }

  v29 = [(IRClassificationGenerator *)self detectorSameSpace];
  v30 = [v16 historyEvents];
  [v29 adjustSameSpaceParametersForCandidates:v21 withSystemState:v15 andHistoryEventsAsc:v30 andMiLoPrediction:v17 andNearbyDevicesContainer:v19 andDate:v18];

  v31 = [(IRClassificationGenerator *)self detectorFiltered];
  [v31 adjustFilteredParametersForCandidates:v21 withSystemState:v15 andDate:v18];

  v32 = [(IRClassificationGenerator *)self selector];
  v33 = [v16 historyEvents];
  v34 = [v32 selectFromCandidates:v21 withSystemState:v15 andHistoryEventsAsc:v33 andDate:v18];

  if (v34)
  {
    v35 = [v34 candidate];
    v36 = [v16 historyEvents];
    v37 = [IRCandicateClassificationEligibility classificationEligibilityForCandidate:v35 withHistoryEventsAsc:v36 systemState:v15];

    v38 = v37;
    [v34 setNominatedClassification:v37];
    if ([v34 nominatedClassification] == 2)
    {
      v39 = [v34 nominatedClassificationDesc];
      v40 = [v39 stringByAppendingString:@"[Not Eligble]"];
      [v34 setNominatedClassificationDesc:v40];
    }

    v78 = v38;
    v41 = [(IRClassificationGenerator *)self selector];
    v42 = [v16 historyEvents];
    v76 = [v41 adjustClassificationForCandidateBasedOnNegativeInputs:v34 withSystemState:v15 andHistoryEventsAsc:v42 andMiloPrediction:v17 andDate:v18];

    v43 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v44 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      log = v44;
      v72 = [v34 candidate];
      v67 = [v72 name];
      v68 = [v34 candidate];
      v45 = [v68 candidateIdentifier];
      [v34 nominatedClassification];
      v46 = IRCandidateClassificationToString();
      [v34 nominatedClassificationDesc];
      v74 = v18;
      v48 = v47 = v16;
      *buf = 136316418;
      v91 = "#classification-generator, ";
      v92 = 2112;
      v93 = v43;
      v94 = 2112;
      v95 = v67;
      v96 = 2112;
      v97 = v45;
      v98 = 2112;
      v99 = v46;
      v100 = 2112;
      v101 = v48;
      _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_INFO, "%s[%@], SelectedCandidate: name: %@, identifier: %@, classification: %@, desc: %@", buf, 0x3Eu);

      v16 = v47;
      v18 = v74;
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
  v84 = v15;
  v85 = v18;
  v86 = v16;
  v87 = v50;
  v89 = v79;
  v88 = v49;
  v51 = v49;
  v52 = v50;
  v75 = v16;
  v73 = v18;
  v53 = v15;
  v54 = v34;
  [v21 enumerateObjectsUsingBlock:v82];
  v55 = [(IRClassificationGenerator *)self internalContexts];
  v56 = *MEMORY[0x277D21250];
  [v55 objectForKeyedSubscript:*MEMORY[0x277D21250]];
  v57 = loga = v21;
  v58 = [v57 candidateResults];
  v69 = [v52 isEqual:v58];

  v59 = objc_alloc(MEMORY[0x277D212A8]);
  v60 = [v53 appInFocusBundleID];
  v61 = [v59 initWithCandidateResults:v52 isBannerClassificationUnavailable:0 bundleIdentifier:v60];
  v62 = [(IRClassificationGenerator *)self internalContexts];
  [v62 setObject:v61 forKeyedSubscript:v56];

  v63 = [v54 candidate];
  v64 = [v63 candidateIdentifier];
  [(IRClassificationGenerator *)self _fillInspectionIfNeeded:v79 withCandidates:v51 selectedCandidate:v64 negativeInputs:v76 stateMachineClassification:v78];

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
  v2 = [(IRClassificationGenerator *)self internalPolicyInspections];
  v3 = [v2 copy];

  return v3;
}

- (void)_adjustClassificationForCandidate:(id)a3 selectedCandidateIdentifier:(id)a4 systemState:(id)a5 andDate:(id)a6
{
  v24 = a3;
  v7 = a4;
  v8 = [v24 isFiltered];
  v9 = [v24 candidate];
  v10 = [v9 candidateIdentifier];
  v11 = [v7 isEqual:v10];

  v12 = [v24 isSameSpace];
  if (v8)
  {
    [v24 setNominatedClassification:1];
    v13 = @"{Filtered}";
    v14 = v24;
  }

  else if (v11)
  {
    v15 = [v24 nominatedClassificationDesc];
    v14 = v24;
    v13 = v15;
  }

  else
  {
    v14 = v24;
    if (v12)
    {
      [v24 setNominatedClassification:2];
      v14 = v24;
      v13 = @"{Same space}";
    }

    else
    {
      v13 = &stru_286755D18;
    }
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "sameSpaceBasedOnUWB")}];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v24, "sameSpaceBasedOnBLE")}];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v24, "sameSpaceBasedOnMiLo")}];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v24, "sameSpaceBasedOnBrokeredLOI")}];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v24, "sameSpaceBasedOnPDRFence")}];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v24, "sameSpaceBasedOnHistory")}];
  v23 = [v16 stringWithFormat:@"{UWB:%@, BLE:%@, MILO:%@, BrokeredInLOI:%@, PDRFence:%@, History:%@}%@", v17, v18, v19, v20, v21, v22, v13];
  [v24 setNominatedClassificationDesc:v23];
}

- (void)_adjustAdditionalFieldsForCandidate:(id)a3 selectedCandidateIdentifier:(id)a4 historyEvents:(id)a5 systemState:(id)a6
{
  v16 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [v16 candidate];
  v14 = [v13 candidateIdentifier];
  v15 = [v14 isEqual:v12];

  if (v15)
  {
    [(IRClassificationGenerator *)self _setSortingHintForCandidate:v16];
    [(IRClassificationGenerator *)self _setCallToActionForCandidate:v16 withHistoryEventsAsc:v10 andSystemState:v11];
  }

  else if (![v16 isSameSpace])
  {
    goto LABEL_5;
  }

  [(IRClassificationGenerator *)self _setLockScreenControlForCandidate:v16];
LABEL_5:
  [(IRClassificationGenerator *)self _setConservativeFilteredForCandidate:v16 andSystemState:v11];
}

- (void)_fillInspectionIfNeeded:(BOOL)a3 withCandidates:(id)a4 selectedCandidate:(id)a5 negativeInputs:(id)a6 stateMachineClassification:(int64_t)a7
{
  v10 = a3;
  v12 = a5;
  if (v10)
  {
    v13 = a6;
    v14 = a4;
    v15 = [[IRPolicyInspection alloc] initWithName:@"Media"];
    v16 = [(IRClassificationGenerator *)self internalPolicyInspections];
    v17 = *MEMORY[0x277D21250];
    [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x277D21250]];

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __128__IRClassificationGenerator__fillInspectionIfNeeded_withCandidates_selectedCandidate_negativeInputs_stateMachineClassification___block_invoke;
    v25 = &unk_2797E1C68;
    v26 = v12;
    v27 = self;
    [v14 enumerateObjectsUsingBlock:&v22];

    v18 = [(IRClassificationGenerator *)self internalPolicyInspections:v22];
    v19 = [v18 objectForKeyedSubscript:v17];
    [v19 setGeneratorNegativeInputs:v13];

    v20 = [(IRClassificationGenerator *)self internalPolicyInspections];
    v21 = [v20 objectForKeyedSubscript:v17];
    [v21 setStateMachineClassification:a7];
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

- (void)_setSortingHintForCandidate:(id)a3
{
  v3 = a3;
  [v3 setSortingHint:&unk_286769310];
  v6 = [v3 nominatedClassificationDesc];
  v4 = [v3 sortingHint];
  v5 = [v6 stringByAppendingFormat:@"(SH=%@)", v4];
  [v3 setNominatedClassificationDesc:v5];
}

- (void)_setCallToActionForCandidate:(id)a3 withHistoryEventsAsc:(id)a4 andSystemState:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v46 = a5;
  if ((([v7 sameSpaceBasedOnUWB] & 1) != 0 || objc_msgSend(v7, "sameSpaceBasedOnBrokeredLOI")) && (objc_msgSend(v7, "isFiltered") & 1) == 0)
  {
    v9 = [v7 isCallToAction];

    if (!v9)
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
      v42 = v8;
      obj = v8;
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
          v21 = [v7 candidate];
          v22 = [v21 candidateIdentifier];
          v23 = [v20 candidateIdentifier];
          v24 = [v22 isEqual:v23];

          if (v24)
          {
            v25 = [v46 appInFocusBundleID];
            v26 = [v20 event];
            v27 = [v26 bundleID];
            v28 = [v25 isEqual:v27];

            if (v28)
            {
              v29 = [v20 event];
              v30 = [v29 isEqual:v44];

              if (v30)
              {
                ++v17;
                v31 = +[IRPreferences shared];
                v32 = [v31 candidateSelectorCallToActionAppearThreshold];
                v33 = [v32 unsignedIntValue];

                if (v17 > v33)
                {
                  v38 = @"[C2A Exceeded]";
LABEL_20:
                  v39 = [v7 nominatedClassificationDesc];
                  v40 = [v39 stringByAppendingString:v38];
                  [v7 setNominatedClassificationDesc:v40];

                  goto LABEL_21;
                }
              }

              else
              {
                v34 = [v20 event];
                v35 = [v43 containsObject:v34];

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

      v36 = [v7 nominatedClassificationDesc];
      v37 = [v36 stringByAppendingString:@"(C2A)"];
      [v7 setNominatedClassificationDesc:v37];

      [v7 setIsCallToAction:MEMORY[0x277CBEC38]];
LABEL_21:

      v8 = v42;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_setLockScreenControlForCandidate:(id)a3
{
  v5 = a3;
  if (([v5 sameSpaceBasedOnMiLo] & 1) != 0 || objc_msgSend(v5, "sameSpaceBasedOnUWB"))
  {
    v3 = [v5 nominatedClassificationDesc];
    v4 = [v3 stringByAppendingString:@"(Lock Screen Control)"];
    [v5 setNominatedClassificationDesc:v4];

    [v5 setIsLockScreenControl:1];
  }
}

- (void)_setConservativeFilteredForCandidate:(id)a3 andSystemState:(id)a4
{
  v6 = a3;
  if ([v6 isConservativeFiltered])
  {
    v4 = [v6 nominatedClassificationDesc];
    v5 = [v4 stringByAppendingString:@"(Conservative Filtered)"];
    [v6 setNominatedClassificationDesc:v5];
  }
}

@end