@interface HMFOperationFutureAdapter
- (uint64_t)_handleFinishedOperation:(uint64_t)a1;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation HMFOperationFutureAdapter

- (uint64_t)_handleFinishedOperation:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = v3;
    v5 = [v3 isCancelled];
    v6 = *(a1 + 8);
    if (v5)
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
      v3 = [*(a1 + 8) fulfillWithValue:v10];
      v4 = v10;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v3 = [v4 removeObserver:a1 forKeyPath:@"isFinished" context:HMFOperationFutureAdapterKVOContext];
    v4 = v10;
  }

LABEL_7:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a4;
  v10 = v9;
  if (HMFOperationFutureAdapterKVOContext == a6)
  {
    v13 = v9;
    v11 = [a5 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v12 = [v11 BOOLValue];

    v10 = v13;
    if (v12)
    {
      v9 = [(HMFOperationFutureAdapter *)self _handleFinishedOperation:v13];
      v10 = v13;
    }
  }

  MEMORY[0x2821F96F8](v9, v10);
}

@end