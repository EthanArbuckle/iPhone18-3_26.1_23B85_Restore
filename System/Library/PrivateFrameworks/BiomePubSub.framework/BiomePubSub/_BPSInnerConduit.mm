@interface _BPSInnerConduit
- (_BPSInnerConduit)initWithParent:(id)a3 downstream:(id)a4;
- (id)upstreamSubscriptions;
- (void)cancel;
- (void)finishWithCompletion:(id)a3;
- (void)offerInput:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSInnerConduit

- (_BPSInnerConduit)initWithParent:(id)a3 downstream:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _BPSInnerConduit;
  v9 = [(_BPSInnerConduit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parent, a3);
    objc_storeStrong(&v10->_downstream, a4);
    v10->_released = 0;
    v10->_demand = 0;
    v10->_identity = -1;
    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_downstreamLock = 0;
  }

  return v10;
}

- (void)offerInput:(id)a3
{
  v7 = a3;
  v4 = self;
  os_unfair_lock_lock(&v4->_lock);
  if ([(_BPSInnerConduit *)v4 demand]>= 1 && ![(_BPSInnerConduit *)v4 released])
  {
    [(_BPSInnerConduit *)v4 setDemand:[(_BPSInnerConduit *)v4 demand]- 1];
    os_unfair_lock_unlock(&v4->_lock);
    os_unfair_recursive_lock_lock_with_options();
    v5 = [(_BPSInnerConduit *)v4 downstream];
    v6 = [v5 receiveInput:v7];

    os_unfair_recursive_lock_unlock();
    if (v6 < 1)
    {
      goto LABEL_6;
    }

    os_unfair_lock_lock(&v4->_lock);
    [(_BPSInnerConduit *)v4 setDemand:[(_BPSInnerConduit *)v4 demand]+ v6];
  }

  os_unfair_lock_unlock(&v4->_lock);
LABEL_6:
}

- (void)finishWithCompletion:(id)a3
{
  v6 = a3;
  v4 = self;
  os_unfair_lock_lock(&v4->_lock);
  if ([(_BPSInnerConduit *)v4 released])
  {
    os_unfair_lock_unlock(&v4->_lock);
  }

  else
  {
    [(_BPSInnerConduit *)v4 setReleased:1];
    v5 = [(_BPSInnerConduit *)v4 downstream];
    [(_BPSInnerConduit *)v4 setDownstream:0];
    os_unfair_lock_unlock(&v4->_lock);
    [v5 receiveCompletion:v6];
  }
}

- (void)requestDemand:(int64_t)a3
{
  v6 = self;
  if (a3 <= 0)
  {
    [(_BPSInnerConduit *)a2 requestDemand:v6];
  }

  os_unfair_lock_lock(&v6->_lock);
  if ([(_BPSInnerConduit *)v6 released])
  {
    os_unfair_lock_unlock(&v6->_lock);
  }

  else
  {
    [(_BPSInnerConduit *)v6 setDemand:[(_BPSInnerConduit *)v6 demand]+ a3];
    os_unfair_lock_unlock(&v6->_lock);
    v5 = [(_BPSInnerConduit *)v6 parent];
    [v5 acknowledgeDownstreamDemand];
  }
}

- (void)cancel
{
  v3 = self;
  os_unfair_lock_lock(&v3->_lock);
  if ([(_BPSInnerConduit *)v3 released])
  {
    os_unfair_lock_unlock(&v3->_lock);
  }

  else
  {
    [(_BPSInnerConduit *)v3 setReleased:1];
    os_unfair_lock_unlock(&v3->_lock);
    v2 = [(_BPSInnerConduit *)v3 parent];
    [v2 disassociate:{-[_BPSInnerConduit identity](v3, "identity")}];

    [(_BPSInnerConduit *)v3 setParent:0];
    [(_BPSInnerConduit *)v3 setDownstream:0];
  }
}

- (id)upstreamSubscriptions
{
  v2 = [(_BPSInnerConduit *)self parent];
  v3 = [v2 upstreamSubscriptions];

  return v3;
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSPassThroughSubject.m" lineNumber:113 description:@"Demand should be greater than 0"];
}

@end