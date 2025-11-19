@interface EMOneTimeCodeObserver
@end

@implementation EMOneTimeCodeObserver

void __67___EMOneTimeCodeObserver__performWithRemoteConnection_forRecovery___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] addCancelable:v5];
  }
}

@end