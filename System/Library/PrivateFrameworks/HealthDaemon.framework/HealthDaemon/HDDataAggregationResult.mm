@interface HDDataAggregationResult
- (HDDataAggregationResult)initWithResultingAggregationState:(id)a3 consumedSensorData:(id)a4 persistenceHandler:(id)a5;
@end

@implementation HDDataAggregationResult

- (HDDataAggregationResult)initWithResultingAggregationState:(id)a3 consumedSensorData:(id)a4 persistenceHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HDDataAggregationResult;
  v12 = [(HDDataAggregationResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_aggregationState, a3);
    v14 = [v10 copy];
    consumedSensorData = v13->_consumedSensorData;
    v13->_consumedSensorData = v14;

    v16 = [v11 copy];
    persistenceHandler = v13->_persistenceHandler;
    v13->_persistenceHandler = v16;
  }

  return v13;
}

@end