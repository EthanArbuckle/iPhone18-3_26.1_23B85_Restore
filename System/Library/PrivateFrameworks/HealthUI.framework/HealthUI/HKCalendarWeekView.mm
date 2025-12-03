@interface HKCalendarWeekView
- (BOOL)containsDate:(id)date;
- (CGRect)frameForDayCell:(id)cell;
- (CGSize)sizeThatFits:(CGSize)fits;
- (Class)cellClass;
- (Class)monthTitleClass;
- (HKCalendarWeekView)initWithDateCache:(id)cache;
- (HKCalendarWeekViewDelegate)delegate;
- (double)preferredHeight;
- (id)_getDayCellWithTouchLocation:(CGPoint)location;
- (id)_getDayCellWithTouches:(id)touches;
- (id)currentWeekStartDate;
- (id)description;
- (id)nextWeekStartDate;
- (id)previousWeekStartDate;
- (void)reloadCells;
- (void)selectedCalendarDay:(id)day;
- (void)setMonthWeekStart:(id)start;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation HKCalendarWeekView

- (HKCalendarWeekView)initWithDateCache:(id)cache
{
  cacheCopy = cache;
  v16.receiver = self;
  v16.super_class = HKCalendarWeekView;
  v6 = [(HKCalendarWeekView *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    array = [MEMORY[0x1E695DF70] array];
    dayCells = v6->_dayCells;
    v6->_dayCells = array;

    objc_storeStrong(&v6->_dateCache, cache);
    if ([(HKCalendarWeekView *)v6 cellClass])
    {
      for (i = *MEMORY[0x1E696B760]; i; --i)
      {
        v10 = [objc_alloc(-[HKCalendarWeekView cellClass](v6 "cellClass"))];
        layer = [(HKCalendarWeekView *)v6 layer];
        [layer addSublayer:v10];

        [(NSMutableArray *)v6->_dayCells addObject:v10];
      }
    }

    v12 = objc_alloc_init([(HKCalendarWeekView *)v6 monthTitleClass]);
    [(HKCalendarWeekView *)v6 setMonthTitleView:v12];

    monthTitleView = [(HKCalendarWeekView *)v6 monthTitleView];
    [monthTitleView setHidden:1];

    monthTitleView2 = [(HKCalendarWeekView *)v6 monthTitleView];
    [(HKCalendarWeekView *)v6 addSubview:monthTitleView2];
  }

  return v6;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = HKCalendarWeekView;
  v3 = [(HKCalendarWeekView *)&v13 description];
  firstObject = [(NSMutableArray *)self->_dayCells firstObject];
  lastObject = [(NSMutableArray *)self->_dayCells lastObject];
  v6 = MEMORY[0x1E696AB78];
  date = [firstObject date];
  v8 = [v6 localizedStringFromDate:date dateStyle:2 timeStyle:0];

  v9 = MEMORY[0x1E696AB78];
  date2 = [lastObject date];
  v11 = [v9 localizedStringFromDate:date2 dateStyle:2 timeStyle:0];

  [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];
  [v3 appendFormat:@"; dates: %@ – %@>", v8, v11];

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(HKCalendarWeekView *)self preferredHeight:fits.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)setMonthWeekStart:(id)start
{
  v4 = MEMORY[0x1E6979518];
  startCopy = start;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar startOfDayForDate:startCopy];

  self->_firstDayOfMonthCellIndex = -1;
  if ([(HKCalendarWeekView *)self supportsRTL])
  {
    IsRightToLeft = HKUICalendarLocaleIsRightToLeft();
  }

  else
  {
    IsRightToLeft = 0;
  }

  if ([(NSMutableArray *)self->_dayCells count])
  {
    v8 = 0;
    v9 = -1;
    do
    {
      v10 = v8;
      if (IsRightToLeft)
      {
        v10 = [(NSMutableArray *)self->_dayCells count]+ v9;
      }

      v11 = [(NSMutableArray *)self->_dayCells objectAtIndexedSubscript:v10];
      v12 = [currentCalendar dateByAddingUnit:16 value:v8 toDate:v6 options:0];
      v13 = [currentCalendar component:16 fromDate:v12];
      if (v13 == 1)
      {
        self->_firstDayOfMonthCellIndex = v10;
        [(HKCalendarMonthTitleFormatting *)self->_monthTitleView setDate:v12];
      }

      [v11 updateWithDate:v12 dayOfMonth:v13];

      ++v8;
      --v9;
    }

    while (v8 < [(NSMutableArray *)self->_dayCells count]);
  }

  [(HKCalendarMonthTitleFormatting *)self->_monthTitleView setHidden:[(HKCalendarWeekView *)self containsMonthTitle]^ 1];
  [(HKCalendarWeekView *)self setNeedsLayout];
  [MEMORY[0x1E6979518] commit];
  monthWeekStart = self->_monthWeekStart;
  self->_monthWeekStart = v6;
}

