@interface FCGoalCompletionStore
- (BOOL)isDailyGoalTypeMet:(int64_t)a3 activitySummaryIndex:(int64_t)a4;
- (FCGoalCompletionStore)initWithProfile:(id)a3;
- (id)_goalCompletionByActivitySummaryIndex;
- (id)_trimOldGoalCompletions:(id)a3 index:(int64_t)a4;
- (id)_userDefaultsDomain;
- (id)allGoalTypesMetForActivitySummaryIndex:(int64_t)a3;
- (id)goalTypesToNotifyByActivitySummaryIndex;
- (id)goalTypesToNotifyForActivitySummaryIndex:(int64_t)a3;
- (int64_t)_activitySummaryIndexForDate:(id)a3;
- (unint64_t)_goalTypesMetForActivitySummaryIndex:(int64_t)a3;
- (void)_setGoalCompletionByActivitySummaryIndex:(id)a3;
- (void)_setGoalTypesMet:(unint64_t)a3 forActivitySummaryIndex:(int64_t)a4;
- (void)_setGoalTypesToNotifyByActivitySummaryIndex:(id)a3;
- (void)addDailyGoalTypePreviouslyMet:(int64_t)a3 activitySummaryIndex:(int64_t)a4;
- (void)addGoalTypeToDailyGoalTypesMet:(int64_t)a3 activitySummaryIndex:(int64_t)a4;
- (void)addGoalTypeToNotify:(int64_t)a3 activitySummaryIndex:(int64_t)a4;
- (void)removeGoalTypesToNotify:(id)a3 activitySummaryIndex:(int64_t)a4;
@end

@implementation FCGoalCompletionStore

- (FCGoalCompletionStore)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FCGoalCompletionStore;
  v5 = [(FCGoalCompletionStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v6->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (int64_t)_activitySummaryIndexForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 hk_gregorianCalendar];
  v6 = [v5 components:*MEMORY[0x277CCE1D0] fromDate:v4];

  v7 = _HKCacheIndexFromDateComponents();
  return v7;
}

- (id)allGoalTypesMetForActivitySummaryIndex:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(FCGoalCompletionStore *)self _goalTypesMetForActivitySummaryIndex:a3];
  v7 = v6;
  if (v6)
  {
    [v5 addObject:&unk_285E869D8];
    if ((v7 & 2) == 0)
    {
LABEL_3:
      if ((v7 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:&unk_285E869F0];
  if ((v7 & 4) != 0)
  {
LABEL_4:
    [v5 addObject:&unk_285E86A08];
  }

LABEL_5:
  v8 = [v5 copy];

  return v8;
}

- (void)addGoalTypeToDailyGoalTypesMet:(int64_t)a3 activitySummaryIndex:(int64_t)a4
{
  v7 = [(FCGoalCompletionStore *)self _goalTypesMetForActivitySummaryIndex:a4];
  v8 = v7 | 2;
  v9 = v7 | 1;
  if (a3 != 1)
  {
    v9 = v7;
  }

  if (a3 != 2)
  {
    v8 = v9;
  }

  if (a3 == 3)
  {
    v10 = v7 | 4;
  }

  else
  {
    v10 = v8;
  }

  [(FCGoalCompletionStore *)self _setGoalTypesMet:v10 forActivitySummaryIndex:a4];
}

- (BOOL)isDailyGoalTypeMet:(int64_t)a3 activitySummaryIndex:(int64_t)a4
{
  v5 = [(FCGoalCompletionStore *)self _goalTypesMetForActivitySummaryIndex:a4];
  v6 = (v5 >> 2) & 1;
  v7 = (v5 >> 1) & 1;
  if (a3 == 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (a3 != 2)
  {
    LOBYTE(v7) = v8;
  }

  if (a3 != 3)
  {
    LOBYTE(v6) = v7;
  }

  return v6 & 1;
}

- (void)addDailyGoalTypePreviouslyMet:(int64_t)a3 activitySummaryIndex:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  if (![FCGoalCompletionStore isDailyGoalTypeMet:"isDailyGoalTypeMet:activitySummaryIndex:" activitySummaryIndex:?])
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218240;
      v10 = a3;
      v11 = 2048;
      v12 = a4;
      _os_log_impl(&dword_24B55B000, v7, OS_LOG_TYPE_DEFAULT, "Goal type %ld was previously met for activitySummaryIndex: %lld", &v9, 0x16u);
    }

    [(FCGoalCompletionStore *)self addGoalTypeToDailyGoalTypesMet:a3 activitySummaryIndex:a4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addGoalTypeToNotify:(int64_t)a3 activitySummaryIndex:(int64_t)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = [(FCGoalCompletionStore *)self goalTypesToNotifyByActivitySummaryIndex];
  v8 = v7;
  v9 = MEMORY[0x277CBEC10];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v12 allObjects];
  v14 = v13;
  v15 = MEMORY[0x277CBEBF8];
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v18 = [v16 arrayByAddingObject:v17];

  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v29 = v19;
  v20 = [MEMORY[0x277CBEB98] setWithArray:v18];
  v30[0] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

  v22 = [v10 hk_dictionaryByAddingEntriesFromDictionary:v21];

  [(FCGoalCompletionStore *)self _setGoalTypesToNotifyByActivitySummaryIndex:v22];
  _HKInitializeLogging();
  v23 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134218242;
    v26 = a3;
    v27 = 2112;
    v28 = v22;
    _os_log_impl(&dword_24B55B000, v23, OS_LOG_TYPE_DEFAULT, "Added goal type to be notified: %ld, %@", &v25, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)removeGoalTypesToNotify:(id)a3 activitySummaryIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(FCGoalCompletionStore *)self goalTypesToNotifyByActivitySummaryIndex];
  v15 = [v7 mutableCopy];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v9 = [v15 objectForKeyedSubscript:v8];
  v10 = [v9 allObjects];
  v11 = [v10 mutableCopy];

  v12 = [v6 allObjects];

  [v11 removeObjectsInArray:v12];
  v13 = [MEMORY[0x277CBEB98] setWithArray:v11];
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  [v15 setObject:v13 forKeyedSubscript:v14];

  [(FCGoalCompletionStore *)self _setGoalTypesToNotifyByActivitySummaryIndex:v15];
}

