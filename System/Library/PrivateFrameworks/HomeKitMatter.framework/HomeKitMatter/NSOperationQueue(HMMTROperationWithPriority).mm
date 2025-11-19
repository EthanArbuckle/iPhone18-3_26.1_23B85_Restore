@interface NSOperationQueue(HMMTROperationWithPriority)
- (void)addOperationWithBlock:()HMMTROperationWithPriority queuePriority:;
@end

@implementation NSOperationQueue(HMMTROperationWithPriority)

- (void)addOperationWithBlock:()HMMTROperationWithPriority queuePriority:
{
  v6 = a3;
  v7 = [[HMMTROperationWithPriority alloc] initWithQueuePriority:a4 block:v6];

  [a1 addOperation:v7];
}

@end