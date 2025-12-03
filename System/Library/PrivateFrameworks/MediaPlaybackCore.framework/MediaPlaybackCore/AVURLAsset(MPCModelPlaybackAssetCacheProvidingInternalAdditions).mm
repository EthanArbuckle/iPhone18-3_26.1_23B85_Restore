@interface AVURLAsset(MPCModelPlaybackAssetCacheProvidingInternalAdditions)
- (void)mpc_addDownloadCompletionHandler:()MPCModelPlaybackAssetCacheProvidingInternalAdditions;
@end

@implementation AVURLAsset(MPCModelPlaybackAssetCacheProvidingInternalAdditions)

- (void)mpc_addDownloadCompletionHandler:()MPCModelPlaybackAssetCacheProvidingInternalAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_getAssociatedObject(self, _MPCAVURLAssetAssociatedKeyModelPlaybackDownloadCompletionObserver);
    v6 = v5;
    if (v5)
    {
      completionHandler = [v5 completionHandler];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __101__AVURLAsset_MPCModelPlaybackAssetCacheProvidingInternalAdditions__mpc_addDownloadCompletionHandler___block_invoke_2;
      v9[3] = &unk_1E8234798;
      v10 = completionHandler;
      v11 = v4;
      v8 = completionHandler;
      [v6 setCompletionHandler:v9];
    }

    else
    {
      v8 = [[_MPCURLAssetDownloadCompletionObserver alloc] initWithAsset:self];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __101__AVURLAsset_MPCModelPlaybackAssetCacheProvidingInternalAdditions__mpc_addDownloadCompletionHandler___block_invoke;
      v12[3] = &unk_1E8234770;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      [(_MPCURLAssetDownloadCompletionObserver *)v8 setCompletionHandler:v12];
      objc_setAssociatedObject(self, _MPCAVURLAssetAssociatedKeyModelPlaybackDownloadCompletionObserver, v8, 1);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

@end