@interface WidgetGalleryViewController
- (_TtC14CarPlayAssetUI27WidgetGalleryViewController)initWithCoder:(id)a3;
- (_TtC14CarPlayAssetUI27WidgetGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation WidgetGalleryViewController

- (_TtC14CarPlayAssetUI27WidgetGalleryViewController)initWithCoder:(id)a3
{
  result = sub_242F05C60();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for WidgetGalleryViewController();
  v2 = v4.receiver;
  [(WidgetGalleryViewController *)&v4 viewDidLoad];
  v3 = *&v2[OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_addWidgetSheetViewController];
  [v2 bs:v3 addChildViewController:{v4.receiver, v4.super_class}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_242E3522C(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_242E35398();
}

- (_TtC14CarPlayAssetUI27WidgetGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end