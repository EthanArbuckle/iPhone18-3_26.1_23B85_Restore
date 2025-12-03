@interface NSOperationQueue(TSUAdditions)
+ (id)tsu_newSerialOperationQueueWithName:()TSUAdditions;
- (uint64_t)tsu_isCurrentQueue;
- (void)tsu_performBlock:()TSUAdditions;
@end

@implementation NSOperationQueue(TSUAdditions)

+ (id)tsu_newSerialOperationQueueWithName:()TSUAdditions
{
  v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v4 setName:a3];
  [v4 setMaxConcurrentOperationCount:1];
  v5 = dispatch_queue_create([a3 UTF8String], 0);
  dispatch_queue_set_specific(v5, TSUOperationQueueUtilityQueueSpecific, v5, 0);
  [v4 setUnderlyingQueue:v5];

  return v4;
}

- (uint64_t)tsu_isCurrentQueue
{
  if ([MEMORY[0x277CCABD8] currentQueue] == self)
  {
    return 1;
  }

  result = [self underlyingQueue];
  if (result)
  {
    return dispatch_get_specific(TSUOperationQueueUtilityQueueSpecific) == result;
  }

  return result;
}

- (void)tsu_performBlock:()TSUAdditions
{
  if (a3)
  {
    v4 = result;
    if ([result tsu_isCurrentQueue])
    {
      v5 = *(a3 + 16);

      return v5(a3);
    }

    else
    {

      return [v4 addOperationWithBlock:a3];
    }
  }

  return result;
}

@end