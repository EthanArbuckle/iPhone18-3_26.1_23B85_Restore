@interface IRSessionAnalytics
- (BOOL)_isSessionOngoing;
- (IRSessionAnalytics)initWithQueue:(id)a3 service:(id)a4;
- (void)_handleBannerEvent:(id)a3 withCandidate:(id)a4 WithMiLoPrediction:(id)a5 systemState:(id)a6;
- (void)_handleNonBannerEvent:(id)a3 forCandidate:(id)a4 forceStopSession:(BOOL)a5;
- (void)_handleSessionTimeout;
- (void)_invalidate;
- (void)_stopSessionAndSendCA:(unint64_t)a3;
- (void)contextChangedWithReason:(id)a3 systemState:(id)a4;
- (void)event:(id)a3 forCandidate:(id)a4 miloPrediction:(id)a5 systemState:(id)a6;
@end

@implementation IRSessionAnalytics

- (BOOL)_isSessionOngoing
{
  v2 = [(IRSessionAnalytics *)self timer];
  v3 = v2 != 0;

  return v3;
}

- (IRSessionAnalytics)initWithQueue:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IRSessionAnalytics;
  v8 = [(IRSessionAnalytics *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRSessionAnalytics *)v8 setQueue:v6];
    [(IRSessionAnalytics *)v9 setService:v7];
  }

  return v9;
}

- (void)event:(id)a3 forCandidate:(id)a4 miloPrediction:(id)a5 systemState:(id)a6
{
  v14 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(IRSessionAnalytics *)self queue];
  dispatch_assert_queue_V2(v13);

  if ([v12 isBannerEvent])
  {
    [(IRSessionAnalytics *)self _handleBannerEvent:v12 withCandidate:v11 WithMiLoPrediction:v14 systemState:v10];
  }

  else
  {
    [(IRSessionAnalytics *)self _handleNonBannerEvent:v12 forCandidate:v11 forceStopSession:0];
  }
}

- (void)contextChangedWithReason:(id)a3 systemState:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(IRSessionAnalytics *)self queue];
  dispatch_assert_queue_V2(v7);

  if ((([v8 isEqual:@"Output device"] & 1) != 0 || objc_msgSend(v8, "isEqual:", @"Predicted output device")) && -[IRSessionAnalytics _isSessionOngoing](self, "_isSessionOngoing") && objc_msgSend(v6, "isHeadphonesRoutedOrPredicted"))
  {
    [(IRSessionAnalytics *)self _stopSessionAndSendCA:3];
  }
}

