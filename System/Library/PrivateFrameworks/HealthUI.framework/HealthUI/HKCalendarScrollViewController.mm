@interface HKCalendarScrollViewController
- (CGPoint)_centerPointToCenterDate:(id)a3;
- (CGPoint)_setWeekViewsToCenterDate:(id)a3 forceUpdate:(BOOL)a4;
- (CGRect)_visibleContentRect;
- (HKCalendarScrollViewController)initWithCoder:(id)a3;
- (HKCalendarScrollViewController)initWithSelectedDate:(id)a3;
- (HKCalendarScrollViewControllerDelegate)delegate;
- (UIScrollView)scrollView;
- (double)_heightOfAllWeekCells;
- (id)_currentlyCenteredVisibleWeek;
- (id)_startDateToTileWeekViews:(id)a3;
- (id)_weekForDate:(id)a3;
- (id)_weekViewContainingTitleForThisMonth;
- (id)_weekViewForToday;
- (unint64_t)_firstVisibleWeekIndex;
- (void)_createWeekViews;
- (void)_findCenteredWeekAndUpdateTitleIfNecessary;
- (void)_pulseCircle;
- (void)_refreshViewsAndUpdateToday;
- (void)_selectCellForDate:(id)a3;
- (void)_selectTodayCell;
- (void)dealloc;
- (void)loadView;
- (void)scrollToDate:(id)a3 animateIfPossible:(BOOL)a4;
- (void)scrollView;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setSelectedCell:(id)a3;
- (void)updateVisibleAccessoryViews;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)week:(id)a3 cellSelected:(id)a4;
@end

@implementation HKCalendarScrollViewController

- (HKCalendarScrollViewController)initWithSelectedDate:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = HKCalendarScrollViewController;
  v6 = [(HKCalendarScrollViewController *)&v17 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_numberOfRows = 32;
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v7->_calendar;
    v7->_calendar = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7->_numberOfRows];
    weekViews = v7->_weekViews;
    v7->_weekViews = v10;

    v7->_needsInitialOffset = 1;
    v12 = [HKDateCache alloc];
    v13 = [MEMORY[0x1E695DEE8] currentCalendar];
    v14 = [(HKDateCache *)v12 initWithCalendar:v13];
    dateCache = v7->_dateCache;
    v7->_dateCache = v14;

    [(HKDateCache *)v7->_dateCache registerObserver:v7];
    v7->_topInset = 42.0;
    objc_storeStrong(&v7->_initiallyCenteredDate, a3);
  }

  return v7;
}

- (HKCalendarScrollViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKCalendarScrollViewController;
  return [(HKCalendarScrollViewController *)&v4 initWithCoder:a3];
}

- (void)dealloc
{
  [(HKDateCache *)self->_dateCache unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = HKCalendarScrollViewController;
  [(HKCalendarScrollViewController *)&v3 dealloc];
}

- (UIScrollView)scrollView
{
  v4 = [(HKCalendarScrollViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(HKCalendarScrollViewController *)a2 scrollView];
  }

  return [(HKCalendarScrollViewController *)self view];
}

- (void)_createWeekViews
{
  if (self->_numberOfRows)
  {
    v3 = 0;
    do
    {
      v4 = [[HKMonthWeekView alloc] initWithDateCache:self->_dateCache displaysMonthTitle:1 displaysTopBorderLine:1];
      [(HKCalendarWeekView *)v4 setDelegate:self];
      v5 = [(HKCalendarScrollViewController *)self scrollView];
      [v5 addSubview:v4];

      [(NSMutableArray *)self->_weekViews addObject:v4];
      ++v3;
    }

    while (v3 < self->_numberOfRows);
  }
}

- (void)_refreshViewsAndUpdateToday
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(HKCalendarScrollViewController *)self _weekViewContainingTitleForThisMonth];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_weekViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 reloadCells];
        [v9 setTitleHighlighted:v9 == v3];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [(HKCalendarDayCell *)self->_selectedCell date];
  if (v10 && (v11 = v10, calendar = self->_calendar, [(HKCalendarDayCell *)self->_selectedCell date], v13 = objc_claimAutoreleasedReturnValue(), LOBYTE(calendar) = [(NSCalendar *)calendar isDateInYesterday:v13], v13, v11, (calendar & 1) == 0))
  {
    [(HKCalendarScrollViewController *)self setSelectedCell:self->_selectedCell];
  }

  else
  {
    [(HKCalendarScrollViewController *)self _selectTodayCell];
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [(HKCalendarScrollViewController *)self setView:v3];

  v4 = [(HKCalendarScrollViewController *)self scrollView];
  [v4 setDelegate:self];

  v5 = [(HKCalendarScrollViewController *)self scrollView];
  [v5 setScrollsToTop:0];

  v6 = [(HKCalendarScrollViewController *)self scrollView];
  [v6 setBounces:0];

  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *(MEMORY[0x1E69DDCE0] + 24);
  v11 = [(HKCalendarScrollViewController *)self scrollView];
  [v11 setContentInset:{v7, v8, v9, v10}];

  v12 = [(HKCalendarScrollViewController *)self scrollView];
  [v12 setShowsVerticalScrollIndicator:0];

  v13 = [(HKCalendarScrollViewController *)self scrollView];
  [v13 setShowsHorizontalScrollIndicator:0];

  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  v16 = [(HKCalendarScrollViewController *)self scrollView];
  [v16 setContentSize:{v14, v15}];

  [(HKCalendarScrollViewController *)self _createWeekViews];
}

