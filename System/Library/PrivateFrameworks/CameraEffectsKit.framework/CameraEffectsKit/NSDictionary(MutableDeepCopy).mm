@interface NSDictionary(MutableDeepCopy)
- (id)mutableDeepCopy;
@end

@implementation NSDictionary(MutableDeepCopy)

- (id)mutableDeepCopy
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [a1 keyEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [a1 objectForKey:v5];
      v7 = [v6 mutableDeepCopy];

      [v2 setObject:v7 forKey:v5];
      v8 = [v3 nextObject];

      v5 = v8;
    }

    while (v8);
  }

  return v2;
}

@end