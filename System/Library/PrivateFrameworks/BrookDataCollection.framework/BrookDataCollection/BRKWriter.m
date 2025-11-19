@interface BRKWriter
- (BRKWriter)initWithPath:(id)a3;
- (void)dealloc;
- (void)performWithLock:(id)a3;
@end

@implementation BRKWriter

- (BRKWriter)initWithPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRKWriter;
  v6 = [(BRKWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
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

- (void)performWithLock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_lock);
    v4[2](v4);

    os_unfair_lock_unlock(&self->_lock);
  }
}

@end