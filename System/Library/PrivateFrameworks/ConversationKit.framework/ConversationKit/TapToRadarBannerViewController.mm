@interface TapToRadarBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (UIViewController)viewController;
- (_TtC15ConversationKit30TapToRadarBannerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleTap:(id)tap;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)viewDidLoad;
@end

@implementation TapToRadarBannerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  TapToRadarBannerViewController.viewDidLoad()();
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  TapToRadarBannerViewController.handleTap(_:)(selfCopy);
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  swift_unknownObjectRetain();
  selfCopy = self;
  TapToRadarBannerViewController.presentableWillAppear(asBanner:)();
  swift_unknownObjectRelease();
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  swift_unknownObjectRetain();
  reasonCopy = reason;
  selfCopy = self;
  TapToRadarBannerViewController.presentableWillDisappear(asBanner:withReason:)();
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit30TapToRadarBannerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
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
  selfCopy = self;
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

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v9 = TapToRadarBannerViewController.preferredContentSize(withPresentationSize:containerSize:)(__PAIR128__(*&height, *&width), __PAIR128__(v8, v7));

  v10 = v9.width;
  v11 = v9.height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)bannerContentOutsets
{
  selfCopy = self;
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