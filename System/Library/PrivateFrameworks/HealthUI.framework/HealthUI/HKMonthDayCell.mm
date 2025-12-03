@interface HKMonthDayCell
+ (double)dayLabelFontSize;
- (BOOL)_representsWeekendDay;
- (HKMonthDayCell)initWithDateCache:(id)cache;
- (void)_setCircleState:(int64_t)state;
- (void)_updateFontAndCircle;
- (void)pressToTransition:(BOOL)transition;
- (void)setSelected:(BOOL)selected;
- (void)updateWithDate:(id)date dayOfMonth:(int64_t)month;
@end

@implementation HKMonthDayCell

- (HKMonthDayCell)initWithDateCache:(id)cache
{
  v6.receiver = self;
  v6.super_class = HKMonthDayCell;
  v3 = [(HKCalendarDayCell *)&v6 initWithDateCache:cache];
  v4 = v3;
  if (v3)
  {
    [(HKCalendarDayCell *)v3 setDayDiameter:35.0];
    [(HKMonthDayCell *)v4 _updateFontAndCircle];
  }

  return v4;
}

+ (double)dayLabelFontSize
{
  v2 = *MEMORY[0x1E69DDC38];
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(*MEMORY[0x1E69DDC38]);
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDCF8];
  if (IsLargerThanSizeCategory)
  {
    v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v2];
    v7 = [v4 preferredFontForTextStyle:v5 compatibleWithTraitCollection:v6];
    [v7 _scaledValueForValue:16.0];
    v9 = v8;
  }

  else
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v6 _scaledValueForValue:16.0];
    v9 = v10;
  }

  return v9;
}

- (void)_updateFontAndCircle
{
  [objc_opt_class() dayLabelFontSize];
  v4 = v3;
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
  [(HKCalendarDayCell *)self setFont:v5];

  v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:v4];
  [(HKCalendarDayCell *)self setBoldFont:v6];

  [(HKCalendarDayCell *)self circleSize];
  v8 = v7;
  v10 = v9;
  circle = [(HKCalendarDayCell *)self circle];
  [circle setBounds:{0.0, 0.0, v8, v10}];
}

- (void)_setCircleState:(int64_t)state
{
  self->_circleState = state;
  if (state == 2)
  {
    circle = [(HKCalendarDayCell *)self circle];
    [circle setHidden:0];

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date = [(HKCalendarDayCell *)self date];
    v12 = [currentCalendar isDateInToday:date];

    if (v12)
    {
      HKHealthKeyColor();
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v13 = ;
    cGColor = [v13 CGColor];

    circle2 = [(HKCalendarDayCell *)self circle];
    circle5 = circle2;
    v6 = cGColor;
LABEL_11:
    [circle2 setBackgroundColor:v6];
    goto LABEL_12;
  }

  if (state != 1)
  {
    if (state)
    {
      return;
    }

    circle3 = [(HKCalendarDayCell *)self circle];
    [circle3 setHidden:1];

    circle2 = [(HKCalendarDayCell *)self circle];
    circle5 = circle2;
    v6 = 0;
    goto LABEL_11;
  }

  circle4 = [(HKCalendarDayCell *)self circle];
  [circle4 setHidden:0];

  circle5 = [(HKCalendarDayCell *)self circle];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [circle5 setBackgroundColor:{objc_msgSend(systemGrayColor, "CGColor")}];

LABEL_12:
}

- (BOOL)_representsWeekendDay
{
  dateCache = [(HKCalendarDayCell *)self dateCache];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_dayOfWeek];
  v5 = [dateCache isDayOfWeekNumberOnWeekend:v4];

  return v5;
}

- (void)updateWithDate:(id)date dayOfMonth:(int64_t)month
{
  v12.receiver = self;
  v12.super_class = HKMonthDayCell;
  dateCopy = date;
  [(HKCalendarDayCell *)&v12 updateWithDate:dateCopy dayOfMonth:month];
  [(HKMonthDayCell *)self _setCircleState:0, v12.receiver, v12.super_class];
  [(HKMonthDayCell *)self setSelected:0];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [currentCalendar component:512 fromDate:dateCopy];

  self->_dayOfWeek = v8;
  if ([(HKCalendarDayCell *)self representsToday])
  {
    v9 = HKHealthKeyColor();
  }

  else
  {
    if ([(HKMonthDayCell *)self _representsWeekendDay])
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v9 = ;
  }

  v10 = v9;
  [(HKCalendarDayCell *)self setTextColor:v9];

  [(HKMonthDayCell *)self _updateFontAndCircle];
  textColor = [(HKCalendarDayCell *)self textColor];
  [(HKCalendarDayCell *)self updateDateTextForDayNumber:month textColor:textColor];
}

- (void)pressToTransition:(BOOL)transition
{
  transitionCopy = transition;
  if ([(HKMonthDayCell *)self circleState]!= 2)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setAnimationDuration:0.3];
    [(HKMonthDayCell *)self _setCircleState:transitionCopy];
    v5 = MEMORY[0x1E6979518];

    [v5 commit];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = HKMonthDayCell;
  [(HKCalendarDayCell *)&v6 setSelected:?];
  if (selectedCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(HKMonthDayCell *)self _setCircleState:v5];
}

@end