@interface IRPolicyManager
- (IRPolicyManager)initWithService:(id)service queue:(id)queue delegate:(id)delegate avOutputDeviceProvider:(id)provider biomeProvider:(id)biomeProvider miloProvider:(id)miloProvider rapportProvider:(id)rapportProvider proximityProvider:(id)self0 serviceStore:(id)self1 displayMonitor:(id)self2 audioAVOutputContextController:(id)self3 isLowLatencyMiLo:(BOOL)self4;
- (IRPolicyManagerDelegate)delegate;
- (id)_createContextOverrdiesForBundleIDIfNeeded:(id)needed;
- (id)getStatistics;
- (id)requestCurrentContextWithBundleID:(id)d;
- (void)_checkAndStartLowLatencyMiLoIfNeededWithForce:(BOOL)force historyEventsContainer:(id)container;
- (void)_checkAndUpdateBundlesForEventIfNeeded:(id)needed;
- (void)_sendSessionAnalyticsEvent:(id)event forCandidate:(id)candidate;
- (void)addEvent:(id)event forCandidate:(id)candidate;
- (void)clearStatistics;
- (void)dealloc;
- (void)deallocSync;
- (void)deleteCandidate:(id)candidate;
- (void)didSpotOnLocationComplete:(id)complete;
- (void)didUpdateContextWithReason:(id)reason andOverrides:(id)overrides;
- (void)run;
- (void)setSpotOnLocationWithParameters:(id)parameters andClientID:(id)d;
- (void)setUpdateMode:(int64_t)mode;
- (void)synchronizeAndFetchFromDBOnDisk;
- (void)updateCandidates:(id)candidates;
@end

@implementation IRPolicyManager

- (void)run
{
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(IRPolicyManager *)self didUpdateContextWithReason:@"Run" andOverrides:0];
}

