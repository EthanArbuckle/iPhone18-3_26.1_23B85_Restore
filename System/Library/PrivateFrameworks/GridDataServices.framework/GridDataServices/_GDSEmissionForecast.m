@interface _GDSEmissionForecast
- (_GDSEmissionForecast)initWithForecast:(id)a3 generatedAt:(id)a4 fetchedAt:(id)a5 refetchInterval:(double)a6;
@end

@implementation _GDSEmissionForecast

- (_GDSEmissionForecast)initWithForecast:(id)a3 generatedAt:(id)a4 fetchedAt:(id)a5 refetchInterval:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = _GDSEmissionForecast;
  v14 = [(_GDSEmissionForecast *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_generationDate, a4);
    objc_storeStrong(&v15->_fetchDate, a5);
    objc_storeStrong(&v15->_forecastMap, a3);
    v15->_refetchInterval = a6;
  }

  return v15;
}

@end