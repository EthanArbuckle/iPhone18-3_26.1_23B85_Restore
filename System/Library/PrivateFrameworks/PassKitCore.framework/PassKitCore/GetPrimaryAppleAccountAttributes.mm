@interface GetPrimaryAppleAccountAttributes
@end

@implementation GetPrimaryAppleAccountAttributes

void ___GetPrimaryAppleAccountAttributes_block_invoke_2(uint64_t a1)
{
  if (_MergedGlobals_251 == 1 && *(a1 + 40) == 1)
  {
    v2 = *(*(a1 + 32) + 16);

    v2();
  }

  else
  {
    v3 = +[PKAppleAccountManager sharedInstance];
    v4 = [v3 appleAccountInformation];

    _MergedGlobals_251 = v4 != 0;
    byte_1ED6D1F39 = [v4 isManagedAppleAccount];
    byte_1ED6D1F3A = [v4 isWalletEnabledOnManagedAppleAccount];
    (*(*(a1 + 32) + 16))();
  }
}

void ___GetPrimaryAppleAccountAttributes_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.passkitcore.wallet.visibility", 0);
  v1 = qword_1ED6D1F58;
  qword_1ED6D1F58 = v0;
}

@end