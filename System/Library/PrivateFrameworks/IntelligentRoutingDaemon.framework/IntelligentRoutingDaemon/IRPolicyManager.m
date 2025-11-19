@interface IRPolicyManager
- (IRPolicyManager)initWithService:(id)a3 queue:(id)a4 delegate:(id)a5 avOutputDeviceProvider:(id)a6 biomeProvider:(id)a7 miloProvider:(id)a8 rapportProvider:(id)a9 proximityProvider:(id)a10 serviceStore:(id)a11 displayMonitor:(id)a12 audioAVOutputContextController:(id)a13 isLowLatencyMiLo:(BOOL)a14;
- (IRPolicyManagerDelegate)delegate;
- (id)_createContextOverrdiesForBundleIDIfNeeded:(id)a3;
- (id)getStatistics;
- (id)requestCurrentContextWithBundleID:(id)a3;
- (void)_checkAndStartLowLatencyMiLoIfNeededWithForce:(BOOL)a3 historyEventsContainer:(id)a4;
- (void)_checkAndUpdateBundlesForEventIfNeeded:(id)a3;
- (void)_sendSessionAnalyticsEvent:(id)a3 forCandidate:(id)a4;
- (void)addEvent:(id)a3 forCandidate:(id)a4;
- (void)clearStatistics;
- (void)dealloc;
- (void)deallocSync;
- (void)deleteCandidate:(id)a3;
- (void)didSpotOnLocationComplete:(id)a3;
- (void)didUpdateContextWithReason:(id)a3 andOverrides:(id)a4;
- (void)run;
- (void)setSpotOnLocationWithParameters:(id)a3 andClientID:(id)a4;
- (void)setUpdateMode:(int64_t)a3;
- (void)synchronizeAndFetchFromDBOnDisk;
- (void)updateCandidates:(id)a3;
@end

@implementation IRPolicyManager

- (void)run
{
  v3 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v3);

  [(IRPolicyManager *)self didUpdateContextWithReason:@"Run" andOverrides:0];
}

