@interface WidgetGalleryViewController
- (_TtC14CarPlayAssetUI27WidgetGalleryViewController)initWithCoder:(id)coder;
- (_TtC14CarPlayAssetUI27WidgetGalleryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation WidgetGalleryViewController

- (_TtC14CarPlayAssetUI27WidgetGalleryViewController)initWithCoder:(id)coder
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_242E3522C(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_242E35398();
}

- (_TtC14CarPlayAssetUI27WidgetGalleryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end