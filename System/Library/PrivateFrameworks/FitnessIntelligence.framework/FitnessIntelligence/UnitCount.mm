@interface UnitCount
+ (id)baseUnit;
- (_TtC19FitnessIntelligence9UnitCount)initWithCoder:(id)coder;
- (_TtC19FitnessIntelligence9UnitCount)initWithSymbol:(id)symbol converter:(id)converter;
@end

@implementation UnitCount

- (_TtC19FitnessIntelligence9UnitCount)initWithSymbol:(id)symbol converter:(id)converter
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UnitCount();
  return [(NSDimension *)&v7 initWithSymbol:symbol converter:converter];
}

- (_TtC19FitnessIntelligence9UnitCount)initWithCoder:(id)coder
{
  result = sub_1B4D18A9C();
  __break(1u);
  return result;
}

+ (id)baseUnit
{
  swift_getObjCClassMetadata();
  v2 = sub_1B4C495CC();

  return v2;
}

@end