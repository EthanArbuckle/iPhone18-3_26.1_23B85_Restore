@interface SFHighlightBannerTracker
+ (id)sharedTracker;
- (void)blockBannerForHighlight:(id)highlight;
- (void)isBannerBlockedForHighlight:(id)highlight completion:(id)completion;
- (void)unblockBannerForHighlight:(id)highlight;
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

- (void)isBannerBlockedForHighlight:(id)highlight completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = SFHighlightBannerTracker;
  [(WBSBannerTracker *)&v4 isBannerBlockedForIdentifier:highlight completion:completion];
}

- (void)blockBannerForHighlight:(id)highlight
{
  v3.receiver = self;
  v3.super_class = SFHighlightBannerTracker;
  [(WBSBannerTracker *)&v3 blockBannerForIdentifier:highlight];
}

- (void)unblockBannerForHighlight:(id)highlight
{
  v3.receiver = self;
  v3.super_class = SFHighlightBannerTracker;
  [(WBSBannerTracker *)&v3 unblockBannerForIdentifier:highlight];
}

@end