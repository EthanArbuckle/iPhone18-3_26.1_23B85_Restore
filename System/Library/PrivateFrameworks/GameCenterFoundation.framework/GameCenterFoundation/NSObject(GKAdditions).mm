@interface NSObject(GKAdditions)
- (id)_gkInvokeSelector:()GKAdditions withNullableObject:;
- (void)_gkPerformSelector:()GKAdditions withNullableObject:;
- (void)_gkPerformSelector:()GKAdditions withObject:withObject:;
- (void)_gkPerformSelector:()GKAdditions withObjects:;
@end

@implementation NSObject(GKAdditions)

- (void)_gkPerformSelector:()GKAdditions withNullableObject:
{
  v8 = a4;
  v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v7 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v6];
  [v7 setSelector:a3];
  if (v8 && [v6 numberOfArguments] >= 3)
  {
    [v7 setArgument:&v8 atIndex:2];
  }

  [v7 setTarget:a1];
  [v7 retainArguments];
  [v7 invoke];
}

- (void)_gkPerformSelector:()GKAdditions withObject:withObject:
{
  v12 = a4;
  v8 = a5;
  v11 = v8;
  v9 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v10 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v9];
  [v10 setSelector:a3];
  if (v12)
  {
    if ([v9 numberOfArguments] >= 3)
    {
      [v10 setArgument:&v12 atIndex:2];
      if (v8)
      {
        if ([v9 numberOfArguments] >= 4)
        {
          [v10 setArgument:&v11 atIndex:3];
        }
      }
    }
  }

  [v10 setTarget:{a1, v11}];
  [v10 retainArguments];
  [v10 invoke];
}

- (void)_gkPerformSelector:()GKAdditions withObjects:
{
  v6 = a4;
  v7 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v8 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v7];
  [v8 setSelector:a3];
  if ([v6 count])
  {
    v9 = 2;
    do
    {
      v12 = [v6 objectAtIndex:v9 - 2];
      if (v12 && [v7 numberOfArguments] > v9)
      {
        [v8 setArgument:&v12 atIndex:v9];
      }

      v10 = [v6 count];
      v11 = v9++ - 1;
    }

    while (v10 > v11);
  }

  [v8 setTarget:a1];
  [v8 retainArguments];
  [v8 invoke];
}

- (id)_gkInvokeSelector:()GKAdditions withNullableObject:
{
  v11 = a4;
  v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v7 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v6];
  [v7 setSelector:a3];
  if (v11 && [v6 numberOfArguments] >= 3)
  {
    [v7 setArgument:&v11 atIndex:2];
  }

  [v7 setTarget:a1];
  [v7 retainArguments];
  [v7 invoke];
  v10 = 0;
  [v7 getReturnValue:&v10];
  v8 = v10;

  return v8;
}

@end