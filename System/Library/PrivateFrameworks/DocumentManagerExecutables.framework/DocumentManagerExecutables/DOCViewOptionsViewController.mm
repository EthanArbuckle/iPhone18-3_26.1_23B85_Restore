@interface DOCViewOptionsViewController
- (_TtC26DocumentManagerExecutables28DOCViewOptionsViewController)init;
- (_TtC26DocumentManagerExecutables28DOCViewOptionsViewController)initWithRootViewController:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DOCViewOptionsViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DOCViewOptionsViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  DOCViewOptionsViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v12.receiver;
  [(DOCViewOptionsViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:a3];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewOptionsHostingController;
  [*&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewOptionsHostingController] preferredContentSize];
  v7 = v6;
  v8 = [v4 navigationBar];
  [v8 intrinsicContentSize];
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

- (_TtC26DocumentManagerExecutables28DOCViewOptionsViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end