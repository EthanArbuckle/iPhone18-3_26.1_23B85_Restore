@interface DOCViewOptionsViewController
- (_TtC26DocumentManagerExecutables28DOCViewOptionsViewController)init;
- (_TtC26DocumentManagerExecutables28DOCViewOptionsViewController)initWithRootViewController:(id)controller;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DOCViewOptionsViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DOCViewOptionsViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCViewOptionsViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v12.receiver;
  [(DOCViewOptionsViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:container];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewOptionsHostingController;
  [*&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewOptionsHostingController] preferredContentSize];
  v7 = v6;
  navigationBar = [v4 navigationBar];
  [navigationBar intrinsicContentSize];
  v10 = v9;

  [*&v4[v5] preferredContentSize];
  [v4 setPreferredContentSize_];
  swift_unknownObjectRelease();
}

- (_TtC26DocumentManagerExecutables28DOCViewOptionsViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables28DOCViewOptionsViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end