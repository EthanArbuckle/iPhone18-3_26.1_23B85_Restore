@interface _BPSInnerConduit
- (_BPSInnerConduit)initWithParent:(id)parent downstream:(id)downstream;
- (id)upstreamSubscriptions;
- (void)cancel;
- (void)finishWithCompletion:(id)completion;
- (void)offerInput:(id)input;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSInnerConduit

- (_BPSInnerConduit)initWithParent:(id)parent downstream:(id)downstream
{
  parentCopy = parent;
  downstreamCopy = downstream;
  v12.receiver = self;
  v12.super_class = _BPSInnerConduit;
  v9 = [(_BPSInnerConduit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parent, parent);
    objc_storeStrong(&v10->_downstream, downstream);
    v10->_released = 0;
    v10->_demand = 0;
    v10->_identity = -1;
    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_downstreamLock = 0;
  }

  return v10;
}

- (void)offerInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSInnerConduit *)selfCopy demand]>= 1 && ![(_BPSInnerConduit *)selfCopy released])
  {
    [(_BPSInnerConduit *)selfCopy setDemand:[(_BPSInnerConduit *)selfCopy demand]- 1];
    os_unfair_lock_unlock(&selfCopy->_lock);
    os_unfair_recursive_lock_lock_with_options();
    downstream = [(_BPSInnerConduit *)selfCopy downstream];
    v6 = [downstream receiveInput:inputCopy];

    os_unfair_recursive_lock_unlock();
    if (v6 < 1)
    {
      goto LABEL_6;
    }

    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSInnerConduit *)selfCopy setDemand:[(_BPSInnerConduit *)selfCopy demand]+ v6];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_6:
}

- (void)finishWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSInnerConduit *)selfCopy released])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    [(_BPSInnerConduit *)selfCopy setReleased:1];
    downstream = [(_BPSInnerConduit *)selfCopy downstream];
    [(_BPSInnerConduit *)selfCopy setDownstream:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
    [downstream receiveCompletion:completionCopy];
  }
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  if (demand <= 0)
  {
    [(_BPSInnerConduit *)a2 requestDemand:selfCopy];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSInnerConduit *)selfCopy released])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    [(_BPSInnerConduit *)selfCopy setDemand:[(_BPSInnerConduit *)selfCopy demand]+ demand];
    os_unfair_lock_unlock(&selfCopy->_lock);
    parent = [(_BPSInnerConduit *)selfCopy parent];
    [parent acknowledgeDownstreamDemand];
  }
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSInnerConduit *)selfCopy released])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    [(_BPSInnerConduit *)selfCopy setReleased:1];
    os_unfair_lock_unlock(&selfCopy->_lock);
    parent = [(_BPSInnerConduit *)selfCopy parent];
    [parent disassociate:{-[_BPSInnerConduit identity](selfCopy, "identity")}];

    [(_BPSInnerConduit *)selfCopy setParent:0];
    [(_BPSInnerConduit *)selfCopy setDownstream:0];
  }
}

- (id)upstreamSubscriptions
{
  parent = [(_BPSInnerConduit *)self parent];
  upstreamSubscriptions = [parent upstreamSubscriptions];

  return upstreamSubscriptions;
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSPassThroughSubject.m" lineNumber:113 description:@"Demand should be greater than 0"];
}

@end