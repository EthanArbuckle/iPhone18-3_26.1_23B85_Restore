@interface NTKTimelineEntryModelCache
+ (id)_startOfDayAfterDate:(id)date;
+ (id)_startOfDayBeforeDate:(id)date;
+ (id)_startOfDayForDate:(id)date;
- (BOOL)hasEntryModelForDate:(id)date;
- (NTKTimelineEntryModelCache)init;
- (NTKTimelineEntryModelCacheDataSource)dataSource;
- (id)_cachedEntryModelAfterDate:(id)date limit:(unint64_t)limit;
- (id)_cachedEntryModelBeforeDate:(id)date limit:(unint64_t)limit;
- (id)_cachedEntryModelForDate:(id)date;
- (id)entryModelForDate:(id)date;
- (id)entryModelsAfterDate:(id)date limit:(unint64_t)limit;
- (id)entryModelsBeforeDate:(id)date limit:(unint64_t)limit;
- (void)_extendCacheTowardDate:(id)date;
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
    array = [MEMORY[0x277CBEB18] array];
    cachedEntryModels = v2->_cachedEntryModels;
    v2->_cachedEntryModels = array;

    [(NTKTimelineEntryModelCache *)v2 invalidate];
  }

  return v2;
}

- (BOOL)hasEntryModelForDate:(id)date
{
  v3 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelForDate:date];
  v4 = v3 != 0;

  return v4;
}

- (id)entryModelForDate:(id)date
{
  dateCopy = date;
  [(NTKTimelineEntryModelCache *)self _extendCacheTowardDate:dateCopy];
  v5 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelForDate:dateCopy];

  return v5;
}

- (id)entryModelsBeforeDate:(id)date limit:(unint64_t)limit
{
  dateCopy = date;
  v7 = [objc_opt_class() _startOfDayBeforeDate:dateCopy];
  [(NTKTimelineEntryModelCache *)self _extendCacheTowardDate:v7];
  v8 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelBeforeDate:dateCopy limit:limit];

  return v8;
}

- (id)entryModelsAfterDate:(id)date limit:(unint64_t)limit
{
  dateCopy = date;
  v7 = [objc_opt_class() _startOfDayAfterDate:dateCopy];
  [(NTKTimelineEntryModelCache *)self _extendCacheTowardDate:v7];
  v8 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelAfterDate:dateCopy limit:limit];

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

- (void)_extendCacheTowardDate:(id)date
{
  dateCopy = date;
  v22 = dateCopy;
  if (!self->_cachedEntryModels)
  {
    v15 = [objc_opt_class() _startOfDayForDate:dateCopy];
    cacheStartDate = self->_cacheStartDate;
    self->_cacheStartDate = v15;

    v17 = [objc_opt_class() _endOfDayForDate:v22];
    cacheEndDate = self->_cacheEndDate;
    self->_cacheEndDate = v17;

    dataSource = [(NTKTimelineEntryModelCache *)self dataSource];
    v19 = [dataSource loadEntryModelsForDay:self->_cacheStartDate];
    v20 = [v19 mutableCopy];
    cachedEntryModels = self->_cachedEntryModels;
    self->_cachedEntryModels = v20;

    goto LABEL_7;
  }

  if ([dateCopy isBeforeDate:self->_cacheStartDate])
  {
    v5 = [objc_opt_class() _startOfDayBeforeDate:self->_cacheStartDate];
    v6 = self->_cacheStartDate;
    self->_cacheStartDate = v5;

    dataSource2 = [(NTKTimelineEntryModelCache *)self dataSource];
    v8 = [dataSource2 loadEntryModelsForDay:self->_cacheStartDate];
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

    dataSource3 = [(NTKTimelineEntryModelCache *)self dataSource];
    dataSource = [dataSource3 loadEntryModelsForDay:self->_cacheEndDate];

    [(NSMutableArray *)self->_cachedEntryModels addObjectsFromArray:dataSource];
LABEL_7:
  }
}

- (id)_cachedEntryModelForDate:(id)date
{
  dateCopy = date;
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
  v6 = dateCopy;
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

- (id)_cachedEntryModelBeforeDate:(id)date limit:(unint64_t)limit
{
  dateCopy = date;
  v7 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelForDate:dateCopy];
  v8 = [(NSMutableArray *)self->_cachedEntryModels indexOfObject:v7];
  v9 = v8;
  if (v8 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v8;
  }

  v11 = v8 - limitCopy;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  while (v9 > v11)
  {
    v13 = [(NSMutableArray *)self->_cachedEntryModels objectAtIndexedSubscript:v9];
    entryDate = [v13 entryDate];
    v15 = [entryDate compare:dateCopy];

    if (v15 == -1)
    {
      [v12 addObject:v13];
    }

    --v9;
  }

  return v12;
}

- (id)_cachedEntryModelAfterDate:(id)date limit:(unint64_t)limit
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = [(NTKTimelineEntryModelCache *)self _cachedEntryModelForDate:dateCopy];
  if (!v7)
  {
    v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NTKTimelineEntryModelCache *)dateCopy _cachedEntryModelAfterDate:v9 limit:?];
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
      v22 = dateCopy;
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
  if (v14 - v13 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v14 - v13;
  }

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:limitCopy];
  if (v13 < limitCopy + v13)
  {
    do
    {
      v16 = [(NSMutableArray *)self->_cachedEntryModels objectAtIndexedSubscript:v13];
      entryDate = [v16 entryDate];
      v18 = [entryDate compare:dateCopy];

      if (v18 == 1)
      {
        [v11 addObject:v16];
      }

      ++v13;
      --limitCopy;
    }

    while (limitCopy);
  }

LABEL_8:

  return v11;
}

+ (id)_startOfDayForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar startOfDayForDate:dateCopy];

  return v6;
}

+ (id)_startOfDayBeforeDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:dateCopy options:0];

  v8 = [self _startOfDayForDate:v7];

  return v8;
}

+ (id)_startOfDayAfterDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:16 value:1 toDate:dateCopy options:0];

  v8 = [self _startOfDayForDate:v7];

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