@interface FCKeyedOperation
- (void)cancel;
@end

@implementation FCKeyedOperation

void __60__FCKeyedOperation_executeForQueue_delegate_key_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    [*(a1 + 40) cancel];
  }

  else
  {
    objc_storeStrong((v1 + 16), *(a1 + 40));
  }
}

- (void)cancel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __26__FCKeyedOperation_cancel__block_invoke;
  v2[3] = &unk_1E7C36EA0;
  v2[4] = self;
  FCPerformBlockOnMainThread(v2);
}

@end