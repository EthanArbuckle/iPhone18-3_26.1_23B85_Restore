@interface EKTravelEngineAgendaEntry
+ (double)fuzzyMaximumInitialUpdateIntervalBeforeStartDate;
- (BOOL)receivedAlarmNamed:(id)a3;
- (EKTravelEngineAgendaEntry)initWithRouteHypothesizerProvider:(id)a3;
- (EKTravelEngineHypothesis)latestHypothesis;
- (EKTravelEngineOriginalEvent)originalEvent;
- (id)_createSyntheticHypothesis;
- (id)_generateDestination;
- (id)emissionHypothesisRefreshAlarmName;
- (id)requestHypothesisRefreshAlarmName;
- (void)_accountForGeocodedEventEncounter;
- (void)_clearEverything;
- (void)_createEmissionHypothesisRefreshTimerWithDate:(id)a3;
- (void)_createHypothesisRequestRefreshTimerWithDate:(id)a3;
- (void)_createHypothesizerForDestination:(id)a3;
- (void)_emissionHypothesisRefreshTimerFired;
- (void)_enhanceLocation;
- (void)_hypothesisRefreshTimerFired;
- (void)_performAnalyticsPostProcessing;
- (void)_requestHypothesisRefreshTimerFired;
- (void)_sendFeedbackToHypothesizerForPostingNotification:(unint64_t)a3;
- (void)_setUpRouteMonitoring;
- (void)_trackTTLCandidateEvent:(id)a3;
- (void)_uninstallEmissionHypothesisRefreshTimer;
- (void)_uninstallRequestHypothesisRefreshTimer;
- (void)_updateTravelTimeExceededThresholdStateUsingExceededValue:(BOOL)a3;
- (void)_updateWithHypothesis:(id)a3;
- (void)createAlarmWithName:(id)a3 atDate:(id)a4;
- (void)dealloc;
- (void)removeAlarmWithName:(id)a3;
- (void)requestHypothesisRefreshAtDate:(id)a3;
- (void)reset;
- (void)updateHypothesizerIfNecessaryWithOriginalEvent:(id)a3;
@end

@implementation EKTravelEngineAgendaEntry

- (EKTravelEngineAgendaEntry)initWithRouteHypothesizerProvider:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = EKTravelEngineAgendaEntry;
  v6 = [(EKTravelEngineAgendaEntry *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hypothesizerProvider, a3);
    objc_opt_class();
    v8 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v9 = [v8 UTF8String];

    v10 = dispatch_queue_create(v9, 0);
    [(EKTravelEngineAgendaEntry *)v7 setWorkQueue:v10];

    objc_opt_class();
    v11 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v12 = [v11 UTF8String];

    v13 = dispatch_queue_create(v12, 0);
    [(EKTravelEngineAgendaEntry *)v7 setCallbackQueue:v13];

    [(EKTravelEngineAgendaEntry *)v7 setTravelTimeThresholdExceededState:0];
  }

  return v7;
}

- (void)dealloc
{
  [(EKTravelEngineAgendaEntry *)self _uninstallRequestHypothesisRefreshTimer];
  v3.receiver = self;
  v3.super_class = EKTravelEngineAgendaEntry;
  [(EKTravelEngineAgendaEntry *)&v3 dealloc];
}

