@interface HMDEventCounter
- (HMDEventCounter)initWithCount:(unint64_t)a3;
@end

@implementation HMDEventCounter

- (HMDEventCounter)initWithCount:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDEventCounter;
  result = [(HMDEventCounter *)&v5 init];
  if (result)
  {
    result->_count = a3;
  }

  return result;
}

@end