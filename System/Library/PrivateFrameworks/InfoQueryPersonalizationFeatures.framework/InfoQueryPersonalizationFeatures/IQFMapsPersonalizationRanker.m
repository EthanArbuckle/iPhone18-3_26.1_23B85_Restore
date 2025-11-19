@interface IQFMapsPersonalizationRanker
- (BOOL)isResultCandidateForPromotion:(id)a3;
- (IQFMapsPersonalizationRanker)init;
- (IQFMapsPersonalizationRanker)initWithVisitCountThreshold:(double)a3 lastVisitDaysThreshold:(double)a4 visitCountGivenLocationThreshold:(double)a5 entityRelevanceThreshold:(double)a6;
- (IQFMapsPersonalizationRanker)initWithVisitCountThreshold:(double)a3 lastVisitDaysThreshold:(double)a4 visitCountGivenLocationThreshold:(double)a5 entityRelevanceThreshold:(double)a6 enableEntityRelevance:(BOOL)a7;
- (double)_calendarEventScoreForResult:(id)a3;
- (double)_routineFrecencyScoreForEntityRelevanceResult:(id)a3;
- (double)_routineFrecencyScoreForLifeEvent:(id)a3;
- (double)_scoreForResult:(id)a3;
- (id)_sortedResults:(id)a3;
- (id)rankedEventsForLocations:(id)a3;
- (int64_t)_compareResult:(id)a3 toOtherResult:(id)a4;
- (void)_updateCachedMUIDs:(id)a3 rankedResults:(id)a4;
- (void)rankedEventsForLocations:(id)a3 completionHandler:(id)a4;
@end

@implementation IQFMapsPersonalizationRanker

- (IQFMapsPersonalizationRanker)init
{
  v3 = [[IQFMapsPersonalizationRanker alloc] initWithVisitCountThreshold:1 lastVisitDaysThreshold:3.0 visitCountGivenLocationThreshold:60.0 entityRelevanceThreshold:0.0 enableEntityRelevance:0.0];

  return v3;
}

- (IQFMapsPersonalizationRanker)initWithVisitCountThreshold:(double)a3 lastVisitDaysThreshold:(double)a4 visitCountGivenLocationThreshold:(double)a5 entityRelevanceThreshold:(double)a6
{
  v7 = [[IQFMapsPersonalizationRanker alloc] initWithVisitCountThreshold:1 lastVisitDaysThreshold:a3 visitCountGivenLocationThreshold:a4 entityRelevanceThreshold:a5 enableEntityRelevance:a6];

  return v7;
}

- (IQFMapsPersonalizationRanker)initWithVisitCountThreshold:(double)a3 lastVisitDaysThreshold:(double)a4 visitCountGivenLocationThreshold:(double)a5 entityRelevanceThreshold:(double)a6 enableEntityRelevance:(BOOL)a7
{
  v21.receiver = self;
  v21.super_class = IQFMapsPersonalizationRanker;
  v12 = [(IQFMapsPersonalizationRanker *)&v21 init];
  if (v12)
  {
    v13 = objc_opt_new();
    cachedMUIDs = v12->_cachedMUIDs;
    v12->_cachedMUIDs = v13;

    v15 = objc_opt_new();
    cachedRankedResults = v12->_cachedRankedResults;
    v12->_cachedRankedResults = v15;

    v12->_visitCountThreshold = a3;
    v12->_lastVisitDaysThreshold = a4;
    v12->_visitCountGivenLocationThreshold = a5;
    v12->_entityRelevanceThreshold = a6;
    v12->_enableEntityRelevance = a7;
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.infoQueryPersonalizationFeatures.geo", v17);
    caLoggingQueue = v12->_caLoggingQueue;
    v12->_caLoggingQueue = v18;
  }

  return v12;
}

