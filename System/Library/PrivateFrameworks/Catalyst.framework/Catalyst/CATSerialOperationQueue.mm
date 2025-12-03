@interface CATSerialOperationQueue
- (CATSerialOperationQueue)init;
- (id)debugDescription;
- (void)addOperation:(id)operation;
@end

@implementation CATSerialOperationQueue

- (CATSerialOperationQueue)init
{
  v5.receiver = self;
  v5.super_class = CATSerialOperationQueue;
  v2 = [(CATSerialOperationQueue *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CATSerialOperationQueue *)v2 setMaxConcurrentOperationCount:1];
  }

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  v10.receiver = self;
  v10.super_class = CATSerialOperationQueue;
  v4 = [(CATOperationQueue *)&v10 description];
  v5 = [v3 stringWithString:v4];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CATSerialOperationQueue isSuspended](self, "isSuspended")}];
  [v5 appendFormat:@"\nSuspended: %@", v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATSerialOperationQueue operationCount](self, "operationCount")}];
  [v5 appendFormat:@"\nOperation Count: %@", v7];

  operations = [(CATSerialOperationQueue *)self operations];
  [v5 appendFormat:@"\nOperations: %@", operations];

  return v5;
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  WeakRetained = objc_loadWeakRetained(&self->mLastOperation);
  if (WeakRetained)
  {
    [operationCopy addDependency:WeakRetained];
  }

  objc_storeWeak(&self->mLastOperation, operationCopy);
  v6.receiver = self;
  v6.super_class = CATSerialOperationQueue;
  [(CATOperationQueue *)&v6 addOperation:operationCopy];
}

@end