@interface CUIKEventLoader
- (BOOL)isLoadedOrLoading:(id)a3 endDate:(id)a4;
- (BOOL)setSelectedCalendars:(id)a3;
- (CUIKEventLoader)init;
- (CUIKEventLoaderDelegate)delegate;
- (id)_groupForGeneration:(unint64_t)a3;
- (id)occurrencesForStartDate:(id)a3 endDate:(id)a4 preSorted:(BOOL)a5 waitForLoad:(BOOL)a6 isComplete:(BOOL *)a7;
- (unint64_t)_loadIfNeededBetweenStart:(double)a3 end:(double)a4 loadPaddingNow:(BOOL)a5;
- (unint64_t)_setMonitoredRange:(double)a3 end:(double)a4 loadingPadding:(BOOL)a5;
- (void)_getStart:(double)a3 end:(double)a4 expandedToComponents:(unint64_t)a5 withResultStart:(double *)a6 resultEnd:(double *)a7;
- (void)_getStart:(double)a3 end:(double)a4 paddedByDays:(int)a5 inTimeZone:(id)a6 resultStart:(double *)a7 resultEnd:(double *)a8;
- (void)_loadIfNeededWithImmediatePadding:(BOOL)a3;
- (void)_reload;
- (void)_updateLoadedGeneration:(unint64_t)a3 start:(double)a4 end:(double)a5;
- (void)addOccurrenceAwaitingDeletion:(id)a3;
- (void)addOccurrenceAwaitingRefresh:(id)a3;
- (void)loadIfNeeded;
- (void)receivedNewAndUpdatedEvents:(id)a3 removedEvents:(id)a4 error:(id)a5 wasFirstResult:(BOOL)a6 forGeneration:(unint64_t)a7 start:(double)a8 end:(double)a9 disabled:(BOOL)a10;
- (void)reload;
- (void)removeOccurrenceAwaitingRefresh:(id)a3;
- (void)setAllowEventLocationPrediction:(BOOL)a3;
- (void)setCacheLimit:(unsigned int)a3;
- (void)setComponentForExpandingPadding:(unint64_t)a3;
- (void)setPadding:(unsigned int)a3;
- (void)setPreferredReloadStartDate:(id)a3 endDate:(id)a4;
- (void)setTimeZone:(id)a3;
- (void)waitForBackgroundLoad:(unint64_t)a3;
@end

@implementation CUIKEventLoader

- (CUIKEventLoader)init
{
  v14.receiver = self;
  v14.super_class = CUIKEventLoader;
  v2 = [(CUIKEventLoader *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_occurrencesLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(CUIKOccurrenceSet);
    loadedOccurrences = v3->_loadedOccurrences;
    v3->_loadedOccurrences = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    newOccurrencesAwaitingRefresh = v3->_newOccurrencesAwaitingRefresh;
    v3->_newOccurrencesAwaitingRefresh = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    occurrencesAwaitingRefresh = v3->_occurrencesAwaitingRefresh;
    v3->_occurrencesAwaitingRefresh = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    occurrencesAwaitingDeletion = v3->_occurrencesAwaitingDeletion;
    v3->_occurrencesAwaitingDeletion = v10;

    v12 = vdupq_n_s64(0x7FF0000000000000uLL);
    *&v3->_lastRequestedStart = v12;
    *&v3->_loadedStart = v12;
    *&v3->_loadingStart = v12;
    *&v3->_daysOfPadding = 0xFFFFFFFF00000000;
    *&v3->_preferredReloadStart = v12;
    v3->_paddingLoadDelay = 0.3;
    v3->_allowEventLocationPrediction = 1;
  }

  return v3;
}

- (void)reload
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __25__CUIKEventLoader_reload__block_invoke;
  v2[3] = &unk_1E8399BD8;
  v2[4] = self;
  withLock(&self->_occurrencesLock, v2);
}

- (void)_reload
{
  *&self->_loadingStart = vdupq_n_s64(0x7FF0000000000000uLL);
  [(EKPredicateMonitor *)self->_predicateMonitor stop];
  predicateMonitor = self->_predicateMonitor;
  self->_predicateMonitor = 0;

  pendingPaddingPredicateUpdates = self->_pendingPaddingPredicateUpdates;
  if (pendingPaddingPredicateUpdates >= 1)
  {
    v5 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1CAB19000, v5, OS_LOG_TYPE_INFO, "_reload called while we were loading padding; we will include padding in the reload", v6, 2u);
    }
  }

  [(CUIKEventLoader *)self _loadIfNeededWithImmediatePadding:pendingPaddingPredicateUpdates > 0];
}

- (CUIKEventLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAllowEventLocationPrediction:(BOOL)a3
{
  if (self->_allowEventLocationPrediction != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_allowEventLocationPrediction = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__CUIKEventLoader_setAllowEventLocationPrediction___block_invoke;
    v5[3] = &unk_1E8399BD8;
    v5[4] = self;
    withLock(&self->_occurrencesLock, v5);
  }
}

void __51__CUIKEventLoader_setAllowEventLocationPrediction___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setLocationPredictionAllowed:{objc_msgSend(*(a1 + 32), "allowEventLocationPrediction", v7)}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)addOccurrenceAwaitingRefresh:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__CUIKEventLoader_addOccurrenceAwaitingRefresh___block_invoke;
    v6[3] = &unk_1E8399B60;
    v7 = v4;
    v8 = self;
    withLock(&self->_occurrencesLock, v6);
  }
}

uint64_t __48__CUIKEventLoader_addOccurrenceAwaitingRefresh___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEverBeenCommitted];
  v3 = *(a1 + 32);
  v4 = 32;
  if (v2)
  {
    v4 = 24;
  }

  v5 = *(*(a1 + 40) + v4);

  return [v5 addObject:v3];
}

- (void)removeOccurrenceAwaitingRefresh:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__CUIKEventLoader_removeOccurrenceAwaitingRefresh___block_invoke;
    v7[3] = &unk_1E8399B60;
    v7[4] = self;
    v8 = v4;
    withLock(&self->_occurrencesLock, v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__CUIKEventLoader_removeOccurrenceAwaitingRefresh___block_invoke_2;
    v6[3] = &unk_1E8399BD8;
    v6[4] = self;
    withLock(&self->_occurrencesLock, v6);
  }
}

