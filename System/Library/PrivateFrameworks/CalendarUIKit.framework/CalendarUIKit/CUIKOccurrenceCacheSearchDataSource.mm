@interface CUIKOccurrenceCacheSearchDataSource
- (CUIKOccurrenceCacheSearchDataSource)initWithEventStore:(id)store calendars:(id)calendars;
- (id)_createCachedDays;
- (void)_runBlock:(id)block withRandomDelayUpperbound:(unsigned int)upperbound;
- (void)_updateCachedDays;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateCachedOccurrences;
- (void)searchWithTerm:(id)term;
- (void)stopSearching;
@end

@implementation CUIKOccurrenceCacheSearchDataSource

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_resultsLock);
  v3 = self->_searchSeed + 1;
  self->_searchSeed = v3;
  pthread_mutex_unlock(&self->_resultsLock);
  v4 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&dword_1CAB19000, v4, OS_LOG_TYPE_DEFAULT, "Search %i: [OccurrenceCacheSearchDataSource invalidate]", buf, 8u);
  }

  [(CUIKOccurrenceCacheSearchDataSource *)self stopSearching];
  v5.receiver = self;
  v5.super_class = CUIKOccurrenceCacheSearchDataSource;
  [(CUIKOccurrenceCacheDataSource *)&v5 invalidateCachedOccurrences];
}

- (void)stopSearching
{
  [(EKSpotlightSearch *)self->_narrowSearch cancel];
  [(EKSpotlightSearch *)self->_distantFutureSearch cancel];
  [(EKSpotlightSearch *)self->_distantPastSearch cancel];
  narrowSearch = self->_narrowSearch;
  self->_narrowSearch = 0;

  distantFutureSearch = self->_distantFutureSearch;
  self->_distantFutureSearch = 0;

  distantPastSearch = self->_distantPastSearch;
  self->_distantPastSearch = 0;

  searchTerm = self->_searchTerm;
  self->_searchTerm = 0;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_resultsLock);
  v3.receiver = self;
  v3.super_class = CUIKOccurrenceCacheSearchDataSource;
  [(CUIKOccurrenceCacheSearchDataSource *)&v3 dealloc];
}

- (CUIKOccurrenceCacheSearchDataSource)initWithEventStore:(id)store calendars:(id)calendars
{
  v9.receiver = self;
  v9.super_class = CUIKOccurrenceCacheSearchDataSource;
  v4 = [(CUIKOccurrenceCacheDataSource *)&v9 initWithEventStore:store calendars:calendars];
  v5 = v4;
  if (v4)
  {
    pthread_mutex_init(&v4->_resultsLock, 0);
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    processingCachedDays = v5->_processingCachedDays;
    v5->_processingCachedDays = v6;
  }

  return v5;
}

- (void)invalidateCachedOccurrences
{
  v4 = self->_searchTerm;
  [(CUIKOccurrenceCacheSearchDataSource *)self stopSearching];
  v3 = v4;
  if (v4)
  {
    [(CUIKOccurrenceCacheSearchDataSource *)self searchWithTerm:v4];
    v3 = v4;
  }
}

- (void)_updateCachedDays
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CUIKOccurrenceCacheSearchDataSource__updateCachedDays__block_invoke;
  block[3] = &unk_1E8399BD8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__CUIKOccurrenceCacheSearchDataSource__updateCachedDays__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((*(a1 + 32) + 88));
  v2 = *(*(a1 + 32) + 152);
  v3 = v2;
  v4 = *(a1 + 32);
  if ((*(v4 + 161) & 1) != 0 || (v5 = [v2 count], v4 = *(a1 + 32), !v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
    *(v4 + 161) = 1;
    v4 = *(a1 + 32);
  }

  v7 = *(v4 + 160);
  *(v4 + 160) = 0;
  pthread_mutex_unlock((*(a1 + 32) + 88));
  if ((v7 & 1) != 0 || ![v3 count])
  {
    [*(a1 + 32) setCachedDays:v3];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = *(a1 + 32);
    v12 = @"scrollToToday";
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v8 postNotificationName:@"CalendarDataSourceSearchResultsAvailable" object:v9 userInfo:v11];
  }
}

