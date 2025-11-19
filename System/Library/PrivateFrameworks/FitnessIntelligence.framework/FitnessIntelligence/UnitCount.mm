@interface UnitCount
+ (id)baseUnit;
- (_TtC19FitnessIntelligence9UnitCount)initWithCoder:(id)a3;
- (_TtC19FitnessIntelligence9UnitCount)initWithSymbol:(id)a3 converter:(id)a4;
@end

@implementation UnitCount

- (_TtC19FitnessIntelligence9UnitCount)initWithSymbol:(id)a3 converter:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UnitCount();
  return [(NSDimension *)&v7 initWithSymbol:a3 converter:a4];
}

- (_TtC19FitnessIntelligence9UnitCount)initWithCoder:(id)a3
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