@interface MPCSample
- (MPCSample)initWithLevel:(double)a3 time:(double)a4 state:(int64_t)a5;
@end

@implementation MPCSample

- (MPCSample)initWithLevel:(double)a3 time:(double)a4 state:(int64_t)a5
{
  v10.receiver = self;
  v10.super_class = MPCSample;
  result = [(MPCSample *)&v10 init];
  v9 = initWithLevel_time_state__number;
  if (result)
  {
    result->_level = a3;
    result->_time = a4;
    result->_number = v9;
    result->_state = a5;
  }

  initWithLevel_time_state__number = v9 + 1;
  return result;
}

@end