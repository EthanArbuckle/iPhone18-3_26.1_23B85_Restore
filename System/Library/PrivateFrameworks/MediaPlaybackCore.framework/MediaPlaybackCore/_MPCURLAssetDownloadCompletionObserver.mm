@interface _MPCURLAssetDownloadCompletionObserver
- (AVURLAsset)asset;
- (_MPCURLAssetDownloadCompletionObserver)initWithAsset:(id)a3;
- (void)_downloadCompleteFailedNotification:(id)a3;
- (void)_notifyCompletionHandlerWithSuccess:(BOOL)a3 error:(id)a4;
- (void)dealloc;
@end

@implementation _MPCURLAssetDownloadCompletionObserver

- (AVURLAsset)asset
{
  WeakRetained = objc_loadWeakRetained(&self->_asset);

  return WeakRetained;
}

- (void)_notifyCompletionHandlerWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(_MPCURLAssetDownloadCompletionObserver *)self completionHandler];
  [(_MPCURLAssetDownloadCompletionObserver *)self setCompletionHandler:0];
  if (v6)
  {
    (v6)[2](v6, v4, v7);
  }
}

- (void)_downloadCompleteFailedNotification:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKey:*MEMORY[0x1E6987B60]];
  [(_MPCURLAssetDownloadCompletionObserver *)self _notifyCompletionHandlerWithSuccess:0 error:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_asset);
  [v3 removeObserver:self name:*MEMORY[0x1E6987B68] object:WeakRetained];
  [v3 removeObserver:self name:*MEMORY[0x1E6987B58] object:WeakRetained];
  [(_MPCURLAssetDownloadCompletionObserver *)self _notifyCompletionHandlerWithSuccess:0 error:0];

  v5.receiver = self;
  v5.super_class = _MPCURLAssetDownloadCompletionObserver;
  [(_MPCURLAssetDownloadCompletionObserver *)&v5 dealloc];
}

- (_MPCURLAssetDownloadCompletionObserver)initWithAsset:(id)a3
{
  v4 = a3;
  v5 = [(_MPCURLAssetDownloadCompletionObserver *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_asset, v4);
    if (v4)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:v6 selector:sel__downloadCompleteSuccessNotification_ name:*MEMORY[0x1E6987B68] object:v4];
      [v7 addObserver:v6 selector:sel__downloadCompleteFailedNotification_ name:*MEMORY[0x1E6987B58] object:v4];
    }
  }

  return v6;
}

@end