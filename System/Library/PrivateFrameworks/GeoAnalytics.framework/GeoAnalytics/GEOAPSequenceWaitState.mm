@interface GEOAPSequenceWaitState
- (GEOAPSequenceWaitState)initWithName:(id)name waitTime:(double)time;
@end

@implementation GEOAPSequenceWaitState

- (GEOAPSequenceWaitState)initWithName:(id)name waitTime:(double)time
{
  v6.receiver = self;
  v6.super_class = GEOAPSequenceWaitState;
  result = [(GEOAPSequenceState *)&v6 initWithName:name];
  if (result)
  {
    result->_waitTime = time;
  }

  return result;
}

@end