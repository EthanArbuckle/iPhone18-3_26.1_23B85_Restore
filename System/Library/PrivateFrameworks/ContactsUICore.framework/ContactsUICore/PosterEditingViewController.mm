@interface PosterEditingViewController
- (_TtC14ContactsUICore27PosterEditingViewController)initWithCoder:(id)coder;
- (_TtC14ContactsUICore27PosterEditingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration;
- (void)editingViewControllerDidFinishShowingContent:(id)content;
- (void)viewWillLayoutSubviews;
@end

@implementation PosterEditingViewController

- (_TtC14ContactsUICore27PosterEditingViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1A33F22F0();
}

- (_TtC14ContactsUICore27PosterEditingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  selfCopy = self;
  sub_1A33F4B08(configuration);
}

- (void)editingViewControllerDidFinishShowingContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_1A33F4E3C();
}

@end