@interface _MNTracePlayerTimelineStreamSearchObject
- (_MNTracePlayerTimelineStreamSearchObject)initWithPosition:(double)position;
@end

@implementation _MNTracePlayerTimelineStreamSearchObject

- (_MNTracePlayerTimelineStreamSearchObject)initWithPosition:(double)position
{
  v5.receiver = self;
  v5.super_class = _MNTracePlayerTimelineStreamSearchObject;
  result = [(_MNTracePlayerTimelineStreamSearchObject *)&v5 init];
  if (result)
  {
    result->_position = position;
  }

  return result;
}

@end