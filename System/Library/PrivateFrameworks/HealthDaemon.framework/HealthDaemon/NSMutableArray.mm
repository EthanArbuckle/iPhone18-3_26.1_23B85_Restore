@interface NSMutableArray
- (uint64_t)currentReferenceCount;
- (void)incrementReference;
@end

@implementation NSMutableArray

- (void)incrementReference
{
  if (self)
  {
    firstObject = [self firstObject];
    v5 = firstObject;
    if (firstObject)
    {
      unsignedIntegerValue = [firstObject unsignedIntegerValue];
      v4 = [MEMORY[0x277CCABB0] numberWithInteger:unsignedIntegerValue + 1];
      [self replaceObjectAtIndex:0 withObject:v4];
    }

    else
    {
      [self addObject:&unk_283CB0B70];
    }
  }
}

- (uint64_t)currentReferenceCount
{
  if (!self)
  {
    return 0;
  }

  firstObject = [self firstObject];
  v2 = firstObject;
  if (firstObject)
  {
    unsignedIntegerValue = [firstObject unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

@end