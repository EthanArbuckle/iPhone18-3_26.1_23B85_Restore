@interface NSOperation(MSVAdditions)
- (uint64_t)decreasePriority;
- (uint64_t)increasePriority;
@end

@implementation NSOperation(MSVAdditions)

- (uint64_t)decreasePriority
{
  result = [a1 queuePriority];
  v3 = __ROR8__(result + 4, 2);
  if (v3 <= 3)
  {

    return [a1 setQueuePriority:4 * v3 - 8];
  }

  return result;
}

- (uint64_t)increasePriority
{
  result = [a1 queuePriority];
  v3 = __ROR8__(result + 8, 2);
  if (v3 <= 3)
  {

    return [a1 setQueuePriority:4 * v3 - 4];
  }

  return result;
}

@end