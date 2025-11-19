@interface StateOfMindChartPoint
- (_TtC8HealthUI21StateOfMindChartPoint)init;
- (id)allYValues;
- (id)maxYValue;
- (id)userInfo;
- (id)yValueForKey:(id)a3;
@end

@implementation StateOfMindChartPoint

- (_TtC8HealthUI21StateOfMindChartPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)yValueForKey:(id)a3
{
  sub_1C3D20104();
  v4 = self;
  StateOfMindChartPoint.yValue(forKey:)(v12);

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
  v2 = self;
  StateOfMindChartPoint.allYValues()();

  v3 = sub_1C3D202A4();

  return v3;
}

- (id)maxYValue
{
  StateOfMindChartPoint.maxYValue()(v9);
  v2 = v10;
  if (v10)
  {
    v3 = __swift_project_boxed_opaque_existential_0(v9, v10);
    v4 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_1C3D20A44();
    (*(v4 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)userInfo
{
  v2 = self;
  v3 = StateOfMindChartPoint.userInfo()();

  return v3;
}

@end