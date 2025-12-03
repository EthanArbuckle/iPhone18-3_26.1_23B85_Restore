@interface PuzzleViewController
- (_TtC7NewsUI220PuzzleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)modalHostViewDidAppear;
- (void)modalHostViewDidDisappear;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PuzzleViewController

- (_TtC7NewsUI220PuzzleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2199A1FFC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2199A2E5C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2199A3DD4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2199A4584(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2199A4CC4(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2199A571C();
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(PuzzleViewController *)&v5 viewSafeAreaInsetsDidChange];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2199A5960(change);
}

- (void)modalHostViewDidAppear
{
  selfCopy = self;
  sub_2199A8218(0, 2);
}

- (void)modalHostViewDidDisappear
{
  selfCopy = self;
  presentedViewController = [(PuzzleViewController *)selfCopy presentedViewController];
  if (presentedViewController)
  {
  }

  else
  {
    sub_2199A8218(1, 2);
    sub_2199A639C();
  }
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_2199AE9F4();
}

@end