@interface HKQuantityDistributionChartPointData
- (HKQuantityDistributionChartPointData)initWithDistributionData:(id)data bucketIncrement:(double)increment unit:(id)unit displayType:(id)type;
- (HKQuantityDistributionChartPointData)initWithDistributionData:(id)data unit:(id)unit displayType:(id)type;
@end

@implementation HKQuantityDistributionChartPointData

- (HKQuantityDistributionChartPointData)initWithDistributionData:(id)data unit:(id)unit displayType:(id)type
{
  typeCopy = type;
  unitCopy = unit;
  dataCopy = data;
  v11 = [HKQuantityDistributionDataSource bucketSizeForDisplayType:typeCopy preferredUnit:unitCopy];
  [v11 floatValue];
  v13 = [(HKQuantityDistributionChartPointData *)self initWithDistributionData:dataCopy bucketIncrement:unitCopy unit:typeCopy displayType:v12];

  return v13;
}

- (HKQuantityDistributionChartPointData)initWithDistributionData:(id)data bucketIncrement:(double)increment unit:(id)unit displayType:(id)type
{
  dataCopy = data;
  unitCopy = unit;
  v32.receiver = self;
  v32.super_class = HKQuantityDistributionChartPointData;
  v11 = [(HKQuantityDistributionChartPointData *)&v32 init];
  if (v11)
  {
    startDate = [dataCopy startDate];
    startDate = v11->_startDate;
    v11->_startDate = startDate;

    endDate = [dataCopy endDate];
    endDate = v11->_endDate;
    v11->_endDate = endDate;

    minimumValue = [dataCopy minimumValue];
    v17 = objc_opt_class();
    v11->_minimumValue = _doubleValueIfCompatibleForQuantity(minimumValue, unitCopy, v17);

    maximumValue = [dataCopy maximumValue];
    v19 = objc_opt_class();
    v11->_maximumValue = _doubleValueIfCompatibleForQuantity(maximumValue, unitCopy, v19);

    minimumBucketValue = [dataCopy minimumBucketValue];
    v21 = objc_opt_class();
    v11->_minimumBucketValue = _doubleValueIfCompatibleForQuantity(minimumBucketValue, unitCopy, v21);

    averageValue = [dataCopy averageValue];
    v23 = objc_opt_class();
    v11->_averageValue = _doubleValueIfCompatibleForQuantity(averageValue, unitCopy, v23);

    duration = [dataCopy duration];
    secondUnit = [MEMORY[0x1E696C510] secondUnit];
    v26 = objc_opt_class();
    v11->_duration = _doubleValueIfCompatibleForQuantity(duration, secondUnit, v26);

    v11->_bucketIncrement = increment;
    histogramCounts = [dataCopy histogramCounts];
    bucketCounts = v11->_bucketCounts;
    v11->_bucketCounts = histogramCounts;

    contextIdentifiers = [dataCopy contextIdentifiers];
    contextIdentifiers = v11->_contextIdentifiers;
    v11->_contextIdentifiers = contextIdentifiers;

    objc_storeStrong(&v11->_unit, unit);
  }

  return v11;
}

@end