- (void)updateHypothesizerIfNecessaryWithOriginalEvent:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Update with original event requested: [%@]. This checks if the event has changed enough to qualify generating another hypothesis.", buf, 0xCu);
  }

  v6 = [(EKTravelEngineAgendaEntry *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke;
  v9[3] = &unk_278D6F278;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) originalEventInternal];
  [*v2 setOriginalEventInternal:*(a1 + 40)];
  v4 = MEMORY[0x277CC5978];
  v5 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v65 = v6;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Latest Hypothesis [%@]", buf, 0xCu);
  }

  if (v3)
  {
    v7 = *(a1 + 32);
    if (!*(v7 + 16) || (v8 = *(v7 + 88)) == 0 || [v8 state] == 2)
    {
      v9 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 16);
        v12 = *(v10 + 88);
        v13 = v9;
        v14 = [v12 state];
        *buf = 138412802;
        v65 = v11;
        v66 = 2112;
        v67 = v12;
        v68 = 2048;
        v69 = v14;
        _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "There is no hypothesis, or non-functional hypothesizer. Regenerating a new hypothesizer. latestHypothesis:[%@] hypothesizer:[%@] hypothesizer state:[%ld]", buf, 0x20u);
      }

      goto LABEL_12;
    }

    v29 = [*(*(a1 + 32) + 16) creationDate];
    if (!v29)
    {
      goto LABEL_20;
    }

    v30 = [MEMORY[0x277CBEAA8] date];
    v31 = [*(*(a1 + 32) + 16) creationDate];
    [v30 timeIntervalSinceDate:v31];
    v33 = v32 > 1800.0;

    if (v33)
    {
LABEL_20:
      v34 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(*(a1 + 32) + 16);
        v36 = v34;
        v37 = [v35 creationDate];
        v38 = *(*(a1 + 32) + 16);
        *buf = 138412546;
        v65 = v37;
        v66 = 2112;
        v67 = v38;
        _os_log_impl(&dword_242909000, v36, OS_LOG_TYPE_DEFAULT, "Last generated hypothesis is too old. Should hypothesize again. _latestHypothesis.creationDate = %@. _latestHypothesis = %@.", buf, 0x16u);
      }

      goto LABEL_12;
    }

    v39 = [v3 isEqualToOriginalEvent:*(a1 + 40)];
    v40 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v41 = MEMORY[0x277CCABB0];
      v42 = v40;
      v43 = [v41 numberWithBool:v39 ^ 1u];
      v44 = *(a1 + 40);
      *buf = 138412546;
      v65 = v43;
      v66 = 2112;
      v67 = v44;
      _os_log_impl(&dword_242909000, v42, OS_LOG_TYPE_DEFAULT, "Event has significantly changed: [%@].  Original event: [%@]", buf, 0x16u);
    }

    if ((v39 & 1) == 0)
    {
      v45 = [*(a1 + 32) entrySignificantlyChangedBlock];
      if (v45)
      {
        v46 = [*(a1 + 32) callbackQueue];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_10;
        v62[3] = &unk_278D6F638;
        v47 = v45;
        v62[4] = *(a1 + 32);
        v63 = v47;
        dispatch_async(v46, v62);
      }
    }

    v48 = [MEMORY[0x277CC5A18] shared];
    v49 = [v48 performAgendaEntryEqualityChecksInTravelEngine];

    if (v49)
    {
      if (v39)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    v50 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 40);
      *buf = 138412290;
      v65 = v51;
      v16 = "No equality check was performed.  Original event: [%@]";
      v17 = v50;
      v18 = 12;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "There was no previous original event, so event has significantly changed. Should attempt to hypothesize.";
      v17 = v15;
      v18 = 2;
LABEL_11:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

LABEL_12:
  v19 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 40);
    *buf = 138412546;
    v65 = v3;
    v66 = 2112;
    v67 = v20;
    _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Will attempt to hypothesize.  Previous original event: [%@] Original event: [%@]", buf, 0x16u);
  }

  if (v3)
  {
    [*(a1 + 32) _clearEverything];
  }

  v21 = objc_alloc_init(EKTravelEngineThrottle);
  [*(a1 + 32) setThrottle:v21];

  v22 = [*(a1 + 40) eventExternalURL];
  v23 = [*(a1 + 32) throttle];
  [v23 setEventExternalURL:v22];

  objc_initWeak(buf, *(a1 + 32));
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_14;
  v59[3] = &unk_278D6FBD0;
  objc_copyWeak(&v61, buf);
  v60 = *(a1 + 40);
  v24 = [*(a1 + 32) throttle];
  [v24 setRequestHypothesisRefreshBlock:v59];

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2;
  v56[3] = &unk_278D6FBF8;
  objc_copyWeak(&v58, buf);
  v57 = *(a1 + 40);
  v25 = [*(a1 + 32) throttle];
  [v25 setCancelHypothesisRequestRefreshBlock:v56];

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2_18;
  v53[3] = &unk_278D6FBF8;
  objc_copyWeak(&v55, buf);
  v54 = *(a1 + 40);
  v26 = [*(a1 + 32) throttle];
  [v26 setEmissionBlock:v53];

  v27 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_3;
  block[3] = &unk_278D6F250;
  block[4] = *(a1 + 32);
  dispatch_async(v27, block);

  objc_destroyWeak(&v55);
  objc_destroyWeak(&v58);

  objc_destroyWeak(&v61);
  objc_destroyWeak(buf);
LABEL_17:

  v28 = *MEMORY[0x277D85DE8];
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_14(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Firing request hypothesis refresh block in travel engine for [%@]", buf, 0xCu);
    }

    v7 = [WeakRetained workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_15;
    v9[3] = &unk_278D6F278;
    v9[4] = WeakRetained;
    v10 = v3;
    dispatch_async(v7, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Firing cancel hypothesis request block in travel engine for [%@]", buf, 0xCu);
    }

    v5 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_17;
    block[3] = &unk_278D6F250;
    block[4] = WeakRetained;
    dispatch_async(v5, block);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2_18(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Firing emission block in travel engine for [%@]", buf, 0xCu);
    }

    v5 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_19;
    block[3] = &unk_278D6F250;
    block[4] = WeakRetained;
    dispatch_async(v5, block);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_19(uint64_t a1)
{
  v2 = [*(a1 + 32) updateBlock];
  if (v2)
  {
    v3 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2_20;
    v5[3] = &unk_278D6F638;
    v4 = v2;
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, v5);
  }
}

