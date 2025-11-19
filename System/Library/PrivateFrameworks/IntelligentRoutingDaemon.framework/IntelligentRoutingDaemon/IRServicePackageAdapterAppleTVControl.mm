@interface IRServicePackageAdapterAppleTVControl
- (BOOL)_outputRulesToContext:(id)a3 candidatesContainer:(id)a4 fillInspection:(BOOL)a5;
- (BOOL)generateClassificationsWithCandiatesContainer:(id)a3 systemState:(id)a4 historyEventsContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 fillInspection:(BOOL)a8 date:(id)a9;
- (BOOL)shouldAskForLowLatencyMiLo:(id)a3 historyEventsAsc:(id)a4;
- (BOOL)shouldRejectEvent:(id)a3 withHistoryEventsContainer:(id)a4 withSystemState:(id)a5 forCandidate:(id)a6 date:(id)a7;
- (IRServicePackageAdapterAppleTVControl)init;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (id)_autoRouteClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4;
- (id)_autoRoutePositiveRulesClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4;
- (id)_filteredClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4;
- (id)_oneTapClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4;
- (id)_reasonsForRejectingAutoRouteOrOneTapClassificationForCandidate:(id)a3;
- (id)_rules;
- (id)_topOfListClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4;
- (id)_topOfListClassificationPositiveRulesForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4;
- (id)filterHistory:(id)a3 withCandidatesContainer:(id)a4;
- (id)getSignificantBundlesWithCandidates:(id)a3 fromHistory:(id)a4;
- (id)uiAnalyticsWithEvent:(id)a3 forCandidateIdentifier:(id)a4 systemStateManager:(id)a5 candidatesContainer:(id)a6 inspections:(id)a7 statisticsManager:(id)a8 service:(id)a9 historyEventsContainer:(id)a10;
- (void)_classifyContext:(id)a3;
- (void)_evaluateOutputRules:(id)a3 contextWrapper:(id)a4;
@end

@implementation IRServicePackageAdapterAppleTVControl

- (IRServicePackageAdapterAppleTVControl)init
{
  v13.receiver = self;
  v13.super_class = IRServicePackageAdapterAppleTVControl;
  v2 = [(IRServicePackageAdapterAppleTVControl *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IRServicePackageAdapterAppleTVControl *)v2 setInternalContexts:v3];

    v4 = objc_alloc(MEMORY[0x277D212A8]);
    v5 = [MEMORY[0x277CBEB98] set];
    v6 = [v4 initWithCandidateResults:v5 isBannerClassificationUnavailable:0 bundleIdentifier:0];
    v7 = [(IRServicePackageAdapterAppleTVControl *)v2 internalContexts];
    v8 = *MEMORY[0x277D21240];
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277D21240]];

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IRServicePackageAdapterAppleTVControl *)v2 setInternalPolicyInspections:v9];

    v10 = [[IRPolicyInspection alloc] initWithName:@"AppleTVControl"];
    v11 = [(IRServicePackageAdapterAppleTVControl *)v2 internalPolicyInspections];
    [v11 setObject:v10 forKeyedSubscript:v8];
  }

  return v2;
}

- (NSDictionary)contexts
{
  v2 = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  v3 = [v2 copy];

  return v3;
}

- (NSDictionary)policyInspections
{
  v2 = [(IRServicePackageAdapterAppleTVControl *)self internalPolicyInspections];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)generateClassificationsWithCandiatesContainer:(id)a3 systemState:(id)a4 historyEventsContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 fillInspection:(BOOL)a8 date:(id)a9
{
  v40 = a8;
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(IRServicePackageAdapterAppleTVControl *)self _rules];
  v22 = [IRRuleEngine executeRules:v21 withCandiatesContainer:v20 systemStatus:v19 historyEventsContainer:v18 miloPrediction:v17 nearbyDeviceContainer:v16 date:v15];

  LOBYTE(v40) = [(IRServicePackageAdapterAppleTVControl *)self _outputRulesToContext:v22 candidatesContainer:v20 fillInspection:v40];
  v23 = objc_alloc_init(IRCandidateClassificationDetectorSameSpace);
  v24 = [v20 candidates];

  v25 = [v24 map:&__block_literal_global_10];

  v26 = [v18 historyEvents];

  [(IRCandidateClassificationDetectorSameSpace *)v23 adjustSameSpaceParametersForCandidates:v25 withSystemState:v19 andHistoryEventsAsc:v26 andMiLoPrediction:v17 andNearbyDevicesContainer:v16 andDate:v15];
  v27 = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  v28 = *MEMORY[0x277D21240];
  v29 = [v27 objectForKeyedSubscript:*MEMORY[0x277D21240]];
  v30 = [v29 candidateResults];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __179__IRServicePackageAdapterAppleTVControl_generateClassificationsWithCandiatesContainer_systemState_historyEventsContainer_miloPrediction_nearbyDeviceContainer_fillInspection_date___block_invoke_2;
  v41[3] = &unk_2797E1968;
  v42 = v25;
  v31 = v25;
  [v30 enumerateObjectsUsingBlock:v41];

  v32 = objc_alloc(MEMORY[0x277D212A8]);
  v33 = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  v34 = [v33 objectForKeyedSubscript:v28];
  v35 = [v34 candidateResults];
  LODWORD(v31) = [v17 isMapValid];

  v36 = [v19 appInFocusBundleID];

  v37 = [v32 initWithCandidateResults:v35 isBannerClassificationUnavailable:v31 ^ 1 bundleIdentifier:v36];
  v38 = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  [v38 setObject:v37 forKeyedSubscript:v28];

  return v40;
}

