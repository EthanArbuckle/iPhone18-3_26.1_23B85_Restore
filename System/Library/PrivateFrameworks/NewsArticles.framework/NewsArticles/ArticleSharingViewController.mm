@interface ArticleSharingViewController
- (NAArticleFooterDelegate)footerDelegate;
- (_TtC12NewsArticles28ArticleSharingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewController:(id)controller didApplyDocumentStyle:(id)style;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ArticleSharingViewController

- (NAArticleFooterDelegate)footerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC12NewsArticles28ArticleSharingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7D0B014();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  changeCopy = change;
  [(ArticleSharingViewController *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
  view = [v4 view];
  if (view)
  {
    v8 = view;

    sub_1D7CCEFA8(*&v4[OBJC_IVAR____TtC12NewsArticles28ArticleSharingViewController_shareButton]);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D7D0B2F0();
}

- (void)scrollViewController:(id)controller didApplyDocumentStyle:(id)style
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D7D0B5F0(style);

  swift_unknownObjectRelease();
}

@end