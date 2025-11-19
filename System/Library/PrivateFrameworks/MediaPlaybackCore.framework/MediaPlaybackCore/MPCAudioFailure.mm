@interface MPCAudioFailure
+ (id)multiSamplesFailure:(double)a3 duration:(double)a4;
+ (id)singleSampleFailure:(double)a3 duration:(double)a4;
- (MPCAudioFailure)initWithType:(int64_t)a3 startTime:(double)a4 duration:(double)a5;
@end

@implementation MPCAudioFailure

- (MPCAudioFailure)initWithType:(int64_t)a3 startTime:(double)a4 duration:(double)a5
{
  v9.receiver = self;
  v9.super_class = MPCAudioFailure;
  result = [(MPCAudioFailure *)&v9 init];
  if (result)
  {
    result->_type = a3;
    result->_startTime = a4;
    result->_duration = a5;
  }

  return result;
}

+ (id)multiSamplesFailure:(double)a3 duration:(double)a4
{
  v4 = [[MPCAudioFailure alloc] initWithType:1 startTime:a3 duration:a4];

  return v4;
}

+ (id)singleSampleFailure:(double)a3 duration:(double)a4
{
  v4 = [[MPCAudioFailure alloc] initWithType:0 startTime:a3 duration:a4];

  return v4;
}

@end