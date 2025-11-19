@interface PKNotifySubregistration
- (BOOL)isInvalidated;
- (PKNotifySubregistration)initWithParent:(id)a3 handler:(id)a4;
- (void)_invalidateFromParent:(BOOL)a3;
- (void)dealloc;
- (void)invokeHandler;
@end

@implementation PKNotifySubregistration

- (void)dealloc
{
  [(PKNotifySubregistration *)self _invalidateFromParent:1];
  v3.receiver = self;
  v3.super_class = PKNotifySubregistration;
  [(PKNotifySubregistration *)&v3 dealloc];
}

- (PKNotifySubregistration)initWithParent:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PKNotifySubregistration;
  v8 = [(PKNotifySubregistration *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v8->_parent, v6);
    v10 = _Block_copy(v7);
    handler = v9->_handler;
    v9->_handler = v10;
  }

  return v9;
}

- (void)_invalidateFromParent:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_invalidated = 1;
    if (a3)
    {
      WeakRetained = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_parent);
    }

    objc_storeWeak(&self->_parent, 0);
    handler = self->_handler;
    self->_handler = 0;

    os_unfair_lock_unlock(&self->_lock);
    if (WeakRetained)
    {
      [WeakRetained removeInvalidatedSubregistration:self];
    }
  }
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (void)invokeHandler
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = _Block_copy(self->_handler);
    os_unfair_lock_unlock(&self->_lock);
    if (v3)
    {
      v3[2](v3, self);
    }
  }
}

@end