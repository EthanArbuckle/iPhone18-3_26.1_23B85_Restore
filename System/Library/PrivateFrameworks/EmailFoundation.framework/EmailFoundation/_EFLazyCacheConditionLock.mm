@interface _EFLazyCacheConditionLock
- (_EFLazyCacheConditionLock)initWithCondition:(int64_t)condition;
@end

@implementation _EFLazyCacheConditionLock

- (_EFLazyCacheConditionLock)initWithCondition:(int64_t)condition
{
  v4.receiver = self;
  v4.super_class = _EFLazyCacheConditionLock;
  result = [(NSConditionLock *)&v4 initWithCondition:condition];
  if (result)
  {
    atomic_store(0, &result->_waiterCount);
  }

  return result;
}

@end