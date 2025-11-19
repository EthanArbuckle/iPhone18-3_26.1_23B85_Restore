@interface IRStatisticsManager
- (BOOL)_initStatistics;
- (BOOL)_isAllowedToCollectStatisticsForDate:(id)a3;
- (IRStatisticsManager)initWithStore:(id)a3;
- (void)_updateMiLoStatisticsIfNeededWithReason:(id)a3 mode:(int64_t)a4 miloPrediction:(id)a5;
- (void)_updateModeStatisticsIfNeededWithReason:(id)a3 mode:(int64_t)a4 date:(id)a5;
- (void)bannerContextWithDate:(id)a3;
- (void)clearStatistics:(id)a3;
- (void)contextChangedWithReason:(id)a3 mode:(int64_t)a4 miloPrediction:(id)a5 date:(id)a6;
- (void)event:(id)a3 forCandidate:(id)a4 inspections:(id)a5 date:(id)a6;
@end

@implementation IRStatisticsManager

- (IRStatisticsManager)initWithStore:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IRStatisticsManager;
  v5 = [(IRStatisticsManager *)&v12 init];
  v6 = v5;
  if (v5 && ([(IRStatisticsManager *)v5 setStore:v4], [(IRStatisticsManager *)v6 setMode:0], ![(IRStatisticsManager *)v6 _initStatistics]))
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

