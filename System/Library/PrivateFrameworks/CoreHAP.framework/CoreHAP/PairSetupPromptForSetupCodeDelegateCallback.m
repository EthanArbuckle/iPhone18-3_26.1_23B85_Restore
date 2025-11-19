@interface PairSetupPromptForSetupCodeDelegateCallback
@end

@implementation PairSetupPromptForSetupCodeDelegateCallback

void ___PairSetupPromptForSetupCodeDelegateCallback_f_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didReceiveBadPasswordThrottleAttemptsWithDelay:*(a1 + 40)];
}

void ___PairSetupPromptForSetupCodeDelegateCallback_f_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) promptUserForPasswordWithType:1];
}

@end