- (void)_hypothesisRefreshTimerFired
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(EKTravelEngineAgendaEntry *)self hypothesizer];

  if (v3)
  {
    v4 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(EKTravelEngineAgendaEntry *)self hypothesizer];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Requesting refresh for hypothesizer, %@", &v9, 0xCu);
    }

    v7 = [(EKTravelEngineAgendaEntry *)self hypothesizer];
    [v7 requestRefresh];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestHypothesisRefreshTimerFired
{
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Request hypothesis refresh timer fired", v4, 2u);
  }

  [(EKTravelEngineAgendaEntry *)self _hypothesisRefreshTimerFired];
  [(EKTravelEngineAgendaEntry *)self _uninstallRequestHypothesisRefreshTimer];
}

- (void)_emissionHypothesisRefreshTimerFired
{
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Emission hypothesis refresh timer fired", v4, 2u);
  }

  [(EKTravelEngineAgendaEntry *)self _hypothesisRefreshTimerFired];
  [(EKTravelEngineAgendaEntry *)self _uninstallEmissionHypothesisRefreshTimer];
}

- (void)requestHypothesisRefreshAtDate:(id)a3
{
  v5 = a3;
  v4 = [(EKTravelEngineAgendaEntry *)self hypothesizer];

  if (v4)
  {
    [(EKTravelEngineAgendaEntry *)self _createHypothesisRequestRefreshTimerWithDate:v5];
  }
}

- (void)createAlarmWithName:(id)a3 atDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 timeIntervalSinceNow];
  if (v7 >= 0.0)
  {
    v9 = ((ceil(v7) + time(0)) * 1000000000.0);
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_date(v10, *MEMORY[0x277CF7888], v9);
    v11 = *MEMORY[0x277CF7880];
    [v5 UTF8String];
    xpc_set_event();
  }

  else
  {
    v8 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_ERROR))
    {
      [(EKTravelEngineAgendaEntry *)v5 createAlarmWithName:v6 atDate:v8];
    }
  }
}

- (void)removeAlarmWithName:(id)a3
{
  v3 = *MEMORY[0x277CF7880];
  [a3 UTF8String];

  xpc_set_event();
}

- (void)_createHypothesisRequestRefreshTimerWithDate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(EKTravelEngineAgendaEntry *)self requestHypothesisRefreshAlarmName];
  [(EKTravelEngineAgendaEntry *)self createAlarmWithName:v5 atDate:v4];

  v6 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Created a new request refresh timer that will fire at: [%@] for entry: [%@]", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_uninstallRequestHypothesisRefreshTimer
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Uninstalling request refresh timer for agenda entry: [%@].", &v6, 0xCu);
  }

  v4 = [(EKTravelEngineAgendaEntry *)self requestHypothesisRefreshAlarmName];
  [(EKTravelEngineAgendaEntry *)self removeAlarmWithName:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_createEmissionHypothesisRefreshTimerWithDate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(EKTravelEngineAgendaEntry *)self emissionHypothesisRefreshAlarmName];
  [(EKTravelEngineAgendaEntry *)self createAlarmWithName:v5 atDate:v4];

  v6 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Created a new emission refresh timer that will fire at: [%@] for entry: [%@]", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_uninstallEmissionHypothesisRefreshTimer
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Uninstalling emission refresh timer for agenda entry: [%@].", &v6, 0xCu);
  }

  v4 = [(EKTravelEngineAgendaEntry *)self emissionHypothesisRefreshAlarmName];
  [(EKTravelEngineAgendaEntry *)self removeAlarmWithName:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v3 = [(EKTravelEngineAgendaEntry *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__EKTravelEngineAgendaEntry_reset__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __34__EKTravelEngineAgendaEntry_reset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performAnalyticsPostProcessing];
  v2 = *(a1 + 32);

  return [v2 _clearEverything];
}

- (EKTravelEngineHypothesis)latestHypothesis
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v3 = [(EKTravelEngineAgendaEntry *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__EKTravelEngineAgendaEntry_latestHypothesis__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (EKTravelEngineOriginalEvent)originalEvent
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v3 = [(EKTravelEngineAgendaEntry *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__EKTravelEngineAgendaEntry_originalEvent__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__EKTravelEngineAgendaEntry_originalEvent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) originalEventInternal];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (double)fuzzyMaximumInitialUpdateIntervalBeforeStartDate
{
  [MEMORY[0x277CC5B00] maximumAllowableTravelTime];
  v3 = v2;
  +[EKTravelEngineThrottle emissionThresholdTimeInterval];
  return v3 + v4;
}

- (void)_accountForGeocodedEventEncounter
{
  if (![(EKTravelEngineAgendaEntry *)self geocodedEventEncountered])
  {
    [(EKTravelEngineAgendaEntry *)self setGeocodedEventEncountered:1];
    CalAnalyticsSendEvent();
    v3 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    [(EKTravelEngineAgendaEntry *)self _trackTTLCandidateEvent:v3];
  }
}

- (void)_trackTTLCandidateEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 hasPredictedLocation];
  v5 = [v3 isOnSharedCalendar];

  v6 = MEMORY[0x277CF7878];

  [v6 trackTTLCandidateEventHasSuggestedLocation:v4 isOnSharedCalendar:v5];
}

- (void)_updateTravelTimeExceededThresholdStateUsingExceededValue:(BOOL)a3
{
  v3 = a3;
  v5 = [(EKTravelEngineAgendaEntry *)self travelTimeThresholdExceededState];
  if (v5 == 3)
  {
    if (v3)
    {
      return;
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5)
      {
        return;
      }

      if (v3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_9;
    }

    if (!v3)
    {
      return;
    }
  }

  v6 = 2;
LABEL_9:

  [(EKTravelEngineAgendaEntry *)self setTravelTimeThresholdExceededState:v6];
}

- (void)_performAnalyticsPostProcessing
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"hypothesizerActivated";
  v3 = MEMORY[0x277CCABB0];
  v4 = [(EKTravelEngineAgendaEntry *)self hypothesizer];
  v5 = [v3 numberWithInt:v4 != 0];
  v13[0] = v5;
  v12[1] = @"hypothesizerSentHypothesis";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[EKTravelEngineAgendaEntry hypothesizerSentAtLeastOneHypothesis](self, "hypothesizerSentAtLeastOneHypothesis")}];
  v13[1] = v6;
  v12[2] = @"travelTimeThresholdExceededState";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[EKTravelEngineAgendaEntry travelTimeThresholdExceededState](self, "travelTimeThresholdExceededState")}];
  v13[2] = v7;
  v12[3] = @"maximumTravelDurationEncountered";
  v8 = MEMORY[0x277CCABB0];
  [(EKTravelEngineAgendaEntry *)self maximumTravelDurationEncountered];
  v9 = [v8 numberWithDouble:?];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  CalAnalyticsSendEvent();
  v11 = *MEMORY[0x277D85DE8];
}

