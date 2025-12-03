@interface BPSOrderedMergeUpstreamState
- (BPSOrderedMergeUpstreamState)initWithCoder:(id)coder;
- (BPSOrderedMergeUpstreamState)initWithNextEvent:(id)event lastReturnedEvent:(id)returnedEvent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BPSOrderedMergeUpstreamState

- (BPSOrderedMergeUpstreamState)initWithNextEvent:(id)event lastReturnedEvent:(id)returnedEvent
{
  eventCopy = event;
  returnedEventCopy = returnedEvent;
  v12.receiver = self;
  v12.super_class = BPSOrderedMergeUpstreamState;
  v9 = [(BPSOrderedMergeUpstreamState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nextEvent, event);
    objc_storeStrong(&v10->_lastReturnedEvent, returnedEvent);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nextEvent = [(BPSOrderedMergeUpstreamState *)self nextEvent];
  [coderCopy encodeObject:nextEvent forKey:@"nextEvent"];

  lastReturnedEvent = [(BPSOrderedMergeUpstreamState *)self lastReturnedEvent];
  [coderCopy encodeObject:lastReturnedEvent forKey:@"lastReturnedEvent"];
}

- (BPSOrderedMergeUpstreamState)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AB10];
  coderCopy = coder;
  bm_allowedClassesForSecureCodingBMBookmark = [v4 bm_allowedClassesForSecureCodingBMBookmark];
  v7 = [coderCopy decodeObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark forKey:@"nextEvent"];
  v8 = [coderCopy decodeObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark forKey:@"lastReturnedEvent"];

  v9 = [(BPSOrderedMergeUpstreamState *)self initWithNextEvent:v7 lastReturnedEvent:v8];
  return v9;
}

@end