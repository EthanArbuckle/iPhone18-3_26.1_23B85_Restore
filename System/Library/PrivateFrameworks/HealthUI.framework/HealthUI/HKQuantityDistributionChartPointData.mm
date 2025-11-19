@interface HKQuantityDistributionChartPointData
- (HKQuantityDistributionChartPointData)initWithDistributionData:(id)a3 bucketIncrement:(double)a4 unit:(id)a5 displayType:(id)a6;
- (HKQuantityDistributionChartPointData)initWithDistributionData:(id)a3 unit:(id)a4 displayType:(id)a5;
@end

@implementation HKQuantityDistributionChartPointData

- (HKQuantityDistributionChartPointData)initWithDistributionData:(id)a3 unit:(id)a4 displayType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [HKQuantityDistributionDataSource bucketSizeForDisplayType:v8 preferredUnit:v9];
  [v11 floatValue];
  v13 = [(HKQuantityDistributionChartPointData *)self initWithDistributionData:v10 bucketIncrement:v9 unit:v8 displayType:v12];

  return v13;
}

- (HKQuantityDistributionChartPointData)initWithDistributionData:(id)a3 bucketIncrement:(double)a4 unit:(id)a5 displayType:(id)a6
{
  v9 = a3;
  v10 = a5;
  v32.receiver = self;
  v32.super_class = HKQuantityDistributionChartPointData;
  v11 = [(HKQuantityDistributionChartPointData *)&v32 init];
  if (v11)
  {
    v12 = [v9 startDate];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [v9 endDate];
    endDate = v11->_endDate;
    v11->_endDate = v14;

    v16 = [v9 minimumValue];
    v17 = objc_opt_class();
    v11->_minimumValue = _doubleValueIfCompatibleForQuantity(v16, v10, v17);

    v18 = [v9 maximumValue];
    v19 = objc_opt_class();
    v11->_maximumValue = _doubleValueIfCompatibleForQuantity(v18, v10, v19);

    v20 = [v9 minimumBucketValue];
    v21 = objc_opt_class();
    v11->_minimumBucketValue = _doubleValueIfCompatibleForQuantity(v20, v10, v21);

    v22 = [v9 averageValue];
    v23 = objc_opt_class();
    v11->_averageValue = _doubleValueIfCompatibleForQuantity(v22, v10, v23);

    v24 = [v9 duration];
    v25 = [MEMORY[0x1E696C510] secondUnit];
    v26 = objc_opt_class();
    v11->_duration = _doubleValueIfCompatibleForQuantity(v24, v25, v26);

    v11->_bucketIncrement = a4;
    v27 = [v9 histogramCounts];
    bucketCounts = v11->_bucketCounts;
    v11->_bucketCounts = v27;

    v29 = [v9 contextIdentifiers];
    contextIdentifiers = v11->_contextIdentifiers;
    v11->_contextIdentifiers = v29;

    objc_storeStrong(&v11->_unit, a5);
  }

  return v11;
}

@end