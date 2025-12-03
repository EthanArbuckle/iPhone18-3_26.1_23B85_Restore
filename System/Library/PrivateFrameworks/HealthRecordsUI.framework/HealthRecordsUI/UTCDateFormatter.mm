@interface UTCDateFormatter
- (UTCDateFormatter)initWithDateCache:(id)cache;
- (id)relativeStringFromDate:(id)date;
@end

@implementation UTCDateFormatter

- (UTCDateFormatter)initWithDateCache:(id)cache
{
  cacheCopy = cache;
  v31.receiver = self;
  v31.super_class = UTCDateFormatter;
  v6 = [(UTCDateFormatter *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateCache, cache);
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
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v18 = [v16 dateFormatFromTemplate:@"MMM d" options:0 locale:autoupdatingCurrentLocale];

    [(NSDateFormatter *)v7->_shortMonthDayFormatter setDateFormat:v18];
    v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
    shortMonthYearFormatter = v7->_shortMonthYearFormatter;
    v7->_shortMonthYearFormatter = v19;

    v21 = v7->_shortMonthYearFormatter;
    v22 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
    [(NSDateFormatter *)v21 setTimeZone:v22];

    v23 = MEMORY[0x1E696AB78];
    autoupdatingCurrentLocale2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v25 = [v23 dateFormatFromTemplate:@"MMM y" options:0 locale:autoupdatingCurrentLocale2];

    [(NSDateFormatter *)v7->_shortMonthYearFormatter setDateFormat:v25];
    v26 = objc_alloc_init(MEMORY[0x1E696AB78]);
    todayFormatter = v7->_todayFormatter;
    v7->_todayFormatter = v26;

    v28 = v7->_todayFormatter;
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    [(NSDateFormatter *)v28 setTimeZone:localTimeZone];

    [(NSDateFormatter *)v7->_todayFormatter setDateStyle:2];
    [(NSDateFormatter *)v7->_todayFormatter setDoesRelativeDateFormatting:1];
  }

  return v7;
}

- (id)relativeStringFromDate:(id)date
{
  dateCopy = date;
  dateCache = [(UTCDateFormatter *)self dateCache];
  if ([dateCache isDateInToday:dateCopy])
  {

LABEL_4:
    v8 = 32;
    goto LABEL_7;
  }

  dateCache2 = [(UTCDateFormatter *)self dateCache];
  v7 = [dateCache2 isDateInYesterday:dateCopy];

  if (v7)
  {
    goto LABEL_4;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v11 = [currentCalendar component:4 fromDate:date];

  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [currentCalendar2 component:4 fromDate:dateCopy];

  v8 = 24;
  if (v13 == v11)
  {
    v8 = 16;
  }

LABEL_7:
  v14 = [*(&self->super.isa + v8) stringFromDate:dateCopy];

  return v14;
}

@end