IRCandidateWrapper *__179__IRServicePackageAdapterAppleTVControl_generateClassificationsWithCandiatesContainer_systemState_historyEventsContainer_miloPrediction_nearbyDeviceContainer_fillInspection_date___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[IRCandidateWrapper alloc] initWithCandidate:v2];

  return v3;
}

void __179__IRServicePackageAdapterAppleTVControl_generateClassificationsWithCandiatesContainer_systemState_historyEventsContainer_miloPrediction_nearbyDeviceContainer_fillInspection_date___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __179__IRServicePackageAdapterAppleTVControl_generateClassificationsWithCandiatesContainer_systemState_historyEventsContainer_miloPrediction_nearbyDeviceContainer_fillInspection_date___block_invoke_3;
  v10[3] = &unk_2797E1940;
  v5 = v3;
  v11 = v5;
  v6 = [v4 firstWhere:v10];
  if (([v6 sameSpaceBasedOnMiLo] & 1) != 0 || objc_msgSend(v6, "sameSpaceBasedOnUWB"))
  {
    [v5 setIsLockScreenControl:1];
    v7 = [v5 classification];
    v8 = [v5 classificationDescription];
    v9 = [v8 stringByAppendingString:@"(Lock Screen Control)"];
    [v5 setClassification:v7 withDescription:v9];
  }
}

uint64_t __179__IRServicePackageAdapterAppleTVControl_generateClassificationsWithCandiatesContainer_systemState_historyEventsContainer_miloPrediction_nearbyDeviceContainer_fillInspection_date___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 candidate];
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) candidate];
  v6 = [v5 candidateIdentifier];
  v7 = [v4 isEqual:v6];

  return v7;
}

