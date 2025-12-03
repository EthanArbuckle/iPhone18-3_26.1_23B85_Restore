@interface CPLEngineWriteTransactionBlocker
- (CPLEngineWriteTransactionBlocker)initWithUnblockBlock:(id)block;
- (void)dealloc;
- (void)unblock;
@end

@implementation CPLEngineWriteTransactionBlocker

- (void)dealloc
{
  unblock = self->_unblock;
  if (unblock)
  {
    unblock[2](unblock, a2);
  }

  v4.receiver = self;
  v4.super_class = CPLEngineWriteTransactionBlocker;
  [(CPLEngineWriteTransactionBlocker *)&v4 dealloc];
}

- (void)unblock
{
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x1E128EBA0](self->_unblock);
  unblock = self->_unblock;
  self->_unblock = 0;

  os_unfair_lock_unlock(&self->_lock);
  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v4 = v5;
  }
}

- (CPLEngineWriteTransactionBlocker)initWithUnblockBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = CPLEngineWriteTransactionBlocker;
  v5 = [(CPLEngineWriteTransactionBlocker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [blockCopy copy];
    unblock = v6->_unblock;
    v6->_unblock = v7;
  }

  return v6;
}

@end