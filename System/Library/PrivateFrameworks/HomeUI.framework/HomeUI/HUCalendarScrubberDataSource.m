@interface HUCalendarScrubberDataSource
- (BOOL)eventExistsForItemAtIndexPath:(id)a3;
- (BOOL)eventExistsOnDate:(id)a3;
- (HMCameraClipManager)clipManager;
- (HUCalendarScrubberDataSource)init;
- (HUCalendarScrubberDataSource)initWithCameraClipManager:(id)a3 datesWithClips:(id)a4;
- (id)dateAtIndexPath:(id)a3;
- (id)dayOfWeekForItemAtIndexPath:(id)a3;
- (id)indexPathForDate:(id)a3;
- (id)shortMonthNameForItemAtIndexPath:(id)a3;
- (int64_t)dayOfMonthForItemAtIndexPath:(id)a3;
- (unint64_t)totalNumberOfWeeks;
- (void)_updateDateBoundariesIfNeeded;
- (void)addChangeObserver:(id)a3;
- (void)addDatesWithClips:(id)a3;
- (void)reloadDates;
- (void)removeChangeObserver:(id)a3;
- (void)updateDatesWithClips:(id)a3;
@end

@implementation HUCalendarScrubberDataSource

- (HUCalendarScrubberDataSource)initWithCameraClipManager:(id)a3 datesWithClips:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HUCalendarScrubberDataSource;
  v8 = [(HUCalendarScrubberDataSource *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_clipManager, v6);
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = [MEMORY[0x277CBEB98] set];
    }

    datesWithClips = v9->_datesWithClips;
    v9->_datesWithClips = v10;

    [(HUCalendarScrubberDataSource *)v9 reloadDates];
    [(HUCalendarScrubberDataSource *)v9 _updateDateBoundariesIfNeeded];
    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    changeObservers = v9->_changeObservers;
    v9->_changeObservers = v12;
  }

  return v9;
}

- (HUCalendarScrubberDataSource)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCameraClipManager_datesWithClips_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUCalendarScrubberDataSource.m" lineNumber:46 description:{@"%s is unavailable; use %@ instead", "-[HUCalendarScrubberDataSource init]", v5}];

  return 0;
}

- (void)_updateDateBoundariesIfNeeded
{
  if (!self->_startDate)
  {
    v3 = [(NSArray *)self->_dates firstObject];
    v4 = [v3 hf_startOfWeek];
    startDate = self->_startDate;
    self->_startDate = v4;
  }

  if (!self->_endDate)
  {
    v8 = [(NSArray *)self->_dates lastObject];
    v6 = [v8 hf_endOfWeek];
    endDate = self->_endDate;
    self->_endDate = v6;
  }
}

- (BOOL)eventExistsForItemAtIndexPath:(id)a3
{
  v3 = self;
  v4 = [(HUCalendarScrubberDataSource *)self dateAtIndexPath:a3];
  LOBYTE(v3) = [(HUCalendarScrubberDataSource *)v3 eventExistsOnDate:v4];

  return v3;
}

- (id)indexPathForDate:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [(HUCalendarScrubberDataSource *)self startDate];
  v7 = [v4 hf_daysBetweenDates:v6 endDate:v5];

  v8 = MEMORY[0x277CCAA70];

  return [v8 indexPathForItem:v7 % 7 inSection:?];
}

- (id)dateAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 item];

  v7 = v6 - v5 + 8 * v5;
  v8 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v9 = [(HUCalendarScrubberDataSource *)self startDate];
  v10 = [v8 dateByAddingUnit:16 value:v7 toDate:v9 options:0];

  return v10;
}

- (BOOL)eventExistsOnDate:(id)a3
{
  v4 = a3;
  v5 = [(HUCalendarScrubberDataSource *)self datesWithClips];
  v6 = [v4 hf_startOfDay];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (unint64_t)totalNumberOfWeeks
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HUCalendarScrubberDataSource *)self startDate];
  if (v3 && (v4 = v3, [(HUCalendarScrubberDataSource *)self endDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CBEAA8];
    v7 = [(HUCalendarScrubberDataSource *)self startDate];
    v8 = [(HUCalendarScrubberDataSource *)self endDate];
    v9 = [v6 hf_daysBetweenDates:v7 endDate:v8];

    if (v9 % 7)
    {
      return v9 / 7 + 1;
    }

    else
    {
      return v9 / 7;
    }
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(HUCalendarScrubberDataSource *)self dates];
      v13 = 134217984;
      v14 = [v12 count];
      _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "A request to layout the calendar has been made before there are any dates (count:%lu). The calendar will remain hidden.", &v13, 0xCu);
    }

    return 0;
  }
}

