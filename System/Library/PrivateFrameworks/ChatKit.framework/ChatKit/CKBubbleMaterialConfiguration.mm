@interface CKBubbleMaterialConfiguration
+ (id)colorConfigurationWithCGColor:(CGColor *)a3;
- (_TtC7ChatKit29CKBubbleMaterialConfiguration)init;
- (id)resolvedWithTraitCollection:(id)a3 onBackgroundWithAverageLuminance:(double)a4;
@end

@implementation CKBubbleMaterialConfiguration

+ (id)colorConfigurationWithCGColor:(CGColor *)a3
{
  v4 = sub_190D56BB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  sub_190D56B20();
  v9 = type metadata accessor for CKBubbleMaterialConfiguration();
  v10 = objc_allocWithZone(v9);
  (*(v5 + 16))(v10 + OBJC_IVAR____TtC7ChatKit29CKBubbleMaterialConfiguration_wrapped, v7, v4);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)resolvedWithTraitCollection:(id)a3 onBackgroundWithAverageLuminance:(double)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_190CF2524();

  return v7;
}

- (_TtC7ChatKit29CKBubbleMaterialConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end