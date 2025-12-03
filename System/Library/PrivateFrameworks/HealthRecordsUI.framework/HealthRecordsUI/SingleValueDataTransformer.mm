@interface SingleValueDataTransformer
- (id)chartDisplayTypeWith:(id)with displayName:(id)name unitName:(id)unitName;
- (id)chartPointFor:(id)for in:(id)in with:(int64_t)with dataSourceType:(int64_t)type;
- (id)graphSeriesWith:(id)with;
@end

@implementation SingleValueDataTransformer

- (id)chartPointFor:(id)for in:(id)in with:(int64_t)with dataSourceType:(int64_t)type
{
  v10 = sub_1D138D57C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  forCopy = for;
  inCopy = in;

  date = [forCopy date];
  sub_1D138D52C();

  sub_1D10F5678(forCopy, v13, with, type);
  v18 = v17;
  (*(v11 + 8))(v13, v10);
  v19 = objc_allocWithZone(type metadata accessor for MedicalRecordChartPoint());
  v20 = sub_1D120A4E8(forCopy, inCopy, v18);

  return v20;
}

- (id)graphSeriesWith:(id)with
{
  withCopy = with;

  v4 = sub_1D10F51D8(withCopy);

  return v4;
}

- (id)chartDisplayTypeWith:(id)with displayName:(id)name unitName:(id)unitName
{
  v8 = objc_allocWithZone(HRInteractiveChartMedicalRecordFormatter);
  withCopy = with;
  nameCopy = name;
  unitNameCopy = unitName;
  v12 = [v8 init];
  v13 = [objc_allocWithZone(MEMORY[0x1E69A43F0]) initWithGraphSeries:withCopy displayName:nameCopy unitName:unitNameCopy valueFormatter:v12 dataTypeCode:152];

  return v13;
}

@end