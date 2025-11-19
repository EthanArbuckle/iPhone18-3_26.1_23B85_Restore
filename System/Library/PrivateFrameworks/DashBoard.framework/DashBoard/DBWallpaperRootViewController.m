@interface DBWallpaperRootViewController
- (CRSUIWallpaper)currentWallpaper;
- (_TtC9DashBoard29DBWallpaperRootViewController)initWithCoder:(id)a3;
- (_TtC9DashBoard29DBWallpaperRootViewController)initWithEnvironment:(id)a3;
- (_TtC9DashBoard29DBWallpaperRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)interfaceStyleOverride;
- (void)_homeScreenStyleChanged;
- (void)_userInterfaceStyleChanged;
- (void)invalidate;
- (void)setWallpaper:(id)a3 duration:(double)a4 delay:(double)a5 updates:(id)a6;
- (void)viewDidLoad;
@end

@implementation DBWallpaperRootViewController

- (_TtC9DashBoard29DBWallpaperRootViewController)initWithEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_248370474();
  swift_unknownObjectRelease();
  return v3;
}

- (_TtC9DashBoard29DBWallpaperRootViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperScene) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (CRSUIWallpaper)currentWallpaper
{
  v2 = self;
  v3 = DBWallpaperRootViewController.currentWallpaper.getter();

  return v3;
}

- (int64_t)interfaceStyleOverride
{
  result = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController);
  if (result)
  {
    return [result interfaceStyleOverride];
  }

  return result;
}

- (void)setWallpaper:(id)a3 duration:(double)a4 delay:(double)a5 updates:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  swift_unknownObjectRetain();
  v11 = self;
  sub_2483705DC(a3, v11, v10, a4, a5);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (_TtC9DashBoard29DBWallpaperRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  DBWallpaperRootViewController.viewDidLoad()();
}

- (void)invalidate
{
  v2 = self;
  DBWallpaperRootViewController.invalidate()();
}

- (void)_userInterfaceStyleChanged
{
  v2 = self;
  sub_24836FFE8();
}

- (void)_homeScreenStyleChanged
{
  v4 = self;
  v2 = [(DBWallpaperRootViewController *)v4 traitCollection];
  v3 = [v2 homeScreenStyleWantsDimmedWallpaper];

  [*(&v4->super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController) setIsDimmed_];
  [*(&v4->super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController) setIsDimmed_];
}

@end