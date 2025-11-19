@interface MainLibrarySectionController
- (MainLibrarySectionController)initWithConfiguration:(id)a3;
- (id)headerItemController;
- (id)itemControllers;
- (id)libraryItemControllerForCollectionType:(id)a3;
- (id)viewControllerForCollectionType:(id)a3;
- (void)registerItemsWithRegistration:(id)a3;
@end

@implementation MainLibrarySectionController

- (id)headerItemController
{
  headerItemController = self->_headerItemController;
  if (!headerItemController)
  {
    v4 = [HeaderLibraryItemController alloc];
    v5 = [(LibrarySectionController *)self configuration];
    v6 = [(HeaderLibraryItemController *)v4 initWithConfiguration:v5 headerType:2];
    v7 = self->_headerItemController;
    self->_headerItemController = v6;

    headerItemController = self->_headerItemController;
  }

  return headerItemController;
}

- (id)itemControllers
{
  v3 = [MEMORY[0x277CBEB18] array];
  [v3 safari_addObjectUnlessNil:self->_bookmarksItemController];
  [v3 safari_addObjectUnlessNil:self->_readingListBookmarksItemController];
  [v3 safari_addObjectUnlessNil:self->_bookmarksFolderItemController];
  [v3 safari_addObjectUnlessNil:self->_readingListController];
  [v3 safari_addObjectUnlessNil:self->_historyController];
  [v3 safari_addObjectUnlessNil:self->_sharedWithYouItemController];

  return v3;
}

- (MainLibrarySectionController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = MainLibrarySectionController;
  v5 = [(LibrarySectionController *)&v30 initWithConfiguration:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
    v7 = [[HistoryLibraryItemController alloc] initWithConfiguration:v4];
    historyController = v5->_historyController;
    v5->_historyController = v7;

    if ([MEMORY[0x277D49A08] isSaveForLaterEnabled])
    {
      v9 = [BookmarksLibraryItemController alloc];
      v10 = [v6 rootBookmark];
      v11 = [(BookmarksLibraryItemController *)v9 initWithConfiguration:v4 folder:v10 collection:v6];
      bookmarksItemController = v5->_bookmarksItemController;
      v5->_bookmarksItemController = v11;

      v13 = [BookmarksLibraryItemController itemControllerForReadingListWithConfiguration:v4];
      readingListBookmarksItemController = v5->_readingListBookmarksItemController;
      v5->_readingListBookmarksItemController = v13;
    }

    else
    {
      v15 = [[ReadingListLibraryItemController alloc] initWithConfiguration:v4];
      readingListController = v5->_readingListController;
      v5->_readingListController = v15;

      readingListBookmarksItemController = [objc_alloc(MEMORY[0x277D7B5B0]) initReadonlySafariBookmarkCollection];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilesafari.%@.%p", objc_opt_class(), v5];
      v18 = dispatch_queue_create([v17 UTF8String], 0);

      v19 = [BookmarkFolderLibraryItemController alloc];
      v20 = [v6 rootBookmark];
      v21 = [(BookmarkFolderLibraryItemController *)v19 initWithConfiguration:v4 folder:v20];
      bookmarksFolderItemController = v5->_bookmarksFolderItemController;
      v5->_bookmarksFolderItemController = v21;

      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setCollection:v6];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setBookmarkProvider:readingListBookmarksItemController];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setBookmarkProviderQueue:v18];
      v23 = [v4 linkPreviewProvider];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setLinkPreviewProvider:v23];

      v24 = [v4 navigationIntentHandler];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setNavigationIntentHandler:v24];

      v25 = [v4 tabGroupProvider];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setTabGroupProvider:v25];
    }

    if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
    {
      v26 = [[SharedWithYouLibraryItemController alloc] initWithConfiguration:v4];
      sharedWithYouItemController = v5->_sharedWithYouItemController;
      v5->_sharedWithYouItemController = v26;
    }

    v28 = v5;
  }

  return v5;
}

- (void)registerItemsWithRegistration:(id)a3
{
  historyController = self->_historyController;
  v8 = a3;
  [v8 registerItem:historyController forCollectionType:@"HistoryCollection"];
  v5 = [MEMORY[0x277D49A08] isSaveForLaterEnabled];
  v6 = &OBJC_IVAR___MainLibrarySectionController__readingListController;
  if (v5)
  {
    v6 = &OBJC_IVAR___MainLibrarySectionController__readingListBookmarksItemController;
    v7 = &OBJC_IVAR___MainLibrarySectionController__bookmarksItemController;
  }

  else
  {
    v7 = &OBJC_IVAR___MainLibrarySectionController__bookmarksFolderItemController;
  }

  [v8 registerItem:*(&self->super.super.isa + *v6) forCollectionType:@"ReadingListCollection"];
  [v8 registerItem:*(&self->super.super.isa + *v7) forCollectionType:@"BookmarksCollection"];
}

- (id)viewControllerForCollectionType:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D49A08] isSaveForLaterEnabled])
  {
    if (@"BookmarksCollection" == v4)
    {
      v5 = &OBJC_IVAR___MainLibrarySectionController__bookmarksItemController;
      goto LABEL_13;
    }

    if (@"ReadingListCollection" == v4)
    {
      v5 = &OBJC_IVAR___MainLibrarySectionController__readingListBookmarksItemController;
      goto LABEL_13;
    }
  }

  else
  {
    if (@"BookmarksCollection" == v4)
    {
      v5 = &OBJC_IVAR___MainLibrarySectionController__bookmarksFolderItemController;
      goto LABEL_13;
    }

    if (@"ReadingListCollection" == v4)
    {
      v5 = &OBJC_IVAR___MainLibrarySectionController__readingListController;
      goto LABEL_13;
    }
  }

  if (@"HistoryCollection" != v4)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v5 = &OBJC_IVAR___MainLibrarySectionController__historyController;
LABEL_13:
  v6 = [*(&self->super.super.isa + *v5) viewController];
LABEL_14:

  return v6;
}

- (id)libraryItemControllerForCollectionType:(id)a3
{
  if (@"BookmarksCollection" == a3)
  {
    v6 = &OBJC_IVAR___MainLibrarySectionController__bookmarksItemController;
  }

  else
  {
    if (@"ReadingListCollection" != a3)
    {
      v4 = 0;

      return v4;
    }

    v6 = &OBJC_IVAR___MainLibrarySectionController__readingListBookmarksItemController;
  }

  v4 = *(&self->super.super.isa + *v6);

  return v4;
}

@end