- (void)viewWillLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = HKCalendarScrollViewController;
  [(HKCalendarScrollViewController *)&v18 viewWillLayoutSubviews];
  if (self->_needsInitialOffset)
  {
    initiallyCenteredDate = self->_initiallyCenteredDate;
    if (initiallyCenteredDate)
    {
      v4 = initiallyCenteredDate;
    }

    else
    {
      v4 = [MEMORY[0x1E695DF00] date];
    }

    v5 = v4;
    [(HKCalendarScrollViewController *)self _setWeekViewsToCenterDate:v4 forceUpdate:0];
    v7 = v6;
    v9 = v8;
    v10 = [(HKCalendarScrollViewController *)self scrollView];
    v11 = [(HKCalendarScrollViewController *)self scrollView];
    [v11 bounds];
    v13 = v12;
    [(HKCalendarScrollViewController *)self _heightOfAllWeekCells];
    [v10 setContentSize:{v13, v14}];

    v15 = [(HKCalendarScrollViewController *)self scrollView];
    [v15 setContentOffset:0 animated:{v7, v9}];

    if (!self->_selectedCell)
    {
      [(HKCalendarScrollViewController *)self _selectCellForDate:v5];
    }

    self->_needsInitialOffset = 0;
  }

  v16 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v17 = [(HKCalendarScrollViewController *)self scrollView];
  [v17 setBackgroundColor:v16];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKCalendarScrollViewController;
  [(HKCalendarScrollViewController *)&v4 viewDidAppear:a3];
  [(HKCalendarScrollViewController *)self updateVisibleAccessoryViews];
}

- (id)_weekViewForToday
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(HKCalendarScrollViewController *)self _weekForDate:v3];

  return v4;
}

- (id)_weekViewContainingTitleForThisMonth
{
  calendar = self->_calendar;
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(NSCalendar *)calendar components:14 fromDate:v4];

  [v5 setDay:1];
  v6 = [(NSCalendar *)self->_calendar dateFromComponents:v5];
  v7 = [(HKCalendarScrollViewController *)self _weekForDate:v6];

  return v7;
}

- (void)_pulseCircle
{
  v3 = [(HKCalendarScrollViewController *)self _weekViewForToday];
  v4 = [HKUITodayCirclePulseView alloc];
  [(HKMonthDayCell *)self->_selectedCell frame];
  v5 = [(HKUITodayCirclePulseView *)v4 initWithFrame:?];
  [(HKCalendarDayCell *)self->_selectedCell dayDiameter];
  [(HKUITodayCirclePulseView *)v5 setCircleDiameter:?];
  v6 = [(HKCalendarDayCell *)self->_selectedCell dayLabel];
  v7 = [v6 contents];
  [(HKUITodayCirclePulseView *)v5 setDayLabelContent:v7];

  [v3 addSubview:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__HKCalendarScrollViewController__pulseCircle__block_invoke;
  v9[3] = &unk_1E81B55A8;
  v10 = v5;
  v8 = v5;
  [(HKUITodayCirclePulseView *)v8 pulse:v9];
}

- (void)_selectTodayCell
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(HKCalendarDayCell *)self->_selectedCell date];
  if (v3 && (v4 = v3, v5 = self->_dateCache, [(HKCalendarDayCell *)self->_selectedCell date], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = [(HKDateCache *)v5 isDateInToday:v6], v6, v4, v5))
  {

    [(HKCalendarScrollViewController *)self _pulseCircle];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_weekViews;
    v22 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v22)
    {
      v8 = *v30;
      v24 = v7;
      v21 = *v30;
      do
      {
        v9 = 0;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v23 = v9;
          v10 = *(*(&v29 + 1) + 8 * v9);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v11 = [v10 dayCells];
          v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v26;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v26 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v25 + 1) + 8 * i);
                v17 = [v16 date];
                if (v17)
                {
                  v18 = v17;
                  dateCache = self->_dateCache;
                  v20 = [v16 date];
                  LOBYTE(dateCache) = [(HKDateCache *)dateCache isDateInToday:v20];

                  if (dateCache)
                  {
                    [(HKCalendarScrollViewController *)self setSelectedCell:v16];

                    v7 = v24;
                    goto LABEL_24;
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v9 = v23 + 1;
          v7 = v24;
          v8 = v21;
        }

        while (v23 + 1 != v22);
        v22 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v22);
    }

