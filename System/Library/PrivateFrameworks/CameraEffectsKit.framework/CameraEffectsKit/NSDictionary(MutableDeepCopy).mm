@interface NSDictionary(MutableDeepCopy)
- (id)mutableDeepCopy;
@end

@implementation NSDictionary(MutableDeepCopy)

- (id)mutableDeepCopy
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  keyEnumerator = [self keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v5 = nextObject;
    do
    {
      v6 = [self objectForKey:v5];
      mutableDeepCopy = [v6 mutableDeepCopy];

      [v2 setObject:mutableDeepCopy forKey:v5];
      nextObject2 = [keyEnumerator nextObject];

      v5 = nextObject2;
    }

    while (nextObject2);
  }

  return v2;
}

@end