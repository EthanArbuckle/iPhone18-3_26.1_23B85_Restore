@interface UnitPace
+ (id)baseUnit;
- (_TtC19FitnessIntelligence8UnitPace)initWithCoder:(id)coder;
- (_TtC19FitnessIntelligence8UnitPace)initWithSymbol:(id)symbol converter:(id)converter;
@end

@implementation UnitPace

- (_TtC19FitnessIntelligence8UnitPace)initWithSymbol:(id)symbol converter:(id)converter
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UnitPace();
  return [(NSDimension *)&v7 initWithSymbol:symbol converter:converter];
}

- (_TtC19FitnessIntelligence8UnitPace)initWithCoder:(id)coder
{
  result = sub_1B4D18A9C();
  __break(1u);
  return result;
}

+ (id)baseUnit
{
  swift_getObjCClassMetadata();
  v2 = sub_1B4C01900();

  return v2;
}

@end