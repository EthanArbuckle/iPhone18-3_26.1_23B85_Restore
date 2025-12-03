@interface HUCalendarScrubberDataSource
- (BOOL)eventExistsForItemAtIndexPath:(id)path;
- (BOOL)eventExistsOnDate:(id)date;
- (HMCameraClipManager)clipManager;
- (HUCalendarScrubberDataSource)init;
- (HUCalendarScrubberDataSource)initWithCameraClipManager:(id)manager datesWithClips:(id)clips;
- (id)dateAtIndexPath:(id)path;
- (id)dayOfWeekForItemAtIndexPath:(id)path;
- (id)indexPathForDate:(id)date;
- (id)shortMonthNameForItemAtIndexPath:(id)path;
- (int64_t)dayOfMonthForItemAtIndexPath:(id)path;
- (unint64_t)totalNumberOfWeeks;
- (void)_updateDateBoundariesIfNeeded;
- (void)addChangeObserver:(id)observer;
- (void)addDatesWithClips:(id)clips;
- (void)reloadDates;
- (void)removeChangeObserver:(id)observer;
- (void)updateDatesWithClips:(id)clips;
@end

@implementation HUCalendarScrubberDataSource

- (HUCalendarScrubberDataSource)initWithCameraClipManager:(id)manager datesWithClips:(id)clips
{
  managerCopy = manager;
  clipsCopy = clips;
  v15.receiver = self;
  v15.super_class = HUCalendarScrubberDataSource;
  v8 = [(HUCalendarScrubberDataSource *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_clipManager, managerCopy);
    if (clipsCopy)
    {
      v10 = clipsCopy;
    }

    else
    {
      v10 = [MEMORY[0x277CBEB98] set];
    }

    datesWithClips = v9->_datesWithClips;
    v9->_datesWithClips = v10;

    [(HUCalendarScrubberDataSource *)v9 reloadDates];
    [(HUCalendarScrubberDataSource *)v9 _updateDateBoundariesIfNeeded];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    changeObservers = v9->_changeObservers;
    v9->_changeObservers = weakObjectsHashTable;
  }

  return v9;
}

- (HUCalendarScrubberDataSource)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCameraClipManager_datesWithClips_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCalendarScrubberDataSource.m" lineNumber:46 description:{@"%s is unavailable; use %@ instead", "-[HUCalendarScrubberDataSource init]", v5}];

  return 0;
}

- (void)_updateDateBoundariesIfNeeded
{
  if (!self->_startDate)
  {
    firstObject = [(NSArray *)self->_dates firstObject];
    hf_startOfWeek = [firstObject hf_startOfWeek];
    startDate = self->_startDate;
    self->_startDate = hf_startOfWeek;
  }

  if (!self->_endDate)
  {
    lastObject = [(NSArray *)self->_dates lastObject];
    hf_endOfWeek = [lastObject hf_endOfWeek];
    endDate = self->_endDate;
    self->_endDate = hf_endOfWeek;
  }
}

- (BOOL)eventExistsForItemAtIndexPath:(id)path
{
  selfCopy = self;
  v4 = [(HUCalendarScrubberDataSource *)self dateAtIndexPath:path];
  LOBYTE(selfCopy) = [(HUCalendarScrubberDataSource *)selfCopy eventExistsOnDate:v4];

  return selfCopy;
}

- (id)indexPathForDate:(id)date
{
  v4 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  startDate = [(HUCalendarScrubberDataSource *)self startDate];
  v7 = [v4 hf_daysBetweenDates:startDate endDate:dateCopy];

  v8 = MEMORY[0x277CCAA70];

  return [v8 indexPathForItem:v7 % 7 inSection:?];
}

- (id)dateAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  item = [pathCopy item];

  v7 = item - section + 8 * section;
  hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  startDate = [(HUCalendarScrubberDataSource *)self startDate];
  v10 = [hf_sharedCalendar dateByAddingUnit:16 value:v7 toDate:startDate options:0];

  return v10;
}

- (BOOL)eventExistsOnDate:(id)date
{
  dateCopy = date;
  datesWithClips = [(HUCalendarScrubberDataSource *)self datesWithClips];
  hf_startOfDay = [dateCopy hf_startOfDay];

  LOBYTE(dateCopy) = [datesWithClips containsObject:hf_startOfDay];
  return dateCopy;
}

- (unint64_t)totalNumberOfWeeks
{
  v15 = *MEMORY[0x277D85DE8];
  startDate = [(HUCalendarScrubberDataSource *)self startDate];
  if (startDate && (v4 = startDate, [(HUCalendarScrubberDataSource *)self endDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CBEAA8];
    startDate2 = [(HUCalendarScrubberDataSource *)self startDate];
    endDate = [(HUCalendarScrubberDataSource *)self endDate];
    v9 = [v6 hf_daysBetweenDates:startDate2 endDate:endDate];

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
      dates = [(HUCalendarScrubberDataSource *)self dates];
      v13 = 134217984;
      v14 = [dates count];
      _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "A request to layout the calendar has been made before there are any dates (count:%lu). The calendar will remain hidden.", &v13, 0xCu);
    }

    return 0;
  }
}

