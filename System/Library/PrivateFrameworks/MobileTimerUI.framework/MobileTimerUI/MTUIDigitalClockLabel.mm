@interface MTUIDigitalClockLabel
- (BOOL)setHour:(int64_t)hour minute:(int64_t)minute;
- (MTUIDigitalClockLabel)initWithFrame:(CGRect)frame;
- (void)forceSetHour:(int64_t)hour minute:(int64_t)minute;
- (void)refreshUI;
- (void)resetFontSizes;
- (void)setTimeLabelText:(id)text;
- (void)significantTimeChange:(id)change;
@end

@implementation MTUIDigitalClockLabel

- (MTUIDigitalClockLabel)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = MTUIDigitalClockLabel;
  v3 = [(MTUIDateLabel *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA80]);
    v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    calendar = v3->_calendar;
    v3->_calendar = v5;

    v7 = v3->_calendar;
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    [(NSCalendar *)v7 setTimeZone:systemTimeZone];

    v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:0.0];
    baseDate = v3->_baseDate;
    v3->_baseDate = v9;

    v3->_hour = -1;
    v3->_minute = -1;
    [(MTUIDigitalClockLabel *)v3 resetFontSizes];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_significantTimeChange_ name:*MEMORY[0x277D766F0] object:0];

    v12 = v3;
  }

  return v3;
}

- (void)significantTimeChange:(id)change
{
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  calendar = self->_calendar;
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [(NSCalendar *)calendar setTimeZone:systemTimeZone];

  [(MTUIDigitalClockLabel *)self refreshUI];
}

- (void)resetFontSizes
{
  v3 = [MEMORY[0x277D74300] boldSystemFontOfSize:25.0];
  [(MTUIDateLabel *)self setFont:v3];

  v4 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  [(MTUIDateLabel *)self setTimeDesignatorFont:v4];
}

- (void)refreshUI
{
  if (self->_hour != -1 && self->_minute != -1)
  {
    [MTUIDigitalClockLabel forceSetHour:"forceSetHour:minute:" minute:?];
  }
}

- (BOOL)setHour:(int64_t)hour minute:(int64_t)minute
{
  if (self->_hour == hour && self->_minute == minute)
  {
    return 0;
  }

  [(MTUIDigitalClockLabel *)self forceSetHour:v4 minute:v5];
  return 1;
}

- (void)forceSetHour:(int64_t)hour minute:(int64_t)minute
{
  self->_hour = hour;
  self->_minute = minute;
  v8 = [(NSCalendar *)self->_calendar components:1644 fromDate:self->_baseDate];
  [v8 setHour:hour];
  [v8 setMinute:minute];
  v7 = [(NSCalendar *)self->_calendar dateFromComponents:v8];
  [(MTUIDateLabel *)self setDateLabelText:0];
  [(MTUIDateLabel *)self setDate:v7];
}

- (void)setTimeLabelText:(id)text
{
  self->_hour = -1;
  self->_minute = -1;
  textCopy = text;
  [(MTUIDateLabel *)self setDate:0];
  [(MTUIDateLabel *)self setDateLabelText:textCopy];
}

@end