@interface JavaUtilConcurrentAtomicAtomicReference
- (BOOL)compareAndSetWithId:(id)id withId:(id)withId;
- (BOOL)weakCompareAndSetWithId:(id)id withId:(id)withId;
- (id)getAndSetWithId:(id)id;
- (void)__javaClone;
- (void)dealloc;
- (void)lazySetWithId:(id)id;
@end

@implementation JavaUtilConcurrentAtomicAtomicReference

- (void)lazySetWithId:(id)id
{
  idCopy = id;
  v6 = atomic_exchange_explicit(&self->value_, id, memory_order_release);

  v7 = v6;
}

- (BOOL)compareAndSetWithId:(id)id withId:(id)withId
{
  withIdCopy = withId;
  idCopy = id;
  atomic_compare_exchange_strong(&self->value_, &idCopy, withId);
  v9 = idCopy == id;
  if (idCopy == id)
  {
    idCopy2 = id;
  }

  else
  {
  }

  return v9;
}

- (BOOL)weakCompareAndSetWithId:(id)id withId:(id)withId
{
  withIdCopy = withId;
  idCopy = id;
  atomic_compare_exchange_strong_explicit(&self->value_, &idCopy, withId, memory_order_relaxed, memory_order_relaxed);
  v9 = idCopy == id;
  if (idCopy == id)
  {
    idCopy2 = id;
  }

  else
  {
  }

  return v9;
}

- (id)getAndSetWithId:(id)id
{
  idCopy = id;
  v6 = atomic_exchange(&self->value_, id);
  v7 = v6;
  return v6;
}

- (void)dealloc
{
  JreReleaseVolatile(&self->value_);
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentAtomicAtomicReference;
  [(JavaUtilConcurrentAtomicAtomicReference *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentAtomicAtomicReference;
  [(JavaUtilConcurrentAtomicAtomicReference *)&v3 __javaClone];
  JreRetainVolatile(&self->value_);
}

@end