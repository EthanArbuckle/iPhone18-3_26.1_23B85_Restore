@interface ControlContainerView
- (_TtC16MagnifierSupport20ControlContainerView)initWithCoder:(id)a3;
- (void)deviceOrientationDidChange:(id)a3;
@end

@implementation ControlContainerView

- (_TtC16MagnifierSupport20ControlContainerView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
  *(&self->super.super.super.isa + v4) = sub_257BE98E4(MEMORY[0x277D84F90]);
  v5 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow;
  v6 = type metadata accessor for UnifiedButtonRow();
  v7 = objc_allocWithZone(v6);
  *(&self->super.super.super.isa + v5) = sub_257E8A7CC(0);
  v8 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow;
  v9 = objc_allocWithZone(v6);
  *(&self->super.super.super.isa + v8) = sub_257E8A7CC(1);
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (void)deviceOrientationDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257C80D54();
}

@end