- (id)_rules
{
  v41[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [[IRRuleCandidate alloc] initWithAttributeKey:@"kIRRuleCandidateActiveRouteKey" requireAllNodes:0];
  [v2 setObject:v3 forKeyedSubscript:@"AppleTVControl_Active_route"];

  v4 = [[IRRuleCandidate alloc] initWithAttributeKey:@"kIRRuleCandidateProximityKey" requireAllNodes:0];
  [v2 setObject:v4 forKeyedSubscript:@"AppleTVControl_Proximity"];

  v5 = objc_alloc_init(IRRuleHistoryPattern);
  v6 = +[IREventDO atvUserInteractionEvents];
  [(IRRuleHistoryPattern *)v5 setEventsToWatch:v6];

  v7 = MEMORY[0x277CBEB98];
  v41[0] = @"kIRRuleHistoryPatternFilterIsSameMilo";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v9 = [v7 setWithArray:v8];
  [(IRRuleHistoryPattern *)v5 setFilters:v9];

  v10 = +[IRPreferences shared];
  v11 = [v10 appleTvCtrlRulesContinuityTimeIntervalInSeconds];
  [v11 doubleValue];
  [(IRRuleHistoryPattern *)v5 setTimeInterval:?];

  [(IRRuleHistoryPattern *)v5 setMaxNumberOfEventsInHistory:1];
  [(IRRuleHistoryPattern *)v5 setMinNumberOfEventsInHistory:1];
  [(IRRuleHistoryPattern *)v5 setThreshold:1.0];
  [(IRRuleHistoryPattern *)v5 setCalculateScoreWithoutPortion:1];
  [v2 setObject:v5 forKeyedSubscript:@"AppleTVControl_Continuity"];
  v12 = objc_alloc_init(IRRuleHistoryPattern);

  v13 = +[IREventDO atvUserInteractionEvents];
  [(IRRuleHistoryPattern *)v12 setEventsToWatch:v13];

  v14 = MEMORY[0x277CBEB98];
  v40 = @"kIRRuleHistoryPatternFilterIsSameMilo";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v16 = [v14 setWithArray:v15];
  [(IRRuleHistoryPattern *)v12 setFilters:v16];

  [(IRRuleHistoryPattern *)v12 setTimeInterval:2419200.0];
  [(IRRuleHistoryPattern *)v12 setMaxNumberOfEventsInHistory:5];
  [(IRRuleHistoryPattern *)v12 setMinNumberOfEventsInHistory:2];
  [(IRRuleHistoryPattern *)v12 setThreshold:0.6];
  [v2 setObject:v12 forKeyedSubscript:@"AppleTVControl_Long_term_pattern"];
  v17 = objc_alloc_init(IRRuleHistoryPattern);

  v18 = +[IREventDO atvUserInteractionEvents];
  [(IRRuleHistoryPattern *)v17 setEventsToWatch:v18];

  v19 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];
  [(IRRuleHistoryPattern *)v17 setFilters:v19];

  [(IRRuleHistoryPattern *)v17 setTimeInterval:2419200.0];
  [(IRRuleHistoryPattern *)v17 setMaxNumberOfEventsInHistory:0x7FFFFFFFLL];
  [(IRRuleHistoryPattern *)v17 setMinNumberOfEventsInHistory:1];
  [(IRRuleHistoryPattern *)v17 setThreshold:1.0];
  [(IRRuleHistoryPattern *)v17 setCalculateScoreWithoutPortion:1];
  [v2 setObject:v17 forKeyedSubscript:@"AppleTVControl_Candidate_been_used"];
  v20 = objc_alloc_init(IRRuleHistoryPattern);

  v21 = +[IREventDO atvUserInteractionEvents];
  [(IRRuleHistoryPattern *)v20 setEventsToWatch:v21];

  v22 = MEMORY[0x277CBEB98];
  v39 = @"kIRRuleHistoryPatternFilterIsSameLoi";
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v24 = [v22 setWithArray:v23];
  [(IRRuleHistoryPattern *)v20 setFilters:v24];

  [(IRRuleHistoryPattern *)v20 setTimeInterval:2419200.0];
  [(IRRuleHistoryPattern *)v20 setMaxNumberOfEventsInHistory:0x7FFFFFFFLL];
  [(IRRuleHistoryPattern *)v20 setMinNumberOfEventsInHistory:1];
  [(IRRuleHistoryPattern *)v20 setThreshold:2147483650.0];
  [v2 setObject:v20 forKeyedSubscript:@"AppleTVControl_Most_used_in_LOI"];
  v25 = objc_alloc_init(IRRuleHistoryPattern);

  v26 = MEMORY[0x277CBEB98];
  v27 = [IREventDO eventDOWithAppleTVControlType:5];
  v38 = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v29 = [v26 setWithArray:v28];
  [(IRRuleHistoryPattern *)v25 setEventsToWatch:v29];

  v30 = MEMORY[0x277CBEB98];
  v37 = @"kIRRuleHistoryPatternFilterIsSameDay";
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v32 = [v30 setWithArray:v31];
  [(IRRuleHistoryPattern *)v25 setFilters:v32];

  [(IRRuleHistoryPattern *)v25 setTimeInterval:86400.0];
  [(IRRuleHistoryPattern *)v25 setMaxNumberOfEventsInHistory:0x7FFFFFFFLL];
  [(IRRuleHistoryPattern *)v25 setMinNumberOfEventsInHistory:2];
  [(IRRuleHistoryPattern *)v25 setThreshold:2.0];
  [(IRRuleHistoryPattern *)v25 setCalculateScoreWithoutPortion:1];
  [v2 setObject:v25 forKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day"];
  v33 = [[IRRuleCandidate alloc] initWithAttributeKey:@"kIRRuleCandidateAppleTVControlUserRejectedInLastDayWithoutPickerChoiceKey" requireAllNodes:0];
  [v2 setObject:v33 forKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day_no_picker"];

  v34 = [v2 copy];
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (BOOL)_outputRulesToContext:(id)a3 candidatesContainer:(id)a4 fillInspection:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRContextWrapper alloc] initWithName:@"AppleTVControl" defaultClassification:0];
  v11 = [v8 candidates];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __98__IRServicePackageAdapterAppleTVControl__outputRulesToContext_candidatesContainer_fillInspection___block_invoke;
  v24[3] = &unk_2797E1990;
  v12 = v10;
  v25 = v12;
  [v11 enumerateObjectsUsingBlock:v24];

  [(IRServicePackageAdapterAppleTVControl *)self _evaluateOutputRules:v9 contextWrapper:v12];
  [(IRServicePackageAdapterAppleTVControl *)self _classifyContext:v12];
  v13 = [(IRContextWrapper *)v12 context];
  v14 = [v13 candidateResults];
  v15 = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  v16 = *MEMORY[0x277D21240];
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D21240]];
  v18 = [v17 candidateResults];
  v19 = [v14 isEqual:v18];

  v20 = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  [v20 setObject:v13 forKeyedSubscript:v16];

  if (v5)
  {
    v21 = [(IRContextWrapper *)v12 policyInspection];
    v22 = [(IRServicePackageAdapterAppleTVControl *)self internalPolicyInspections];
    [v22 setObject:v21 forKeyedSubscript:v16];
  }

  return v19 ^ 1;
}

