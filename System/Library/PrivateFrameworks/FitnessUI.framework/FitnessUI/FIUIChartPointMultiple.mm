@interface FIUIChartPointMultiple
+ (id)chartPointWithDate:(id)date valueIndexSet:(id)set;
+ (id)chartPointWithXValue:(id)value yValue:(id)yValue;
- (NSNumber)maxYValue;
- (NSNumber)minYValue;
@end

@implementation FIUIChartPointMultiple

+ (id)chartPointWithDate:(id)date valueIndexSet:(id)set
{
  setCopy = set;
  dateCopy = date;
  v7 = objc_alloc_init(FIUIChartPointMultiple);
  [(FIUIChartPointMultiple *)v7 setXValue:dateCopy];

  [(FIUIChartPointMultiple *)v7 setYValue:setCopy];

  return v7;
}

+ (id)chartPointWithXValue:(id)value yValue:(id)yValue
{
  v22 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  yValueCopy = yValue;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = yValueCopy;
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
        [indexSet addIndex:llround(v14)];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [self chartPointWithDate:valueCopy valueIndexSet:indexSet];

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