- (IRPolicyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IRPolicyManager)initWithService:(id)a3 queue:(id)a4 delegate:(id)a5 avOutputDeviceProvider:(id)a6 biomeProvider:(id)a7 miloProvider:(id)a8 rapportProvider:(id)a9 proximityProvider:(id)a10 serviceStore:(id)a11 displayMonitor:(id)a12 audioAVOutputContextController:(id)a13 isLowLatencyMiLo:(BOOL)a14
{
  v60 = a3;
  v19 = a4;
  v20 = a5;
  v61 = a6;
  v59 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = v21;
  v26 = v19;
  v27 = a12;
  v28 = a13;
  dispatch_assert_queue_V2(v26);
  v62.receiver = self;
  v62.super_class = IRPolicyManager;
  v29 = [(IRPolicyManager *)&v62 init];
  v30 = v29;
  if (v29)
  {
    v56 = v26;
    [(IRPolicyManager *)v29 setQueue:v26];
    v58 = v20;
    [(IRPolicyManager *)v30 setDelegate:v20];
    [(IRPolicyManager *)v30 setService:v60];
    v31 = -[IRPolicyEngine initWithServicePackage:]([IRPolicyEngine alloc], "initWithServicePackage:", [v60 servicePackage]);
    [(IRPolicyManager *)v30 setPolicyEngine:v31];

    v32 = [[IRReplayWriter alloc] initWithServiceStore:v24];
    [(IRPolicyManager *)v30 setReplayWriter:v32];

    v33 = [IRCandidateManager alloc];
    v34 = [(IRPolicyManager *)v30 queue];
    v35 = [(IRCandidateManager *)v33 initWithQueue:v34 contextObserver:v30 avOutputDeviceProvider:v61 rapportDeviceProvider:v22 store:v24];
    [(IRPolicyManager *)v30 setCandidateManager:v35];

    v36 = [[IRStatisticsManager alloc] initWithStore:v24];
    [(IRPolicyManager *)v30 setStatisticsManager:v36];

    [(IRPolicyManager *)v30 setIsLowLatencyMiLo:a14];
    v37 = [[IRHistoryManager alloc] initWithStore:v24 miloFeedback:v25];
    [(IRPolicyManager *)v30 setHistoryManager:v37];

    v38 = [IRSystemStateManager alloc];
    v39 = [(IRPolicyManager *)v30 queue];
    LOBYTE(v51) = [(IRPolicyManager *)v30 isLowLatencyMiLo];
    v55 = v28;
    v40 = [(IRSystemStateManager *)v38 initWithQueue:v39 contextObserver:v30 biomeProvider:v59 miloProvider:v25 proximityProvider:v23 serviceStore:v24 displayMonitor:v27 audioAVOutputContextController:v28 isLowLatencyMiLo:v51];
    [(IRPolicyManager *)v30 setSystemStateManager:v40];

    v41 = [MEMORY[0x277CBEB58] set];
    [(IRPolicyManager *)v30 setSpotOnPendingClientIDs:v41];

    v42 = +[IRPreferences shared];
    v43 = [v42 coreAnalyticsSessionEnable];
    if (![v43 BOOLValue])
    {
LABEL_7:

      v20 = v58;
      v26 = v56;
      v28 = v55;
      goto LABEL_8;
    }

    v53 = v27;
    v54 = v25;
    v44 = [(IRPolicyManager *)v30 service];
    v45 = [v44 clientIdentifier];
    if ([v45 containsString:@"com.apple.mediaremoted"])
    {

      v27 = v53;
LABEL_6:
      v48 = [IRSessionAnalytics alloc];
      v42 = [(IRPolicyManager *)v30 queue];
      v43 = [(IRPolicyManager *)v30 service];
      v49 = [(IRSessionAnalytics *)v48 initWithQueue:v42 service:v43];
      [(IRPolicyManager *)v30 setSessionAnalytics:v49];

      goto LABEL_7;
    }

    v46 = [(IRPolicyManager *)v30 service];
    v47 = [v46 clientIdentifier];
    v52 = [v47 isEqual:@"com.apple.intelligentroutingclient.Media"];

    v20 = v58;
    v27 = v53;
    v25 = v54;
    v26 = v56;
    v28 = v55;
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
  v3 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IRPolicyManager *)self candidateManager];
  [v4 deallocSync];

  v5 = [(IRPolicyManager *)self systemStateManager];
  [v5 deallocSync];

  v6 = [(IRPolicyManager *)self replayWriter];
  [v6 deallocSync];
}

- (id)requestCurrentContextWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IRPolicyManager *)self _createContextOverrdiesForBundleIDIfNeeded:v4];

  [(IRPolicyManager *)self didUpdateContextWithReason:@"Request current context" andOverrides:v6];
  v7 = [(IRPolicyManager *)self policyEngine];
  v8 = [v7 contexts];

  return v8;
}

- (void)updateCandidates:(id)a3
{
  v4 = a3;
  v5 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IRPolicyManager *)self candidateManager];
  v7 = [(IRPolicyManager *)self historyManager];
  v8 = [v7 historyEventsContainer];
  [v6 updateCandidates:v4 withHistoryEventsContainer:v8];

  v10 = [(IRPolicyManager *)self historyManager];
  v9 = [v10 historyEventsContainer];
  [(IRPolicyManager *)self _checkAndStartLowLatencyMiLoIfNeededWithForce:0 historyEventsContainer:v9];
}

- (void)deleteCandidate:(id)a3
{
  v4 = a3;
  v5 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IRPolicyManager *)self candidateManager];
  [v6 deleteCandidate:v4];
}

