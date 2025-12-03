@interface HDQuantityAggregationResult
- (HDQuantityAggregationResult)initWithAggregatedSamples:(id)samples consumedData:(id)data remainingData:(id)remainingData;
@end

@implementation HDQuantityAggregationResult

- (HDQuantityAggregationResult)initWithAggregatedSamples:(id)samples consumedData:(id)data remainingData:(id)remainingData
{
  samplesCopy = samples;
  dataCopy = data;
  remainingDataCopy = remainingData;
  v17.receiver = self;
  v17.super_class = HDQuantityAggregationResult;
  v11 = [(HDQuantityAggregationResult *)&v17 init];
  if (v11)
  {
    v12 = [samplesCopy copy];
    aggregatedSamples = v11->_aggregatedSamples;
    v11->_aggregatedSamples = v12;

    v14 = [dataCopy copy];
    consumedSensorData = v11->_consumedSensorData;
    v11->_consumedSensorData = v14;

    objc_storeStrong(&v11->_remainingSensorData, remainingData);
  }

  return v11;
}

@end