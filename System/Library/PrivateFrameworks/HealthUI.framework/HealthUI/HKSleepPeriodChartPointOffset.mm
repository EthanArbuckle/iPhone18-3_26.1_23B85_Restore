@interface HKSleepPeriodChartPointOffset
+ (id)chartPointOffsetWithValue:(id)a3 continuation:(BOOL)a4;
- (HKSleepPeriodChartPointOffset)initWithValue:(id)a3 continuation:(BOOL)a4;
@end

@implementation HKSleepPeriodChartPointOffset

+ (id)chartPointOffsetWithValue:(id)a3 continuation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithValue:v6 continuation:v4];

  return v7;
}

- (HKSleepPeriodChartPointOffset)initWithValue:(id)a3 continuation:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HKSleepPeriodChartPointOffset;
  v8 = [(HKSleepPeriodChartPointOffset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, a3);
    v9->_continuation = a4;
  }

  return v9;
}

@end