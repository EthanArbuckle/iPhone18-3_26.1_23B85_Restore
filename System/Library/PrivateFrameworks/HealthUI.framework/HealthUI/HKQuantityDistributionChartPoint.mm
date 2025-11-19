@interface HKQuantityDistributionChartPoint
- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)a3 bucketDate:(id)a4 bucketIncrement:(double)a5 unit:(id)a6 displayType:(id)a7;
- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)a3 bucketIncrement:(double)a4 unit:(id)a5 displayType:(id)a6;
- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)a3 unit:(id)a4 displayType:(id)a5;
- (NSString)description;
- (id)_quickDate:(id)a3;
- (id)allYValues;
@end

@implementation HKQuantityDistributionChartPoint

- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)a3 bucketDate:(id)a4 bucketIncrement:(double)a5 unit:(id)a6 displayType:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v37.receiver = self;
  v37.super_class = HKQuantityDistributionChartPoint;
  v16 = [(HKQuantityDistributionChartPoint *)&v37 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_bucketDate, a4);
    v18 = [v15 presentation];
    v19 = MEMORY[0x1E696AD98];
    v20 = [v12 minimumValue];
    [v20 doubleValueForUnit:v14];
    v21 = [v19 numberWithDouble:?];
    v22 = [v18 adjustedValueForDaemonValue:v21];
    minimumY = v17->_minimumY;
    v17->_minimumY = v22;

    v24 = [v15 presentation];
    v25 = MEMORY[0x1E696AD98];
    v26 = [v12 maximumValue];
    [v26 doubleValueForUnit:v14];
    v27 = [v25 numberWithDouble:?];
    v28 = [v24 adjustedValueForDaemonValue:v27];
    maximumY = v17->_maximumY;
    v17->_maximumY = v28;

    v30 = [v15 presentation];
    v31 = [v12 minimumBucketValue];
    [v31 doubleValueForUnit:v14];
    [v30 adjustedDoubleForDaemonDouble:?];
    v17->_minimumBucketValue = v32;

    v17->_bucketIncrement = a5;
    v33 = [v12 histogramCounts];
    bucketCounts = v17->_bucketCounts;
    v17->_bucketCounts = v33;

    userInfo = v17->_userInfo;
    v17->_userInfo = 0;
  }

  return v17;
}

- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)a3 bucketIncrement:(double)a4 unit:(id)a5 displayType:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v12 startDate];
  v14 = [v12 endDate];
  v15 = HKUIMidDate(v13, v14);

  v16 = [(HKQuantityDistributionChartPoint *)self initWithHistogramData:v12 bucketDate:v15 bucketIncrement:v11 unit:v10 displayType:a4];
  return v16;
}

- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)a3 unit:(id)a4 displayType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [HKQuantityDistributionDataSource bucketSizeForDisplayType:v8 preferredUnit:v9];
  v12 = [v10 startDate];
  v13 = [v10 endDate];
  v14 = HKUIMidDate(v12, v13);

  [v11 floatValue];
  v16 = [(HKQuantityDistributionChartPoint *)self initWithHistogramData:v10 bucketDate:v14 bucketIncrement:v9 unit:v8 displayType:v15];

  return v16;
}

- (id)_quickDate:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"MM/dd/YYYY-HH:mm:ss"];
  v6 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v5 setTimeZone:v6];

  v7 = [v5 stringFromDate:v4];

  return v7;
}

- (NSString)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v3 setNumberStyle:1];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_bucketCounts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v3 stringFromNumber:*(*(&v16 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:{@", "}];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [(HKQuantityDistributionChartPoint *)self _quickDate:self->_bucketDate];
  v14 = [v12 stringWithFormat:@"chartpoint{%@ min %@ max %@ bfloor %lg bsize %lg [%@]}", v13, self->_minimumY, self->_maximumY, *&self->_minimumBucketValue, *&self->_bucketIncrement, v11, v16];

  return v14;
}

- (id)allYValues
{
  v5[2] = *MEMORY[0x1E69E9840];
  maximumY = self->_maximumY;
  v5[0] = self->_minimumY;
  v5[1] = maximumY;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

@end