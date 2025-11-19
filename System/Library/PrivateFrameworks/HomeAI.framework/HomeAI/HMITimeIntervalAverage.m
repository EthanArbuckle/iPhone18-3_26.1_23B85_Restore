@interface HMITimeIntervalAverage
- (HMITimeIntervalAverage)initWithMaxCapacity:(int64_t)a3;
- (void)addValue:(double)a3;
@end

@implementation HMITimeIntervalAverage

- (HMITimeIntervalAverage)initWithMaxCapacity:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = HMITimeIntervalAverage;
  v4 = [(HMITimeIntervalAverage *)&v8 init];
  if (v4)
  {
    v5 = [[MovingAverage alloc] initWithWindowSize:a3];
    average = v4->_average;
    v4->_average = v5;
  }

  return v4;
}

- (void)addValue:(double)a3
{
  average = self->_average;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(MovingAverage *)average addNumber:v4];
}

@end