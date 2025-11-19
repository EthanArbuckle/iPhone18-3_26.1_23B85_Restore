@interface TapToRadarBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (UIViewController)viewController;
- (_TtC15ConversationKit30TapToRadarBannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleTap:(id)a3;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)viewDidLoad;
@end

@implementation TapToRadarBannerViewController

- (void)viewDidLoad
{
  v2 = self;
  TapToRadarBannerViewController.viewDidLoad()();
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  TapToRadarBannerViewController.handleTap(_:)(v5);
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  TapToRadarBannerViewController.presentableWillAppear(asBanner:)();
  swift_unknownObjectRelease();
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  TapToRadarBannerViewController.presentableWillDisappear(asBanner:withReason:)();
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit30TapToRadarBannerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  TapToRadarBannerViewController.init(nibName:bundle:)();
}

- (NSString)requestIdentifier
{
  v2 = TapToRadarBannerViewController.requestIdentifier.getter();
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
  v2 = TapToRadarBannerViewController.viewController.getter();

  return v2;
}

- (NSString)requesterIdentifier
{
  v2 = self;
  v3 = TapToRadarBannerViewController.requesterIdentifier.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x1BFB209B0](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  height = a3.height;
  width = a3.width;
  v6 = self;
  v9 = TapToRadarBannerViewController.preferredContentSize(withPresentationSize:containerSize:)(__PAIR128__(*&height, *&width), __PAIR128__(v8, v7));

  v10 = v9.width;
  v11 = v9.height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)bannerContentOutsets
{
  v2 = self;
  TapToRadarBannerViewController.bannerContentOutsets.getter();
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