void __98__IRServicePackageAdapterAppleTVControl__outputRulesToContext_candidatesContainer_fillInspection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRCandidateDO candidateFromCandidateDO:a2];
  [v2 addCandidate:v3 logOrderOfExecution:0];
}

- (void)_evaluateOutputRules:(id)a3 contextWrapper:(id)a4
{
  v5 = a3;
  v6 = [a4 candidates];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__IRServicePackageAdapterAppleTVControl__evaluateOutputRules_contextWrapper___block_invoke;
  v8[3] = &unk_2797E19E0;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __77__IRServicePackageAdapterAppleTVControl__evaluateOutputRules_contextWrapper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__IRServicePackageAdapterAppleTVControl__evaluateOutputRules_contextWrapper___block_invoke_2;
  v6[3] = &unk_2797E19B8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __77__IRServicePackageAdapterAppleTVControl__evaluateOutputRules_contextWrapper___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = [v4 candidateResult];
  v7 = [v10 candidate];
  v8 = [v7 candidateIdentifier];
  v9 = [v5 evaluateRuleOutputWithCandidateIdentifier:v8];

  [v4 setEvaluation:v9 forRuleKey:v6];
}

- (void)_classifyContext:(id)a3
{
  v4 = [a3 candidates];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__IRServicePackageAdapterAppleTVControl__classifyContext___block_invoke;
  v5[3] = &unk_2797E19E0;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __58__IRServicePackageAdapterAppleTVControl__classifyContext___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) _autoRouteClassificationForCandidate:? forClassificationEvaluated:?];
  if ([v3 isValid])
  {
    v4 = [v3 detailedDesc];
    [v13 setClassification:4 withDescription:v4];
    goto LABEL_13;
  }

  v4 = [*(a1 + 32) _oneTapClassificationForCandidate:v13 forClassificationEvaluated:3];
  if (![v4 isValid])
  {
    v5 = [*(a1 + 32) _filteredClassificationForCandidate:v13 forClassificationEvaluated:1];
    if ([v5 isValid])
    {
      v6 = [v5 detailedDesc];
      v7 = v13;
      v8 = 1;
      v9 = v6;
    }

    else
    {
      v6 = [*(a1 + 32) _topOfListClassificationForCandidate:v13 forClassificationEvaluated:2];
      if ([(__CFString *)v6 isValid])
      {
        v10 = [(__CFString *)v6 detailedDesc];
        v11 = [*(a1 + 32) _reasonsForRejectingAutoRouteOrOneTapClassificationForCandidate:v13];
        v12 = [v10 stringByAppendingFormat:@":%@", v11];
        [v13 setClassification:2 withDescription:v12];

LABEL_11:
        goto LABEL_12;
      }

      v9 = @"No classification rules were satisfied";
      v7 = v13;
      v8 = 0;
    }

    [v7 setClassification:v8 withDescription:v9];
    goto LABEL_11;
  }

  v5 = [v4 detailedDesc];
  [v13 setClassification:3 withDescription:v5];
LABEL_12:

LABEL_13:
}

