@interface HKGraphSeriesDataBlock
+ (id)emptyDataBlock;
- (void)setChartPoints:(id)a3;
@end

@implementation HKGraphSeriesDataBlock

- (void)setChartPoints:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 copy];
  chartPoints = self->_chartPoints;
  self->_chartPoints = v5;

  if ([v4 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      v11 = 1.79769313e308;
      v12 = 2.22507386e-308;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 minYValue];
          [v15 doubleValue];
          v17 = v16;

          v18 = [v14 maxYValue];
          [v18 doubleValue];
          v20 = v19;

          if (v11 >= v17)
          {
            v11 = v17;
          }

          if (v12 < v20)
          {
            v12 = v20;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 1.79769313e308;
      v12 = 2.22507386e-308;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v23 = [HKValueRange valueRangeWithMinValue:v21 maxValue:v22];
    yValueRange = self->_yValueRange;
    self->_yValueRange = v23;
  }
}

+ (id)emptyDataBlock
{
  v2 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v2 setChartPoints:MEMORY[0x1E695E0F0]];

  return v2;
}

@end