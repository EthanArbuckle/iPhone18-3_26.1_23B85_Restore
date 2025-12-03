@interface ButtonRowBase
- (_TtC16MagnifierSupport13ButtonRowBase)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport13ButtonRowBase)initWithFrame:(CGRect)frame;
@end

@implementation ButtonRowBase

- (_TtC16MagnifierSupport13ButtonRowBase)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons) = MEMORY[0x277D84F90];
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (_TtC16MagnifierSupport13ButtonRowBase)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end