uint64_t __51__CUIKEventLoader_removeOccurrenceAwaitingRefresh___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);

  return [v3 removeObject:v2];
}

uint64_t __51__CUIKEventLoader_removeOccurrenceAwaitingRefresh___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(*(a1 + 32) + 32);

  return [v2 removeAllObjects];
}

- (void)addOccurrenceAwaitingDeletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__CUIKEventLoader_addOccurrenceAwaitingDeletion___block_invoke;
    v6[3] = &unk_1E8399B60;
    v6[4] = self;
    v7 = v4;
    withLock(&self->_occurrencesLock, v6);
  }
}

- (void)setPadding:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__CUIKEventLoader_setPadding___block_invoke;
  v3[3] = &unk_1E839B128;
  v4 = a3;
  v3[4] = self;
  withLock(&self->_occurrencesLock, v3);
}

uint64_t __30__CUIKEventLoader_setPadding___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 72))
  {
    *(v2 + 72) = v1;
    return [*(result + 32) _loadIfNeeded];
  }

  return result;
}

- (void)setCacheLimit:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CUIKEventLoader_setCacheLimit___block_invoke;
  v3[3] = &unk_1E839B128;
  v4 = a3;
  v3[4] = self;
  withLock(&self->_occurrencesLock, v3);
}

void __33__CUIKEventLoader_setCacheLimit___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v1 < v3[18])
  {
    v5 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __33__CUIKEventLoader_setCacheLimit___block_invoke_cold_1();
    }

    v1 = *v2;
    *(*v4 + 18) = *v2;
    v3 = *v4;
  }

  v6 = v3[19];
  if (v1 != v6)
  {
    v3[19] = v1;
    if (v1 < v6)
    {
      [*v4 _loadIfNeeded];
    }
  }
}

- (void)setComponentForExpandingPadding:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__CUIKEventLoader_setComponentForExpandingPadding___block_invoke;
  v3[3] = &unk_1E8399BB0;
  v3[4] = self;
  v3[5] = a3;
  withLock(&self->_occurrencesLock, v3);
}

uint64_t __51__CUIKEventLoader_setComponentForExpandingPadding___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (v1 != *(v2 + 80))
  {
    *(v2 + 80) = v1;
  }

  return result;
}

- (void)setPreferredReloadStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CUIKEventLoader_setPreferredReloadStartDate_endDate___block_invoke;
  v10[3] = &unk_1E839A260;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  withLock(&self->_occurrencesLock, v10);
}

void __55__CUIKEventLoader_setPreferredReloadStartDate_endDate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 timeIntervalSinceReferenceDate];
  }

  else
  {
    v3 = 0x7FF0000000000000;
  }

  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  *(v5 + 88) = v3;
  v6 = v4[2];
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
  }

  else
  {
    v7 = 0x7FF0000000000000;
  }

  *(*v4 + 96) = v7;
  v8 = +[CUIKLogSubsystem eventLoader];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __55__CUIKEventLoader_setPreferredReloadStartDate_endDate___block_invoke_cold_1();
  }
}

- (BOOL)isLoadedOrLoading:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FF0000000000000;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FF0000000000000;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__CUIKEventLoader_isLoadedOrLoading_endDate___block_invoke;
  v12[3] = &unk_1E839B150;
  v12[4] = self;
  v12[5] = &v17;
  v12[6] = &v13;
  withLock(&self->_occurrencesLock, v12);
  [v6 timeIntervalSinceReferenceDate];
  v10 = 0;
  if (v8 >= v18[3])
  {
    [v7 timeIntervalSinceReferenceDate];
    if (v9 <= v14[3])
    {
      v10 = 1;
    }
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

double __45__CUIKEventLoader_isLoadedOrLoading_endDate___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 136);
  result = *(a1[4] + 144);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)setSelectedCalendars:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CUIKEventLoader_setSelectedCalendars___block_invoke;
  v7[3] = &unk_1E839AF18;
  v5 = v4;
  v8 = v5;
  v9 = self;
  v10 = &v11;
  withLock(&self->_occurrencesLock, v7);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

uint64_t __40__CUIKEventLoader_setSelectedCalendars___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToSet:*(*(a1 + 40) + 48)];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) copy];
    v4 = *(a1 + 40);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    ++*(*(a1 + 40) + 56);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = *(a1 + 40);

    return [v6 _loadIfNeeded];
  }

  return result;
}

- (void)setTimeZone:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__CUIKEventLoader_setTimeZone___block_invoke;
  v6[3] = &unk_1E839AF18;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  v8 = &v9;
  withLock(&self->_occurrencesLock, v6);
  if (*(v10 + 24) == 1)
  {
    [(CUIKEventLoader *)self reload];
  }

  _Block_object_dispose(&v9, 8);
}

void __31__CUIKEventLoader_setTimeZone___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 224) isEqual:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 224), *(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)_groupForGeneration:(unint64_t)a3
{
  os_unfair_lock_assert_owner(&self->_occurrencesLock);
  if (self->_loadedGeneration >= a3)
  {
    v8 = 0;
  }

  else
  {
    if (!self->_waitersByGeneration)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      waitersByGeneration = self->_waitersByGeneration;
      self->_waitersByGeneration = v5;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v8 = [(NSMutableDictionary *)self->_waitersByGeneration objectForKeyedSubscript:v7];
    if (!v8)
    {
      v8 = dispatch_group_create();
      [(NSMutableDictionary *)self->_waitersByGeneration setObject:v8 forKeyedSubscript:v7];
      dispatch_group_enter(v8);
    }
  }

  return v8;
}