- (void)addEvent:(id)a3 forCandidate:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v7 candidateIdentifier];
  [(IRPolicyManager *)self _sendSessionAnalyticsEvent:v6 forCandidate:v7];
  v11 = [(IRPolicyManager *)self policyEngine];
  v12 = [(IRPolicyManager *)self historyManager];
  v13 = [v12 historyEventsContainer];
  v14 = [(IRPolicyManager *)self systemStateManager];
  v15 = [v14 systemState];
  v60 = v9;
  LODWORD(v9) = [v11 shouldRejectEvent:v6 withHistoryEventsContainer:v13 withSystemState:v15 forCandidate:v7 date:v9];

  if (v9)
  {
    v16 = v10;
    v17 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v18 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v19 = MEMORY[0x277CCABB0];
      v20 = v18;
      v21 = [v19 numberWithLongLong:{objc_msgSend(v6, "eventType")}];
      v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "eventSubType")}];
      v23 = MEMORY[0x277CCABB0];
      v24 = [(IRPolicyManager *)self systemStateManager];
      v25 = [v24 systemState];
      v26 = [v23 numberWithBool:{objc_msgSend(v25, "displayOn")}];
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
    v27 = [(IRPolicyManager *)self candidateManager];
    v28 = [v27 candidatesContainer];
    v29 = [v28 candidateForCandidateIdentifier:v10];

    v30 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v31 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = [IRLogQEUtility getEventAsString:v6];
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

    v35 = [(IRPolicyManager *)self candidateManager];
    v16 = v10;
    [v35 notifyAddEventForCandidateIdentifier:v10];

    v36 = [(IRPolicyManager *)self systemStateManager];
    v37 = [v36 systemState];
    v58 = [IRHistoryEventDO historyEventDOWithDate:v60 candidateIdentifier:v10 event:v6 miloPredictionEvent:0 systemState:v37 sharingPolicy:0];

    v61 = v58;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    v57 = [IRHistoryEventsContainerDO historyEventsContainerDOWithHistoryEvents:v38];

    [(IRPolicyManager *)self _checkAndStartLowLatencyMiLoIfNeededWithForce:0 historyEventsContainer:v57];
    v39 = [(IRPolicyManager *)self historyManager];
    v40 = [(IRPolicyManager *)self systemStateManager];
    [v40 systemState];
    v41 = v59 = v29;
    v42 = [(IRPolicyManager *)self systemStateManager];
    v43 = [v42 miloProviderLslPredictionResults];
    [v39 addEvent:v6 forCandidateIdentifier:v10 withSystemState:v41 andMiloPrediction:v43];

    [(IRPolicyManager *)self _checkAndUpdateBundlesForEventIfNeeded:v6];
    v44 = [(IRPolicyManager *)self policyEngine];
    v56 = [v44 policyInspections];

    v45 = [(IRPolicyManager *)self systemStateManager];
    [v45 addEvent:v6 forCandidate:v59];

    v55 = [(IRPolicyManager *)self service];
    v46 = [(IRPolicyManager *)self systemStateManager];
    v47 = [(IRPolicyManager *)self candidateManager];
    v48 = [v47 candidatesContainer];
    [(IRPolicyManager *)self statisticsManager];
    v50 = v49 = v6;
    v51 = [(IRPolicyManager *)self historyManager];
    v52 = [v51 historyEventsContainer];
    [IRAnalyticsManager logUiEvent:v49 withService:v55 forCandidateIdentifier:v16 systemStateManager:v46 candidatesContainer:v48 inspections:v56 statisticsManager:v50 historyEventsContainer:v52];

    v6 = v49;
    v7 = v59;
    v53 = [(IRPolicyManager *)self statisticsManager];
    [v53 event:v49 forCandidate:v59 inspections:v56 date:v60];

    v17 = v58;
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)setSpotOnLocationWithParameters:(id)a3 andClientID:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = MEMORY[0x277D21308];
  v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v11 = MEMORY[0x277D21260];
  v12 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = v12;
    v15 = [v13 numberWithBool:{objc_msgSend(v6, "resetAllBrokerDiscoveredCandidates")}];
    *buf = 136315906;
    v41 = "#policy-manager, ";
    v42 = 2112;
    v43 = v10;
    v44 = 2112;
    v45 = v7;
    v46 = 2112;
    v47 = v15;
    _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_INFO, "%s[%@], Set Spot On for clientId: %@, shouldResetBrokeredDevices: %@", buf, 0x2Au);
  }

  if ([v6 resetAllBrokerDiscoveredCandidates])
  {
    v16 = [(IRPolicyManager *)self candidateManager];
    [v16 deleteBrokerCandidates];
  }

  v17 = [(IRPolicyManager *)self spotOnPendingClientIDs];
  [v17 addObject:v7];

  v18 = [(IRPolicyManager *)self spotOnPendingClientIDs];
  v19 = [v18 count] > 1;

  if (v19)
  {
    v20 = dispatch_get_specific(*v9);
    v21 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v23 = [(IRPolicyManager *)self spotOnPendingClientIDs];
      *buf = 136315906;
      v41 = "#policy-manager, ";
      v42 = 2112;
      v43 = v20;
      v44 = 2112;
      v45 = v7;
      v46 = 2112;
      v47 = v23;
      _os_log_impl(&dword_25543D000, v22, OS_LOG_TYPE_INFO, "%s[%@], Set Spot On for clientId: %@, there is already a pending request for: %@", buf, 0x2Au);
    }
  }

  else
  {
    v24 = [(IRPolicyManager *)self spotOnTimeout];

    if (v24)
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
    v29 = [v28 miloTimeoutForSetSpotOnRequestSeconds];
    v30 = [v29 integerValue];
    v31 = [(IRPolicyManager *)self queue];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __63__IRPolicyManager_setSpotOnLocationWithParameters_andClientID___block_invoke;
    v38[3] = &unk_2797E0C18;
    objc_copyWeak(&v39, buf);
    v32 = [(IRTimer *)v27 initWithInterval:0 repeats:v31 queue:v38 block:v30];
    [(IRPolicyManager *)self setSpotOnTimeout:v32];

    v33 = [(IRPolicyManager *)self historyManager];
    v34 = [v33 historyEventsContainer];
    [(IRPolicyManager *)self _checkAndStartLowLatencyMiLoIfNeededWithForce:1 historyEventsContainer:v34];

    v35 = [(IRPolicyManager *)self systemStateManager];
    v36 = [v35 miloProvider];
    [v36 setSpotOnLocation];

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
  v3 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IRPolicyManager *)self candidateManager];
  [v4 synchronizeAndFetchFromDBOnDisk];

  v5 = [(IRPolicyManager *)self historyManager];
  [v5 synchronizeAndFetchFromDBOnDisk];

  [(IRPolicyManager *)self _checkAndUpdateBundlesForEventIfNeeded:0];
}

