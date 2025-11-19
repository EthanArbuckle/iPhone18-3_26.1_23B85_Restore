@interface _BPSInnerFutureConduit
- (_BPSInnerFutureConduit)initWithParent:(id)a3 downstream:(id)a4;
- (void)cancel;
- (void)fulfill:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSInnerFutureConduit

- (_BPSInnerFutureConduit)initWithParent:(id)a3 downstream:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _BPSInnerFutureConduit;
  v9 = [(_BPSInnerFutureConduit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parent, a3);
    objc_storeStrong(&v10->_downstream, a4);
    v10->_hasAnyDemand = 0;
    v10->_released = 0;
    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_downstreamLock = 0;
  }

  return v10;
}

- (void)requestDemand:(int64_t)a3
{
  v5 = self;
  v13 = v5;
  if (a3 <= 0)
  {
    [(_BPSInnerFutureConduit *)a2 requestDemand:v5];
    v5 = v13;
  }

  os_unfair_lock_lock(&v5->_lock);
  if ([(os_unfair_lock_s *)v13 released])
  {
    os_unfair_lock_unlock(v13 + 2);
    goto LABEL_14;
  }

  [(os_unfair_lock_s *)v13 setHasAnyDemand:1];
  v6 = [(os_unfair_lock_s *)v13 parent];
  v7 = [v6 result];

  if (v7)
  {
    v8 = [(os_unfair_lock_s *)v13 downstream];
    [(os_unfair_lock_s *)v13 setReleased:1];
    os_unfair_lock_unlock(v13 + 2);
    os_unfair_recursive_lock_lock_with_options();
    v9 = [v7 state];
    if (v9 == 1)
    {
      v11 = [v7 error];
      v12 = [BPSCompletion failureWithError:v11];
      [v8 receiveCompletion:v12];
    }

    else
    {
      if (v9)
      {
LABEL_12:
        os_unfair_recursive_lock_unlock();

        goto LABEL_13;
      }

      v10 = [v7 value];
      [v8 receiveInput:v10];

      v11 = +[BPSCompletion success];
      [v8 receiveCompletion:v11];
    }

    goto LABEL_12;
  }

  os_unfair_lock_unlock(v13 + 2);
LABEL_13:

LABEL_14:
}

- (void)fulfill:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(_BPSInnerFutureConduit *)self released]|| ![(_BPSInnerFutureConduit *)self hasAnyDemand])
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_10;
  }

  v4 = [(_BPSInnerFutureConduit *)self downstream];
  [(_BPSInnerFutureConduit *)self setReleased:1];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  v5 = [v9 state];
  if (v5 == 1)
  {
    v7 = [v9 error];
    v8 = [BPSCompletion failureWithError:v7];
    [v4 receiveCompletion:v8];

    goto LABEL_8;
  }

  if (!v5)
  {
    v6 = [v9 value];
    [v4 receiveInput:v6];

    v7 = +[BPSCompletion success];
    [v4 receiveCompletion:v7];
LABEL_8:
  }

  os_unfair_recursive_lock_unlock();

LABEL_10:
}

- (void)cancel
{
  v3 = self;
  os_unfair_lock_lock(&v3->_lock);
  if (![(_BPSInnerFutureConduit *)v3 released])
  {
    [(_BPSInnerFutureConduit *)v3 setReleased:1];
    v2 = [(_BPSInnerFutureConduit *)v3 parent];
    [v2 disassociate:{-[_BPSInnerFutureConduit identifity](v3, "identifity")}];
  }

  os_unfair_lock_unlock(&v3->_lock);
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSFuture.m" lineNumber:181 description:@"Demand should be greater than 0"];
}

@end