@interface PKDirectoryCoordinator
- (PKDirectoryCoordinator)initWithURL:(id)l;
- (void)invalidate;
- (void)performCoordinatedAction:(id)action;
@end

@implementation PKDirectoryCoordinator

- (PKDirectoryCoordinator)initWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v11.receiver = self;
    v11.super_class = PKDirectoryCoordinator;
    v5 = [(PKDirectoryCoordinator *)&v11 init];
    v6 = v5;
    if (v5)
    {
      v5->_lock._os_unfair_lock_opaque = 0;
      v7 = [lCopy copy];
      url = v6->_url;
      v6->_url = v7;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = atomic_load(&self->_invalidated);
  if ((v3 & 1) == 0)
  {
    atomic_store(1u, &self->_invalidated);
    url = self->_url;
    self->_url = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)performCoordinatedAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    v5 = actionCopy;
    os_unfair_lock_lock(&self->_lock);
    v5[2](v5, self->_url);
    os_unfair_lock_unlock(&self->_lock);
    actionCopy = v5;
  }
}

@end