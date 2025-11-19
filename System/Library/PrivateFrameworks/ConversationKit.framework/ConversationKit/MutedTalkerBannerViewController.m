@interface MutedTalkerBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (CNKMutedTalkerBannerViewControllerDelegate)delegate;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (UIViewController)viewController;
- (_TtC15ConversationKit31MutedTalkerBannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissBanner;
- (void)handleTap:(id)a3;
- (void)playBannerSound;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)setDelegate:(id)a3;
- (void)showBanner;
- (void)updatePillViewWithIsMuted:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MutedTalkerBannerViewController

- (CNKMutedTalkerBannerViewControllerDelegate)delegate
{
  v2 = MutedTalkerBannerViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  MutedTalkerBannerViewController.delegate.setter();
}

- (void)viewDidLoad
{
  v2 = self;
  MutedTalkerBannerViewController.viewDidLoad()();
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  MutedTalkerBannerViewController.handleTap(_:)(v5);
}

- (void)updatePillViewWithIsMuted:(BOOL)a3
{
  v4 = self;
  MutedTalkerBannerViewController.updatePillView(isMuted:)(a3);
}

- (void)playBannerSound
{
  v2 = self;
  MutedTalkerBannerViewController.playBannerSound()();
}

- (void)showBanner
{
  v2 = self;
  MutedTalkerBannerViewController.showBanner()();
}

- (void)dismissBanner
{
  v2 = self;
  MutedTalkerBannerViewController.dismissBanner()();
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  MutedTalkerBannerViewController.presentableWillAppear(asBanner:)();
  swift_unknownObjectRelease();
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  MutedTalkerBannerViewController.presentableWillDisappear(asBanner:withReason:)();
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit31MutedTalkerBannerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
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

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  height = a3.height;
  width = a3.width;
  v6 = self;
  v9 = MutedTalkerBannerViewController.preferredContentSize(withPresentationSize:containerSize:)(__PAIR128__(*&height, *&width), __PAIR128__(v8, v7));

  v10 = v9.width;
  v11 = v9.height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)bannerContentOutsets
{
  v2 = self;
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