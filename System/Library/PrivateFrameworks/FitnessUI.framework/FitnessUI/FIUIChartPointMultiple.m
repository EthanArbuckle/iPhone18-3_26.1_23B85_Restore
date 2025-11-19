@interface FIUIChartPointMultiple
+ (id)chartPointWithDate:(id)a3 valueIndexSet:(id)a4;
+ (id)chartPointWithXValue:(id)a3 yValue:(id)a4;
- (NSNumber)maxYValue;
- (NSNumber)minYValue;
@end

@implementation FIUIChartPointMultiple

+ (id)chartPointWithDate:(id)a3 valueIndexSet:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(FIUIChartPointMultiple);
  [(FIUIChartPointMultiple *)v7 setXValue:v6];

  [(FIUIChartPointMultiple *)v7 setYValue:v5];

  return v7;
}

+ (id)chartPointWithXValue:(id)a3 yValue:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AD50] indexSet];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * i) doubleValue];
        [v8 addIndex:llround(v14)];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [a1 chartPointWithDate:v6 valueIndexSet:v8];

  return v15;
}

- (NSNumber)minYValue
{
  v3 = [(NSIndexSet *)self->_yValue count];
  if (v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSIndexSet firstIndex](self->_yValue, "firstIndex")}];
  }

  return v3;
}

- (NSNumber)maxYValue
{
  v3 = [(NSIndexSet *)self->_yValue count];
  if (v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSIndexSet lastIndex](self->_yValue, "lastIndex")}];
  }

  return v3;
}

@end