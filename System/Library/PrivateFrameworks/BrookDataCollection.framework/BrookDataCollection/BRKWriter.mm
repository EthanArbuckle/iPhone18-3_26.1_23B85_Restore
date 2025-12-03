@interface BRKWriter
- (BRKWriter)initWithPath:(id)path;
- (void)dealloc;
- (void)performWithLock:(id)lock;
@end

@implementation BRKWriter

- (BRKWriter)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = BRKWriter;
  v6 = [(BRKWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)dealloc
{
  if (objc_opt_respondsToSelector())
  {
    [(BRKWriter *)self performSelector:sel_close];
  }

  v3.receiver = self;
  v3.super_class = BRKWriter;
  [(BRKWriter *)&v3 dealloc];
}

- (void)performWithLock:(id)lock
{
  if (lock)
  {
    lockCopy = lock;
    os_unfair_lock_lock(&self->_lock);
    lockCopy[2](lockCopy);

    os_unfair_lock_unlock(&self->_lock);
  }
}

@end