- (id)rankedEventsForLocations:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__IQFMapsPersonalizationRanker_rankedEventsForLocations___block_invoke;
  v9[3] = &unk_2797ACDA0;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [(IQFMapsPersonalizationRanker *)self rankedEventsForLocations:v4 completionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__IQFMapsPersonalizationRanker_rankedEventsForLocations___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)rankedEventsForLocations:(id)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v33 + 1) + 8 * i) muid];
        [v8 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v10);
  }

  v14 = [(NSSet *)self->_cachedMUIDs isEqualToSet:v8];
  v15 = IQFLogCategoryDefault();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    if (v16)
    {
      [IQFMapsPersonalizationRanker rankedEventsForLocations:completionHandler:];
    }

    v7[2](v7, self->_cachedRankedResults, 0);
  }

  else
  {
    if (v16)
    {
      [IQFMapsPersonalizationRanker rankedEventsForLocations:completionHandler:];
    }

    v17 = IQFLogCategoryDefault();
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_254B9D000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "rankedEventsForLocations", " enableTelemetry=YES ", buf, 2u);
    }

    objc_initWeak(buf, self);
    v21 = +[IQFMapsPersonalizationLookup sharedMapsPersonalizationLookup];
    if (v21)
    {
      v22 = IQFLogCategoryDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [IQFMapsPersonalizationRanker rankedEventsForLocations:completionHandler:];
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __75__IQFMapsPersonalizationRanker_rankedEventsForLocations_completionHandler___block_invoke;
      v26[3] = &unk_2797ACE68;
      v27 = v20;
      v31[1] = v18;
      objc_copyWeak(v31, buf);
      v30 = v7;
      v28 = v8;
      v29 = v9;
      [v21 eventsAtLocations:v29 completionHandler:v26];

      objc_destroyWeak(v31);
      v23 = v27;
    }

    else
    {
      v24 = IQFLogCategoryDefault();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [IQFMapsPersonalizationRanker rankedEventsForLocations:completionHandler:];
      }

      v23 = objc_opt_new();
      v7[2](v7, v23, 0);
    }

    objc_destroyWeak(buf);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __75__IQFMapsPersonalizationRanker_rankedEventsForLocations_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 72);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B9D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "rankedEventsForLocations", &unk_254BA4B52, buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained _sortedResults:v5];
    [v11 _updateCachedMUIDs:*(a1 + 40) rankedResults:v12];
    v13 = IQFLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __75__IQFMapsPersonalizationRanker_rankedEventsForLocations_completionHandler___block_invoke_cold_1(v12);
    }

    (*(*(a1 + 56) + 16))();
    v14 = v11[8];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__IQFMapsPersonalizationRanker_rankedEventsForLocations_completionHandler___block_invoke_24;
    v17[3] = &unk_2797ACE40;
    v18 = v12;
    v19 = *(a1 + 48);
    v15 = v12;
    dispatch_async(v14, v17);
  }

  else
  {
    v16 = *(a1 + 56);
    v15 = objc_opt_new();
    (*(v16 + 16))(v16, v15, v6);
  }
}

- (id)_sortedResults:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__IQFMapsPersonalizationRanker__sortedResults___block_invoke;
  v5[3] = &unk_2797ACE90;
  v5[4] = self;
  v3 = [a3 sortedArrayWithOptions:16 usingComparator:v5];

  return v3;
}

- (void)_updateCachedMUIDs:(id)a3 rankedResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  cachedMUIDs = self->_cachedMUIDs;
  self->_cachedMUIDs = v6;
  v10 = v6;

  cachedRankedResults = self->_cachedRankedResults;
  self->_cachedRankedResults = v7;
}

- (BOOL)isResultCandidateForPromotion:(id)a3
{
  v4 = a3;
  v5 = [v4 _isCandidateForPromotion];

  if (!v5)
  {
    v8 = [v4 resultType];
    if (v8 > 0xA)
    {
      goto LABEL_17;
    }

    if (((1 << v8) & 0x3D0) != 0)
    {
      v9 = [v4 startEventDate];
      if ([v9 isDateInTodayOrFuture])
      {
        v10 = [v4 startEventDate];
        [v10 timeIntervalSinceNow];
        v12 = 604800.0;
LABEL_10:
        v7 = v11 < v12;
LABEL_11:

LABEL_30:
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (((1 << v8) & 0x2C) != 0)
    {
      v9 = [v4 startEventDate];
      if ([v9 isDateInTodayOrFuture])
      {
        v10 = [v4 startEventDate];
        [v10 timeIntervalSinceNow];
        v12 = 2592000.0;
        goto LABEL_10;
      }

LABEL_29:
      v7 = 0;
      goto LABEL_30;
    }

    if (v8 == 10)
    {
      if (self->_enableEntityRelevance)
      {
        v9 = [v4 entityRelevanceScore];
        [v9 doubleValue];
        if (v13 >= self->_entityRelevanceThreshold)
        {
          v10 = [v4 numberOfVisits];
          [v10 doubleValue];
          if (v14 >= self->_visitCountThreshold)
          {
            v19 = [v4 dateOfLastVisit];
            [v19 timeIntervalSinceNow];
            v7 = v20 >= self->_lastVisitDaysThreshold * -86400.0;
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_11;
        }

        goto LABEL_29;
      }

      v15 = IQFLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [IQFMapsPersonalizationRanker isResultCandidateForPromotion:];
      }
    }

    else
    {
LABEL_17:
      if (v8)
      {
        if (v8 != 1)
        {
LABEL_27:
          v7 = 0;
LABEL_31:
          [v4 setIsCandidateForPromotion:v7];
          goto LABEL_32;
        }

        if (!self->_enableEntityRelevance)
        {
          v9 = [v4 numberOfVisits];
          [v9 doubleValue];
          if (v16 >= self->_visitCountThreshold)
          {
            v10 = [v4 dateOfLastVisit];
            [v10 timeIntervalSinceNow];
            v7 = v18 >= self->_lastVisitDaysThreshold * -86400.0;
            goto LABEL_11;
          }

          goto LABEL_29;
        }

        v15 = IQFLogCategoryDefault();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [IQFMapsPersonalizationRanker isResultCandidateForPromotion:];
        }
      }

      else
      {
        v15 = IQFLogCategoryDefault();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [IQFMapsPersonalizationRanker isResultCandidateForPromotion:v4];
        }
      }
    }

    goto LABEL_27;
  }

  v6 = [v4 _isCandidateForPromotion];
  LOBYTE(v7) = [v6 BOOLValue];

LABEL_32:
  return v7;
}

