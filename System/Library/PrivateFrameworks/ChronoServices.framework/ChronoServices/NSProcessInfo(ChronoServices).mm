@interface NSProcessInfo(ChronoServices)
+ (uint64_t)chs_isWatchFacesWidgetRendererProcess;
@end

@implementation NSProcessInfo(ChronoServices)

+ (uint64_t)chs_isWatchFacesWidgetRendererProcess
{
  if (chs_isWatchFacesWidgetRendererProcess_onceToken[0] != -1)
  {
    +[NSProcessInfo(ChronoServices) chs_isWatchFacesWidgetRendererProcess];
  }

  return chs_isWatchFacesWidgetRendererProcess_isWatchFacesWidgetRendererProcess;
}

@end