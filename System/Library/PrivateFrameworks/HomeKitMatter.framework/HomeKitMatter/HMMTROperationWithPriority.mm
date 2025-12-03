@interface HMMTROperationWithPriority
- (HMMTROperationWithPriority)initWithQueuePriority:(int64_t)priority block:(id)block;
- (void)main;
@end

@implementation HMMTROperationWithPriority

- (void)main
{
  operationBlock = [(HMMTROperationWithPriority *)self operationBlock];
  operationBlock[2]();
}

- (HMMTROperationWithPriority)initWithQueuePriority:(int64_t)priority block:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = HMMTROperationWithPriority;
  v7 = [(HMMTROperationWithPriority *)&v11 init];
  if (v7)
  {
    v8 = MEMORY[0x2318887D0](blockCopy);
    operationBlock = v7->_operationBlock;
    v7->_operationBlock = v8;

    [(HMMTROperationWithPriority *)v7 setQueuePriority:priority];
  }

  return v7;
}

@end