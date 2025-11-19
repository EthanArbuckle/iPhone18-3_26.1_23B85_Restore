@interface _WDChartDataCacheControllerDisplayTypeTimeScopeTuple
- (BOOL)isEqual:(id)a3;
- (_WDChartDataCacheControllerDisplayTypeTimeScopeTuple)initWithDisplayType:(id)a3 timeScope:(int64_t)a4;
@end

@implementation _WDChartDataCacheControllerDisplayTypeTimeScopeTuple

- (_WDChartDataCacheControllerDisplayTypeTimeScopeTuple)initWithDisplayType:(id)a3 timeScope:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _WDChartDataCacheControllerDisplayTypeTimeScopeTuple;
  v8 = [(_WDChartDataCacheControllerDisplayTypeTimeScopeTuple *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_displayType, a3);
    v9->_timeScope = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HKDisplayType *)self->_displayType isEqual:v4[1]];
    v6 = self->_timeScope == v4[2] && v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end