@interface ControlContainerViewController
- (CGRect)visibleBounds;
- (SBIconImageInfo)iconImageInfo;
- (_TtC23ControlCenterUIServices30ControlContainerViewController)initWithCoder:(id)coder;
- (_TtC23ControlCenterUIServices30ControlContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)sourceView;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)viewDidLoad;
@end

@implementation ControlContainerViewController

- (_TtC23ControlCenterUIServices30ControlContainerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_controlHostViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_showsSquareCorners) = 0;
  result = sub_2442B4BE8();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ControlContainerViewController();
  [(ControlContainerViewController *)&v2 viewDidLoad];
}

- (SBIconImageInfo)iconImageInfo
{
  v3 = *(&self->size.width + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_iconImageInfo);
  v4 = *(&self->size.height + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_iconImageInfo);
  v5 = *(&self->scale + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_iconImageInfo);
  v6 = *(&self->continuousCornerRadius + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_iconImageInfo);
  return self;
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = (self + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_iconImageInfo);
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v8[3] = v6;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_controlHostViewController);
  selfCopy = self;
  [v9 setCompactContinuousCornerRadius_];
  view = [(ControlContainerViewController *)selfCopy view];
  if (view)
  {
    v12 = view;
    [view _setContinuousCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

- (id)sourceView
{
  selfCopy = self;
  result = [(ControlContainerViewController *)selfCopy view];
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
  MEMORY[0x282143A68](*(&self->super.super.super.isa + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_iconImageInfo), *(&self->super.super._responderFlags + OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_iconImageInfo));
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC23ControlCenterUIServices30ControlContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end