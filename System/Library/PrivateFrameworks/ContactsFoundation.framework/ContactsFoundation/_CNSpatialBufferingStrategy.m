@interface _CNSpatialBufferingStrategy
- (_CNSpatialBufferingStrategy)initWithCapacity:(unint64_t)a3;
- (void)buffer:(id)a3 didReceiveResults:(id)a4 forObserver:(id)a5;
@end

@implementation _CNSpatialBufferingStrategy

- (_CNSpatialBufferingStrategy)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = _CNSpatialBufferingStrategy;
  v4 = [(_CNSpatialBufferingStrategy *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = a3;
    v6 = v4;
  }

  return v5;
}

- (void)buffer:(id)a3 didReceiveResults:(id)a4 forObserver:(id)a5
{
  v9 = a3;
  v8 = a5;
  if ([a4 count] >= self->_capacity)
  {
    [v9 sendBufferedResultsToObserver:v8];
  }
}

@end