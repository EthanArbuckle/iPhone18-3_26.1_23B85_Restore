@interface PKDirectoryCoordinator
- (PKDirectoryCoordinator)initWithURL:(id)a3;
- (void)invalidate;
- (void)performCoordinatedAction:(id)a3;
@end

@implementation PKDirectoryCoordinator

- (PKDirectoryCoordinator)initWithURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = PKDirectoryCoordinator;
    v5 = [(PKDirectoryCoordinator *)&v11 init];
    v6 = v5;
    if (v5)
    {
      v5->_lock._os_unfair_lock_opaque = 0;
      v7 = [v4 copy];
      url = v6->_url;
      v6->_url = v7;
    }

    self = v6;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

- (void)performCoordinatedAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lock);
    v5[2](v5, self->_url);
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

@end