- (IRPolicyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IRPolicyManager)initWithService:(id)service queue:(id)queue delegate:(id)delegate avOutputDeviceProvider:(id)provider biomeProvider:(id)biomeProvider miloProvider:(id)miloProvider rapportProvider:(id)rapportProvider proximityProvider:(id)self0 serviceStore:(id)self1 displayMonitor:(id)self2 audioAVOutputContextController:(id)self3 isLowLatencyMiLo:(BOOL)self4
{
  serviceCopy = service;
  queueCopy = queue;
  delegateCopy = delegate;
  providerCopy = provider;
  biomeProviderCopy = biomeProvider;
  miloProviderCopy = miloProvider;
  rapportProviderCopy = rapportProvider;
  proximityProviderCopy = proximityProvider;
  storeCopy = store;
  v25 = miloProviderCopy;
  v26 = queueCopy;
  monitorCopy = monitor;
  controllerCopy = controller;
  dispatch_assert_queue_V2(v26);
  v62.receiver = self;
  v62.super_class = IRPolicyManager;
  v29 = [(IRPolicyManager *)&v62 init];
  v30 = v29;
  if (v29)
  {
    v56 = v26;
    [(IRPolicyManager *)v29 setQueue:v26];
    v58 = delegateCopy;
    [(IRPolicyManager *)v30 setDelegate:delegateCopy];
    [(IRPolicyManager *)v30 setService:serviceCopy];
    v31 = -[IRPolicyEngine initWithServicePackage:]([IRPolicyEngine alloc], "initWithServicePackage:", [serviceCopy servicePackage]);
    [(IRPolicyManager *)v30 setPolicyEngine:v31];

    v32 = [[IRReplayWriter alloc] initWithServiceStore:storeCopy];
    [(IRPolicyManager *)v30 setReplayWriter:v32];

    v33 = [IRCandidateManager alloc];
    queue = [(IRPolicyManager *)v30 queue];
    v35 = [(IRCandidateManager *)v33 initWithQueue:queue contextObserver:v30 avOutputDeviceProvider:providerCopy rapportDeviceProvider:rapportProviderCopy store:storeCopy];
    [(IRPolicyManager *)v30 setCandidateManager:v35];

    v36 = [[IRStatisticsManager alloc] initWithStore:storeCopy];
    [(IRPolicyManager *)v30 setStatisticsManager:v36];

    [(IRPolicyManager *)v30 setIsLowLatencyMiLo:lo];
    v37 = [[IRHistoryManager alloc] initWithStore:storeCopy miloFeedback:v25];
    [(IRPolicyManager *)v30 setHistoryManager:v37];

    v38 = [IRSystemStateManager alloc];
    queue2 = [(IRPolicyManager *)v30 queue];
    LOBYTE(v51) = [(IRPolicyManager *)v30 isLowLatencyMiLo];
    v55 = controllerCopy;
    v40 = [(IRSystemStateManager *)v38 initWithQueue:queue2 contextObserver:v30 biomeProvider:biomeProviderCopy miloProvider:v25 proximityProvider:proximityProviderCopy serviceStore:storeCopy displayMonitor:monitorCopy audioAVOutputContextController:controllerCopy isLowLatencyMiLo:v51];
    [(IRPolicyManager *)v30 setSystemStateManager:v40];

    v41 = [MEMORY[0x277CBEB58] set];
    [(IRPolicyManager *)v30 setSpotOnPendingClientIDs:v41];

    queue3 = +[IRPreferences shared];
    coreAnalyticsSessionEnable = [queue3 coreAnalyticsSessionEnable];
    if (![coreAnalyticsSessionEnable BOOLValue])
    {
LABEL_7:

      delegateCopy = v58;
      v26 = v56;
      controllerCopy = v55;
      goto LABEL_8;
    }

    v53 = monitorCopy;
    v54 = v25;
    service = [(IRPolicyManager *)v30 service];
    clientIdentifier = [service clientIdentifier];
    if ([clientIdentifier containsString:@"com.apple.mediaremoted"])
    {

      monitorCopy = v53;
LABEL_6:
      v48 = [IRSessionAnalytics alloc];
      queue3 = [(IRPolicyManager *)v30 queue];
      coreAnalyticsSessionEnable = [(IRPolicyManager *)v30 service];
      v49 = [(IRSessionAnalytics *)v48 initWithQueue:queue3 service:coreAnalyticsSessionEnable];
      [(IRPolicyManager *)v30 setSessionAnalytics:v49];

      goto LABEL_7;
    }

    service2 = [(IRPolicyManager *)v30 service];
    clientIdentifier2 = [service2 clientIdentifier];
    v52 = [clientIdentifier2 isEqual:@"com.apple.intelligentroutingclient.Media"];

    delegateCopy = v58;
    monitorCopy = v53;
    v25 = v54;
    v26 = v56;
    controllerCopy = v55;
    if (v52)
    {
      goto LABEL_6;
    }
  }

LABEL_8:

  return v30;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IRPolicyManager;
  [(IRPolicyManager *)&v2 dealloc];
}

- (void)deallocSync
{
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  candidateManager = [(IRPolicyManager *)self candidateManager];
  [candidateManager deallocSync];

  systemStateManager = [(IRPolicyManager *)self systemStateManager];
  [systemStateManager deallocSync];

  replayWriter = [(IRPolicyManager *)self replayWriter];
  [replayWriter deallocSync];
}

- (id)requestCurrentContextWithBundleID:(id)d
{
  dCopy = d;
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(IRPolicyManager *)self _createContextOverrdiesForBundleIDIfNeeded:dCopy];

  [(IRPolicyManager *)self didUpdateContextWithReason:@"Request current context" andOverrides:v6];
  policyEngine = [(IRPolicyManager *)self policyEngine];
  contexts = [policyEngine contexts];

  return contexts;
}