- (void)waitForBackgroundLoad:(unint64_t)a3
{
  v5 = dispatch_time(0, 700000000);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__15;
  v12 = __Block_byref_object_dispose__15;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CUIKEventLoader_waitForBackgroundLoad___block_invoke;
  v7[3] = &unk_1E839B178;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  withLock(&self->_occurrencesLock, v7);
  v6 = v9[5];
  if (v6)
  {
    dispatch_group_wait(v6, v5);
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __41__CUIKEventLoader_waitForBackgroundLoad___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _groupForGeneration:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)occurrencesForStartDate:(id)a3 endDate:(id)a4 preSorted:(BOOL)a5 waitForLoad:(BOOL)a6 isComplete:(BOOL *)a7
{
  v8 = a6;
  v9 = a5;
  v54 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (!v12)
  {
    v30 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventLoader occurrencesForStartDate:endDate:preSorted:waitForLoad:isComplete:];
    }

    goto LABEL_26;
  }

  if (!v13)
  {
    v30 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventLoader occurrencesForStartDate:endDate:preSorted:waitForLoad:isComplete:];
    }

LABEL_26:

    v31 = [CUIKOccurrencesCollection alloc];
    v29 = [(CUIKOccurrencesCollection *)v31 initWithOccurrences:MEMORY[0x1E695E0F0] timedOccurrences:MEMORY[0x1E695E0F0] allDayOccurrences:MEMORY[0x1E695E0F0]];
    goto LABEL_27;
  }

  [v12 timeIntervalSinceReferenceDate];
  v16 = v15;
  [v14 timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = +[CUIKLogSubsystem eventLoader];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEventLoader occurrencesForStartDate:v16 endDate:v18 preSorted:? waitForLoad:? isComplete:?];
  }

  if (v18 - v16 > (86400 * self->_maxDaysToCache))
  {
    [(CUIKEventLoader *)self setCacheLimit:((v18 - v16) / 86400.0)];
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __84__CUIKEventLoader_occurrencesForStartDate_endDate_preSorted_waitForLoad_isComplete___block_invoke;
  v48[3] = &unk_1E839B1A0;
  *&v48[6] = v16;
  *&v48[7] = v18;
  v48[4] = self;
  v48[5] = &v49;
  withLock(&self->_occurrencesLock, v48);
  if (v8)
  {
    [(CUIKEventLoader *)self waitForBackgroundLoad:v50[3]];
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__15;
  v46 = __Block_byref_object_dispose__15;
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __84__CUIKEventLoader_occurrencesForStartDate_endDate_preSorted_waitForLoad_isComplete___block_invoke_2;
  v37[3] = &unk_1E839B1F0;
  *&v37[7] = v16;
  *&v37[8] = v18;
  v37[4] = self;
  v37[5] = &v42;
  v37[9] = a7;
  v37[6] = &v38;
  withLock(&self->_occurrencesLock, v37);
  if (v9)
  {
    [v43[5] sortUsingFunction:CUIKCompareEKEvents context:0];
  }

  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = v43[5];
  v23 = [v22 countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v23)
  {
    v24 = *v34;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v33 + 1) + 8 * i);
        if ([v26 isAllDay])
        {
          v27 = v20;
        }

        else
        {
          v27 = v21;
        }

        [v27 addObject:v26];
      }

      v23 = [v22 countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v23);
  }

  v28 = [CUIKOccurrencesCollection alloc];
  v29 = [(CUIKOccurrencesCollection *)v28 initWithOccurrences:v43[5] timedOccurrences:v21 allDayOccurrences:v20 generation:*(v39 + 6)];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v49, 8);
LABEL_27:

  return v29;
}

uint64_t __84__CUIKEventLoader_occurrencesForStartDate_endDate_preSorted_waitForLoad_isComplete___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 104) = *(a1 + 48);
  *(*(a1 + 32) + 112) = *(a1 + 56);
  result = [*(a1 + 32) _loadIfNeededBetweenStart:0 end:*(a1 + 48) loadPaddingNow:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __84__CUIKEventLoader_occurrencesForStartDate_endDate_preSorted_waitForLoad_isComplete___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__CUIKEventLoader_occurrencesForStartDate_endDate_preSorted_waitForLoad_isComplete___block_invoke_3;
  aBlock[3] = &unk_1E839B1C8;
  v35 = *(a1 + 56);
  aBlock[4] = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        if (([*(*(a1 + 32) + 40) containsObject:v8] & 1) == 0)
        {
          v9 = CFSetGetValue(*(*(a1 + 32) + 24), v8);
          v10 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = v8;
          }

          v12 = v11;
          v2[2](v2, v12);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v5);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = *(*(a1 + 32) + 32);
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        if (([*(*(a1 + 32) + 40) containsObject:{v18, v26}] & 1) == 0)
        {
          v2[2](v2, v18);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v15);
  }

  v19 = *(a1 + 72);
  if (v19)
  {
    v20 = *(a1 + 32);
    v21 = *(v20 + 120);
    v25 = v21 != INFINITY && (v22 = *(v20 + 128), v22 != INFINITY) && ((v23 = *(a1 + 56), v23 >= v21) ? (v24 = v23 <= v22) : (v24 = 0), v24) && *(a1 + 64) <= v22;
    *v19 = v25;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 200) + 1;
}

void __84__CUIKEventLoader_occurrencesForStartDate_endDate_preSorted_waitForLoad_isComplete___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 startCalendarDate];
  [v3 absoluteTime];
  v5 = v4;

  if (v5 >= *(a1 + 40))
  {
    if (v5 >= *(a1 + 48))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [v9 endCalendarDate];
  [v6 absoluteTime];
  v8 = v7;

  if (v8 > *(a1 + 40))
  {
LABEL_5:
    [*(*(*(a1 + 32) + 8) + 40) addObject:v9];
  }

LABEL_6:
}

- (void)loadIfNeeded
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __31__CUIKEventLoader_loadIfNeeded__block_invoke;
  v2[3] = &unk_1E8399BD8;
  v2[4] = self;
  withLock(&self->_occurrencesLock, v2);
}

