@interface _CNObservableEventDynamicQueueBufferingStrategy
- (_CNObservableEventDynamicQueueBufferingStrategy)initWithQueue:(id)a3;
- (id)allEvents;
- (void)addEvent:(id)a3;
@end

@implementation _CNObservableEventDynamicQueueBufferingStrategy

- (id)allEvents
{
  v2 = [(_CNObservableEventDynamicQueueBufferingStrategy *)self queue];
  v3 = [v2 allObjects];

  return v3;
}

- (_CNObservableEventDynamicQueueBufferingStrategy)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNObservableEventDynamicQueueBufferingStrategy;
  v6 = [(_CNObservableEventDynamicQueueBufferingStrategy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = v7;
  }

  return v7;
}

- (void)addEvent:(id)a3
{
  v4 = a3;
  v5 = [(_CNObservableEventDynamicQueueBufferingStrategy *)self queue];
  [v5 enqueue:v4];
}

@end