@interface ScreenSize
- (_TtC9MomentsUI10ScreenSize)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ScreenSize

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x60);
  coderCopy = coder;
  selfCopy = self;
  v7 = v5();
  v8 = MEMORY[0x21CE91FC0](0x6874646977, 0xE500000000000000);
  *&v9 = v7;
  [coderCopy encodeFloat:v8 forKey:v9];

  v10 = (*((*v4 & selfCopy->super.isa) + 0x78))();
  v11 = MEMORY[0x21CE91FC0](0x746867696568, 0xE600000000000000);
  *&v12 = v10;
  [coderCopy encodeFloat:v11 forKey:v12];
}

- (_TtC9MomentsUI10ScreenSize)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end