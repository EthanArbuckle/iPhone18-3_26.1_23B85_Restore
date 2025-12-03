@interface IRSessionAnalytics
- (BOOL)_isSessionOngoing;
- (IRSessionAnalytics)initWithQueue:(id)queue service:(id)service;
- (void)_handleBannerEvent:(id)event withCandidate:(id)candidate WithMiLoPrediction:(id)prediction systemState:(id)state;
- (void)_handleNonBannerEvent:(id)event forCandidate:(id)candidate forceStopSession:(BOOL)session;
- (void)_handleSessionTimeout;
- (void)_invalidate;
- (void)_stopSessionAndSendCA:(unint64_t)a;
- (void)contextChangedWithReason:(id)reason systemState:(id)state;
- (void)event:(id)event forCandidate:(id)candidate miloPrediction:(id)prediction systemState:(id)state;
@end

@implementation IRSessionAnalytics

- (BOOL)_isSessionOngoing
{
  timer = [(IRSessionAnalytics *)self timer];
  v3 = timer != 0;

  return v3;
}

- (IRSessionAnalytics)initWithQueue:(id)queue service:(id)service
{
  queueCopy = queue;
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = IRSessionAnalytics;
  v8 = [(IRSessionAnalytics *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRSessionAnalytics *)v8 setQueue:queueCopy];
    [(IRSessionAnalytics *)v9 setService:serviceCopy];
  }

  return v9;
}

