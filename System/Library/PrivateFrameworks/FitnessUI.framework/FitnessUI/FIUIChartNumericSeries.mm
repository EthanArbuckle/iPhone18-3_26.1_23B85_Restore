@interface FIUIChartNumericSeries
- (CGPoint)_CGPointFromChartPoint:(id)a3;
- (id)CGPointsFromDataSet;
@end

@implementation FIUIChartNumericSeries

- (id)CGPointsFromDataSet
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(FIUIChartSeries *)self dataSet];
  v5 = [v4 points];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(FIUIChartNumericSeries *)self _CGPointFromChartPoint:*(*(&v12 + 1) + 8 * i)];
        v10 = [MEMORY[0x1E696B098] valueWithCGPoint:?];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (CGPoint)_CGPointFromChartPoint:(id)a3
{
  v4 = a3;
  [(FIUIChartSeries *)self xValueForPointFromChartPoint:v4];
  v6 = v5;
  v7 = [v4 yValue];

  [(FIUIChartSeries *)self yValueForPointFromChartPointValue:v7];
  v9 = v8;

  v10 = v6;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

@end