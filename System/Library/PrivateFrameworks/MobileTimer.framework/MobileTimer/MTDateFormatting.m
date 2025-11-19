@interface MTDateFormatting
+ (id)sharedInstance;
- (MTDateFormatting)init;
- (NSString)amString;
- (NSString)pmString;
- (id)_dateOnlyFormatter;
- (id)_timeOnlyFormatter;
- (id)localizedTimeStringFromDate:(id)a3 forTimeZone:(id)a4 timeDesignator:(id *)a5;
- (id)timeDesignatorForDate:(id)a3 timeZone:(id)a4;
- (void)_clearLocaleDependentState;
- (void)_loadLocaleInfo;
- (void)_reloadLocaleInfo;
- (void)dealloc;
@end

@implementation MTDateFormatting

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MTDateFormatting sharedInstance];
  }

  v3 = sharedInstance_sSharedFormatter;

  return v3;
}

uint64_t __34__MTDateFormatting_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MTDateFormatting);
  v1 = sharedInstance_sSharedFormatter;
  sharedInstance_sSharedFormatter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MTDateFormatting)init
{
  v5.receiver = self;
  v5.super_class = MTDateFormatting;
  v2 = [(MTDateFormatting *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__reloadLocaleInfo name:*MEMORY[0x1E695D8F0] object:0];

    [(MTDateFormatting *)v2 _loadLocaleInfo];
  }

  return v2;
}

- (void)dealloc
{
  [(MTDateFormatting *)self _clearLocaleDependentState];
  v3.receiver = self;
  v3.super_class = MTDateFormatting;
  [(MTDateFormatting *)&v3 dealloc];
}

- (void)_clearLocaleDependentState
{
  amString = self->_amString;
  self->_amString = 0;

  pmString = self->_pmString;
  self->_pmString = 0;

  dateOnlyFormatter = self->_dateOnlyFormatter;
  self->_dateOnlyFormatter = 0;

  timeOnlyFormatter = self->_timeOnlyFormatter;
  self->_timeOnlyFormatter = 0;
}

- (void)_reloadLocaleInfo
{
  [(MTDateFormatting *)self _clearLocaleDependentState];
  [(MTDateFormatting *)self _loadLocaleInfo];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"MTDateFormattingLocaleDidChangeNotification" object:0];
}

- (void)_loadLocaleInfo
{
  v3 = MEMORY[0x1E696AB78];
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v11 = [v3 dateFormatFromTemplate:@"j" options:0 locale:v4];

  v5 = [v11 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v11, "rangeOfString:", @"k") != 0x7FFFFFFFFFFFFFFFLL;
  self->_use24HourTime = v5;
  v6 = [v11 rangeOfString:@"a"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [v11 rangeOfString:@"h" options:1];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v11 rangeOfString:@"k" options:1];
    }

    v7 = v9 != 0x7FFFFFFFFFFFFFFFLL && v8 < v9;
  }

  self->_timeDesignatorAppearsBeforeTime = v7;
}

- (id)_dateOnlyFormatter
{
  dateOnlyFormatter = self->_dateOnlyFormatter;
  if (!dateOnlyFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_dateOnlyFormatter;
    self->_dateOnlyFormatter = v4;

    v6 = self->_dateOnlyFormatter;
    v7 = [MEMORY[0x1E695DF58] currentLocale];
    [(NSDateFormatter *)v6 setLocale:v7];

    [(NSDateFormatter *)self->_dateOnlyFormatter setDateStyle:1];
    [(NSDateFormatter *)self->_dateOnlyFormatter setTimeStyle:0];
    dateOnlyFormatter = self->_dateOnlyFormatter;
  }

  return dateOnlyFormatter;
}

- (id)_timeOnlyFormatter
{
  timeOnlyFormatter = self->_timeOnlyFormatter;
  if (!timeOnlyFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_timeOnlyFormatter;
    self->_timeOnlyFormatter = v4;

    [(NSDateFormatter *)self->_timeOnlyFormatter setLocalizedDateFormatFromTemplate:@"Jmm"];
    timeOnlyFormatter = self->_timeOnlyFormatter;
  }

  return timeOnlyFormatter;
}

- (NSString)amString
{
  amString = self->_amString;
  if (!amString)
  {
    v4 = [(MTDateFormatting *)self _dateOnlyFormatter];
    v5 = [v4 AMSymbol];
    v6 = [v5 copy];
    v7 = self->_amString;
    self->_amString = v6;

    amString = self->_amString;
  }

  return amString;
}

- (NSString)pmString
{
  pmString = self->_pmString;
  if (!pmString)
  {
    v4 = [(MTDateFormatting *)self _dateOnlyFormatter];
    v5 = [v4 PMSymbol];
    v6 = [v5 copy];
    v7 = self->_pmString;
    self->_pmString = v6;

    pmString = self->_pmString;
  }

  return pmString;
}

- (id)localizedTimeStringFromDate:(id)a3 forTimeZone:(id)a4 timeDesignator:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MTDateFormatting *)self _timeOnlyFormatter];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 timeZone];
    v13 = [v9 isEqualToTimeZone:v12];

    if ((v13 & 1) == 0)
    {
      v14 = [v11 copy];

      [v14 setTimeZone:v9];
      v11 = v14;
    }
  }

  if (a5)
  {
    *a5 = [(MTDateFormatting *)self timeDesignatorForDate:v8 timeZone:v9];
  }

  v15 = [v11 stringFromDate:v8];

  return v15;
}

- (id)timeDesignatorForDate:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_use24HourTime)
  {
    v8 = &stru_1F29360E0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = v9;
    if (v7)
    {
      [v9 setTimeZone:v7];
    }

    if ([v10 component:32 fromDate:v6] < 12)
    {
      [(MTDateFormatting *)self amString];
    }

    else
    {
      [(MTDateFormatting *)self pmString];
    }
    v8 = ;
  }

  return v8;
}

@end