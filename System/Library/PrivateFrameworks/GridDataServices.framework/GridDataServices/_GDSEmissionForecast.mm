@interface _GDSEmissionForecast
- (_GDSEmissionForecast)initWithForecast:(id)forecast generatedAt:(id)at fetchedAt:(id)fetchedAt refetchInterval:(double)interval;
@end

@implementation _GDSEmissionForecast

- (_GDSEmissionForecast)initWithForecast:(id)forecast generatedAt:(id)at fetchedAt:(id)fetchedAt refetchInterval:(double)interval
{
  forecastCopy = forecast;
  atCopy = at;
  fetchedAtCopy = fetchedAt;
  v17.receiver = self;
  v17.super_class = _GDSEmissionForecast;
  v14 = [(_GDSEmissionForecast *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_generationDate, at);
    objc_storeStrong(&v15->_fetchDate, fetchedAt);
    objc_storeStrong(&v15->_forecastMap, forecast);
    v15->_refetchInterval = interval;
  }

  return v15;
}

@end