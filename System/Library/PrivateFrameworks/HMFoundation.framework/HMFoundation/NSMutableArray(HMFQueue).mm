@interface NSMutableArray(HMFQueue)
- (id)hmf_dequeue;
- (id)hmf_maybeDequeue;
@end

@implementation NSMutableArray(HMFQueue)

- (id)hmf_dequeue
{
  v2 = [a1 objectAtIndex:0];
  [a1 removeObjectAtIndex:0];

  return v2;
}

- (id)hmf_maybeDequeue
{
  v2 = [a1 count];
  if (v2)
  {
    v2 = [a1 hmf_dequeue];
  }

  return v2;
}

@end