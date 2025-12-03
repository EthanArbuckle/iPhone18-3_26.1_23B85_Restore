@interface NSOperation(IC)
- (id)ic_loggingValues;
- (uint64_t)ic_resistsCancellation;
- (void)ic_setResistsCancellation:()IC;
@end

@implementation NSOperation(IC)

- (id)ic_loggingValues
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  name = [self name];

  if (name)
  {
    name2 = [self name];
    [dictionary setObject:name2 forKeyedSubscript:@"name"];
  }

  ic_cloudSessionIdentifier = [self ic_cloudSessionIdentifier];

  if (ic_cloudSessionIdentifier)
  {
    ic_cloudSessionIdentifier2 = [self ic_cloudSessionIdentifier];
    [dictionary setObject:ic_cloudSessionIdentifier2 forKeyedSubscript:@"session"];
  }

  if ([self isExecuting])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isExecuting")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isExecuting"];
  }

  if ([self isFinished])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isFinished")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isFinished"];
  }

  return dictionary;
}

- (uint64_t)ic_resistsCancellation
{
  v1 = objc_getAssociatedObject(self, &ICNSOperationResistsCancellation);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)ic_setResistsCancellation:()IC
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, &ICNSOperationResistsCancellation, v2, 3);
}

@end