@interface ArticleSharingViewController
- (NAArticleFooterDelegate)footerDelegate;
- (_TtC12NewsArticles28ArticleSharingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)scrollViewController:(id)a3 didApplyDocumentStyle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ArticleSharingViewController

- (NAArticleFooterDelegate)footerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC12NewsArticles28ArticleSharingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7D0B014();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  v5 = a3;
  [(ArticleSharingViewController *)&v9 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;

    sub_1D7CCEFA8(*&v4[OBJC_IVAR____TtC12NewsArticles28ArticleSharingViewController_shareButton]);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D7D0B2F0();
}

- (void)scrollViewController:(id)a3 didApplyDocumentStyle:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1D7D0B5F0(a4);

  swift_unknownObjectRelease();
}

@end