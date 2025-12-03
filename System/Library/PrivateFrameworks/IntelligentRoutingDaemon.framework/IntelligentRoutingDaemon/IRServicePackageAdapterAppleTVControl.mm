@interface IRServicePackageAdapterAppleTVControl
- (BOOL)_outputRulesToContext:(id)context candidatesContainer:(id)container fillInspection:(BOOL)inspection;
- (BOOL)generateClassificationsWithCandiatesContainer:(id)container systemState:(id)state historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection date:(id)date;
- (BOOL)shouldAskForLowLatencyMiLo:(id)lo historyEventsAsc:(id)asc;
- (BOOL)shouldRejectEvent:(id)event withHistoryEventsContainer:(id)container withSystemState:(id)state forCandidate:(id)candidate date:(id)date;
- (IRServicePackageAdapterAppleTVControl)init;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (id)_autoRouteClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated;
- (id)_autoRoutePositiveRulesClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated;
- (id)_filteredClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated;
- (id)_oneTapClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated;
- (id)_reasonsForRejectingAutoRouteOrOneTapClassificationForCandidate:(id)candidate;
- (id)_rules;
- (id)_topOfListClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated;
- (id)_topOfListClassificationPositiveRulesForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated;
- (id)filterHistory:(id)history withCandidatesContainer:(id)container;
- (id)getSignificantBundlesWithCandidates:(id)candidates fromHistory:(id)history;
- (id)uiAnalyticsWithEvent:(id)event forCandidateIdentifier:(id)identifier systemStateManager:(id)manager candidatesContainer:(id)container inspections:(id)inspections statisticsManager:(id)statisticsManager service:(id)service historyEventsContainer:(id)self0;
- (void)_classifyContext:(id)context;
- (void)_evaluateOutputRules:(id)rules contextWrapper:(id)wrapper;
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
    internalContexts = [(IRServicePackageAdapterAppleTVControl *)v2 internalContexts];
    v8 = *MEMORY[0x277D21240];
    [internalContexts setObject:v6 forKeyedSubscript:*MEMORY[0x277D21240]];

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IRServicePackageAdapterAppleTVControl *)v2 setInternalPolicyInspections:v9];

    v10 = [[IRPolicyInspection alloc] initWithName:@"AppleTVControl"];
    internalPolicyInspections = [(IRServicePackageAdapterAppleTVControl *)v2 internalPolicyInspections];
    [internalPolicyInspections setObject:v10 forKeyedSubscript:v8];
  }

  return v2;
}

- (NSDictionary)contexts
{
  internalContexts = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  v3 = [internalContexts copy];

  return v3;
}

- (NSDictionary)policyInspections
{
  internalPolicyInspections = [(IRServicePackageAdapterAppleTVControl *)self internalPolicyInspections];
  v3 = [internalPolicyInspections copy];

  return v3;
}

