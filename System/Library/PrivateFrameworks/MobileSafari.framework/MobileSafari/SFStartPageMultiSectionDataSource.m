@interface SFStartPageMultiSectionDataSource
- (SFStartPageMultiSectionDataSource)initWithSectionTitle:(id)a3 reloadHandler:(id)a4 navigationItemHandler:(id)a5;
- (void)_reloadSections;
- (void)connectToViewController:(id)a3;
- (void)reloadDataAnimatingDifferences:(BOOL)a3;
- (void)reloadNavigationItemAnimated:(BOOL)a3;
- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)a3;
@end

@implementation SFStartPageMultiSectionDataSource

- (SFStartPageMultiSectionDataSource)initWithSectionTitle:(id)a3 reloadHandler:(id)a4 navigationItemHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = SFStartPageMultiSectionDataSource;
  v12 = [(SFStartPageMultiSectionDataSource *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    v14 = _Block_copy(v10);
    reloadHandler = v13->_reloadHandler;
    v13->_reloadHandler = v14;

    v16 = _Block_copy(v11);
    navigationItemHandler = v13->_navigationItemHandler;
    v13->_navigationItemHandler = v16;

    v18 = v13;
  }

  return v13;
}

- (void)connectToViewController:(id)a3
{
  sections = self->_sections;
  obj = a3;
  if (![(NSArray *)sections count])
  {
    [(SFStartPageMultiSectionDataSource *)self _reloadSections];
  }

  [obj setDisplaysSectionHeaders:1];
  [obj setStrongDataSource:self];
  objc_storeWeak(&self->_collectionViewController, obj);
}

- (void)_reloadSections
{
  v3 = (*(self->_reloadHandler + 2))();
  sections = self->_sections;
  self->_sections = v3;
}

- (void)reloadDataAnimatingDifferences:(BOOL)a3
{
  v3 = a3;
  [(SFStartPageMultiSectionDataSource *)self _reloadSections];
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewController);
  [WeakRetained reloadDataAnimatingDifferences:v3];
}

- (void)reloadNavigationItemAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewController);
  [WeakRetained reloadNavigationItemAnimated:v3];
}

- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)a3
{
  v5 = [a3 navigationItem];
  (*(self->_navigationItemHandler + 2))();
  if (self->_title)
  {
    title = self->_title;
  }

  else
  {
    title = &stru_1EFF36230;
  }

  [v5 setTitle:title];
}

@end