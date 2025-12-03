@interface SFStartPageSingleSectionDataSource
- (SFStartPageSingleSectionDataSource)initWithReloadHandler:(id)handler navigationItemHandler:(id)itemHandler;
- (id)sectionsForStartPageCollectionViewController:(id)controller;
- (void)_reloadSection;
- (void)connectToViewController:(id)controller;
- (void)reloadDataAnimatingDifferences:(BOOL)differences;
- (void)reloadNavigationItemAnimated:(BOOL)animated;
- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)bar;
@end

@implementation SFStartPageSingleSectionDataSource

- (SFStartPageSingleSectionDataSource)initWithReloadHandler:(id)handler navigationItemHandler:(id)itemHandler
{
  handlerCopy = handler;
  itemHandlerCopy = itemHandler;
  v15.receiver = self;
  v15.super_class = SFStartPageSingleSectionDataSource;
  v8 = [(SFStartPageSingleSectionDataSource *)&v15 init];
  if (v8)
  {
    v9 = _Block_copy(handlerCopy);
    reloadHandler = v8->_reloadHandler;
    v8->_reloadHandler = v9;

    v11 = _Block_copy(itemHandlerCopy);
    navigationItemHandler = v8->_navigationItemHandler;
    v8->_navigationItemHandler = v11;

    v13 = v8;
  }

  return v8;
}

- (void)connectToViewController:(id)controller
{
  controllerCopy = controller;
  obj = controllerCopy;
  if (!self->_section)
  {
    [(SFStartPageSingleSectionDataSource *)self _reloadSection];
    controllerCopy = obj;
  }

  [controllerCopy setDisplaysSectionHeaders:0];
  [obj setStrongDataSource:self];
  objc_storeWeak(&self->_collectionViewController, obj);
}

- (void)_reloadSection
{
  v3 = (*(self->_reloadHandler + 2))();
  section = self->_section;
  self->_section = v3;
}

- (void)reloadDataAnimatingDifferences:(BOOL)differences
{
  differencesCopy = differences;
  [(SFStartPageSingleSectionDataSource *)self _reloadSection];
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewController);
  [WeakRetained reloadDataAnimatingDifferences:differencesCopy];
}

- (void)reloadNavigationItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewController);
  [WeakRetained reloadNavigationItemAnimated:animatedCopy];
}

- (id)sectionsForStartPageCollectionViewController:(id)controller
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

- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)bar
{
  navigationItem = [bar navigationItem];
  (*(self->_navigationItemHandler + 2))();
  title = [(WBSStartPageSection *)self->_section title];
  [navigationItem setTitle:title];
}

@end