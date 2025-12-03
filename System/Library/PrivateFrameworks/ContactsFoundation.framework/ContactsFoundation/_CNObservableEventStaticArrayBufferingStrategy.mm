@interface _CNObservableEventStaticArrayBufferingStrategy
- (_CNObservableEventStaticArrayBufferingStrategy)initWithEvents:(id)events;
@end

@implementation _CNObservableEventStaticArrayBufferingStrategy

- (_CNObservableEventStaticArrayBufferingStrategy)initWithEvents:(id)events
{
  eventsCopy = events;
  v10.receiver = self;
  v10.super_class = _CNObservableEventStaticArrayBufferingStrategy;
  v5 = [(_CNObservableEventStaticArrayBufferingStrategy *)&v10 init];
  if (v5)
  {
    v6 = [eventsCopy copy];
    events = v5->_events;
    v5->_events = v6;

    v8 = v5;
  }

  return v5;
}

@end