@interface GKBasicCollectionViewController
- (CGSize)preferredContentSize;
- (GKBasicCollectionViewController)initWithDataSource:(id)source title:(id)title;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureDataSource;
- (void)setDataSource:(id)source;
@end

@implementation GKBasicCollectionViewController

- (GKBasicCollectionViewController)initWithDataSource:(id)source title:(id)title
{
  sourceCopy = source;
  titleCopy = title;
  v8 = objc_alloc_init(GKGridLayout);
  v12.receiver = self;
  v12.super_class = GKBasicCollectionViewController;
  v9 = [(GKCollectionViewController *)&v12 initWithCollectionViewLayout:v8];

  if (v9)
  {
    navigationItem = [(GKBasicCollectionViewController *)v9 navigationItem];
    [navigationItem setTitle:titleCopy];

    [(GKBasicCollectionViewController *)v9 setInitialDataSource:sourceCopy];
  }

  return v9;
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  if (self->_initialDataSource != sourceCopy)
  {
    objc_storeStrong(&self->_initialDataSource, source);
  }

  v6.receiver = self;
  v6.super_class = GKBasicCollectionViewController;
  [(GKCollectionViewController *)&v6 setDataSource:sourceCopy];
}

- (void)configureDataSource
{
  v5.receiver = self;
  v5.super_class = GKBasicCollectionViewController;
  [(GKCollectionViewController *)&v5 configureDataSource];
  if (self->_initialDataSource)
  {
    dataSource = [(GKCollectionViewController *)self dataSource];
    initialDataSource = self->_initialDataSource;

    if (dataSource != initialDataSource)
    {
      [(GKBasicCollectionViewController *)self setDataSource:self->_initialDataSource];
    }
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    [self->_target collectionViewController:self didSelectItemAtIndexPath:pathCopy];
  }
}

- (CGSize)preferredContentSize
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
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