- (id)requestHypothesisRefreshAlarmName
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  v4 = [v3 eventExternalURL];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "hash")}];
  v6 = [v5 stringValue];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@agendaEntry-%@", @"com.apple.calaccessd.travelEngine.", v6];

  return v7;
}

- (id)emissionHypothesisRefreshAlarmName
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  v4 = [v3 eventExternalURL];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "hash")}];
  v6 = [v5 stringValue];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@agendaEntry-emi-%@", @"com.apple.calaccessd.travelEngine.", v6];

  return v7;
}

- (BOOL)receivedAlarmNamed:(id)a3
{
  v4 = a3;
  v5 = [(EKTravelEngineAgendaEntry *)self requestHypothesisRefreshAlarmName];
  v6 = [v4 isEqualToString:v5];

  v7 = [(EKTravelEngineAgendaEntry *)self emissionHypothesisRefreshAlarmName];
  v8 = [v4 isEqualToString:v7];

  if (v6)
  {
    v9 = [(EKTravelEngineAgendaEntry *)self workQueue];
    v10 = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__EKTravelEngineAgendaEntry_receivedAlarmNamed___block_invoke;
    v14[3] = &unk_278D6F250;
    v14[4] = self;
    v11 = v14;
LABEL_5:
    dispatch_sync(v9, v11);

    return 1;
  }

  if (v8)
  {
    v9 = [(EKTravelEngineAgendaEntry *)self workQueue];
    v10 = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__EKTravelEngineAgendaEntry_receivedAlarmNamed___block_invoke_2;
    v13[3] = &unk_278D6F250;
    v13[4] = self;
    v11 = v13;
    goto LABEL_5;
  }

  return 0;
}

