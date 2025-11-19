@interface MTLDebugBufferMarker
- (_NSRange)range;
- (void)dealloc;
@end

@implementation MTLDebugBufferMarker

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugBufferMarker;
  [(MTLDebugBufferMarker *)&v3 dealloc];
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end