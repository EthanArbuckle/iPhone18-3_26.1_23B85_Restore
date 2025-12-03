@interface TemplatedString
- (_TtC9MomentsUI15TemplatedString)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TemplatedString

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9MomentsUI15TemplatedString_template);
  v5 = *&self->template[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
  coderCopy = coder;
  selfCopy = self;
  v7 = MEMORY[0x21CE91FC0](v4, v5);
  v8 = MEMORY[0x21CE91FC0](0x6574616C706D6574, 0xE800000000000000);
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC9MomentsUI15TemplatedString)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end