- (void)searchWithTerm:(id)term
{
  v74 = *MEMORY[0x1E69E9840];
  termCopy = term;
  if (!termCopy)
  {
    [(CUIKOccurrenceCacheSearchDataSource *)a2 searchWithTerm:?];
  }

  [(EKSpotlightSearch *)self->_narrowSearch cancel];
  [(EKSpotlightSearch *)self->_distantFutureSearch cancel];
  [(EKSpotlightSearch *)self->_distantPastSearch cancel];
  pthread_mutex_lock(&self->_resultsLock);
  v6 = self->_searchSeed + 1;
  self->_searchSeed = v6;
  array = [MEMORY[0x1E695DEC8] array];
  sortedDays = self->_sortedDays;
  self->_sortedDays = array;

  self->_sortedDaysUpdated = 1;
  self->_scrolledToToday = 0;
  pthread_mutex_unlock(&self->_resultsLock);
  v30 = ICSRedactString();
  v9 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = v6;
    LOWORD(v70) = 2114;
    *(&v70 + 2) = v30;
    _os_log_impl(&dword_1CAB19000, v9, OS_LOG_TYPE_DEFAULT, "Search %i: [OccurrenceCacheSearchDataSource searchWithTerm:%{public}@]", buf, 0x12u);
  }

  objc_storeStrong(&self->_searchTerm, term);
  if ([termCopy length])
  {
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 1;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke;
    aBlock[3] = &unk_1E839AAC0;
    objc_copyWeak(&v64, &location);
    v65 = v6;
    aBlock[4] = self;
    aBlock[5] = v67;
    v31 = _Block_copy(aBlock);
    uTF8String = [(NSString *)self->_searchTerm UTF8String];
    if (uTF8String)
    {
      v11 = strlen(uTF8String) < 3;
    }

    else
    {
      v11 = 1;
    }

    v12 = CUIKTodayComponents();
    v29 = CUIKCalendar();
    v13 = [v29 dateWithEra:objc_msgSend(v12 year:"era") month:objc_msgSend(v12 day:"year") hour:objc_msgSend(v12 minute:"month") second:objc_msgSend(v12 nanosecond:{"day") - 7, 0, 0, 0, 0}];
    v14 = [v29 dateWithEra:objc_msgSend(v12 year:"era") month:objc_msgSend(v12 day:"year") hour:objc_msgSend(v12 minute:"month") second:objc_msgSend(v12 nanosecond:{"day") + 14, 0, 0, 0, 0}];
    v26 = [MEMORY[0x1E6966B00] queryStringForSearchTerm:self->_searchTerm matchingTypes:v11 fromStartDate:v13 toEndDate:v14];
    v27 = [MEMORY[0x1E6966B00] queryStringForSearchTerm:self->_searchTerm matchingTypes:v11 fromStartDate:v14 toEndDate:0];
    v28 = [MEMORY[0x1E6966B00] queryStringForSearchTerm:self->_searchTerm matchingTypes:v11 fromStartDate:0 toEndDate:v13];
    *buf = 0;
    *&v70 = buf;
    *(&v70 + 1) = 0x3032000000;
    v71 = __Block_byref_object_copy__9;
    v72 = __Block_byref_object_dispose__9;
    v73 = 0;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x3032000000;
    v61[3] = __Block_byref_object_copy__9;
    v61[4] = __Block_byref_object_dispose__9;
    v62 = 0;
    v59[0] = 0;
    v59[1] = v59;
    v59[2] = 0x3032000000;
    v59[3] = __Block_byref_object_copy__9;
    v59[4] = __Block_byref_object_dispose__9;
    v60 = 0;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v58 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v56 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3042000000;
    v52 = __Block_byref_object_copy__41;
    v53 = __Block_byref_object_dispose__42;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3042000000;
    v46 = __Block_byref_object_copy__41;
    v47 = __Block_byref_object_dispose__42;
    v48 = 0;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_43;
    v40[3] = &unk_1E839AAE8;
    objc_copyWeak(&v41, &location);
    v40[4] = &v43;
    v40[5] = v57;
    v42 = v6;
    v40[6] = v61;
    v40[7] = buf;
    v40[8] = v55;
    v40[9] = v59;
    v15 = _Block_copy(v40);
    v16 = [MEMORY[0x1E6966B00] searchWithCSQuery:v28 inStore:self->super._eventStore inCalendars:0 resultHandler:v31 completionHandler:v15];
    distantPastSearch = self->_distantPastSearch;
    self->_distantPastSearch = v16;

    v18 = [MEMORY[0x1E6966B00] searchWithCSQuery:v27 inStore:self->super._eventStore inCalendars:0 resultHandler:v31 completionHandler:v15];
    distantFutureSearch = self->_distantFutureSearch;
    self->_distantFutureSearch = v18;

    objc_storeWeak(v50 + 5, self->_distantPastSearch);
    objc_storeWeak(v44 + 5, self->_distantFutureSearch);
    v20 = MEMORY[0x1E6966B00];
    eventStore = self->super._eventStore;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_46;
    v37[3] = &unk_1E839AB38;
    objc_copyWeak(&v38, &location);
    v39 = v6;
    v37[6] = v57;
    v37[7] = v55;
    v37[4] = self;
    v37[5] = buf;
    v37[8] = &v43;
    v37[9] = v61;
    v37[10] = &v49;
    v37[11] = v59;
    v22 = [v20 searchWithCSQuery:v26 inStore:eventStore inCalendars:0 resultHandler:v31 completionHandler:v37];
    narrowSearch = self->_narrowSearch;
    self->_narrowSearch = v22;

    v24 = self->_narrowSearch;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_49;
    v33[3] = &unk_1E839AB10;
    v36 = v6;
    v35 = buf;
    v25 = v24;
    v34 = v25;
    [(CUIKOccurrenceCacheSearchDataSource *)self _runBlock:v33];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v41);
    _Block_object_dispose(&v43, 8);
    objc_destroyWeak(&v48);
    _Block_object_dispose(&v49, 8);
    objc_destroyWeak(&v54);
    _Block_object_dispose(v55, 8);
    _Block_object_dispose(v57, 8);
    _Block_object_dispose(v59, 8);

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&v64);
    objc_destroyWeak(&location);
    _Block_object_dispose(v67, 8);
  }

  else
  {
    [(CUIKOccurrenceCacheSearchDataSource *)self _updateCachedDays];
  }
}

