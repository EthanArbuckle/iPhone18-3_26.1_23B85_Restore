@interface JavaUtilConcurrentAtomicAtomicReference
- (BOOL)compareAndSetWithId:(id)a3 withId:(id)a4;
- (BOOL)weakCompareAndSetWithId:(id)a3 withId:(id)a4;
- (id)getAndSetWithId:(id)a3;
- (void)__javaClone;
- (void)dealloc;
- (void)lazySetWithId:(id)a3;
@end

@implementation JavaUtilConcurrentAtomicAtomicReference

- (void)lazySetWithId:(id)a3
{
  v5 = a3;
  v6 = atomic_exchange_explicit(&self->value_, a3, memory_order_release);

  v7 = v6;
}

- (BOOL)compareAndSetWithId:(id)a3 withId:(id)a4
{
  v7 = a4;
  v8 = a3;
  atomic_compare_exchange_strong(&self->value_, &v8, a4);
  v9 = v8 == a3;
  if (v8 == a3)
  {
    v10 = a3;
  }

  else
  {
  }

  return v9;
}

- (BOOL)weakCompareAndSetWithId:(id)a3 withId:(id)a4
{
  v7 = a4;
  v8 = a3;
  atomic_compare_exchange_strong_explicit(&self->value_, &v8, a4, memory_order_relaxed, memory_order_relaxed);
  v9 = v8 == a3;
  if (v8 == a3)
  {
    v10 = a3;
  }

  else
  {
  }

  return v9;
}

- (id)getAndSetWithId:(id)a3
{
  v5 = a3;
  v6 = atomic_exchange(&self->value_, a3);
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