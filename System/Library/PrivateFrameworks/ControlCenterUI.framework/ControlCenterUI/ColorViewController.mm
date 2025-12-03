@interface ColorViewController
- (CGRect)visibleBounds;
- (_TtC15ControlCenterUI19ColorViewController)initWithCoder:(id)coder;
- (_TtC15ControlCenterUI19ColorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)sourceView;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)viewDidLoad;
@end

@implementation ColorViewController

- (_TtC15ControlCenterUI19ColorViewController)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_iconImageInfo);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (self + OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds);
  v4->i64[0] = 0;
  v4->i64[1] = 0;
  v4[1] = vdupq_n_s64(0x4049000000000000uLL);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_continuousCornerRadius) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_showsSquareCorners) = 1;
  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ColorViewController();
  v2 = v5.receiver;
  [(ColorViewController *)&v5 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_iconImageInfo);
  *v7 = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
}

- (id)sourceView
{
  selfCopy = self;
  result = [(ColorViewController *)selfCopy view];
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
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds);
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds);
  v4 = *(&self->super._overrideTransitioningDelegate + OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds);
  v5 = *(&self->super._view + OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC15ControlCenterUI19ColorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end