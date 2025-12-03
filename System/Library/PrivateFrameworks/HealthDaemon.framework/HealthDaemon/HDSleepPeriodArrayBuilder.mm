@interface HDSleepPeriodArrayBuilder
- (HDSleepPeriodArrayBuilder)initWithInfo:(id)info options:(unint64_t)options;
- (id)_createPeriodAndReset;
- (id)_currentPeriodInterval;
- (id)finish;
- (void)addOrderedSegment:(id)segment;
@end

@implementation HDSleepPeriodArrayBuilder

- (HDSleepPeriodArrayBuilder)initWithInfo:(id)info options:(unint64_t)options
{
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = HDSleepPeriodArrayBuilder;
  v7 = [(HDSleepPeriodArrayBuilder *)&v26 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = options;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    periods = v8->_periods;
    v8->_periods = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentPeriodSegments = v8->_currentPeriodSegments;
    v8->_currentPeriodSegments = v11;

    v13 = [HDDateIntervalIterator alloc];
    userSetSchedules = [infoCopy userSetSchedules];
    v15 = [(HDDateIntervalIterator *)v13 initWithDateIntervals:userSetSchedules];
    userSetScheduleIterator = v8->_userSetScheduleIterator;
    v8->_userSetScheduleIterator = v15;

    v17 = [HDDateIntervalIterator alloc];
    incompleteSessions = [infoCopy incompleteSessions];
    v19 = [(HDDateIntervalIterator *)v17 initWithDateIntervals:incompleteSessions];
    incompleteSessionIterator = v8->_incompleteSessionIterator;
    v8->_incompleteSessionIterator = v19;

    v21 = [HDMappedDateIntervalIterator alloc];
    mappedTimezones = [infoCopy mappedTimezones];
    v23 = [(HDMappedDateIntervalIterator *)v21 initWithDateIntervalMap:mappedTimezones];
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
  if (*(self + 32))
  {
    if (*(self + 40))
    {
      v2 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(self + 32) endDate:*(self + 40)];
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

- (void)addOrderedSegment:(id)segment
{
  segmentCopy = segment;
  _createPeriodAndReset = segmentCopy;
  v28 = segmentCopy;
  if (self)
  {
    _createPeriodAndReset = segmentCopy;
    if (self->_currentPeriodEndDate)
    {
      dateInterval = [segmentCopy dateInterval];
      startDate = [dateInterval startDate];
      [startDate timeIntervalSinceDate:self->_currentPeriodEndDate];
      v9 = v8;

      _createPeriodAndReset = v28;
      if (v9 >= 3600.0)
      {
        if ((self->_options & 4) != 0)
        {
          _createPeriodAndReset = v28;
          currentDateInterval = [(HDDateIntervalIterator *)self->_userSetScheduleIterator currentDateInterval];
          if (currentDateInterval)
          {
            v11 = currentDateInterval;
            userSetScheduleIterator = self->_userSetScheduleIterator;
            v29 = MEMORY[0x277D85DD0];
            v30 = 3221225472;
            v31 = __68__HDSleepPeriodArrayBuilder__segmentIsPartOfCurrentUserSetSchedule___block_invoke;
            v32 = &unk_278630048;
            _createPeriodAndReset = _createPeriodAndReset;
            v33 = _createPeriodAndReset;
            v13 = [(HDDateIntervalIterator *)userSetScheduleIterator nextDateIntervalPassingTest:&v29];
            v14 = v13;
            if (v11 == v13)
            {
              _currentPeriodInterval = [(HDSleepPeriodArrayBuilder *)self _currentPeriodInterval];
              v27 = [_currentPeriodInterval intersectsDateInterval:v11];

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
        _createPeriodAndReset = [(HDSleepPeriodArrayBuilder *)self _createPeriodAndReset];
        [(NSMutableArray *)periods hk_addNonNilObject:_createPeriodAndReset];
      }
    }
  }

LABEL_10:

  dateInterval2 = [v28 dateInterval];
  endDate = [dateInterval2 endDate];
  currentPeriodEndDate = self->_currentPeriodEndDate;
  v19 = HKDateMax();
  v20 = self->_currentPeriodEndDate;
  self->_currentPeriodEndDate = v19;

  dateInterval3 = [v28 dateInterval];
  startDate2 = [dateInterval3 startDate];
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
  if (self && *(self + 32) && *(self + 40) && [*(self + 24) count])
  {
    _currentPeriodInterval = [(HDSleepPeriodArrayBuilder *)self _currentPeriodInterval];
    v3 = _currentPeriodInterval;
    v4 = *(self + 8);
    if ((v4 & 2) != 0)
    {
      v7 = *(self + 56);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __50__HDSleepPeriodArrayBuilder__createPeriodAndReset__block_invoke;
      v24[3] = &unk_278630048;
      v23 = &v25;
      v25 = _currentPeriodInterval;
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
    v12 = [*(self + 64) nextItemWithDateIntervalPassingTest:v11];
    if (v12)
    {
      v13 = v12;
      nextDateInterval = [*(self + 64) nextDateInterval];
      if (v11[2](v11, nextDateInterval))
      {
        do
        {
          currentItem = [*(self + 64) currentItem];

          nextDateInterval2 = [*(self + 64) nextDateInterval];

          nextDateInterval = nextDateInterval2;
          v13 = currentItem;
        }

        while ((v11[2](v11, nextDateInterval2) & 1) != 0);
      }

      else
      {
        currentItem = v13;
        nextDateInterval2 = nextDateInterval;
      }

      v17 = currentItem;
    }

    else
    {
      v17 = 0;
    }

    v6 = [MEMORY[0x277CCD9D8] sleepPeriodWithDateInterval:v10 segments:*(self + 24) isIncomplete:v5 timezoneName:v17];
    v18 = *(self + 32);
    *(self + 32) = 0;

    v19 = *(self + 40);
    *(self + 40) = 0;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = *(self + 24);
    *(self + 24) = v20;

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
  _createPeriodAndReset = [(HDSleepPeriodArrayBuilder *)self _createPeriodAndReset];
  [(NSMutableArray *)periods hk_addNonNilObject:_createPeriodAndReset];

  v5 = [(NSMutableArray *)self->_periods copy];

  return v5;
}

@end