@interface PosterEditingViewController
- (_TtC14ContactsUICore27PosterEditingViewController)initWithCoder:(id)a3;
- (_TtC14ContactsUICore27PosterEditingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4;
- (void)editingViewControllerDidFinishShowingContent:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PosterEditingViewController

- (_TtC14ContactsUICore27PosterEditingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_viewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_contact) = 0;
  v3 = self + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 0;
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1A33F22F0();
}

- (_TtC14ContactsUICore27PosterEditingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A33F4B08(a4);
}

- (void)editingViewControllerDidFinishShowingContent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A33F4E3C();
}

@end