@interface AudiogramLongitudinalChartPoint
- (_TtC8HealthUI31AudiogramLongitudinalChartPoint)init;
- (id)allYValues;
- (id)yValue;
- (id)yValueForKey:(id)a3;
@end

@implementation AudiogramLongitudinalChartPoint

- (_TtC8HealthUI31AudiogramLongitudinalChartPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)yValue
{
  v2 = self;
  sub_1C3C9B5E4(v11);

  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1C3D20A44();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)yValueForKey:(id)a3
{
  sub_1C3D20104();
  v4 = self;
  sub_1C3C9B5E4(v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1C3D20A44();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allYValues
{
  v2 = self;
  sub_1C3C9B960();

  v3 = sub_1C3D202A4();

  return v3;
}

@end