@interface ModalArticleViewerViewController
- (_TtC12NewsArticles32ModalArticleViewerViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles32ModalArticleViewerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)brandbarCtaButtonTapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ModalArticleViewerViewController

- (_TtC12NewsArticles32ModalArticleViewerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandbar) = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)brandbarCtaButtonTapped
{
  v2 = self;
  sub_1D7A93634();
}

- (_TtC12NewsArticles32ModalArticleViewerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7ADA70C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1D7ADAD44(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D7ADAF08();
}

@end