- (void)event:(id)event forCandidate:(id)candidate miloPrediction:(id)prediction systemState:(id)state
{
  predictionCopy = prediction;
  stateCopy = state;
  candidateCopy = candidate;
  eventCopy = event;
  queue = [(IRSessionAnalytics *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([eventCopy isBannerEvent])
  {
    [(IRSessionAnalytics *)self _handleBannerEvent:eventCopy withCandidate:candidateCopy WithMiLoPrediction:predictionCopy systemState:stateCopy];
  }

  else
  {
    [(IRSessionAnalytics *)self _handleNonBannerEvent:eventCopy forCandidate:candidateCopy forceStopSession:0];
  }
}

- (void)contextChangedWithReason:(id)reason systemState:(id)state
{
  reasonCopy = reason;
  stateCopy = state;
  queue = [(IRSessionAnalytics *)self queue];
  dispatch_assert_queue_V2(queue);

  if ((([reasonCopy isEqual:@"Output device"] & 1) != 0 || objc_msgSend(reasonCopy, "isEqual:", @"Predicted output device")) && -[IRSessionAnalytics _isSessionOngoing](self, "_isSessionOngoing") && objc_msgSend(stateCopy, "isHeadphonesRoutedOrPredicted"))
  {
    [(IRSessionAnalytics *)self _stopSessionAndSendCA:3];
  }
}

- (void)_handleBannerEvent:(id)event withCandidate:(id)candidate WithMiLoPrediction:(id)prediction systemState:(id)state
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  candidateCopy = candidate;
  predictionCopy = prediction;
  stateCopy = state;
  if ([(IRSessionAnalytics *)self _isSessionOngoing])
  {
    [(IRSessionAnalytics *)self _stopSessionAndSendCA:6];
  }

  v12 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v13 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    [eventCopy eventType];
    v15 = IRMediaEventTypeToString();
    candidateIdentifier = [candidateCopy candidateIdentifier];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(predictionCopy, "canUse")}];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(stateCopy, "isHeadphonesRoutedOrPredicted")}];
    *buf = 136316418;
    v34 = "#session-analytics, ";
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v15;
    v39 = 2112;
    v40 = candidateIdentifier;
    v41 = 2112;
    v42 = v17;
    v43 = 2112;
    v44 = v18;
    _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_INFO, "%s[%@], Starting with eventType: %@, candidateIdentifier: %@, miloCanUse: %@, isHeadphonesRoutedOrPredicted: %@", buf, 0x3Eu);
  }

  [(IRSessionAnalytics *)self setBannerEvent:eventCopy];
  [(IRSessionAnalytics *)self setBannerCandidate:candidateCopy];
  [(IRSessionAnalytics *)self setBannerMiLoPrediction:predictionCopy];
  if ([stateCopy isHeadphonesRoutedOrPredicted] || !candidateCopy || (objc_msgSend(candidateCopy, "candidateIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v20))
  {
    [(IRSessionAnalytics *)self _stopSessionAndSendCA:7];
  }

  else
  {
    objc_initWeak(buf, self);
    v21 = [IRTimer alloc];
    v22 = +[IRPreferences shared];
    coreAnalyticsSessionPeriodInSeconds = [v22 coreAnalyticsSessionPeriodInSeconds];
    [coreAnalyticsSessionPeriodInSeconds doubleValue];
    v25 = v24;
    queue = [(IRSessionAnalytics *)self queue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __86__IRSessionAnalytics__handleBannerEvent_withCandidate_WithMiLoPrediction_systemState___block_invoke;
    v31[3] = &unk_2797E0C18;
    objc_copyWeak(&v32, buf);
    v27 = [(IRTimer *)v21 initWithInterval:0 repeats:queue queue:v31 block:v25];
    [(IRSessionAnalytics *)self setTimer:v27];

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __86__IRSessionAnalytics__handleBannerEvent_withCandidate_WithMiLoPrediction_systemState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleSessionTimeout];
    WeakRetained = v2;
  }
}

- (void)_handleNonBannerEvent:(id)event forCandidate:(id)candidate forceStopSession:(BOOL)session
{
  eventCopy = event;
  candidateCopy = candidate;
  if ([(IRSessionAnalytics *)self _isSessionOngoing])
  {
    v9 = [IREventDO eventDOWithMediaType:5];
    v10 = [eventCopy isEqual:v9];

    v11 = [IREventDO eventDOWithMediaType:0];
    v12 = [eventCopy isEqual:v11];

    if ((v10 & 1) != 0 || v12)
    {
      [(IRSessionAnalytics *)self setChosenCandidate:candidateCopy];
      if (!v10 || session)
      {
        bannerCandidate = [(IRSessionAnalytics *)self bannerCandidate];
        candidateIdentifier = [bannerCandidate candidateIdentifier];
        chosenCandidate = [(IRSessionAnalytics *)self chosenCandidate];
        candidateIdentifier2 = [chosenCandidate candidateIdentifier];
        v17 = [candidateIdentifier isEqual:candidateIdentifier2];

        if (!candidateCopy)
        {
          goto LABEL_16;
        }

        v18 = 4;
        if (!v17)
        {
          v18 = 5;
        }

        v19 = 1;
        if (!v17)
        {
          v19 = 2;
        }

        v20 = v10 ? v18 : v19;
        candidateIdentifier3 = [candidateCopy candidateIdentifier];

        if (!candidateIdentifier3)
        {
LABEL_16:
          v20 = 7;
        }

        [(IRSessionAnalytics *)self _stopSessionAndSendCA:v20];
      }

      else
      {
        [(IRSessionAnalytics *)self setPlaybackStartEvent:eventCopy];
      }
    }
  }
}

- (void)_handleSessionTimeout
{
  playbackStartEvent = [(IRSessionAnalytics *)self playbackStartEvent];

  if (playbackStartEvent)
  {
    playbackStartEvent2 = [(IRSessionAnalytics *)self playbackStartEvent];
    chosenCandidate = [(IRSessionAnalytics *)self chosenCandidate];
    [(IRSessionAnalytics *)self _handleNonBannerEvent:playbackStartEvent2 forCandidate:chosenCandidate forceStopSession:1];
  }

  else
  {

    [(IRSessionAnalytics *)self _stopSessionAndSendCA:0];
  }
}

- (void)_stopSessionAndSendCA:(unint64_t)a
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  v7 = 0x277CCA000;
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    log = v6;
    bannerEvent = [(IRSessionAnalytics *)self bannerEvent];
    [bannerEvent eventType];
    IRMediaEventTypeToString();
    v44 = v50 = a;
    bannerCandidate = [(IRSessionAnalytics *)self bannerCandidate];
    candidateIdentifier = [bannerCandidate candidateIdentifier];
    chosenCandidate = [(IRSessionAnalytics *)self chosenCandidate];
    candidateIdentifier2 = [chosenCandidate candidateIdentifier];
    v12 = IRSessionAnalyticsMetricPostBannerInteractionToString(v50);
    v13 = MEMORY[0x277CCABB0];
    bannerEvent2 = [(IRSessionAnalytics *)self bannerEvent];
    v15 = [v13 numberWithBool:{objc_msgSend(bannerEvent2, "isOutsideApp")}];
    *buf = 136316674;
    v53 = "#session-analytics, ";
    v54 = 2112;
    v55 = v5;
    v56 = 2112;
    v57 = v44;
    v58 = 2112;
    v59 = candidateIdentifier;
    v60 = 2112;
    v61 = candidateIdentifier2;
    v62 = 2112;
    v63 = v12;
    v64 = 2112;
    v65 = v15;
    _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_INFO, "%s[%@], Stopping with eventType: %@, bannerCandidateIdentifier: %@, chosenCandidateIdentifier: %@, postBannerInteraction: %@, isOutsideApp: %@", buf, 0x48u);

    v7 = 0x277CCA000uLL;
    a = v50;
  }

  v16 = [IRSessionAnalyticsMetric alloc];
  loga = [(IRSessionAnalytics *)self service];
  clientIdentifier = [loga clientIdentifier];
  v17 = *(v7 + 2992);
  v18 = v7;
  bannerEvent3 = [(IRSessionAnalytics *)self bannerEvent];
  bundleID = [bannerEvent3 bundleID];
  v49 = [v17 numberWithInteger:{+[IRAnalyticsUtilities getRedactedBundleID:](IRAnalyticsUtilities, "getRedactedBundleID:", bundleID)}];
  v19 = *(v7 + 2992);
  bannerEvent4 = [(IRSessionAnalytics *)self bannerEvent];
  v38 = [v19 numberWithUnsignedInteger:{IRSessionAnalyticsMetricEventTypeFromEvent(objc_msgSend(bannerEvent4, "eventType"))}];
  v20 = *(v7 + 2992);
  bannerMiLoPrediction = [(IRSessionAnalytics *)self bannerMiLoPrediction];
  v21 = [v20 numberWithBool:{objc_msgSend(bannerMiLoPrediction, "canUse")}];
  bannerCandidate2 = [(IRSessionAnalytics *)self bannerCandidate];
  v35 = [IRAnalyticsUtilities candidateTypeForCandidate:bannerCandidate2];
  bannerCandidate3 = [(IRSessionAnalytics *)self bannerCandidate];
  v34 = [IRAnalyticsUtilities candidateModelTypeForCandidate:bannerCandidate3];
  chosenCandidate2 = [(IRSessionAnalytics *)self chosenCandidate];
  v22 = [IRAnalyticsUtilities candidateTypeForCandidate:chosenCandidate2];
  chosenCandidate3 = [(IRSessionAnalytics *)self chosenCandidate];
  v24 = [IRAnalyticsUtilities candidateModelTypeForCandidate:chosenCandidate3];
  v25 = [*(v7 + 2992) numberWithUnsignedInteger:a];
  v26 = *(v18 + 2992);
  bannerEvent5 = [(IRSessionAnalytics *)self bannerEvent];
  v28 = [v26 numberWithBool:{objc_msgSend(bannerEvent5, "isOutsideApp")}];
  v37 = [(IRSessionAnalyticsMetric *)v16 initWithClientIdentifier:clientIdentifier internalAppName:v49 eventType:v38 miloAvailable:v21 bannerCandidateType:v35 bannerCandidateModelType:v34 chosenCandidateType:v22 chosenCandidateModelType:v24 postBannerInteraction:v25 isOutsideApp:v28];

  name = [(IRSessionAnalyticsMetric *)v37 name];
  service = [(IRSessionAnalytics *)self service];
  clientIdentifier2 = [service clientIdentifier];
  dictionaryRepresentation = [(IRSessionAnalyticsMetric *)v37 dictionaryRepresentation];
  [IRAnalyticsManager sendEventLazyForEventIdentifier:name clientIdentifier:clientIdentifier2 analytics:dictionaryRepresentation];

  [(IRSessionAnalytics *)self _invalidate];
  v33 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  timer = [(IRSessionAnalytics *)self timer];
  [timer invalidate];

  [(IRSessionAnalytics *)self setTimer:0];
  [(IRSessionAnalytics *)self setBannerEvent:0];
  [(IRSessionAnalytics *)self setBannerCandidate:0];
  [(IRSessionAnalytics *)self setBannerMiLoPrediction:0];
  [(IRSessionAnalytics *)self setChosenCandidate:0];

  [(IRSessionAnalytics *)self setPlaybackStartEvent:0];
}

@end