void __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      *buf = 67109376;
      v67 = v7;
      v68 = 2048;
      v69 = [v4 count];
      _os_log_impl(&dword_1CAB19000, v6, OS_LOG_TYPE_DEFAULT, "Search %i: Spotlight handler called with matches: %lu", buf, 0x12u);
    }

    pthread_mutex_lock((WeakRetained + 88));
    if (*(*(a1 + 32) + 164) == *(a1 + 56))
    {
      v42 = 88;
      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        [*(WeakRetained + 10) removeAllObjects];
      }

      v8 = *(WeakRetained + 10);
      v9 = CUIKCalendar();
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v43 = v4;
      v10 = v4;
      v48 = [v10 countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v48)
      {
        v47 = *v61;
        v44 = v10;
        v45 = WeakRetained;
        v49 = v9;
        do
        {
          v11 = 0;
          do
          {
            if (*v61 != v47)
            {
              objc_enumerationMutation(v10);
            }

            v51 = v11;
            v12 = *(*(&v60 + 1) + 8 * v11);
            v13 = [*(WeakRetained + 1) showDeclinedEvents];
            v14 = [v12 selfAttendee];
            v15 = [v14 participantStatus];

            if (v15 != 3 || v13 != 0)
            {
              v17 = *(WeakRetained + 2);
              v18 = [v12 calendar];
              LODWORD(v17) = [v17 containsObject:v18];

              if (v17)
              {
                v19 = [v12 endDateUnadjustedForLegacyClients];
                v20 = CUIKTimeZoneForChoice(1);
                v21 = [v19 dateForDayInTimeZone:v20];

                v46 = v19;
                v52 = [v19 isEqualToDate:v21];
                v22 = [v12 startDate];
                if ([v22 isBeforeOrSameDayAsDate:v21 inCalendar:v9])
                {
                  v50 = v21;
                  while (([v22 isSameDayAsDate:v21 inCalendar:v9] & v52 & 1) == 0)
                  {
                    v23 = CUIKTimeZoneForChoice(1);
                    v24 = [v22 dateForDayInTimeZone:v23];

                    v25 = [v8 objectForKeyedSubscript:v24];
                    if (v25)
                    {
                      v53 = v24;
                      v58 = 0u;
                      v59 = 0u;
                      v56 = 0u;
                      v57 = 0u;
                      v26 = v25;
                      v27 = [v26 countByEnumeratingWithState:&v56 objects:v64 count:16];
                      if (v27)
                      {
                        v28 = v27;
                        v29 = *v57;
                        while (2)
                        {
                          v30 = v8;
                          for (i = 0; i != v28; ++i)
                          {
                            if (*v57 != v29)
                            {
                              objc_enumerationMutation(v26);
                            }

                            v32 = [*(*(&v56 + 1) + 8 * i) objectForKeyedSubscript:CUIKOccurrenceInfoEventKey];
                            v33 = [v32 isEqual:v12];

                            if (v33)
                            {

                              v9 = v49;
                              v34 = [v49 dateByAddingUnit:16 value:1 toDate:v22 options:0];
                              v8 = v30;
                              v21 = v50;
                              v24 = v53;
                              goto LABEL_33;
                            }
                          }

                          v28 = [v26 countByEnumeratingWithState:&v56 objects:v64 count:16];
                          v8 = v30;
                          if (v28)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v9 = v49;
                      v21 = v50;
                      v24 = v53;
                    }

                    else
                    {
                      v26 = objc_opt_new();
                      [v8 setObject:v26 forKeyedSubscript:v24];
                    }

                    v35 = objc_opt_new();
                    [v35 setObject:v12 forKeyedSubscript:CUIKOccurrenceInfoEventKey];
                    v36 = [v12 startDate];
                    [v35 setObject:v36 forKeyedSubscript:CUIKOccurrenceInfoDateKey];

                    [v26 addObject:v35];
                    v34 = [v9 dateByAddingUnit:16 value:1 toDate:v22 options:0];

                    v22 = v35;
LABEL_33:

                    v22 = v34;
                    if (([v34 isBeforeOrSameDayAsDate:v21 inCalendar:v9] & 1) == 0)
                    {
                      goto LABEL_36;
                    }
                  }
                }

                v34 = v22;
LABEL_36:

                v10 = v44;
                WeakRetained = v45;
              }
            }

            v11 = v51 + 1;
          }

          while (v51 + 1 != v48);
          v48 = [v10 countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v48);
      }

      v37 = *(*(a1 + 40) + 8);
      if (*(v37 + 24) == 1)
      {
        *(v37 + 24) = 0;
      }

      v38 = objc_opt_new();
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_34;
      v54[3] = &unk_1E839AA98;
      v55 = v38;
      v39 = v38;
      [v8 enumerateKeysAndObjectsUsingBlock:v54];
      v40 = [v39 sortedArrayUsingComparator:&__block_literal_global_38];
      v41 = *(WeakRetained + 19);
      *(WeakRetained + 19) = v40;

      *(*(a1 + 32) + 160) = 1;
      pthread_mutex_unlock(&WeakRetained[v42]);

      v4 = v43;
    }

    else
    {
      pthread_mutex_unlock((WeakRetained + 88));
    }
  }
}

