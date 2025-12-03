@interface FIUIHealthSettingsDatePicker
- (FIUIHealthSettingsDatePicker)initWithFrame:(CGRect)frame;
- (void)_dateDidChange:(id)change;
- (void)layoutSubviews;
@end

@implementation FIUIHealthSettingsDatePicker

- (FIUIHealthSettingsDatePicker)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = FIUIHealthSettingsDatePicker;
  v3 = [(FIUIHealthSettingsDatePicker *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FIUIHealthSettingsDatePicker *)v3 setDatePickerMode:1];
    [(FIUIHealthSettingsDatePicker *)v4 setPreferredDatePickerStyle:1];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    [(FIUIHealthSettingsDatePicker *)v4 setTimeZone:localTimeZone];

    date = [MEMORY[0x1E695DF00] date];
    [(FIUIHealthSettingsDatePicker *)v4 setMaximumDate:date];

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date2 = [MEMORY[0x1E695DF00] date];
    v9 = [currentCalendar components:4 fromDate:date2];

    [v9 setYear:{objc_msgSend(v9, "year") - 150}];
    [v9 setDay:1];
    [v9 setMonth:1];
    currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
    v11 = [currentCalendar2 dateFromComponents:v9];

    [(FIUIHealthSettingsDatePicker *)v4 setMinimumDate:v11];
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    [(FIUIHealthSettingsDatePicker *)v4 _setTextColor:grayColor];

    [(FIUIHealthSettingsDatePicker *)v4 _setHighlightsToday:0];
    [(FIUIHealthSettingsDatePicker *)v4 addTarget:v4 action:sel__dateDidChange_ forControlEvents:4096];
    v13 = [MEMORY[0x1E69DC888] colorWithRed:0.109803922 green:0.109803922 blue:0.109803922 alpha:1.0];
    [(FIUIHealthSettingsDatePicker *)v4 setBackgroundColor:v13];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FIUIHealthSettingsDatePicker;
  [(FIUIHealthSettingsDatePicker *)&v3 layoutSubviews];
  _changeSeparatorLineColors(self);
}

- (void)_dateDidChange:(id)change
{
  dateUpdateHandler = [(FIUIHealthSettingsDatePicker *)self dateUpdateHandler];

  if (dateUpdateHandler)
  {
    dateUpdateHandler2 = [(FIUIHealthSettingsDatePicker *)self dateUpdateHandler];
    date = [(FIUIHealthSettingsDatePicker *)self date];
    dateUpdateHandler2[2](dateUpdateHandler2, date);
  }
}

@end