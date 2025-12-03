@interface SGColorPalette
- (id)getSolarColorsForLocation:(id)location atDate:(id)date;
@end

@implementation SGColorPalette

- (id)getSolarColorsForLocation:(id)location atDate:(id)date
{
  dateCopy = date;
  locationCopy = location;
  v7 = SGStartOfDayForDate(dateCopy);
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  [dateCopy timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [[SGSiderealData alloc] initWithStartOfDay:locationCopy location:1 useXR:v9];
  [(SGSiderealData *)v12 timeToProgress:v11];
  v13 = [(SGSiderealData *)v12 gradientWithSunsetFilterForDayProgress:?];

  return v13;
}

@end