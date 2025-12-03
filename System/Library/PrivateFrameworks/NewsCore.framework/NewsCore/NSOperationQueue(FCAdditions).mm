@interface NSOperationQueue(FCAdditions)
+ (id)fc_prewarmQueue;
+ (id)fc_sharedConcurrentQueue;
+ (id)fc_sharedSerialQueue;
+ (id)fc_throttledCKRequestOperationQueue;
- (void)fc_addMainThreadOperationWithBlock:()FCAdditions;
@end

@implementation NSOperationQueue(FCAdditions)

+ (id)fc_sharedConcurrentQueue
{
  if (qword_1EDB279F8 != -1)
  {
    dispatch_once(&qword_1EDB279F8, &__block_literal_global_186);
  }

  v1 = _MergedGlobals_213;

  return v1;
}

+ (id)fc_sharedSerialQueue
{
  if (qword_1EDB27A08 != -1)
  {
    dispatch_once(&qword_1EDB27A08, &__block_literal_global_3_2);
  }

  v1 = qword_1EDB27A00;

  return v1;
}

+ (id)fc_prewarmQueue
{
  if (qword_1EDB27A18 != -1)
  {
    dispatch_once(&qword_1EDB27A18, &__block_literal_global_8_4);
  }

  v1 = qword_1EDB27A10;

  return v1;
}

+ (id)fc_throttledCKRequestOperationQueue
{
  if (qword_1EDB27A28 != -1)
  {
    dispatch_once(&qword_1EDB27A28, &__block_literal_global_13_3);
  }

  v1 = qword_1EDB27A20;

  return v1;
}

- (void)fc_addMainThreadOperationWithBlock:()FCAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__NSOperationQueue_FCAdditions__fc_addMainThreadOperationWithBlock___block_invoke;
  v6[3] = &unk_1E7C3A148;
  v7 = v4;
  v5 = v4;
  [self fc_addAsyncOperationWithBlock:v6];
}

@end