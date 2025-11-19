@interface MedicalRecordChartDataSource
- (NSString)displayName;
- (_TtC15HealthRecordsUI28MedicalRecordChartDataSource)init;
- (_TtC15HealthRecordsUI28MedicalRecordChartDataSource)initWithConcept:(id)a3 dataTransformer:(id)a4 unit:(id)a5 preferredColors:(id)a6 collapseIntoRangePoints:(BOOL)a7 type:(int64_t)a8;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4;
- (id)chartDisplayTypeWithVerticalAxis:(id)a3;
@end

@implementation MedicalRecordChartDataSource

- (NSString)displayName
{
  sub_1D11F68EC(self + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining, v10);
  v3 = v11;
  if (v11)
  {
    v4 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v5 = *(v4 + 8);
    v6 = self;
    v5(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v7 = self;
    sub_1D11F9EFC(v10, sub_1D1115B88);
  }

  v8 = sub_1D139012C();

  return v8;
}

- (_TtC15HealthRecordsUI28MedicalRecordChartDataSource)initWithConcept:(id)a3 dataTransformer:(id)a4 unit:(id)a5 preferredColors:(id)a6 collapseIntoRangePoints:(BOOL)a7 type:(int64_t)a8
{
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a5;
  v16 = a6;
  return MedicalRecordChartDataSource.init(concept:dataTransformer:unit:preferredColors:collapseIntoRangePoints:type:)(a3, a4, v15, a6, a7, a8);
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4
{
  index = a3->index;
  zoom = a3->zoom;
  resolution = a3->resolution;
  if (a4)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v9 = self;
  }

  v10 = sub_1D11F6CF0(index, zoom, resolution);

  sub_1D11F9EFC(v12, sub_1D1096B8C);

  return v10;
}

- (id)chartDisplayTypeWithVerticalAxis:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1D11F76B0(v4);

  return v6;
}

- (_TtC15HealthRecordsUI28MedicalRecordChartDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end