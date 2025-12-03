@interface _MPCURLAssetDownloadCompletionObserver
- (AVURLAsset)asset;
- (_MPCURLAssetDownloadCompletionObserver)initWithAsset:(id)asset;
- (void)_downloadCompleteFailedNotification:(id)notification;
- (void)_notifyCompletionHandlerWithSuccess:(BOOL)success error:(id)error;
- (void)dealloc;
@end

@implementation _MPCURLAssetDownloadCompletionObserver

- (AVURLAsset)asset
{
  WeakRetained = objc_loadWeakRetained(&self->_asset);

  return WeakRetained;
}

- (void)_notifyCompletionHandlerWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  completionHandler = [(_MPCURLAssetDownloadCompletionObserver *)self completionHandler];
  [(_MPCURLAssetDownloadCompletionObserver *)self setCompletionHandler:0];
  if (completionHandler)
  {
    (completionHandler)[2](completionHandler, successCopy, errorCopy);
  }
}

- (void)_downloadCompleteFailedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E6987B60]];
  [(_MPCURLAssetDownloadCompletionObserver *)self _notifyCompletionHandlerWithSuccess:0 error:v4];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_asset);
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6987B68] object:WeakRetained];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6987B58] object:WeakRetained];
  [(_MPCURLAssetDownloadCompletionObserver *)self _notifyCompletionHandlerWithSuccess:0 error:0];

  v5.receiver = self;
  v5.super_class = _MPCURLAssetDownloadCompletionObserver;
  [(_MPCURLAssetDownloadCompletionObserver *)&v5 dealloc];
}

- (_MPCURLAssetDownloadCompletionObserver)initWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(_MPCURLAssetDownloadCompletionObserver *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_asset, assetCopy);
    if (assetCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel__downloadCompleteSuccessNotification_ name:*MEMORY[0x1E6987B68] object:assetCopy];
      [defaultCenter addObserver:v6 selector:sel__downloadCompleteFailedNotification_ name:*MEMORY[0x1E6987B58] object:assetCopy];
    }
  }

  return v6;
}

@end