@interface GKGameLayerCollectionDataSource
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)standardCellSizeForCollectionView:(id)a3;
- (GKGameLayerCollectionDataSource)initWithGameRecord:(id)a3;
- (UIViewController)presentationViewController;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
@end

@implementation GKGameLayerCollectionDataSource

- (GKGameLayerCollectionDataSource)initWithGameRecord:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKGameLayerCollectionDataSource;
  v5 = [(GKGameLayerCollectionDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKGameLayerCollectionDataSource *)v5 setGameRecord:v4];
  }

  return v6;
}

- (CGSize)standardCellSizeForCollectionView:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v4 = objc_alloc_init(MEMORY[0x277D752A8]);

  return v4;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = [a3 indexPathsForSelectedItems];
  v5 = [v4 count] == 0;

  return v5;
}

- (UIViewController)presentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationViewController);

  return WeakRetained;
}

@end