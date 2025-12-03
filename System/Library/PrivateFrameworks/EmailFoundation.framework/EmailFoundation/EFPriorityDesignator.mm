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
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  [threadDictionary removeObjectForKey:@"EFThreadPriorityDesignator"];
  currentDesignatorStackIfExists = [self currentDesignatorStackIfExists];
  v5 = currentDesignatorStackIfExists;
  if (currentDesignatorStackIfExists)
  {
    lastObject = [currentDesignatorStackIfExists lastObject];
    [threadDictionary setObject:lastObject forKeyedSubscript:@"EFThreadPriorityDesignator"];

    [v5 removeLastObject];
    if (![v5 count])
    {
      [threadDictionary setObject:0 forKeyedSubscript:@"EFThreadPriorityDesignatorStack"];
    }
  }
}

+ (id)currentDesignatorStackIfExists
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"EFThreadPriorityDesignatorStack"];

  return v4;
}

+ (EFPriorityDesignator)currentDesignator
{
  currentDesignatorIfExists = [self currentDesignatorIfExists];
  v4 = currentDesignatorIfExists;
  if (currentDesignatorIfExists)
  {
    installNewDesignator = currentDesignatorIfExists;
  }

  else
  {
    installNewDesignator = [self installNewDesignator];
  }

  v6 = installNewDesignator;

  return v6;
}

+ (id)currentDesignatorIfExists
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"EFThreadPriorityDesignator"];

  return v4;
}

+ (id)installNewDesignator
{
  v2 = objc_alloc_init(self);
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  [threadDictionary setObject:v2 forKeyedSubscript:@"EFThreadPriorityDesignator"];

  return v2;
}

+ (id)currentDesignatorStack
{
  currentDesignatorStackIfExists = [self currentDesignatorStackIfExists];
  if (!currentDesignatorStackIfExists)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    currentDesignatorStackIfExists = objc_alloc_init(MEMORY[0x1E695DF70]);
    [threadDictionary setObject:currentDesignatorStackIfExists forKeyedSubscript:@"EFThreadPriorityDesignatorStack"];
  }

  return currentDesignatorStackIfExists;
}

+ (id)pushNewDesignator
{
  currentDesignatorIfExists = [self currentDesignatorIfExists];
  if (currentDesignatorIfExists)
  {
    currentDesignatorStack = [self currentDesignatorStack];
    [currentDesignatorStack addObject:currentDesignatorIfExists];

    installNewDesignator = [self installNewDesignator];
  }

  else
  {
    installNewDesignator = [self currentDesignator];
  }

  return installNewDesignator;
}

@end