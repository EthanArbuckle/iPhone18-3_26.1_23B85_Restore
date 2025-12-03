@interface DBWallpaperRootViewController
- (CRSUIWallpaper)currentWallpaper;
- (_TtC9DashBoard29DBWallpaperRootViewController)initWithCoder:(id)coder;
- (_TtC9DashBoard29DBWallpaperRootViewController)initWithEnvironment:(id)environment;
- (_TtC9DashBoard29DBWallpaperRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)interfaceStyleOverride;
- (void)_homeScreenStyleChanged;
- (void)_userInterfaceStyleChanged;
- (void)invalidate;
- (void)setWallpaper:(id)wallpaper duration:(double)duration delay:(double)delay updates:(id)updates;
- (void)viewDidLoad;
@end

@implementation DBWallpaperRootViewController

- (_TtC9DashBoard29DBWallpaperRootViewController)initWithEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  v3 = sub_248370474();
  swift_unknownObjectRelease();
  return v3;
}

- (_TtC9DashBoard29DBWallpaperRootViewController)initWithCoder:(id)coder
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
  selfCopy = self;
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

- (void)setWallpaper:(id)wallpaper duration:(double)duration delay:(double)delay updates:(id)updates
{
  v10 = _Block_copy(updates);
  _Block_copy(v10);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2483705DC(wallpaper, selfCopy, v10, duration, delay);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (_TtC9DashBoard29DBWallpaperRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  DBWallpaperRootViewController.viewDidLoad()();
}

- (void)invalidate
{
  selfCopy = self;
  DBWallpaperRootViewController.invalidate()();
}

- (void)_userInterfaceStyleChanged
{
  selfCopy = self;
  sub_24836FFE8();
}

- (void)_homeScreenStyleChanged
{
  selfCopy = self;
  traitCollection = [(DBWallpaperRootViewController *)selfCopy traitCollection];
  homeScreenStyleWantsDimmedWallpaper = [traitCollection homeScreenStyleWantsDimmedWallpaper];

  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController) setIsDimmed_];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController) setIsDimmed_];
}

@end