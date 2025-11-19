@interface GKWelcomeBannerVisibility
+ (id)shared;
@end

@implementation GKWelcomeBannerVisibility

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[GKWelcomeBannerVisibility shared];
  }

  v3 = shared_sharedInstance;

  return v3;
}

uint64_t __35__GKWelcomeBannerVisibility_shared__block_invoke()
{
  shared_sharedInstance = objc_alloc_init(GKWelcomeBannerVisibility);

  return MEMORY[0x2821F96F8]();
}

@end