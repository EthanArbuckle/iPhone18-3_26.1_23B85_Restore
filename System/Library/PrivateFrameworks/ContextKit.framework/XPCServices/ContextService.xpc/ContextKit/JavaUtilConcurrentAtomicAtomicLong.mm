@interface JavaUtilConcurrentAtomicAtomicLong
+ (BOOL)VMSupportsCS8;
+ (void)initialize;
- (BOOL)compareAndSetWithLong:(int64_t)long withLong:(int64_t)withLong;
- (BOOL)weakCompareAndSetWithLong:(int64_t)long withLong:(int64_t)withLong;
@end

@implementation JavaUtilConcurrentAtomicAtomicLong

+ (BOOL)VMSupportsCS8
{
  if ((atomic_load_explicit(&JavaUtilConcurrentAtomicAtomicLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1002709B8();
  }

  return 1;
}

- (BOOL)compareAndSetWithLong:(int64_t)long withLong:(int64_t)withLong
{
  longCopy = long;
  atomic_compare_exchange_strong(&self->value_, &longCopy, withLong);
  return longCopy == long;
}

- (BOOL)weakCompareAndSetWithLong:(int64_t)long withLong:(int64_t)withLong
{
  longCopy = long;
  atomic_compare_exchange_strong_explicit(&self->value_, &longCopy, withLong, memory_order_relaxed, memory_order_relaxed);
  return longCopy == long;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((atomic_load_explicit(&JavaUtilConcurrentAtomicAtomicLong__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1002709B8();
    }

    JavaUtilConcurrentAtomicAtomicLong_VM_SUPPORTS_LONG_CAS_ = 1;
    atomic_store(1u, &JavaUtilConcurrentAtomicAtomicLong__initialized);
  }
}

@end