- (void)_loadIfNeededWithImmediatePadding:(BOOL)a3
{
  v3 = a3;
  preferredReloadStart = self->_preferredReloadStart;
  if (preferredReloadStart == INFINITY)
  {
    preferredReloadStart = self->_lastRequestedStart;
  }

  preferredReloadEnd = self->_preferredReloadEnd;
  if (preferredReloadEnd == INFINITY)
  {
    preferredReloadEnd = self->_lastRequestedEnd;
  }

  if (preferredReloadStart != INFINITY && preferredReloadEnd != INFINITY)
  {
    v8 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(CUIKEventLoader *)preferredReloadStart _loadIfNeededWithImmediatePadding:?];
    }

    [(CUIKEventLoader *)self _loadIfNeededBetweenStart:v3 end:preferredReloadStart loadPaddingNow:preferredReloadEnd];
  }
}

- (unint64_t)_loadIfNeededBetweenStart:(double)a3 end:(double)a4 loadPaddingNow:(BOOL)a5
{
  v5 = a5;
  os_unfair_lock_assert_owner(&self->_occurrencesLock);
  v27 = 0.0;
  v26 = 0.0;
  [(CUIKEventLoader *)self _getStart:self->_daysOfPadding end:self->_timeZone paddedByDays:&v27 inTimeZone:&v26 resultStart:a3 resultEnd:a4];
  [(CUIKEventLoader *)self _getStart:self->_componentForExpandingPadding end:&v27 expandedToComponents:&v26 withResultStart:v27 resultEnd:v26];
  v9 = v27;
  v10 = v26;
  if (v5)
  {
    v11 = v26;
  }

  else
  {
    v11 = a4;
  }

  if (v5)
  {
    v12 = v27;
  }

  else
  {
    v12 = a3;
  }

  loadingStart = self->_loadingStart;
  if (loadingStart == INFINITY)
  {
    v14 = [(CUIKEventLoader *)self _setMonitoredRange:v5 end:v12 loadingPadding:v11];
    if (v12 != v9 || v11 != v10)
    {
LABEL_40:
      v21 = dispatch_time(0, (self->_paddingLoadDelay * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__CUIKEventLoader__loadIfNeededBetweenStart_end_loadPaddingNow___block_invoke;
      block[3] = &unk_1E839B218;
      block[4] = self;
      *&block[5] = a3;
      *&block[6] = a4;
      dispatch_after(v21, MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    if (loadingStart >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = self->_loadingStart;
    }

    if (self->_loadingEnd >= v11)
    {
      loadingEnd = self->_loadingEnd;
    }

    else
    {
      loadingEnd = v11;
    }

    v24 = 0.0;
    v25 = 0.0;
    [(CUIKEventLoader *)self _getStart:self->_maxDaysToCache end:self->_timeZone paddedByDays:&v25 inTimeZone:&v24 resultStart:self->_lastRequestedStart resultEnd:self->_lastRequestedEnd];
    if (v25 < self->_loadingEnd && v24 > self->_loadingStart)
    {
      if (v16 >= v25)
      {
        v12 = v16;
      }

      else
      {
        v12 = v25;
      }

      if (loadingEnd >= v24)
      {
        v11 = v24;
      }

      else
      {
        v11 = loadingEnd;
      }
    }

    if (v5)
    {
      return [(CUIKEventLoader *)self _setMonitoredRange:1 end:v12 loadingPadding:v11];
    }

    else
    {
      if (v27 >= v25)
      {
        v18 = v27;
      }

      else
      {
        v18 = v25;
      }

      if (v26 >= v24)
      {
        v19 = v24;
      }

      else
      {
        v19 = v26;
      }

      v14 = [(CUIKEventLoader *)self _setMonitoredRange:0 end:v12 loadingPadding:v11];
      if (v18 < v12 || v19 > v11)
      {
        goto LABEL_40;
      }
    }
  }

  return v14;
}

void __64__CUIKEventLoader__loadIfNeededBetweenStart_end_loadPaddingNow___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__CUIKEventLoader__loadIfNeededBetweenStart_end_loadPaddingNow___block_invoke_2;
  v2[3] = &unk_1E839B218;
  v2[4] = v1;
  v3 = *(a1 + 40);
  withLock(v1 + 2, v2);
}

void __64__CUIKEventLoader__loadIfNeededBetweenStart_end_loadPaddingNow___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 136) <= *(a1 + 40) && *(v2 + 144) >= *(a1 + 48))
  {
    v4 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __64__CUIKEventLoader__loadIfNeededBetweenStart_end_loadPaddingNow___block_invoke_2_cold_1();
    }

    [*(a1 + 32) _loadIfNeededBetweenStart:1 end:*(a1 + 40) loadPaddingNow:*(a1 + 48)];
  }

  else
  {
    v3 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = (*(a1 + 40) + *MEMORY[0x1E695E468]);
      v6 = (*MEMORY[0x1E695E468] + *(a1 + 48));
      v7 = *(a1 + 32);
      v8 = *MEMORY[0x1E695E468] + *(v7 + 136);
      v9 = (*MEMORY[0x1E695E468] + *(v7 + 144));
      v10 = 134218752;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_debug_impl(&dword_1CAB19000, v3, OS_LOG_TYPE_DEBUG, "Not loading padding for request %{time_t}ld-%{time_t}ld because our loading range no longer includes the original request (now %{time_t}ld-%{time_t}ld)", &v10, 0x2Au);
    }
  }
}

- (unint64_t)_setMonitoredRange:(double)a3 end:(double)a4 loadingPadding:(BOOL)a5
{
  v5 = a5;
  v52 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_occurrencesLock);
  if (a3 >= a4)
  {
    v9 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventLoader _setMonitoredRange:v9 end:a3 loadingPadding:a4];
    }

    goto LABEL_24;
  }

  if (_setMonitoredRange_end_loadingPadding__onceToken[0] != -1)
  {
    [CUIKEventLoader _setMonitoredRange:end:loadingPadding:];
  }

  v9 = [(CUIKEventLoader *)self delegate];
  if (!v9)
  {
    v18 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CUIKEventLoader _setMonitoredRange:end:loadingPadding:];
    }

