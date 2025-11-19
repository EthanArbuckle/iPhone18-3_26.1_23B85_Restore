@interface LegacyOfflineStatusBannerViewController
- (_TtC7NewsUI239LegacyOfflineStatusBannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)alertForSetUpOfflineMode;
- (void)forceReloadButtonTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation LegacyOfflineStatusBannerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_218A161D0();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_218A16498();
}

- (void)forceReloadButtonTapped
{
  v2 = self;
  sub_218A1675C();
}

- (void)alertForSetUpOfflineMode
{
  v2 = self;
  sub_218A16B24();
}

- (_TtC7NewsUI239LegacyOfflineStatusBannerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end