- (void)_sendFeedbackToHypothesizerForPostingNotification:(unint64_t)a3
{
  v5 = [(EKTravelEngineAgendaEntry *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__EKTravelEngineAgendaEntry__sendFeedbackToHypothesizerForPostingNotification___block_invoke;
  v6[3] = &unk_278D6FC20;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __79__EKTravelEngineAgendaEntry__sendFeedbackToHypothesizerForPostingNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hypothesizer];
  if (v2)
  {
    v3 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = *(a1 + 40);
      v6 = v3;
      v7 = [v4 numberWithUnsignedInteger:v5];
      v8 = [*(a1 + 32) originalEventInternal];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Sending UI feedback to the hypothesizer.  Notification type: [%@].  Original event: [%@]", &v10, 0x16u);
    }

    [v2 didPostUINotification:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_clearEverything
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Clearing all state in the agenda entry for original event: [%@]", &v13, 0xCu);
  }

  [(EKTravelEngineAgendaEntry *)self setLatestHypothesis:0];
  [(EKTravelEngineAgendaEntry *)self setGeoLocation:0];
  [(EKTravelEngineAgendaEntry *)self setMapKitHandle:0];
  [(EKTravelEngineAgendaEntry *)self setTravelTimeThresholdExceededState:0];
  [(EKTravelEngineAgendaEntry *)self setHypothesizerSentAtLeastOneHypothesis:0];
  [(EKTravelEngineAgendaEntry *)self setMaximumTravelDurationEncountered:0.0];
  v6 = [(EKTravelEngineAgendaEntry *)self geocoder];
  [v6 cancel];

  [(EKTravelEngineAgendaEntry *)self setGeocoder:0];
  v7 = [(EKTravelEngineAgendaEntry *)self hypothesizer];
  [v7 stopHypothesizing];

  [(EKTravelEngineAgendaEntry *)self setHypothesizer:0];
  v8 = [(EKTravelEngineAgendaEntry *)self hypothesizerProvider];
  v9 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  v10 = [v9 eventExternalURL];
  [v8 removedRouteHypothesizerForEventExternalURL:v10];

  v11 = [(EKTravelEngineAgendaEntry *)self throttle];
  [v11 tearDown];

  [(EKTravelEngineAgendaEntry *)self setThrottle:0];
  [(EKTravelEngineAgendaEntry *)self _uninstallRequestHypothesisRefreshTimer];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_enhanceLocation
{
  v42[4] = *MEMORY[0x277D85DE8];
  v2 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  v3 = [v2 locationMapKitHandle];
  v4 = v3 != 0;

  v5 = [v2 geoLocation];

  v6 = [v2 locationIsAConferenceRoom];
  v7 = [v2 automaticGeocodingAllowed];
  v41[0] = @"hasLocationMapKitHandle";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v42[0] = v8;
  v41[1] = @"hasGeoLocation";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v5 != 0];
  v42[1] = v9;
  v41[2] = @"locationIsAConferenceRoom";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v42[2] = v10;
  v41[3] = @"automaticGeocodingAllowed";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v42[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
  v13 = [v12 mutableCopy];

  v14 = MEMORY[0x277CC5978];
  v15 = *MEMORY[0x277CC5978];
  v16 = os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v16)
    {
      *buf = 138412290;
      v40 = v2;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "A map handle already exists on the event.  Will not enhance location by geocoding the location string.  Original event: [%@]", buf, 0xCu);
    }

    v17 = [v2 locationMapKitHandle];
    [(EKTravelEngineAgendaEntry *)self setMapKitHandle:v17];

    [(EKTravelEngineAgendaEntry *)self _setUpRouteMonitoring];
    CalAnalyticsSendEvent();
  }

  else if (v5)
  {
    if (v16)
    {
      *buf = 138412290;
      v40 = v2;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "A geolocation already exists on the event.  Will not enhance location by geocoding the location string.  Original event: [%@]", buf, 0xCu);
    }

    v18 = [v2 geoLocation];
    [(EKTravelEngineAgendaEntry *)self setGeoLocation:v18];

    [(EKTravelEngineAgendaEntry *)self _setUpRouteMonitoring];
    CalAnalyticsSendEvent();
  }

  else if (v6)
  {
    if (v16)
    {
      *buf = 138412290;
      v40 = v2;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "The location is a conference room without structured location information.  Will not proceed to monitor route.  Original event: [%@].", buf, 0xCu);
    }

    CalAnalyticsSendEvent();
  }

  else
  {
    if (v16)
    {
      *buf = 138412290;
      v40 = v2;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "No map handle or geolocation exists on the event.  Will enhance location by geocoding the location string.  Original event: [%@]", buf, 0xCu);
    }

    objc_initWeak(&location, self);
    if ([v2 automaticGeocodingAllowed])
    {
      v19 = objc_alloc_init(MEMORY[0x277CF7838]);
      [v19 start];
      v20 = [v2 locationString];
      if ([v2 hasPredictedLocation])
      {
        v21 = [v2 locationStringWithoutPrediction];

        v20 = v21;
      }

      v22 = objc_alloc(MEMORY[0x277CF77D0]);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke;
      v31[3] = &unk_278D6FC70;
      v23 = v19;
      v32 = v23;
      objc_copyWeak(&v37, &location);
      v33 = v2;
      v34 = v13;
      v35 = @"travelEngine.enhanceLocation";
      v24 = v20;
      v36 = v24;
      v25 = [v22 initWithLocationString:v24 andCompletionBlock:v31];
      [(EKTravelEngineAgendaEntry *)self setGeocoder:v25];

      v26 = [(EKTravelEngineAgendaEntry *)self geocoder];
      [v26 startGeocoding];

      objc_destroyWeak(&v37);
      v27 = v13;
    }

    else
    {
      v27 = v13;
      v28 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v2;
        _os_log_impl(&dword_242909000, v28, OS_LOG_TYPE_DEFAULT, "Automatic geocoding is not allowed yet. We will not attempt to geocode for this event [%@]", buf, 0xCu);
      }
    }

    objc_destroyWeak(&location);
    v13 = v27;
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [a1[4] stop];
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2;
    v10[3] = &unk_278D6FC48;
    v11 = a1[4];
    v12 = a1[5];
    v13 = v6;
    v14 = v5;
    v15 = a1[6];
    v16 = a1[7];
    v17 = a1[8];
    v18 = v8;
    dispatch_async(v9, v10);
  }
}

