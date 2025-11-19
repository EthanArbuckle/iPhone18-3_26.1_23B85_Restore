@interface NSSet(MutableDeepCopy)
- (id)mutableDeepCopy;
@end

@implementation NSSet(MutableDeepCopy)

- (id)mutableDeepCopy
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v5 mutableDeepCopy];

      [v2 addObject:v6];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  return v2;
}

@end