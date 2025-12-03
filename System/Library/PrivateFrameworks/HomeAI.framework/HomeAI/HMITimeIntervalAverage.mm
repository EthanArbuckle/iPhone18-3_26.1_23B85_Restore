@interface HMITimeIntervalAverage
- (HMITimeIntervalAverage)initWithMaxCapacity:(int64_t)capacity;
- (void)addValue:(double)value;
@end

@implementation HMITimeIntervalAverage

- (HMITimeIntervalAverage)initWithMaxCapacity:(int64_t)capacity
{
  v8.receiver = self;
  v8.super_class = HMITimeIntervalAverage;
  v4 = [(HMITimeIntervalAverage *)&v8 init];
  if (v4)
  {
    v5 = [[MovingAverage alloc] initWithWindowSize:capacity];
    average = v4->_average;
    v4->_average = v5;
  }

  return v4;
}

- (void)addValue:(double)value
{
  average = self->_average;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [(MovingAverage *)average addNumber:v4];
}

@end