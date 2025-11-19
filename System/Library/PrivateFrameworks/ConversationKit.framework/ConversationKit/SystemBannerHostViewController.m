@interface SystemBannerHostViewController
- (BNPresentableContext)presentableContext;
- (BOOL)isDraggingDismissalEnabled;
- (BOOL)isDraggingInteractionEnabled;
- (BOOL)isTouchOutsideDismissalEnabled;
- (BSAnimationSettings)bannerSizeTransitionAnimationSettings;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (NSSet)backgroundActivitiesToSuppress;
- (NSString)associatedAppBundleIdentifier;
- (NSString)elementIdentifier;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (SBUISystemApertureAccessoryView)detachedMinimalView;
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (SBUISystemApertureElement)systemApertureElementViewController;
- (UIColor)keyColor;
- (UIEdgeInsets)bannerContentOutsets;
- (UIViewController)viewController;
- (_TtC15ConversationKit30SystemBannerHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)maximumLayoutMode;
- (int64_t)preferredLayoutMode;
- (unint64_t)presentationBehaviors;
- (void)callStatusChanged:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)requestPreferredLayoutMode;
- (void)setCanRequestAlertingAssertion:(BOOL)a3;
- (void)setPresentableContext:(id)a3;
- (void)setRequesterIdentifier:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SystemBannerHostViewController

- (NSString)requesterIdentifier
{
  v2 = SystemBannerHostViewController.requesterIdentifier.getter();
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

- (void)setRequesterIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  SystemBannerHostViewController.requesterIdentifier.setter(v4, v6);
}

- (BNPresentableContext)presentableContext
{
  v2 = SystemBannerHostViewController.presentableContext.getter();

  return v2;
}

- (void)setPresentableContext:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  SystemBannerHostViewController.presentableContext.setter();
}

- (void)callStatusChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  SystemBannerHostViewController.callStatusChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)viewDidLoad
{
  v2 = self;
  SystemBannerHostViewController.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  SystemBannerHostViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  SystemBannerHostViewController.viewWillLayoutSubviews()();
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  SystemBannerHostViewController.didMove(toParent:)(a3);
}

- (void)requestPreferredLayoutMode
{
  v2 = self;
  SystemBannerHostViewController.requestPreferredLayoutMode()();
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  SystemBannerHostViewController.presentableDidDisappear(asBanner:withReason:)();
  swift_unknownObjectRelease();
}

- (UIViewController)viewController
{
  SystemBannerHostViewController.viewController.getter();

  return self;
}

- (NSString)requestIdentifier
{
  v2 = SystemBannerHostViewController.requestIdentifier.getter();
  v3 = MEMORY[0x1BFB209B0](v2);

  return v3;
}

- (UIEdgeInsets)bannerContentOutsets
{
  v2 = self;
  v3 = SystemBannerHostViewController.bannerContentOutsets.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (BOOL)isTouchOutsideDismissalEnabled
{
  v2 = self;
  v3 = SystemBannerHostViewController.isTouchOutsideDismissalEnabled.getter();

  return v3;
}

- (BOOL)isDraggingDismissalEnabled
{
  v2 = self;
  v3 = SystemBannerHostViewController.eligibleForDismissal.getter();

  return v3 & 1;
}

- (BOOL)isDraggingInteractionEnabled
{
  v2 = self;
  v3 = SystemBannerHostViewController.isDraggingInteractionEnabled.getter();

  return v3 & 1;
}

- (BSAnimationSettings)bannerSizeTransitionAnimationSettings
{
  v2 = self;
  v3 = SystemBannerHostViewController.bannerSizeTransitionAnimationSettings.getter();

  return v3;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  height = a3.height;
  width = a3.width;
  v6 = self;
  v9 = SystemBannerHostViewController.preferredContentSize(withPresentationSize:containerSize:)(__PAIR128__(*&height, *&width), __PAIR128__(v8, v7));

  v10 = v9.width;
  v11 = v9.height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (SBUISystemApertureElement)systemApertureElementViewController
{
  v2 = self;
  SystemBannerHostViewController.systemApertureElementViewController.getter();

  return v2;
}

- (void)setCanRequestAlertingAssertion:(BOOL)a3
{
  v4 = self;
  SystemBannerHostViewController.canRequestAlertingAssertion.setter(a3);
}

- (int64_t)preferredLayoutMode
{
  v2 = self;
  SystemBannerHostViewController.preferredLayoutMode.getter();
  v4 = v3;

  return v4;
}

- (int64_t)maximumLayoutMode
{
  v2 = self;
  v3 = SystemBannerHostViewController.maximumLayoutMode.getter();

  return v3;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  v2 = SystemBannerHostViewController.leadingView.getter();

  return v2;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  v2 = SystemBannerHostViewController.trailingView.getter();

  return v2;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  v2 = SystemBannerHostViewController.minimalView.getter();

  return v2;
}

- (SBUISystemApertureAccessoryView)detachedMinimalView
{
  v2 = SystemBannerHostViewController.detachedMinimalView.getter();

  return v2;
}

- (NSString)elementIdentifier
{
  v2 = SystemBannerHostViewController.elementIdentifier.getter();

  return v2;
}

- (NSString)associatedAppBundleIdentifier
{
  v2 = self;
  SystemBannerHostViewController.associatedAppBundleIdentifier.getter();
  v4 = v3;
  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1BFB209B0](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSSet)backgroundActivitiesToSuppress
{
  v2 = self;
  SystemBannerHostViewController.backgroundActivitiesToSuppress.getter();

  type metadata accessor for STBackgroundActivityIdentifier(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type STBackgroundActivityIdentifier and conformance STBackgroundActivityIdentifier, type metadata accessor for STBackgroundActivityIdentifier);
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (unint64_t)presentationBehaviors
{
  v2 = self;
  v3 = SystemBannerHostViewController.presentationBehaviors.getter();

  return v3;
}

- (UIColor)keyColor
{
  v2 = SystemBannerHostViewController.keyColor.getter();

  return v2;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  SystemBannerHostViewController.viewWillLayoutSubviews(with:)();
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit30SystemBannerHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  SystemBannerHostViewController.init(nibName:bundle:)();
}

@end