void __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = [a3 sortedArrayUsingComparator:&__block_literal_global_22];
  v6 = MEMORY[0x1E695DF90];
  v7 = CUIKOccurrenceCacheDayKey;
  v8 = CUIKOccurrenceCacheOccurrencesKey;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v10 = [v6 dictionaryWithObjectsAndKeys:{v5, v7, v11, v8, v9, CUIKOccurrenceCacheOccurrenceCountKey, 0}];

  [*(a1 + 32) addObject:v10];
}

uint64_t __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = CUIKOccurrenceInfoDateKey;
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:CUIKOccurrenceInfoDateKey];

  v8 = [v6 compare:v7];
  return v8;
}

uint64_t __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = CUIKOccurrenceCacheDayKey;
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:CUIKOccurrenceCacheDayKey];

  v8 = [v6 compare:v7];
  return v8;
}

void __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_43(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateCachedDays];
    v6 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));

    if (v6 == v3)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v7 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 88);
        v9 = [MEMORY[0x1E695DF00] date];
        [v9 timeIntervalSinceDate:*(*(*(a1 + 48) + 8) + 40)];
        v17 = v16;
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:*(*(*(a1 + 56) + 8) + 40)];
        v19 = 67109632;
        v20 = v15;
        v21 = 2048;
        v22 = v17;
        v23 = 2048;
        v24 = v18;
        v14 = "Search %i: Distant future search end: %f, %f";
        goto LABEL_7;
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v7 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 88);
        v9 = [MEMORY[0x1E695DF00] date];
        [v9 timeIntervalSinceDate:*(*(*(a1 + 72) + 8) + 40)];
        v11 = v10;
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:*(*(*(a1 + 56) + 8) + 40)];
        v19 = 67109632;
        v20 = v8;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v13;
        v14 = "Search %i: Distant past search end: %f, %f";
