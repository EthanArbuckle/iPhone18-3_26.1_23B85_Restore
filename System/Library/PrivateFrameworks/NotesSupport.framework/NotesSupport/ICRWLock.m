@interface ICRWLock
- (ICRWLock)init;
- (void)dealloc;
@end

@implementation ICRWLock

- (ICRWLock)init
{
  v5.receiver = self;
  v5.super_class = ICRWLock;
  v2 = [(ICRWLock *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_rwLock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwLock);
  v3.receiver = self;
  v3.super_class = ICRWLock;
  [(ICRWLock *)&v3 dealloc];
}

@end