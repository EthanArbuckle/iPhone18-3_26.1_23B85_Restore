@interface AVURLAsset
@end

@implementation AVURLAsset

void __101__AVURLAsset_MPCModelPlaybackAssetCacheProvidingInternalAdditions__mpc_addDownloadCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_setAssociatedObject(WeakRetained, _MPCAVURLAssetAssociatedKeyModelPlaybackDownloadCompletionObserver, 0, 1);
  }

  (*(*(a1 + 32) + 16))();
}

void __101__AVURLAsset_MPCModelPlaybackAssetCacheProvidingInternalAdditions__mpc_addDownloadCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5, a2, v7);
  (*(*(a1 + 40) + 16))();
}

intptr_t __80__AVURLAsset_MPCHLSSessionData__mpc_synchronousHLSSessionDataWithTimeout_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 statusOfValueForKey:@"metadata" error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v4;
  return dispatch_semaphore_signal(*(a1 + 40));
}

@end