@interface ControlDragWindow
- (_TtC15ControlCenterUI17ControlDragWindow)initWithCoder:(id)coder;
- (_TtC15ControlCenterUI17ControlDragWindow)initWithFrame:(CGRect)frame;
- (void)beginTrackingPlatterView:(id)view;
- (void)stopTrackingPlatterView:(id)view;
@end

@implementation ControlDragWindow

- (_TtC15ControlCenterUI17ControlDragWindow)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews;
  *(&self->super.super.super.super.isa + v3) = [objc_opt_self() weakObjectsHashTable];
  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

- (void)beginTrackingPlatterView:(id)view
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews);
  viewCopy = view;
  selfCopy = self;
  [v4 addObject_];
  rootViewController = [(ControlDragWindow *)selfCopy rootViewController];
  view = [rootViewController view];

  [view addSubview_];
  [(ControlDragWindow *)selfCopy setHidden:0];
}

- (void)stopTrackingPlatterView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  [viewCopy removeFromSuperview];
  v5 = OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews;
  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews) removeObject_];
  -[ControlDragWindow setHidden:](selfCopy, sel_setHidden_, [*(&selfCopy->super.super.super.super.isa + v5) count] == 0);
}

- (_TtC15ControlCenterUI17ControlDragWindow)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end