@interface SGSiderealData
+ ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForLocation:(id)location;
- (SGSiderealData)initWithStartOfDay:(double)day location:(id)location useXR:(BOOL)r;
- (double)pseudoAltitudeForProgress:(double)progress;
- (double)sunsetFilter:(double)filter;
- (double)timeToProgress:(double)progress;
- (id)gradientWithSunsetFilterForDayProgress:(double)progress;
@end

@implementation SGSiderealData

+ ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForLocation:(id)location
{
  locationCopy = location;
  [locationCopy coordinate];
  v5 = v4;
  [locationCopy coordinate];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (SGSiderealData)initWithStartOfDay:(double)day location:(id)location useXR:(BOOL)r
{
  locationCopy = location;
  v32.receiver = self;
  v32.super_class = SGSiderealData;
  v10 = [(SGSiderealData *)&v32 init];
  if (v10)
  {
    [SGSiderealData _geoLocationForLocation:locationCopy];
    v12 = v11;
    v14 = v13;
    v15 = objc_alloc(MEMORY[0x277D0ED50]);
    v16 = [v15 initWithLocation:v12 time:v14 altitudeInDegrees:day accuracy:{*MEMORY[0x277D0E7C0], 60.0}];
    [v16 nextEventOfType:8];
    v18 = v17;
    [v16 nextEventOfType:32];
    v20 = v19;
    [v16 nextEventOfType:16];
    v22 = v21;
    v10->_useXR = r;
    objc_storeStrong(&v10->_location, location);
    v10->_startOfDay = day;
    v10->_solarNoonTime = v22;
    v10->_sunriseTime = v18;
    v10->_sunsetTime = v20;
    v23 = v20 - v18;
    v10->_sunsetFollowsSunrise = v23 > 0.0;
    sunsetFollowsSunrise = [(SGSiderealData *)v10 sunsetFollowsSunrise];
    v25 = 0.0;
    if (sunsetFollowsSunrise && v23 >= 14400.0)
    {
      v31 = day + 86400.0 - v20;
      if (v23 < 28800.0)
      {
        if (v31 >= 7200.0)
        {
          v27 = v20;
        }

        else
        {
          v27 = day + 79200.0;
        }

        v26 = 1;
        v25 = v22;
        goto LABEL_5;
      }

      if (v23 < 72000.0)
      {
        v25 = v20 + -14400.0;
        if (v31 >= 7200.0)
        {
          v27 = v20;
        }

        else
        {
          v27 = day + 79200.0;
        }

        v26 = 1;
        goto LABEL_5;
      }
    }

    v26 = 0;
    v27 = 0.0;
LABEL_5:
    v10->_sunsetFilterEnabled = v26;
    [(SGSiderealData *)v10 timeToProgress:v25];
    v10->_sunsetFilterRampUpStartProgress = v28;
    [(SGSiderealData *)v10 timeToProgress:v27];
    v10->_sunsetFilterRampDownStartProgress = v29;
  }

  return v10;
}

- (double)timeToProgress:(double)progress
{
  startOfDay = self->_startOfDay;
  CLKMapFractionIntoRange();
  return result;
}

- (double)pseudoAltitudeForProgress:(double)progress
{
  startOfDay = self->_startOfDay;
  CLKMapFractionIntoRange();
  v6 = v5;
  [SGSiderealData _geoLocationForLocation:self->_location];
  v8 = v7;
  v10 = v9;
  [SGSiderealData _absoluteTimeToJulianDay:v6];
  v12 = [objc_alloc(MEMORY[0x277D0EB38]) initWithLocation:0 julianDay:0 body:v8 useHighPrecision:{v10, v11}];
  solarNoonTime = self->_solarNoonTime;
  [v12 altitude];
  CLKMapFractionIntoRange();
  v15 = v14;

  return v15;
}

- (double)sunsetFilter:(double)filter
{
  result = 0.0;
  if (self->_sunsetFilterEnabled && self->_useXR)
  {
    filterCopy = filter;
    sunsetFilterRampUpStartProgress = self->_sunsetFilterRampUpStartProgress;
    v7 = self->_sunsetFilterRampDownStartProgress - sunsetFilterRampUpStartProgress;
    v8 = ((((v7 + -0.083333) * 0.5) + 0.083333) / 0.083333) - fabsf((((filterCopy + -0.083333) - sunsetFilterRampUpStartProgress) - ((v7 + -0.083333) * 0.5)) / 0.083333);
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    return fminf(v8, 1.0);
  }

  return result;
}

- (id)gradientWithSunsetFilterForDayProgress:(double)progress
{
  v26[3] = *MEMORY[0x277D85DE8];
  [(SGSiderealData *)self pseudoAltitudeForProgress:?];
  v6 = v5;
  useXR = self->_useXR;
  v8 = +[SGSiderealColorManager sharedInstance];
  v9 = v8;
  if (useXR)
  {
    [v8 dayGradientCurveP3];
  }

  else
  {
    [v8 dayGradientColorCurves];
  }
  v10 = ;

  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 rgbfColorForFraction:v6];
  CLKUIConvertToXRSRGBfFromRGBf();

  v12 = [v10 objectAtIndexedSubscript:1];
  [v12 rgbfColorForFraction:v6];
  CLKUIConvertToXRSRGBfFromRGBf();
  v25 = v13;

  v14 = [v10 objectAtIndexedSubscript:2];
  [v14 rgbfColorForFraction:v6];
  CLKUIConvertToXRSRGBfFromRGBf();
  v24 = v15;

  [(SGSiderealData *)self sunsetFilter:progress];
  v17 = v16;
  v18 = [SGSiderealData _applySunsetFilter:"_applySunsetFilter:toColor:" toColor:?];
  v19 = [(SGSiderealData *)self _applySunsetFilter:v17 toColor:v25];
  v20 = [(SGSiderealData *)self _applySunsetFilter:v17 toColor:v24];
  v26[0] = v18;
  v26[1] = v19;
  v26[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end