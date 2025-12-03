@interface NSSet(MutableDeepCopy)
- (id)mutableDeepCopy;
@end

@implementation NSSet(MutableDeepCopy)

- (id)mutableDeepCopy
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  objectEnumerator = [self objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      mutableDeepCopy = [nextObject2 mutableDeepCopy];

      [v2 addObject:mutableDeepCopy];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  return v2;
}

@end