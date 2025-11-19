@interface RTLocation(MOExtensions)
+ (double)distanceFromlat1:()MOExtensions lon1:tolat2:lon2:;
+ (id)locationFromDictionary:()MOExtensions;
- (id)dictionary;
- (uint64_t)distanceFromLocation:()MOExtensions;
@end

@implementation RTLocation(MOExtensions)

+ (double)distanceFromlat1:()MOExtensions lon1:tolat2:lon2:
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v4 = a4 - a2;
  if (v4 <= 180.0)
  {
    if (v4 < -180.0)
    {
      v4 = v4 + 360.0;
    }
  }

  else
  {
    v4 = v4 + -360.0;
  }

  v5 = (a3 - a1) * 0.0174532925;
  v6 = v4 * 0.0174532925;
  v7 = __sincos_stret((a1 + a3) * 0.0174532925 * 0.5);
  v8 = sqrt(v7.__sinval * -0.00669437999 * v7.__sinval + 1.0);
  return sqrt(v7.__cosval * (6378137.0 / v8) * v6 * (v7.__cosval * (6378137.0 / v8) * v6) + v5 * (6335439.33 / (v8 * (v8 * v8))) * (v5 * (6335439.33 / (v8 * (v8 * v8)))));
}

- (uint64_t)distanceFromLocation:()MOExtensions
{
  v4 = MEMORY[0x277D01160];
  v5 = a3;
  [a1 latitude];
  v7 = v6;
  [a1 longitude];
  v9 = v8;
  [v5 latitude];
  v11 = v10;
  [v5 longitude];
  v13 = v12;

  return [v4 distanceFromlat1:v7 lon1:v9 tolat2:v11 lon2:v13];
}

- (id)dictionary
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CCABB0];
  [a1 latitude];
  v4 = [v3 numberWithDouble:?];
  [v2 setObject:v4 forKeyedSubscript:@"locationLatitude"];

  v5 = MEMORY[0x277CCABB0];
  [a1 longitude];
  v6 = [v5 numberWithDouble:?];
  [v2 setObject:v6 forKeyedSubscript:@"locationLongitude"];

  v7 = MEMORY[0x277CCABB0];
  [a1 horizontalUncertainty];
  v8 = [v7 numberWithDouble:?];
  [v2 setObject:v8 forKeyedSubscript:@"locationHorizontalUncertainty"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [a1 date];
  [v10 timeIntervalSinceReferenceDate];
  v11 = [v9 numberWithDouble:?];
  [v2 setObject:v11 forKeyedSubscript:@"locationDate"];

  v12 = [v2 copy];

  return v12;
}

+ (id)locationFromDictionary:()MOExtensions
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"locationLatitude"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 objectForKeyedSubscript:@"locationLongitude"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v3 objectForKeyedSubscript:@"locationHorizontalUncertainty"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 objectForKeyedSubscript:@"locationDate"];

  [v13 doubleValue];
  v15 = v14;

  if (v15 <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v15];
  }

  v17 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:v16 longitude:v6 horizontalUncertainty:v9 date:v12];

  return v17;
}

@end