- (id)goalTypesToNotifyForActivitySummaryIndex:(int64_t)a3
{
  v4 = [(FCGoalCompletionStore *)self goalTypesToNotifyByActivitySummaryIndex];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v9 = v8;

  return v9;
}

- (void)_setGoalTypesMet:(unint64_t)a3 forActivitySummaryIndex:(int64_t)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v17 = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v18[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v10 = [(FCGoalCompletionStore *)self _goalCompletionByActivitySummaryIndex];
  v11 = v10;
  v12 = MEMORY[0x277CBEC10];
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [v13 hk_dictionaryByAddingEntriesFromDictionary:v9];

  v15 = [(FCGoalCompletionStore *)self _trimOldGoalCompletions:v14 index:a4];
  [(FCGoalCompletionStore *)self _setGoalCompletionByActivitySummaryIndex:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_goalTypesMetForActivitySummaryIndex:(int64_t)a3
{
  v4 = [(FCGoalCompletionStore *)self _goalCompletionByActivitySummaryIndex];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_trimOldGoalCompletions:(id)a3 index:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 allKeys];
  if ([v6 count] >= 8)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [v6 sortedArrayUsingSelector:sel_compare_];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__FCGoalCompletionStore__trimOldGoalCompletions_index___block_invoke;
    v13[3] = &unk_27900B448;
    v16 = a4;
    v9 = v7;
    v14 = v9;
    v15 = v5;
    v10 = v5;
    [v8 enumerateObjectsWithOptions:2 usingBlock:v13];
    v11 = v15;
    v5 = v9;
  }

  return v5;
}

void __55__FCGoalCompletionStore__trimOldGoalCompletions_index___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 unsignedLongLongValue] <= *(a1 + 48))
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:v9];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v9];

    v7 = [*(a1 + 32) allKeys];
    v8 = [v7 count];

    if (v8 == 7)
    {
      *a4 = 1;
    }
  }
}

- (id)goalTypesToNotifyByActivitySummaryIndex
{
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = self->_goalTypesToNotifyByActivitySummaryIndex;
  os_unfair_lock_unlock(&self->_unfairLock);

  return v3;
}

- (void)_setGoalTypesToNotifyByActivitySummaryIndex:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  goalTypesToNotifyByActivitySummaryIndex = self->_goalTypesToNotifyByActivitySummaryIndex;
  self->_goalTypesToNotifyByActivitySummaryIndex = v4;

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (id)_goalCompletionByActivitySummaryIndex
{
  v17[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = [(FCGoalCompletionStore *)self _userDefaultsDomain];
  v4 = [v3 dataForKey:@"dailyGoalCompletionData" error:0];
  os_unfair_lock_unlock(&self->_unfairLock);
  v5 = MEMORY[0x277CBEB98];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v7 = [v5 setWithArray:v6];

  v14 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v4 error:&v14];
  v9 = v14;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_24B55B000, v10, OS_LOG_TYPE_DEFAULT, "Unable to obtain the goal types met for activity summary index: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_setGoalCompletionByActivitySummaryIndex:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v12];
  v5 = v12;
  if (v5)
  {
    v6 = v5;
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_24B55B000, v7, OS_LOG_TYPE_DEFAULT, "Unable to set the goals type met: %@", buf, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_unfairLock);
    v8 = [(FCGoalCompletionStore *)self _userDefaultsDomain];
    v11 = 0;
    [v8 setData:v4 forKey:@"dailyGoalCompletionData" error:&v11];
    v6 = v11;
    if (v6)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_24B55B000, v9, OS_LOG_TYPE_DEFAULT, "Unable to store the goal types met for activity summary index: %@", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock(&self->_unfairLock);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_userDefaultsDomain
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__FCGoalCompletionStore__userDefaultsDomain__block_invoke;
  block[3] = &unk_27900B3B0;
  block[4] = self;
  if (_userDefaultsDomain_onceToken != -1)
  {
    dispatch_once(&_userDefaultsDomain_onceToken, block);
  }

  return _userDefaultsDomain_defaultsDomain;
}

void __44__FCGoalCompletionStore__userDefaultsDomain__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [v2 initWithCategory:1 domainName:@"com.apple.nanolifestyle.coaching.goalCompletion" profile:WeakRetained];
  v4 = _userDefaultsDomain_defaultsDomain;
  _userDefaultsDomain_defaultsDomain = v3;
}

@end