@interface SystemBannerHostViewController
- (BNPresentableContext)presentableContext;
- (BOOL)isDraggingDismissalEnabled;
- (BOOL)isDraggingInteractionEnabled;
- (BOOL)isTouchOutsideDismissalEnabled;
- (BSAnimationSettings)bannerSizeTransitionAnimationSettings;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
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
- (_TtC15ConversationKit30SystemBannerHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)maximumLayoutMode;
- (int64_t)preferredLayoutMode;
- (unint64_t)presentationBehaviors;
- (void)callStatusChanged:(id)changed;
- (void)didMoveToParentViewController:(id)controller;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)requestPreferredLayoutMode;
- (void)setCanRequestAlertingAssertion:(BOOL)assertion;
- (void)setPresentableContext:(id)context;
- (void)setRequesterIdentifier:(id)identifier;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)setRequesterIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SystemBannerHostViewController.requesterIdentifier.setter(v4, v6);
}

- (BNPresentableContext)presentableContext
{
  v2 = SystemBannerHostViewController.presentableContext.getter();

  return v2;
}

- (void)setPresentableContext:(id)context
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SystemBannerHostViewController.presentableContext.setter();
}

- (void)callStatusChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  SystemBannerHostViewController.callStatusChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)viewDidLoad
{
  selfCopy = self;
  SystemBannerHostViewController.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  SystemBannerHostViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  SystemBannerHostViewController.viewWillLayoutSubviews()();
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  SystemBannerHostViewController.didMove(toParent:)(controller);
}

- (void)requestPreferredLayoutMode
{
  selfCopy = self;
  SystemBannerHostViewController.requestPreferredLayoutMode()();
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  swift_unknownObjectRetain();
  reasonCopy = reason;
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  v3 = SystemBannerHostViewController.isTouchOutsideDismissalEnabled.getter();

  return v3;
}

- (BOOL)isDraggingDismissalEnabled
{
  selfCopy = self;
  v3 = SystemBannerHostViewController.eligibleForDismissal.getter();

  return v3 & 1;
}

- (BOOL)isDraggingInteractionEnabled
{
  selfCopy = self;
  v3 = SystemBannerHostViewController.isDraggingInteractionEnabled.getter();

  return v3 & 1;
}

- (BSAnimationSettings)bannerSizeTransitionAnimationSettings
{
  selfCopy = self;
  v3 = SystemBannerHostViewController.bannerSizeTransitionAnimationSettings.getter();

  return v3;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v9 = SystemBannerHostViewController.preferredContentSize(withPresentationSize:containerSize:)(__PAIR128__(*&height, *&width), __PAIR128__(v8, v7));

  v10 = v9.width;
  v11 = v9.height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (SBUISystemApertureElement)systemApertureElementViewController
{
  selfCopy = self;
  SystemBannerHostViewController.systemApertureElementViewController.getter();

  return selfCopy;
}

- (void)setCanRequestAlertingAssertion:(BOOL)assertion
{
  selfCopy = self;
  SystemBannerHostViewController.canRequestAlertingAssertion.setter(assertion);
}

- (int64_t)preferredLayoutMode
{
  selfCopy = self;
  SystemBannerHostViewController.preferredLayoutMode.getter();
  v4 = v3;

  return v4;
}

- (int64_t)maximumLayoutMode
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  SystemBannerHostViewController.backgroundActivitiesToSuppress.getter();

  type metadata accessor for STBackgroundActivityIdentifier(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type STBackgroundActivityIdentifier and conformance STBackgroundActivityIdentifier, type metadata accessor for STBackgroundActivityIdentifier);
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (unint64_t)presentationBehaviors
{
  selfCopy = self;
  v3 = SystemBannerHostViewController.presentationBehaviors.getter();

  return v3;
}

- (UIColor)keyColor
{
  v2 = SystemBannerHostViewController.keyColor.getter();

  return v2;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SystemBannerHostViewController.viewWillLayoutSubviews(with:)();
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit30SystemBannerHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  SystemBannerHostViewController.init(nibName:bundle:)();
}

@end