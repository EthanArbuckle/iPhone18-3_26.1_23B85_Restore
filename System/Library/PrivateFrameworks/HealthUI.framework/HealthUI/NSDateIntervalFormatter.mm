@interface NSDateIntervalFormatter
@end

@implementation NSDateIntervalFormatter

id __65__NSDateIntervalFormatter_HealthUI__hk_hourDateIntervalFormatter__block_invoke()
{
  v0 = __hourDateIntervalFormatter;
  if (!__hourDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __hourDateIntervalFormatter;
    __hourDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__hourDateIntervalFormatter setLocale:v3];

    [__hourDateIntervalFormatter setBoundaryStyle:2];
    [__hourDateIntervalFormatter setDateTemplate:@"jj"];
    v0 = __hourDateIntervalFormatter;
  }

  return v0;
}

id __73__NSDateIntervalFormatter_HealthUI__hk_hourDateIntervalWithDateFormatter__block_invoke()
{
  v0 = __hourDateIntervalWithDayFormatter;
  if (!__hourDateIntervalWithDayFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __hourDateIntervalWithDayFormatter;
    __hourDateIntervalWithDayFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__hourDateIntervalWithDayFormatter setLocale:v3];

    [__hourDateIntervalWithDayFormatter setBoundaryStyle:2];
    [__hourDateIntervalWithDayFormatter setDateTemplate:@"MMMdjj"];
    v0 = __hourDateIntervalWithDayFormatter;
  }

  return v0;
}

id __69__NSDateIntervalFormatter_HealthUI__hk_hourOnlyDateIntervalFormatter__block_invoke()
{
  v0 = __hourOnlyDateIntervalFormatter;
  if (!__hourOnlyDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __hourOnlyDateIntervalFormatter;
    __hourOnlyDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__hourOnlyDateIntervalFormatter setLocale:v3];

    [__hourOnlyDateIntervalFormatter setBoundaryStyle:2];
    [__hourOnlyDateIntervalFormatter setDateTemplate:@"j"];
    v0 = __hourOnlyDateIntervalFormatter;
  }

  return v0;
}

id __75__NSDateIntervalFormatter_HealthUI__hk_hourMinuteOnlyDateIntervalFormatter__block_invoke()
{
  v0 = __hourMinuteOnlyDateIntervalFormatter;
  if (!__hourMinuteOnlyDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __hourMinuteOnlyDateIntervalFormatter;
    __hourMinuteOnlyDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__hourMinuteOnlyDateIntervalFormatter setLocale:v3];

    [__hourMinuteOnlyDateIntervalFormatter setBoundaryStyle:2];
    [__hourMinuteOnlyDateIntervalFormatter setDateTemplate:@"j:mm a"];
    v0 = __hourMinuteOnlyDateIntervalFormatter;
  }

  return v0;
}

id __69__NSDateIntervalFormatter_HealthUI__hk_dateTimeDateIntervalFormatter__block_invoke()
{
  v0 = __dateTimeDateIntervalFormatter;
  if (!__dateTimeDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __dateTimeDateIntervalFormatter;
    __dateTimeDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__dateTimeDateIntervalFormatter setLocale:v3];

    [__dateTimeDateIntervalFormatter setDateTemplate:@"MMM d y j:mm a"];
    v0 = __dateTimeDateIntervalFormatter;
  }

  return v0;
}

id __60__NSDateIntervalFormatter_HealthUI__hk_dayIntervalFormatter__block_invoke()
{
  v0 = __dayDateIntervalFormatter;
  if (!__dayDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __dayDateIntervalFormatter;
    __dayDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__dayDateIntervalFormatter setLocale:v3];

    [__dayDateIntervalFormatter setDateTemplate:@"MMM d y"];
    v0 = __dayDateIntervalFormatter;
  }

  return v0;
}

id __62__NSDateIntervalFormatter_HealthUI__hk_monthIntervalFormatter__block_invoke()
{
  v0 = __monthDateIntervalFormatter;
  if (!__monthDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __monthDateIntervalFormatter;
    __monthDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__monthDateIntervalFormatter setLocale:v3];

    [__monthDateIntervalFormatter setDateTemplate:@"MMM y"];
    v0 = __monthDateIntervalFormatter;
  }

  return v0;
}

id __61__NSDateIntervalFormatter_HealthUI__hk_yearIntervalFormatter__block_invoke()
{
  v0 = __yearDateIntervalFormatter;
  if (!__yearDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __yearDateIntervalFormatter;
    __yearDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__yearDateIntervalFormatter setLocale:v3];

    [__yearDateIntervalFormatter setDateTemplate:@"y"];
    v0 = __yearDateIntervalFormatter;
  }

  return v0;
}

id __69__NSDateIntervalFormatter_HealthUI__hk_monthDayYearIntervalFormatter__block_invoke()
{
  v0 = __monthDayYearDateIntervalFormatter;
  if (!__monthDayYearDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __monthDayYearDateIntervalFormatter;
    __monthDayYearDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__monthDayYearDateIntervalFormatter setLocale:v3];

    [__monthDayYearDateIntervalFormatter setDateTemplate:@"MM/d/yy"];
    v0 = __monthDayYearDateIntervalFormatter;
  }

  return v0;
}

id __66__NSDateIntervalFormatter_HealthUI__hk_monthYearIntervalFormatter__block_invoke()
{
  v0 = __monthYearDateIntervalFormatter;
  if (!__monthYearDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __monthYearDateIntervalFormatter;
    __monthYearDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__monthYearDateIntervalFormatter setLocale:v3];

    [__monthYearDateIntervalFormatter setDateTemplate:@"MM/yy"];
    v0 = __monthYearDateIntervalFormatter;
  }

  return v0;
}

id __75__NSDateIntervalFormatter_HealthUI__hk_mediumMonthDayDateIntervalFormatter__block_invoke()
{
  v0 = __mediumMonthDayDateIntervalFormatter;
  if (!__mediumMonthDayDateIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __mediumMonthDayDateIntervalFormatter;
    __mediumMonthDayDateIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__mediumMonthDayDateIntervalFormatter setLocale:v3];

    [__mediumMonthDayDateIntervalFormatter setDateTemplate:@"MMMd"];
    v0 = __mediumMonthDayDateIntervalFormatter;
  }

  return v0;
}

id __72__NSDateIntervalFormatter_HealthUI__hk_mediumDateStyleIntervalFormatter__block_invoke()
{
  v0 = __mediumDateStyleIntervalFormatter;
  if (!__mediumDateStyleIntervalFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v2 = __mediumDateStyleIntervalFormatter;
    __mediumDateStyleIntervalFormatter = v1;

    v3 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    [__mediumDateStyleIntervalFormatter setLocale:v3];

    [__mediumDateStyleIntervalFormatter setDateStyle:2];
    [__mediumDateStyleIntervalFormatter setTimeStyle:0];
    v0 = __mediumDateStyleIntervalFormatter;
  }

  return v0;
}

@end