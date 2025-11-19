@interface TextSizeControlViewController
- (CGSize)preferredContentSize;
- (_TtC12NewsArticles29TextSizeControlViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TextSizeControlViewController

- (_TtC12NewsArticles29TextSizeControlViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7AF86C0();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(TextSizeControlViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_1D7AF9284();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D7AF8FA8();
}

- (CGSize)preferredContentSize
{
  v2 = 200.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end