LABEL_24:
  }
}

- (void)_selectCellForDate:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKCalendarDayCell *)self->_selectedCell date];
  v6 = 0x1E695D000uLL;
  if (!v5 || (v7 = v5, [MEMORY[0x1E695DEE8] currentCalendar], v8 = objc_claimAutoreleasedReturnValue(), -[HKCalendarDayCell date](self->_selectedCell, "date"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "compareDate:toDate:toUnitGranularity:", v9, v4, 16), v9, v8, v7, v10))
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = self->_weekViews;
    v29 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v29)
    {
      v12 = *v38;
      v27 = *v38;
      v28 = self;
      v31 = v11;
      v32 = v4;
      do
      {
        v13 = 0;
        do
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v30 = v13;
          v14 = *(*(&v37 + 1) + 8 * v13);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v15 = [v14 dayCells];
          v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v34;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v34 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v33 + 1) + 8 * i);
                v21 = [v20 date];
                if (v21)
                {
                  v22 = v21;
                  [*(v6 + 3816) currentCalendar];
                  v24 = v23 = v6;
                  v25 = [v20 date];
                  v26 = [v24 compareDate:v25 toDate:v32 toUnitGranularity:16];

                  v6 = v23;
                  if (!v26)
                  {
                    [(HKCalendarScrollViewController *)v28 setSelectedCell:v20];

                    v11 = v31;
                    v4 = v32;
                    goto LABEL_21;
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v13 = v30 + 1;
          v11 = v31;
          v4 = v32;
          v12 = v27;
        }

        while (v30 + 1 != v29);
        v29 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v29);
    }

LABEL_21:
  }
}

- (void)setSelectedCell:(id)a3
{
  v4 = a3;
  [(HKMonthDayCell *)self->_selectedCell setSelected:0];
  [(HKMonthDayCell *)v4 setSelected:1];
  selectedCell = self->_selectedCell;
  self->_selectedCell = v4;
}

- (double)_heightOfAllWeekCells
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_weekViews;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) frame];
        v6 = v6 + v8;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)_startDateToTileWeekViews:(id)a3
{
  v4 = MEMORY[0x1E695DF10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setWeekOfYear:-((self->_numberOfRows >> 1) - 1)];
  v7 = [(NSCalendar *)self->_calendar dateByAddingComponents:v6 toDate:v5 options:0];

  v8 = [(NSCalendar *)self->_calendar hk_startOfWeekWithFirstWeekday:[(NSCalendar *)self->_calendar firstWeekday] beforeDate:v7 addingWeeks:0];

  return v8;
}

