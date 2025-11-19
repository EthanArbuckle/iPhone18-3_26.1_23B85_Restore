@interface SGUIDateFormatting
+ (id)allDayFormatter;
+ (id)birthdayFormatter;
+ (id)fullDayFormatter;
+ (id)fullDayTimeFormatter;
+ (id)mediumDateFormatter;
+ (id)multiDayDateFormatter;
+ (id)reminderAllDayDateFormatter;
+ (id)reminderDateFormatter;
+ (id)reminderDateTimeFormatter;
+ (id)singleDayDateFormatter;
+ (id)singleDayTimeFormatter;
@end

@implementation SGUIDateFormatting

+ (id)birthdayFormatter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SGUIDateFormatting_birthdayFormatter__block_invoke;
  block[3] = &unk_1E7CD96B8;
  v6 = @"MMMMd";
  if (birthdayFormatter_onceToken != -1)
  {
    dispatch_once(&birthdayFormatter_onceToken, block);
  }

  v2 = birthdayFormatter_birthdayFormatter;
  v3 = birthdayFormatter_birthdayFormatter;

  return v2;
}

uint64_t __39__SGUIDateFormatting_birthdayFormatter__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = birthdayFormatter_birthdayFormatter;
  birthdayFormatter_birthdayFormatter = v2;

  v4 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [birthdayFormatter_birthdayFormatter setLocale:v4];

  v5 = birthdayFormatter_birthdayFormatter;
  v6 = *(a1 + 32);

  return [v5 setLocalizedDateFormatFromTemplate:v6];
}

+ (id)reminderAllDayDateFormatter
{
  if (reminderAllDayDateFormatter_onceToken != -1)
  {
    dispatch_once(&reminderAllDayDateFormatter_onceToken, &__block_literal_global_18);
  }

  v3 = reminderAllDayDateFormatter_reminderAllDayDateFormatter;

  return v3;
}

uint64_t __49__SGUIDateFormatting_reminderAllDayDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = reminderAllDayDateFormatter_reminderAllDayDateFormatter;
  reminderAllDayDateFormatter_reminderAllDayDateFormatter = v0;

  [reminderAllDayDateFormatter_reminderAllDayDateFormatter setDoesRelativeDateFormatting:1];
  v2 = reminderAllDayDateFormatter_reminderAllDayDateFormatter;

  return [v2 setDateStyle:1];
}

+ (id)reminderDateTimeFormatter
{
  if (reminderDateTimeFormatter_onceToken != -1)
  {
    dispatch_once(&reminderDateTimeFormatter_onceToken, &__block_literal_global_16);
  }

  v3 = reminderDateTimeFormatter_reminderDateFormatter;

  return v3;
}

uint64_t __47__SGUIDateFormatting_reminderDateTimeFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = reminderDateTimeFormatter_reminderDateFormatter;
  reminderDateTimeFormatter_reminderDateFormatter = v0;

  [reminderDateTimeFormatter_reminderDateFormatter setDoesRelativeDateFormatting:1];
  [reminderDateTimeFormatter_reminderDateFormatter setDateStyle:2];
  v2 = reminderDateTimeFormatter_reminderDateFormatter;

  return [v2 setTimeStyle:1];
}

+ (id)reminderDateFormatter
{
  if (reminderDateFormatter_onceToken != -1)
  {
    dispatch_once(&reminderDateFormatter_onceToken, &__block_literal_global_14);
  }

  v3 = reminderDateFormatter_reminderDateFormatter;

  return v3;
}

uint64_t __43__SGUIDateFormatting_reminderDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = reminderDateFormatter_reminderDateFormatter;
  reminderDateFormatter_reminderDateFormatter = v0;

  [reminderDateFormatter_reminderDateFormatter setDoesRelativeDateFormatting:1];
  [reminderDateFormatter_reminderDateFormatter setDateStyle:1];
  v2 = reminderDateFormatter_reminderDateFormatter;

  return [v2 setTimeStyle:1];
}

+ (id)mediumDateFormatter
{
  if (mediumDateFormatter_onceToken != -1)
  {
    dispatch_once(&mediumDateFormatter_onceToken, &__block_literal_global_12);
  }

  v3 = mediumDateFormatter_formatter;

  return v3;
}

