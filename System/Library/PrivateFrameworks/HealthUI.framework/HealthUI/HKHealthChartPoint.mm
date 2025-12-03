@interface HKHealthChartPoint
- (HKHealthChartPoint)initWithDataSourceValue:(id)value options:(unint64_t)options unit:(id)unit displayType:(id)type;
- (HKHealthChartPoint)initWithStatistics:(id)statistics options:(unint64_t)options unit:(id)unit displayType:(id)type sourceTimeZone:(id)zone;
- (NSString)description;
- (id)allYValues;
- (id)maxYValue;
- (id)minYValue;
- (id)yValue;
- (id)yValueForKey:(id)key;
@end

@implementation HKHealthChartPoint

- (NSString)description
{
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  sum = self->_sum;
  if (sum)
  {
    [dictionary setObject:sum forKeyedSubscript:@"sum"];
  }

  min = self->_min;
  if (min)
  {
    [v4 setObject:min forKeyedSubscript:@"min"];
  }

  max = self->_max;
  if (max)
  {
    [v4 setObject:max forKeyedSubscript:@"max"];
  }

  avg = self->_avg;
  if (avg)
  {
    [v4 setObject:avg forKeyedSubscript:@"avg"];
  }

  mostRecent = self->_mostRecent;
  if (mostRecent)
  {
    [v4 setObject:mostRecent forKeyedSubscript:@"mostRecent"];
  }

  string = [MEMORY[0x1E696AD60] string];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [v4 allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v4 objectForKeyedSubscript:v16];
        [string appendFormat:@"%@=%@ ", v16, v17];
      }

      v13 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v23.receiver = self;
  v23.super_class = HKHealthChartPoint;
  v18 = [(HKHealthChartPoint *)&v23 description];
  v19 = v18;
  date = self->_date;
  if (!date)
  {
    date = &stru_1F42FFBE0;
  }

  v21 = [v18 stringByAppendingFormat:@"%@;%@", date, string];;

  return v21;
}