- (double)_scoreForResult:(id)a3
{
  v4 = a3;
  v5 = [v4 _score];
  v6 = v5;
  if (!v5)
  {
    v9 = [v4 resultType];
    if ((v9 - 2) >= 8)
    {
      if (v9 == 1)
      {
        [(IQFMapsPersonalizationRanker *)self _routineFrecencyScoreForLifeEvent:v4];
      }

      else
      {
        v8 = 0.0;
        if (v9 != 10)
        {
          goto LABEL_6;
        }

        [(IQFMapsPersonalizationRanker *)self _routineFrecencyScoreForEntityRelevanceResult:v4];
      }
    }

    else
    {
      [(IQFMapsPersonalizationRanker *)self _calendarEventScoreForResult:v4];
    }

    v8 = v10;
LABEL_6:
    [v4 setScore:v8];
    goto LABEL_7;
  }

  [v5 doubleValue];
  v8 = v7;
LABEL_7:

  return v8;
}

- (double)_routineFrecencyScoreForLifeEvent:(id)a3
{
  v3 = 0.0;
  if (!self->_enableEntityRelevance)
  {
    v4 = a3;
    v5 = [v4 dateOfLastVisit];
    [v5 timeIntervalSinceNow];
    v7 = v6;

    v8 = [v4 numberOfVisits];

    [v8 doubleValue];
    v3 = exp2(v7 / 2592000.0) * v9;
  }

  return v3;
}

- (double)_routineFrecencyScoreForEntityRelevanceResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0.0;
  if (self->_enableEntityRelevance)
  {
    if (self->_entityRelevanceThreshold <= 0.0)
    {
      [v4 numberOfVisits];
    }

    else
    {
      [v4 entityRelevanceScore];
    }
    v7 = ;
    [v7 doubleValue];
    v6 = v8;
  }

  return v6;
}

- (double)_calendarEventScoreForResult:(id)a3
{
  v3 = a3;
  v4 = [v3 startEventDate];
  [v4 timeIntervalSinceNow];
  v6 = v5;

  if (v6 >= 0.0)
  {
    goto LABEL_3;
  }

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v3 startEventDate];
  v9 = [v7 isDateInToday:v8];

  v10 = 0.0;
  if (v9)
  {
LABEL_3:
    v10 = exp2(fabs(v6) / -2592000.0);
  }

  return v10;
}

- (int64_t)_compareResult:(id)a3 toOtherResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IQFMapsPersonalizationRanker *)self isResultCandidateForPromotion:v6];
  if (v8 == [(IQFMapsPersonalizationRanker *)self isResultCandidateForPromotion:v7])
  {
    if (isCalendarBasedPersonalizationResultType([v6 resultType]) || !isCalendarBasedPersonalizationResultType(objc_msgSend(v7, "resultType")))
    {
      if (isCalendarBasedPersonalizationResultType([v6 resultType]) && !isCalendarBasedPersonalizationResultType(objc_msgSend(v7, "resultType")))
      {
        v9 = -1;
      }

      else
      {
        [(IQFMapsPersonalizationRanker *)self _scoreForResult:v6];
        v11 = v10;
        [(IQFMapsPersonalizationRanker *)self _scoreForResult:v7];
        v13 = -1;
        if (v11 <= v12)
        {
          v13 = 1;
        }

        if (v11 == v12)
        {
          v9 = 0;
        }

        else
        {
          v9 = v13;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else if ([(IQFMapsPersonalizationRanker *)self isResultCandidateForPromotion:v6])
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void __75__IQFMapsPersonalizationRanker_rankedEventsForLocations_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2_0(&dword_254B9D000, v1, v2, "IQFMapsParsecRanker: fetched %ld new ranked events & updated cache", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)isResultCandidateForPromotion:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 resultType];
  OUTLINED_FUNCTION_2_0(&dword_254B9D000, v1, v2, "IQFMapsPersonalizationRanker received unknown result type: %lu", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

@end