- (id)_reasonsForRejectingAutoRouteOrOneTapClassificationForCandidate:(id)a3
{
  v3 = a3;
  v4 = [v3 ruleInspections];
  v5 = [v4 objectForKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day"];
  v6 = [v5 evaluation];
  v7 = [v6 BOOLean];

  if (v7)
  {
    v8 = @"[Rejection]";
LABEL_5:
    v13 = [&stru_286755D18 stringByAppendingString:v8];
    goto LABEL_7;
  }

  v9 = [v3 ruleInspections];
  v10 = [v9 objectForKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day_no_picker"];
  v11 = [v10 evaluation];
  v12 = [v11 BOOLean];

  if (v12)
  {
    v8 = @"[Rejection No Picker]";
    goto LABEL_5;
  }

  v13 = &stru_286755D18;
LABEL_7:

  return v13;
}

- (id)_autoRoutePositiveRulesClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(IRServicePackageAdapterClassification);
  v7 = @"AppleTVControl_Continuity";
  [v5 logOrderOfExecution:a4 withRuleKey:@"AppleTVControl_Continuity" ruleType:@"Positive"];
  v8 = [v5 ruleInspections];
  v9 = [v8 objectForKeyedSubscript:@"AppleTVControl_Continuity"];
  v10 = [v9 evaluation];
  v11 = [v10 hasBoolean];

  if (v11)
  {
    goto LABEL_3;
  }

  v7 = @"AppleTVControl_Long_term_pattern";
  [v5 logOrderOfExecution:a4 withRuleKey:@"AppleTVControl_Long_term_pattern" ruleType:@"Positive"];
  v12 = [v5 ruleInspections];
  v13 = [v12 objectForKeyedSubscript:@"AppleTVControl_Long_term_pattern"];
  v14 = [v13 evaluation];
  v15 = [v14 hasBoolean];

  if (v15)
  {
LABEL_3:
    v16 = [v5 ruleInspections];
    v17 = [v16 objectForKeyedSubscript:v7];
    v18 = [v17 evaluation];
    -[IRServicePackageAdapterClassification setIsValid:](v6, "setIsValid:", [v18 BOOLean]);

    [(IRServicePackageAdapterClassification *)v6 setDetailedDesc:v7];
  }

  return v6;
}

- (id)_topOfListClassificationPositiveRulesForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(IRServicePackageAdapterClassification);
  v7 = [v5 ruleInspections];
  v8 = [v7 objectForKeyedSubscript:@"AppleTVControl_Active_route"];
  v9 = [v8 evaluation];
  v10 = [v5 logOrderOfExecution:a4 withRuleKey:@"AppleTVControl_Active_route" ruleType:@"Conditional" andReturn:{objc_msgSend(v9, "BOOLean")}];

  if (v10)
  {
    [(IRServicePackageAdapterClassification *)v6 setIsValid:1];
    v11 = @"AppleTVControl_Active_route";
  }

  else
  {
    [v5 logOrderOfExecution:a4 withRuleKey:@"AppleTVControl_Proximity" ruleType:@"Positive"];
    v12 = [v5 ruleInspections];
    v13 = [v12 objectForKeyedSubscript:@"AppleTVControl_Proximity"];
    v14 = [v13 evaluation];
    v15 = [v14 hasBoolean];

    if (v15)
    {
      v16 = [v5 ruleInspections];
      v17 = v16;
      v11 = @"AppleTVControl_Proximity";
    }

    else
    {
      [v5 logOrderOfExecution:a4 withRuleKey:@"AppleTVControl_Most_used_in_LOI" ruleType:@"Positive"];
      v18 = [v5 ruleInspections];
      v19 = [v18 objectForKeyedSubscript:@"AppleTVControl_Most_used_in_LOI"];
      v20 = [v19 evaluation];
      v21 = [v20 hasBoolean];

      if (!v21)
      {
        goto LABEL_9;
      }

      v16 = [v5 ruleInspections];
      v17 = v16;
      v11 = @"AppleTVControl_Most_used_in_LOI";
    }

    v22 = [v16 objectForKeyedSubscript:v11];
    v23 = [v22 evaluation];
    -[IRServicePackageAdapterClassification setIsValid:](v6, "setIsValid:", [v23 BOOLean]);
  }

  [(IRServicePackageAdapterClassification *)v6 setDetailedDesc:v11];
LABEL_9:

  return v6;
}

- (id)_autoRouteClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(IRServicePackageAdapterClassification);
  [v6 logOrderOfExecution:a4 withRuleKey:@"AppleTVControl_Candidate_was_rejected_in_last_day" ruleType:@"Negative"];
  v8 = [v6 ruleInspections];
  v9 = [v8 objectForKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day"];
  v10 = [v9 evaluation];
  v11 = [v10 BOOLean];

  if (v11)
  {
    goto LABEL_3;
  }

  [v6 logOrderOfExecution:a4 withRuleKey:@"AppleTVControl_Candidate_was_rejected_in_last_day_no_picker" ruleType:@"Negative"];
  v12 = [v6 ruleInspections];
  v13 = [v12 objectForKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day_no_picker"];
  v14 = [v13 evaluation];
  v15 = [v14 BOOLean];

  if (v15)
  {
LABEL_3:
    v16 = v7;
  }

  else
  {
    v16 = [(IRServicePackageAdapterAppleTVControl *)self _autoRoutePositiveRulesClassificationForCandidate:v6 forClassificationEvaluated:a4];
  }

  v17 = v16;

  return v17;
}

- (id)_oneTapClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4
{
  v4 = objc_alloc_init(IRServicePackageAdapterClassification);

  return v4;
}

- (id)_topOfListClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(IRServicePackageAdapterClassification);
  v8 = [(IRServicePackageAdapterAppleTVControl *)self _autoRoutePositiveRulesClassificationForCandidate:v6 forClassificationEvaluated:a4];

  if ([v8 isValid] || objc_msgSend(v8, "isValid"))
  {
    v9 = v8;
  }

  else
  {
    v9 = [(IRServicePackageAdapterAppleTVControl *)self _topOfListClassificationPositiveRulesForCandidate:v6 forClassificationEvaluated:a4];
  }

  v10 = v9;

  return v10;
}

