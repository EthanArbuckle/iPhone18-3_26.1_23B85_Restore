@interface IRHistoryManager
- (IRHistoryManager)initWithStore:(id)a3 miloFeedback:(id)a4;
- (IRMiLoFeedbackProvider)miloFeedback;
- (id)_labelMiLoIfNeeded:(id)a3 lastMiLoLabel:(id)a4 shouldLabelEventWithMilo:(BOOL)a5;
- (void)addEvent:(id)a3 forCandidateIdentifier:(id)a4 withSystemState:(id)a5 andMiloPrediction:(id)a6;
- (void)synchronizeAndFetchFromDBOnDisk;
@end

@implementation IRHistoryManager

- (IRHistoryManager)initWithStore:(id)a3 miloFeedback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IRHistoryManager;
  v8 = [(IRHistoryManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRHistoryManager *)v8 setStore:v6];
    [(IRHistoryManager *)v9 setMiloFeedback:v7];
    [(IRHistoryManager *)v9 synchronizeAndFetchFromDBOnDisk];
  }

  return v9;
}

- (void)addEvent:(id)a3 forCandidateIdentifier:(id)a4 withSystemState:(id)a5 andMiloPrediction:(id)a6
{
  v79 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  LODWORD(a6) = [v10 isUserIntentionEvent];
  LODWORD(a5) = [v12 isContinuityDisplay] ^ 1;
  v14 = [v13 canLabel] & a6 & a5;
  v15 = [v13 predictionId];
  v16 = [(IRHistoryManager *)self lastMiLoLabel];
  v17 = [(IRHistoryManager *)self _labelMiLoIfNeeded:v15 lastMiLoLabel:v16 shouldLabelEventWithMilo:v14];
  [(IRHistoryManager *)self setLastMiLoLabel:v17];

  v61 = v13;
  if (v14 == 1)
  {
    v18 = [v13 predictionId];
    v19 = [v13 predictionId];
    v62 = [IRMiLoPredictionEventDO miLoPredictionEventDOWithLabel:v18 predictionId:v19];
  }

  else
  {
    v62 = [IRMiLoPredictionEventDO miLoPredictionEventDOWithLabel:0 predictionId:0];
  }

  v20 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v21 = *MEMORY[0x277D21268];
  if (os_log_type_enabled(*MEMORY[0x277D21268], OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    [v10 name];
    v59 = v12;
    v24 = v23 = v11;
    v25 = [MEMORY[0x277D212B0] eventTypeStringEventDO:v10];
    v26 = [MEMORY[0x277D212B0] eventSubTypeStringEventDO:v10];
    v27 = [v62 label];
    v28 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    *buf = 136316930;
    v64 = "#history-manager, ";
    v65 = 2112;
    v66 = v20;
    v67 = 2112;
    v68 = v24;
    v69 = 2112;
    v70 = v25;
    v71 = 2112;
    v72 = v26;
    v73 = 2112;
    v74 = v23;
    v75 = 2112;
    v76 = v27;
    v77 = 2112;
    v78 = v28;
    _os_log_impl(&dword_25543D000, v22, OS_LOG_TYPE_DEFAULT, "%s[%@], Adding event (%@) type:%@, subtype:%@ to candidate:%@, miloLabel:%@, shouldLabelEventWithMilo:%@", buf, 0x52u);

    v11 = v23;
    v12 = v59;
  }

  v29 = [MEMORY[0x277CBEAA8] now];
  v30 = [v10 bundleID];
  v31 = IRAVInitialRouteSharingPolicyForBundleIdentifier(v30);
  v32 = [IRHistoryEventDO historyEventDOWithDate:v29 candidateIdentifier:v11 event:v10 miloPredictionEvent:v62 systemState:v12 sharingPolicy:v31];

  v33 = MEMORY[0x277CBEB18];
  v34 = [(IRHistoryManager *)self historyEventsContainer];
  v35 = [v34 historyEvents];
  v36 = [v33 arrayWithArray:v35];

  [v36 addObject:v32];
  v37 = [v36 count];
  v38 = +[IRPreferences shared];
  v39 = [v38 numberOfHistoryEventsInCache];
  v40 = [v39 unsignedIntValue];

  if (v37 > v40)
  {
    [v36 removeObjectAtIndex:0];
  }

  v41 = [[IRHistoryEventsContainerDO alloc] initWithHistoryEvents:v36];
  [(IRHistoryManager *)self setHistoryEventsContainer:v41];

  v42 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v43 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    v44 = MEMORY[0x277CCABB0];
    v45 = v43;
    v46 = [(IRHistoryManager *)self historyEventsContainer];
    [v46 historyEvents];
    v60 = v32;
    v47 = v10;
    v48 = v12;
    v50 = v49 = v11;
    v51 = [v44 numberWithUnsignedInteger:{objc_msgSend(v50, "count")}];
    *buf = 136315650;
    v64 = "#history-manager, ";
    v65 = 2112;
    v66 = v42;
    v67 = 2112;
    v68 = v51;
    _os_log_impl(&dword_25543D000, v45, OS_LOG_TYPE_DEBUG, "%s[%@], Memory: Number of History events: %@", buf, 0x20u);

    v11 = v49;
    v12 = v48;
    v10 = v47;
    v32 = v60;
  }

  v52 = [(IRHistoryManager *)self store];
  v53 = +[IRPreferences shared];
  v54 = [v53 numberOfEventsToSaveInDisk];
  v55 = [v52 addHistoryEvent:v32 withLimit:{objc_msgSend(v54, "unsignedIntegerValue")}];

  if ((v55 & 1) == 0)
  {
    v56 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v57 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v64 = "#history-manager, ";
      v65 = 2112;
      v66 = v56;
      _os_log_impl(&dword_25543D000, v57, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - History manager save event error] Could not save new history event", buf, 0x16u);
    }
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (id)_labelMiLoIfNeeded:(id)a3 lastMiLoLabel:(id)a4 shouldLabelEventWithMilo:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = v9;
  if (v8)
  {
    v11 = v9;
    if (v5)
    {
      v11 = v9;
      if (([v8 isEqual:v9] & 1) == 0)
      {
        v11 = v8;

        v12 = [(IRHistoryManager *)self miloFeedback];
        [v12 addLabelWithName:v11];
      }
    }
  }

  return v11;
}

- (void)synchronizeAndFetchFromDBOnDisk
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(IRHistoryManager *)self store];
  v4 = +[IRPreferences shared];
  v5 = [v4 numberOfHistoryEventsInCache];
  v6 = [v3 fetchHistoryEventsContainerWithLimit:{objc_msgSend(v5, "unsignedIntegerValue")}];
  [(IRHistoryManager *)self setHistoryEventsContainer:v6];

  v7 = [(IRHistoryManager *)self historyEventsContainer];

  v8 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v9 = *MEMORY[0x277D21260];
  v10 = *MEMORY[0x277D21260];
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = v9;
      v13 = [(IRHistoryManager *)self historyEventsContainer];
      v14 = [v13 historyEvents];
      v15 = [v11 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      v17 = 136315650;
      v18 = "#history-manager, ";
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_DEFAULT, "%s[%@], Loading history Events container from store with %@ events", &v17, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = "#history-manager, ";
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - History manager fetch events error] Could not fetch history events container", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (IRMiLoFeedbackProvider)miloFeedback
{
  WeakRetained = objc_loadWeakRetained(&self->_miloFeedback);

  return WeakRetained;
}

@end