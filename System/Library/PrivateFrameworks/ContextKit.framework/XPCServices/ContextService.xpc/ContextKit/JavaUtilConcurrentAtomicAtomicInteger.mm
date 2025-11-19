@interface JavaUtilConcurrentAtomicAtomicInteger
- (BOOL)compareAndSetWithInt:(int)a3 withInt:(int)a4;
- (BOOL)weakCompareAndSetWithInt:(int)a3 withInt:(int)a4;
@end

@implementation JavaUtilConcurrentAtomicAtomicInteger

- (BOOL)compareAndSetWithInt:(int)a3 withInt:(int)a4
{
  v4 = a3;
  atomic_compare_exchange_strong(&self->value_, &v4, a4);
  return v4 == a3;
}

- (BOOL)weakCompareAndSetWithInt:(int)a3 withInt:(int)a4
{
  v4 = a3;
  atomic_compare_exchange_strong_explicit(&self->value_, &v4, a4, memory_order_relaxed, memory_order_relaxed);
  return v4 == a3;
}

@end