LABEL_7:
        _os_log_impl(&dword_1CAB19000, v7, OS_LOG_TYPE_DEFAULT, v14, &v19, 0x1Cu);
      }
    }
  }
}

void __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_46(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    pthread_mutex_lock((WeakRetained + 88));
    v4 = *(a1 + 104);
    v5 = *(v3 + 41);
    pthread_mutex_unlock((v3 + 88));
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 104);
      v8 = [MEMORY[0x1E695DF00] date];
      [v8 timeIntervalSinceDate:*(*(*(a1 + 40) + 8) + 40)];
      *buf = 67109376;
      v27 = v7;
      v28 = 2048;
      v29 = v9;
      _os_log_impl(&dword_1CAB19000, v6, OS_LOG_TYPE_DEFAULT, "Search %i: Narrow search end: %f", buf, 0x12u);
    }

    if (v4 == v5)
    {
      [v3 _updateCachedDays];
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v10 = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
      v11 = *(a1 + 32);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_47;
      v22[3] = &unk_1E839AB10;
      v25 = *(a1 + 104);
      v12 = *(a1 + 72);
      v23 = v10;
      v24 = v12;
      v13 = v10;
      [v11 _runBlock:v22];
      v14 = objc_loadWeakRetained((*(*(a1 + 80) + 8) + 40));
      v15 = *(a1 + 32);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_48;
      v18[3] = &unk_1E839AB10;
      v21 = *(a1 + 104);
      v16 = *(a1 + 88);
      v19 = v14;
      v20 = v16;
      v17 = v14;
      [v15 _runBlock:v18];
    }
  }
}

uint64_t __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_47(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_1CAB19000, v2, OS_LOG_TYPE_DEFAULT, "Search %i: Distant future search start", v8, 8u);
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return [*(a1 + 32) start];
}

uint64_t __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_48(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_1CAB19000, v2, OS_LOG_TYPE_DEFAULT, "Search %i: Distant past search start", v8, 8u);
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return [*(a1 + 32) start];
}

uint64_t __54__CUIKOccurrenceCacheSearchDataSource_searchWithTerm___block_invoke_49(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_1CAB19000, v2, OS_LOG_TYPE_DEFAULT, "Search %i: Narrow search start", v8, 8u);
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return [*(a1 + 32) start];
}

- (void)_runBlock:(id)block withRandomDelayUpperbound:(unsigned int)upperbound
{
  block = block;
  v5 = arc4random_uniform(upperbound);
  v6 = dispatch_time(0, 1000000000 * v5);
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (id)_createCachedDays
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return v2;
}

- (void)searchWithTerm:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CUIKOccurrenceCacheSearchDataSource.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"term != nil"}];
}

@end