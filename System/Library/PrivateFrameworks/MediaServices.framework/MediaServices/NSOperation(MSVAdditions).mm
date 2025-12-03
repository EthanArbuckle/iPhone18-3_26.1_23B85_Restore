@interface NSOperation(MSVAdditions)
- (uint64_t)decreasePriority;
- (uint64_t)increasePriority;
@end

@implementation NSOperation(MSVAdditions)

- (uint64_t)decreasePriority
{
  result = [self queuePriority];
  v3 = __ROR8__(result + 4, 2);
  if (v3 <= 3)
  {

    return [self setQueuePriority:4 * v3 - 8];
  }

  return result;
}

- (uint64_t)increasePriority
{
  result = [self queuePriority];
  v3 = __ROR8__(result + 8, 2);
  if (v3 <= 3)
  {

    return [self setQueuePriority:4 * v3 - 4];
  }

  return result;
}

@end