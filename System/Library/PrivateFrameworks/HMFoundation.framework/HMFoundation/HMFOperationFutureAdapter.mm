@interface HMFOperationFutureAdapter
- (uint64_t)_handleFinishedOperation:(uint64_t)operation;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation HMFOperationFutureAdapter

- (uint64_t)_handleFinishedOperation:(uint64_t)operation
{
  v3 = a2;
  v4 = v3;
  if (operation)
  {
    v10 = v3;
    isCancelled = [v3 isCancelled];
    v6 = *(operation + 8);
    if (isCancelled)
    {
      v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
      v8 = [v6 rejectWithError:v7];

      v4 = v10;
      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = [*(operation + 8) fulfillWithValue:v10];
      v4 = v10;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v3 = [v4 removeObserver:operation forKeyPath:@"isFinished" context:HMFOperationFutureAdapterKVOContext];
    v4 = v10;
  }

LABEL_7:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  v10 = objectCopy;
  if (HMFOperationFutureAdapterKVOContext == context)
  {
    v13 = objectCopy;
    v11 = [change objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    bOOLValue = [v11 BOOLValue];

    v10 = v13;
    if (bOOLValue)
    {
      objectCopy = [(HMFOperationFutureAdapter *)self _handleFinishedOperation:v13];
      v10 = v13;
    }
  }

  MEMORY[0x2821F96F8](objectCopy, v10);
}

@end