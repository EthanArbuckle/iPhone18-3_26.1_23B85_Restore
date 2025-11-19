@interface IRPolicyEngine
- (BOOL)shouldAskForLowLatencyMiLo:(id)a3 historyEventsContainer:(id)a4;
- (BOOL)shouldRejectEvent:(id)a3 withHistoryEventsContainer:(id)a4 withSystemState:(id)a5 forCandidate:(id)a6 date:(id)a7;
- (BOOL)updateBundlesWithSignificantInteractionForEvent:(id)a3 candidatesContainer:(id)a4 historyEventsContainer:(id)a5;
- (BOOL)updateContextWithDate:(id)a3 candidatesContainer:(id)a4 historyEventsContainer:(id)a5 systemState:(id)a6 miloProviderLslPredictionResults:(id)a7 nearbyDeviceContainer:(id)a8 fillInspection:(BOOL)a9;
- (IRPolicyEngine)initWithServicePackage:(int64_t)a3;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (id)_lastEventsStringFromHistoryContainer:(id)a3 candidatesContainer:(id)a4 miloResults:(id)a5;
@end

@implementation IRPolicyEngine

- (NSDictionary)contexts
{
  v2 = [(IRPolicyEngine *)self servicePackageAdapter];
  v3 = [v2 contexts];

  return v3;
}

- (IRPolicyEngine)initWithServicePackage:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = IRPolicyEngine;
  v4 = [(IRPolicyEngine *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(IRPolicyEngine *)v4 setServicePackage:a3];
    v6 = IRCreateServicePackageAdapter(a3);
    [(IRPolicyEngine *)v5 setServicePackageAdapter:v6];

    v7 = objc_opt_new();
    [(IRPolicyEngine *)v5 setBundlesWithSignificantInteraction:v7];
  }

  return v5;
}

- (BOOL)updateBundlesWithSignificantInteractionForEvent:(id)a3 candidatesContainer:(id)a4 historyEventsContainer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && (-[IRPolicyEngine servicePackageAdapter](self, "servicePackageAdapter"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 shouldConsiderEventForSignificantBundles:v8], v11, !v12))
  {
    v17 = 0;
  }

  else
  {
    v13 = [(IRPolicyEngine *)self servicePackageAdapter];
    v14 = [v13 getSignificantBundlesWithCandidates:v9 fromHistory:v10];

    v15 = [(IRPolicyEngine *)self bundlesWithSignificantInteraction];
    v16 = [v15 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      [(IRPolicyEngine *)self setBundlesWithSignificantInteraction:v14];
    }

    v17 = v16 ^ 1;
  }

  return v17;
}

- (BOOL)updateContextWithDate:(id)a3 candidatesContainer:(id)a4 historyEventsContainer:(id)a5 systemState:(id)a6 miloProviderLslPredictionResults:(id)a7 nearbyDeviceContainer:(id)a8 fillInspection:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(IRPolicyEngine *)self servicePackageAdapter];
  v22 = [v21 filterHistory:v18 withCandidatesContainer:v19];

  v23 = [(IRPolicyEngine *)self _lastEventsStringFromHistoryContainer:v22 candidatesContainer:v19 miloResults:v16];
  [(IRPolicyEngine *)self setLastEventsString:v23];

  v24 = [(IRPolicyEngine *)self servicePackageAdapter];
  v25 = [v24 generateClassificationsWithCandiatesContainer:v19 systemState:v17 historyEventsContainer:v22 miloPrediction:v16 nearbyDeviceContainer:v15 fillInspection:a9 date:v20];

  return v25;
}

- (BOOL)shouldRejectEvent:(id)a3 withHistoryEventsContainer:(id)a4 withSystemState:(id)a5 forCandidate:(id)a6 date:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(IRPolicyEngine *)self servicePackageAdapter];
  v18 = [v17 shouldRejectEvent:v16 withHistoryEventsContainer:v15 withSystemState:v14 forCandidate:v13 date:v12];

  return v18;
}

- (NSDictionary)policyInspections
{
  v2 = [(IRPolicyEngine *)self servicePackageAdapter];
  v3 = [v2 policyInspections];

  return v3;
}

- (BOOL)shouldAskForLowLatencyMiLo:(id)a3 historyEventsContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IRPolicyEngine *)self servicePackageAdapter];
  v9 = [v6 historyEvents];

  LOBYTE(v6) = [v8 shouldAskForLowLatencyMiLo:v7 historyEventsAsc:v9];
  return v6;
}

- (id)_lastEventsStringFromHistoryContainer:(id)a3 candidatesContainer:(id)a4 miloResults:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v12 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v12 setNumberStyle:1];
  [v12 setMaximumFractionDigits:2];
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [v8 historyEvents];
  if ([v14 count] < 0xF)
  {
    v16 = 0;
  }

  else
  {
    v15 = [v8 historyEvents];
    v16 = [v15 count] - 15;
  }

  v17 = [v8 historyEvents];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __88__IRPolicyEngine__lastEventsStringFromHistoryContainer_candidatesContainer_miloResults___block_invoke;
  v30 = &unk_2797E1F98;
  v36 = v13;
  v37 = v16;
  v31 = v11;
  v32 = v12;
  v33 = v10;
  v34 = self;
  v35 = v9;
  v18 = v13;
  v19 = v9;
  v20 = v10;
  v21 = v12;
  v22 = v11;
  [v17 enumerateObjectsWithOptions:2 usingBlock:&v27];

  v23 = [MEMORY[0x277CF0C00] builderWithObject:0];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last %@ events", &unk_2867690A0, v27, v28, v29, v30];
  [v23 appendArraySection:v18 withName:v24 multilinePrefix:0 skipIfEmpty:0];

  v25 = [v23 build];

  return v25;
}

void __88__IRPolicyEngine__lastEventsStringFromHistoryContainer_candidatesContainer_miloResults___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v31 = a2;
  if (*(a1 + 80) >= a3)
  {
    *a4 = 1;
  }

  v7 = *(a1 + 32);
  v8 = MEMORY[0x277CBEBB0];
  v9 = [v31 systemState];
  v10 = [v8 timeZoneForSecondsFromGMT:{objc_msgSend(v9, "timeZoneSeconds")}];
  [v7 setTimeZone:v10];

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [v31 miloPredictionEvent];
  v14 = [v12 scoreForPredictionEventEvent:v13];
  v30 = [v11 stringFromNumber:v14];

  v15 = MEMORY[0x277CCACA8];
  v16 = *(a1 + 32);
  v29 = [v31 date];
  v17 = [v16 stringFromDate:?];
  v18 = [*(a1 + 56) servicePackage];
  v28 = [v31 event];
  [v28 eventType];
  if (v18)
  {
    IRAppleTVControlEventTypeToString();
  }

  else
  {
    IRMediaEventTypeToString();
  }
  v19 = ;
  v20 = [v31 event];
  v21 = [v20 bundleID];
  v22 = [v31 candidateIdentifier];
  v23 = *(a1 + 64);
  v24 = [v31 candidateIdentifier];
  v25 = [v23 candidateNameForCandidateIdentifier:v24];
  [v15 stringWithFormat:@"date: %@, event: %@, appInFocus: %@, candidateIdentifier: %@, candidateName: %@, miloScore: %@", v17, v19, v21, v22, v25, v30];
  v27 = v26 = v17;

  [*(a1 + 72) addObject:v27];
}

@end