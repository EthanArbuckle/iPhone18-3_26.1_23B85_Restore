@interface EFPriorityDesignator
+ (EFPriorityDesignator)currentDesignator;
+ (id)currentDesignatorIfExists;
+ (id)currentDesignatorStack;
+ (id)currentDesignatorStackIfExists;
+ (id)installNewDesignator;
+ (id)pushNewDesignator;
+ (void)destroyCurrentDesignator;
@end

@implementation EFPriorityDesignator

+ (void)destroyCurrentDesignator
{
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v7 = [v3 threadDictionary];

  [v7 removeObjectForKey:@"EFThreadPriorityDesignator"];
  v4 = [a1 currentDesignatorStackIfExists];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 lastObject];
    [v7 setObject:v6 forKeyedSubscript:@"EFThreadPriorityDesignator"];

    [v5 removeLastObject];
    if (![v5 count])
    {
      [v7 setObject:0 forKeyedSubscript:@"EFThreadPriorityDesignatorStack"];
    }
  }
}

+ (id)currentDesignatorStackIfExists
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"EFThreadPriorityDesignatorStack"];

  return v4;
}

+ (EFPriorityDesignator)currentDesignator
{
  v3 = [a1 currentDesignatorIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 installNewDesignator];
  }

  v6 = v5;

  return v6;
}

+ (id)currentDesignatorIfExists
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"EFThreadPriorityDesignator"];

  return v4;
}

+ (id)installNewDesignator
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];

  [v4 setObject:v2 forKeyedSubscript:@"EFThreadPriorityDesignator"];

  return v2;
}

+ (id)currentDesignatorStack
{
  v2 = [a1 currentDesignatorStackIfExists];
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AF00] currentThread];
    v4 = [v3 threadDictionary];

    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v4 setObject:v2 forKeyedSubscript:@"EFThreadPriorityDesignatorStack"];
  }

  return v2;
}

+ (id)pushNewDesignator
{
  v3 = [a1 currentDesignatorIfExists];
  if (v3)
  {
    v4 = [a1 currentDesignatorStack];
    [v4 addObject:v3];

    v5 = [a1 installNewDesignator];
  }

  else
  {
    v5 = [a1 currentDesignator];
  }

  return v5;
}

@end