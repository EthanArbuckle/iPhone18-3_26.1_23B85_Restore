@interface FIUIChartPointNumeric
+ (id)chartPointWithXValue:(id)a3 yValue:(id)a4;
- (FIUIChartPointNumeric)initWithXValue:(id)a3 yValue:(id)a4;
@end

@implementation FIUIChartPointNumeric

+ (id)chartPointWithXValue:(id)a3 yValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithXValue:v7 yValue:v6];

  return v8;
}

- (FIUIChartPointNumeric)initWithXValue:(id)a3 yValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FIUIChartPointNumeric *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xValue, a3);
    objc_storeStrong(&v10->_yValue, a4);
  }

  return v10;
}

@end