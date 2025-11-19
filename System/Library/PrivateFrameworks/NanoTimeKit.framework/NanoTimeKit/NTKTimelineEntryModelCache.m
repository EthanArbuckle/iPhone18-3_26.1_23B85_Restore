@interface NTKTimelineEntryModelCache
+ (id)_startOfDayAfterDate:(id)a3;
+ (id)_startOfDayBeforeDate:(id)a3;
+ (id)_startOfDayForDate:(id)a3;
- (BOOL)hasEntryModelForDate:(id)a3;
- (NTKTimelineEntryModelCache)init;
- (NTKTimelineEntryModelCacheDataSource)dataSource;
- (id)_cachedEntryModelAfterDate:(id)a3 limit:(unint64_t)a4;
- (id)_cachedEntryModelBeforeDate:(id)a3 limit:(unint64_t)a4;
- (id)_cachedEntryModelForDate:(id)a3;
- (id)entryModelForDate:(id)a3;
- (id)entryModelsAfterDate:(id)a3 limit:(unint64_t)a4;
- (id)entryModelsBeforeDate:(id)a3 limit:(unint64_t)a4;
- (void)_extendCacheTowardDate:(id)a3;
- (void)invalidate;
@end

@implementation NTKTimelineEntryModelCache

- (NTKTimelineEntryModelCache)init
{
  v6.receiver = self;
  v6.super_class = NTKTimelineEntryModelCache;
  v2 = [(NTKTimelineEntryModelCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    cachedEntryModels = v2->_cachedEntryModels;
    v2->_cachedEntryModels = v3;

    [(NTKTimelineEntryModelCache *)v2 invalidate];
  }

  return v2;
}

- (BOOL)hasEntryModelForDate:(id)a3
{
  v3 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelForDate:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)entryModelForDate:(id)a3
{
  v4 = a3;
  [(NTKTimelineEntryModelCache *)self _extendCacheTowardDate:v4];
  v5 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelForDate:v4];

  return v5;
}

- (id)entryModelsBeforeDate:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() _startOfDayBeforeDate:v6];
  [(NTKTimelineEntryModelCache *)self _extendCacheTowardDate:v7];
  v8 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelBeforeDate:v6 limit:a4];

  return v8;
}

- (id)entryModelsAfterDate:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() _startOfDayAfterDate:v6];
  [(NTKTimelineEntryModelCache *)self _extendCacheTowardDate:v7];
  v8 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelAfterDate:v6 limit:a4];

  return v8;
}

- (void)invalidate
{
  [(NSMutableArray *)self->_cachedEntryModels removeAllObjects];
  cachedEntryModels = self->_cachedEntryModels;
  self->_cachedEntryModels = 0;

  cacheStartDate = self->_cacheStartDate;
  self->_cacheStartDate = 0;

  cacheEndDate = self->_cacheEndDate;
  self->_cacheEndDate = 0;
}

- (void)_extendCacheTowardDate:(id)a3
{
  v4 = a3;
  v22 = v4;
  if (!self->_cachedEntryModels)
  {
    v15 = [objc_opt_class() _startOfDayForDate:v4];
    cacheStartDate = self->_cacheStartDate;
    self->_cacheStartDate = v15;

    v17 = [objc_opt_class() _endOfDayForDate:v22];
    cacheEndDate = self->_cacheEndDate;
    self->_cacheEndDate = v17;

    v14 = [(NTKTimelineEntryModelCache *)self dataSource];
    v19 = [v14 loadEntryModelsForDay:self->_cacheStartDate];
    v20 = [v19 mutableCopy];
    cachedEntryModels = self->_cachedEntryModels;
    self->_cachedEntryModels = v20;

    goto LABEL_7;
  }

  if ([v4 isBeforeDate:self->_cacheStartDate])
  {
    v5 = [objc_opt_class() _startOfDayBeforeDate:self->_cacheStartDate];
    v6 = self->_cacheStartDate;
    self->_cacheStartDate = v5;

    v7 = [(NTKTimelineEntryModelCache *)self dataSource];
    v8 = [v7 loadEntryModelsForDay:self->_cacheStartDate];
    v9 = [v8 mutableCopy];

    [(NSMutableArray *)v9 addObjectsFromArray:self->_cachedEntryModels];
    v10 = self->_cachedEntryModels;
    self->_cachedEntryModels = v9;
  }

  if ([v22 isAfterDate:self->_cacheEndDate])
  {
    v11 = [objc_opt_class() _startOfDayAfterDate:self->_cacheEndDate];
    v12 = self->_cacheEndDate;
    self->_cacheEndDate = v11;

    v13 = [(NTKTimelineEntryModelCache *)self dataSource];
    v14 = [v13 loadEntryModelsForDay:self->_cacheEndDate];

    [(NSMutableArray *)self->_cachedEntryModels addObjectsFromArray:v14];
LABEL_7:
  }
}

