@interface JavaUtilConcurrentAtomicAtomicInteger
- (BOOL)compareAndSetWithInt:(int)int withInt:(int)withInt;
- (BOOL)weakCompareAndSetWithInt:(int)int withInt:(int)withInt;
@end

@implementation JavaUtilConcurrentAtomicAtomicInteger

- (BOOL)compareAndSetWithInt:(int)int withInt:(int)withInt
{
  intCopy = int;
  atomic_compare_exchange_strong(&self->value_, &intCopy, withInt);
  return intCopy == int;
}

- (BOOL)weakCompareAndSetWithInt:(int)int withInt:(int)withInt
{
  intCopy = int;
  atomic_compare_exchange_strong_explicit(&self->value_, &intCopy, withInt, memory_order_relaxed, memory_order_relaxed);
  return intCopy == int;
}

@end