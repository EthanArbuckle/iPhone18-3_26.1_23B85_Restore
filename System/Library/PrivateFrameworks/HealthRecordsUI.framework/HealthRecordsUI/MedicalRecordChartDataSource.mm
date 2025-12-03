@interface MedicalRecordChartDataSource
- (NSString)displayName;
- (_TtC15HealthRecordsUI28MedicalRecordChartDataSource)init;
- (_TtC15HealthRecordsUI28MedicalRecordChartDataSource)initWithConcept:(id)concept dataTransformer:(id)transformer unit:(id)unit preferredColors:(id)colors collapseIntoRangePoints:(BOOL)points type:(int64_t)type;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
- (id)chartDisplayTypeWithVerticalAxis:(id)axis;
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
    selfCopy = self;
    v5(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    selfCopy2 = self;
    sub_1D11F9EFC(v10, sub_1D1115B88);
  }

  v8 = sub_1D139012C();

  return v8;
}

- (_TtC15HealthRecordsUI28MedicalRecordChartDataSource)initWithConcept:(id)concept dataTransformer:(id)transformer unit:(id)unit preferredColors:(id)colors collapseIntoRangePoints:(BOOL)points type:(int64_t)type
{
  conceptCopy = concept;
  swift_unknownObjectRetain();
  unitCopy = unit;
  colorsCopy = colors;
  return MedicalRecordChartDataSource.init(concept:dataTransformer:unit:preferredColors:collapseIntoRangePoints:type:)(concept, transformer, unitCopy, colors, points, type);
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  index = path->index;
  zoom = path->zoom;
  resolution = path->resolution;
  if (context)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
  }

  v10 = sub_1D11F6CF0(index, zoom, resolution);

  sub_1D11F9EFC(v12, sub_1D1096B8C);

  return v10;
}

- (id)chartDisplayTypeWithVerticalAxis:(id)axis
{
  axisCopy = axis;
  selfCopy = self;
  v6 = sub_1D11F76B0(axisCopy);

  return v6;
}

- (_TtC15HealthRecordsUI28MedicalRecordChartDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end