@interface NSCalendar
@end

@implementation NSCalendar

uint64_t __102__NSCalendar_MNExtras___navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__monthDayFormatter;
  _navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__monthDayFormatter = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [_navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__monthDayFormatter setLocale:v2];

  v3 = _navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__monthDayFormatter;

  return [v3 setLocalizedDateFormatFromTemplate:@"MMd"];
}

uint64_t __102__NSCalendar_MNExtras___navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__weekdayFormatter;
  _navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__weekdayFormatter = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [_navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__weekdayFormatter setLocale:v2];

  v3 = _navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__weekdayFormatter;

  return [v3 setDateFormat:@"EEEE"];
}

void __81__NSCalendar_MNExtras___navigation_relativeDateStringForDate_context_inTimeZone___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter;
  _navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter = v0;

  [_navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter setTimeStyle:0];
  [_navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter setDateStyle:1];
  v2 = _navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];
}

void __97__NSCalendar_MNExtras___navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone__dateFormatter;
  _navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone__dateFormatter = v0;

  [_navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone__dateFormatter setTimeStyle:0];
  v2 = _navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone__dateFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];
}

@end