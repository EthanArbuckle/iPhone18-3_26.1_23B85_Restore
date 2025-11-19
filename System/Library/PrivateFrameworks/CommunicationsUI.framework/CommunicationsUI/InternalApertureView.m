@interface InternalApertureView
- (_TtC16CommunicationsUI20InternalApertureView)initWithCoder:(id)a3;
@end

@implementation InternalApertureView

- (_TtC16CommunicationsUI20InternalApertureView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI20InternalApertureView_systemApertureLayoutGuide;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v5 = OBJC_IVAR____TtC16CommunicationsUI20InternalApertureView_systemApertureFullContentLayoutGuide;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

@end