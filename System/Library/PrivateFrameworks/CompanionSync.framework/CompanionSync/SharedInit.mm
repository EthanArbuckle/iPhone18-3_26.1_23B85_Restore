@interface SharedInit
@end

@implementation SharedInit

void ___SharedInit_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timeoutWindowedMessages];
}

void ___SharedInit_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _expireMessages];
}

@end