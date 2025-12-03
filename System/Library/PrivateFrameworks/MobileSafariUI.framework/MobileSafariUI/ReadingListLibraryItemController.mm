@interface ReadingListLibraryItemController
- (id)_bookmarksNavigationControllerDelegate;
- (id)readingListViewControllerCurrentReadingListItem:(id)item;
- (id)viewController;
- (unint64_t)dropOperationForSession:(id)session;
- (void)performDropWithProposal:(id)proposal session:(id)session inViewController:(id)controller;
- (void)readingListViewController:(id)controller setBookmark:(id)bookmark asRead:(BOOL)read;
- (void)readingListViewController:(id)controller updateUnreadFilterShowingAllBookmarks:(BOOL)bookmarks;
- (void)updateListContentConfiguration:(id)configuration;
@end

@implementation ReadingListLibraryItemController

- (void)updateListContentConfiguration:(id)configuration
{
  v3 = MEMORY[0x277D755B8];
  configurationCopy = configuration;
  v5 = [v3 systemImageNamed:@"eyeglasses"];
  [configurationCopy setImage:v5];

  v6 = _WBSLocalizedString();
  [configurationCopy setText:v6];
}

- (id)viewController
{
  viewController = self->_viewController;
  if (!viewController)
  {
    v4 = objc_alloc_init(ReadingListViewController);
    v5 = self->_viewController;
    self->_viewController = v4;

    [(ReadingListViewController *)self->_viewController setDelegate:self];
    configuration = [(LibraryItemController *)self configuration];
    linkPreviewProvider = [configuration linkPreviewProvider];
    [(ReadingListViewController *)self->_viewController setLinkPreviewProvider:linkPreviewProvider];

    configuration2 = [(LibraryItemController *)self configuration];
    navigationIntentHandler = [configuration2 navigationIntentHandler];
    [(ReadingListViewController *)self->_viewController setNavigationIntentHandler:navigationIntentHandler];

    configuration3 = [(LibraryItemController *)self configuration];
    tabGroupProvider = [configuration3 tabGroupProvider];
    [(ReadingListViewController *)self->_viewController setTabGroupProvider:tabGroupProvider];

    navigationItem = [(ReadingListViewController *)self->_viewController navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    viewController = self->_viewController;
  }

  return viewController;
}

- (id)_bookmarksNavigationControllerDelegate
{
  configuration = [(LibraryItemController *)self configuration];
  bookmarksNavigationControllerDelegate = [configuration bookmarksNavigationControllerDelegate];

  return bookmarksNavigationControllerDelegate;
}

- (id)readingListViewControllerCurrentReadingListItem:(id)item
{
  _bookmarksNavigationControllerDelegate = [(ReadingListLibraryItemController *)self _bookmarksNavigationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [_bookmarksNavigationControllerDelegate bookmarksNavigationControllerCurrentContinuousReadingItem:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)readingListViewController:(id)controller setBookmark:(id)bookmark asRead:(BOOL)read
{
  readCopy = read;
  bookmarkCopy = bookmark;
  _bookmarksNavigationControllerDelegate = [(ReadingListLibraryItemController *)self _bookmarksNavigationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_bookmarksNavigationControllerDelegate bookmarksNavigationController:0 setBookmark:bookmarkCopy asRead:readCopy];
  }
}

- (void)readingListViewController:(id)controller updateUnreadFilterShowingAllBookmarks:(BOOL)bookmarks
{
  bookmarksCopy = bookmarks;
  _bookmarksNavigationControllerDelegate = [(ReadingListLibraryItemController *)self _bookmarksNavigationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_bookmarksNavigationControllerDelegate bookmarksNavigationController:0 updateReadingListUnreadFilterShowingAllBookmarks:bookmarksCopy];
  }
}

- (unint64_t)dropOperationForSession:(id)session
{
  v3 = MEMORY[0x277D7B5A8];
  sessionCopy = session;
  mainBookmarkCollection = [v3 mainBookmarkCollection];
  v6 = [(WebBookmarkCollection *)mainBookmarkCollection dropOperationForReadingListDropSession:sessionCopy];

  return v6;
}

- (void)performDropWithProposal:(id)proposal session:(id)session inViewController:(id)controller
{
  v5 = MEMORY[0x277D7B5A8];
  sessionCopy = session;
  mainBookmarkCollection = [v5 mainBookmarkCollection];
  items = [sessionCopy items];

  [(WebBookmarkCollection *)mainBookmarkCollection dropDragItemsInReadingList:items updatingController:0];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didUseSidebarAction:21];
}

@end