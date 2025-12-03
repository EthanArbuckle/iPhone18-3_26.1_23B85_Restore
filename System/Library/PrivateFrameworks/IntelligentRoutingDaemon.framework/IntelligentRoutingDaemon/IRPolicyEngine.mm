@interface IRPolicyEngine
- (BOOL)shouldAskForLowLatencyMiLo:(id)lo historyEventsContainer:(id)container;
- (BOOL)shouldRejectEvent:(id)event withHistoryEventsContainer:(id)container withSystemState:(id)state forCandidate:(id)candidate date:(id)date;
- (BOOL)updateBundlesWithSignificantInteractionForEvent:(id)event candidatesContainer:(id)container historyEventsContainer:(id)eventsContainer;
- (BOOL)updateContextWithDate:(id)date candidatesContainer:(id)container historyEventsContainer:(id)eventsContainer systemState:(id)state miloProviderLslPredictionResults:(id)results nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection;
- (IRPolicyEngine)initWithServicePackage:(int64_t)package;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (id)_lastEventsStringFromHistoryContainer:(id)container candidatesContainer:(id)candidatesContainer miloResults:(id)results;
@end

@implementation IRPolicyEngine

- (NSDictionary)contexts
{
  servicePackageAdapter = [(IRPolicyEngine *)self servicePackageAdapter];
  contexts = [servicePackageAdapter contexts];

  return contexts;
}

- (IRPolicyEngine)initWithServicePackage:(int64_t)package
{
  v9.receiver = self;
  v9.super_class = IRPolicyEngine;
  v4 = [(IRPolicyEngine *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(IRPolicyEngine *)v4 setServicePackage:package];
    v6 = IRCreateServicePackageAdapter(package);
    [(IRPolicyEngine *)v5 setServicePackageAdapter:v6];

    v7 = objc_opt_new();
    [(IRPolicyEngine *)v5 setBundlesWithSignificantInteraction:v7];
  }

  return v5;
}

- (BOOL)updateBundlesWithSignificantInteractionForEvent:(id)event candidatesContainer:(id)container historyEventsContainer:(id)eventsContainer
{
  eventCopy = event;
  containerCopy = container;
  eventsContainerCopy = eventsContainer;
  if (eventCopy && (-[IRPolicyEngine servicePackageAdapter](self, "servicePackageAdapter"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 shouldConsiderEventForSignificantBundles:eventCopy], v11, !v12))
  {
    v17 = 0;
  }

  else
  {
    servicePackageAdapter = [(IRPolicyEngine *)self servicePackageAdapter];
    v14 = [servicePackageAdapter getSignificantBundlesWithCandidates:containerCopy fromHistory:eventsContainerCopy];

    bundlesWithSignificantInteraction = [(IRPolicyEngine *)self bundlesWithSignificantInteraction];
    v16 = [bundlesWithSignificantInteraction isEqual:v14];

    if ((v16 & 1) == 0)
    {
      [(IRPolicyEngine *)self setBundlesWithSignificantInteraction:v14];
    }

    v17 = v16 ^ 1;
  }

  return v17;
}

- (BOOL)updateContextWithDate:(id)date candidatesContainer:(id)container historyEventsContainer:(id)eventsContainer systemState:(id)state miloProviderLslPredictionResults:(id)results nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection
{
  deviceContainerCopy = deviceContainer;
  resultsCopy = results;
  stateCopy = state;
  eventsContainerCopy = eventsContainer;
  containerCopy = container;
  dateCopy = date;
  servicePackageAdapter = [(IRPolicyEngine *)self servicePackageAdapter];
  v22 = [servicePackageAdapter filterHistory:eventsContainerCopy withCandidatesContainer:containerCopy];

  v23 = [(IRPolicyEngine *)self _lastEventsStringFromHistoryContainer:v22 candidatesContainer:containerCopy miloResults:resultsCopy];
  [(IRPolicyEngine *)self setLastEventsString:v23];

  servicePackageAdapter2 = [(IRPolicyEngine *)self servicePackageAdapter];
  v25 = [servicePackageAdapter2 generateClassificationsWithCandiatesContainer:containerCopy systemState:stateCopy historyEventsContainer:v22 miloPrediction:resultsCopy nearbyDeviceContainer:deviceContainerCopy fillInspection:inspection date:dateCopy];

  return v25;
}

- (BOOL)shouldRejectEvent:(id)event withHistoryEventsContainer:(id)container withSystemState:(id)state forCandidate:(id)candidate date:(id)date
{
  dateCopy = date;
  candidateCopy = candidate;
  stateCopy = state;
  containerCopy = container;
  eventCopy = event;
  servicePackageAdapter = [(IRPolicyEngine *)self servicePackageAdapter];
  v18 = [servicePackageAdapter shouldRejectEvent:eventCopy withHistoryEventsContainer:containerCopy withSystemState:stateCopy forCandidate:candidateCopy date:dateCopy];

  return v18;
}

- (NSDictionary)policyInspections
{
  servicePackageAdapter = [(IRPolicyEngine *)self servicePackageAdapter];
  policyInspections = [servicePackageAdapter policyInspections];

  return policyInspections;
}

- (BOOL)shouldAskForLowLatencyMiLo:(id)lo historyEventsContainer:(id)container
{
  containerCopy = container;
  loCopy = lo;
  servicePackageAdapter = [(IRPolicyEngine *)self servicePackageAdapter];
  historyEvents = [containerCopy historyEvents];

  LOBYTE(containerCopy) = [servicePackageAdapter shouldAskForLowLatencyMiLo:loCopy historyEventsAsc:historyEvents];
  return containerCopy;
}

- (id)_lastEventsStringFromHistoryContainer:(id)container candidatesContainer:(id)candidatesContainer miloResults:(id)results
{
  containerCopy = container;
  candidatesContainerCopy = candidatesContainer;
  resultsCopy = results;
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v12 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v12 setNumberStyle:1];
  [v12 setMaximumFractionDigits:2];
  array = [MEMORY[0x277CBEB18] array];
  historyEvents = [containerCopy historyEvents];
  if ([historyEvents count] < 0xF)
  {
    v16 = 0;
  }

  else
  {
    historyEvents2 = [containerCopy historyEvents];
    v16 = [historyEvents2 count] - 15;
  }

  historyEvents3 = [containerCopy historyEvents];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __88__IRPolicyEngine__lastEventsStringFromHistoryContainer_candidatesContainer_miloResults___block_invoke;
  v30 = &unk_2797E1F98;
  v36 = array;
  v37 = v16;
  v31 = v11;
  v32 = v12;
  v33 = resultsCopy;
  selfCopy = self;
  v35 = candidatesContainerCopy;
  v18 = array;
  v19 = candidatesContainerCopy;
  v20 = resultsCopy;
  v21 = v12;
  v22 = v11;
  [historyEvents3 enumerateObjectsWithOptions:2 usingBlock:&v27];

  v23 = [MEMORY[0x277CF0C00] builderWithObject:0];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last %@ events", &unk_2867690A0, v27, v28, v29, v30];
  [v23 appendArraySection:v18 withName:v24 multilinePrefix:0 skipIfEmpty:0];

  build = [v23 build];

  return build;
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