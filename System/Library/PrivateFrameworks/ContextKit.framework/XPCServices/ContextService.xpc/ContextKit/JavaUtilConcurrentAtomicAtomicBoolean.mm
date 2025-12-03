@interface JavaUtilConcurrentAtomicAtomicBoolean
- (BOOL)compareAndSetWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
- (BOOL)weakCompareAndSetWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
@end

@implementation JavaUtilConcurrentAtomicAtomicBoolean

- (BOOL)compareAndSetWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  booleanCopy = boolean;
  atomic_compare_exchange_strong(&self->value_, &booleanCopy, withBoolean);
  return booleanCopy == boolean;
}

- (BOOL)weakCompareAndSetWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  booleanCopy = boolean;
  atomic_compare_exchange_strong_explicit(&self->value_, &booleanCopy, withBoolean, memory_order_relaxed, memory_order_relaxed);
  return booleanCopy == boolean;
}

@end