- (id)_cachedEntryModelForDate:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__49;
  v16 = __Block_byref_object_dispose__49;
  v17 = 0;
  cachedEntryModels = self->_cachedEntryModels;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__NTKTimelineEntryModelCache__cachedEntryModelForDate___block_invoke;
  v9[3] = &unk_2787868E0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)cachedEntryModels enumerateObjectsWithOptions:2 usingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__NTKTimelineEntryModelCache__cachedEntryModelForDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [v8 entryDate];
  if (([*(a1 + 32) isBeforeDate:v7] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_cachedEntryModelBeforeDate:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelForDate:v6];
  v8 = [(NSMutableArray *)self->_cachedEntryModels indexOfObject:v7];
  v9 = v8;
  if (v8 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v8;
  }

  v11 = v8 - v10;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  while (v9 > v11)
  {
    v13 = [(NSMutableArray *)self->_cachedEntryModels objectAtIndexedSubscript:v9];
    v14 = [v13 entryDate];
    v15 = [v14 compare:v6];

    if (v15 == -1)
    {
      [v12 addObject:v13];
    }

    --v9;
  }

  return v12;
}

- (id)_cachedEntryModelAfterDate:(id)a3 limit:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelForDate:v6];
  if (!v7)
  {
    v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NTKTimelineEntryModelCache *)v6 _cachedEntryModelAfterDate:v9 limit:?];
    }

    goto LABEL_7;
  }

  v8 = [(NSMutableArray *)self->_cachedEntryModels indexOfObject:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      cachedEntryModels = self->_cachedEntryModels;
      v19 = 138412802;
      v20 = v7;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = cachedEntryModels;
      _os_log_error_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_ERROR, "NTKTimelineEntryModelCache: Failed to find entryForDate %@ for date %@ in models: %@.", &v19, 0x20u);
    }

LABEL_7:

    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  v13 = v8;
  v14 = [(NSMutableArray *)self->_cachedEntryModels count];
  if (v14 - v13 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v14 - v13;
  }

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
  if (v13 < v15 + v13)
  {
    do
    {
      v16 = [(NSMutableArray *)self->_cachedEntryModels objectAtIndexedSubscript:v13];
      v17 = [v16 entryDate];
      v18 = [v17 compare:v6];

      if (v18 == 1)
      {
        [v11 addObject:v16];
      }

      ++v13;
      --v15;
    }

    while (v15);
  }

LABEL_8:

  return v11;
}

+ (id)_startOfDayForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 startOfDayForDate:v4];

  return v6;
}

+ (id)_startOfDayBeforeDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 dateByAddingUnit:16 value:-1 toDate:v5 options:0];

  v8 = [a1 _startOfDayForDate:v7];

  return v8;
}

+ (id)_startOfDayAfterDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 dateByAddingUnit:16 value:1 toDate:v5 options:0];

  v8 = [a1 _startOfDayForDate:v7];

  return v8;
}

- (NTKTimelineEntryModelCacheDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_cachedEntryModelAfterDate:(os_log_t)log limit:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "NTKTimelineEntryModelCache: entryForDate is nil for date: %@. Models: %@", &v4, 0x16u);
}

@end