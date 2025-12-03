@interface CAMReviewViewController
- (BOOL)assetExplorerReviewScreenViewController:(id)controller shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (CAMCameraReviewDelegate)reviewDelegate;
- (CAMReviewViewController)initWithAssets:(id)assets;
- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d;
- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)cancel;
- (void)assetExplorerReviewScreenViewControllerDidPressRetake:(id)retake;
- (void)loadView;
@end

@implementation CAMReviewViewController

- (CAMReviewViewController)initWithAssets:(id)assets
{
  v32 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v30.receiver = self;
  v30.super_class = CAMReviewViewController;
  v5 = [(CAMReviewViewController *)&v30 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [assetsCopy copy];
    initialAssets = v5->__initialAssets;
    v5->__initialAssets = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = assetsCopy;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        v13 = 0;
        do
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          identifier = [*(*(&v26 + 1) + 8 * v13) identifier];
          [v8 addObject:identifier];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }

    v15 = objc_alloc_init(MEMORY[0x1E69C4990]);
    reviewDataSource = v5->__reviewDataSource;
    v5->__reviewDataSource = v15;

    [(PUReviewDataSource *)v5->__reviewDataSource insertAssets:v9];
    v17 = [objc_alloc(MEMORY[0x1E69C4980]) initWithReviewDataSource:v5->__reviewDataSource];
    internalReviewDataSourceManager = v5->__internalReviewDataSourceManager;
    v5->__internalReviewDataSourceManager = v17;

    v19 = objc_alloc_init(MEMORY[0x1E69C4988]);
    internalReviewMediaProvider = v5->__internalReviewMediaProvider;
    v5->__internalReviewMediaProvider = v19;

    v21 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    v22 = [objc_alloc(MEMORY[0x1E69C4908]) initWithDataSourceManager:v5->__internalReviewDataSourceManager mediaProvider:v5->__internalReviewMediaProvider reviewAssetProvider:0 initialIndexPath:v21 initialSelectedAssetUUIDs:v8 initialDisabledLivePhotoAssetUUIDs:0 sourceType:2];
    internalReviewViewController = v5->__internalReviewViewController;
    v5->__internalReviewViewController = v22;

    [(PUAssetExplorerReviewScreenViewController *)v5->__internalReviewViewController setDelegate:v5];
    v24 = v5;
  }

  return v5;
}

- (void)loadView
{
  v3 = [CAMReviewViewControllerContainerView alloc];
  v6 = [(CAMReviewViewControllerContainerView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  _internalReviewViewController = [(CAMReviewViewController *)self _internalReviewViewController];
  [(CAMReviewViewController *)self addChildViewController:_internalReviewViewController];
  view = [_internalReviewViewController view];
  [(CAMReviewViewControllerContainerView *)v6 setReviewView:view];
  [_internalReviewViewController didMoveToParentViewController:self];
  [(CAMReviewViewController *)self setView:v6];
}

- (BOOL)assetExplorerReviewScreenViewController:(id)controller shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  if (type > 6)
  {
    return 0;
  }

  if (((1 << type) & 0x65) != 0)
  {
    return 1;
  }

  if (type == 1)
  {
    return [asset isTemporaryPlaceholder] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)cancel
{
  reviewDelegate = [(CAMReviewViewController *)self reviewDelegate];
  if (reviewDelegate)
  {
    v5 = reviewDelegate;
    reviewDelegate = objc_opt_respondsToSelector();
    if (reviewDelegate)
    {
      reviewDelegate = [v5 reviewViewControllerDidCancelReview:self];
    }
  }

  MEMORY[0x1EEE66BE0](reviewDelegate);
}

- (void)assetExplorerReviewScreenViewControllerDidPressRetake:(id)retake
{
  reviewDelegate = [(CAMReviewViewController *)self reviewDelegate];
  if (reviewDelegate)
  {
    v5 = reviewDelegate;
    reviewDelegate = objc_opt_respondsToSelector();
    if (reviewDelegate)
    {
      reviewDelegate = [v5 reviewViewControllerDidRequestRetake:self];
    }
  }

  MEMORY[0x1EEE66BE0](reviewDelegate);
}

- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  _initialAssets = [(CAMReviewViewController *)self _initialAssets];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [_initialAssets countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(_initialAssets);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        uuid = [v17 uuid];
        if ([dsCopy containsObject:uuid])
        {
          v19 = [dCopy objectForKeyedSubscript:uuid];
          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v17;
          }

          [v11 addObject:v20];
        }
      }

      v14 = [_initialAssets countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v21 = [v11 copy];
  reviewDelegate = [(CAMReviewViewController *)selfCopy reviewDelegate];
  if (reviewDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [reviewDelegate reviewViewController:selfCopy didFinishReviewingAssets:v21];
  }
}

- (CAMCameraReviewDelegate)reviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reviewDelegate);

  return WeakRetained;
}

@end