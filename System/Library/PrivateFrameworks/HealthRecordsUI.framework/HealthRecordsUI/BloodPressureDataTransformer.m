@interface BloodPressureDataTransformer
- (id)chartDisplayTypeWith:(id)a3 displayName:(id)a4 unitName:(id)a5;
- (id)chartPointFor:(id)a3 in:(id)a4 with:(int64_t)a5 dataSourceType:(int64_t)a6;
- (id)graphSeriesWith:(id)a3;
@end

@implementation BloodPressureDataTransformer

- (id)chartPointFor:(id)a3 in:(id)a4 with:(int64_t)a5 dataSourceType:(int64_t)a6
{
  v8 = a3;
  v9 = a4;

  v10 = sub_1D12E322C(v8, v9, a5);

  return v10;
}

- (id)graphSeriesWith:(id)a3
{
  v3 = a3;
  v4 = [v3 keyColor];
  if (!v4)
  {
    v4 = [objc_opt_self() blackColor];
  }

  type metadata accessor for BloodPressureChartSeries();
  v5 = [swift_getObjCClassFromMetadata() defaultSeriesWithDiastolicColor_];

  return v5;
}

- (id)chartDisplayTypeWith:(id)a3 displayName:(id)a4 unitName:(id)a5
{
  v5 = a3;

  sub_1D12E1C50();
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E69A43E8]) init];
  v9 = [objc_allocWithZone(MEMORY[0x1E69A43F0]) initWithGraphSeries:v5 baseDisplayType:v7 valueFormatter:v8 dataTypeCode:80];

  return v9;
}

@end