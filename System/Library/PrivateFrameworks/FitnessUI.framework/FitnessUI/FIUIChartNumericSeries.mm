@interface FIUIChartNumericSeries
- (CGPoint)_CGPointFromChartPoint:(id)point;
- (id)CGPointsFromDataSet;
@end

@implementation FIUIChartNumericSeries

- (id)CGPointsFromDataSet
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dataSet = [(FIUIChartSeries *)self dataSet];
  points = [dataSet points];

  v6 = [points countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(points);
        }

        [(FIUIChartNumericSeries *)self _CGPointFromChartPoint:*(*(&v12 + 1) + 8 * i)];
        v10 = [MEMORY[0x1E696B098] valueWithCGPoint:?];
        [array addObject:v10];
      }

      v7 = [points countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (CGPoint)_CGPointFromChartPoint:(id)point
{
  pointCopy = point;
  [(FIUIChartSeries *)self xValueForPointFromChartPoint:pointCopy];
  v6 = v5;
  yValue = [pointCopy yValue];

  [(FIUIChartSeries *)self yValueForPointFromChartPointValue:yValue];
  v9 = v8;

  v10 = v6;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

@end