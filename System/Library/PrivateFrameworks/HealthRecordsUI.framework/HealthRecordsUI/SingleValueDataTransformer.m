@interface SingleValueDataTransformer
- (id)chartDisplayTypeWith:(id)a3 displayName:(id)a4 unitName:(id)a5;
- (id)chartPointFor:(id)a3 in:(id)a4 with:(int64_t)a5 dataSourceType:(int64_t)a6;
- (id)graphSeriesWith:(id)a3;
@end

@implementation SingleValueDataTransformer

- (id)chartPointFor:(id)a3 in:(id)a4 with:(int64_t)a5 dataSourceType:(int64_t)a6
{
  v10 = sub_1D138D57C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3;
  v15 = a4;

  v16 = [v14 date];
  sub_1D138D52C();

  sub_1D10F5678(v14, v13, a5, a6);
  v18 = v17;
  (*(v11 + 8))(v13, v10);
  v19 = objc_allocWithZone(type metadata accessor for MedicalRecordChartPoint());
  v20 = sub_1D120A4E8(v14, v15, v18);

  return v20;
}

- (id)graphSeriesWith:(id)a3
{
  v3 = a3;

  v4 = sub_1D10F51D8(v3);

  return v4;
}

- (id)chartDisplayTypeWith:(id)a3 displayName:(id)a4 unitName:(id)a5
{
  v8 = objc_allocWithZone(HRInteractiveChartMedicalRecordFormatter);
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v8 init];
  v13 = [objc_allocWithZone(MEMORY[0x1E69A43F0]) initWithGraphSeries:v9 displayName:v10 unitName:v11 valueFormatter:v12 dataTypeCode:152];

  return v13;
}

@end