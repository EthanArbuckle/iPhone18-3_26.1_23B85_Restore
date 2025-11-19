@interface HMMTROperationWithPriority
- (HMMTROperationWithPriority)initWithQueuePriority:(int64_t)a3 block:(id)a4;
- (void)main;
@end

@implementation HMMTROperationWithPriority

- (void)main
{
  v2 = [(HMMTROperationWithPriority *)self operationBlock];
  v2[2]();
}

- (HMMTROperationWithPriority)initWithQueuePriority:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HMMTROperationWithPriority;
  v7 = [(HMMTROperationWithPriority *)&v11 init];
  if (v7)
  {
    v8 = MEMORY[0x2318887D0](v6);
    operationBlock = v7->_operationBlock;
    v7->_operationBlock = v8;

    [(HMMTROperationWithPriority *)v7 setQueuePriority:a3];
  }

  return v7;
}

@end