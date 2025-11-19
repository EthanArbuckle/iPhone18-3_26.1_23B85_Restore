@interface CLSCalendarEventsCache
- (BOOL)hasEventsFromStartDate:(id)a3 toEndDate:(id)a4;
- (CLSCalendarEventsCache)init;
- (id)_storeDayForDate:(id)a3 createIfNeeded:(BOOL)a4;
- (id)debugDescription;
- (id)eventsForDate:(id)a3;
- (id)eventsForStartDate:(id)a3 endDate:(id)a4;
- (void)_enumerateDaysFromStartDate:(id)a3 toEndDate:(id)a4 usingBlock:(id)a5;
- (void)enumerateEventsFromStartDate:(id)a3 toEndDate:(id)a4 usingBlock:(id)a5;
- (void)insertEvent:(id)a3;
@end

@implementation CLSCalendarEventsCache

- (id)_storeDayForDate:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (_storeDayForDate_createIfNeeded__onceToken != -1)
  {
    dispatch_once(&_storeDayForDate_createIfNeeded__onceToken, &__block_literal_global_5778);
  }

  v7 = [CLSCalendar components:28 fromDate:v6];
  v8 = [v7 year];
  [_storeDayForDate_createIfNeeded__s_fakeYear setYear:v8];
  v9 = [v7 month];
  [_storeDayForDate_createIfNeeded__s_fakeMonth setMonth:v9];
  v10 = [v7 day];
  [_storeDayForDate_createIfNeeded__s_fakeDay setDay:v10];
  v11 = [(NSMutableSet *)self->_years member:_storeDayForDate_createIfNeeded__s_fakeYear];
  if (v11)
  {
LABEL_6:
    v13 = [(CLSCalendarEventsCacheYear *)v11 months];
    v14 = [v13 member:_storeDayForDate_createIfNeeded__s_fakeMonth];

    if (!v14)
    {
      if (!v4)
      {
        v18 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v15 = [CLSCalendarEventsCacheMonth alloc];
      v14 = -[CLSCalendarEventsCacheMonth initWithMonth:](v15, "initWithMonth:", [_storeDayForDate_createIfNeeded__s_fakeMonth month]);
      v16 = [(CLSCalendarEventsCacheYear *)v11 months];
      [v16 addObject:v14];
    }

    v17 = [(CLSCalendarEventsCacheMonth *)v14 days];
    v18 = [v17 member:_storeDayForDate_createIfNeeded__s_fakeDay];

    if (!v18 && v4)
    {
      v19 = [CLSCalendarEventsCacheDay alloc];
      v18 = -[CLSCalendarEventsCacheDay initWithDay:](v19, "initWithDay:", [_storeDayForDate_createIfNeeded__s_fakeDay day]);
      v20 = [(CLSCalendarEventsCacheMonth *)v14 days];
      [v20 addObject:v18];
    }

    goto LABEL_13;
  }

  if (v4)
  {
    v12 = [CLSCalendarEventsCacheYear alloc];
    v11 = -[CLSCalendarEventsCacheYear initWithYear:](v12, "initWithYear:", [_storeDayForDate_createIfNeeded__s_fakeYear year]);
    [(NSMutableSet *)self->_years addObject:v11];
    goto LABEL_6;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

uint64_t __58__CLSCalendarEventsCache__storeDayForDate_createIfNeeded___block_invoke()
{
  v0 = [[CLSCalendarEventsCacheYear alloc] initWithYear:0];
  v1 = _storeDayForDate_createIfNeeded__s_fakeYear;
  _storeDayForDate_createIfNeeded__s_fakeYear = v0;

  v2 = [[CLSCalendarEventsCacheMonth alloc] initWithMonth:0];
  v3 = _storeDayForDate_createIfNeeded__s_fakeMonth;
  _storeDayForDate_createIfNeeded__s_fakeMonth = v2;

  _storeDayForDate_createIfNeeded__s_fakeDay = [[CLSCalendarEventsCacheDay alloc] initWithDay:0];

  return MEMORY[0x2821F96F8]();
}

- (void)_enumerateDaysFromStartDate:(id)a3 toEndDate:(id)a4 usingBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v14 = 0;
    v9 = [CLSCalendar startOfDayForDate:a3];
    v10 = [CLSCalendar startOfDayForDate:v7];
    v11 = v9;
    v8[2](v8, v11, &v14);
    v12 = v11;
    if ((v14 & 1) == 0)
    {
      v13 = v11;
      while ([v13 compare:v10] == -1)
      {
        v12 = [CLSCalendar dateByAddingDays:1 toDate:v13];

        v8[2](v8, v12, &v14);
        v13 = v12;
        if (v14)
        {
          goto LABEL_8;
        }
      }

      v12 = v13;
    }

LABEL_8:
  }
}