- (CGPoint)_centerPointToCenterDate:(id)a3
{
  v4 = a3;
  v5 = [(HKCalendarScrollViewController *)self _weekForDate:v4];
  v6 = v5;
  if (v5)
  {
    [v5 frameForDayCell:v4];
    v8 = v7;
    v10 = v9;
    [v6 frame];
    v12 = v8 + v11;
    v13 = [(HKCalendarScrollViewController *)self view];
    [v13 safeAreaInsets];
    v15 = v14;

    v16 = [(HKCalendarScrollViewController *)self scrollView];
    [v16 frame];
    v18 = v15 + round((v17 - v15) * 0.5);

    v19 = v10 * 0.5 + v12 - v18;
    v20 = 0.0;
  }

  else
  {
    v20 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v21 = v20;
  v22 = v19;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)_setWeekViewsToCenterDate:(id)a3 forceUpdate:(BOOL)a4
{
  v6 = a3;
  v7 = [(HKCalendarScrollViewController *)self _currentlyCenteredVisibleWeek];
  v8 = v7;
  if (v7 && [v7 containsDate:v6] && !a4)
  {
    v9 = [(HKCalendarScrollViewController *)self scrollView];
    [v9 contentOffset];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v9 = [(HKCalendarScrollViewController *)self _startDateToTileWeekViews:v6];
    v14 = [(HKCalendarDayCell *)self->_selectedCell date];
    if (self->_numberOfRows)
    {
      v15 = 0;
      do
      {
        v16 = [(NSMutableArray *)self->_weekViews objectAtIndex:v15];
        v17 = [(NSCalendar *)self->_calendar dateByAddingUnit:0x2000 value:v15 toDate:v9 options:0];
        [v16 setMonthWeekStart:v17];

        if ([v16 containsDate:v14])
        {
          v18 = [v16 cellMatchingDate:v14];
          [(HKCalendarScrollViewController *)self setSelectedCell:v18];
        }

        if (v15)
        {
          v19 = [(NSMutableArray *)self->_weekViews objectAtIndexedSubscript:v15 - 1];
          [v19 frame];
          MaxY = CGRectGetMaxY(v31);
        }

        else
        {
          MaxY = 0.0;
        }

        v21 = [(HKCalendarScrollViewController *)self view];
        [v21 bounds];
        v23 = v22;
        [v16 preferredHeight];
        [v16 setFrame:{0.0, MaxY, v23, v24}];

        [v16 setTitleHighlighted:0];
        ++v15;
      }

      while (v15 < self->_numberOfRows);
    }

    v25 = [(HKCalendarScrollViewController *)self _weekViewContainingTitleForThisMonth];
    [v25 setTitleHighlighted:1];

    [(HKCalendarScrollViewController *)self _centerPointToCenterDate:v6];
    v11 = v26;
    v13 = v27;
  }

  v28 = v11;
  v29 = v13;
  result.y = v29;
  result.x = v28;
  return result;
}

- (id)_weekForDate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_weekViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsDate:{v4, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (CGRect)_visibleContentRect
{
  v3 = [(HKCalendarScrollViewController *)self viewIfLoaded];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if (v5)
  {
    v6 = [v5 statusBarManager];
    [v6 statusBarFrame];
    v8 = v7;

    v9 = [(HKCalendarScrollViewController *)self view];
    [v9 safeAreaInsets];
    v11 = v8 + v10;

    v12 = [(HKCalendarScrollViewController *)self scrollView];
    [v12 contentOffset];
    v14 = v11 + v13;

    v15 = [(HKCalendarScrollViewController *)self scrollView];
    [v15 frame];
    v17 = v16 - v11;

    v18 = [(HKCalendarScrollViewController *)self scrollView];
    [v18 frame];
    v20 = v19;
    v21 = [(HKCalendarScrollViewController *)self scrollView];
    [v21 frame];
    v23 = v22;
  }

  else
  {
    v20 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v23 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  v24 = v20;
  v25 = v14;
  v26 = v23;
  v27 = v17;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (id)_currentlyCenteredVisibleWeek
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(HKCalendarScrollViewController *)self _firstVisibleWeekIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    v6 = [(NSMutableArray *)self->_weekViews count];
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v5, v6 - v5}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [(NSMutableArray *)self->_weekViews objectsAtIndexes:v7, 0];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [(HKCalendarScrollViewController *)self scrollView];
          [v13 frame];
          v16 = v15;
          v18 = v17;
          v19 = [(HKCalendarScrollViewController *)self view];
          [v14 convertPoint:v19 toView:{v16, v18}];
          v21 = v20;

          [v13 frame];
          v23 = v21 + v22;
          v24 = [(HKCalendarScrollViewController *)self scrollView];
          [v24 frame];
          v26 = floor(v25 * 0.5);

          if (v23 > v26)
          {
            v4 = v13;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_13:
  }

  v27 = [v4 currentWeekStartDate];
  if (v27)
  {
    v28 = v4;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  return v28;
}

- (unint64_t)_firstVisibleWeekIndex
{
  [(HKCalendarScrollViewController *)self _visibleContentRect];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  weekViews = self->_weekViews;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__HKCalendarScrollViewController__firstVisibleWeekIndex__block_invoke;
  v10[3] = &unk_1E81B7460;
  v10[5] = v4;
  v10[6] = v5;
  v10[7] = v6;
  v10[8] = v7;
  v10[4] = &v11;
  [(NSMutableArray *)weekViews enumerateObjectsUsingBlock:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

void __56__HKCalendarScrollViewController__firstVisibleWeekIndex__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 frame];
  if (CGRectGetMinY(v7) > *(a1 + 48))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)scrollToDate:(id)a3 animateIfPossible:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [(HKCalendarScrollViewController *)self scrollView];
  if ([v6 isTracking])
  {
  }

  else
  {
    v7 = [(HKCalendarScrollViewController *)self scrollView];
    v8 = [v7 isDecelerating];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v9 = [(HKCalendarScrollViewController *)self scrollView];
  [v9 stopScrollingAndZooming];

LABEL_5:
  v10 = [(HKCalendarScrollViewController *)self _currentlyCenteredVisibleWeek];
  if ([v10 containsDate:v15])
  {
    goto LABEL_12;
  }

  v11 = [v10 currentWeekStartDate];
  [v11 timeIntervalSinceDate:v15];
  v13 = (v12 / (*MEMORY[0x1E696B760] * *MEMORY[0x1E696B510]));

  if (v13 < 0)
  {
    v13 = -v13;
  }

  v14 = [(HKCalendarScrollViewController *)self scrollView];
  if (v13 < 0x11)
  {
    [(HKCalendarScrollViewController *)self _centerPointToCenterDate:v15];
    [v14 setContentOffset:v4 animated:?];

    if (v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [(HKCalendarScrollViewController *)self _setWeekViewsToCenterDate:v15 forceUpdate:0];
    [v14 setContentOffset:0 animated:?];
  }

  [(HKCalendarScrollViewController *)self updateVisibleAccessoryViews];
LABEL_12:
  [(HKCalendarScrollViewController *)self _selectCellForDate:v15];
}

- (void)week:(id)a3 cellSelected:(id)a4
{
  v5 = a4;
  [(HKCalendarScrollViewController *)self setSelectedCell:v5];
  v7 = [(HKCalendarScrollViewController *)self delegate];
  v6 = [v5 date];

  [v7 calendarScrollViewController:self didSelectDate:v6];
}

- (void)scrollViewDidScroll:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableArray *)self->_weekViews count])
  {
    [v4 contentOffset];
    if (v5 < 150.0 || (v6 = v5, [v4 contentSize], v8 = v7, objc_msgSend(v4, "frame"), v6 > v8 - v9 + -150.0))
    {
      v10 = [(HKCalendarScrollViewController *)self _currentlyCenteredVisibleWeek];
      if (!v10)
      {
        v10 = [(NSMutableArray *)self->_weekViews lastObject];
      }

      v11 = [v10 currentWeekStartDate];

      if (v11)
      {
        v12 = [v10 currentWeekStartDate];
        v13 = [(HKCalendarScrollViewController *)self view];
        v14 = [v13 superview];
        [v10 frame];
        [v14 convertPoint:v4 fromView:?];

        [(HKCalendarScrollViewController *)self _setWeekViewsToCenterDate:v12 forceUpdate:1];
        [v4 setContentOffset:?];
        v15 = [(HKCalendarScrollViewController *)self _weekForDate:v12];
        v16 = [(HKCalendarScrollViewController *)self view];
        v17 = [v16 superview];
        [v15 frame];
        [v17 convertPoint:v4 fromView:?];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v18 = self->_weekViews;
        v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v25;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v25 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v24 + 1) + 8 * i);
              [v23 center];
              [v23 setCenter:?];
            }

            v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v20);
        }
      }
    }

    [(HKCalendarScrollViewController *)self _findCenteredWeekAndUpdateTitleIfNecessary];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(HKCalendarScrollViewController *)self updateVisibleAccessoryViews];
  }
}

