@interface SGSqliteDatabaseSharedLock
- (SGSqliteDatabaseSharedLock)init;
- (void)dealloc;
- (void)runWithLockAcquired:(id)a3;
@end

@implementation SGSqliteDatabaseSharedLock

- (void)runWithLockAcquired:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  ++self->_writeTransactionDepth;
  v4[2]();
  --self->_writeTransactionDepth;
  pthread_mutex_unlock(&self->_lock);
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = SGSqliteDatabaseSharedLock;
  [(SGSqliteDatabaseSharedLock *)&v3 dealloc];
}

- (SGSqliteDatabaseSharedLock)init
{
  v8 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = SGSqliteDatabaseSharedLock;
  v2 = [(SGSqliteDatabaseSharedLock *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_writeTransactionDepth = 0;
    v7.__sig = 0;
    *v7.__opaque = 0;
    pthread_mutexattr_init(&v7);
    pthread_mutexattr_settype(&v7, 2);
    pthread_mutex_init(&v3->_lock, &v7);
    pthread_mutexattr_destroy(&v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

@end