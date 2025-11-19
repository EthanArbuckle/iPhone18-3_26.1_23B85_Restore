@interface SFStartPageSingleSectionDataSource
- (SFStartPageSingleSectionDataSource)initWithReloadHandler:(id)a3 navigationItemHandler:(id)a4;
- (id)sectionsForStartPageCollectionViewController:(id)a3;
- (void)_reloadSection;
- (void)connectToViewController:(id)a3;
- (void)reloadDataAnimatingDifferences:(BOOL)a3;
- (void)reloadNavigationItemAnimated:(BOOL)a3;
- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)a3;
@end

@implementation SFStartPageSingleSectionDataSource

- (SFStartPageSingleSectionDataSource)initWithReloadHandler:(id)a3 navigationItemHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SFStartPageSingleSectionDataSource;
  v8 = [(SFStartPageSingleSectionDataSource *)&v15 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    reloadHandler = v8->_reloadHandler;
    v8->_reloadHandler = v9;

    v11 = _Block_copy(v7);
    navigationItemHandler = v8->_navigationItemHandler;
    v8->_navigationItemHandler = v11;

    v13 = v8;
  }

  return v8;
}

- (void)connectToViewController:(id)a3
{
  v4 = a3;
  obj = v4;
  if (!self->_section)
  {
    [(SFStartPageSingleSectionDataSource *)self _reloadSection];
    v4 = obj;
  }

  [v4 setDisplaysSectionHeaders:0];
  [obj setStrongDataSource:self];
  objc_storeWeak(&self->_collectionViewController, obj);
}

- (void)_reloadSection
{
  v3 = (*(self->_reloadHandler + 2))();
  section = self->_section;
  self->_section = v3;
}

- (void)reloadDataAnimatingDifferences:(BOOL)a3
{
  v3 = a3;
  [(SFStartPageSingleSectionDataSource *)self _reloadSection];
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewController);
  [WeakRetained reloadDataAnimatingDifferences:v3];
}

- (void)reloadNavigationItemAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewController);
  [WeakRetained reloadNavigationItemAnimated:v3];
}

- (id)sectionsForStartPageCollectionViewController:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_section)
  {
    v5[0] = self->_section;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)a3
{
  v5 = [a3 navigationItem];
  (*(self->_navigationItemHandler + 2))();
  v4 = [(WBSStartPageSection *)self->_section title];
  [v5 setTitle:v4];
}

@end