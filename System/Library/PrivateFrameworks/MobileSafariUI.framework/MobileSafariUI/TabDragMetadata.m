@interface TabDragMetadata
- (BrowserController)browserController;
- (TabCollectionView)targetTabViewForDragPreview;
@end

@implementation TabDragMetadata

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

- (TabCollectionView)targetTabViewForDragPreview
{
  WeakRetained = objc_loadWeakRetained(&self->_targetTabViewForDragPreview);

  return WeakRetained;
}

@end