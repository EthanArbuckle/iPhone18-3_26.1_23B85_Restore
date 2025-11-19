@interface NSHashTable(HMFoundation)
- (void)hmf_enumerateWithAutoreleasePoolUsingBlock:()HMFoundation;
@end

@implementation NSHashTable(HMFoundation)

- (void)hmf_enumerateWithAutoreleasePoolUsingBlock:()HMFoundation
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10 = 0;
  v6 = [a1 objectEnumerator];
  v7 = 0;
  while (1)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v7 = [v6 nextObject];

    if (!v7)
    {
      break;
    }

    v4[2](v4, v7, &v10);
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