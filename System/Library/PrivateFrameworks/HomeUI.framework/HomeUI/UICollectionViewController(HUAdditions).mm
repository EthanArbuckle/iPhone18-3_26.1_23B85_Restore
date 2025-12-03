@interface UICollectionViewController(HUAdditions)
- (id)hu_actionSheetWithTitle:()HUAdditions message:indexPath:;
- (uint64_t)hu_shouldScrollToTop;
@end

@implementation UICollectionViewController(HUAdditions)

- (id)hu_actionSheetWithTitle:()HUAdditions message:indexPath:
{
  v8 = a5;
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:a3 message:a4 preferredStyle:0];
  popoverPresentationController = [v9 popoverPresentationController];

  if (popoverPresentationController)
  {
    collectionView = [self collectionView];
    collectionView2 = [collectionView cellForItemAtIndexPath:v8];

    if (!collectionView2)
    {
      collectionView2 = [self collectionView];
    }

    popoverPresentationController2 = [v9 popoverPresentationController];
    [popoverPresentationController2 setSourceView:collectionView2];
  }

  return v9;
}

- (uint64_t)hu_shouldScrollToTop
{
  if (![self isViewLoaded])
  {
    return 1;
  }

  collectionView = [self collectionView];
  [collectionView adjustedContentInset];
  v4 = v3 <= 0.0;

  return v4;
}

@end