- (void)updateVisibleAccessoryViews
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [(HKCalendarScrollViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HKCalendarScrollViewController *)self scrollView];
    [v5 contentOffset];
    v7 = v6;
    v8 = [(HKCalendarScrollViewController *)self scrollView];
    [v8 contentOffset];
    v10 = v9;
    v11 = [(HKCalendarScrollViewController *)self scrollView];
    [v11 frame];
    v13 = v12;
    v14 = [(HKCalendarScrollViewController *)self scrollView];
    [v14 frame];
    v16 = v15;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = self->_weekViews;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      v34 = v39;
      v36 = v17;
      v37 = self;
      v35 = *v45;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          if (([v22 accessoryContentsFetched] & 1) == 0)
          {
            [v22 bounds];
            if (!CGRectIsEmpty(v51))
            {
              [v22 frame];
              v53.origin.x = v23;
              v53.origin.y = v24;
              v53.size.width = v25;
              v53.size.height = v26;
              v52.origin.x = v7;
              v52.origin.y = v10;
              v52.size.width = v13;
              v52.size.height = v16;
              if (CGRectIntersectsRect(v52, v53))
              {
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v27 = [v22 accessoryViews];
                v28 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v41;
                  do
                  {
                    for (j = 0; j != v29; ++j)
                    {
                      if (*v41 != v30)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v32 = [*(*(&v40 + 1) + 8 * j) subviews];
                      [v32 makeObjectsPerformSelector:sel_removeFromSuperview];
                    }

                    v29 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
                  }

                  while (v29);
                }

                [v22 setAccessoryContentsFetched:1];
                v33 = [v22 dayCells];
                v38[0] = MEMORY[0x1E69E9820];
                v38[1] = 3221225472;
                v39[0] = __61__HKCalendarScrollViewController_updateVisibleAccessoryViews__block_invoke;
                v39[1] = &unk_1E81B74B0;
                v39[2] = v37;
                v39[3] = v22;
                [v33 enumerateObjectsUsingBlock:v38];

                v20 = v35;
                v17 = v36;
              }
            }
          }
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v19);
    }
  }
}