- (void)setUpdateMode:(int64_t)a3
{
  v5 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v5);

  [(IRPolicyManager *)self setMode:a3];
}

- (id)getStatistics
{
  v3 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IRPolicyManager *)self statisticsManager];
  v5 = [v4 statistics];

  return v5;
}

- (void)clearStatistics
{
  v3 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v5 = [(IRPolicyManager *)self statisticsManager];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v5 clearStatistics:v4];
}

- (void)_checkAndStartLowLatencyMiLoIfNeededWithForce:(BOOL)a3 historyEventsContainer:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (![(IRPolicyManager *)self isLowLatencyMiLo])
  {
    if (a3)
    {
      goto LABEL_4;
    }

    v7 = [(IRPolicyManager *)self policyEngine];
    v8 = [(IRPolicyManager *)self candidateManager];
    v9 = [v8 candidatesContainer];
    v10 = [v7 shouldAskForLowLatencyMiLo:v9 historyEventsContainer:v6];

    if (v10)
    {
LABEL_4:
      v11 = [(IRPolicyManager *)self systemStateManager];
      -[IRPolicyManager setIsLowLatencyMiLo:](self, "setIsLowLatencyMiLo:", [v11 startLowLatencyMiLo]);

      v12 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v13 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v15 = [(IRPolicyManager *)self isLowLatencyMiLo];
        v16 = @"No";
        v19 = "#policy-manager, ";
        v18 = 136315650;
        v20 = 2112;
        v21 = v12;
        if (v15)
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

- (id)_createContextOverrdiesForBundleIDIfNeeded:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[IRContextRequestOverrides alloc] initWithOverrideAppInFocusWindow:1 overrideBundleId:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_checkAndUpdateBundlesForEventIfNeeded:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = [(IRPolicyManager *)self policyEngine];
  v6 = [v5 bundlesWithSignificantInteraction];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__IRPolicyManager__checkAndUpdateBundlesForEventIfNeeded___block_invoke;
  v22[3] = &unk_2797E2080;
  v23 = v4;
  v7 = [v6 containsObjectPassingTest:v22];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    v8 = [(IRPolicyManager *)self policyEngine];
    v9 = [(IRPolicyManager *)self candidateManager];
    v10 = [v9 candidatesContainer];
    v11 = [(IRPolicyManager *)self historyManager];
    v12 = [v11 historyEventsContainer];
    v13 = [v8 updateBundlesWithSignificantInteractionForEvent:v4 candidatesContainer:v10 historyEventsContainer:v12];

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
    if (!v4)
    {
      v17 = 0;
    }

    if ((v17 & 1) == 0)
    {
      v18 = [(IRPolicyManager *)self delegate];
      v19 = [(IRPolicyManager *)self policyEngine];
      v20 = [v19 bundlesWithSignificantInteraction];
      [v18 policyManager:self didUpdateBundlesWithSignificantInteractionPattern:v20];
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

- (void)_sendSessionAnalyticsEvent:(id)a3 forCandidate:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 isMediaRemoteLocal])
  {
    v16 = +[IRCandidateDO mediaRemoteSpeakerCandidate];
  }

  else
  {
    v8 = [(IRPolicyManager *)self candidateManager];
    v9 = [v8 candidatesContainer];
    v10 = [v6 candidateIdentifier];
    v16 = [v9 candidateForCandidateIdentifier:v10];

    v6 = v8;
  }

  v11 = [(IRPolicyManager *)self sessionAnalytics];
  v12 = [(IRPolicyManager *)self systemStateManager];
  v13 = [v12 miloProviderLslPredictionResults];
  v14 = [(IRPolicyManager *)self systemStateManager];
  v15 = [v14 systemState];
  [v11 event:v7 forCandidate:v16 miloPrediction:v13 systemState:v15];
}

