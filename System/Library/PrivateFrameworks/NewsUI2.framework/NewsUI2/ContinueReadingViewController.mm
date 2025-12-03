@interface ContinueReadingViewController
- (_TtC7NewsUI229ContinueReadingViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI229ContinueReadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7NewsUI229ContinueReadingViewController)initWithRequest:(id)request;
- (_TtC7NewsUI229ContinueReadingViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didLoadDialogRequest:(id)request;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
- (void)messageViewControllerDidDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation ContinueReadingViewController

- (_TtC7NewsUI229ContinueReadingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_relativeTabBarController) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_218A56D00(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v4 = v11.receiver;
  [(ContinueReadingViewController *)&v11 viewDidDisappear:disappearCopy];
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

- (_TtC7NewsUI229ContinueReadingViewController)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7NewsUI229ContinueReadingViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7NewsUI229ContinueReadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  sub_218A57380(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller didLoadDialogRequest:(id)request
{
  controllerCopy = controller;
  requestCopy = request;
  selfCopy = self;
  sub_218A579C8(controllerCopy, requestCopy);
}

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  controllerCopy = controller;
  selfCopy = self;
  sub_218A57B64();
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_218A57D14(controllerCopy, error);
}

- (void)messageViewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_218A5779C(dismissCopy);
}

@end