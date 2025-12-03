@interface FIUIChartPointNumeric
+ (id)chartPointWithXValue:(id)value yValue:(id)yValue;
- (FIUIChartPointNumeric)initWithXValue:(id)value yValue:(id)yValue;
@end

@implementation FIUIChartPointNumeric

+ (id)chartPointWithXValue:(id)value yValue:(id)yValue
{
  yValueCopy = yValue;
  valueCopy = value;
  v8 = [[self alloc] initWithXValue:valueCopy yValue:yValueCopy];

  return v8;
}

- (FIUIChartPointNumeric)initWithXValue:(id)value yValue:(id)yValue
{
  valueCopy = value;
  yValueCopy = yValue;
  v9 = [(FIUIChartPointNumeric *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xValue, value);
    objc_storeStrong(&v10->_yValue, yValue);
  }

  return v10;
}

@end