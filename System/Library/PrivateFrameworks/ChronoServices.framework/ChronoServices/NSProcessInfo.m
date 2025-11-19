@interface NSProcessInfo
@end

@implementation NSProcessInfo

void __70__NSProcessInfo_ChronoServices__chs_isWatchFacesWidgetRendererProcess__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  chs_isWatchFacesWidgetRendererProcess_isWatchFacesWidgetRendererProcess = [v1 isEqualToString:@"com.apple.chrono.WidgetRenderer-WatchFaces"];
}

@end