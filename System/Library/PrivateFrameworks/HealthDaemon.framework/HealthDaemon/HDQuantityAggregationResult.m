@interface HDQuantityAggregationResult
- (HDQuantityAggregationResult)initWithAggregatedSamples:(id)a3 consumedData:(id)a4 remainingData:(id)a5;
@end

@implementation HDQuantityAggregationResult

- (HDQuantityAggregationResult)initWithAggregatedSamples:(id)a3 consumedData:(id)a4 remainingData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HDQuantityAggregationResult;
  v11 = [(HDQuantityAggregationResult *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    aggregatedSamples = v11->_aggregatedSamples;
    v11->_aggregatedSamples = v12;

    v14 = [v9 copy];
    consumedSensorData = v11->_consumedSensorData;
    v11->_consumedSensorData = v14;

    objc_storeStrong(&v11->_remainingSensorData, a5);
  }

  return v11;
}

@end