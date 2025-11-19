@interface ControlDragWindow
- (_TtC15ControlCenterUI17ControlDragWindow)initWithCoder:(id)a3;
- (_TtC15ControlCenterUI17ControlDragWindow)initWithFrame:(CGRect)a3;
- (void)beginTrackingPlatterView:(id)a3;
- (void)stopTrackingPlatterView:(id)a3;
@end

@implementation ControlDragWindow

- (_TtC15ControlCenterUI17ControlDragWindow)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews;
  *(&self->super.super.super.super.isa + v3) = [objc_opt_self() weakObjectsHashTable];
  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

- (void)beginTrackingPlatterView:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews);
  v5 = a3;
  v8 = self;
  [v4 addObject_];
  v6 = [(ControlDragWindow *)v8 rootViewController];
  v7 = [v6 view];

  [v7 addSubview_];
  [(ControlDragWindow *)v8 setHidden:0];
}

- (void)stopTrackingPlatterView:(id)a3
{
  v4 = a3;
  v6 = self;
  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews;
  [*(&v6->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews) removeObject_];
  -[ControlDragWindow setHidden:](v6, sel_setHidden_, [*(&v6->super.super.super.super.isa + v5) count] == 0);
}

- (_TtC15ControlCenterUI17ControlDragWindow)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end