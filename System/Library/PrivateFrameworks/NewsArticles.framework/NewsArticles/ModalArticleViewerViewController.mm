@interface ModalArticleViewerViewController
- (_TtC12NewsArticles32ModalArticleViewerViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles32ModalArticleViewerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)brandbarCtaButtonTapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation ModalArticleViewerViewController

- (_TtC12NewsArticles32ModalArticleViewerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandbar) = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)brandbarCtaButtonTapped
{
  selfCopy = self;
  sub_1D7A93634();
}

- (_TtC12NewsArticles32ModalArticleViewerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7ADA70C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D7ADAD44(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D7ADAF08();
}

@end