void __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) elapsedTimeAsNumber:2];
  v3 = MEMORY[0x277CC5978];
  v4 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = v4;
    v7 = [v5 numberWithDouble:v2 / 1000.0];
    v8 = *(a1 + 40);
    *buf = 138412546;
    v46 = v7;
    v47 = 2112;
    v48 = v8;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Geocoding complete.  Elapsed time: [%@] ms.  Original event: [%@]", buf, 0x16u);
  }

  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10 != 0];
  [*(a1 + 64) setObject:v11 forKeyedSubscript:@"gotError"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:v9 != 0];
  [*(a1 + 64) setObject:v12 forKeyedSubscript:@"gotResult"];

  if (v10)
  {
    v13 = [*(a1 + 48) domain];
    [*(a1 + 64) setObject:v13 forKeyedSubscript:@"errorDomain"];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "code")}];
    [*(a1 + 64) setObject:v14 forKeyedSubscript:@"errorCode"];

    v16 = *(a1 + 64);
    v15 = *(a1 + 72);
    CalAnalyticsSendEvent();
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2_cold_2(a1, (a1 + 48));
    }

    goto LABEL_26;
  }

  v18 = *(a1 + 64);
  v17 = *(a1 + 72);
  CalAnalyticsSendEvent();
  v19 = *v3;
  v20 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v20)
    {
      v21 = *(a1 + 80);
      v22 = *(a1 + 56);
      *buf = 138412546;
      v46 = v21;
      v47 = 2112;
      v48 = v22;
      _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Map item found after geocoding.  Location string: [%@].  Map item: [%@]", buf, 0x16u);
    }

    v23 = [*(a1 + 56) _handle];
    [*(a1 + 88) setMapKitHandle:v23];

    v24 = [*(a1 + 56) placemark];
    v25 = [v24 location];
    [*(a1 + 88) setGeoLocation:v25];

    v26 = (a1 + 40);
    v27 = [*(a1 + 40) eventExternalURL];
    if (v27)
    {
      v28 = [MEMORY[0x277CC5A18] shared];
      v29 = [v28 saveGeocodedLocationsInTravelEngine];

      if (v29)
      {
        v30 = [MEMORY[0x277CBEBC0] URLWithString:v27];
        v31 = objc_alloc_init(MEMORY[0x277CC5A40]);
        v32 = [v31 _eventWithURI:v30 checkValid:0];
        v33 = *(a1 + 56);
        v44 = 0;
        v34 = [v32 updateWithGeocodedMapItemAndSaveWithCommit:v33 eventStore:v31 error:&v44];
        v35 = v44;
        v36 = *v3;
        if (v34)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = *v26;
            *buf = 138412290;
            v46 = v37;
            _os_log_impl(&dword_242909000, v36, OS_LOG_TYPE_DEFAULT, "Saved geocoding result to the database successfully. Original event: [%@].", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2_cold_1((a1 + 40));
        }

        goto LABEL_25;
      }

      v39 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *v26;
        *buf = 138412290;
        v46 = v42;
        v41 = "'saveGeocodedLocationsInTravelEngine' set to 'NO.'  Will not save geocoding result to the database. Original event: [%@].";
        goto LABEL_21;
      }
    }

    else
    {
      v39 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *v26;
        *buf = 138412290;
        v46 = v40;
        v41 = "No event external URL found.  Will not save geocoding result to the database. Original event: [%@].";
LABEL_21:
        _os_log_impl(&dword_242909000, v39, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
      }
    }

LABEL_25:
    [*(a1 + 88) _setUpRouteMonitoring];

    goto LABEL_26;
  }

  if (v20)
  {
    v38 = *(a1 + 80);
    *buf = 138412290;
    v46 = v38;
    _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "No geocoding results found.  Will not proceed to monitor route.  Location string: [%@].", buf, 0xCu);
  }

  [*(a1 + 88) setDismissed:1];
LABEL_26:
  v43 = *MEMORY[0x277D85DE8];
}

- (void)_setUpRouteMonitoring
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC5978];
  v4 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Setting up route monitoring.  Original event: [%@]", &v14, 0xCu);
  }

  v7 = [(EKTravelEngineAgendaEntry *)self _generateDestination];
  if (v7)
  {
    v8 = [MEMORY[0x277CC5A18] shared];
    v9 = [v8 overrideTravelAdvisoryHypothesis];

    if (!v9)
    {
      [(EKTravelEngineAgendaEntry *)self _accountForGeocodedEventEncounter];
      [(EKTravelEngineAgendaEntry *)self _createHypothesizerForDestination:v7];
      goto LABEL_10;
    }

    v10 = [(EKTravelEngineAgendaEntry *)self _createSyntheticHypothesis];
    [(EKTravelEngineAgendaEntry *)self _updateWithHypothesis:v10];
    goto LABEL_8;
  }

  v11 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v11;
    v12 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "No map handle or geolocation found.  Will not monitor routing for event.  Original event: [%@]", &v14, 0xCu);