- (id)_filteredClassificationForCandidate:(id)a3 forClassificationEvaluated:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(IRServicePackageAdapterClassification);
  v7 = [v5 ruleInspections];
  v8 = @"AppleTVControl_Candidate_been_used";
  v9 = [v7 objectForKeyedSubscript:@"AppleTVControl_Candidate_been_used"];
  v10 = [v9 evaluation];
  LOBYTE(a4) = [v5 logOrderOfExecution:a4 withRuleKey:@"AppleTVControl_Candidate_been_used" ruleType:@"Conditional" andReturn:{objc_msgSend(v10, "BOOLean")}];

  if ((a4 & 1) == 0)
  {
    [(IRServicePackageAdapterClassification *)v6 setIsValid:1];
    v8 = @"Candidate was never used";
  }

  [(IRServicePackageAdapterClassification *)v6 setDetailedDesc:v8];

  return v6;
}

- (BOOL)shouldRejectEvent:(id)a3 withHistoryEventsContainer:(id)a4 withSystemState:(id)a5 forCandidate:(id)a6 date:(id)a7
{
  v8 = a3;
  v9 = a4;
  v10 = [IREventDO eventDOWithAppleTVControlType:3];
  v11 = [v9 historyEvents];
  if ([v11 count] && objc_msgSend(v8, "isEqual:", v10))
  {
    v12 = [v9 historyEvents];
    v13 = [v12 lastObject];
    v14 = [v13 event];
    v15 = [v14 isEqual:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)filterHistory:(id)a3 withCandidatesContainer:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v44 = v4;
  v6 = [v4 historyEvents];
  v7 = [v5 arrayWithArray:v6];

  v8 = +[IREventDO atvUserInteractionEvents];
  v46 = [v8 compactMap:&__block_literal_global_96];

  v45 = objc_opt_new();
  if ([v7 count])
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = [v7 objectAtIndexedSubscript:v9];
      v13 = [v12 event];
      v14 = [v11 numberWithLongLong:{objc_msgSend(v13, "eventType")}];
      v15 = [v46 containsObject:v14];

      if (v15)
      {
        v16 = v10;
        while (v16 < [v7 count])
        {
          v17 = [v7 objectAtIndexedSubscript:v16];
          v18 = [v17 date];
          v19 = [v7 objectAtIndexedSubscript:v9];
          v20 = [v19 date];
          [v18 timeIntervalSinceDate:v20];
          v22 = v21;
          v23 = +[IRPreferences shared];
          v24 = [v23 appleTvCtrlEventsTimeIntervalThreshold];
          [v24 doubleValue];
          v26 = v25;

          if (v22 >= v26)
          {
            break;
          }

          v27 = MEMORY[0x277CCABB0];
          v28 = [v7 objectAtIndexedSubscript:v16];
          v29 = [v28 event];
          v30 = [v27 numberWithLongLong:{objc_msgSend(v29, "eventType")}];
          v31 = [v46 containsObject:v30];

          ++v16;
          if (v31)
          {
            [v45 addIndex:v9];
            break;
          }
        }
      }

      ++v9;
      ++v10;
    }

    while (v9 < [v7 count]);
  }

  [v7 removeObjectsAtIndexes:v45];
  v32 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v33 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = v33;
    v36 = [v44 historyEvents];
    v37 = [v34 numberWithUnsignedInteger:{objc_msgSend(v36, "count")}];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    *buf = 136315906;
    v48 = "#service-package-adapter-apple-tv-control, ";
    v49 = 2112;
    v50 = v32;
    v51 = 2112;
    v52 = v37;
    v53 = 2112;
    v54 = v38;
    _os_log_impl(&dword_25543D000, v35, OS_LOG_TYPE_INFO, "%s[%@], Number of history events before filtering = %@, after filtering = %@", buf, 0x2Au);
  }

  v39 = [IRHistoryEventsContainerDO alloc];
  v40 = [v7 copy];
  v41 = [(IRHistoryEventsContainerDO *)v39 initWithHistoryEvents:v40];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __79__IRServicePackageAdapterAppleTVControl_filterHistory_withCandidatesContainer___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 eventType];

  return [v2 numberWithLongLong:v3];
}

