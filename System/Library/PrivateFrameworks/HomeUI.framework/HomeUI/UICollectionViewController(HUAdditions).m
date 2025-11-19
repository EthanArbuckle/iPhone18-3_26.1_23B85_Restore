@interface UICollectionViewController(HUAdditions)
- (id)hu_actionSheetWithTitle:()HUAdditions message:indexPath:;
- (uint64_t)hu_shouldScrollToTop;
@end

@implementation UICollectionViewController(HUAdditions)

- (id)hu_actionSheetWithTitle:()HUAdditions message:indexPath:
{
  v8 = a5;
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:a3 message:a4 preferredStyle:0];
  v10 = [v9 popoverPresentationController];

  if (v10)
  {
    v11 = [a1 collectionView];
    v12 = [v11 cellForItemAtIndexPath:v8];

    if (!v12)
    {
      v12 = [a1 collectionView];
    }

    v13 = [v9 popoverPresentationController];
    [v13 setSourceView:v12];
  }

  return v9;
}

- (uint64_t)hu_shouldScrollToTop
{
  if (![a1 isViewLoaded])
  {
    return 1;
  }

  v2 = [a1 collectionView];
  [v2 adjustedContentInset];
  v4 = v3 <= 0.0;

  return v4;
}

@end