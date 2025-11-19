@interface JavaUtilConcurrentAtomicAtomicBoolean
- (BOOL)compareAndSetWithBoolean:(BOOL)a3 withBoolean:(BOOL)a4;
- (BOOL)weakCompareAndSetWithBoolean:(BOOL)a3 withBoolean:(BOOL)a4;
@end

@implementation JavaUtilConcurrentAtomicAtomicBoolean

- (BOOL)compareAndSetWithBoolean:(BOOL)a3 withBoolean:(BOOL)a4
{
  v4 = a3;
  atomic_compare_exchange_strong(&self->value_, &v4, a4);
  return v4 == a3;
}

- (BOOL)weakCompareAndSetWithBoolean:(BOOL)a3 withBoolean:(BOOL)a4
{
  v4 = a3;
  atomic_compare_exchange_strong_explicit(&self->value_, &v4, a4, memory_order_relaxed, memory_order_relaxed);
  return v4 == a3;
}

@end