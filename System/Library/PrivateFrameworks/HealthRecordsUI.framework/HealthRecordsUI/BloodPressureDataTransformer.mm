@interface BloodPressureDataTransformer
- (id)chartDisplayTypeWith:(id)with displayName:(id)name unitName:(id)unitName;
- (id)chartPointFor:(id)for in:(id)in with:(int64_t)with dataSourceType:(int64_t)type;
- (id)graphSeriesWith:(id)with;
@end

@implementation BloodPressureDataTransformer

- (id)chartPointFor:(id)for in:(id)in with:(int64_t)with dataSourceType:(int64_t)type
{
  forCopy = for;
  inCopy = in;

  v10 = sub_1D12E322C(forCopy, inCopy, with);

  return v10;
}

- (id)graphSeriesWith:(id)with
{
  withCopy = with;
  keyColor = [withCopy keyColor];
  if (!keyColor)
  {
    keyColor = [objc_opt_self() blackColor];
  }

  type metadata accessor for BloodPressureChartSeries();
  defaultSeriesWithDiastolicColor_ = [swift_getObjCClassFromMetadata() defaultSeriesWithDiastolicColor_];

  return defaultSeriesWithDiastolicColor_;
}

- (id)chartDisplayTypeWith:(id)with displayName:(id)name unitName:(id)unitName
{
  withCopy = with;

  sub_1D12E1C50();
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E69A43E8]) init];
  v9 = [objc_allocWithZone(MEMORY[0x1E69A43F0]) initWithGraphSeries:withCopy baseDisplayType:v7 valueFormatter:v8 dataTypeCode:80];

  return v9;
}

@end