@interface ICDataSource
- (ICDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4;
- (UICollectionView)collectionView;
- (id)associatedCellsForItemIdentifiers:(id)a3;
- (void)dealloc;
@end

@implementation ICDataSource

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (ICDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = ICDataSource;
  v8 = [(ICDataSource *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_collectionView, v6);
    v10 = [objc_alloc(MEMORY[0x1E69DC820]) initWithCollectionView:v6 cellProvider:v7];
    collectionViewDiffableDataSource = v9->_collectionViewDiffableDataSource;
    v9->_collectionViewDiffableDataSource = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v9 selector:sel_accountHidesNotesInCustomFoldersDidChange_ name:*MEMORY[0x1E69B73B8] object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v9 selector:sel_accountHidesNotesInCustomFoldersDidChange_ name:*MEMORY[0x1E69B73A8] object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v9 selector:sel_accountHidesNotesInCustomFoldersDidChange_ name:*MEMORY[0x1E69B73B0] object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v9 selector:sel_noteLockManagerWillToggleLock_ name:@"ICNoteLockManagerWillToggleLock" object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v9 selector:sel_noteLockManagerDidToggleLock_ name:@"ICNoteLockManagerDidToggleLock" object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDataSource;
  [(ICDataSource *)&v4 dealloc];
}

- (id)associatedCellsForItemIdentifiers:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__ICDataSource_associatedCellsForItemIdentifiers___block_invoke;
  v5[3] = &unk_1E846D6D0;
  v5[4] = self;
  v3 = [a3 ic_compactMap:v5];

  return v3;
}

id __50__ICDataSource_associatedCellsForItemIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 collectionViewDiffableDataSource];
  v6 = [v5 indexPathForItemIdentifier:v4];

  if (v6)
  {
    v7 = [*(a1 + 32) collectionView];
    v8 = [v7 cellForItemAtIndexPath:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end