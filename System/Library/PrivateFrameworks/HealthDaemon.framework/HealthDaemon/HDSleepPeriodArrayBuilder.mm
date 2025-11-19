@interface HDSleepPeriodArrayBuilder
- (HDSleepPeriodArrayBuilder)initWithInfo:(id)a3 options:(unint64_t)a4;
- (id)_createPeriodAndReset;
- (id)_currentPeriodInterval;
- (id)finish;
- (void)addOrderedSegment:(id)a3;
@end

@implementation HDSleepPeriodArrayBuilder

- (HDSleepPeriodArrayBuilder)initWithInfo:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = HDSleepPeriodArrayBuilder;
  v7 = [(HDSleepPeriodArrayBuilder *)&v26 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = a4;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    periods = v8->_periods;
    v8->_periods = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentPeriodSegments = v8->_currentPeriodSegments;
    v8->_currentPeriodSegments = v11;

    v13 = [HDDateIntervalIterator alloc];
    v14 = [v6 userSetSchedules];
    v15 = [(HDDateIntervalIterator *)v13 initWithDateIntervals:v14];
    userSetScheduleIterator = v8->_userSetScheduleIterator;
    v8->_userSetScheduleIterator = v15;

    v17 = [HDDateIntervalIterator alloc];
    v18 = [v6 incompleteSessions];
    v19 = [(HDDateIntervalIterator *)v17 initWithDateIntervals:v18];
    incompleteSessionIterator = v8->_incompleteSessionIterator;
    v8->_incompleteSessionIterator = v19;

    v21 = [HDMappedDateIntervalIterator alloc];
    v22 = [v6 mappedTimezones];
    v23 = [(HDMappedDateIntervalIterator *)v21 initWithDateIntervalMap:v22];
    timezoneIterator = v8->_timezoneIterator;
    v8->_timezoneIterator = v23;
  }

  return v8;
}

uint64_t __68__HDSleepPeriodArrayBuilder__segmentIsPartOfCurrentUserSetSchedule___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dateInterval];
  v5 = [v3 intersectsDateInterval:v4];

  return v5;
}

- (id)_currentPeriodInterval
{
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v2 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(a1 + 32) endDate:*(a1 + 40)];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)addOrderedSegment:(id)a3
{
  v4 = a3;
  v5 = v4;
  v28 = v4;
  if (self)
  {
    v5 = v4;
    if (self->_currentPeriodEndDate)
    {
      v6 = [v4 dateInterval];
      v7 = [v6 startDate];
      [v7 timeIntervalSinceDate:self->_currentPeriodEndDate];
      v9 = v8;

      v5 = v28;
      if (v9 >= 3600.0)
      {
        if ((self->_options & 4) != 0)
        {
          v5 = v28;
          v10 = [(HDDateIntervalIterator *)self->_userSetScheduleIterator currentDateInterval];
          if (v10)
          {
            v11 = v10;
            userSetScheduleIterator = self->_userSetScheduleIterator;
            v29 = MEMORY[0x277D85DD0];
            v30 = 3221225472;
            v31 = __68__HDSleepPeriodArrayBuilder__segmentIsPartOfCurrentUserSetSchedule___block_invoke;
            v32 = &unk_278630048;
            v5 = v5;
            v33 = v5;
            v13 = [(HDDateIntervalIterator *)userSetScheduleIterator nextDateIntervalPassingTest:&v29];
            v14 = v13;
            if (v11 == v13)
            {
              v26 = [(HDSleepPeriodArrayBuilder *)self _currentPeriodInterval];
              v27 = [v26 intersectsDateInterval:v11];

              if (v27)
              {
                goto LABEL_10;
              }

              goto LABEL_9;
            }
          }
        }

LABEL_9:

        periods = self->_periods;
        v5 = [(HDSleepPeriodArrayBuilder *)self _createPeriodAndReset];
        [(NSMutableArray *)periods hk_addNonNilObject:v5];
      }
    }
  }

LABEL_10:

  v16 = [v28 dateInterval];
  v17 = [v16 endDate];
  currentPeriodEndDate = self->_currentPeriodEndDate;
  v19 = HKDateMax();
  v20 = self->_currentPeriodEndDate;
  self->_currentPeriodEndDate = v19;

  v21 = [v28 dateInterval];
  v22 = [v21 startDate];
  currentPeriodStartDate = self->_currentPeriodStartDate;
  v24 = HKDateMin();
  v25 = self->_currentPeriodStartDate;
  self->_currentPeriodStartDate = v24;

  if ([v28 category] != 2 || (self->_options & 1) != 0)
  {
    [(NSMutableArray *)self->_currentPeriodSegments addObject:v28, v28, v29, v30, v31, v32];
  }
}

- (id)_createPeriodAndReset
{
  if (a1 && *(a1 + 32) && *(a1 + 40) && [*(a1 + 24) count])
  {
    v2 = [(HDSleepPeriodArrayBuilder *)a1 _currentPeriodInterval];
    v3 = v2;
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v7 = *(a1 + 56);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __50__HDSleepPeriodArrayBuilder__createPeriodAndReset__block_invoke;
      v24[3] = &unk_278630048;
      v23 = &v25;
      v25 = v2;
      v8 = [v7 nextDateIntervalPassingTest:v24];
      v5 = v8 != 0;
    }

    else
    {
      v5 = 0;
    }

    v9 = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__HDSleepPeriodArrayBuilder__findTimezoneForDateInterval___block_invoke;
    aBlock[3] = &unk_278630048;
    v10 = v9;
    v27 = v10;
    v11 = _Block_copy(aBlock);
    v12 = [*(a1 + 64) nextItemWithDateIntervalPassingTest:v11];
    if (v12)
    {
      v13 = v12;
      v14 = [*(a1 + 64) nextDateInterval];
      if (v11[2](v11, v14))
      {
        do
        {
          v15 = [*(a1 + 64) currentItem];

          v16 = [*(a1 + 64) nextDateInterval];

          v14 = v16;
          v13 = v15;
        }

        while ((v11[2](v11, v16) & 1) != 0);
      }

      else
      {
        v15 = v13;
        v16 = v14;
      }

      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v6 = [MEMORY[0x277CCD9D8] sleepPeriodWithDateInterval:v10 segments:*(a1 + 24) isIncomplete:v5 timezoneName:v17];
    v18 = *(a1 + 32);
    *(a1 + 32) = 0;

    v19 = *(a1 + 40);
    *(a1 + 40) = 0;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = *(a1 + 24);
    *(a1 + 24) = v20;

    if ((v4 & 2) != 0)
    {
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)finish
{
  periods = self->_periods;
  v4 = [(HDSleepPeriodArrayBuilder *)self _createPeriodAndReset];
  [(NSMutableArray *)periods hk_addNonNilObject:v4];

  v5 = [(NSMutableArray *)self->_periods copy];

  return v5;
}

@end