- (void)contextChangedWithReason:(id)a3 mode:(int64_t)a4 miloPrediction:(id)a5 date:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v10 isEqual:@"App in focus"])
  {
    [(IRStatisticsManager *)self setAppLaunchDate:v12];
    [(IRStatisticsManager *)self setTimeToBannerInMilliSeconds:0];
  }

  if ([(IRStatisticsManager *)self _isAllowedToCollectStatisticsForDate:v12])
  {
    [(IRStatisticsManager *)self _updateMiLoStatisticsIfNeededWithReason:v10 mode:a4 miloPrediction:v11];
    [(IRStatisticsManager *)self _updateModeStatisticsIfNeededWithReason:v10 mode:a4 date:v12];
    v13 = [(IRStatisticsManager *)self store];
    v14 = [(IRStatisticsManager *)self statistics];
    v15 = [v13 updateStatistics:v14];

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

- (void)event:(id)a3 forCandidate:(id)a4 inspections:(id)a5 date:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(IRStatisticsManager *)self _isAllowedToCollectStatisticsForDate:a6])
  {
    v13 = [IREventDO eventDOWithMediaType:0];
    v14 = [v10 isEqual:v13];

    if (v14)
    {
      if ([v11 containsAirplayTarget])
      {
        v15 = [(IRStatisticsManager *)self statistics];
        v16 = [(IRStatisticsManager *)self statistics];
        v17 = [v15 copyWithReplacementNumberOfPickerChoiceEvents:{objc_msgSend(v16, "numberOfPickerChoiceEvents") + 1}];
        [(IRStatisticsManager *)self setStatistics:v17];

        v18 = [v12 objectForKeyedSubscript:*MEMORY[0x277D21250]];
        v19 = [v18 candidates];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __59__IRStatisticsManager_event_forCandidate_inspections_date___block_invoke;
        v30[3] = &unk_2797E20C8;
        v31 = v11;
        v20 = [v19 firstWhere:v30];

        if (v20)
        {
          v21 = [(IRStatisticsManager *)self statistics];
          v22 = [(IRStatisticsManager *)self statistics];
          v23 = [v21 copyWithReplacementNumberOfCorrectPickerChoiceEvents:{objc_msgSend(v22, "numberOfCorrectPickerChoiceEvents") + 1}];
          [(IRStatisticsManager *)self setStatistics:v23];
        }

        v24 = [(IRStatisticsManager *)self store];
        v25 = [(IRStatisticsManager *)self statistics];
        v26 = [v24 updateStatistics:v25];

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

- (void)clearStatistics:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [IRStatisticsDO statisticsDOWithNumberOfContextChanges:0 numberOfMiLoPredictions:0 numberOfMiLoPredictionsInUpdatesMode:0 lastMiLoLSLItems:0 lastMiLoQualityReasonBitmap:0 lastMiLoQuality:0 lastMiLoModels:0 timeInUpdatesModeInSeconds:0 numberOfPickerChoiceEvents:0 numberOfCorrectPickerChoiceEvents:0 lastClearDate:a3];
  [(IRStatisticsManager *)self setStatistics:v4];

  v5 = [(IRStatisticsManager *)self store];
  v6 = [(IRStatisticsManager *)self statistics];
  v7 = [v5 updateStatistics:v6];

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

- (void)bannerContextWithDate:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [(IRStatisticsManager *)self appLaunchDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [v4 numberWithDouble:v8 * 1000.0];
  [(IRStatisticsManager *)self setTimeToBannerInMilliSeconds:v9];

  [(IRStatisticsManager *)self setAppLaunchDate:0];
}

- (BOOL)_isAllowedToCollectStatisticsForDate:(id)a3
{
  v4 = a3;
  v5 = [(IRStatisticsManager *)self statistics];
  v6 = [v5 lastClearDate];
  v7 = +[IRPreferences shared];
  v8 = [v7 coreAnalyticsStatisticsCollectionPeriodInSeconds];
  [v8 doubleValue];
  v9 = [v6 dateByAddingTimeInterval:?];
  v10 = [v4 isEarlierThan:v9];

  return v10;
}

- (BOOL)_initStatistics
{
  v3 = [(IRStatisticsManager *)self store];
  v4 = [v3 fetchStatistics];
  [(IRStatisticsManager *)self setStatistics:v4];

  v5 = [(IRStatisticsManager *)self statistics];

  if (v5)
  {
    v6 = [(IRStatisticsManager *)self statistics];
    v7 = [v6 lastClearDate];

    if (!v7)
    {
      v8 = [(IRStatisticsManager *)self statistics];
      v9 = [MEMORY[0x277CBEAA8] date];
      v10 = [v8 copyWithReplacementLastClearDate:v9];
      [(IRStatisticsManager *)self setStatistics:v10];
    }
  }

  return v5 != 0;
}

- (void)_updateMiLoStatisticsIfNeededWithReason:(id)a3 mode:(int64_t)a4 miloPrediction:(id)a5
{
  v23 = a5;
  if ([a3 isEqual:@"MiLo prediction"] && objc_msgSend(v23, "canLabel"))
  {
    v8 = [(IRStatisticsManager *)self statistics];
    v9 = [(IRStatisticsManager *)self statistics];
    v10 = [v8 copyWithReplacementNumberOfMiLoPredictions:{objc_msgSend(v9, "numberOfMiLoPredictions") + 1}];
    [(IRStatisticsManager *)self setStatistics:v10];

    if (a4 == 1)
    {
      v11 = [(IRStatisticsManager *)self statistics];
      v12 = [(IRStatisticsManager *)self statistics];
      v13 = [v11 copyWithReplacementNumberOfMiLoPredictionsInUpdatesMode:{objc_msgSend(v12, "numberOfMiLoPredictionsInUpdatesMode") + 1}];
      [(IRStatisticsManager *)self setStatistics:v13];
    }

    v14 = [(IRStatisticsManager *)self statistics];
    v15 = [v14 copyWithReplacementLastMiLoModels:0];
    [(IRStatisticsManager *)self setStatistics:v15];

    v16 = [(IRStatisticsManager *)self statistics];
    v17 = [v16 copyWithReplacementLastMiLoQuality:{objc_msgSend(v23, "isMapValid")}];
    [(IRStatisticsManager *)self setStatistics:v17];

    v18 = [(IRStatisticsManager *)self statistics];
    v19 = [v18 copyWithReplacementLastMiLoQualityReasonBitmap:0];
    [(IRStatisticsManager *)self setStatistics:v19];

    v20 = [(IRStatisticsManager *)self statistics];
    v21 = [v23 scores];
    v22 = [v20 copyWithReplacementLastMiLoLSLItems:{objc_msgSend(v21, "count")}];
    [(IRStatisticsManager *)self setStatistics:v22];
  }
}

- (void)_updateModeStatisticsIfNeededWithReason:(id)a3 mode:(int64_t)a4 date:(id)a5
{
  v19 = a3;
  v8 = a5;
  if (a4 == 1)
  {
    if (([v19 isEqual:@"Request current context"] & 1) == 0)
    {
      v9 = [(IRStatisticsManager *)self statistics];
      v10 = [(IRStatisticsManager *)self statistics];
      v11 = [v9 copyWithReplacementNumberOfContextChanges:{objc_msgSend(v10, "numberOfContextChanges") + 1}];
      [(IRStatisticsManager *)self setStatistics:v11];
    }

    if (![(IRStatisticsManager *)self mode])
    {
      [(IRStatisticsManager *)self setMode:1];
      [(IRStatisticsManager *)self setModeDate:v8];
    }
  }

  else
  {
    [(IRStatisticsManager *)self mode];
  }

  v12 = [(IRStatisticsManager *)self mode];
  if (!a4 && v12 == 1)
  {
    [(IRStatisticsManager *)self setMode:0];
    v13 = [(IRStatisticsManager *)self statistics];
    v14 = [(IRStatisticsManager *)self statistics];
    v15 = [v14 timeInUpdatesModeInSeconds];
    v16 = [(IRStatisticsManager *)self modeDate];
    [v8 timeIntervalSinceDate:v16];
    v18 = [v13 copyWithReplacementTimeInUpdatesModeInSeconds:v15 + v17];
    [(IRStatisticsManager *)self setStatistics:v18];
  }
}

@end