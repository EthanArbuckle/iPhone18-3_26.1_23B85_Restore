@interface GKGameLayerCollectionDataSource
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)standardCellSizeForCollectionView:(id)view;
- (GKGameLayerCollectionDataSource)initWithGameRecord:(id)record;
- (UIViewController)presentationViewController;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
@end

@implementation GKGameLayerCollectionDataSource

- (GKGameLayerCollectionDataSource)initWithGameRecord:(id)record
{
  recordCopy = record;
  v8.receiver = self;
  v8.super_class = GKGameLayerCollectionDataSource;
  v5 = [(GKGameLayerCollectionDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKGameLayerCollectionDataSource *)v5 setGameRecord:recordCopy];
  }

  return v6;
}

- (CGSize)standardCellSizeForCollectionView:(id)view
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v4 = objc_alloc_init(MEMORY[0x277D752A8]);

  return v4;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  indexPathsForSelectedItems = [view indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count] == 0;

  return v5;
}

- (UIViewController)presentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationViewController);

  return WeakRetained;
}

@end