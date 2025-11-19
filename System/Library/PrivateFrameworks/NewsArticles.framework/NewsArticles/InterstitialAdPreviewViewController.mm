@interface InterstitialAdPreviewViewController
- (_TtC12NewsArticles35InterstitialAdPreviewViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles35InterstitialAdPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation InterstitialAdPreviewViewController

- (_TtC12NewsArticles35InterstitialAdPreviewViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_1D7D2A58C();
  v5 = OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_eventManager;
  sub_1D7A3ACC0();
  swift_allocObject();
  *(&self->super.super.super.isa + v5) = sub_1D7D28C9C();
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles35InterstitialAdPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7BF0338();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(InterstitialAdPreviewViewController *)&v5 viewDidAppear:v3];
  sub_1D7D28C6C();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(InterstitialAdPreviewViewController *)&v3 viewDidLayoutSubviews];
  sub_1D7D2A55C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D7BF09C0(a3);
}

@end