- (id)dayOfWeekForItemAtIndexPath:(id)path
{
  v3 = MEMORY[0x277CBEAA8];
  pathCopy = path;
  hf_sharedCalendar = [v3 hf_sharedCalendar];
  item = [pathCopy item];

  v7 = item + [hf_sharedCalendar firstWeekday] - 1;
  veryShortStandaloneWeekdaySymbols = [hf_sharedCalendar veryShortStandaloneWeekdaySymbols];
  v9 = [veryShortStandaloneWeekdaySymbols objectAtIndexedSubscript:v7 % 7];

  return v9;
}

- (int64_t)dayOfMonthForItemAtIndexPath:(id)path
{
  v3 = [(HUCalendarScrubberDataSource *)self dateAtIndexPath:path];
  hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v5 = [hf_sharedCalendar component:16 fromDate:v3];

  return v5;
}

- (id)shortMonthNameForItemAtIndexPath:(id)path
{
  v4 = MEMORY[0x277CBEAA8];
  pathCopy = path;
  hf_sharedCalendar = [v4 hf_sharedCalendar];
  v7 = [(HUCalendarScrubberDataSource *)self dateAtIndexPath:pathCopy];

  v8 = [hf_sharedCalendar component:8 fromDate:v7] - 1;
  shortStandaloneMonthSymbols = [hf_sharedCalendar shortStandaloneMonthSymbols];
  v10 = [shortStandaloneMonthSymbols objectAtIndexedSubscript:v8];
  capitalizedString = [v10 capitalizedString];

  return capitalizedString;
}

- (void)updateDatesWithClips:(id)clips
{
  clipsCopy = clips;
  datesWithClips = [(HUCalendarScrubberDataSource *)self datesWithClips];
  v6 = [datesWithClips isEqualToSet:clipsCopy];

  [(HUCalendarScrubberDataSource *)self setDatesWithClips:clipsCopy];
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

- (void)addDatesWithClips:(id)clips
{
  clipsCopy = clips;
  datesWithClips = [(HUCalendarScrubberDataSource *)self datesWithClips];
  v6 = [datesWithClips mutableCopy];

  [v6 unionSet:clipsCopy];
  [(HUCalendarScrubberDataSource *)self updateDatesWithClips:v6];
}

- (void)reloadDates
{
  v40 = *MEMORY[0x277D85DE8];
  datesWithClips = [(HUCalendarScrubberDataSource *)self datesWithClips];
  allObjects = [datesWithClips allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_74];
  [(HUCalendarScrubberDataSource *)self setDates:v5];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    dates = [(HUCalendarScrubberDataSource *)self dates];
    *buf = 138412290;
    v37 = dates;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Reloading dates containing clips:%@", buf, 0xCu);
  }

  dates2 = [(HUCalendarScrubberDataSource *)self dates];
  firstObject = [dates2 firstObject];

  dates3 = [(HUCalendarScrubberDataSource *)self dates];
  lastObject = [dates3 lastObject];

  [(HUCalendarScrubberDataSource *)self _updateDateBoundariesIfNeeded];
  startDate = [(HUCalendarScrubberDataSource *)self startDate];
  v13 = [startDate earlierDate:firstObject];
  v14 = [v13 isEqualToDate:firstObject];

  if (v14)
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      startDate2 = [(HUCalendarScrubberDataSource *)self startDate];
      hf_startOfWeek = [firstObject hf_startOfWeek];
      *buf = 138412546;
      v37 = startDate2;
      v38 = 2112;
      v39 = hf_startOfWeek;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Updating calendar start date from:%@ to:%@", buf, 0x16u);
    }

    hf_startOfWeek2 = [firstObject hf_startOfWeek];
    [(HUCalendarScrubberDataSource *)self setStartDate:hf_startOfWeek2];
  }

  endDate = [(HUCalendarScrubberDataSource *)self endDate];
  v20 = [endDate laterDate:lastObject];
  v21 = [v20 isEqualToDate:lastObject];

  if (v21)
  {
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      endDate2 = [(HUCalendarScrubberDataSource *)self endDate];
      hf_endOfWeek = [lastObject hf_endOfWeek];
      *buf = 138412546;
      v37 = endDate2;
      v38 = 2112;
      v39 = hf_endOfWeek;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Updating calendar end date from:%@ to:%@", buf, 0x16u);
    }

    hf_endOfWeek2 = [lastObject hf_endOfWeek];
    [(HUCalendarScrubberDataSource *)self setEndDate:hf_endOfWeek2];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  changeObservers = [(HUCalendarScrubberDataSource *)self changeObservers];
  v27 = [changeObservers countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(changeObservers);
        }

        [*(*(&v31 + 1) + 8 * v30++) scrubberDataSourceDidReload:self];
      }

      while (v28 != v30);
      v28 = [changeObservers countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v28);
  }
}

- (void)addChangeObserver:(id)observer
{
  observerCopy = observer;
  changeObservers = [(HUCalendarScrubberDataSource *)self changeObservers];
  [changeObservers addObject:observerCopy];
}

- (void)removeChangeObserver:(id)observer
{
  observerCopy = observer;
  changeObservers = [(HUCalendarScrubberDataSource *)self changeObservers];
  [changeObservers removeObject:observerCopy];
}

- (HMCameraClipManager)clipManager
{
  WeakRetained = objc_loadWeakRetained(&self->_clipManager);

  return WeakRetained;
}

@end