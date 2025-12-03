@interface _BPSMergedSide
- (_BPSMergedSide)initWithIndex:(int64_t)index merger:(id)merger;
- (int64_t)receiveInput:(id)input;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSMergedSide

- (_BPSMergedSide)initWithIndex:(int64_t)index merger:(id)merger
{
  mergerCopy = merger;
  v11.receiver = self;
  v11.super_class = _BPSMergedSide;
  v8 = [(_BPSMergedSide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_index = index;
    objc_storeStrong(&v8->_merger, merger);
  }

  return v9;
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  merger = [(_BPSMergedSide *)selfCopy merger];
  [merger receiveCompletion:completionCopy atIndex:{-[_BPSMergedSide index](selfCopy, "index")}];
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  inputCopy = input;
  merger = [(_BPSMergedSide *)selfCopy merger];
  v7 = [merger receiveInput:inputCopy atIndex:{-[_BPSMergedSide index](selfCopy, "index")}];

  return v7;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  merger = [(_BPSMergedSide *)self merger];
  [merger receiveSubscription:subscriptionCopy atIndex:{-[_BPSMergedSide index](self, "index")}];
}

@end