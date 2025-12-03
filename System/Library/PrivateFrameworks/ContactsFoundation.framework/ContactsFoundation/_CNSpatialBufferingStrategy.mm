@interface _CNSpatialBufferingStrategy
- (_CNSpatialBufferingStrategy)initWithCapacity:(unint64_t)capacity;
- (void)buffer:(id)buffer didReceiveResults:(id)results forObserver:(id)observer;
@end

@implementation _CNSpatialBufferingStrategy

- (_CNSpatialBufferingStrategy)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = _CNSpatialBufferingStrategy;
  v4 = [(_CNSpatialBufferingStrategy *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = capacity;
    v6 = v4;
  }

  return v5;
}

- (void)buffer:(id)buffer didReceiveResults:(id)results forObserver:(id)observer
{
  bufferCopy = buffer;
  observerCopy = observer;
  if ([results count] >= self->_capacity)
  {
    [bufferCopy sendBufferedResultsToObserver:observerCopy];
  }
}

@end