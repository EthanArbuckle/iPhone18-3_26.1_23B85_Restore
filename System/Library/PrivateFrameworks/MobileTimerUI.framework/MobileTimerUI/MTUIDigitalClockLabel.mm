@interface MTUIDigitalClockLabel
- (BOOL)setHour:(int64_t)a3 minute:(int64_t)a4;
- (MTUIDigitalClockLabel)initWithFrame:(CGRect)a3;
- (void)forceSetHour:(int64_t)a3 minute:(int64_t)a4;
- (void)refreshUI;
- (void)resetFontSizes;
- (void)setTimeLabelText:(id)a3;
- (void)significantTimeChange:(id)a3;
@end

@implementation MTUIDigitalClockLabel

- (MTUIDigitalClockLabel)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = MTUIDigitalClockLabel;
  v3 = [(MTUIDateLabel *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA80]);
    v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    calendar = v3->_calendar;
    v3->_calendar = v5;

    v7 = v3->_calendar;
    v8 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [(NSCalendar *)v7 setTimeZone:v8];

    v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:0.0];
    baseDate = v3->_baseDate;
    v3->_baseDate = v9;

    v3->_hour = -1;
    v3->_minute = -1;
    [(MTUIDigitalClockLabel *)v3 resetFontSizes];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v3 selector:sel_significantTimeChange_ name:*MEMORY[0x277D766F0] object:0];

    v12 = v3;
  }

  return v3;
}

- (void)significantTimeChange:(id)a3
{
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  calendar = self->_calendar;
  v5 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [(NSCalendar *)calendar setTimeZone:v5];

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

- (BOOL)setHour:(int64_t)a3 minute:(int64_t)a4
{
  if (self->_hour == a3 && self->_minute == a4)
  {
    return 0;
  }

  [(MTUIDigitalClockLabel *)self forceSetHour:v4 minute:v5];
  return 1;
}

- (void)forceSetHour:(int64_t)a3 minute:(int64_t)a4
{
  self->_hour = a3;
  self->_minute = a4;
  v8 = [(NSCalendar *)self->_calendar components:1644 fromDate:self->_baseDate];
  [v8 setHour:a3];
  [v8 setMinute:a4];
  v7 = [(NSCalendar *)self->_calendar dateFromComponents:v8];
  [(MTUIDateLabel *)self setDateLabelText:0];
  [(MTUIDateLabel *)self setDate:v7];
}

- (void)setTimeLabelText:(id)a3
{
  self->_hour = -1;
  self->_minute = -1;
  v4 = a3;
  [(MTUIDateLabel *)self setDate:0];
  [(MTUIDateLabel *)self setDateLabelText:v4];
}

@end