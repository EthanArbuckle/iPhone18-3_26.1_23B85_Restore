@interface MPCSample
- (MPCSample)initWithLevel:(double)level time:(double)time state:(int64_t)state;
@end

@implementation MPCSample

- (MPCSample)initWithLevel:(double)level time:(double)time state:(int64_t)state
{
  v10.receiver = self;
  v10.super_class = MPCSample;
  result = [(MPCSample *)&v10 init];
  v9 = initWithLevel_time_state__number;
  if (result)
  {
    result->_level = level;
    result->_time = time;
    result->_number = v9;
    result->_state = state;
  }

  initWithLevel_time_state__number = v9 + 1;
  return result;
}

@end