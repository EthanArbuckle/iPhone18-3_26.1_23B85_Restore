@interface _CNObservableEventBufferingStrategy
+ (id)strategyWithEvents:(id)events;
+ (id)strategyWithQueue:(id)queue;
- (BOOL)isSequenceTerminated;
- (id)allEvents;
- (void)addEvent:(id)event;
@end

@implementation _CNObservableEventBufferingStrategy

+ (id)strategyWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[_CNObservableEventDynamicQueueBufferingStrategy alloc] initWithQueue:queueCopy];

  return v4;
}

+ (id)strategyWithEvents:(id)events
{
  eventsCopy = events;
  v4 = [[_CNObservableEventStaticArrayBufferingStrategy alloc] initWithEvents:eventsCopy];

  return v4;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  v6 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

- (id)allEvents
{
  v2 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (BOOL)isSequenceTerminated
{
  v2 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

@end