LABEL_24:
    loadingGeneration = 0;
    goto LABEL_25;
  }

  loadingStart = self->_loadingStart;
  loadingEnd = self->_loadingEnd;
  v12 = loadingStart == a3 && loadingEnd == a4;
  if (v12 && self->_loadingCalendarGeneration == self->_calendarGeneration && self->_predicateMonitor)
  {
    loadingGeneration = self->_loadingGeneration;
  }

  else
  {
    v14 = loadingEnd <= a3 || loadingStart >= a4;
    v15 = [(NSSet *)self->_selectedCalendars count];
    v16 = v15;
    if (v14 || !v15)
    {
      predicateMonitor = self->_predicateMonitor;
      if (predicateMonitor)
      {
        v20 = +[CUIKLogSubsystem eventLoader];
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
        if (v14)
        {
          if (v21)
          {
            v22 = (self->_loadingStart + *MEMORY[0x1E695E468]);
            v23 = (*MEMORY[0x1E695E468] + self->_loadingEnd);
            v24 = *MEMORY[0x1E695E468] + a3;
            v25 = (*MEMORY[0x1E695E468] + a4);
            *buf = 134218752;
            *&buf[4] = v22;
            *&buf[12] = 2048;
            *&buf[14] = v23;
            *&buf[22] = 2048;
            v49 = v24;
            v50 = 2048;
            v51 = v25;
            _os_log_debug_impl(&dword_1CAB19000, v20, OS_LOG_TYPE_DEBUG, "Proactively resetting because the old range (%{time_t}ld - %{time_t}ld) doesn't intersect the new range %{time_t}ld - %{time_t}ld.", buf, 0x2Au);
          }
        }

        else if (v21)
        {
          [CUIKEventLoader _setMonitoredRange:end:loadingPadding:];
        }

        [(EKPredicateMonitor *)self->_predicateMonitor stop];
        v26 = self->_predicateMonitor;
        self->_predicateMonitor = 0;

        LODWORD(predicateMonitor) = 1;
      }
    }

    else
    {
      LODWORD(predicateMonitor) = 0;
    }

    self->_loadingStart = a3;
    self->_loadingEnd = a4;
    self->_loadingCalendarGeneration = self->_calendarGeneration;
    v27 = self->_loadingGeneration;
    loadingGeneration = (v27 + 1);
    self->_loadingGeneration = v27 + 1;
    if (v16)
    {
      v28 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
      v29 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_loadingEnd];
      v30 = [(NSSet *)self->_selectedCalendars allObjects];
      v31 = [v9 predicateForStart:v28 end:v29 calendars:v30];

      objc_initWeak(&location, self);
      if (self->_predicateMonitor)
      {
        if (v5)
        {
          ++self->_pendingPaddingPredicateUpdates;
        }

        v32 = +[CUIKLogSubsystem eventLoader];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v38 = *MEMORY[0x1E695E468] + a3;
          v39 = (*MEMORY[0x1E695E468] + a4);
          *buf = 134218496;
          *&buf[4] = loadingGeneration;
          *&buf[12] = 2048;
          *&buf[14] = v38;
          *&buf[22] = 2048;
          v49 = v39;
          _os_log_debug_impl(&dword_1CAB19000, v32, OS_LOG_TYPE_DEBUG, "Generation %lu: Updating predicate monitor with new range %{time_t}ld - %{time_t}ld.", buf, 0x20u);
        }

        v33 = self->_predicateMonitor;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __57__CUIKEventLoader__setMonitoredRange_end_loadingPadding___block_invoke_19;
        v42[3] = &unk_1E839B2B8;
        objc_copyWeak(v43, &location);
        v43[1] = loadingGeneration;
        v43[2] = *&a3;
        v43[3] = *&a4;
        [(EKPredicateMonitor *)v33 updatePredicate:v31 completion:v42];
        objc_destroyWeak(v43);
      }

      else
      {
        v34 = +[CUIKLogSubsystem eventLoader];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v40 = *MEMORY[0x1E695E468] + a3;
          v41 = (*MEMORY[0x1E695E468] + a4);
          *buf = 134218496;
          *&buf[4] = loadingGeneration;
          *&buf[12] = 2048;
          *&buf[14] = v40;
          *&buf[22] = 2048;
          v49 = v41;
          _os_log_debug_impl(&dword_1CAB19000, v34, OS_LOG_TYPE_DEBUG, "Generation %lu: Creating predicate monitor with initial range %{time_t}ld - %{time_t}ld.", buf, 0x20u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v49) = 0;
        self->_predicateMonitorGeneration = loadingGeneration;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __57__CUIKEventLoader__setMonitoredRange_end_loadingPadding___block_invoke_17;
        v44[3] = &unk_1E839B268;
        v44[4] = buf;
        objc_copyWeak(v45, &location);
        v45[1] = loadingGeneration;
        v45[2] = *&a3;
        v45[3] = *&a4;
        v35 = [v9 monitorPredicate:v31 options:1 resultsBlock:v44];
        v37 = self->_predicateMonitor;
        p_predicateMonitor = &self->_predicateMonitor;
        *p_predicateMonitor = v35;

        [*p_predicateMonitor start];
        objc_destroyWeak(v45);
        _Block_object_dispose(buf, 8);
      }

      objc_destroyWeak(&location);
    }

    else if (predicateMonitor)
    {
      self->_predicateMonitorGeneration = loadingGeneration;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__CUIKEventLoader__setMonitoredRange_end_loadingPadding___block_invoke_16;
      block[3] = &unk_1E839B240;
      block[4] = self;
      block[5] = v27 + 1;
      *&block[6] = a3;
      *&block[7] = a4;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [(CUIKEventLoader *)self _updateLoadedGeneration:v27 + 1 start:a3 end:a4];
      ++self->_resultsReceived;
    }
  }

LABEL_25:

  return loadingGeneration;
}

void __57__CUIKEventLoader__setMonitoredRange_end_loadingPadding___block_invoke_17(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  if (a2)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 24);
    v10 = v9 ^ 1;
    *(v8 + 24) = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = a5;
  v12 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained receivedNewAndUpdatedEvents:v13 removedEvents:v12 error:v11 wasFirstResult:v10 & 1 forGeneration:*(a1 + 48) start:v9 & 1 end:*(a1 + 56) disabled:*(a1 + 64)];
}

