@interface HKHeartbeatSeriesSample(AFibBurdenControl)
+ (id)_aFibSeriesSampleWithStartDate:()AFibBurdenControl device:metadata:;
+ (id)_nonAFibSeriesSampleWithStartDate:()AFibBurdenControl device:metadata:;
@end

@implementation HKHeartbeatSeriesSample(AFibBurdenControl)

+ (id)_aFibSeriesSampleWithStartDate:()AFibBurdenControl device:metadata:
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 dateByAddingTimeInterval:60.0];
  if (_aFibHeartbeatSeriesData_onceToken != -1)
  {
    +[HKHeartbeatSeriesSample(AFibBurdenControl) _aFibSeriesSampleWithStartDate:device:metadata:];
  }

  v11 = [MEMORY[0x277CCD540] _heartbeatSeriesSampleWithData:_aFibHeartbeatSeriesData___aFibHeartbeatSeriesData startDate:v9 endDate:v10 device:v8 metadata:v7];

  return v11;
}

+ (id)_nonAFibSeriesSampleWithStartDate:()AFibBurdenControl device:metadata:
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 dateByAddingTimeInterval:60.0];
  if (_nonAFibHeartbeatSeriesData_onceToken != -1)
  {
    +[HKHeartbeatSeriesSample(AFibBurdenControl) _nonAFibSeriesSampleWithStartDate:device:metadata:];
  }

  v11 = [MEMORY[0x277CCD540] _heartbeatSeriesSampleWithData:_nonAFibHeartbeatSeriesData___nonAFibHeartbeatSeriesData startDate:v9 endDate:v10 device:v8 metadata:v7];

  return v11;
}

@end