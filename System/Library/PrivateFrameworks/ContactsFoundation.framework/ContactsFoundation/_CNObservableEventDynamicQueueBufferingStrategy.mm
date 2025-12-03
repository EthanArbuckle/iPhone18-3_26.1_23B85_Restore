@interface _CNObservableEventDynamicQueueBufferingStrategy
- (_CNObservableEventDynamicQueueBufferingStrategy)initWithQueue:(id)queue;
- (id)allEvents;
- (void)addEvent:(id)event;
@end

@implementation _CNObservableEventDynamicQueueBufferingStrategy

- (id)allEvents
{
  queue = [(_CNObservableEventDynamicQueueBufferingStrategy *)self queue];
  allObjects = [queue allObjects];

  return allObjects;
}

- (_CNObservableEventDynamicQueueBufferingStrategy)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = _CNObservableEventDynamicQueueBufferingStrategy;
  v6 = [(_CNObservableEventDynamicQueueBufferingStrategy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = v7;
  }

  return v7;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  queue = [(_CNObservableEventDynamicQueueBufferingStrategy *)self queue];
  [queue enqueue:eventCopy];
}

@end