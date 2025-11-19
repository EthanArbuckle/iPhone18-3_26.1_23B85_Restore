@interface ReadingListLibraryItemController
- (id)_bookmarksNavigationControllerDelegate;
- (id)readingListViewControllerCurrentReadingListItem:(id)a3;
- (id)viewController;
- (unint64_t)dropOperationForSession:(id)a3;
- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5;
- (void)readingListViewController:(id)a3 setBookmark:(id)a4 asRead:(BOOL)a5;
- (void)readingListViewController:(id)a3 updateUnreadFilterShowingAllBookmarks:(BOOL)a4;
- (void)updateListContentConfiguration:(id)a3;
@end

@implementation ReadingListLibraryItemController

- (void)updateListContentConfiguration:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = [v3 systemImageNamed:@"eyeglasses"];
  [v4 setImage:v5];

  v6 = _WBSLocalizedString();
  [v4 setText:v6];
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
    v6 = [(LibraryItemController *)self configuration];
    v7 = [v6 linkPreviewProvider];
    [(ReadingListViewController *)self->_viewController setLinkPreviewProvider:v7];

    v8 = [(LibraryItemController *)self configuration];
    v9 = [v8 navigationIntentHandler];
    [(ReadingListViewController *)self->_viewController setNavigationIntentHandler:v9];

    v10 = [(LibraryItemController *)self configuration];
    v11 = [v10 tabGroupProvider];
    [(ReadingListViewController *)self->_viewController setTabGroupProvider:v11];

    v12 = [(ReadingListViewController *)self->_viewController navigationItem];
    [v12 setLargeTitleDisplayMode:2];

    viewController = self->_viewController;
  }

  return viewController;
}

- (id)_bookmarksNavigationControllerDelegate
{
  v2 = [(LibraryItemController *)self configuration];
  v3 = [v2 bookmarksNavigationControllerDelegate];

  return v3;
}

- (id)readingListViewControllerCurrentReadingListItem:(id)a3
{
  v3 = [(ReadingListLibraryItemController *)self _bookmarksNavigationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 bookmarksNavigationControllerCurrentContinuousReadingItem:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)readingListViewController:(id)a3 setBookmark:(id)a4 asRead:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v7 = [(ReadingListLibraryItemController *)self _bookmarksNavigationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 bookmarksNavigationController:0 setBookmark:v8 asRead:v5];
  }
}

- (void)readingListViewController:(id)a3 updateUnreadFilterShowingAllBookmarks:(BOOL)a4
{
  v4 = a4;
  v5 = [(ReadingListLibraryItemController *)self _bookmarksNavigationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 bookmarksNavigationController:0 updateReadingListUnreadFilterShowingAllBookmarks:v4];
  }
}

- (unint64_t)dropOperationForSession:(id)a3
{
  v3 = MEMORY[0x277D7B5A8];
  v4 = a3;
  v5 = [v3 mainBookmarkCollection];
  v6 = [(WebBookmarkCollection *)v5 dropOperationForReadingListDropSession:v4];

  return v6;
}

- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5
{
  v5 = MEMORY[0x277D7B5A8];
  v6 = a4;
  v7 = [v5 mainBookmarkCollection];
  v8 = [v6 items];

  [(WebBookmarkCollection *)v7 dropDragItemsInReadingList:v8 updatingController:0];
  v9 = [MEMORY[0x277D499B8] sharedLogger];
  [v9 didUseSidebarAction:21];
}

@end