@interface UTCDateFormatter
- (UTCDateFormatter)initWithDateCache:(id)a3;
- (id)relativeStringFromDate:(id)a3;
@end

@implementation UTCDateFormatter

- (UTCDateFormatter)initWithDateCache:(id)a3
{
  v5 = a3;
  v31.receiver = self;
  v31.super_class = UTCDateFormatter;
  v6 = [(UTCDateFormatter *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateCache, a3);
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    monthDayYearFormatter = v7->_monthDayYearFormatter;
    v7->_monthDayYearFormatter = v8;

    v10 = v7->_monthDayYearFormatter;
    v11 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
    [(NSDateFormatter *)v10 setTimeZone:v11];

    [(NSDateFormatter *)v7->_monthDayYearFormatter setDateStyle:3];
    [(NSDateFormatter *)v7->_monthDayYearFormatter setTimeStyle:0];
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    shortMonthDayFormatter = v7->_shortMonthDayFormatter;
    v7->_shortMonthDayFormatter = v12;

    v14 = v7->_shortMonthDayFormatter;
    v15 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
    [(NSDateFormatter *)v14 setTimeZone:v15];

    v16 = MEMORY[0x1E696AB78];
    v17 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v18 = [v16 dateFormatFromTemplate:@"MMM d" options:0 locale:v17];

    [(NSDateFormatter *)v7->_shortMonthDayFormatter setDateFormat:v18];
    v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
    shortMonthYearFormatter = v7->_shortMonthYearFormatter;
    v7->_shortMonthYearFormatter = v19;

    v21 = v7->_shortMonthYearFormatter;
    v22 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
    [(NSDateFormatter *)v21 setTimeZone:v22];

    v23 = MEMORY[0x1E696AB78];
    v24 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v25 = [v23 dateFormatFromTemplate:@"MMM y" options:0 locale:v24];

    [(NSDateFormatter *)v7->_shortMonthYearFormatter setDateFormat:v25];
    v26 = objc_alloc_init(MEMORY[0x1E696AB78]);
    todayFormatter = v7->_todayFormatter;
    v7->_todayFormatter = v26;

    v28 = v7->_todayFormatter;
    v29 = [MEMORY[0x1E695DFE8] localTimeZone];
    [(NSDateFormatter *)v28 setTimeZone:v29];

    [(NSDateFormatter *)v7->_todayFormatter setDateStyle:2];
    [(NSDateFormatter *)v7->_todayFormatter setDoesRelativeDateFormatting:1];
  }

  return v7;
}

- (id)relativeStringFromDate:(id)a3
{
  v4 = a3;
  v5 = [(UTCDateFormatter *)self dateCache];
  if ([v5 isDateInToday:v4])
  {

LABEL_4:
    v8 = 32;
    goto LABEL_7;
  }

  v6 = [(UTCDateFormatter *)self dateCache];
  v7 = [v6 isDateInYesterday:v4];

  if (v7)
  {
    goto LABEL_4;
  }

  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [v9 component:4 fromDate:v10];

  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [v12 component:4 fromDate:v4];

  v8 = 24;
  if (v13 == v11)
  {
    v8 = 16;
  }

LABEL_7:
  v14 = [*(&self->super.isa + v8) stringFromDate:v4];

  return v14;
}

@end