@interface SFHighlightBannerTracker
+ (id)sharedTracker;
- (void)blockBannerForHighlight:(id)a3;
- (void)isBannerBlockedForHighlight:(id)a3 completion:(id)a4;
- (void)unblockBannerForHighlight:(id)a3;
@end

@implementation SFHighlightBannerTracker

+ (id)sharedTracker
{
  if (sharedTracker_once_0 != -1)
  {
    +[SFHighlightBannerTracker sharedTracker];
  }

  v3 = sharedTracker_sharedTracker_0;

  return v3;
}

void __41__SFHighlightBannerTracker_sharedTracker__block_invoke()
{
  v0 = objc_alloc_init(SFHighlightBannerTracker);
  v1 = sharedTracker_sharedTracker_0;
  sharedTracker_sharedTracker_0 = v0;
}

- (void)isBannerBlockedForHighlight:(id)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = SFHighlightBannerTracker;
  [(WBSBannerTracker *)&v4 isBannerBlockedForIdentifier:a3 completion:a4];
}

- (void)blockBannerForHighlight:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFHighlightBannerTracker;
  [(WBSBannerTracker *)&v3 blockBannerForIdentifier:a3];
}

- (void)unblockBannerForHighlight:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFHighlightBannerTracker;
  [(WBSBannerTracker *)&v3 unblockBannerForIdentifier:a3];
}

@end