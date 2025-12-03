@interface BalanceChartPoint
- (_TtC8HealthUI17BalanceChartPoint)init;
- (id)allYValues;
- (id)maxYValue;
- (id)minYValue;
- (id)yValueForKey:(id)key;
@end

@implementation BalanceChartPoint

- (id)minYValue
{
  v0 = sub_1C3D20A84();

  return v0;
}

- (_TtC8HealthUI17BalanceChartPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)yValueForKey:(id)key
{
  sub_1C3D20104();
  selfCopy = self;
  sub_1C3C4F898(v12);

  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1C3D20A44();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)allYValues
{
  selfCopy = self;
  sub_1C3C4FBC8();

  v3 = sub_1C3D202A4();

  return v3;
}

- (id)maxYValue
{
  v2 = sub_1C3D20A84();

  return v2;
}

@end