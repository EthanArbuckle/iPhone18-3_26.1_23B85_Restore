@interface GEOAPSequenceWaitState
- (GEOAPSequenceWaitState)initWithName:(id)a3 waitTime:(double)a4;
@end

@implementation GEOAPSequenceWaitState

- (GEOAPSequenceWaitState)initWithName:(id)a3 waitTime:(double)a4
{
  v6.receiver = self;
  v6.super_class = GEOAPSequenceWaitState;
  result = [(GEOAPSequenceState *)&v6 initWithName:a3];
  if (result)
  {
    result->_waitTime = a4;
  }

  return result;
}

@end