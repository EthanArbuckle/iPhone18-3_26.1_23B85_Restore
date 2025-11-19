@interface _MNTracePlayerTimelineStreamSearchObject
- (_MNTracePlayerTimelineStreamSearchObject)initWithPosition:(double)a3;
@end

@implementation _MNTracePlayerTimelineStreamSearchObject

- (_MNTracePlayerTimelineStreamSearchObject)initWithPosition:(double)a3
{
  v5.receiver = self;
  v5.super_class = _MNTracePlayerTimelineStreamSearchObject;
  result = [(_MNTracePlayerTimelineStreamSearchObject *)&v5 init];
  if (result)
  {
    result->_position = a3;
  }

  return result;
}

@end