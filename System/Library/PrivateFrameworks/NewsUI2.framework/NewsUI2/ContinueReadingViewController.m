@interface ContinueReadingViewController
- (_TtC7NewsUI229ContinueReadingViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI229ContinueReadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7NewsUI229ContinueReadingViewController)initWithRequest:(id)a3;
- (_TtC7NewsUI229ContinueReadingViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)messageViewControllerDidDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation ContinueReadingViewController

- (_TtC7NewsUI229ContinueReadingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_relativeTabBarController) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_218A56D00(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v4 = v11.receiver;
  [(ContinueReadingViewController *)&v11 viewDidDisappear:v3];
  v5 = __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler], *&v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler + 24]);
  v6 = *&v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 80];
  v9[4] = *&v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 64];
  v9[5] = v6;
  v9[6] = *&v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 96];
  v10 = v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 112];
  v7 = *&v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 16];
  v9[0] = *&v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content];
  v9[1] = v7;
  v8 = *&v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 48];
  v9[2] = *&v4[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 32];
  v9[3] = v8;
  __swift_project_boxed_opaque_existential_1((*v5 + 16), *(*v5 + 40));
  sub_219A737F4(v9, 2);
}

- (_TtC7NewsUI229ContinueReadingViewController)initWithRequest:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7NewsUI229ContinueReadingViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7NewsUI229ContinueReadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_218A57380(v6, v7);
}

- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_218A579C8(v6, v7);
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  sub_218A57B64();
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_218A57D14(v6, a4);
}

- (void)messageViewControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_218A5779C(v4);
}

@end