@interface RecentWebSearchesController
+ (BOOL)_shouldTrackSearches;
+ (id)sharedController;
@end

@implementation RecentWebSearchesController

+ (id)sharedController
{
  if (+[RecentWebSearchesController sharedController]::onceToken != -1)
  {
    +[RecentWebSearchesController sharedController];
  }

  v3 = +[RecentWebSearchesController sharedController]::sharedController;

  return v3;
}

void __47__RecentWebSearchesController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(RecentWebSearchesController);
  v1 = +[RecentWebSearchesController sharedController]::sharedController;
  +[RecentWebSearchesController sharedController]::sharedController = v0;
}

+ (BOOL)_shouldTrackSearches
{
  v2 = +[Application sharedApplication];
  usesDefaultBrowsingModeInAllWindows = [v2 usesDefaultBrowsingModeInAllWindows];

  return usesDefaultBrowsingModeInAllWindows;
}

@end