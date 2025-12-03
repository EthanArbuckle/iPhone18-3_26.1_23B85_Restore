@interface SFStartPageMultiSectionDataSource
- (SFStartPageMultiSectionDataSource)initWithSectionTitle:(id)title reloadHandler:(id)handler navigationItemHandler:(id)itemHandler;
- (void)_reloadSections;
- (void)connectToViewController:(id)controller;
- (void)reloadDataAnimatingDifferences:(BOOL)differences;
- (void)reloadNavigationItemAnimated:(BOOL)animated;
- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)bar;
@end

@implementation SFStartPageMultiSectionDataSource

- (SFStartPageMultiSectionDataSource)initWithSectionTitle:(id)title reloadHandler:(id)handler navigationItemHandler:(id)itemHandler
{
  titleCopy = title;
  handlerCopy = handler;
  itemHandlerCopy = itemHandler;
  v20.receiver = self;
  v20.super_class = SFStartPageMultiSectionDataSource;
  v12 = [(SFStartPageMultiSectionDataSource *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    v14 = _Block_copy(handlerCopy);
    reloadHandler = v13->_reloadHandler;
    v13->_reloadHandler = v14;

    v16 = _Block_copy(itemHandlerCopy);
    navigationItemHandler = v13->_navigationItemHandler;
    v13->_navigationItemHandler = v16;

    v18 = v13;
  }

  return v13;
}

- (void)connectToViewController:(id)controller
{
  sections = self->_sections;
  obj = controller;
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

- (void)reloadDataAnimatingDifferences:(BOOL)differences
{
  differencesCopy = differences;
  [(SFStartPageMultiSectionDataSource *)self _reloadSections];
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewController);
  [WeakRetained reloadDataAnimatingDifferences:differencesCopy];
}

- (void)reloadNavigationItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewController);
  [WeakRetained reloadNavigationItemAnimated:animatedCopy];
}

- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)bar
{
  navigationItem = [bar navigationItem];
  (*(self->_navigationItemHandler + 2))();
  if (self->_title)
  {
    title = self->_title;
  }

  else
  {
    title = &stru_1EFF36230;
  }

  [navigationItem setTitle:title];
}

@end