@interface FCCacheCoordinatorFlushPolicy
- (FCCacheCoordinatorFlushPolicy)initWithLowWaterMark:(unint64_t)a3 highWaterMark:(unint64_t)a4 alwaysFlushKeysWithZeroInterest:(BOOL)a5;
@end

@implementation FCCacheCoordinatorFlushPolicy

- (FCCacheCoordinatorFlushPolicy)initWithLowWaterMark:(unint64_t)a3 highWaterMark:(unint64_t)a4 alwaysFlushKeysWithZeroInterest:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = FCCacheCoordinatorFlushPolicy;
  result = [(FCCacheCoordinatorFlushPolicy *)&v9 init];
  if (result)
  {
    result->_highWaterMark = a4;
    result->_lowWaterMark = a3;
    result->_alwaysFlushKeysWithZeroInterest = a5;
  }

  return result;
}

@end