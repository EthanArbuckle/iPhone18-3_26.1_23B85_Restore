@interface MPCAudioFailure
+ (id)multiSamplesFailure:(double)failure duration:(double)duration;
+ (id)singleSampleFailure:(double)failure duration:(double)duration;
- (MPCAudioFailure)initWithType:(int64_t)type startTime:(double)time duration:(double)duration;
@end

@implementation MPCAudioFailure

- (MPCAudioFailure)initWithType:(int64_t)type startTime:(double)time duration:(double)duration
{
  v9.receiver = self;
  v9.super_class = MPCAudioFailure;
  result = [(MPCAudioFailure *)&v9 init];
  if (result)
  {
    result->_type = type;
    result->_startTime = time;
    result->_duration = duration;
  }

  return result;
}

+ (id)multiSamplesFailure:(double)failure duration:(double)duration
{
  v4 = [[MPCAudioFailure alloc] initWithType:1 startTime:failure duration:duration];

  return v4;
}

+ (id)singleSampleFailure:(double)failure duration:(double)duration
{
  v4 = [[MPCAudioFailure alloc] initWithType:0 startTime:failure duration:duration];

  return v4;
}

@end