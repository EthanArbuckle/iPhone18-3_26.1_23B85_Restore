@interface UnitPace
+ (id)baseUnit;
- (_TtC19FitnessIntelligence8UnitPace)initWithCoder:(id)a3;
- (_TtC19FitnessIntelligence8UnitPace)initWithSymbol:(id)a3 converter:(id)a4;
@end

@implementation UnitPace

- (_TtC19FitnessIntelligence8UnitPace)initWithSymbol:(id)a3 converter:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UnitPace();
  return [(NSDimension *)&v7 initWithSymbol:a3 converter:a4];
}

- (_TtC19FitnessIntelligence8UnitPace)initWithCoder:(id)a3
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