- (BOOL)hasEventsFromStartDate:(id)a3 toEndDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CLSCalendarEventsCache_hasEventsFromStartDate_toEndDate___block_invoke;
  v9[3] = &unk_2788A85B0;
  v9[4] = &v10;
  [(CLSCalendarEventsCache *)self enumerateEventsFromStartDate:v6 toEndDate:v7 usingBlock:v9];
  LOBYTE(self) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return self;
}

uint64_t __59__CLSCalendarEventsCache_hasEventsFromStartDate_toEndDate___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

- (id)eventsForDate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSCalendarEventsCache *)v5 _storeDayForDate:v4 createIfNeeded:0];
  v7 = [v6 events];

  objc_sync_exit(v5);

  return v7;
}

- (id)eventsForStartDate:(id)a3 endDate:(id)a4
{
  v6 = MEMORY[0x277CBEB58];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__CLSCalendarEventsCache_eventsForStartDate_endDate___block_invoke;
  v12[3] = &unk_2788A8588;
  v10 = v9;
  v13 = v10;
  [(CLSCalendarEventsCache *)self enumerateEventsFromStartDate:v8 toEndDate:v7 usingBlock:v12];

  return v10;
}

- (void)enumerateEventsFromStartDate:(id)a3 toEndDate:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = self;
    objc_sync_enter(v11);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__CLSCalendarEventsCache_enumerateEventsFromStartDate_toEndDate_usingBlock___block_invoke;
    v12[3] = &unk_2788A8560;
    v12[4] = v11;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [(CLSCalendarEventsCache *)v11 _enumerateDaysFromStartDate:v13 toEndDate:v14 usingBlock:v12];

    objc_sync_exit(v11);
  }
}

void __76__CLSCalendarEventsCache_enumerateEventsFromStartDate_toEndDate_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v31 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v4 = [*(a1 + 32) eventsForDate:?];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 startDate];
        v11 = [v9 endDate];
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = v12;
        [v10 timeIntervalSinceReferenceDate];
        v16 = v15;
        [v11 timeIntervalSinceReferenceDate];
        v18 = v17;
        [v14 timeIntervalSinceReferenceDate];
        v20 = v19;
        [v13 timeIntervalSinceReferenceDate];
        v22 = v21;

        if (v16 <= v22 && v18 >= v20)
        {
          (*(*(a1 + 56) + 16))();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }
}

- (void)insertEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [v4 startDate];
    v7 = [v4 endDate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__CLSCalendarEventsCache_insertEvent___block_invoke;
    v8[3] = &unk_2788A8538;
    v8[4] = v5;
    v9 = v4;
    [(CLSCalendarEventsCache *)v5 _enumerateDaysFromStartDate:v6 toEndDate:v7 usingBlock:v8];

    objc_sync_exit(v5);
  }
}

void __38__CLSCalendarEventsCache_insertEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _storeDayForDate:a2 createIfNeeded:1];
  v3 = [v4 events];
  [v3 addObject:*(a1 + 40)];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSMutableSet *)self->_years debugDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (CLSCalendarEventsCache)init
{
  v6.receiver = self;
  v6.super_class = CLSCalendarEventsCache;
  v2 = [(CLSCalendarEventsCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    years = v2->_years;
    v2->_years = v3;
  }

  return v2;
}

@end