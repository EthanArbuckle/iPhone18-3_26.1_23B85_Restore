@interface TextSizeControlViewController
- (CGSize)preferredContentSize;
- (_TtC12NewsArticles29TextSizeControlViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TextSizeControlViewController

- (_TtC12NewsArticles29TextSizeControlViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7AF86C0();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(TextSizeControlViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_1D7AF9284();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
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