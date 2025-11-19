@interface HKMonthDayCell
+ (double)dayLabelFontSize;
- (BOOL)_representsWeekendDay;
- (HKMonthDayCell)initWithDateCache:(id)a3;
- (void)_setCircleState:(int64_t)a3;
- (void)_updateFontAndCircle;
- (void)pressToTransition:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateWithDate:(id)a3 dayOfMonth:(int64_t)a4;
@end

@implementation HKMonthDayCell

- (HKMonthDayCell)initWithDateCache:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKMonthDayCell;
  v3 = [(HKCalendarDayCell *)&v6 initWithDateCache:a3];
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
  v11 = [(HKCalendarDayCell *)self circle];
  [v11 setBounds:{0.0, 0.0, v8, v10}];
}

- (void)_setCircleState:(int64_t)a3
{
  self->_circleState = a3;
  if (a3 == 2)
  {
    v9 = [(HKCalendarDayCell *)self circle];
    [v9 setHidden:0];

    v10 = [MEMORY[0x1E695DEE8] currentCalendar];
    v11 = [(HKCalendarDayCell *)self date];
    v12 = [v10 isDateInToday:v11];

    if (v12)
    {
      HKHealthKeyColor();
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v13 = ;
    v14 = [v13 CGColor];

    v5 = [(HKCalendarDayCell *)self circle];
    v15 = v5;
    v6 = v14;
LABEL_11:
    [v5 setBackgroundColor:v6];
    goto LABEL_12;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    v4 = [(HKCalendarDayCell *)self circle];
    [v4 setHidden:1];

    v5 = [(HKCalendarDayCell *)self circle];
    v15 = v5;
    v6 = 0;
    goto LABEL_11;
  }

  v7 = [(HKCalendarDayCell *)self circle];
  [v7 setHidden:0];

  v15 = [(HKCalendarDayCell *)self circle];
  v8 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v15 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];

LABEL_12:
}

- (BOOL)_representsWeekendDay
{
  v3 = [(HKCalendarDayCell *)self dateCache];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_dayOfWeek];
  v5 = [v3 isDayOfWeekNumberOnWeekend:v4];

  return v5;
}

- (void)updateWithDate:(id)a3 dayOfMonth:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = HKMonthDayCell;
  v6 = a3;
  [(HKCalendarDayCell *)&v12 updateWithDate:v6 dayOfMonth:a4];
  [(HKMonthDayCell *)self _setCircleState:0, v12.receiver, v12.super_class];
  [(HKMonthDayCell *)self setSelected:0];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 component:512 fromDate:v6];

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
  v11 = [(HKCalendarDayCell *)self textColor];
  [(HKCalendarDayCell *)self updateDateTextForDayNumber:a4 textColor:v11];
}

- (void)pressToTransition:(BOOL)a3
{
  v3 = a3;
  if ([(HKMonthDayCell *)self circleState]!= 2)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setAnimationDuration:0.3];
    [(HKMonthDayCell *)self _setCircleState:v3];
    v5 = MEMORY[0x1E6979518];

    [v5 commit];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = HKMonthDayCell;
  [(HKCalendarDayCell *)&v6 setSelected:?];
  if (v3)
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