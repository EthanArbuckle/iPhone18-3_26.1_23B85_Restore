@interface EmptyPersonalizationDataGenerator
- (_TtC19NewsPersonalization33EmptyPersonalizationDataGenerator)init;
- (id)generateDerivedData;
@end

@implementation EmptyPersonalizationDataGenerator

- (id)generateDerivedData
{
  sub_1C6B5F0A8(MEMORY[0x1E69E7CC0]);
  v2 = objc_allocWithZone(MEMORY[0x1E69B5258]);
  sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
  v3 = sub_1C6D79480();

  v4 = [v2 initWithAggregates:v3 scoringType:4 decayRate:0.0];

  return v4;
}

- (_TtC19NewsPersonalization33EmptyPersonalizationDataGenerator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(EmptyPersonalizationDataGenerator *)&v3 init];
}

@end