void __57__CUIKEventLoader__setMonitoredRange_end_loadingPadding___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__CUIKEventLoader__setMonitoredRange_end_loadingPadding___block_invoke_2;
    v7[3] = &unk_1E839B290;
    v5 = v3;
    v6 = *(a1 + 40);
    v9 = WeakRetained;
    v10 = v6;
    v8 = v5;
    v11 = *(a1 + 48);
    withLock(WeakRetained + 2, v7);
  }
}

uint64_t __57__CUIKEventLoader__setMonitoredRange_end_loadingPadding___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CUIKLogSubsystem eventLoader];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__CUIKEventLoader__setMonitoredRange_end_loadingPadding___block_invoke_2_cold_1();
    }

    result = [*(a1 + 40) _reload];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __57__CUIKEventLoader__setMonitoredRange_end_loadingPadding___block_invoke_2_cold_2();
    }

    result = [*(a1 + 40) _updateLoadedGeneration:*(a1 + 48) start:*(a1 + 56) end:*(a1 + 64)];
  }

  --*(*(a1 + 40) + 216);
  return result;
}

- (void)receivedNewAndUpdatedEvents:(id)a3 removedEvents:(id)a4 error:(id)a5 wasFirstResult:(BOOL)a6 forGeneration:(unint64_t)a7 start:(double)a8 end:(double)a9 disabled:(BOOL)a10
{
  v14 = a6;
  v92 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v50 = a5;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0x7FF0000000000000;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0x7FF0000000000000;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0x7FF0000000000000;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0x7FF0000000000000;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = -1;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __115__CUIKEventLoader_receivedNewAndUpdatedEvents_removedEvents_error_wasFirstResult_forGeneration_start_end_disabled___block_invoke;
  v51[3] = &unk_1E839B2E0;
  v59 = a7;
  v51[4] = self;
  v62 = a10;
  v63 = v14;
  v60 = a8;
  v61 = a9;
  v20 = v19;
  v52 = v20;
  v54 = &v72;
  v55 = &v68;
  v21 = v18;
  v53 = v21;
  v56 = &v80;
  v57 = &v76;
  v58 = &v64;
  withLock(&self->_occurrencesLock, v51);
  if (*(v65 + 6) != -1)
  {
    v22 = [v21 count];
    v23 = v81[3];
    if (v14)
    {
      if (v23 != INFINITY)
      {
        if (v23 < a8)
        {
          a8 = v81[3];
        }

        if (v77[3] >= a9)
        {
          a9 = v77[3];
        }
      }

      v24 = +[CUIKLogSubsystem eventLoader];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a8 + *MEMORY[0x1E695E468];
        v26 = (a9 + *MEMORY[0x1E695E468]);
        v27 = *(v65 + 6);
        *buf = 134218752;
        v85 = v25;
        v86 = 2048;
        v87 = v26;
        v88 = 1024;
        v89 = v27;
        v90 = 1024;
        v91 = v22 == 0;
        _os_log_impl(&dword_1CAB19000, v24, OS_LOG_TYPE_DEFAULT, "Reporting load of events between %{time_t}ld and %{time_t}ld generation %i empty=%{BOOL}d", buf, 0x22u);
      }

      v28 = v22 == 0;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained calendarEventLoader:self occurrencesDidUpdateBetweenStart:*(v65 + 6) end:v28 generation:a8 wasEmptyLoad:a9];
LABEL_22:

      goto LABEL_23;
    }

    if (v23 != INFINITY)
    {
      v30 = v73[3];
      if (v30 != INFINITY)
      {
        v31 = v77[3];
        if (v31 >= v30)
        {
          v32 = v69[3];
          if (v23 <= v32)
          {
            if (v23 >= v30)
            {
              v43 = v73[3];
            }

            else
            {
              v43 = v81[3];
            }

            if (v31 >= v32)
            {
              v44 = v77[3];
            }

            else
            {
              v44 = v69[3];
            }

            v45 = +[CUIKLogSubsystem eventLoader];
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = *MEMORY[0x1E695E468] + a8;
              v47 = (*MEMORY[0x1E695E468] + a9);
              v48 = *(v65 + 6);
              *buf = 134218496;
              v85 = v46;
              v86 = 2048;
              v87 = v47;
              v88 = 1024;
              v89 = v48;
              _os_log_impl(&dword_1CAB19000, v45, OS_LOG_TYPE_DEFAULT, "Reporting removed and updated events between %{time_t}ld and %{time_t}ld generation %i", buf, 0x1Cu);
            }

            v49 = v22 == 0;

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained calendarEventLoader:self occurrencesDidUpdateBetweenStart:*(v65 + 6) end:v49 generation:v43 wasEmptyLoad:v44];
            goto LABEL_22;
          }
        }
      }

      v33 = +[CUIKLogSubsystem eventLoader];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = (v81[3] + *MEMORY[0x1E695E468]);
        v35 = (*MEMORY[0x1E695E468] + v77[3]);
        v36 = *(v65 + 6);
        *buf = 134218496;
        v85 = v34;
        v86 = 2048;
        v87 = v35;
        v88 = 1024;
        v89 = v36;
        _os_log_impl(&dword_1CAB19000, v33, OS_LOG_TYPE_DEFAULT, "Reporting updated events between %{time_t}ld and %{time_t}ld generation %i", buf, 0x1Cu);
      }

      v37 = objc_loadWeakRetained(&self->_delegate);
      [v37 calendarEventLoader:self occurrencesDidUpdateBetweenStart:*(v65 + 6) end:v22 == 0 generation:v81[3] wasEmptyLoad:v77[3]];
    }

    if (v73[3] != INFINITY)
    {
      v38 = +[CUIKLogSubsystem eventLoader];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = (v73[3] + *MEMORY[0x1E695E468]);
        v40 = (*MEMORY[0x1E695E468] + v69[3]);
        v41 = *(v65 + 6);
        *buf = 134218752;
        v85 = v39;
        v86 = 2048;
        v87 = v40;
        v88 = 1024;
        v89 = v41;
        v90 = 1024;
        v91 = v22 == 0;
        _os_log_impl(&dword_1CAB19000, v38, OS_LOG_TYPE_DEFAULT, "Reporting removed events between %{time_t}ld and %{time_t}ld generation %i empty=%{BOOL}d", buf, 0x22u);
      }

      v42 = v22 == 0;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained calendarEventLoader:self occurrencesDidUpdateBetweenStart:*(v65 + 6) end:v42 generation:v73[3] wasEmptyLoad:v69[3]];
      goto LABEL_22;
    }
  }

