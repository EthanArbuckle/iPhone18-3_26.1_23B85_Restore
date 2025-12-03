@interface PKActionGroup
- (BOOL)resolve;
- (PKActionGroup)init;
- (id)trackAction:(id)action;
- (void)_check;
- (void)_trackGuardedAction:(void *)action queue:(char)queue strict:;
- (void)activateWithCompletion:(id)completion queue:(id)queue;
- (void)dealloc;
@end

@implementation PKActionGroup

- (PKActionGroup)init
{
  v3.receiver = self;
  v3.super_class = PKActionGroup;
  result = [(PKActionGroup *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  if (atomic_exchange(&self->_actionsWereAdded._Value, 1u))
  {
    goto LABEL_4;
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_activated)
  {
    os_unfair_lock_unlock(&self->_lock);
LABEL_4:
    v3.receiver = self;
    v3.super_class = PKActionGroup;
    [(PKActionGroup *)&v3 dealloc];
    return;
  }

  __break(1u);
}

- (void)_trackGuardedAction:(void *)action queue:(char)queue strict:
{
  v7 = a2;
  actionCopy = action;
  if (!self)
  {
    goto LABEL_4;
  }

  os_unfair_lock_lock(self + 2);
  result = objc_autoreleasePoolPush();
  if (*(self + 12) != 1)
  {
    v10 = result;
    atomic_exchange(self + 16, 1u);
    atomic_fetch_add(self + 7, 1u);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__PKActionGroup__trackGuardedAction_queue_strict___block_invoke;
    aBlock[3] = &unk_1E79C44A0;
    aBlock[4] = self;
    v25 = v7;
    v11 = _Block_copy(aBlock);
    v12 = [PKDeallocationGuard alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__PKActionGroup__trackGuardedAction_queue_strict___block_invoke_2;
    v21[3] = &unk_1E79C4748;
    queueCopy = queue;
    v13 = v11;
    v22 = v13;
    v14 = [(PKDeallocationGuard *)v12 initWithBlock:v21];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__PKActionGroup__trackGuardedAction_queue_strict___block_invoke_3;
    v18[3] = &unk_1E79C4A40;
    v19 = v14;
    v20 = v13;
    v15 = v13;
    v16 = v14;
    v17 = _Block_copy(v18);

    objc_autoreleasePoolPop(v10);
    os_unfair_lock_unlock(self + 2);
    self = _Block_copy(v17);

LABEL_4:
    return self;
  }

  __break(1u);
  return result;
}

- (id)trackAction:(id)action
{
  actionCopy = action;
  if (!self)
  {
    goto LABEL_4;
  }

  os_unfair_lock_lock(&self->_lock);
  result = objc_autoreleasePoolPush();
  if (!self->_activated)
  {
    v6 = result;
    atomic_exchange(&self->_actionsWereAdded._Value, 1u);
    atomic_fetch_add(&self->_count, 1u);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__PKActionGroup__trackAction___block_invoke;
    v8[3] = &unk_1E79C44A0;
    v8[4] = self;
    v9 = actionCopy;
    v7 = _Block_copy(v8);

    objc_autoreleasePoolPop(v6);
    os_unfair_lock_unlock(&self->_lock);
    self = _Block_copy(v7);

LABEL_4:
    return self;
  }

  __break(1u);
  return result;
}

- (void)activateWithCompletion:(id)completion queue:(id)queue
{
  aBlock = completion;
  queueCopy = queue;
  if (aBlock && queueCopy && (os_unfair_lock_lock(&self->_lock), !self->_activated))
  {
    self->_activated = 1;
    if (atomic_load(&self->_count))
    {
      v8 = _Block_copy(aBlock);
      completion = self->_completion;
      self->_completion = v8;

      objc_storeStrong(&self->_queue, queue);
    }

    else
    {
      dispatch_async(queueCopy, aBlock);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)resolve
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_activated)
  {
    __break(1u);
  }

  else
  {
    v4 = atomic_load(&self->_count);
    if (!v4)
    {
      self->_activated = 1;
    }

    v5 = v4 == 0;
    os_unfair_lock_unlock(&self->_lock);
    return v5;
  }

  return result;
}

void __50__PKActionGroup__trackGuardedAction_queue_strict___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  add = atomic_fetch_add((*(a1 + 32) + 14), 0xFFFFu);
  if (add == 1)
  {
    v4 = *(a1 + 32);

    [(PKActionGroup *)v4 _check];
  }

  else if (!add)
  {
    __break(1u);
  }
}

- (void)_check
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    if (*(self + 12) == 1 && (v2 = atomic_load((self + 14))) == 0 && *(self + 24))
    {
      queue = *(self + 32);
      v4 = _Block_copy(*(self + 24));
      v5 = *(self + 32);
      *(self + 32) = 0;

      v6 = *(self + 24);
      *(self + 24) = 0;

      os_unfair_lock_unlock((self + 8));
      if (v4)
      {
        if (!queue)
        {
          __break(1u);
          return;
        }

        dispatch_async(queue, v4);
      }

      v3 = queue;
    }

    else
    {
      os_unfair_lock_unlock((self + 8));
      v3 = 0;
    }
  }
}

uint64_t __50__PKActionGroup__trackGuardedAction_queue_strict___block_invoke_2(uint64_t result)
{
  if (*(result + 40) != 1)
  {
    return (*(*(result + 32) + 16))();
  }

  __break(1u);
  return result;
}

uint64_t __50__PKActionGroup__trackGuardedAction_queue_strict___block_invoke_3(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    if (atomic_exchange((v2 + 8), 1u))
    {
      __break(1u);
      return result;
    }

    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
  }

  v4 = *(*(v1 + 40) + 16);

  return v4();
}

void __30__PKActionGroup__trackAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  add = atomic_fetch_add((*(a1 + 32) + 14), 0xFFFFu);
  if (add == 1)
  {
    v4 = *(a1 + 32);

    [(PKActionGroup *)v4 _check];
  }

  else if (!add)
  {
    __break(1u);
  }
}

@end