LABEL_8:
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_generateDestination
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(EKTravelEngineAgendaEntry *)self mapKitHandle];

  if (v3)
  {
    v4 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
      v25 = 138412290;
      v26 = v6;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Found map handle.  Will use to generate destination.  Original event: [%@]", &v25, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277D0EC68]);
    v8 = [(EKTravelEngineAgendaEntry *)self mapKitHandle];
    v9 = [v7 initWithMapItemHandle:v8];

    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_10:
    v20 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    v21 = [v20 startDate];
    [v9 setArrivalDate:v21];

    v22 = [v20 endDate];
    [v9 setExpirationDate:v22];

    [v9 setTransportType:{objc_msgSend(v20, "transportTypeOverride")}];
    goto LABEL_11;
  }

  v9 = [(EKTravelEngineAgendaEntry *)self geoLocation];

  if (v9)
  {
    v10 = [(EKTravelEngineAgendaEntry *)self geoLocation];
    [v10 coordinate];
    v12 = v11;
    v14 = v13;

    v15 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      v25 = 138412802;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Found geolocation.  Will use for route monitoring.  Original event: [%@].  Geocoordinates - Latitude: [%@], Longitude: [%@]", &v25, 0x20u);
    }

    v9 = [objc_alloc(MEMORY[0x277D0EC68]) initWithCoordinate:{v12, v14}];
    if (v9)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_createSyntheticHypothesis
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    *buf = 138412290;
    v37 = v5;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Creating a synthetic hypothesis.  Original event: [%@]", buf, 0xCu);
  }

  v6 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  v7 = [v6 startDate];

  v8 = [MEMORY[0x277CC5A18] shared];
  [v8 overriddenTravelAdvisoryHypothesisConservativeTravelTime];
  v10 = v9;

  v11 = [MEMORY[0x277CC5A18] shared];
  [v11 overriddenTravelAdvisoryHypothesisEstimatedTravelTime];
  v13 = v12;

  v14 = [MEMORY[0x277CC5A18] shared];
  [v14 overriddenTravelAdvisoryHypothesisAggressiveTravelTime];
  v16 = v15;

  v17 = [MEMORY[0x277CC5AF8] syntheticHypothesisWithStartDate:v7 conservativeTravelTime:v10 estimatedTravelTime:v13 aggressiveTravelTime:v16];
  v18 = [v17 mutableCopy];

  v19 = [MEMORY[0x277CC5A18] shared];
  v20 = [v19 overriddenTravelAdvisoryHypothesisTransportType];

  v21 = [MEMORY[0x277CC5B00] geoTransportTypeForString:v20];
  v22 = [MEMORY[0x277CC5A18] shared];
  v23 = [v22 overriddenTravelAdvisoryHypothesisRouteName];

  v24 = [MEMORY[0x277CC5A18] shared];
  v25 = [v24 overriddenTravelAdvisoryHypothesisSupportsLiveTraffic];

  v26 = [MEMORY[0x277CC5A18] shared];
  v27 = [v26 overriddenTravelAdvisoryHypothesisCurrentTrafficDensity];

  v28 = [MEMORY[0x277CC5B00] geoTrafficDensityForString:v27];
  v29 = [MEMORY[0x277CC5A18] shared];
  v30 = [v29 overriddenTravelAdvisoryHypothesisTravelState];

  v31 = [MEMORY[0x277CC5B00] geoRouteHypothesisTravelStateForString:v30];
  [v18 setTransportType:v21];
  [v18 setRouteName:v23];
  [v18 setSupportsLiveTraffic:v25];
  [v18 setCurrentTrafficDensity:v28];
  [v18 setTravelState:v31];
  v32 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v18;
    _os_log_impl(&dword_242909000, v32, OS_LOG_TYPE_DEFAULT, "Created a synthetic hypothesis: [%@]", buf, 0xCu);
  }

  v33 = [v18 copy];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)_createHypothesizerForDestination:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(EKTravelEngineAgendaEntry *)self hypothesizerProvider];
  v6 = [v5 hypothesizerForPlannedDestination:v4];

  [(EKTravelEngineAgendaEntry *)self setHypothesizer:v6];
  v7 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    *buf = 138412802;
    v23 = v4;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Creating hypothesizer to monitor routing.  Destination: [%@] Original event: [%@] Hypothesizer: [%@]", buf, 0x20u);
  }

  objc_initWeak(buf, v6);
  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __63__EKTravelEngineAgendaEntry__createHypothesizerForDestination___block_invoke;
  v17 = &unk_278D6FCC0;
  objc_copyWeak(&v19, buf);
  objc_copyWeak(&v20, &location);
  v18 = self;
  [v6 startHypothesizingWithUpdateHandler:&v14];
  v10 = [(EKTravelEngineAgendaEntry *)self hypothesizerProvider:v14];
  v11 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  v12 = [v11 eventExternalURL];
  [v10 createdRouteHypothesizer:v6 forEventExternalURL:v12];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __63__EKTravelEngineAgendaEntry__createHypothesizerForDestination___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained state];
    v5 = [v3 currentHypothesis];
    v6 = MEMORY[0x277CC5978];
    v7 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 >= 5)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", v4];
      }

      else
      {
        v8 = off_278D6FCE0[v4];
      }

      v10 = v8;
      v11 = objc_loadWeakRetained((a1 + 48));
      v12 = [v11 originalEventInternal];
      *buf = 138412802;
      v27 = v8;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Hypothesizer updated to state: [%@].  Original event: [%@]. Hypothesis: [%@]", buf, 0x20u);
    }

    if (v4 == 4)
    {
      v13 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = objc_loadWeakRetained((a1 + 48));
        v16 = [v15 originalEventInternal];
        *buf = 138412290;
        v27 = v16;
        _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Done hypothesizing for original event: [%@]", buf, 0xCu);
      }
    }

    else
    {
      v17 = objc_loadWeakRetained((a1 + 48));
      v18 = [v17 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__EKTravelEngineAgendaEntry__createHypothesizerForDestination___block_invoke_83;
      block[3] = &unk_278D6FC98;
      objc_copyWeak(&v25, (a1 + 48));
      v19 = v5;
      v20 = *(a1 + 32);
      v23 = v19;
      v24 = v20;
      dispatch_async(v18, block);

      objc_destroyWeak(&v25);
    }
  }

  else
  {
    v9 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Hypothesizer is gone.  Returning early.", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __63__EKTravelEngineAgendaEntry__createHypothesizerForDestination___block_invoke_83(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CC5978];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6 = [WeakRetained originalEventInternal];
    v18 = 138412290;
    v19 = v6;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Analyzing hypothesis for original event: [%@]", &v18, 0xCu);
  }

  if (a1[4])
  {
    v7 = objc_loadWeakRetained(a1 + 6);
    [v7 setHypothesizerSentAtLeastOneHypothesis:1];

    [a1[4] conservativeTravelTime];
    v9 = v8;
    [MEMORY[0x277CC5B00] maximumAllowableTravelTime];
    v11 = v9 > v10;
    v12 = [a1[4] copy];
    [a1[5] maximumTravelDurationEncountered];
    if (v13 < v9)
    {
      v13 = v9;
    }

    [a1[5] setMaximumTravelDurationEncountered:v13];
    v14 = objc_loadWeakRetained(a1 + 6);
    [v14 _updateTravelTimeExceededThresholdStateUsingExceededValue:v11];
  }

  else
  {
    v15 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "Not updating the latestHypothesis because the hypothesis is nil.", &v18, 2u);
    }

    v12 = 0;
  }

  v16 = objc_loadWeakRetained(a1 + 6);
  [v16 _updateWithHypothesis:v12];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithHypothesis:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Updating agenda entry with hypothesis: [%@]. Agenda entry: [%@].", &v14, 0x16u);
  }

  if (self->_latestHypothesis != v5)
  {
    objc_storeStrong(&self->_latestHypothesis, a3);
    v7 = [(EKTravelEngineAgendaEntry *)self throttle];
    v8 = [(EKTravelEngineHypothesis *)v5 conservativeDepartureDate];
    [v7 updatePredictedDepartureDate:v8];

    if (!v5)
    {
      goto LABEL_9;
    }

    v9 = [(EKTravelEngineHypothesis *)v5 conservativeDepartureDate];
    if (v9 || ([(EKTravelEngineHypothesis *)v5 suggestedDepartureDate], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
LABEL_11:

      goto LABEL_12;
    }

    v11 = [(EKTravelEngineHypothesis *)v5 aggressiveDepartureDate];

    if (!v11)
    {
LABEL_9:
      v12 = [(EKTravelEngineAgendaEntry *)self updateBlock];
      v10 = v12;
      if (v12)
      {
        (*(v12 + 16))(v12, self);
      }

      goto LABEL_11;
    }
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)createAlarmWithName:(NSObject *)a3 atDate:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_242909000, a2, a3, "Ignoring attempt to set alarm named %{public}@ for a date in the past (%{public}@)", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v2, v3, "Failed to save the geocoding result to the database successfully. Original event: [%@].  Error: [%@]");
  v4 = *MEMORY[0x277D85DE8];
}

void __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2_cold_2(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  v3 = *a2;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v4, v5, "Encountered error while geocoding.  Will not proceed to monitor route.  Location string: [%@] Error: [%@].");
  v6 = *MEMORY[0x277D85DE8];
}

@end