@interface WidgetContainerViewController
- (BOOL)showsSquareCorners;
- (CGRect)visibleBounds;
- (_TtC14CarPlayAssetUI29WidgetContainerViewController)initWithCoder:(id)coder;
- (_TtC14CarPlayAssetUI29WidgetContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)continuousCornerRadius;
- (id)sourceView;
- (int64_t)presentationMode;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setPresentationMode:(int64_t)mode;
- (void)setShowsSquareCorners:(BOOL)corners;
- (void)viewDidLoad;
@end

@implementation WidgetContainerViewController

- (_TtC14CarPlayAssetUI29WidgetContainerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners) = 0;
  result = sub_242F05C60();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_242E31588();
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = (&self->super.super.super.isa + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo);
  swift_beginAccess();
  *v11 = v10;
  v11[1] = v9;
  v11[2] = v8;
  v11[3] = v7;
}

- (id)sourceView
{
  selfCopy = self;
  result = [(WidgetContainerViewController *)selfCopy view];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGRect)visibleBounds
{
  swift_beginAccess();
  BSRectWithSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)continuousCornerRadius
{
  v2 = (self + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo);
  swift_beginAccess();
  return v2[3];
}

- (BOOL)showsSquareCorners
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShowsSquareCorners:(BOOL)corners
{
  v5 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = corners;
}

- (int64_t)presentationMode
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setPresentationMode:(int64_t)mode
{
  v5 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = mode;
  v6 = 3;
  if (mode != 1)
  {
    v6 = 1;
  }

  if (mode)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  [*(&self->super.super.super.isa + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController) setPresentationMode_];
}

- (_TtC14CarPlayAssetUI29WidgetContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end