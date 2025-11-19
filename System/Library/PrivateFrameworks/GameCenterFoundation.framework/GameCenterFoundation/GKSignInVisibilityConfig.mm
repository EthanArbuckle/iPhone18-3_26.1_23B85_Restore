@interface GKSignInVisibilityConfig
- (GKSignInVisibilityConfig)init;
@end

@implementation GKSignInVisibilityConfig

- (GKSignInVisibilityConfig)init
{
  v6.receiver = self;
  v6.super_class = GKSignInVisibilityConfig;
  v2 = [(GKSignInVisibilityConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(GKLimitedPresentationConfig);
    [(GKSignInVisibilityConfig *)v2 setBannerConfig:v3];

    v4 = objc_alloc_init(GKLimitedPresentationConfig);
    [(GKSignInVisibilityConfig *)v2 setSheetConfig:v4];
  }

  return v2;
}

@end