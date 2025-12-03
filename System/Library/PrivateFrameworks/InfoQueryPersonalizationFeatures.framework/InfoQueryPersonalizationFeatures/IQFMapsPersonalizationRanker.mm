@interface IQFMapsPersonalizationRanker
- (BOOL)isResultCandidateForPromotion:(id)promotion;
- (IQFMapsPersonalizationRanker)init;
- (IQFMapsPersonalizationRanker)initWithVisitCountThreshold:(double)threshold lastVisitDaysThreshold:(double)daysThreshold visitCountGivenLocationThreshold:(double)locationThreshold entityRelevanceThreshold:(double)relevanceThreshold;
- (IQFMapsPersonalizationRanker)initWithVisitCountThreshold:(double)threshold lastVisitDaysThreshold:(double)daysThreshold visitCountGivenLocationThreshold:(double)locationThreshold entityRelevanceThreshold:(double)relevanceThreshold enableEntityRelevance:(BOOL)relevance;
- (double)_calendarEventScoreForResult:(id)result;
- (double)_routineFrecencyScoreForEntityRelevanceResult:(id)result;
- (double)_routineFrecencyScoreForLifeEvent:(id)event;
- (double)_scoreForResult:(id)result;
- (id)_sortedResults:(id)results;
- (id)rankedEventsForLocations:(id)locations;
- (int64_t)_compareResult:(id)result toOtherResult:(id)otherResult;
- (void)_updateCachedMUIDs:(id)ds rankedResults:(id)results;
- (void)rankedEventsForLocations:(id)locations completionHandler:(id)handler;
@end

@implementation IQFMapsPersonalizationRanker

- (IQFMapsPersonalizationRanker)init
{
  v3 = [[IQFMapsPersonalizationRanker alloc] initWithVisitCountThreshold:1 lastVisitDaysThreshold:3.0 visitCountGivenLocationThreshold:60.0 entityRelevanceThreshold:0.0 enableEntityRelevance:0.0];

  return v3;
}

- (IQFMapsPersonalizationRanker)initWithVisitCountThreshold:(double)threshold lastVisitDaysThreshold:(double)daysThreshold visitCountGivenLocationThreshold:(double)locationThreshold entityRelevanceThreshold:(double)relevanceThreshold
{
  v7 = [[IQFMapsPersonalizationRanker alloc] initWithVisitCountThreshold:1 lastVisitDaysThreshold:threshold visitCountGivenLocationThreshold:daysThreshold entityRelevanceThreshold:locationThreshold enableEntityRelevance:relevanceThreshold];

  return v7;
}

- (IQFMapsPersonalizationRanker)initWithVisitCountThreshold:(double)threshold lastVisitDaysThreshold:(double)daysThreshold visitCountGivenLocationThreshold:(double)locationThreshold entityRelevanceThreshold:(double)relevanceThreshold enableEntityRelevance:(BOOL)relevance
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

    v12->_visitCountThreshold = threshold;
    v12->_lastVisitDaysThreshold = daysThreshold;
    v12->_visitCountGivenLocationThreshold = locationThreshold;
    v12->_entityRelevanceThreshold = relevanceThreshold;
    v12->_enableEntityRelevance = relevance;
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.infoQueryPersonalizationFeatures.geo", v17);
    caLoggingQueue = v12->_caLoggingQueue;
    v12->_caLoggingQueue = v18;
  }

  return v12;
}

- (id)rankedEventsForLocations:(id)locations
{
  locationsCopy = locations;
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
  [(IQFMapsPersonalizationRanker *)self rankedEventsForLocations:locationsCopy completionHandler:v9];
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

- (void)rankedEventsForLocations:(id)locations completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  handlerCopy = handler;
  v8 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = locationsCopy;
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

        muid = [*(*(&v33 + 1) + 8 * i) muid];
        [v8 addObject:muid];
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

    handlerCopy[2](handlerCopy, self->_cachedRankedResults, 0);
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
      v30 = handlerCopy;
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
      handlerCopy[2](handlerCopy, v23, 0);
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

- (id)_sortedResults:(id)results
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__IQFMapsPersonalizationRanker__sortedResults___block_invoke;
  v5[3] = &unk_2797ACE90;
  v5[4] = self;
  v3 = [results sortedArrayWithOptions:16 usingComparator:v5];

  return v3;
}

- (void)_updateCachedMUIDs:(id)ds rankedResults:(id)results
{
  dsCopy = ds;
  resultsCopy = results;
  cachedMUIDs = self->_cachedMUIDs;
  self->_cachedMUIDs = dsCopy;
  v10 = dsCopy;

  cachedRankedResults = self->_cachedRankedResults;
  self->_cachedRankedResults = resultsCopy;
}

