@interface SUUIMetricsUtilities
+ (BOOL)showEventNotifications;
+ (BOOL)trackAllEvents;
+ (id)newErrorPageEvent;
+ (id)newErrorRetryClickEvent;
@end

@implementation SUUIMetricsUtilities

+ (BOOL)showEventNotifications
{
  if (showEventNotifications_onceToken != -1)
  {
    +[SUUIMetricsUtilities showEventNotifications];
  }

  return showEventNotifications_showEventNotifications;
}

uint64_t __46__SUUIMetricsUtilities_showEventNotifications__block_invoke()
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SUUIMetricsShowEventNotifications", *MEMORY[0x277D6A708], 0);
  result = MGGetBoolAnswer();
  showEventNotifications_showEventNotifications = (AppBooleanValue != 0) & result;
  return result;
}

+ (BOOL)trackAllEvents
{
  if (trackAllEvents_onceToken != -1)
  {
    +[SUUIMetricsUtilities trackAllEvents];
  }

  return trackAllEvents_trackAllEvents;
}

uint64_t __38__SUUIMetricsUtilities_trackAllEvents__block_invoke()
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SUUIMetricsTrackAll", *MEMORY[0x277D6A708], 0);
  result = MGGetBoolAnswer();
  trackAllEvents_trackAllEvents = (AppBooleanValue != 0) & result;
  return result;
}

+ (id)newErrorPageEvent
{
  v2 = objc_alloc_init(MEMORY[0x277D69BB0]);
  [v2 setPageDescription:@"Error"];
  return v2;
}

+ (id)newErrorRetryClickEvent
{
  v2 = objc_alloc_init(MEMORY[0x277D69B68]);
  [v2 setPageDescription:@"Error"];
  [v2 setActionType:@"retry"];
  [v2 setTargetType:*MEMORY[0x277D6A4D0]];
  return v2;
}

@end