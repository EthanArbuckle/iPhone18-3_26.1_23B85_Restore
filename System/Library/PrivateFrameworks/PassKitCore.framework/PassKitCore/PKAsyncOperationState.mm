@interface PKAsyncOperationState
- (BOOL)isCanceled;
- (id)_init;
- (void)_cancel;
- (void)_invalidate;
- (void)addCancelAction:(id)action;
- (void)performAction:(id)action;
@end

@implementation PKAsyncOperationState

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKAsyncOperationState;
  result = [(PKAsyncOperationState *)&v3 init];
  if (result)
  {
    *(result + 6) = 0;
    *(result + 2) = 0;
  }

  return result;
}

- (void)_invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    cancelActions = self->_cancelActions;
    self->_cancelActions = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_cancel
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_canceled)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_canceled = 1;
    v3 = self->_cancelActions;
    cancelActions = self->_cancelActions;
    self->_cancelActions = 0;

    os_unfair_lock_unlock(&self->_lock);
    if (v3)
    {
      os_unfair_lock_lock(&self->_actionLock);
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = v3;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            (*(*(*(&v10 + 1) + 8 * i) + 16))(*(*(&v10 + 1) + 8 * i));
          }

          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      os_unfair_lock_unlock(&self->_actionLock);
    }
  }
}

- (void)performAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    os_unfair_lock_lock(&self->_actionLock);
    actionCopy[2](actionCopy);

    os_unfair_lock_unlock(&self->_actionLock);
  }
}

- (void)addCancelAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    aBlock = actionCopy;
    os_unfair_lock_lock(&self->_lock);
    if (self->_canceled || self->_invalidated)
    {
      os_unfair_lock_unlock(&self->_lock);
      os_unfair_lock_lock(&self->_actionLock);
      aBlock[2]();
      os_unfair_lock_unlock(&self->_actionLock);
    }

    else
    {
      cancelActions = self->_cancelActions;
      if (!cancelActions)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v7 = self->_cancelActions;
        self->_cancelActions = v6;

        cancelActions = self->_cancelActions;
      }

      v8 = _Block_copy(aBlock);
      [(NSMutableArray *)cancelActions addObject:v8];

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (BOOL)isCanceled
{
  os_unfair_lock_lock(&self->_lock);
  canceled = self->_canceled;
  os_unfair_lock_unlock(&self->_lock);
  return canceled;
}

@end