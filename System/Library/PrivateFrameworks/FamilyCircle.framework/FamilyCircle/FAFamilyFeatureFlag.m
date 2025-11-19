@interface FAFamilyFeatureFlag
+ (id)megadomeAdoption;
- (BOOL)isEnabled;
- (FAFamilyFeatureFlag)init;
- (FAFamilyFeatureFlag)initWithRawValue:(id)a3;
@end

@implementation FAFamilyFeatureFlag

+ (id)megadomeAdoption
{
  if (qword_1EB983000 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB983878;

  return v3;
}

- (FAFamilyFeatureFlag)initWithRawValue:(id)a3
{
  v4._countAndFlagsBits = sub_1B715E0A0();
  FamilyFeatureFlags.init(rawValue:)(v4);
  *(&self->super.isa + OBJC_IVAR___FAFamilyFeatureFlag_swiftVariant) = v7;
  v6.receiver = self;
  v6.super_class = FAFamilyFeatureFlag;
  return [(FAFamilyFeatureFlag *)&v6 init];
}

- (BOOL)isEnabled
{
  v2 = self;
  v3 = sub_1B710179C();

  return v3 & 1;
}

- (FAFamilyFeatureFlag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end