LABEL_23:

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
}

void __115__CUIKEventLoader_receivedNewAndUpdatedEvents_removedEvents_error_wasFirstResult_forGeneration_start_end_disabled___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(a1 + 96) == *(v1 + 176))
  {
    if (*(a1 + 120) == 1)
    {
      v4 = +[CUIKLogSubsystem eventLoader];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __115__CUIKEventLoader_receivedNewAndUpdatedEvents_removedEvents_error_wasFirstResult_forGeneration_start_end_disabled___block_invoke_cold_2();
      }

      [*v2 _reload];
    }

    else
    {
      if (*(v1 + 168) == *(v1 + 160))
      {
        [*(v1 + 24) removeAllObjects];
        [*(*v2 + 4) removeAllObjects];
        [*(*v2 + 5) removeAllObjects];
      }

      if (*(a1 + 121) == 1)
      {
        [*(a1 + 32) _updateLoadedGeneration:*(a1 + 96) start:*(a1 + 104) end:*(a1 + 112)];
        [*(*(a1 + 32) + 16) removeAllOccurrences];
      }

      else
      {
        v6 = [*(a1 + 40) firstObject];
        v7 = [v6 startDates];
        v8 = [v7 firstObject];

        if (v8)
        {
          [v8 timeIntervalSinceReferenceDate];
          *(*(*(a1 + 56) + 8) + 24) = v9;
          [v8 timeIntervalSinceReferenceDate];
          *(*(*(a1 + 64) + 8) + 24) = v10;
        }

        v64 = v8;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        obj = *(a1 + 40);
        v67 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
        if (v67)
        {
          v66 = *v77;
          do
          {
            for (i = 0; i != v67; ++i)
            {
              if (*v77 != v66)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v76 + 1) + 8 * i);
              v13 = [v12 objectID];
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v75 = 0u;
              v14 = [v12 startDates];
              v15 = [v14 countByEnumeratingWithState:&v72 objects:v81 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v73;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v73 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v72 + 1) + 8 * j);
                    v20 = [*(*v2 + 2) occurrenceWithID:v13 date:v19];
                    if (v20)
                    {
                      [*(*(a1 + 32) + 16) removeOccurrenceWithID:v13 date:v19];
                      v21 = *(*(*(a1 + 56) + 8) + 24);
                      v22 = [v20 startDate];
                      [v22 timeIntervalSinceReferenceDate];
                      v24 = v23;

                      if (v21 >= v24)
                      {
                        v25 = v24;
                      }

                      else
                      {
                        v25 = v21;
                      }

                      *(*(*(a1 + 56) + 8) + 24) = v25;
                      v26 = *(*(*(a1 + 64) + 8) + 24);
                      v27 = [v20 endDateUnadjustedForLegacyClients];
                      [v27 timeIntervalSinceReferenceDate];
                      v29 = v28;

                      if (v26 >= v29)
                      {
                        v30 = v26;
                      }

                      else
                      {
                        v30 = v29;
                      }

                      *(*(*(a1 + 64) + 8) + 24) = v30;
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v72 objects:v81 count:16];
                }

                while (v16);
              }
            }

            v67 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
          }

          while (v67);
        }
      }

      v31 = *(a1 + 32);
      v32 = *(v31 + 136);
      v33 = *(*(a1 + 56) + 8);
      if (*(*(*(a1 + 64) + 8) + 24) >= v32 && (v34 = *(v33 + 24), v34 <= *(v31 + 144)))
      {
        if (v34 != INFINITY)
        {
          if (v34 >= v32)
          {
            v32 = *(v33 + 24);
          }

          *(v33 + 24) = v32;
          v62 = *(*(a1 + 64) + 8);
          v63 = *(v62 + 24);
          if (v63 >= *(*(a1 + 32) + 144))
          {
            v63 = *(*(a1 + 32) + 144);
          }

          *(v62 + 24) = v63;
        }
      }

      else
      {
        *(v33 + 24) = 0x7FF0000000000000;
        *(*(*(a1 + 64) + 8) + 24) = 0x7FF0000000000000;
      }

      v35 = [*(a1 + 48) firstObject];
      v36 = v35;
      if (v35)
      {
        v37 = [v35 startDate];
        [v37 timeIntervalSinceReferenceDate];
        *(*(*(a1 + 72) + 8) + 24) = v38;

        v39 = [v36 endDateUnadjustedForLegacyClients];
        [v39 timeIntervalSinceReferenceDate];
        *(*(*(a1 + 80) + 8) + 24) = v40;
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v41 = *(a1 + 48);
      v42 = [v41 countByEnumeratingWithState:&v68 objects:v80 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v69;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v69 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v68 + 1) + 8 * k);
            [*(*(a1 + 32) + 16) removeOccurrence:v46];
            [*(*(a1 + 32) + 16) addOccurrence:v46];
            [v46 setLocationPredictionAllowed:*(*(a1 + 32) + 232)];
            v47 = *(*(*(a1 + 72) + 8) + 24);
            v48 = [v46 startDate];
            [v48 timeIntervalSinceReferenceDate];
            v50 = v49;

            if (v47 >= v50)
            {
              v51 = v50;
            }

            else
            {
              v51 = v47;
            }

            *(*(*(a1 + 72) + 8) + 24) = v51;
            v52 = *(*(*(a1 + 80) + 8) + 24);
            v53 = [v46 endDateUnadjustedForLegacyClients];
            [v53 timeIntervalSinceReferenceDate];
            v55 = v54;

            if (v52 >= v55)
            {
              v56 = v52;
            }

            else
            {
              v56 = v55;
            }

            *(*(*(a1 + 80) + 8) + 24) = v56;
          }

          v43 = [v41 countByEnumeratingWithState:&v68 objects:v80 count:16];
        }

        while (v43);
      }

      v57 = *(*(a1 + 72) + 8);
      v58 = *(v57 + 24);
      if (v58 != INFINITY)
      {
        v59 = *(a1 + 32);
        if (v58 < *(v59 + 136))
        {
          v58 = *(v59 + 136);
        }

        *(v57 + 24) = v58;
        v60 = *(*(a1 + 80) + 8);
        v61 = *(v60 + 24);
        if (v61 >= *(*(a1 + 32) + 144))
        {
          v61 = *(*(a1 + 32) + 144);
        }

        *(v60 + 24) = v61;
      }

      *(*(*(a1 + 88) + 8) + 24) = ++*(*(a1 + 32) + 200) + 1;
    }
  }

  else
  {
    v5 = +[CUIKLogSubsystem eventLoader];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __115__CUIKEventLoader_receivedNewAndUpdatedEvents_removedEvents_error_wasFirstResult_forGeneration_start_end_disabled___block_invoke_cold_1();
    }
  }
}

