@interface __GCHIDSystemObservation
- (_BYTE)initWithEventHandler:(void *)a1;
- (_BYTE)initWithServiceHandler:(void *)a1;
- (id)initWithEventObserver:(void *)a1;
- (id)initWithServiceObserver:(void *)a1;
- (void)DO_OBSERVER_CALLOUT_FOR_EVENT:(uint64_t)a3 FROM:;
- (void)NOTIFY_OBSERVER_SERVICES_CHANGED:(uint64_t)a1 ADDED_SERVICES:REMOVED_SERVICES:;
- (void)dealloc;
@end

@implementation __GCHIDSystemObservation

- (void)dealloc
{
  atomic_store(1u, &self->_invalid);
  if (self->_observerIsBlock)
  {
    objc_setProperty(self, a2, 16, 0, 0, 0);
  }

  else
  {
    objc_storeWeak(&self->_observer.var0, 0);
  }

  client = self->_client;
  if (client)
  {
    v4 = 120;
    if (self->_type == 1)
    {
      v4 = 72;
    }

    v5 = (client + v4);
    os_unfair_lock_lock((client + v4));
    tqe_next = self->_listEntry.tqe_next;
    tqe_prev = self->_listEntry.tqe_prev;
    p_os_unfair_lock_opaque = &v5[4]._os_unfair_lock_opaque;
    if (tqe_next)
    {
      p_os_unfair_lock_opaque = &tqe_next->_listEntry.tqe_prev;
    }

    *p_os_unfair_lock_opaque = tqe_prev;
    *tqe_prev = tqe_next;
    --v5[1]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5);
    self->_client = 0;
  }

  v9.receiver = self;
  v9.super_class = __GCHIDSystemObservation;
  [(__GCHIDSystemObservation *)&v9 dealloc];
}

- (id)initWithServiceObserver:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = __GCHIDSystemObservation;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  *(v3 + 8) = 1;
  objc_storeWeakOrNil(v3 + 2, a2);
  return v3;
}

- (id)initWithEventObserver:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = __GCHIDSystemObservation;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  *(v3 + 8) = 2;
  objc_storeWeakOrNil(v3 + 2, a2);
  return v3;
}

- (_BYTE)initWithServiceHandler:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = __GCHIDSystemObservation;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  v3[8] = 1;
  *(v3 + 2) = [a2 copy];
  v3[10] = 1;
  return v3;
}

- (_BYTE)initWithEventHandler:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = __GCHIDSystemObservation;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  v3[8] = 2;
  *(v3 + 2) = [a2 copy];
  v3[10] = 1;
  return v3;
}

- (void)NOTIFY_OBSERVER_SERVICES_CHANGED:(uint64_t)a1 ADDED_SERVICES:REMOVED_SERVICES:
{
  if (a1)
  {
    v4 = atomic_load((a1 + 9));
    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_5_0();
      if (*(v5 + 10) == 1)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          v7 = *(v6 + 16);
          OUTLINED_FUNCTION_2();
          v8();
        }
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((v5 + 16));
        if (WeakRetained)
        {
          v10 = WeakRetained;
          [WeakRetained servicesDidChange:v3 withAddedServices:v2 removedServices:v1];
        }
      }
    }
  }
}

- (void)DO_OBSERVER_CALLOUT_FOR_EVENT:(uint64_t)a3 FROM:
{
  if (a1)
  {
    v3 = atomic_load((a1 + 9));
    if ((v3 & 1) == 0)
    {
      if (*(a1 + 10) == 1)
      {
        v4 = *(a1 + 16);
        if (v4)
        {
          (*(v4 + 16))(v4, a2, a3);
        }
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((a1 + 16));
        if (WeakRetained)
        {
          v6 = WeakRetained;
          OUTLINED_FUNCTION_2();
          [v7 handleHIDEvent:? from:?];
        }
      }
    }
  }
}

@end