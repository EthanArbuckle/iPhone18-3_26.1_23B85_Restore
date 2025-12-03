@interface CATOperation(Timeout)
- (CRKTimeoutHarnessOperation)crk_operationWithTimeout:()Timeout;
- (CRKTimeoutHarnessOperation)crk_timingOutOperationWithTimerPrimitives:()Timeout operationQueue:timerIdentifier:timeout:;
@end

@implementation CATOperation(Timeout)

- (CRKTimeoutHarnessOperation)crk_operationWithTimeout:()Timeout
{
  v4 = [CRKTimeoutHarnessOperation alloc];
  crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
  v6 = [(CRKTimeoutHarnessOperation *)v4 initWithOperationQueue:crk_backgroundQueue operation:self timout:a2];

  return v6;
}

- (CRKTimeoutHarnessOperation)crk_timingOutOperationWithTimerPrimitives:()Timeout operationQueue:timerIdentifier:timeout:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[CRKTimeoutHarnessOperation alloc] initWithTimerPrimitives:v12 operationQueue:v11 operation:self timerIdentifier:v10 timeout:a2];

  return v13;
}

@end