- (BOOL)generateClassificationsWithCandiatesContainer:(id)container systemState:(id)state historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection date:(id)date
{
  inspectionCopy = inspection;
  dateCopy = date;
  deviceContainerCopy = deviceContainer;
  predictionCopy = prediction;
  eventsContainerCopy = eventsContainer;
  stateCopy = state;
  containerCopy = container;
  _rules = [(IRServicePackageAdapterAppleTVControl *)self _rules];
  v22 = [IRRuleEngine executeRules:_rules withCandiatesContainer:containerCopy systemStatus:stateCopy historyEventsContainer:eventsContainerCopy miloPrediction:predictionCopy nearbyDeviceContainer:deviceContainerCopy date:dateCopy];

  LOBYTE(inspectionCopy) = [(IRServicePackageAdapterAppleTVControl *)self _outputRulesToContext:v22 candidatesContainer:containerCopy fillInspection:inspectionCopy];
  v23 = objc_alloc_init(IRCandidateClassificationDetectorSameSpace);
  candidates = [containerCopy candidates];

  v25 = [candidates map:&__block_literal_global_10];

  historyEvents = [eventsContainerCopy historyEvents];

  [(IRCandidateClassificationDetectorSameSpace *)v23 adjustSameSpaceParametersForCandidates:v25 withSystemState:stateCopy andHistoryEventsAsc:historyEvents andMiLoPrediction:predictionCopy andNearbyDevicesContainer:deviceContainerCopy andDate:dateCopy];
  internalContexts = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  v28 = *MEMORY[0x277D21240];
  v29 = [internalContexts objectForKeyedSubscript:*MEMORY[0x277D21240]];
  candidateResults = [v29 candidateResults];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __179__IRServicePackageAdapterAppleTVControl_generateClassificationsWithCandiatesContainer_systemState_historyEventsContainer_miloPrediction_nearbyDeviceContainer_fillInspection_date___block_invoke_2;
  v41[3] = &unk_2797E1968;
  v42 = v25;
  v31 = v25;
  [candidateResults enumerateObjectsUsingBlock:v41];

  v32 = objc_alloc(MEMORY[0x277D212A8]);
  internalContexts2 = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  v34 = [internalContexts2 objectForKeyedSubscript:v28];
  candidateResults2 = [v34 candidateResults];
  LODWORD(v31) = [predictionCopy isMapValid];

  appInFocusBundleID = [stateCopy appInFocusBundleID];

  v37 = [v32 initWithCandidateResults:candidateResults2 isBannerClassificationUnavailable:v31 ^ 1 bundleIdentifier:appInFocusBundleID];
  internalContexts3 = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  [internalContexts3 setObject:v37 forKeyedSubscript:v28];

  return inspectionCopy;
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
  appleTvCtrlRulesContinuityTimeIntervalInSeconds = [v10 appleTvCtrlRulesContinuityTimeIntervalInSeconds];
  [appleTvCtrlRulesContinuityTimeIntervalInSeconds doubleValue];
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

- (BOOL)_outputRulesToContext:(id)context candidatesContainer:(id)container fillInspection:(BOOL)inspection
{
  inspectionCopy = inspection;
  containerCopy = container;
  contextCopy = context;
  v10 = [[IRContextWrapper alloc] initWithName:@"AppleTVControl" defaultClassification:0];
  candidates = [containerCopy candidates];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __98__IRServicePackageAdapterAppleTVControl__outputRulesToContext_candidatesContainer_fillInspection___block_invoke;
  v24[3] = &unk_2797E1990;
  v12 = v10;
  v25 = v12;
  [candidates enumerateObjectsUsingBlock:v24];

  [(IRServicePackageAdapterAppleTVControl *)self _evaluateOutputRules:contextCopy contextWrapper:v12];
  [(IRServicePackageAdapterAppleTVControl *)self _classifyContext:v12];
  context = [(IRContextWrapper *)v12 context];
  candidateResults = [context candidateResults];
  internalContexts = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  v16 = *MEMORY[0x277D21240];
  v17 = [internalContexts objectForKeyedSubscript:*MEMORY[0x277D21240]];
  candidateResults2 = [v17 candidateResults];
  v19 = [candidateResults isEqual:candidateResults2];

  internalContexts2 = [(IRServicePackageAdapterAppleTVControl *)self internalContexts];
  [internalContexts2 setObject:context forKeyedSubscript:v16];

  if (inspectionCopy)
  {
    policyInspection = [(IRContextWrapper *)v12 policyInspection];
    internalPolicyInspections = [(IRServicePackageAdapterAppleTVControl *)self internalPolicyInspections];
    [internalPolicyInspections setObject:policyInspection forKeyedSubscript:v16];
  }

  return v19 ^ 1;
}

void __98__IRServicePackageAdapterAppleTVControl__outputRulesToContext_candidatesContainer_fillInspection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRCandidateDO candidateFromCandidateDO:a2];
  [v2 addCandidate:v3 logOrderOfExecution:0];
}