- (void)updateCandidates:(id)candidates
{
  candidatesCopy = candidates;
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  candidateManager = [(IRPolicyManager *)self candidateManager];
  historyManager = [(IRPolicyManager *)self historyManager];
  historyEventsContainer = [historyManager historyEventsContainer];
  [candidateManager updateCandidates:candidatesCopy withHistoryEventsContainer:historyEventsContainer];

  historyManager2 = [(IRPolicyManager *)self historyManager];
  historyEventsContainer2 = [historyManager2 historyEventsContainer];
  [(IRPolicyManager *)self _checkAndStartLowLatencyMiLoIfNeededWithForce:0 historyEventsContainer:historyEventsContainer2];
}

- (void)deleteCandidate:(id)candidate
{
  candidateCopy = candidate;
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  candidateManager = [(IRPolicyManager *)self candidateManager];
  [candidateManager deleteCandidate:candidateCopy];
}

- (void)addEvent:(id)event forCandidate:(id)candidate
{
  v74 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  candidateCopy = candidate;
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  date = [MEMORY[0x277CBEAA8] date];
  candidateIdentifier = [candidateCopy candidateIdentifier];
  [(IRPolicyManager *)self _sendSessionAnalyticsEvent:eventCopy forCandidate:candidateCopy];
  policyEngine = [(IRPolicyManager *)self policyEngine];
  historyManager = [(IRPolicyManager *)self historyManager];
  historyEventsContainer = [historyManager historyEventsContainer];
  systemStateManager = [(IRPolicyManager *)self systemStateManager];
  systemState = [systemStateManager systemState];
  v60 = date;
  LODWORD(date) = [policyEngine shouldRejectEvent:eventCopy withHistoryEventsContainer:historyEventsContainer withSystemState:systemState forCandidate:candidateCopy date:date];

  if (date)
  {
    v16 = candidateIdentifier;
    v17 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v18 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v19 = MEMORY[0x277CCABB0];
      v20 = v18;
      v21 = [v19 numberWithLongLong:{objc_msgSend(eventCopy, "eventType")}];
      v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(eventCopy, "eventSubType")}];
      v23 = MEMORY[0x277CCABB0];
      systemStateManager2 = [(IRPolicyManager *)self systemStateManager];
      systemState2 = [systemStateManager2 systemState];
      v26 = [v23 numberWithBool:{objc_msgSend(systemState2, "displayOn")}];
      *buf = 136316418;
      v63 = "#policy-manager, ";
      v64 = 2112;
      v65 = v17;
      v66 = 2112;
      v67 = v21;
      v68 = 2112;
      v69 = v22;
      v70 = 2112;
      v71 = v16;
      v72 = 2112;
      v73 = v26;
      _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_INFO, "%s[%@], Event rejected, type: %@, subtype: %@, for candidateIdentifier: %@, displayOn: %@", buf, 0x3Eu);
    }
  }

  else
  {
    candidateManager = [(IRPolicyManager *)self candidateManager];
    candidatesContainer = [candidateManager candidatesContainer];
    v29 = [candidatesContainer candidateForCandidateIdentifier:candidateIdentifier];

    v30 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v31 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = [IRLogQEUtility getEventAsString:eventCopy];
      v34 = [IRLogQEUtility getCandidateAsString:v29];
      *buf = 136315906;
      v63 = "#policy-manager, ";
      v64 = 2112;
      v65 = v30;
      v66 = 2112;
      v67 = v33;
      v68 = 2112;
      v69 = v34;
      _os_log_impl(&dword_25543D000, v32, OS_LOG_TYPE_DEFAULT, "%s[%@], Adding event:\n %@\n for candidate:\n %@", buf, 0x2Au);
    }

    candidateManager2 = [(IRPolicyManager *)self candidateManager];
    v16 = candidateIdentifier;
    [candidateManager2 notifyAddEventForCandidateIdentifier:candidateIdentifier];

    systemStateManager3 = [(IRPolicyManager *)self systemStateManager];
    systemState3 = [systemStateManager3 systemState];
    v58 = [IRHistoryEventDO historyEventDOWithDate:v60 candidateIdentifier:candidateIdentifier event:eventCopy miloPredictionEvent:0 systemState:systemState3 sharingPolicy:0];

    v61 = v58;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    v57 = [IRHistoryEventsContainerDO historyEventsContainerDOWithHistoryEvents:v38];

    [(IRPolicyManager *)self _checkAndStartLowLatencyMiLoIfNeededWithForce:0 historyEventsContainer:v57];
    historyManager2 = [(IRPolicyManager *)self historyManager];
    systemStateManager4 = [(IRPolicyManager *)self systemStateManager];
    [systemStateManager4 systemState];
    v41 = v59 = v29;
    systemStateManager5 = [(IRPolicyManager *)self systemStateManager];
    miloProviderLslPredictionResults = [systemStateManager5 miloProviderLslPredictionResults];
    [historyManager2 addEvent:eventCopy forCandidateIdentifier:candidateIdentifier withSystemState:v41 andMiloPrediction:miloProviderLslPredictionResults];

    [(IRPolicyManager *)self _checkAndUpdateBundlesForEventIfNeeded:eventCopy];
    policyEngine2 = [(IRPolicyManager *)self policyEngine];
    policyInspections = [policyEngine2 policyInspections];

    systemStateManager6 = [(IRPolicyManager *)self systemStateManager];
    [systemStateManager6 addEvent:eventCopy forCandidate:v59];

    service = [(IRPolicyManager *)self service];
    systemStateManager7 = [(IRPolicyManager *)self systemStateManager];
    candidateManager3 = [(IRPolicyManager *)self candidateManager];
    candidatesContainer2 = [candidateManager3 candidatesContainer];
    [(IRPolicyManager *)self statisticsManager];
    v50 = v49 = eventCopy;
    historyManager3 = [(IRPolicyManager *)self historyManager];
    historyEventsContainer2 = [historyManager3 historyEventsContainer];
    [IRAnalyticsManager logUiEvent:v49 withService:service forCandidateIdentifier:v16 systemStateManager:systemStateManager7 candidatesContainer:candidatesContainer2 inspections:policyInspections statisticsManager:v50 historyEventsContainer:historyEventsContainer2];

    eventCopy = v49;
    candidateCopy = v59;
    statisticsManager = [(IRPolicyManager *)self statisticsManager];
    [statisticsManager event:v49 forCandidate:v59 inspections:policyInspections date:v60];

    v17 = v58;
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)setSpotOnLocationWithParameters:(id)parameters andClientID:(id)d
{
  v48 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  dCopy = d;
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = MEMORY[0x277D21308];
  v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v11 = MEMORY[0x277D21260];
  v12 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = v12;
    v15 = [v13 numberWithBool:{objc_msgSend(parametersCopy, "resetAllBrokerDiscoveredCandidates")}];
    *buf = 136315906;
    v41 = "#policy-manager, ";
    v42 = 2112;
    v43 = v10;
    v44 = 2112;
    v45 = dCopy;
    v46 = 2112;
    v47 = v15;
    _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_INFO, "%s[%@], Set Spot On for clientId: %@, shouldResetBrokeredDevices: %@", buf, 0x2Au);
  }

  if ([parametersCopy resetAllBrokerDiscoveredCandidates])
  {
    candidateManager = [(IRPolicyManager *)self candidateManager];
    [candidateManager deleteBrokerCandidates];
  }

  spotOnPendingClientIDs = [(IRPolicyManager *)self spotOnPendingClientIDs];
  [spotOnPendingClientIDs addObject:dCopy];

  spotOnPendingClientIDs2 = [(IRPolicyManager *)self spotOnPendingClientIDs];
  v19 = [spotOnPendingClientIDs2 count] > 1;

  if (v19)
  {
    v20 = dispatch_get_specific(*v9);
    v21 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      spotOnPendingClientIDs3 = [(IRPolicyManager *)self spotOnPendingClientIDs];
      *buf = 136315906;
      v41 = "#policy-manager, ";
      v42 = 2112;
      v43 = v20;
      v44 = 2112;
      v45 = dCopy;
      v46 = 2112;
      v47 = spotOnPendingClientIDs3;
      _os_log_impl(&dword_25543D000, v22, OS_LOG_TYPE_INFO, "%s[%@], Set Spot On for clientId: %@, there is already a pending request for: %@", buf, 0x2Au);
    }
  }

  else
  {
    spotOnTimeout = [(IRPolicyManager *)self spotOnTimeout];

    if (spotOnTimeout)
    {
      v25 = dispatch_get_specific(*v9);
      v26 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "#policy-manager, ";
        v42 = 2112;
        v43 = v25;
        _os_log_impl(&dword_25543D000, v26, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - spot on timer conflict] Spot on timer retriggered while is still ongoing", buf, 0x16u);
      }
    }

    objc_initWeak(buf, self);
    v27 = [IRTimer alloc];
    v28 = +[IRPreferences shared];
    miloTimeoutForSetSpotOnRequestSeconds = [v28 miloTimeoutForSetSpotOnRequestSeconds];
    integerValue = [miloTimeoutForSetSpotOnRequestSeconds integerValue];
    queue2 = [(IRPolicyManager *)self queue];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __63__IRPolicyManager_setSpotOnLocationWithParameters_andClientID___block_invoke;
    v38[3] = &unk_2797E0C18;
    objc_copyWeak(&v39, buf);
    v32 = [(IRTimer *)v27 initWithInterval:0 repeats:queue2 queue:v38 block:integerValue];
    [(IRPolicyManager *)self setSpotOnTimeout:v32];

    historyManager = [(IRPolicyManager *)self historyManager];
    historyEventsContainer = [historyManager historyEventsContainer];
    [(IRPolicyManager *)self _checkAndStartLowLatencyMiLoIfNeededWithForce:1 historyEventsContainer:historyEventsContainer];

    systemStateManager = [(IRPolicyManager *)self systemStateManager];
    miloProvider = [systemStateManager miloProvider];
    [miloProvider setSpotOnLocation];

    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __63__IRPolicyManager_setSpotOnLocationWithParameters_andClientID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v3 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "#policy-manager, ";
      v15 = 2112;
      v16 = v2;
      _os_log_impl(&dword_25543D000, v3, OS_LOG_TYPE_INFO, "%s[%@], spot on milo request timeout, returning error", buf, 0x16u);
    }

    v4 = [WeakRetained systemStateManager];
    v5 = [v4 miloProvider];
    [v5 resetSpotOnLocationRequest];

    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D21258];
    v11 = *MEMORY[0x277CCA470];
    v12 = @"timeout";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [v6 errorWithDomain:v7 code:-12898 userInfo:v8];
    [WeakRetained didSpotOnLocationComplete:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeAndFetchFromDBOnDisk
{
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  candidateManager = [(IRPolicyManager *)self candidateManager];
  [candidateManager synchronizeAndFetchFromDBOnDisk];

  historyManager = [(IRPolicyManager *)self historyManager];
  [historyManager synchronizeAndFetchFromDBOnDisk];

  [(IRPolicyManager *)self _checkAndUpdateBundlesForEventIfNeeded:0];
}

- (void)setUpdateMode:(int64_t)mode
{
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(IRPolicyManager *)self setMode:mode];
}

