@interface HDDataAggregationResult
- (HDDataAggregationResult)initWithResultingAggregationState:(id)state consumedSensorData:(id)data persistenceHandler:(id)handler;
@end

@implementation HDDataAggregationResult

- (HDDataAggregationResult)initWithResultingAggregationState:(id)state consumedSensorData:(id)data persistenceHandler:(id)handler
{
  stateCopy = state;
  dataCopy = data;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = HDDataAggregationResult;
  v12 = [(HDDataAggregationResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_aggregationState, state);
    v14 = [dataCopy copy];
    consumedSensorData = v13->_consumedSensorData;
    v13->_consumedSensorData = v14;

    v16 = [handlerCopy copy];
    persistenceHandler = v13->_persistenceHandler;
    v13->_persistenceHandler = v16;
  }

  return v13;
}

@end