- (id)dayOfWeekForItemAtIndexPath:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 hf_sharedCalendar];
  v6 = [v4 item];

  v7 = v6 + [v5 firstWeekday] - 1;
  v8 = [v5 veryShortStandaloneWeekdaySymbols];
  v9 = [v8 objectAtIndexedSubscript:v7 % 7];

  return v9;
}

- (int64_t)dayOfMonthForItemAtIndexPath:(id)a3
{
  v3 = [(HUCalendarScrubberDataSource *)self dateAtIndexPath:a3];
  v4 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v5 = [v4 component:16 fromDate:v3];

  return v5;
}

- (id)shortMonthNameForItemAtIndexPath:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 hf_sharedCalendar];
  v7 = [(HUCalendarScrubberDataSource *)self dateAtIndexPath:v5];

  v8 = [v6 component:8 fromDate:v7] - 1;
  v9 = [v6 shortStandaloneMonthSymbols];
  v10 = [v9 objectAtIndexedSubscript:v8];
  v11 = [v10 capitalizedString];

  return v11;
}

- (void)updateDatesWithClips:(id)a3
{
  v4 = a3;
  v5 = [(HUCalendarScrubberDataSource *)self datesWithClips];
  v6 = [v5 isEqualToSet:v4];

  [(HUCalendarScrubberDataSource *)self setDatesWithClips:v4];
  if ((v6 & 1) == 0)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Requesting a calendar refresh after event update.", v8, 2u);
    }

    [(HUCalendarScrubberDataSource *)self reloadDates];
  }
}

- (void)addDatesWithClips:(id)a3
{
  v4 = a3;
  v5 = [(HUCalendarScrubberDataSource *)self datesWithClips];
  v6 = [v5 mutableCopy];

  [v6 unionSet:v4];
  [(HUCalendarScrubberDataSource *)self updateDatesWithClips:v6];
}

- (void)reloadDates
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(HUCalendarScrubberDataSource *)self datesWithClips];
  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_74];
  [(HUCalendarScrubberDataSource *)self setDates:v5];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HUCalendarScrubberDataSource *)self dates];
    *buf = 138412290;
    v37 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Reloading dates containing clips:%@", buf, 0xCu);
  }

  v8 = [(HUCalendarScrubberDataSource *)self dates];
  v9 = [v8 firstObject];

  v10 = [(HUCalendarScrubberDataSource *)self dates];
  v11 = [v10 lastObject];

  [(HUCalendarScrubberDataSource *)self _updateDateBoundariesIfNeeded];
  v12 = [(HUCalendarScrubberDataSource *)self startDate];
  v13 = [v12 earlierDate:v9];
  v14 = [v13 isEqualToDate:v9];

  if (v14)
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HUCalendarScrubberDataSource *)self startDate];
      v17 = [v9 hf_startOfWeek];
      *buf = 138412546;
      v37 = v16;
      v38 = 2112;
      v39 = v17;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Updating calendar start date from:%@ to:%@", buf, 0x16u);
    }

    v18 = [v9 hf_startOfWeek];
    [(HUCalendarScrubberDataSource *)self setStartDate:v18];
  }

  v19 = [(HUCalendarScrubberDataSource *)self endDate];
  v20 = [v19 laterDate:v11];
  v21 = [v20 isEqualToDate:v11];

  if (v21)
  {
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(HUCalendarScrubberDataSource *)self endDate];
      v24 = [v11 hf_endOfWeek];
      *buf = 138412546;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Updating calendar end date from:%@ to:%@", buf, 0x16u);
    }

    v25 = [v11 hf_endOfWeek];
    [(HUCalendarScrubberDataSource *)self setEndDate:v25];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = [(HUCalendarScrubberDataSource *)self changeObservers];
  v27 = [v26 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v32;
    do
    {
      v30 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v31 + 1) + 8 * v30++) scrubberDataSourceDidReload:self];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v28);
  }
}

- (void)addChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HUCalendarScrubberDataSource *)self changeObservers];
  [v5 addObject:v4];
}

- (void)removeChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HUCalendarScrubberDataSource *)self changeObservers];
  [v5 removeObject:v4];
}

- (HMCameraClipManager)clipManager
{
  WeakRetained = objc_loadWeakRetained(&self->_clipManager);

  return WeakRetained;
}

@end