- (void)_updateLoadedGeneration:(unint64_t)a3 start:(double)a4 end:(double)a5
{
  self->_loadedGeneration = a3;
  self->_loadedStart = a4;
  self->_loadedEnd = a5;
  notifiedGeneration = self->_notifiedGeneration;
  if (notifiedGeneration < a3)
  {
    v16 = v8;
    v17 = v7;
    v18 = v6;
    v19 = v5;
    v20 = v9;
    v21 = v10;
    do
    {
      self->_notifiedGeneration = notifiedGeneration + 1;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v16, v17, v18, v19, v20, v21}];
      v14 = [(NSMutableDictionary *)self->_waitersByGeneration objectForKeyedSubscript:v13];
      v15 = v14;
      if (v14)
      {
        dispatch_group_leave(v14);
      }

      [(NSMutableDictionary *)self->_waitersByGeneration removeObjectForKey:v13];

      notifiedGeneration = self->_notifiedGeneration;
    }

    while (notifiedGeneration < self->_loadedGeneration);
  }
}

- (void)_getStart:(double)a3 end:(double)a4 expandedToComponents:(unint64_t)a5 withResultStart:(double *)a6 resultEnd:(double *)a7
{
  v10 = a3;
  if (a5)
  {
    v11 = a5;
    v13 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:self->_timeZone timeZone:a3];
    v14 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:self->_timeZone timeZone:a4];
    v15 = v14;
    if ((v11 & 0x10) == 0)
    {
      if ((v11 & 0x1000) == 0)
      {
        if ((v11 & 8) == 0)
        {
          v16 = v13;
          v17 = v15;
LABEL_9:
          v18 = v17;
LABEL_10:
          [v16 absoluteTime];
          v10 = v19;
          [v18 absoluteTime];
          a4 = v20;

          goto LABEL_11;
        }

        if ([v14 differenceInDays:v13] < 7)
        {
          v21 = [v13 calendarDateForMonth];
          v16 = [v21 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

          v22 = [v15 calendarDateForEndOfMonth];
          v18 = [v22 calendarDateForEndOfWeekWithWeekStart:CUIKOneIndexedWeekStart()];

          goto LABEL_10;
        }
      }

      v16 = [v13 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
      v17 = [v15 calendarDateForEndOfWeekWithWeekStart:CUIKOneIndexedWeekStart()];
      goto LABEL_9;
    }

    v16 = [v13 calendarDateForDay];
    v17 = [v15 calendarDateForEndOfDay];
    goto LABEL_9;
  }

LABEL_11:
  if (a6)
  {
    *a6 = v10;
  }

  if (a7)
  {
    *a7 = a4;
  }
}

- (void)_getStart:(double)a3 end:(double)a4 paddedByDays:(int)a5 inTimeZone:(id)a6 resultStart:(double *)a7 resultEnd:(double *)a8
{
  v10 = a6;
  CalAbsoluteTimeAddGregorianUnits();
  v12 = v11;
  CalAbsoluteTimeAddGregorianUnits();
  v14 = v13;

  if (a7)
  {
    *a7 = v12;
  }

  if (a8)
  {
    *a8 = v14;
  }
}

void __33__CUIKEventLoader_setCacheLimit___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void __55__CUIKEventLoader_setPreferredReloadStartDate_endDate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)occurrencesForStartDate:(double)a1 endDate:(double)a2 preSorted:waitForLoad:isComplete:.cold.1(double a1, double a2)
{
  OUTLINED_FUNCTION_4(a1, a2, *MEMORY[0x1E695E468]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_loadIfNeededWithImmediatePadding:(double)a1 .cold.1(double a1, double a2)
{
  OUTLINED_FUNCTION_4(a1, a2, *MEMORY[0x1E695E468]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __64__CUIKEventLoader__loadIfNeededBetweenStart_end_loadPaddingNow___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)_setMonitoredRange:(NSObject *)a1 end:(double)a2 loadingPadding:(double)a3 .cold.1(NSObject *a1, double a2, double a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = __GetDateFormatter();
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a2];
  v8 = [v6 stringFromDate:v7];
  v9 = __GetDateFormatter();
  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v11 = [v9 stringFromDate:v10];
  v12 = 138412546;
  v13 = v8;
  v14 = 2112;
  v15 = v11;
  _os_log_error_impl(&dword_1CAB19000, a1, OS_LOG_TYPE_ERROR, "EventLoader: Attempted to enqueue load request with start >= end (start = %@, end = %@)", &v12, 0x16u);
}

- (void)_setMonitoredRange:end:loadingPadding:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __115__CUIKEventLoader_receivedNewAndUpdatedEvents_removedEvents_error_wasFirstResult_forGeneration_start_end_disabled___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void __115__CUIKEventLoader_receivedNewAndUpdatedEvents_removedEvents_error_wasFirstResult_forGeneration_start_end_disabled___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end