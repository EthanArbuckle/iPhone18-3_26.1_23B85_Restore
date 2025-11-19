@interface DOCFakeFPItemDecoration
- (NSString)bundleIdentifier;
- (NSString)imageType;
- (_TtC26DocumentManagerExecutablesP33_B700B1D3F74C3145CA523EE0550A1F4223DOCFakeFPItemDecoration)init;
@end

@implementation DOCFakeFPItemDecoration

- (NSString)bundleIdentifier
{
  v2 = MEMORY[0x24C1FAD20](0xD000000000000016, 0x8000000249BF4190);

  return v2;
}

- (NSString)imageType
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_B700B1D3F74C3145CA523EE0550A1F4223DOCFakeFPItemDecoration_ut);
  v3 = *(&self->super._decorationIdentifier + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_B700B1D3F74C3145CA523EE0550A1F4223DOCFakeFPItemDecoration_ut);

  v4 = MEMORY[0x24C1FAD20](v2, v3);

  return v4;
}

- (_TtC26DocumentManagerExecutablesP33_B700B1D3F74C3145CA523EE0550A1F4223DOCFakeFPItemDecoration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end