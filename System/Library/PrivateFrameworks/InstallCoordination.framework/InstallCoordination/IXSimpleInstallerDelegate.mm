@interface IXSimpleInstallerDelegate
@end

@implementation IXSimpleInstallerDelegate

void __86___IXSimpleInstallerDelegate_coordinatorDidCompleteSuccessfully_forApplicationRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v4 = [*(a1 + 40) identity];
    (v3)[2](v3, v4, 0);

    [*(a1 + 32) setCompletion:0];
  }

  [*(a1 + 32) setCoordinator:0];
  v5 = *(a1 + 32);

  _RemoveDelegateFromMap(v5);
}

void __68___IXSimpleInstallerDelegate_coordinator_canceledWithReason_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v3[2](v3, 0, *(a1 + 40));

    [*(a1 + 32) setCompletion:0];
  }

  [*(a1 + 32) setCoordinator:0];
  v4 = *(a1 + 32);

  _RemoveDelegateFromMap(v4);
}

@end