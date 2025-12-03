@interface _BPSInnerFutureConduit
- (_BPSInnerFutureConduit)initWithParent:(id)parent downstream:(id)downstream;
- (void)cancel;
- (void)fulfill:(id)fulfill;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSInnerFutureConduit

- (_BPSInnerFutureConduit)initWithParent:(id)parent downstream:(id)downstream
{
  parentCopy = parent;
  downstreamCopy = downstream;
  v12.receiver = self;
  v12.super_class = _BPSInnerFutureConduit;
  v9 = [(_BPSInnerFutureConduit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parent, parent);
    objc_storeStrong(&v10->_downstream, downstream);
    v10->_hasAnyDemand = 0;
    v10->_released = 0;
    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_downstreamLock = 0;
  }

  return v10;
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  v13 = selfCopy;
  if (demand <= 0)
  {
    [(_BPSInnerFutureConduit *)a2 requestDemand:selfCopy];
    selfCopy = v13;
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(os_unfair_lock_s *)v13 released])
  {
    os_unfair_lock_unlock(v13 + 2);
    goto LABEL_14;
  }

  [(os_unfair_lock_s *)v13 setHasAnyDemand:1];
  parent = [(os_unfair_lock_s *)v13 parent];
  result = [parent result];

  if (result)
  {
    downstream = [(os_unfair_lock_s *)v13 downstream];
    [(os_unfair_lock_s *)v13 setReleased:1];
    os_unfair_lock_unlock(v13 + 2);
    os_unfair_recursive_lock_lock_with_options();
    state = [result state];
    if (state == 1)
    {
      error = [result error];
      v12 = [BPSCompletion failureWithError:error];
      [downstream receiveCompletion:v12];
    }

    else
    {
      if (state)
      {
LABEL_12:
        os_unfair_recursive_lock_unlock();

        goto LABEL_13;
      }

      value = [result value];
      [downstream receiveInput:value];

      error = +[BPSCompletion success];
      [downstream receiveCompletion:error];
    }

    goto LABEL_12;
  }

  os_unfair_lock_unlock(v13 + 2);
LABEL_13:

LABEL_14:
}

- (void)fulfill:(id)fulfill
{
  fulfillCopy = fulfill;
  os_unfair_lock_lock(&self->_lock);
  if ([(_BPSInnerFutureConduit *)self released]|| ![(_BPSInnerFutureConduit *)self hasAnyDemand])
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_10;
  }

  downstream = [(_BPSInnerFutureConduit *)self downstream];
  [(_BPSInnerFutureConduit *)self setReleased:1];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  state = [fulfillCopy state];
  if (state == 1)
  {
    error = [fulfillCopy error];
    v8 = [BPSCompletion failureWithError:error];
    [downstream receiveCompletion:v8];

    goto LABEL_8;
  }

  if (!state)
  {
    value = [fulfillCopy value];
    [downstream receiveInput:value];

    error = +[BPSCompletion success];
    [downstream receiveCompletion:error];
LABEL_8:
  }

  os_unfair_recursive_lock_unlock();

LABEL_10:
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if (![(_BPSInnerFutureConduit *)selfCopy released])
  {
    [(_BPSInnerFutureConduit *)selfCopy setReleased:1];
    parent = [(_BPSInnerFutureConduit *)selfCopy parent];
    [parent disassociate:{-[_BPSInnerFutureConduit identifity](selfCopy, "identifity")}];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSFuture.m" lineNumber:181 description:@"Demand should be greater than 0"];
}

@end