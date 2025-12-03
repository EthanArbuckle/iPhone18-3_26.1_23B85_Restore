@interface FCCacheCoordinatorFlushPolicy
- (FCCacheCoordinatorFlushPolicy)initWithLowWaterMark:(unint64_t)mark highWaterMark:(unint64_t)waterMark alwaysFlushKeysWithZeroInterest:(BOOL)interest;
@end

@implementation FCCacheCoordinatorFlushPolicy

- (FCCacheCoordinatorFlushPolicy)initWithLowWaterMark:(unint64_t)mark highWaterMark:(unint64_t)waterMark alwaysFlushKeysWithZeroInterest:(BOOL)interest
{
  v9.receiver = self;
  v9.super_class = FCCacheCoordinatorFlushPolicy;
  result = [(FCCacheCoordinatorFlushPolicy *)&v9 init];
  if (result)
  {
    result->_highWaterMark = waterMark;
    result->_lowWaterMark = mark;
    result->_alwaysFlushKeysWithZeroInterest = interest;
  }

  return result;
}

@end