- (BOOL)shouldAskForLowLatencyMiLo:(id)a3 historyEventsAsc:(id)a4
{
  v5 = MEMORY[0x277CBEB58];
  v6 = a4;
  v7 = a3;
  v8 = [v5 set];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__IRServicePackageAdapterAppleTVControl_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke;
  v16[3] = &unk_2797E1A28;
  v9 = v8;
  v17 = v9;
  [v6 enumerateObjectsWithOptions:2 usingBlock:v16];

  v10 = [v7 candidates];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__IRServicePackageAdapterAppleTVControl_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke_2;
  v14[3] = &unk_2797E0CD0;
  v15 = v9;
  v11 = v9;
  v12 = [v10 firstWhere:v14];
  LOBYTE(v9) = v12 != 0;

  return v9;
}

void __85__IRServicePackageAdapterAppleTVControl_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v17 date];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;
  v10 = +[IRPreferences shared];
  v11 = [v10 candidateLastUsedThrForMiLoLowLatancyPowerOpt];
  [v11 doubleValue];
  v13 = v12;

  if (v9 >= v13)
  {
    *a4 = 1;
  }

  else
  {
    v14 = [v17 systemState];
    if ([v14 isMiLoSupportedLocation])
    {
      v15 = [v17 candidateIdentifier];

      if (!v15)
      {
        goto LABEL_7;
      }

      v16 = *(a1 + 32);
      v14 = [v17 candidateIdentifier];
      [v16 addObject:v14];
    }
  }

LABEL_7:
}