- (void)_evaluateOutputRules:(id)rules contextWrapper:(id)wrapper
{
  rulesCopy = rules;
  candidates = [wrapper candidates];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__IRServicePackageAdapterAppleTVControl__evaluateOutputRules_contextWrapper___block_invoke;
  v8[3] = &unk_2797E19E0;
  v9 = rulesCopy;
  v7 = rulesCopy;
  [candidates enumerateObjectsUsingBlock:v8];
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

- (void)_classifyContext:(id)context
{
  candidates = [context candidates];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__IRServicePackageAdapterAppleTVControl__classifyContext___block_invoke;
  v5[3] = &unk_2797E19E0;
  v5[4] = self;
  [candidates enumerateObjectsUsingBlock:v5];
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

- (id)_reasonsForRejectingAutoRouteOrOneTapClassificationForCandidate:(id)candidate
{
  candidateCopy = candidate;
  ruleInspections = [candidateCopy ruleInspections];
  v5 = [ruleInspections objectForKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day"];
  evaluation = [v5 evaluation];
  bOOLean = [evaluation BOOLean];

  if (bOOLean)
  {
    v8 = @"[Rejection]";
LABEL_5:
    v13 = [&stru_286755D18 stringByAppendingString:v8];
    goto LABEL_7;
  }

  ruleInspections2 = [candidateCopy ruleInspections];
  v10 = [ruleInspections2 objectForKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day_no_picker"];
  evaluation2 = [v10 evaluation];
  bOOLean2 = [evaluation2 BOOLean];

  if (bOOLean2)
  {
    v8 = @"[Rejection No Picker]";
    goto LABEL_5;
  }

  v13 = &stru_286755D18;
LABEL_7:

  return v13;
}

- (id)_autoRoutePositiveRulesClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated
{
  candidateCopy = candidate;
  v6 = objc_alloc_init(IRServicePackageAdapterClassification);
  v7 = @"AppleTVControl_Continuity";
  [candidateCopy logOrderOfExecution:evaluated withRuleKey:@"AppleTVControl_Continuity" ruleType:@"Positive"];
  ruleInspections = [candidateCopy ruleInspections];
  v9 = [ruleInspections objectForKeyedSubscript:@"AppleTVControl_Continuity"];
  evaluation = [v9 evaluation];
  hasBoolean = [evaluation hasBoolean];

  if (hasBoolean)
  {
    goto LABEL_3;
  }

  v7 = @"AppleTVControl_Long_term_pattern";
  [candidateCopy logOrderOfExecution:evaluated withRuleKey:@"AppleTVControl_Long_term_pattern" ruleType:@"Positive"];
  ruleInspections2 = [candidateCopy ruleInspections];
  v13 = [ruleInspections2 objectForKeyedSubscript:@"AppleTVControl_Long_term_pattern"];
  evaluation2 = [v13 evaluation];
  hasBoolean2 = [evaluation2 hasBoolean];

  if (hasBoolean2)
  {
LABEL_3:
    ruleInspections3 = [candidateCopy ruleInspections];
    v17 = [ruleInspections3 objectForKeyedSubscript:v7];
    evaluation3 = [v17 evaluation];
    -[IRServicePackageAdapterClassification setIsValid:](v6, "setIsValid:", [evaluation3 BOOLean]);

    [(IRServicePackageAdapterClassification *)v6 setDetailedDesc:v7];
  }

  return v6;
}

- (id)_topOfListClassificationPositiveRulesForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated
{
  candidateCopy = candidate;
  v6 = objc_alloc_init(IRServicePackageAdapterClassification);
  ruleInspections = [candidateCopy ruleInspections];
  v8 = [ruleInspections objectForKeyedSubscript:@"AppleTVControl_Active_route"];
  evaluation = [v8 evaluation];
  v10 = [candidateCopy logOrderOfExecution:evaluated withRuleKey:@"AppleTVControl_Active_route" ruleType:@"Conditional" andReturn:{objc_msgSend(evaluation, "BOOLean")}];

  if (v10)
  {
    [(IRServicePackageAdapterClassification *)v6 setIsValid:1];
    v11 = @"AppleTVControl_Active_route";
  }

  else
  {
    [candidateCopy logOrderOfExecution:evaluated withRuleKey:@"AppleTVControl_Proximity" ruleType:@"Positive"];
    ruleInspections2 = [candidateCopy ruleInspections];
    v13 = [ruleInspections2 objectForKeyedSubscript:@"AppleTVControl_Proximity"];
    evaluation2 = [v13 evaluation];
    hasBoolean = [evaluation2 hasBoolean];

    if (hasBoolean)
    {
      ruleInspections3 = [candidateCopy ruleInspections];
      v17 = ruleInspections3;
      v11 = @"AppleTVControl_Proximity";
    }

    else
    {
      [candidateCopy logOrderOfExecution:evaluated withRuleKey:@"AppleTVControl_Most_used_in_LOI" ruleType:@"Positive"];
      ruleInspections4 = [candidateCopy ruleInspections];
      v19 = [ruleInspections4 objectForKeyedSubscript:@"AppleTVControl_Most_used_in_LOI"];
      evaluation3 = [v19 evaluation];
      hasBoolean2 = [evaluation3 hasBoolean];

      if (!hasBoolean2)
      {
        goto LABEL_9;
      }

      ruleInspections3 = [candidateCopy ruleInspections];
      v17 = ruleInspections3;
      v11 = @"AppleTVControl_Most_used_in_LOI";
    }

    v22 = [ruleInspections3 objectForKeyedSubscript:v11];
    evaluation4 = [v22 evaluation];
    -[IRServicePackageAdapterClassification setIsValid:](v6, "setIsValid:", [evaluation4 BOOLean]);
  }

  [(IRServicePackageAdapterClassification *)v6 setDetailedDesc:v11];
LABEL_9:

  return v6;
}

- (id)_autoRouteClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated
{
  candidateCopy = candidate;
  v7 = objc_alloc_init(IRServicePackageAdapterClassification);
  [candidateCopy logOrderOfExecution:evaluated withRuleKey:@"AppleTVControl_Candidate_was_rejected_in_last_day" ruleType:@"Negative"];
  ruleInspections = [candidateCopy ruleInspections];
  v9 = [ruleInspections objectForKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day"];
  evaluation = [v9 evaluation];
  bOOLean = [evaluation BOOLean];

  if (bOOLean)
  {
    goto LABEL_3;
  }

  [candidateCopy logOrderOfExecution:evaluated withRuleKey:@"AppleTVControl_Candidate_was_rejected_in_last_day_no_picker" ruleType:@"Negative"];
  ruleInspections2 = [candidateCopy ruleInspections];
  v13 = [ruleInspections2 objectForKeyedSubscript:@"AppleTVControl_Candidate_was_rejected_in_last_day_no_picker"];
  evaluation2 = [v13 evaluation];
  bOOLean2 = [evaluation2 BOOLean];

  if (bOOLean2)
  {
LABEL_3:
    v16 = v7;
  }

  else
  {
    v16 = [(IRServicePackageAdapterAppleTVControl *)self _autoRoutePositiveRulesClassificationForCandidate:candidateCopy forClassificationEvaluated:evaluated];
  }

  v17 = v16;

  return v17;
}

- (id)_oneTapClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated
{
  v4 = objc_alloc_init(IRServicePackageAdapterClassification);

  return v4;
}

- (id)_topOfListClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated
{
  candidateCopy = candidate;
  v7 = objc_alloc_init(IRServicePackageAdapterClassification);
  v8 = [(IRServicePackageAdapterAppleTVControl *)self _autoRoutePositiveRulesClassificationForCandidate:candidateCopy forClassificationEvaluated:evaluated];

  if ([v8 isValid] || objc_msgSend(v8, "isValid"))
  {
    v9 = v8;
  }

  else
  {
    v9 = [(IRServicePackageAdapterAppleTVControl *)self _topOfListClassificationPositiveRulesForCandidate:candidateCopy forClassificationEvaluated:evaluated];
  }

  v10 = v9;

  return v10;
}

- (id)_filteredClassificationForCandidate:(id)candidate forClassificationEvaluated:(int64_t)evaluated
{
  candidateCopy = candidate;
  v6 = objc_alloc_init(IRServicePackageAdapterClassification);
  ruleInspections = [candidateCopy ruleInspections];
  v8 = @"AppleTVControl_Candidate_been_used";
  v9 = [ruleInspections objectForKeyedSubscript:@"AppleTVControl_Candidate_been_used"];
  evaluation = [v9 evaluation];
  LOBYTE(evaluated) = [candidateCopy logOrderOfExecution:evaluated withRuleKey:@"AppleTVControl_Candidate_been_used" ruleType:@"Conditional" andReturn:{objc_msgSend(evaluation, "BOOLean")}];

  if ((evaluated & 1) == 0)
  {
    [(IRServicePackageAdapterClassification *)v6 setIsValid:1];
    v8 = @"Candidate was never used";
  }

  [(IRServicePackageAdapterClassification *)v6 setDetailedDesc:v8];

  return v6;
}

- (BOOL)shouldRejectEvent:(id)event withHistoryEventsContainer:(id)container withSystemState:(id)state forCandidate:(id)candidate date:(id)date
{
  eventCopy = event;
  containerCopy = container;
  v10 = [IREventDO eventDOWithAppleTVControlType:3];
  historyEvents = [containerCopy historyEvents];
  if ([historyEvents count] && objc_msgSend(eventCopy, "isEqual:", v10))
  {
    historyEvents2 = [containerCopy historyEvents];
    lastObject = [historyEvents2 lastObject];
    event = [lastObject event];
    v15 = [event isEqual:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)filterHistory:(id)history withCandidatesContainer:(id)container
{
  v55 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v5 = MEMORY[0x277CBEB18];
  v44 = historyCopy;
  historyEvents = [historyCopy historyEvents];
  v7 = [v5 arrayWithArray:historyEvents];

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
      event = [v12 event];
      v14 = [v11 numberWithLongLong:{objc_msgSend(event, "eventType")}];
      v15 = [v46 containsObject:v14];

      if (v15)
      {
        v16 = v10;
        while (v16 < [v7 count])
        {
          v17 = [v7 objectAtIndexedSubscript:v16];
          date = [v17 date];
          v19 = [v7 objectAtIndexedSubscript:v9];
          date2 = [v19 date];
          [date timeIntervalSinceDate:date2];
          v22 = v21;
          v23 = +[IRPreferences shared];
          appleTvCtrlEventsTimeIntervalThreshold = [v23 appleTvCtrlEventsTimeIntervalThreshold];
          [appleTvCtrlEventsTimeIntervalThreshold doubleValue];
          v26 = v25;

          if (v22 >= v26)
          {
            break;
          }

          v27 = MEMORY[0x277CCABB0];
          v28 = [v7 objectAtIndexedSubscript:v16];
          event2 = [v28 event];
          v30 = [v27 numberWithLongLong:{objc_msgSend(event2, "eventType")}];
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
    historyEvents2 = [v44 historyEvents];
    v37 = [v34 numberWithUnsignedInteger:{objc_msgSend(historyEvents2, "count")}];
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

- (BOOL)shouldAskForLowLatencyMiLo:(id)lo historyEventsAsc:(id)asc
{
  v5 = MEMORY[0x277CBEB58];
  ascCopy = asc;
  loCopy = lo;
  v8 = [v5 set];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__IRServicePackageAdapterAppleTVControl_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke;
  v16[3] = &unk_2797E1A28;
  v9 = v8;
  v17 = v9;
  [ascCopy enumerateObjectsWithOptions:2 usingBlock:v16];

  candidates = [loCopy candidates];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__IRServicePackageAdapterAppleTVControl_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke_2;
  v14[3] = &unk_2797E0CD0;
  v15 = v9;
  v11 = v9;
  v12 = [candidates firstWhere:v14];
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

- (id)getSignificantBundlesWithCandidates:(id)candidates fromHistory:(id)history
{
  v4 = objc_opt_new();

  return v4;
}

- (id)uiAnalyticsWithEvent:(id)event forCandidateIdentifier:(id)identifier systemStateManager:(id)manager candidatesContainer:(id)container inspections:(id)inspections statisticsManager:(id)statisticsManager service:(id)service historyEventsContainer:(id)self0
{
  v121[21] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  identifierCopy = identifier;
  managerCopy = manager;
  containerCopy = container;
  inspectionsCopy = inspections;
  statisticsManagerCopy = statisticsManager;
  serviceCopy = service;
  eventsContainerCopy = eventsContainer;
  v58 = inspectionsCopy;
  v78 = [inspectionsCopy objectForKeyedSubscript:*MEMORY[0x277D21240]];
  clientIdentifier = [serviceCopy clientIdentifier];
  if (clientIdentifier)
  {
    clientIdentifier2 = [serviceCopy clientIdentifier];
  }

  else
  {
    clientIdentifier2 = &stru_286755D18;
  }

  [eventCopy eventType];
  v77 = IRAppleTVControlEventTypeToString();
  miloProviderLslPredictionResults = [managerCopy miloProviderLslPredictionResults];
  canUse = [miloProviderLslPredictionResults canUse];

  miloProviderLslPredictionResults2 = [managerCopy miloProviderLslPredictionResults];
  isPredictionValid = [miloProviderLslPredictionResults2 isPredictionValid];

  miloProviderLslPredictionResults3 = [managerCopy miloProviderLslPredictionResults];
  isMotionDetected = [miloProviderLslPredictionResults3 isMotionDetected];

  miloProviderLslPredictionResults4 = [managerCopy miloProviderLslPredictionResults];
  scores = [miloProviderLslPredictionResults4 scores];
  v66 = [scores count];

  miloProviderLslPredictionResults5 = [managerCopy miloProviderLslPredictionResults];
  isMapValid = [miloProviderLslPredictionResults5 isMapValid];

  miloProviderLslPredictionResults6 = [managerCopy miloProviderLslPredictionResults];
  predictionTime = [miloProviderLslPredictionResults6 predictionTime];
  [predictionTime timeIntervalSinceNow];
  v28 = v27;

  candidates = [containerCopy candidates];
  v61 = [candidates count];

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
  candidates2 = [v78 candidates];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __198__IRServicePackageAdapterAppleTVControl_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke;
  v84[3] = &unk_2797E1A50;
  v86 = &v116;
  v87 = &v112;
  v88 = &v108;
  v89 = &v104;
  v75 = identifierCopy;
  v85 = v75;
  v90 = &v98;
  v91 = &v92;
  [candidates2 enumerateObjectsUsingBlock:v84];

  v63 = [containerCopy candidateForCandidateIdentifier:v75];
  nodes = [v63 nodes];
  LOBYTE(candidates2) = [nodes count] > 1;

  if (candidates2)
  {
    v32 = @"Group";
  }

  else
  {
    nodes2 = [v63 nodes];
    allObjects = [nodes2 allObjects];
    firstObject = [allObjects firstObject];
    avOutputDevice = [firstObject avOutputDevice];

    if (avOutputDevice)
    {
      nodes3 = [v63 nodes];
      allObjects2 = [nodes3 allObjects];
      firstObject2 = [allObjects2 firstObject];
      avOutputDevice2 = [firstObject2 avOutputDevice];
      v65 = IRAVOutputDeviceTypeToString([avOutputDevice2 deviceType]);

      goto LABEL_10;
    }

    v32 = &stru_286755D18;
  }

  v65 = v32;
LABEL_10:
  timeToBannerInMilliSeconds = [statisticsManagerCopy timeToBannerInMilliSeconds];
  if (timeToBannerInMilliSeconds)
  {
    timeToBannerInMilliSeconds2 = [statisticsManagerCopy timeToBannerInMilliSeconds];
    unsignedIntegerValue = [timeToBannerInMilliSeconds2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v43 = +[IRPreferences shared];
  mobileAssetVersion = [v43 mobileAssetVersion];

  if (mobileAssetVersion)
  {
    v45 = mobileAssetVersion;
  }

  else
  {
    v45 = &stru_286755D18;
  }

  v64 = v45;
  v120[0] = @"UI_Event_Client_Identifier";
  v120[1] = @"UI_Event_Type";
  v121[0] = clientIdentifier2;
  v121[1] = v77;
  v120[2] = @"UI_Event_Count";
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v121[2] = v74;
  v120[3] = @"UI_Event_MiLo_Available";
  v73 = [MEMORY[0x277CCABB0] numberWithBool:canUse];
  v121[3] = v73;
  v120[4] = @"UI_Event_MiLo_Confidence";
  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:isPredictionValid];
  v121[4] = v71;
  v120[5] = @"UI_Event_Milo_Confidence_Reason";
  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:isMotionDetected];
  v121[5] = v69;
  v120[6] = @"UI_Event_Milo_N_LSL_Items";
  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v66];
  v121[6] = v67;
  v120[7] = @"UI_Event_Milo_Quality";
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:isMapValid];
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
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
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