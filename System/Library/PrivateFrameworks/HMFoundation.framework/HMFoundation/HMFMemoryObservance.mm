@interface HMFMemoryObservance
- (HMFMemoryObservance)initWithDebounceInterval:(double)interval events:(id)events;
@end

@implementation HMFMemoryObservance

- (HMFMemoryObservance)initWithDebounceInterval:(double)interval events:(id)events
{
  eventsCopy = events;
  if (!eventsCopy)
  {
    _HMFPreconditionFailure(@"events");
  }

  v7 = eventsCopy;
  v15.receiver = self;
  v15.super_class = HMFMemoryObservance;
  v8 = [(HMFMemoryObservance *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_debounceInterval = interval;
    v10 = [v7 copy];
    events = v9->_events;
    v9->_events = v10;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastUpdateDate = v9->_lastUpdateDate;
    v9->_lastUpdateDate = distantPast;
  }

  return v9;
}

@end