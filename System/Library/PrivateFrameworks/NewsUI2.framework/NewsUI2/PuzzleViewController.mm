@interface PuzzleViewController
- (_TtC7NewsUI220PuzzleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)modalHostViewDidAppear;
- (void)modalHostViewDidDisappear;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PuzzleViewController

- (_TtC7NewsUI220PuzzleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2199A1FFC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2199A2E5C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2199A3DD4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_2199A4584(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_2199A4CC4(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2199A571C();
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(PuzzleViewController *)&v5 viewSafeAreaInsetsDidChange];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2199A5960(a3);
}

- (void)modalHostViewDidAppear
{
  v2 = self;
  sub_2199A8218(0, 2);
}

- (void)modalHostViewDidDisappear
{
  v3 = self;
  v2 = [(PuzzleViewController *)v3 presentedViewController];
  if (v2)
  {
  }

  else
  {
    sub_2199A8218(1, 2);
    sub_2199A639C();
  }
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2199AE9F4();
}

@end