- (void)_handleBannerEvent:(id)a3 withCandidate:(id)a4 WithMiLoPrediction:(id)a5 systemState:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v10 = a4;
  v29 = a5;
  v11 = a6;
  if ([(IRSessionAnalytics *)self _isSessionOngoing])
  {
    [(IRSessionAnalytics *)self _stopSessionAndSendCA:6];
  }

  v12 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v13 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    [v30 eventType];
    v15 = IRMediaEventTypeToString();
    v16 = [v10 candidateIdentifier];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v29, "canUse")}];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "isHeadphonesRoutedOrPredicted")}];
    *buf = 136316418;
    v34 = "#session-analytics, ";
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v15;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v17;
    v43 = 2112;
    v44 = v18;
    _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_INFO, "%s[%@], Starting with eventType: %@, candidateIdentifier: %@, miloCanUse: %@, isHeadphonesRoutedOrPredicted: %@", buf, 0x3Eu);
  }

  [(IRSessionAnalytics *)self setBannerEvent:v30];
  [(IRSessionAnalytics *)self setBannerCandidate:v10];
  [(IRSessionAnalytics *)self setBannerMiLoPrediction:v29];
  if ([v11 isHeadphonesRoutedOrPredicted] || !v10 || (objc_msgSend(v10, "candidateIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v20))
  {
    [(IRSessionAnalytics *)self _stopSessionAndSendCA:7];
  }

  else
  {
    objc_initWeak(buf, self);
    v21 = [IRTimer alloc];
    v22 = +[IRPreferences shared];
    v23 = [v22 coreAnalyticsSessionPeriodInSeconds];
    [v23 doubleValue];
    v25 = v24;
    v26 = [(IRSessionAnalytics *)self queue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __86__IRSessionAnalytics__handleBannerEvent_withCandidate_WithMiLoPrediction_systemState___block_invoke;
    v31[3] = &unk_2797E0C18;
    objc_copyWeak(&v32, buf);
    v27 = [(IRTimer *)v21 initWithInterval:0 repeats:v26 queue:v31 block:v25];
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

- (void)_handleNonBannerEvent:(id)a3 forCandidate:(id)a4 forceStopSession:(BOOL)a5
{
  v22 = a3;
  v8 = a4;
  if ([(IRSessionAnalytics *)self _isSessionOngoing])
  {
    v9 = [IREventDO eventDOWithMediaType:5];
    v10 = [v22 isEqual:v9];

    v11 = [IREventDO eventDOWithMediaType:0];
    v12 = [v22 isEqual:v11];

    if ((v10 & 1) != 0 || v12)
    {
      [(IRSessionAnalytics *)self setChosenCandidate:v8];
      if (!v10 || a5)
      {
        v13 = [(IRSessionAnalytics *)self bannerCandidate];
        v14 = [v13 candidateIdentifier];
        v15 = [(IRSessionAnalytics *)self chosenCandidate];
        v16 = [v15 candidateIdentifier];
        v17 = [v14 isEqual:v16];

        if (!v8)
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
        v21 = [v8 candidateIdentifier];

        if (!v21)
        {
LABEL_16:
          v20 = 7;
        }

        [(IRSessionAnalytics *)self _stopSessionAndSendCA:v20];
      }

      else
      {
        [(IRSessionAnalytics *)self setPlaybackStartEvent:v22];
      }
    }
  }
}

- (void)_handleSessionTimeout
{
  v3 = [(IRSessionAnalytics *)self playbackStartEvent];

  if (v3)
  {
    v5 = [(IRSessionAnalytics *)self playbackStartEvent];
    v4 = [(IRSessionAnalytics *)self chosenCandidate];
    [(IRSessionAnalytics *)self _handleNonBannerEvent:v5 forCandidate:v4 forceStopSession:1];
  }

  else
  {

    [(IRSessionAnalytics *)self _stopSessionAndSendCA:0];
  }
}

- (void)_stopSessionAndSendCA:(unint64_t)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  v7 = 0x277CCA000;
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    log = v6;
    v48 = [(IRSessionAnalytics *)self bannerEvent];
    [v48 eventType];
    IRMediaEventTypeToString();
    v44 = v50 = a3;
    v8 = [(IRSessionAnalytics *)self bannerCandidate];
    v9 = [v8 candidateIdentifier];
    v10 = [(IRSessionAnalytics *)self chosenCandidate];
    v11 = [v10 candidateIdentifier];
    v12 = IRSessionAnalyticsMetricPostBannerInteractionToString(v50);
    v13 = MEMORY[0x277CCABB0];
    v14 = [(IRSessionAnalytics *)self bannerEvent];
    v15 = [v13 numberWithBool:{objc_msgSend(v14, "isOutsideApp")}];
    *buf = 136316674;
    v53 = "#session-analytics, ";
    v54 = 2112;
    v55 = v5;
    v56 = 2112;
    v57 = v44;
    v58 = 2112;
    v59 = v9;
    v60 = 2112;
    v61 = v11;
    v62 = 2112;
    v63 = v12;
    v64 = 2112;
    v65 = v15;
    _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_INFO, "%s[%@], Stopping with eventType: %@, bannerCandidateIdentifier: %@, chosenCandidateIdentifier: %@, postBannerInteraction: %@, isOutsideApp: %@", buf, 0x48u);

    v7 = 0x277CCA000uLL;
    a3 = v50;
  }

  v16 = [IRSessionAnalyticsMetric alloc];
  loga = [(IRSessionAnalytics *)self service];
  v51 = [loga clientIdentifier];
  v17 = *(v7 + 2992);
  v18 = v7;
  v45 = [(IRSessionAnalytics *)self bannerEvent];
  v43 = [v45 bundleID];
  v49 = [v17 numberWithInteger:{+[IRAnalyticsUtilities getRedactedBundleID:](IRAnalyticsUtilities, "getRedactedBundleID:", v43)}];
  v19 = *(v7 + 2992);
  v42 = [(IRSessionAnalytics *)self bannerEvent];
  v38 = [v19 numberWithUnsignedInteger:{IRSessionAnalyticsMetricEventTypeFromEvent(objc_msgSend(v42, "eventType"))}];
  v20 = *(v7 + 2992);
  v41 = [(IRSessionAnalytics *)self bannerMiLoPrediction];
  v21 = [v20 numberWithBool:{objc_msgSend(v41, "canUse")}];
  v40 = [(IRSessionAnalytics *)self bannerCandidate];
  v35 = [IRAnalyticsUtilities candidateTypeForCandidate:v40];
  v39 = [(IRSessionAnalytics *)self bannerCandidate];
  v34 = [IRAnalyticsUtilities candidateModelTypeForCandidate:v39];
  v36 = [(IRSessionAnalytics *)self chosenCandidate];
  v22 = [IRAnalyticsUtilities candidateTypeForCandidate:v36];
  v23 = [(IRSessionAnalytics *)self chosenCandidate];
  v24 = [IRAnalyticsUtilities candidateModelTypeForCandidate:v23];
  v25 = [*(v7 + 2992) numberWithUnsignedInteger:a3];
  v26 = *(v18 + 2992);
  v27 = [(IRSessionAnalytics *)self bannerEvent];
  v28 = [v26 numberWithBool:{objc_msgSend(v27, "isOutsideApp")}];
  v37 = [(IRSessionAnalyticsMetric *)v16 initWithClientIdentifier:v51 internalAppName:v49 eventType:v38 miloAvailable:v21 bannerCandidateType:v35 bannerCandidateModelType:v34 chosenCandidateType:v22 chosenCandidateModelType:v24 postBannerInteraction:v25 isOutsideApp:v28];

  v29 = [(IRSessionAnalyticsMetric *)v37 name];
  v30 = [(IRSessionAnalytics *)self service];
  v31 = [v30 clientIdentifier];
  v32 = [(IRSessionAnalyticsMetric *)v37 dictionaryRepresentation];
  [IRAnalyticsManager sendEventLazyForEventIdentifier:v29 clientIdentifier:v31 analytics:v32];

  [(IRSessionAnalytics *)self _invalidate];
  v33 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v3 = [(IRSessionAnalytics *)self timer];
  [v3 invalidate];

  [(IRSessionAnalytics *)self setTimer:0];
  [(IRSessionAnalytics *)self setBannerEvent:0];
  [(IRSessionAnalytics *)self setBannerCandidate:0];
  [(IRSessionAnalytics *)self setBannerMiLoPrediction:0];
  [(IRSessionAnalytics *)self setChosenCandidate:0];

  [(IRSessionAnalytics *)self setPlaybackStartEvent:0];
}

@end