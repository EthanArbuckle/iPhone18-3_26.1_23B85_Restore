@interface HKSleepPeriodChartPointOffset
+ (id)chartPointOffsetWithValue:(id)value continuation:(BOOL)continuation;
- (HKSleepPeriodChartPointOffset)initWithValue:(id)value continuation:(BOOL)continuation;
@end

@implementation HKSleepPeriodChartPointOffset

+ (id)chartPointOffsetWithValue:(id)value continuation:(BOOL)continuation
{
  continuationCopy = continuation;
  valueCopy = value;
  v7 = [[self alloc] initWithValue:valueCopy continuation:continuationCopy];

  return v7;
}

- (HKSleepPeriodChartPointOffset)initWithValue:(id)value continuation:(BOOL)continuation
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = HKSleepPeriodChartPointOffset;
  v8 = [(HKSleepPeriodChartPointOffset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    v9->_continuation = continuation;
  }

  return v9;
}

@end