- (id)getStatistics
{
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  statisticsManager = [(IRPolicyManager *)self statisticsManager];
  statistics = [statisticsManager statistics];

  return statistics;
}

- (void)clearStatistics
{
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  statisticsManager = [(IRPolicyManager *)self statisticsManager];
  date = [MEMORY[0x277CBEAA8] date];
  [statisticsManager clearStatistics:date];
}

- (void)_checkAndStartLowLatencyMiLoIfNeededWithForce:(BOOL)force historyEventsContainer:(id)container
{
  v24 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  if (![(IRPolicyManager *)self isLowLatencyMiLo])
  {
    if (force)
    {
      goto LABEL_4;
    }

    policyEngine = [(IRPolicyManager *)self policyEngine];
    candidateManager = [(IRPolicyManager *)self candidateManager];
    candidatesContainer = [candidateManager candidatesContainer];
    v10 = [policyEngine shouldAskForLowLatencyMiLo:candidatesContainer historyEventsContainer:containerCopy];

    if (v10)
    {
LABEL_4:
      systemStateManager = [(IRPolicyManager *)self systemStateManager];
      -[IRPolicyManager setIsLowLatencyMiLo:](self, "setIsLowLatencyMiLo:", [systemStateManager startLowLatencyMiLo]);

      v12 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v13 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        isLowLatencyMiLo = [(IRPolicyManager *)self isLowLatencyMiLo];
        v16 = @"No";
        v19 = "#policy-manager, ";
        v18 = 136315650;
        v20 = 2112;
        v21 = v12;
        if (isLowLatencyMiLo)
        {
          v16 = @"Yes";
        }

        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_INFO, "%s[%@], Low Latency MiLo started: %@", &v18, 0x20u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_createContextOverrdiesForBundleIDIfNeeded:(id)needed
{
  if (needed)
  {
    neededCopy = needed;
    v4 = [[IRContextRequestOverrides alloc] initWithOverrideAppInFocusWindow:1 overrideBundleId:neededCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_checkAndUpdateBundlesForEventIfNeeded:(id)needed
{
  v30 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if (!neededCopy)
  {
    goto LABEL_3;
  }

  policyEngine = [(IRPolicyManager *)self policyEngine];
  bundlesWithSignificantInteraction = [policyEngine bundlesWithSignificantInteraction];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__IRPolicyManager__checkAndUpdateBundlesForEventIfNeeded___block_invoke;
  v22[3] = &unk_2797E2080;
  v23 = neededCopy;
  v7 = [bundlesWithSignificantInteraction containsObjectPassingTest:v22];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    policyEngine2 = [(IRPolicyManager *)self policyEngine];
    candidateManager = [(IRPolicyManager *)self candidateManager];
    candidatesContainer = [candidateManager candidatesContainer];
    historyManager = [(IRPolicyManager *)self historyManager];
    historyEventsContainer = [historyManager historyEventsContainer];
    v13 = [policyEngine2 updateBundlesWithSignificantInteractionForEvent:neededCopy candidatesContainer:candidatesContainer historyEventsContainer:historyEventsContainer];

    v14 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v15 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      *buf = 136315650;
      v25 = "#policy-manager, ";
      v26 = 2112;
      v27 = v14;
      if (v13)
      {
        v16 = @"YES";
      }

      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_25543D000, v15, OS_LOG_TYPE_INFO, "%s[%@], _checkAndUpdateBundlesForEventIfNeeded bundlesUpdated: %@", buf, 0x20u);
    }

    v17 = v13 ^ 1;
    if (!neededCopy)
    {
      v17 = 0;
    }

    if ((v17 & 1) == 0)
    {
      delegate = [(IRPolicyManager *)self delegate];
      policyEngine3 = [(IRPolicyManager *)self policyEngine];
      bundlesWithSignificantInteraction2 = [policyEngine3 bundlesWithSignificantInteraction];
      [delegate policyManager:self didUpdateBundlesWithSignificantInteractionPattern:bundlesWithSignificantInteraction2];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

BOOL __58__IRPolicyManager__checkAndUpdateBundlesForEventIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) bundleID];
  v5 = v3 == v4;

  return v5;
}

- (void)_sendSessionAnalyticsEvent:(id)event forCandidate:(id)candidate
{
  candidateCopy = candidate;
  eventCopy = event;
  if ([candidateCopy isMediaRemoteLocal])
  {
    v16 = +[IRCandidateDO mediaRemoteSpeakerCandidate];
  }

  else
  {
    candidateManager = [(IRPolicyManager *)self candidateManager];
    candidatesContainer = [candidateManager candidatesContainer];
    candidateIdentifier = [candidateCopy candidateIdentifier];
    v16 = [candidatesContainer candidateForCandidateIdentifier:candidateIdentifier];

    candidateCopy = candidateManager;
  }

  sessionAnalytics = [(IRPolicyManager *)self sessionAnalytics];
  systemStateManager = [(IRPolicyManager *)self systemStateManager];
  miloProviderLslPredictionResults = [systemStateManager miloProviderLslPredictionResults];
  systemStateManager2 = [(IRPolicyManager *)self systemStateManager];
  systemState = [systemStateManager2 systemState];
  [sessionAnalytics event:eventCopy forCandidate:v16 miloPrediction:miloProviderLslPredictionResults systemState:systemState];
}

- (void)didUpdateContextWithReason:(id)reason andOverrides:(id)overrides
{
  v69 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  overridesCopy = overrides;
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [MEMORY[0x277CBEAA8] now];
  systemStateManager = [(IRPolicyManager *)self systemStateManager];
  systemState = [systemStateManager systemState];
  v60 = [systemState overrideSystemStateIfNeeded:overridesCopy];

  statisticsManager = [(IRPolicyManager *)self statisticsManager];
  mode = [(IRPolicyManager *)self mode];
  systemStateManager2 = [(IRPolicyManager *)self systemStateManager];
  miloProviderLslPredictionResults = [systemStateManager2 miloProviderLslPredictionResults];
  [statisticsManager contextChangedWithReason:reasonCopy mode:mode miloPrediction:miloProviderLslPredictionResults date:v9];

  sessionAnalytics = [(IRPolicyManager *)self sessionAnalytics];
  systemStateManager3 = [(IRPolicyManager *)self systemStateManager];
  systemState2 = [systemStateManager3 systemState];
  [sessionAnalytics contextChangedWithReason:reasonCopy systemState:systemState2];

  if (-[IRPolicyManager mode](self, "mode") != 1 && ([reasonCopy isEqual:@"Request current context"] & 1) == 0)
  {
    statisticsManager2 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v54 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v62 = "#policy-manager, ";
      v63 = 2112;
      v64 = statisticsManager2;
      v65 = 2112;
      *v66 = reasonCopy;
      _os_log_impl(&dword_25543D000, v54, OS_LOG_TYPE_INFO, "%s[%@], didUpdateContextWithReason was triggered with reason: %@, but service is not in updates mode", buf, 0x20u);
    }

    goto LABEL_18;
  }

  policyEngine = [(IRPolicyManager *)self policyEngine];
  candidateManager = [(IRPolicyManager *)self candidateManager];
  candidatesContainer = [candidateManager candidatesContainer];
  [(IRPolicyManager *)self historyManager];
  v21 = v59 = reasonCopy;
  [v21 historyEventsContainer];
  v23 = v22 = v9;
  systemStateManager4 = [(IRPolicyManager *)self systemStateManager];
  miloProviderLslPredictionResults2 = [systemStateManager4 miloProviderLslPredictionResults];
  systemStateManager5 = [(IRPolicyManager *)self systemStateManager];
  nearbyDeviceContainer = [systemStateManager5 nearbyDeviceContainer];
  LOBYTE(v56) = 1;
  v58 = [policyEngine updateContextWithDate:v22 candidatesContainer:candidatesContainer historyEventsContainer:v23 systemState:v60 miloProviderLslPredictionResults:miloProviderLslPredictionResults2 nearbyDeviceContainer:nearbyDeviceContainer fillInspection:v56];

  v9 = v22;
  reasonCopy = v59;

  replayWriter = [(IRPolicyManager *)self replayWriter];
  systemStateManager6 = [(IRPolicyManager *)self systemStateManager];
  miloProviderLslPredictionResults3 = [systemStateManager6 miloProviderLslPredictionResults];
  candidateManager2 = [(IRPolicyManager *)self candidateManager];
  candidatesContainer2 = [candidateManager2 candidatesContainer];
  systemStateManager7 = [(IRPolicyManager *)self systemStateManager];
  nearbyDeviceContainer2 = [systemStateManager7 nearbyDeviceContainer];
  [replayWriter writeReplayEventWithReason:v59 SystemState:v60 miloLslPrediction:miloProviderLslPredictionResults3 candidatesContainerDO:candidatesContainer2 nearbyDeviceContainerDO:nearbyDeviceContainer2 date:v9];

  if ((v58 & 1) != 0 || [v59 isEqual:@"Run"])
  {
    v35 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v36 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v37 = v36;
      policyEngine2 = [(IRPolicyManager *)self policyEngine];
      lastEventsString = [policyEngine2 lastEventsString];
      *buf = 136315650;
      v62 = "#policy-manager, ";
      v63 = 2112;
      v64 = v35;
      v65 = 2112;
      *v66 = lastEventsString;
      _os_log_impl(&dword_25543D000, v37, OS_LOG_TYPE_INFO, "%s[%@], %@", buf, 0x20u);
    }

    systemStateManager8 = [(IRPolicyManager *)self systemStateManager];
    [systemStateManager8 logProviderState];
  }

  if ([v59 isEqual:@"Run"])
  {
    v41 = 1;
  }

  else
  {
    v41 = ([v59 isEqual:@"Request current context"] ^ 1) & v58;
  }

  v42 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v43 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v62 = "#policy-manager, ";
    v63 = 2112;
    v64 = v42;
    v65 = 1024;
    *v66 = v41;
    *&v66[4] = 1024;
    *&v66[6] = v58;
    v67 = 2112;
    v68 = v59;
    _os_log_impl(&dword_25543D000, v43, OS_LOG_TYPE_INFO, "%s[%@], sendContextToClient: %d, context updated: %d, reason: %@", buf, 0x2Cu);
  }

  if (v41)
  {
    delegate = [(IRPolicyManager *)self delegate];
    policyEngine3 = [(IRPolicyManager *)self policyEngine];
    contexts = [policyEngine3 contexts];
    [delegate policyManager:self didUpdateContexts:contexts withReason:v59];

    policyEngine4 = [(IRPolicyManager *)self policyEngine];
    contexts2 = [policyEngine4 contexts];
    v49 = [contexts2 objectForKeyedSubscript:*MEMORY[0x277D21250]];
    candidateResults = [v49 candidateResults];
    v51 = [candidateResults firstWhere:&__block_literal_global_17];

    if (v51)
    {
      systemStateManager9 = [(IRPolicyManager *)self systemStateManager];
      [systemStateManager9 endAppInFocusWindow];

      statisticsManager2 = [(IRPolicyManager *)self statisticsManager];
      [statisticsManager2 bannerContextWithDate:v9];
LABEL_18:
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

BOOL __59__IRPolicyManager_didUpdateContextWithReason_andOverrides___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 classification] == 3 || objc_msgSend(v2, "classification") == 4;

  return v3;
}

- (void)didSpotOnLocationComplete:(id)complete
{
  v20 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  queue = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v7 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "#policy-manager, ";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = completeCopy;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_INFO, "%s[%@], got call for didSpotOnLocationComplete with error: %@, answering relevant clients and removing all spotOnPendingClients", &v14, 0x20u);
  }

  delegate = [(IRPolicyManager *)self delegate];
  spotOnPendingClientIDs = [(IRPolicyManager *)self spotOnPendingClientIDs];
  v10 = [spotOnPendingClientIDs copy];
  [delegate policyManager:self didSpotOnLocationCompleteForClientIds:v10 withError:completeCopy];

  spotOnPendingClientIDs2 = [(IRPolicyManager *)self spotOnPendingClientIDs];
  [spotOnPendingClientIDs2 removeAllObjects];

  spotOnTimeout = [(IRPolicyManager *)self spotOnTimeout];
  [spotOnTimeout invalidate];

  [(IRPolicyManager *)self setSpotOnTimeout:0];
  v13 = *MEMORY[0x277D85DE8];
}

@end