@interface NSOperation(IC)
- (id)ic_loggingValues;
- (uint64_t)ic_resistsCancellation;
- (void)ic_setResistsCancellation:()IC;
@end

@implementation NSOperation(IC)

- (id)ic_loggingValues
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 name];

  if (v3)
  {
    v4 = [a1 name];
    [v2 setObject:v4 forKeyedSubscript:@"name"];
  }

  v5 = [a1 ic_cloudSessionIdentifier];

  if (v5)
  {
    v6 = [a1 ic_cloudSessionIdentifier];
    [v2 setObject:v6 forKeyedSubscript:@"session"];
  }

  if ([a1 isExecuting])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isExecuting")}];
    [v2 setObject:v7 forKeyedSubscript:@"isExecuting"];
  }

  if ([a1 isFinished])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isFinished")}];
    [v2 setObject:v8 forKeyedSubscript:@"isFinished"];
  }

  return v2;
}

- (uint64_t)ic_resistsCancellation
{
  v1 = objc_getAssociatedObject(a1, &ICNSOperationResistsCancellation);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)ic_setResistsCancellation:()IC
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, &ICNSOperationResistsCancellation, v2, 3);
}

@end