- (void)didUpdateContextWithReason:(id)a3 andOverrides:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [(IRPolicyManager *)self systemStateManager];
  v11 = [v10 systemState];
  v60 = [v11 overrideSystemStateIfNeeded:v7];

  v12 = [(IRPolicyManager *)self statisticsManager];
  v13 = [(IRPolicyManager *)self mode];
  v14 = [(IRPolicyManager *)self systemStateManager];
  v15 = [v14 miloProviderLslPredictionResults];
  [v12 contextChangedWithReason:v6 mode:v13 miloPrediction:v15 date:v9];

  v16 = [(IRPolicyManager *)self sessionAnalytics];
  v17 = [(IRPolicyManager *)self systemStateManager];
  v18 = [v17 systemState];
  [v16 contextChangedWithReason:v6 systemState:v18];

  if (-[IRPolicyManager mode](self, "mode") != 1 && ([v6 isEqual:@"Request current context"] & 1) == 0)
  {
    v53 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v54 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v62 = "#policy-manager, ";
      v63 = 2112;
      v64 = v53;
      v65 = 2112;
      *v66 = v6;
      _os_log_impl(&dword_25543D000, v54, OS_LOG_TYPE_INFO, "%s[%@], didUpdateContextWithReason was triggered with reason: %@, but service is not in updates mode", buf, 0x20u);
    }

    goto LABEL_18;
  }

  v19 = [(IRPolicyManager *)self policyEngine];
  v57 = [(IRPolicyManager *)self candidateManager];
  v20 = [v57 candidatesContainer];
  [(IRPolicyManager *)self historyManager];
  v21 = v59 = v6;
  [v21 historyEventsContainer];
  v23 = v22 = v9;
  v24 = [(IRPolicyManager *)self systemStateManager];
  v25 = [v24 miloProviderLslPredictionResults];
  v26 = [(IRPolicyManager *)self systemStateManager];
  v27 = [v26 nearbyDeviceContainer];
  LOBYTE(v56) = 1;
  v58 = [v19 updateContextWithDate:v22 candidatesContainer:v20 historyEventsContainer:v23 systemState:v60 miloProviderLslPredictionResults:v25 nearbyDeviceContainer:v27 fillInspection:v56];

  v9 = v22;
  v6 = v59;

  v28 = [(IRPolicyManager *)self replayWriter];
  v29 = [(IRPolicyManager *)self systemStateManager];
  v30 = [v29 miloProviderLslPredictionResults];
  v31 = [(IRPolicyManager *)self candidateManager];
  v32 = [v31 candidatesContainer];
  v33 = [(IRPolicyManager *)self systemStateManager];
  v34 = [v33 nearbyDeviceContainer];
  [v28 writeReplayEventWithReason:v59 SystemState:v60 miloLslPrediction:v30 candidatesContainerDO:v32 nearbyDeviceContainerDO:v34 date:v9];

  if ((v58 & 1) != 0 || [v59 isEqual:@"Run"])
  {
    v35 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v36 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v37 = v36;
      v38 = [(IRPolicyManager *)self policyEngine];
      v39 = [v38 lastEventsString];
      *buf = 136315650;
      v62 = "#policy-manager, ";
      v63 = 2112;
      v64 = v35;
      v65 = 2112;
      *v66 = v39;
      _os_log_impl(&dword_25543D000, v37, OS_LOG_TYPE_INFO, "%s[%@], %@", buf, 0x20u);
    }

    v40 = [(IRPolicyManager *)self systemStateManager];
    [v40 logProviderState];
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
    v44 = [(IRPolicyManager *)self delegate];
    v45 = [(IRPolicyManager *)self policyEngine];
    v46 = [v45 contexts];
    [v44 policyManager:self didUpdateContexts:v46 withReason:v59];

    v47 = [(IRPolicyManager *)self policyEngine];
    v48 = [v47 contexts];
    v49 = [v48 objectForKeyedSubscript:*MEMORY[0x277D21250]];
    v50 = [v49 candidateResults];
    v51 = [v50 firstWhere:&__block_literal_global_17];

    if (v51)
    {
      v52 = [(IRPolicyManager *)self systemStateManager];
      [v52 endAppInFocusWindow];

      v53 = [(IRPolicyManager *)self statisticsManager];
      [v53 bannerContextWithDate:v9];
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

- (void)didSpotOnLocationComplete:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IRPolicyManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v7 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "#policy-manager, ";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_INFO, "%s[%@], got call for didSpotOnLocationComplete with error: %@, answering relevant clients and removing all spotOnPendingClients", &v14, 0x20u);
  }

  v8 = [(IRPolicyManager *)self delegate];
  v9 = [(IRPolicyManager *)self spotOnPendingClientIDs];
  v10 = [v9 copy];
  [v8 policyManager:self didSpotOnLocationCompleteForClientIds:v10 withError:v4];

  v11 = [(IRPolicyManager *)self spotOnPendingClientIDs];
  [v11 removeAllObjects];

  v12 = [(IRPolicyManager *)self spotOnTimeout];
  [v12 invalidate];

  [(IRPolicyManager *)self setSpotOnTimeout:0];
  v13 = *MEMORY[0x277D85DE8];
}

@end