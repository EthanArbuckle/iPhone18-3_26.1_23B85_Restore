@interface _WDChartDataCacheControllerDisplayTypeTimeScopeTuple
- (BOOL)isEqual:(id)equal;
- (_WDChartDataCacheControllerDisplayTypeTimeScopeTuple)initWithDisplayType:(id)type timeScope:(int64_t)scope;
@end

@implementation _WDChartDataCacheControllerDisplayTypeTimeScopeTuple

- (_WDChartDataCacheControllerDisplayTypeTimeScopeTuple)initWithDisplayType:(id)type timeScope:(int64_t)scope
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = _WDChartDataCacheControllerDisplayTypeTimeScopeTuple;
  v8 = [(_WDChartDataCacheControllerDisplayTypeTimeScopeTuple *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_displayType, type);
    v9->_timeScope = scope;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HKDisplayType *)self->_displayType isEqual:equalCopy[1]];
    v6 = self->_timeScope == equalCopy[2] && v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end