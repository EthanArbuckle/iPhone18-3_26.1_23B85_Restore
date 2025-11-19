@interface AudiogramAverageSensitivityChartPoint
- (_TtC8HealthUIP33_2A1C24F28D3D74C6BE1A5464632B356C37AudiogramAverageSensitivityChartPoint)init;
- (id)allYValues;
- (id)userInfo;
@end

@implementation AudiogramAverageSensitivityChartPoint

- (id)allYValues
{
  sub_1C396E068(0, &qword_1EC080D50, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C3D5F370;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUIP33_2A1C24F28D3D74C6BE1A5464632B356C37AudiogramAverageSensitivityChartPoint_yCoord);
  *(v3 + 56) = sub_1C3C27CB4(0, &qword_1EC0855F0);
  *(v3 + 32) = v4;
  v5 = v4;
  v6 = sub_1C3D202A4();

  return v6;
}

- (id)userInfo
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUIP33_2A1C24F28D3D74C6BE1A5464632B356C37AudiogramAverageSensitivityChartPoint_averageSensitivity);
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUIP33_2A1C24F28D3D74C6BE1A5464632B356C37AudiogramAverageSensitivityChartPoint_isLeftEar);
  v4 = type metadata accessor for AudiogramAverageSensitivityChartData();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_averageSensitivity] = v2;
  v5[OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_isLeftEar] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = [(AudiogramAverageSensitivityChartPoint *)&v8 init];

  return v6;
}

- (_TtC8HealthUIP33_2A1C24F28D3D74C6BE1A5464632B356C37AudiogramAverageSensitivityChartPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end