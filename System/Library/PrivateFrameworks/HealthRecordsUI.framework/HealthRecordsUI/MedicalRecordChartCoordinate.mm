@interface MedicalRecordChartCoordinate
- (HKGraphSeriesBlockCoordinateInfo)userInfo;
- (_TtC15HealthRecordsUI28MedicalRecordChartCoordinate)init;
- (double)endXValue;
- (double)startXValue;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation MedicalRecordChartCoordinate

- (double)startXValue
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
  if (*(v2 + 16))
  {
    return *(v2 + 32);
  }

  else
  {
    return 0.0;
  }
}

- (double)endXValue
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
  v5 = *(v2 + 16);
  v3 = v2 + 16;
  v4 = v5;
  if (v5)
  {
    return *(v3 + 16 * v4);
  }

  else
  {
    return 0.0;
  }
}

- (HKGraphSeriesBlockCoordinateInfo)userInfo
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v4;
  v8[2] = *&a3->tx;
  v5 = self;
  v6 = sub_1D12618E4(v8);

  return v6;
}

- (_TtC15HealthRecordsUI28MedicalRecordChartCoordinate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end