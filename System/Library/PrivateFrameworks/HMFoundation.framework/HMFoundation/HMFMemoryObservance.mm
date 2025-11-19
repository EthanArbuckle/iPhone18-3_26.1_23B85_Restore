@interface HMFMemoryObservance
- (HMFMemoryObservance)initWithDebounceInterval:(double)a3 events:(id)a4;
@end

@implementation HMFMemoryObservance

- (HMFMemoryObservance)initWithDebounceInterval:(double)a3 events:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure(@"events");
  }

  v7 = v6;
  v15.receiver = self;
  v15.super_class = HMFMemoryObservance;
  v8 = [(HMFMemoryObservance *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_debounceInterval = a3;
    v10 = [v7 copy];
    events = v9->_events;
    v9->_events = v10;

    v12 = [MEMORY[0x277CBEAA8] distantPast];
    lastUpdateDate = v9->_lastUpdateDate;
    v9->_lastUpdateDate = v12;
  }

  return v9;
}

@end