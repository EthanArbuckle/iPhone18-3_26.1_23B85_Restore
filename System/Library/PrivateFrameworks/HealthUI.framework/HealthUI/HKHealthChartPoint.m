@interface HKHealthChartPoint
- (HKHealthChartPoint)initWithDataSourceValue:(id)a3 options:(unint64_t)a4 unit:(id)a5 displayType:(id)a6;
- (HKHealthChartPoint)initWithStatistics:(id)a3 options:(unint64_t)a4 unit:(id)a5 displayType:(id)a6 sourceTimeZone:(id)a7;
- (NSString)description;
- (id)allYValues;
- (id)maxYValue;
- (id)minYValue;
- (id)yValue;
- (id)yValueForKey:(id)a3;
@end

@implementation HKHealthChartPoint

- (NSString)description
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  sum = self->_sum;
  if (sum)
  {
    [v3 setObject:sum forKeyedSubscript:@"sum"];
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

  v10 = [MEMORY[0x1E696AD60] string];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [v4 allKeys];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v4 objectForKeyedSubscript:v16];
        [v10 appendFormat:@"%@=%@ ", v16, v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

  v21 = [v18 stringByAppendingFormat:@"%@;%@", date, v10];;

  return v21;
}

- (HKHealthChartPoint)initWithStatistics:(id)a3 options:(unint64_t)a4 unit:(id)a5 displayType:(id)a6 sourceTimeZone:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v63.receiver = self;
  v63.super_class = HKHealthChartPoint;
  v16 = [(HKHealthChartPoint *)&v63 init];
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = [v12 startDate];
  v18 = [v12 endDate];
  v19 = HKUIMidDate(v17, v18);
  v20 = [v19 hk_dateFromSourceTimeZone:v15];
  date = v16->_date;
  v16->_date = v20;

  if ((v10 & 0x10) != 0)
  {
    v22 = [v12 sumQuantity];
    v23 = v22;
    if (v22)
    {
      v24 = MEMORY[0x1E696AD98];
      [v22 doubleValueForUnit:v13];
      v25 = [v24 numberWithDouble:?];
      sum = v16->_sum;
      v16->_sum = v25;

      v27 = [v14 presentation];
      v28 = [v27 adjustedValueForDaemonValue:v16->_sum];
      v29 = v16->_sum;
      v16->_sum = v28;
    }

    if ((v10 & 2) == 0)
    {
LABEL_4:
      if ((v10 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_4;
  }

  v30 = [v12 averageQuantity];
  v31 = v30;
  if (v30)
  {
    v32 = MEMORY[0x1E696AD98];
    [v30 doubleValueForUnit:v13];
    v33 = [v32 numberWithDouble:?];
    avg = v16->_avg;
    v16->_avg = v33;

    v35 = [v14 presentation];
    v36 = [v35 adjustedValueForDaemonValue:v16->_avg];
    v37 = v16->_avg;
    v16->_avg = v36;
  }

  if ((v10 & 4) == 0)
  {
LABEL_5:
    if ((v10 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  v38 = [v12 minimumQuantity];
  v39 = v38;
  if (v38)
  {
    v40 = MEMORY[0x1E696AD98];
    [v38 doubleValueForUnit:v13];
    v41 = [v40 numberWithDouble:?];
    min = v16->_min;
    v16->_min = v41;

    v43 = [v14 presentation];
    v44 = [v43 adjustedValueForDaemonValue:v16->_min];
    v45 = v16->_min;
    v16->_min = v44;
  }

  if ((v10 & 8) == 0)
  {
LABEL_6:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_17:
  v46 = [v12 maximumQuantity];
  v47 = v46;
  if (v46)
  {
    v48 = MEMORY[0x1E696AD98];
    [v46 doubleValueForUnit:v13];
    v49 = [v48 numberWithDouble:?];
    max = v16->_max;
    v16->_max = v49;

    v51 = [v14 presentation];
    v52 = [v51 adjustedValueForDaemonValue:v16->_max];
    v53 = v16->_max;
    v16->_max = v52;
  }

  if ((v10 & 0x20) != 0)
  {
LABEL_20:
    v54 = [v12 mostRecentQuantity];
    v55 = v54;
    if (v54)
    {
      v56 = MEMORY[0x1E696AD98];
      [v54 doubleValueForUnit:v13];
      v57 = [v56 numberWithDouble:?];
      mostRecent = v16->_mostRecent;
      v16->_mostRecent = v57;

      v59 = [v14 presentation];
      v60 = [v59 adjustedValueForDaemonValue:v16->_mostRecent];
      v61 = v16->_mostRecent;
      v16->_mostRecent = v60;
    }
  }

LABEL_23:

  return v16;
}

- (HKHealthChartPoint)initWithDataSourceValue:(id)a3 options:(unint64_t)a4 unit:(id)a5 displayType:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v59.receiver = self;
  v59.super_class = HKHealthChartPoint;
  v13 = [(HKHealthChartPoint *)&v59 init];
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = [v10 startDate];
  v15 = [v10 endDate];
  v16 = HKUIMidDate(v14, v15);
  date = v13->_date;
  v13->_date = v16;

  if ((v8 & 0x10) != 0)
  {
    v18 = [v10 sumQuantity];
    v19 = v18;
    if (v18)
    {
      v20 = MEMORY[0x1E696AD98];
      [v18 doubleValueForUnit:v11];
      v21 = [v20 numberWithDouble:?];
      sum = v13->_sum;
      v13->_sum = v21;

      v23 = [v12 presentation];
      v24 = [v23 adjustedValueForDaemonValue:v13->_sum];
      v25 = v13->_sum;
      v13->_sum = v24;
    }

    if ((v8 & 2) == 0)
    {
LABEL_4:
      if ((v8 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_4;
  }

  v26 = [v10 averageQuantity];
  v27 = v26;
  if (v26)
  {
    v28 = MEMORY[0x1E696AD98];
    [v26 doubleValueForUnit:v11];
    v29 = [v28 numberWithDouble:?];
    avg = v13->_avg;
    v13->_avg = v29;

    v31 = [v12 presentation];
    v32 = [v31 adjustedValueForDaemonValue:v13->_avg];
    v33 = v13->_avg;
    v13->_avg = v32;
  }

  if ((v8 & 4) == 0)
  {
LABEL_5:
    if ((v8 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  v34 = [v10 minQuantity];
  v35 = v34;
  if (v34)
  {
    v36 = MEMORY[0x1E696AD98];
    [v34 doubleValueForUnit:v11];
    v37 = [v36 numberWithDouble:?];
    min = v13->_min;
    v13->_min = v37;

    v39 = [v12 presentation];
    v40 = [v39 adjustedValueForDaemonValue:v13->_min];
    v41 = v13->_min;
    v13->_min = v40;
  }

  if ((v8 & 8) == 0)
  {
LABEL_6:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_17:
  v42 = [v10 maxQuantity];
  v43 = v42;
  if (v42)
  {
    v44 = MEMORY[0x1E696AD98];
    [v42 doubleValueForUnit:v11];
    v45 = [v44 numberWithDouble:?];
    max = v13->_max;
    v13->_max = v45;

    v47 = [v12 presentation];
    v48 = [v47 adjustedValueForDaemonValue:v13->_max];
    v49 = v13->_max;
    v13->_max = v48;
  }

  if ((v8 & 0x20) != 0)
  {
LABEL_20:
    v50 = [v10 mostRecentQuantity];
    v51 = v50;
    if (v50)
    {
      v52 = MEMORY[0x1E696AD98];
      [v50 doubleValueForUnit:v11];
      v53 = [v52 numberWithDouble:?];
      mostRecent = v13->_mostRecent;
      v13->_mostRecent = v53;

      v55 = [v12 presentation];
      v56 = [v55 adjustedValueForDaemonValue:v13->_mostRecent];
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

- (id)yValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"min"])
  {
    v5 = 24;
LABEL_11:
    v6 = *(&self->super.isa + v5);
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"max"])
  {
    v5 = 32;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"avg"])
  {
    v5 = 40;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"sum"])
  {
    v5 = 16;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"mostRecent"])
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_avg)
  {
    [v3 addObject:?];
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
    v5 = [(HKHealthChartPoint *)self allYValues];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (!v4 || [*(*(&v13 + 1) + 8 * i) compare:v4] == -1)
          {
            v11 = v10;

            v4 = v11;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    v5 = [(HKHealthChartPoint *)self allYValues];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (!v4 || [*(*(&v13 + 1) + 8 * i) compare:v4] == 1)
          {
            v11 = v10;

            v4 = v11;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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