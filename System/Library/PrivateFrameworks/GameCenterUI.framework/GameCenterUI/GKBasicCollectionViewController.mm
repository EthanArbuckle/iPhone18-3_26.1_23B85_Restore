@interface GKBasicCollectionViewController
- (CGSize)preferredContentSize;
- (GKBasicCollectionViewController)initWithDataSource:(id)a3 title:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureDataSource;
- (void)setDataSource:(id)a3;
@end

@implementation GKBasicCollectionViewController

- (GKBasicCollectionViewController)initWithDataSource:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(GKGridLayout);
  v12.receiver = self;
  v12.super_class = GKBasicCollectionViewController;
  v9 = [(GKCollectionViewController *)&v12 initWithCollectionViewLayout:v8];

  if (v9)
  {
    v10 = [(GKBasicCollectionViewController *)v9 navigationItem];
    [v10 setTitle:v7];

    [(GKBasicCollectionViewController *)v9 setInitialDataSource:v6];
  }

  return v9;
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  if (self->_initialDataSource != v5)
  {
    objc_storeStrong(&self->_initialDataSource, a3);
  }

  v6.receiver = self;
  v6.super_class = GKBasicCollectionViewController;
  [(GKCollectionViewController *)&v6 setDataSource:v5];
}

- (void)configureDataSource
{
  v5.receiver = self;
  v5.super_class = GKBasicCollectionViewController;
  [(GKCollectionViewController *)&v5 configureDataSource];
  if (self->_initialDataSource)
  {
    v3 = [(GKCollectionViewController *)self dataSource];
    initialDataSource = self->_initialDataSource;

    if (v3 != initialDataSource)
    {
      [(GKBasicCollectionViewController *)self setDataSource:self->_initialDataSource];
    }
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    [self->_target collectionViewController:self didSelectItemAtIndexPath:v5];
  }
}

- (CGSize)preferredContentSize
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    v9 = 320.0;
    if (fmax(v6, v8) > 1024.0)
    {
      v9 = 375.0;
    }
  }

  else
  {
    v9 = 320.0;
  }

  v10 = 440.0;
  result.height = v10;
  result.width = v9;
  return result;
}

@end