@interface HMDEventCounter
- (HMDEventCounter)initWithCount:(unint64_t)count;
@end

@implementation HMDEventCounter

- (HMDEventCounter)initWithCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = HMDEventCounter;
  result = [(HMDEventCounter *)&v5 init];
  if (result)
  {
    result->_count = count;
  }

  return result;
}

@end