uint64_t __85__IRServicePackageAdapterAppleTVControl_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 candidateIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)getSignificantBundlesWithCandidates:(id)a3 fromHistory:(id)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (id)uiAnalyticsWithEvent:(id)a3 forCandidateIdentifier:(id)a4 systemStateManager:(id)a5 candidatesContainer:(id)a6 inspections:(id)a7 statisticsManager:(id)a8 service:(id)a9 historyEventsContainer:(id)a10
{
  v121[21] = *MEMORY[0x277D85DE8];
  v79 = a3;
  v15 = a4;
  v83 = a5;
  v82 = a6;
  v16 = a7;
  v80 = a8;
  v81 = a9;
  v60 = a10;
  v58 = v16;
  v78 = [v16 objectForKeyedSubscript:*MEMORY[0x277D21240]];
  v17 = [v81 clientIdentifier];
  if (v17)
  {
    v76 = [v81 clientIdentifier];
  }

  else
  {
    v76 = &stru_286755D18;
  }

  [v79 eventType];
  v77 = IRAppleTVControlEventTypeToString();
  v18 = [v83 miloProviderLslPredictionResults];
  v72 = [v18 canUse];

  v19 = [v83 miloProviderLslPredictionResults];
  v70 = [v19 isPredictionValid];

  v20 = [v83 miloProviderLslPredictionResults];
  v68 = [v20 isMotionDetected];

  v21 = [v83 miloProviderLslPredictionResults];
  v22 = [v21 scores];
  v66 = [v22 count];

  v23 = [v83 miloProviderLslPredictionResults];
  v24 = [v23 isMapValid];

  v25 = [v83 miloProviderLslPredictionResults];
  v26 = [v25 predictionTime];
  [v26 timeIntervalSinceNow];
  v28 = v27;

  v29 = [v82 candidates];
  v61 = [v29 count];

  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__7;
  v102 = __Block_byref_object_dispose__7;
  v103 = &stru_286755D18;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__7;
  v96 = __Block_byref_object_dispose__7;
  v97 = &stru_286755D18;
  v30 = [v78 candidates];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __198__IRServicePackageAdapterAppleTVControl_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke;
  v84[3] = &unk_2797E1A50;
  v86 = &v116;
  v87 = &v112;
  v88 = &v108;
  v89 = &v104;
  v75 = v15;
  v85 = v75;
  v90 = &v98;
  v91 = &v92;
  [v30 enumerateObjectsUsingBlock:v84];

  v63 = [v82 candidateForCandidateIdentifier:v75];
  v31 = [v63 nodes];
  LOBYTE(v30) = [v31 count] > 1;

  if (v30)
  {
    v32 = @"Group";
  }

  else
  {
    v33 = [v63 nodes];
    v34 = [v33 allObjects];
    v35 = [v34 firstObject];
    v36 = [v35 avOutputDevice];

    if (v36)
    {
      v37 = [v63 nodes];
      v38 = [v37 allObjects];
      v39 = [v38 firstObject];
      v40 = [v39 avOutputDevice];
      v65 = IRAVOutputDeviceTypeToString([v40 deviceType]);

      goto LABEL_10;
    }

    v32 = &stru_286755D18;
  }

  v65 = v32;
LABEL_10:
  v41 = [v80 timeToBannerInMilliSeconds];
  if (v41)
  {
    v42 = [v80 timeToBannerInMilliSeconds];
    v59 = [v42 unsignedIntegerValue];
  }

  else
  {
    v59 = 0;
  }

  v43 = +[IRPreferences shared];
  v44 = [v43 mobileAssetVersion];

  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = &stru_286755D18;
  }

  v64 = v45;
  v120[0] = @"UI_Event_Client_Identifier";
  v120[1] = @"UI_Event_Type";
  v121[0] = v76;
  v121[1] = v77;
  v120[2] = @"UI_Event_Count";
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v121[2] = v74;
  v120[3] = @"UI_Event_MiLo_Available";
  v73 = [MEMORY[0x277CCABB0] numberWithBool:v72];
  v121[3] = v73;
  v120[4] = @"UI_Event_MiLo_Confidence";
  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v70];
  v121[4] = v71;
  v120[5] = @"UI_Event_Milo_Confidence_Reason";
  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v68];
  v121[5] = v69;
  v120[6] = @"UI_Event_Milo_N_LSL_Items";
  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v66];
  v121[6] = v67;
  v120[7] = @"UI_Event_Milo_Quality";
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
  v121[7] = v46;
  v120[8] = @"UI_Event_Milo_Quality_Reason";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v121[8] = v47;
  v120[9] = @"UI_Event_Milo_Time_Since_Prediction";
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fabs(v28)];
  v121[9] = v48;
  v120[10] = @"UI_Event_N_MiLo_Models";
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v121[10] = v49;
  v120[11] = @"UI_Event_N_Candidates";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v61];
  v121[11] = v50;
  v120[12] = @"UI_Event_N_Candidates_Classified_AutoRoute";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v117[3]];
  v121[12] = v51;
  v120[13] = @"UI_Event_N_Candidates_Classified_OneTap";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v113[3]];
  v121[13] = v52;
  v120[14] = @"UI_Event_N_Candidates_Classified_TopOfList";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v109[3]];
  v121[14] = v53;
  v120[15] = @"UI_Event_N_Candidates_Classified_Filter";
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v105[3]];
  v121[15] = v54;
  v120[16] = @"UI_Event_Selected_Candidate_Classification";
  v121[16] = v99[5];
  v120[17] = @"UI_Event_Selected_Candidate_Rule_Reason";
  v121[17] = v93[5];
  v121[18] = v65;
  v120[18] = @"UI_Event_Selected_Candidate_Type";
  v120[19] = @"UI_Event_Time_To_Banner_Milli_Seconds";
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59];
  v120[20] = @"UI_Event_Mobile_Asset_Version";
  v121[19] = v55;
  v121[20] = v64;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:21];

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v98, 8);

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);

  v56 = *MEMORY[0x277D85DE8];

  return v62;
}

void __198__IRServicePackageAdapterAppleTVControl_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke(void *a1, void *a2)
{
  v3 = [a2 inspectionServicePackage];
  if (!v3)
  {
    goto LABEL_14;
  }

  v15 = v3;
  if ([v3 classification] == 4)
  {
    v4 = 5;
LABEL_10:
    ++*(*(a1[v4] + 8) + 24);
    goto LABEL_11;
  }

  if ([v15 classification] == 3)
  {
    v4 = 6;
    goto LABEL_10;
  }

  if ([v15 classification] == 2)
  {
    v4 = 7;
    goto LABEL_10;
  }

  if ([v15 classification] == 1)
  {
    v4 = 8;
    goto LABEL_10;
  }

LABEL_11:
  v5 = a1[4];
  v6 = [v15 candidate];
  v7 = [v6 candidateIdentifier];
  LODWORD(v5) = [v5 isEqual:v7];

  v3 = v15;
  if (v5)
  {
    [v15 classification];
    v8 = IRCandidateClassificationToString();
    v9 = *(a1[9] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v15 classificationDescription];
    v12 = *(a1[10] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v3 = v15;
    v14 = *(a1[10] + 8);
    if (!*(v14 + 40))
    {
      *(v14 + 40) = &stru_286755D18;

      v3 = v15;
    }
  }

LABEL_14:
}

@end