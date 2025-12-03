@interface HDDataAggregationState
- (HDDataAggregationState)init;
- (HDDataAggregationState)initWithRemainingSensorData:(id)data currentSeries:(id)series;
@end

@implementation HDDataAggregationState

- (HDDataAggregationState)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDataAggregationState)initWithRemainingSensorData:(id)data currentSeries:(id)series
{
  dataCopy = data;
  seriesCopy = series;
  v12.receiver = self;
  v12.super_class = HDDataAggregationState;
  v9 = [(HDDataAggregationState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unaggregatedSensorData, data);
    objc_storeStrong(&v10->_openSeries, series);
  }

  return v10;
}

@end