- (HKHealthChartPoint)initWithStatistics:(id)statistics options:(unint64_t)options unit:(id)unit displayType:(id)type sourceTimeZone:(id)zone
{
  optionsCopy = options;
  statisticsCopy = statistics;
  unitCopy = unit;
  typeCopy = type;
  zoneCopy = zone;
  v63.receiver = self;
  v63.super_class = HKHealthChartPoint;
  v16 = [(HKHealthChartPoint *)&v63 init];
  if (!v16)
  {
    goto LABEL_23;
  }

  startDate = [statisticsCopy startDate];
  endDate = [statisticsCopy endDate];
  v19 = HKUIMidDate(startDate, endDate);
  v20 = [v19 hk_dateFromSourceTimeZone:zoneCopy];
  date = v16->_date;
  v16->_date = v20;

  if ((optionsCopy & 0x10) != 0)
  {
    sumQuantity = [statisticsCopy sumQuantity];
    v23 = sumQuantity;
    if (sumQuantity)
    {
      v24 = MEMORY[0x1E696AD98];
      [sumQuantity doubleValueForUnit:unitCopy];
      v25 = [v24 numberWithDouble:?];
      sum = v16->_sum;
      v16->_sum = v25;

      presentation = [typeCopy presentation];
      v28 = [presentation adjustedValueForDaemonValue:v16->_sum];
      v29 = v16->_sum;
      v16->_sum = v28;
    }

    if ((optionsCopy & 2) == 0)
    {
LABEL_4:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((optionsCopy & 2) == 0)
  {
    goto LABEL_4;
  }

  averageQuantity = [statisticsCopy averageQuantity];
  v31 = averageQuantity;
  if (averageQuantity)
  {
    v32 = MEMORY[0x1E696AD98];
    [averageQuantity doubleValueForUnit:unitCopy];
    v33 = [v32 numberWithDouble:?];
    avg = v16->_avg;
    v16->_avg = v33;

    presentation2 = [typeCopy presentation];
    v36 = [presentation2 adjustedValueForDaemonValue:v16->_avg];
    v37 = v16->_avg;
    v16->_avg = v36;
  }

  if ((optionsCopy & 4) == 0)
  {
LABEL_5:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  minimumQuantity = [statisticsCopy minimumQuantity];
  v39 = minimumQuantity;
  if (minimumQuantity)
  {
    v40 = MEMORY[0x1E696AD98];
    [minimumQuantity doubleValueForUnit:unitCopy];
    v41 = [v40 numberWithDouble:?];
    min = v16->_min;
    v16->_min = v41;

    presentation3 = [typeCopy presentation];
    v44 = [presentation3 adjustedValueForDaemonValue:v16->_min];
    v45 = v16->_min;
    v16->_min = v44;
  }

  if ((optionsCopy & 8) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_17:
  maximumQuantity = [statisticsCopy maximumQuantity];
  v47 = maximumQuantity;
  if (maximumQuantity)
  {
    v48 = MEMORY[0x1E696AD98];
    [maximumQuantity doubleValueForUnit:unitCopy];
    v49 = [v48 numberWithDouble:?];
    max = v16->_max;
    v16->_max = v49;

    presentation4 = [typeCopy presentation];
    v52 = [presentation4 adjustedValueForDaemonValue:v16->_max];
    v53 = v16->_max;
    v16->_max = v52;
  }

  if ((optionsCopy & 0x20) != 0)
  {
LABEL_20:
    mostRecentQuantity = [statisticsCopy mostRecentQuantity];
    v55 = mostRecentQuantity;
    if (mostRecentQuantity)
    {
      v56 = MEMORY[0x1E696AD98];
      [mostRecentQuantity doubleValueForUnit:unitCopy];
      v57 = [v56 numberWithDouble:?];
      mostRecent = v16->_mostRecent;
      v16->_mostRecent = v57;

      presentation5 = [typeCopy presentation];
      v60 = [presentation5 adjustedValueForDaemonValue:v16->_mostRecent];
      v61 = v16->_mostRecent;
      v16->_mostRecent = v60;
    }
  }

LABEL_23:

  return v16;
}

- (HKHealthChartPoint)initWithDataSourceValue:(id)value options:(unint64_t)options unit:(id)unit displayType:(id)type
{
  optionsCopy = options;
  valueCopy = value;
  unitCopy = unit;
  typeCopy = type;
  v59.receiver = self;
  v59.super_class = HKHealthChartPoint;
  v13 = [(HKHealthChartPoint *)&v59 init];
  if (!v13)
  {
    goto LABEL_23;
  }

  startDate = [valueCopy startDate];
  endDate = [valueCopy endDate];
  v16 = HKUIMidDate(startDate, endDate);
  date = v13->_date;
  v13->_date = v16;

  if ((optionsCopy & 0x10) != 0)
  {
    sumQuantity = [valueCopy sumQuantity];
    v19 = sumQuantity;
    if (sumQuantity)
    {
      v20 = MEMORY[0x1E696AD98];
      [sumQuantity doubleValueForUnit:unitCopy];
      v21 = [v20 numberWithDouble:?];
      sum = v13->_sum;
      v13->_sum = v21;

      presentation = [typeCopy presentation];
      v24 = [presentation adjustedValueForDaemonValue:v13->_sum];
      v25 = v13->_sum;
      v13->_sum = v24;
    }

    if ((optionsCopy & 2) == 0)
    {
LABEL_4:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((optionsCopy & 2) == 0)
  {
    goto LABEL_4;
  }

  averageQuantity = [valueCopy averageQuantity];
  v27 = averageQuantity;
  if (averageQuantity)
  {
    v28 = MEMORY[0x1E696AD98];
    [averageQuantity doubleValueForUnit:unitCopy];
    v29 = [v28 numberWithDouble:?];
    avg = v13->_avg;
    v13->_avg = v29;

    presentation2 = [typeCopy presentation];
    v32 = [presentation2 adjustedValueForDaemonValue:v13->_avg];
    v33 = v13->_avg;
    v13->_avg = v32;
  }

  if ((optionsCopy & 4) == 0)
  {
LABEL_5:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  minQuantity = [valueCopy minQuantity];
  v35 = minQuantity;
  if (minQuantity)
  {
    v36 = MEMORY[0x1E696AD98];
    [minQuantity doubleValueForUnit:unitCopy];
    v37 = [v36 numberWithDouble:?];
    min = v13->_min;
    v13->_min = v37;

    presentation3 = [typeCopy presentation];
    v40 = [presentation3 adjustedValueForDaemonValue:v13->_min];
    v41 = v13->_min;
    v13->_min = v40;
  }

  if ((optionsCopy & 8) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_17:
  maxQuantity = [valueCopy maxQuantity];
  v43 = maxQuantity;
  if (maxQuantity)
  {
    v44 = MEMORY[0x1E696AD98];
    [maxQuantity doubleValueForUnit:unitCopy];
    v45 = [v44 numberWithDouble:?];
    max = v13->_max;
    v13->_max = v45;

    presentation4 = [typeCopy presentation];
    v48 = [presentation4 adjustedValueForDaemonValue:v13->_max];
    v49 = v13->_max;
    v13->_max = v48;
  }

  if ((optionsCopy & 0x20) != 0)
  {
LABEL_20:
    mostRecentQuantity = [valueCopy mostRecentQuantity];
    v51 = mostRecentQuantity;
    if (mostRecentQuantity)
    {
      v52 = MEMORY[0x1E696AD98];
      [mostRecentQuantity doubleValueForUnit:unitCopy];
      v53 = [v52 numberWithDouble:?];
      mostRecent = v13->_mostRecent;
      v13->_mostRecent = v53;

      presentation5 = [typeCopy presentation];
      v56 = [presentation5 adjustedValueForDaemonValue:v13->_mostRecent];
      v57 = v13->_mostRecent;
      v13->_mostRecent = v56;
    }
  }

LABEL_23:

  return v13;
}

- (id)yValue
{
  avg = self->_avg;
  if (!avg)
  {
    avg = self->_sum;
    if (!avg)
    {
      avg = self->_max;
      if (!avg)
      {
        avg = self->_min;
        if (!avg)
        {
          avg = self->_mostRecent;
        }
      }
    }
  }

  return avg;
}

- (id)yValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"min"])
  {
    v5 = 24;
LABEL_11:
    v6 = *(&self->super.isa + v5);
    goto LABEL_12;
  }

  if ([keyCopy isEqualToString:@"max"])
  {
    v5 = 32;
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"avg"])
  {
    v5 = 40;
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"sum"])
  {
    v5 = 16;
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"mostRecent"])
  {
    v5 = 48;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)allYValues
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_avg)
  {
    [array addObject:?];
  }

  if (self->_sum)
  {
    [v4 addObject:?];
  }

  if (self->_max)
  {
    [v4 addObject:?];
  }

  if (self->_min)
  {
    [v4 addObject:?];
  }

  if (self->_mostRecent)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)minYValue
{
  v18 = *MEMORY[0x1E69E9840];
  p_min = &self->_min;
  min = self->_min;
  if (min)
  {
    v4 = min;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allYValues = [(HKHealthChartPoint *)self allYValues];
    v6 = [allYValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v4 = 0;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(allYValues);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (!v4 || [*(*(&v13 + 1) + 8 * i) compare:v4] == -1)
          {
            v11 = v10;

            v4 = v11;
          }
        }

        v7 = [allYValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong(p_min, v4);
  }

  return v4;
}

- (id)maxYValue
{
  v18 = *MEMORY[0x1E69E9840];
  p_max = &self->_max;
  max = self->_max;
  if (max)
  {
    v4 = max;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allYValues = [(HKHealthChartPoint *)self allYValues];
    v6 = [allYValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v4 = 0;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(allYValues);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (!v4 || [*(*(&v13 + 1) + 8 * i) compare:v4] == 1)
          {
            v11 = v10;

            v4 = v11;
          }
        }

        v7 = [allYValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong(p_max, v4);
  }

  return v4;
}

@end