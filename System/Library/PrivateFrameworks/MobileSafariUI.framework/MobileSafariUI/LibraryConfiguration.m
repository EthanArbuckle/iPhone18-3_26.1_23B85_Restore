@interface LibraryConfiguration
- (BookmarksNavigationControllerDelegate)bookmarksNavigationControllerDelegate;
- (LibraryItemOpenHandler)libraryItemOpenHandler;
- (LinkPreviewProvider)linkPreviewProvider;
- (NSUndoManager)undoManager;
- (PinnedTabsManager)pinnedTabsManager;
- (SFTabIconPool)tabIconPool;
- (TabGroupProvider)tabGroupProvider;
- (_SFNavigationIntentHandling)navigationIntentHandler;
@end

@implementation LibraryConfiguration

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
}

- (_SFNavigationIntentHandling)navigationIntentHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);

  return WeakRetained;
}

- (LinkPreviewProvider)linkPreviewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);

  return WeakRetained;
}

- (LibraryItemOpenHandler)libraryItemOpenHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryItemOpenHandler);

  return WeakRetained;
}

- (PinnedTabsManager)pinnedTabsManager
{
  WeakRetained = objc_loadWeakRetained(&self->_pinnedTabsManager);

  return WeakRetained;
}

- (BookmarksNavigationControllerDelegate)bookmarksNavigationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);

  return WeakRetained;
}

- (SFTabIconPool)tabIconPool
{
  WeakRetained = objc_loadWeakRetained(&self->_tabIconPool);

  return WeakRetained;
}

- (NSUndoManager)undoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_undoManager);

  return WeakRetained;
}

@end