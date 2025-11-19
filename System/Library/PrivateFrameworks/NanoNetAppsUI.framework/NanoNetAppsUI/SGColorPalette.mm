@interface SGColorPalette
- (id)getSolarColorsForLocation:(id)a3 atDate:(id)a4;
@end

@implementation SGColorPalette

- (id)getSolarColorsForLocation:(id)a3 atDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = SGStartOfDayForDate(v5);
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  [v5 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [[SGSiderealData alloc] initWithStartOfDay:v6 location:1 useXR:v9];
  [(SGSiderealData *)v12 timeToProgress:v11];
  v13 = [(SGSiderealData *)v12 gradientWithSunsetFilterForDayProgress:?];

  return v13;
}

@end