uint64_t __41__SGUIDateFormatting_mediumDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = mediumDateFormatter_formatter;
  mediumDateFormatter_formatter = v0;

  [mediumDateFormatter_formatter setDateStyle:2];
  v2 = mediumDateFormatter_formatter;

  return [v2 setTimeStyle:0];
}

+ (id)multiDayDateFormatter
{
  if (multiDayDateFormatter_onceToken != -1)
  {
    dispatch_once(&multiDayDateFormatter_onceToken, &__block_literal_global_10);
  }

  v3 = multiDayDateFormatter_formatter;

  return v3;
}

uint64_t __43__SGUIDateFormatting_multiDayDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = multiDayDateFormatter_formatter;
  multiDayDateFormatter_formatter = v0;

  [multiDayDateFormatter_formatter setDateStyle:3];
  v2 = multiDayDateFormatter_formatter;

  return [v2 setTimeStyle:1];
}

+ (id)singleDayTimeFormatter
{
  if (singleDayTimeFormatter_onceToken != -1)
  {
    dispatch_once(&singleDayTimeFormatter_onceToken, &__block_literal_global_8);
  }

  v3 = singleDayTimeFormatter_formatter;

  return v3;
}

uint64_t __44__SGUIDateFormatting_singleDayTimeFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = singleDayTimeFormatter_formatter;
  singleDayTimeFormatter_formatter = v0;

  [singleDayTimeFormatter_formatter setDateStyle:0];
  v2 = singleDayTimeFormatter_formatter;

  return [v2 setTimeStyle:1];
}

+ (id)singleDayDateFormatter
{
  if (singleDayDateFormatter_onceToken != -1)
  {
    dispatch_once(&singleDayDateFormatter_onceToken, &__block_literal_global_6);
  }

  v3 = singleDayDateFormatter_formatter;

  return v3;
}

uint64_t __44__SGUIDateFormatting_singleDayDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = singleDayDateFormatter_formatter;
  singleDayDateFormatter_formatter = v0;

  [singleDayDateFormatter_formatter setDateStyle:2];
  v2 = singleDayDateFormatter_formatter;

  return [v2 setTimeStyle:0];
}

+ (id)fullDayTimeFormatter
{
  if (fullDayTimeFormatter_onceToken != -1)
  {
    dispatch_once(&fullDayTimeFormatter_onceToken, &__block_literal_global_4);
  }

  v3 = fullDayTimeFormatter_fullDateFormatter;

  return v3;
}

uint64_t __42__SGUIDateFormatting_fullDayTimeFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = fullDayTimeFormatter_fullDateFormatter;
  fullDayTimeFormatter_fullDateFormatter = v0;

  [fullDayTimeFormatter_fullDateFormatter setDateStyle:0];
  v2 = fullDayTimeFormatter_fullDateFormatter;

  return [v2 setTimeStyle:1];
}

+ (id)fullDayFormatter
{
  if (fullDayFormatter_onceToken != -1)
  {
    dispatch_once(&fullDayFormatter_onceToken, &__block_literal_global_2);
  }

  v3 = fullDayFormatter_fullDateFormatter;

  return v3;
}

uint64_t __38__SGUIDateFormatting_fullDayFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = fullDayFormatter_fullDateFormatter;
  fullDayFormatter_fullDateFormatter = v0;

  [fullDayFormatter_fullDateFormatter setDateStyle:3];
  v2 = fullDayFormatter_fullDateFormatter;

  return [v2 setTimeStyle:1];
}

+ (id)allDayFormatter
{
  if (allDayFormatter_onceToken != -1)
  {
    dispatch_once(&allDayFormatter_onceToken, &__block_literal_global_880);
  }

  v3 = allDayFormatter_allDayFormatter;

  return v3;
}

uint64_t __37__SGUIDateFormatting_allDayFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = allDayFormatter_allDayFormatter;
  allDayFormatter_allDayFormatter = v0;

  [allDayFormatter_allDayFormatter setDateStyle:3];
  v2 = allDayFormatter_allDayFormatter;

  return [v2 setTimeStyle:0];
}

@end