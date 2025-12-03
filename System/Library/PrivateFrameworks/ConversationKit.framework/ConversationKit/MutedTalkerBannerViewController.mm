@interface MutedTalkerBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (CNKMutedTalkerBannerViewControllerDelegate)delegate;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (UIViewController)viewController;
- (_TtC15ConversationKit31MutedTalkerBannerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissBanner;
- (void)handleTap:(id)tap;
- (void)playBannerSound;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)setDelegate:(id)delegate;
- (void)showBanner;
- (void)updatePillViewWithIsMuted:(BOOL)muted;
- (void)viewDidLoad;
@end

@implementation MutedTalkerBannerViewController

- (CNKMutedTalkerBannerViewControllerDelegate)delegate
{
  v2 = MutedTalkerBannerViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MutedTalkerBannerViewController.delegate.setter();
}

- (void)viewDidLoad
{
  selfCopy = self;
  MutedTalkerBannerViewController.viewDidLoad()();
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  MutedTalkerBannerViewController.handleTap(_:)(selfCopy);
}

- (void)updatePillViewWithIsMuted:(BOOL)muted
{
  selfCopy = self;
  MutedTalkerBannerViewController.updatePillView(isMuted:)(muted);
}

- (void)playBannerSound
{
  selfCopy = self;
  MutedTalkerBannerViewController.playBannerSound()();
}

- (void)showBanner
{
  selfCopy = self;
  MutedTalkerBannerViewController.showBanner()();
}

- (void)dismissBanner
{
  selfCopy = self;
  MutedTalkerBannerViewController.dismissBanner()();
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MutedTalkerBannerViewController.presentableWillAppear(asBanner:)();
  swift_unknownObjectRelease();
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  swift_unknownObjectRetain();
  reasonCopy = reason;
  selfCopy = self;
  MutedTalkerBannerViewController.presentableWillDisappear(asBanner:withReason:)();
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit31MutedTalkerBannerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  MutedTalkerBannerViewController.init(nibName:bundle:)();
}

- (NSString)requestIdentifier
{
  v2 = MutedTalkerBannerViewController.requestIdentifier.getter();
  if (v3)
  {
    v4 = MEMORY[0x1BFB209B0](v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIViewController)viewController
{
  v2 = MutedTalkerBannerViewController.viewController.getter();

  return v2;
}

- (NSString)requesterIdentifier
{
  MutedTalkerBannerViewController.requesterIdentifier.getter();
  v2 = MEMORY[0x1BFB209B0](0xD000000000000037);

  return v2;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v9 = MutedTalkerBannerViewController.preferredContentSize(withPresentationSize:containerSize:)(__PAIR128__(*&height, *&width), __PAIR128__(v8, v7));

  v10 = v9.width;
  v11 = v9.height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)bannerContentOutsets
{
  selfCopy = self;
  MutedTalkerBannerViewController.bannerContentOutsets.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

@end