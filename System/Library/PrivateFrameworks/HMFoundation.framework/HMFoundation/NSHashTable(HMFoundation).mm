@interface NSHashTable(HMFoundation)
- (void)hmf_enumerateWithAutoreleasePoolUsingBlock:()HMFoundation;
@end

@implementation NSHashTable(HMFoundation)

- (void)hmf_enumerateWithAutoreleasePoolUsingBlock:()HMFoundation
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10 = 0;
  objectEnumerator = [self objectEnumerator];
  nextObject = 0;
  while (1)
  {
    v8 = nextObject;
    v9 = objc_autoreleasePoolPush();
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v4[2](v4, nextObject, &v10);
    objc_autoreleasePoolPop(v9);
    if (v10 == 1)
    {
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_6:

  objc_autoreleasePoolPop(v5);
}

@end