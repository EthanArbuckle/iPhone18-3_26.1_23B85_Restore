@interface NSDateFormatter
@end

@implementation NSDateFormatter

void __65__NSDateFormatter_MNExtras___navigation_debugDescriptionForDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _navigation_debugDescriptionForDate__df;
  _navigation_debugDescriptionForDate__df = v0;

  [_navigation_debugDescriptionForDate__df setFormatterBehavior:1040];
  [_navigation_debugDescriptionForDate__df setDateStyle:1];
  [_navigation_debugDescriptionForDate__df setTimeStyle:3];
  v2 = _navigation_debugDescriptionForDate__df;
  v3 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v2 setTimeZone:v3];
}

void __143__NSDateFormatter_MNExtras___navigation_localizedTimestampStringForDepartureArrivalDate_inTimeZone_canIncludeDate_showTimeZone_useShortFormat___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _navigation_localizedTimestampStringForDepartureArrivalDate_inTimeZone_canIncludeDate_showTimeZone_useShortFormat___formatterCache;
  _navigation_localizedTimestampStringForDepartureArrivalDate_inTimeZone_canIncludeDate_showTimeZone_useShortFormat___formatterCache = v0;
}

@end