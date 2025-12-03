@interface HKQuantityDistributionChartPoint
- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)data bucketDate:(id)date bucketIncrement:(double)increment unit:(id)unit displayType:(id)type;
- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)data bucketIncrement:(double)increment unit:(id)unit displayType:(id)type;
- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)data unit:(id)unit displayType:(id)type;
- (NSString)description;
- (id)_quickDate:(id)date;
- (id)allYValues;
@end

@implementation HKQuantityDistributionChartPoint

- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)data bucketDate:(id)date bucketIncrement:(double)increment unit:(id)unit displayType:(id)type
{
  dataCopy = data;
  dateCopy = date;
  unitCopy = unit;
  typeCopy = type;
  v37.receiver = self;
  v37.super_class = HKQuantityDistributionChartPoint;
  v16 = [(HKQuantityDistributionChartPoint *)&v37 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_bucketDate, date);
    presentation = [typeCopy presentation];
    v19 = MEMORY[0x1E696AD98];
    minimumValue = [dataCopy minimumValue];
    [minimumValue doubleValueForUnit:unitCopy];
    v21 = [v19 numberWithDouble:?];
    v22 = [presentation adjustedValueForDaemonValue:v21];
    minimumY = v17->_minimumY;
    v17->_minimumY = v22;

    presentation2 = [typeCopy presentation];
    v25 = MEMORY[0x1E696AD98];
    maximumValue = [dataCopy maximumValue];
    [maximumValue doubleValueForUnit:unitCopy];
    v27 = [v25 numberWithDouble:?];
    v28 = [presentation2 adjustedValueForDaemonValue:v27];
    maximumY = v17->_maximumY;
    v17->_maximumY = v28;

    presentation3 = [typeCopy presentation];
    minimumBucketValue = [dataCopy minimumBucketValue];
    [minimumBucketValue doubleValueForUnit:unitCopy];
    [presentation3 adjustedDoubleForDaemonDouble:?];
    v17->_minimumBucketValue = v32;

    v17->_bucketIncrement = increment;
    histogramCounts = [dataCopy histogramCounts];
    bucketCounts = v17->_bucketCounts;
    v17->_bucketCounts = histogramCounts;

    userInfo = v17->_userInfo;
    v17->_userInfo = 0;
  }

  return v17;
}

- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)data bucketIncrement:(double)increment unit:(id)unit displayType:(id)type
{
  typeCopy = type;
  unitCopy = unit;
  dataCopy = data;
  startDate = [dataCopy startDate];
  endDate = [dataCopy endDate];
  v15 = HKUIMidDate(startDate, endDate);

  v16 = [(HKQuantityDistributionChartPoint *)self initWithHistogramData:dataCopy bucketDate:v15 bucketIncrement:unitCopy unit:typeCopy displayType:increment];
  return v16;
}

- (HKQuantityDistributionChartPoint)initWithHistogramData:(id)data unit:(id)unit displayType:(id)type
{
  typeCopy = type;
  unitCopy = unit;
  dataCopy = data;
  v11 = [HKQuantityDistributionDataSource bucketSizeForDisplayType:typeCopy preferredUnit:unitCopy];
  startDate = [dataCopy startDate];
  endDate = [dataCopy endDate];
  v14 = HKUIMidDate(startDate, endDate);

  [v11 floatValue];
  v16 = [(HKQuantityDistributionChartPoint *)self initWithHistogramData:dataCopy bucketDate:v14 bucketIncrement:unitCopy unit:typeCopy displayType:v15];

  return v16;
}

- (id)_quickDate:(id)date
{
  v3 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"MM/dd/YYYY-HH:mm:ss"];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v5 setTimeZone:localTimeZone];

  v7 = [v5 stringFromDate:dateCopy];

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