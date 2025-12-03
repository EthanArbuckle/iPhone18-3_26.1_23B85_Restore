@interface NSMutableArray(HMFQueue)
- (id)hmf_dequeue;
- (id)hmf_maybeDequeue;
@end

@implementation NSMutableArray(HMFQueue)

- (id)hmf_dequeue
{
  v2 = [self objectAtIndex:0];
  [self removeObjectAtIndex:0];

  return v2;
}

- (id)hmf_maybeDequeue
{
  hmf_dequeue = [self count];
  if (hmf_dequeue)
  {
    hmf_dequeue = [self hmf_dequeue];
  }

  return hmf_dequeue;
}

@end