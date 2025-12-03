@interface IRStatisticsManager
- (BOOL)_initStatistics;
- (BOOL)_isAllowedToCollectStatisticsForDate:(id)date;
- (IRStatisticsManager)initWithStore:(id)store;
- (void)_updateMiLoStatisticsIfNeededWithReason:(id)reason mode:(int64_t)mode miloPrediction:(id)prediction;
- (void)_updateModeStatisticsIfNeededWithReason:(id)reason mode:(int64_t)mode date:(id)date;
- (void)bannerContextWithDate:(id)date;
- (void)clearStatistics:(id)statistics;
- (void)contextChangedWithReason:(id)reason mode:(int64_t)mode miloPrediction:(id)prediction date:(id)date;
- (void)event:(id)event forCandidate:(id)candidate inspections:(id)inspections date:(id)date;
@end

@implementation IRStatisticsManager

- (IRStatisticsManager)initWithStore:(id)store
{
  v17 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = IRStatisticsManager;
  v5 = [(IRStatisticsManager *)&v12 init];
  v6 = v5;
  if (v5 && ([(IRStatisticsManager *)v5 setStore:storeCopy], [(IRStatisticsManager *)v6 setMode:0], ![(IRStatisticsManager *)v6 _initStatistics]))
  {
    v8 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v9 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "#statistics-manager, ";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Statistics init error] Couldnt fetch statistics", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)contextChangedWithReason:(id)reason mode:(int64_t)mode miloPrediction:(id)prediction date:(id)date
{
  v23 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  predictionCopy = prediction;
  dateCopy = date;
  if ([reasonCopy isEqual:@"App in focus"])
  {
    [(IRStatisticsManager *)self setAppLaunchDate:dateCopy];
    [(IRStatisticsManager *)self setTimeToBannerInMilliSeconds:0];
  }

  if ([(IRStatisticsManager *)self _isAllowedToCollectStatisticsForDate:dateCopy])
  {
    [(IRStatisticsManager *)self _updateMiLoStatisticsIfNeededWithReason:reasonCopy mode:mode miloPrediction:predictionCopy];
    [(IRStatisticsManager *)self _updateModeStatisticsIfNeededWithReason:reasonCopy mode:mode date:dateCopy];
    store = [(IRStatisticsManager *)self store];
    statistics = [(IRStatisticsManager *)self statistics];
    v15 = [store updateStatistics:statistics];

    if ((v15 & 1) == 0)
    {
      v16 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v17 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "#statistics-manager, ";
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_25543D000, v17, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Statistics update error context] Couldnt update statistics upon context change", &v19, 0x16u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)event:(id)event forCandidate:(id)candidate inspections:(id)inspections date:(id)date
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  candidateCopy = candidate;
  inspectionsCopy = inspections;
  if ([(IRStatisticsManager *)self _isAllowedToCollectStatisticsForDate:date])
  {
    v13 = [IREventDO eventDOWithMediaType:0];
    v14 = [eventCopy isEqual:v13];

    if (v14)
    {
      if ([candidateCopy containsAirplayTarget])
      {
        statistics = [(IRStatisticsManager *)self statistics];
        statistics2 = [(IRStatisticsManager *)self statistics];
        v17 = [statistics copyWithReplacementNumberOfPickerChoiceEvents:{objc_msgSend(statistics2, "numberOfPickerChoiceEvents") + 1}];
        [(IRStatisticsManager *)self setStatistics:v17];

        v18 = [inspectionsCopy objectForKeyedSubscript:*MEMORY[0x277D21250]];
        candidates = [v18 candidates];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __59__IRStatisticsManager_event_forCandidate_inspections_date___block_invoke;
        v30[3] = &unk_2797E20C8;
        v31 = candidateCopy;
        v20 = [candidates firstWhere:v30];

        if (v20)
        {
          statistics3 = [(IRStatisticsManager *)self statistics];
          statistics4 = [(IRStatisticsManager *)self statistics];
          v23 = [statistics3 copyWithReplacementNumberOfCorrectPickerChoiceEvents:{objc_msgSend(statistics4, "numberOfCorrectPickerChoiceEvents") + 1}];
          [(IRStatisticsManager *)self setStatistics:v23];
        }

        store = [(IRStatisticsManager *)self store];
        statistics5 = [(IRStatisticsManager *)self statistics];
        v26 = [store updateStatistics:statistics5];

        if ((v26 & 1) == 0)
        {
          v27 = dispatch_get_specific(*MEMORY[0x277D21308]);
          v28 = *MEMORY[0x277D21260];
          if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v33 = "#statistics-manager, ";
            v34 = 2112;
            v35 = v27;
            _os_log_impl(&dword_25543D000, v28, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Statistics update error event] Couldnt update statistics upon adding event", buf, 0x16u);
          }
        }
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

BOOL __59__IRStatisticsManager_event_forCandidate_inspections_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 inspectionGenerator];
  v5 = [v4 candidate];
  v6 = [v5 candidateIdentifier];
  v7 = [*(a1 + 32) candidateIdentifier];
  if ([v6 isEqual:v7])
  {
    v8 = [v3 inspectionGenerator];
    v9 = [v8 classification] > 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)clearStatistics:(id)statistics
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [IRStatisticsDO statisticsDOWithNumberOfContextChanges:0 numberOfMiLoPredictions:0 numberOfMiLoPredictionsInUpdatesMode:0 lastMiLoLSLItems:0 lastMiLoQualityReasonBitmap:0 lastMiLoQuality:0 lastMiLoModels:0 timeInUpdatesModeInSeconds:0 numberOfPickerChoiceEvents:0 numberOfCorrectPickerChoiceEvents:0 lastClearDate:statistics];
  [(IRStatisticsManager *)self setStatistics:v4];

  store = [(IRStatisticsManager *)self store];
  statistics = [(IRStatisticsManager *)self statistics];
  v7 = [store updateStatistics:statistics];

  if ((v7 & 1) == 0)
  {
    v8 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v9 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "#statistics-manager, ";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Statistics clear error] Couldnt clear statistics", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)bannerContextWithDate:(id)date
{
  v4 = MEMORY[0x277CCABB0];
  dateCopy = date;
  appLaunchDate = [(IRStatisticsManager *)self appLaunchDate];
  [dateCopy timeIntervalSinceDate:appLaunchDate];
  v8 = v7;

  v9 = [v4 numberWithDouble:v8 * 1000.0];
  [(IRStatisticsManager *)self setTimeToBannerInMilliSeconds:v9];

  [(IRStatisticsManager *)self setAppLaunchDate:0];
}

- (BOOL)_isAllowedToCollectStatisticsForDate:(id)date
{
  dateCopy = date;
  statistics = [(IRStatisticsManager *)self statistics];
  lastClearDate = [statistics lastClearDate];
  v7 = +[IRPreferences shared];
  coreAnalyticsStatisticsCollectionPeriodInSeconds = [v7 coreAnalyticsStatisticsCollectionPeriodInSeconds];
  [coreAnalyticsStatisticsCollectionPeriodInSeconds doubleValue];
  v9 = [lastClearDate dateByAddingTimeInterval:?];
  v10 = [dateCopy isEarlierThan:v9];

  return v10;
}

- (BOOL)_initStatistics
{
  store = [(IRStatisticsManager *)self store];
  fetchStatistics = [store fetchStatistics];
  [(IRStatisticsManager *)self setStatistics:fetchStatistics];

  statistics = [(IRStatisticsManager *)self statistics];

  if (statistics)
  {
    statistics2 = [(IRStatisticsManager *)self statistics];
    lastClearDate = [statistics2 lastClearDate];

    if (!lastClearDate)
    {
      statistics3 = [(IRStatisticsManager *)self statistics];
      date = [MEMORY[0x277CBEAA8] date];
      v10 = [statistics3 copyWithReplacementLastClearDate:date];
      [(IRStatisticsManager *)self setStatistics:v10];
    }
  }

  return statistics != 0;
}

- (void)_updateMiLoStatisticsIfNeededWithReason:(id)reason mode:(int64_t)mode miloPrediction:(id)prediction
{
  predictionCopy = prediction;
  if ([reason isEqual:@"MiLo prediction"] && objc_msgSend(predictionCopy, "canLabel"))
  {
    statistics = [(IRStatisticsManager *)self statistics];
    statistics2 = [(IRStatisticsManager *)self statistics];
    v10 = [statistics copyWithReplacementNumberOfMiLoPredictions:{objc_msgSend(statistics2, "numberOfMiLoPredictions") + 1}];
    [(IRStatisticsManager *)self setStatistics:v10];

    if (mode == 1)
    {
      statistics3 = [(IRStatisticsManager *)self statistics];
      statistics4 = [(IRStatisticsManager *)self statistics];
      v13 = [statistics3 copyWithReplacementNumberOfMiLoPredictionsInUpdatesMode:{objc_msgSend(statistics4, "numberOfMiLoPredictionsInUpdatesMode") + 1}];
      [(IRStatisticsManager *)self setStatistics:v13];
    }

    statistics5 = [(IRStatisticsManager *)self statistics];
    v15 = [statistics5 copyWithReplacementLastMiLoModels:0];
    [(IRStatisticsManager *)self setStatistics:v15];

    statistics6 = [(IRStatisticsManager *)self statistics];
    v17 = [statistics6 copyWithReplacementLastMiLoQuality:{objc_msgSend(predictionCopy, "isMapValid")}];
    [(IRStatisticsManager *)self setStatistics:v17];

    statistics7 = [(IRStatisticsManager *)self statistics];
    v19 = [statistics7 copyWithReplacementLastMiLoQualityReasonBitmap:0];
    [(IRStatisticsManager *)self setStatistics:v19];

    statistics8 = [(IRStatisticsManager *)self statistics];
    scores = [predictionCopy scores];
    v22 = [statistics8 copyWithReplacementLastMiLoLSLItems:{objc_msgSend(scores, "count")}];
    [(IRStatisticsManager *)self setStatistics:v22];
  }
}

- (void)_updateModeStatisticsIfNeededWithReason:(id)reason mode:(int64_t)mode date:(id)date
{
  reasonCopy = reason;
  dateCopy = date;
  if (mode == 1)
  {
    if (([reasonCopy isEqual:@"Request current context"] & 1) == 0)
    {
      statistics = [(IRStatisticsManager *)self statistics];
      statistics2 = [(IRStatisticsManager *)self statistics];
      v11 = [statistics copyWithReplacementNumberOfContextChanges:{objc_msgSend(statistics2, "numberOfContextChanges") + 1}];
      [(IRStatisticsManager *)self setStatistics:v11];
    }

    if (![(IRStatisticsManager *)self mode])
    {
      [(IRStatisticsManager *)self setMode:1];
      [(IRStatisticsManager *)self setModeDate:dateCopy];
    }
  }

  else
  {
    [(IRStatisticsManager *)self mode];
  }

  mode = [(IRStatisticsManager *)self mode];
  if (!mode && mode == 1)
  {
    [(IRStatisticsManager *)self setMode:0];
    statistics3 = [(IRStatisticsManager *)self statistics];
    statistics4 = [(IRStatisticsManager *)self statistics];
    timeInUpdatesModeInSeconds = [statistics4 timeInUpdatesModeInSeconds];
    modeDate = [(IRStatisticsManager *)self modeDate];
    [dateCopy timeIntervalSinceDate:modeDate];
    v18 = [statistics3 copyWithReplacementTimeInUpdatesModeInSeconds:timeInUpdatesModeInSeconds + v17];
    [(IRStatisticsManager *)self setStatistics:v18];
  }
}

@end