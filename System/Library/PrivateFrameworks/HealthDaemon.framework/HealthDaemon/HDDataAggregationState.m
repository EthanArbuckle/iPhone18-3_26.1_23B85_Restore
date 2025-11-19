@interface HDDataAggregationState
- (HDDataAggregationState)init;
- (HDDataAggregationState)initWithRemainingSensorData:(id)a3 currentSeries:(id)a4;
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

- (HDDataAggregationState)initWithRemainingSensorData:(id)a3 currentSeries:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDDataAggregationState;
  v9 = [(HDDataAggregationState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unaggregatedSensorData, a3);
    objc_storeStrong(&v10->_openSeries, a4);
  }

  return v10;
}

@end