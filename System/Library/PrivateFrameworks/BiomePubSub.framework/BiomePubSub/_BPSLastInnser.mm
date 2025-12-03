@interface _BPSLastInnser
- (_BPSLastInnser)initWithDownstream:(id)downstream;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSLastInnser

- (_BPSLastInnser)initWithDownstream:(id)downstream
{
  downstreamCopy = downstream;
  v9.receiver = self;
  v9.super_class = _BPSLastInnser;
  v6 = [(_BPSLastInnser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downstream, downstream);
  }

  return v7;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  downstream = [(_BPSLastInnser *)self downstream];
  [downstream receiveSubscription:subscriptionCopy];
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  [(_BPSLastInnser *)selfCopy setLast:input];

  return 1;
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  downstream = [(_BPSLastInnser *)selfCopy downstream];
  last = [(_BPSLastInnser *)selfCopy last];
  [downstream receiveInput:last];

  downstream2 = [(_BPSLastInnser *)selfCopy downstream];
  [downstream2 receiveCompletion:completionCopy];
}

- (void)cancel
{
  selfCopy = self;
  downstream = [(_BPSLastInnser *)selfCopy downstream];
  [downstream cancel];
}

@end