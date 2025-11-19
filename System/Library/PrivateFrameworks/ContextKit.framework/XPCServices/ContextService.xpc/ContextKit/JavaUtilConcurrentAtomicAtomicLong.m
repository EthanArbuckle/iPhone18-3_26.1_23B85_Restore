@interface JavaUtilConcurrentAtomicAtomicLong
+ (BOOL)VMSupportsCS8;
+ (void)initialize;
- (BOOL)compareAndSetWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (BOOL)weakCompareAndSetWithLong:(int64_t)a3 withLong:(int64_t)a4;
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

- (BOOL)compareAndSetWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  v4 = a3;
  atomic_compare_exchange_strong(&self->value_, &v4, a4);
  return v4 == a3;
}

- (BOOL)weakCompareAndSetWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  v4 = a3;
  atomic_compare_exchange_strong_explicit(&self->value_, &v4, a4, memory_order_relaxed, memory_order_relaxed);
  return v4 == a3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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