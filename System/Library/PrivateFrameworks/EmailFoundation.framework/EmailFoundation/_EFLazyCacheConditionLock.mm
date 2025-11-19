@interface _EFLazyCacheConditionLock
- (_EFLazyCacheConditionLock)initWithCondition:(int64_t)a3;
@end

@implementation _EFLazyCacheConditionLock

- (_EFLazyCacheConditionLock)initWithCondition:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = _EFLazyCacheConditionLock;
  result = [(NSConditionLock *)&v4 initWithCondition:a3];
  if (result)
  {
    atomic_store(0, &result->_waiterCount);
  }

  return result;
}

@end