- (BOOL)isResultCandidateForPromotion:(id)promotion
{
  promotionCopy = promotion;
  _isCandidateForPromotion = [promotionCopy _isCandidateForPromotion];

  if (!_isCandidateForPromotion)
  {
    resultType = [promotionCopy resultType];
    if (resultType > 0xA)
    {
      goto LABEL_17;
    }

    if (((1 << resultType) & 0x3D0) != 0)
    {
      startEventDate = [promotionCopy startEventDate];
      if ([startEventDate isDateInTodayOrFuture])
      {
        startEventDate2 = [promotionCopy startEventDate];
        [startEventDate2 timeIntervalSinceNow];
        v12 = 604800.0;
LABEL_10:
        v7 = v11 < v12;
LABEL_11:

LABEL_30:
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (((1 << resultType) & 0x2C) != 0)
    {
      startEventDate = [promotionCopy startEventDate];
      if ([startEventDate isDateInTodayOrFuture])
      {
        startEventDate2 = [promotionCopy startEventDate];
        [startEventDate2 timeIntervalSinceNow];
        v12 = 2592000.0;
        goto LABEL_10;
      }

LABEL_29:
      v7 = 0;
      goto LABEL_30;
    }

    if (resultType == 10)
    {
      if (self->_enableEntityRelevance)
      {
        startEventDate = [promotionCopy entityRelevanceScore];
        [startEventDate doubleValue];
        if (v13 >= self->_entityRelevanceThreshold)
        {
          startEventDate2 = [promotionCopy numberOfVisits];
          [startEventDate2 doubleValue];
          if (v14 >= self->_visitCountThreshold)
          {
            dateOfLastVisit = [promotionCopy dateOfLastVisit];
            [dateOfLastVisit timeIntervalSinceNow];
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
      if (resultType)
      {
        if (resultType != 1)
        {
LABEL_27:
          v7 = 0;
LABEL_31:
          [promotionCopy setIsCandidateForPromotion:v7];
          goto LABEL_32;
        }

        if (!self->_enableEntityRelevance)
        {
          startEventDate = [promotionCopy numberOfVisits];
          [startEventDate doubleValue];
          if (v16 >= self->_visitCountThreshold)
          {
            startEventDate2 = [promotionCopy dateOfLastVisit];
            [startEventDate2 timeIntervalSinceNow];
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
          [IQFMapsPersonalizationRanker isResultCandidateForPromotion:promotionCopy];
        }
      }
    }

    goto LABEL_27;
  }

  _isCandidateForPromotion2 = [promotionCopy _isCandidateForPromotion];
  LOBYTE(v7) = [_isCandidateForPromotion2 BOOLValue];

LABEL_32:
  return v7;
}

- (double)_scoreForResult:(id)result
{
  resultCopy = result;
  _score = [resultCopy _score];
  v6 = _score;
  if (!_score)
  {
    resultType = [resultCopy resultType];
    if ((resultType - 2) >= 8)
    {
      if (resultType == 1)
      {
        [(IQFMapsPersonalizationRanker *)self _routineFrecencyScoreForLifeEvent:resultCopy];
      }

      else
      {
        v8 = 0.0;
        if (resultType != 10)
        {
          goto LABEL_6;
        }

        [(IQFMapsPersonalizationRanker *)self _routineFrecencyScoreForEntityRelevanceResult:resultCopy];
      }
    }

    else
    {
      [(IQFMapsPersonalizationRanker *)self _calendarEventScoreForResult:resultCopy];
    }

    v8 = v10;
LABEL_6:
    [resultCopy setScore:v8];
    goto LABEL_7;
  }

  [_score doubleValue];
  v8 = v7;
LABEL_7:

  return v8;
}

- (double)_routineFrecencyScoreForLifeEvent:(id)event
{
  v3 = 0.0;
  if (!self->_enableEntityRelevance)
  {
    eventCopy = event;
    dateOfLastVisit = [eventCopy dateOfLastVisit];
    [dateOfLastVisit timeIntervalSinceNow];
    v7 = v6;

    numberOfVisits = [eventCopy numberOfVisits];

    [numberOfVisits doubleValue];
    v3 = exp2(v7 / 2592000.0) * v9;
  }

  return v3;
}

- (double)_routineFrecencyScoreForEntityRelevanceResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  v6 = 0.0;
  if (self->_enableEntityRelevance)
  {
    if (self->_entityRelevanceThreshold <= 0.0)
    {
      [resultCopy numberOfVisits];
    }

    else
    {
      [resultCopy entityRelevanceScore];
    }
    v7 = ;
    [v7 doubleValue];
    v6 = v8;
  }

  return v6;
}

- (double)_calendarEventScoreForResult:(id)result
{
  resultCopy = result;
  startEventDate = [resultCopy startEventDate];
  [startEventDate timeIntervalSinceNow];
  v6 = v5;

  if (v6 >= 0.0)
  {
    goto LABEL_3;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  startEventDate2 = [resultCopy startEventDate];
  v9 = [currentCalendar isDateInToday:startEventDate2];

  v10 = 0.0;
  if (v9)
  {
LABEL_3:
    v10 = exp2(fabs(v6) / -2592000.0);
  }

  return v10;
}

- (int64_t)_compareResult:(id)result toOtherResult:(id)otherResult
{
  resultCopy = result;
  otherResultCopy = otherResult;
  v8 = [(IQFMapsPersonalizationRanker *)self isResultCandidateForPromotion:resultCopy];
  if (v8 == [(IQFMapsPersonalizationRanker *)self isResultCandidateForPromotion:otherResultCopy])
  {
    if (isCalendarBasedPersonalizationResultType([resultCopy resultType]) || !isCalendarBasedPersonalizationResultType(objc_msgSend(otherResultCopy, "resultType")))
    {
      if (isCalendarBasedPersonalizationResultType([resultCopy resultType]) && !isCalendarBasedPersonalizationResultType(objc_msgSend(otherResultCopy, "resultType")))
      {
        v9 = -1;
      }

      else
      {
        [(IQFMapsPersonalizationRanker *)self _scoreForResult:resultCopy];
        v11 = v10;
        [(IQFMapsPersonalizationRanker *)self _scoreForResult:otherResultCopy];
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

  else if ([(IQFMapsPersonalizationRanker *)self isResultCandidateForPromotion:resultCopy])
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