- (void)reloadCells
{
  if (self->_monthWeekStart)
  {
    [(HKCalendarWeekView *)self setMonthWeekStart:?];
  }
}

- (double)preferredHeight
{
  v3 = 1.0;
  if ([(HKCalendarWeekView *)self containsMonthTitle])
  {
    if ([(HKCalendarWeekView *)self supportsRTL]&& HKUICalendarLocaleIsRightToLeft())
    {
      v4 = self->_firstDayOfMonthCellIndex < (*MEMORY[0x1E696B760] - 1);
    }

    else
    {
      v4 = self->_firstDayOfMonthCellIndex > 0;
    }

    if (v4)
    {
      v3 = 2.0;
    }

    else
    {
      v3 = 1.0;
    }
  }

  [(HKCalendarWeekView *)self dateTopMargin];
  v6 = v5;
  [(HKCalendarWeekView *)self dateDiameter];
  v8 = v6 + v7;
  [(HKCalendarWeekView *)self dateBottomMargin];
  v10 = v8 + v9;
  [(HKCalendarWeekView *)self additionalSpacingPerRow];
  v12 = v3 * (v10 + v11);
  if ([(HKCalendarWeekView *)self containsMonthTitle])
  {
    monthTitleView = self->_monthTitleView;
    [(HKCalendarWeekView *)self bounds];
    [(HKCalendarMonthTitleFormatting *)monthTitleView sizeThatFits:v14, v15];
    v17 = v16;
    [(HKCalendarWeekView *)self monthTitleTopMargin];
    v19 = v18;
    [(HKCalendarWeekView *)self monthTitleBottomMargin];
    v12 = v12 + v17 + v19 + v20;
    if (!self->_firstDayOfMonthCellIndex)
    {
      [(HKCalendarWeekView *)self dateTopMargin];
      return v12 + v21;
    }
  }

  return v12;
}

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  currentWeekStartDate = [(HKCalendarWeekView *)self currentWeekStartDate];

  v6 = 0;
  if (dateCopy && currentWeekStartDate)
  {
    v16 = 0.0;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v15 = 0;
    currentWeekStartDate2 = [(HKCalendarWeekView *)self currentWeekStartDate];
    v9 = [currentCalendar rangeOfUnit:4096 startDate:&v15 interval:&v16 forDate:currentWeekStartDate2];
    v10 = v15;

    if (v9)
    {
      [dateCopy timeIntervalSinceReferenceDate];
      v12 = v11;
      [v10 timeIntervalSinceReferenceDate];
      v6 = v12 < v13 + v16 && v12 >= v13;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CGRect)frameForDayCell:(id)cell
{
  v32 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  if ([(HKCalendarWeekView *)self containsDate:cellCopy])
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [currentCalendar components:30 fromDate:cellCopy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_dayCells;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          date = [v12 date];
          v14 = [currentCalendar components:30 fromDate:date];

          if ([v6 isEqual:v14])
          {
            [v12 frame];
            v15 = v19;
            v16 = v20;
            v17 = v21;
            v18 = v22;

            goto LABEL_13;
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  v17 = *(MEMORY[0x1E695F058] + 16);
  v18 = *(MEMORY[0x1E695F058] + 24);
LABEL_13:

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)currentWeekStartDate
{
  if ([(HKCalendarWeekView *)self supportsRTL]&& HKUICalendarLocaleIsRightToLeft())
  {
    lastObject = [(NSMutableArray *)self->_dayCells lastObject];
  }

  else
  {
    lastObject = [(NSMutableArray *)self->_dayCells firstObject];
  }

  v4 = lastObject;
  date = [lastObject date];

  return date;
}

- (id)previousWeekStartDate
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  currentWeekStartDate = [(HKCalendarWeekView *)self currentWeekStartDate];
  v5 = [currentCalendar dateByAddingUnit:0x2000 value:-1 toDate:currentWeekStartDate options:0];

  return v5;
}

- (id)nextWeekStartDate
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  currentWeekStartDate = [(HKCalendarWeekView *)self currentWeekStartDate];
  v5 = [currentCalendar dateByAddingUnit:0x2000 value:1 toDate:currentWeekStartDate options:0];

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  event = [(HKCalendarWeekView *)self _getDayCellWithTouches:began, event];
  pressedDayCell = self->_pressedDayCell;
  self->_pressedDayCell = event;

  if (self->_pressedDayCell)
  {
    pressedDayOfWeek = self->_pressedDayOfWeek;

    [HKCalendarWeekView pressedOnCalendarDay:"pressedOnCalendarDay:cell:down:" cell:pressedDayOfWeek down:?];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  pressedDayCell = self->_pressedDayCell;
  if (pressedDayCell)
  {
    [(HKCalendarWeekView *)self selectedCalendarDay:pressedDayCell, event];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if (self->_pressedDayCell)
  {
    event = [(HKCalendarWeekView *)self _getDayCellWithTouches:moved, event];
    pressedDayCell = self->_pressedDayCell;
    if (pressedDayCell != event)
    {
      v7 = event;
      [(HKCalendarWeekView *)self pressedOnCalendarDay:self->_pressedDayOfWeek cell:pressedDayCell down:0];
      event = v7;
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  pressedDayCell = self->_pressedDayCell;
  if (pressedDayCell)
  {
    [(HKCalendarWeekView *)self pressedOnCalendarDay:self->_pressedDayOfWeek cell:pressedDayCell down:0];
  }
}

- (id)_getDayCellWithTouches:(id)touches
{
  anyObject = [touches anyObject];
  [anyObject locationInView:self];
  v5 = [(HKCalendarWeekView *)self _getDayCellWithTouchLocation:?];

  return v5;
}

- (id)_getDayCellWithTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(HKCalendarWeekView *)self frame];
  v7 = floor(v6 / *MEMORY[0x1E696B760]);
  v8 = vcvtpd_s64_f64(x / v7);
  v9 = v8 - 1;
  if (v8 < 1 || v9 >= *MEMORY[0x1E696B760])
  {
    v11 = 0;
  }

  else
  {
    v12 = [(NSMutableArray *)self->_dayCells objectAtIndexedSubscript:v8 - 1];
    [(HKCalendarWeekView *)self dateTopMargin];
    v14 = v13;
    [v12 frame];
    v16 = v14 + v15;
    [(HKCalendarWeekView *)self dateBottomMargin];
    v18 = v17 + v16;
    [(HKCalendarWeekView *)self additionalSpacingPerRow];
    v20 = v19 + v18;
    [v12 frame];
    v22 = v21;
    [(HKCalendarWeekView *)self dateTopMargin];
    v28.origin.y = v22 - v23;
    v28.origin.x = v7 * v9;
    v28.size.width = v7;
    v28.size.height = v20;
    v27.x = x;
    v27.y = y;
    if (CGRectContainsPoint(v28, v27))
    {
      self->_pressedDayOfWeek = v9;
      v11 = [(NSMutableArray *)self->_dayCells objectAtIndexedSubscript:v9];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HKCalendarWeekViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)selectedCalendarDay:(id)day
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();

  NSRequestConcreteImplementation();
}

- (Class)cellClass
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (Class)monthTitleClass
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

@end