void __61__HKCalendarScrollViewController_updateVisibleAccessoryViews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 date];

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 32);
    v9 = [v5 date];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__HKCalendarScrollViewController_updateVisibleAccessoryViews__block_invoke_2;
    v10[3] = &unk_1E81B7488;
    v10[4] = *(a1 + 40);
    v10[5] = a3;
    [v7 calendarScrollViewController:v8 accessoryViewForDate:v9 accessoryViewCompletion:v10];
  }
}

void __61__HKCalendarScrollViewController_updateVisibleAccessoryViews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) accessoryViews];
    v5 = [v4 objectAtIndexedSubscript:*(a1 + 40)];

    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v3];
    v6 = [v3 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v8 setActive:1];

    v9 = [v3 trailingAnchor];
    v10 = [v5 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [v3 topAnchor];
    v13 = [v5 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [v3 bottomAnchor];
    v16 = [v5 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    [v3 setAlpha:0.0];
    v18 = MEMORY[0x1E69DD250];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __61__HKCalendarScrollViewController_updateVisibleAccessoryViews__block_invoke_3;
    v19[3] = &unk_1E81B55A8;
    v20 = v3;
    [v18 animateWithDuration:v19 animations:0.25];
  }
}

- (void)_findCenteredWeekAndUpdateTitleIfNecessary
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(HKCalendarScrollViewController *)self delegate];

  if (v3)
  {
    v4 = [(HKCalendarScrollViewController *)self scrollView];
    [v4 bounds];
    MidY = CGRectGetMidY(v38);

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = self->_weekViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        v10 = 0;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * v10);
          v12 = [(HKCalendarScrollViewController *)self scrollView];
          [v11 frame];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v21 = [(HKCalendarScrollViewController *)self view];
          [v12 convertRect:v21 toView:{v14, v16, v18, v20}];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v39.origin.x = v23;
          v39.origin.y = v25;
          v39.size.width = v27;
          v39.size.height = v29;
          if (CGRectGetMinY(v39) < MidY)
          {
            v40.origin.x = v23;
            v40.origin.y = v25;
            v40.size.width = v27;
            v40.size.height = v29;
            if (CGRectGetMaxY(v40) > MidY)
            {
              v30 = [(HKCalendarScrollViewController *)self delegate];
              v31 = [v11 currentWeekStartDate];
              [v30 calendarScrollViewController:self didUpdateCenteredMonth:v31];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v8);
    }
  }
}

- (HKCalendarScrollViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollView
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCalendarScrollViewController.m" lineNumber:59 description:@"Our view should be a UIScrollView. It's not and now I'm sad."];
}

@end