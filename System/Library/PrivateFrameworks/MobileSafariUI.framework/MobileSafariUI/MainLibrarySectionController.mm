@interface MainLibrarySectionController
- (MainLibrarySectionController)initWithConfiguration:(id)configuration;
- (id)headerItemController;
- (id)itemControllers;
- (id)libraryItemControllerForCollectionType:(id)type;
- (id)viewControllerForCollectionType:(id)type;
- (void)registerItemsWithRegistration:(id)registration;
@end

@implementation MainLibrarySectionController

- (id)headerItemController
{
  headerItemController = self->_headerItemController;
  if (!headerItemController)
  {
    v4 = [HeaderLibraryItemController alloc];
    configuration = [(LibrarySectionController *)self configuration];
    v6 = [(HeaderLibraryItemController *)v4 initWithConfiguration:configuration headerType:2];
    v7 = self->_headerItemController;
    self->_headerItemController = v6;

    headerItemController = self->_headerItemController;
  }

  return headerItemController;
}

- (id)itemControllers
{
  array = [MEMORY[0x277CBEB18] array];
  [array safari_addObjectUnlessNil:self->_bookmarksItemController];
  [array safari_addObjectUnlessNil:self->_readingListBookmarksItemController];
  [array safari_addObjectUnlessNil:self->_bookmarksFolderItemController];
  [array safari_addObjectUnlessNil:self->_readingListController];
  [array safari_addObjectUnlessNil:self->_historyController];
  [array safari_addObjectUnlessNil:self->_sharedWithYouItemController];

  return array;
}

- (MainLibrarySectionController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v30.receiver = self;
  v30.super_class = MainLibrarySectionController;
  v5 = [(LibrarySectionController *)&v30 initWithConfiguration:configurationCopy];
  if (v5)
  {
    safariBookmarkCollection = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
    v7 = [[HistoryLibraryItemController alloc] initWithConfiguration:configurationCopy];
    historyController = v5->_historyController;
    v5->_historyController = v7;

    if ([MEMORY[0x277D49A08] isSaveForLaterEnabled])
    {
      v9 = [BookmarksLibraryItemController alloc];
      rootBookmark = [safariBookmarkCollection rootBookmark];
      v11 = [(BookmarksLibraryItemController *)v9 initWithConfiguration:configurationCopy folder:rootBookmark collection:safariBookmarkCollection];
      bookmarksItemController = v5->_bookmarksItemController;
      v5->_bookmarksItemController = v11;

      v13 = [BookmarksLibraryItemController itemControllerForReadingListWithConfiguration:configurationCopy];
      readingListBookmarksItemController = v5->_readingListBookmarksItemController;
      v5->_readingListBookmarksItemController = v13;
    }

    else
    {
      v15 = [[ReadingListLibraryItemController alloc] initWithConfiguration:configurationCopy];
      readingListController = v5->_readingListController;
      v5->_readingListController = v15;

      readingListBookmarksItemController = [objc_alloc(MEMORY[0x277D7B5B0]) initReadonlySafariBookmarkCollection];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilesafari.%@.%p", objc_opt_class(), v5];
      v18 = dispatch_queue_create([v17 UTF8String], 0);

      v19 = [BookmarkFolderLibraryItemController alloc];
      rootBookmark2 = [safariBookmarkCollection rootBookmark];
      v21 = [(BookmarkFolderLibraryItemController *)v19 initWithConfiguration:configurationCopy folder:rootBookmark2];
      bookmarksFolderItemController = v5->_bookmarksFolderItemController;
      v5->_bookmarksFolderItemController = v21;

      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setCollection:safariBookmarkCollection];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setBookmarkProvider:readingListBookmarksItemController];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setBookmarkProviderQueue:v18];
      linkPreviewProvider = [configurationCopy linkPreviewProvider];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setLinkPreviewProvider:linkPreviewProvider];

      navigationIntentHandler = [configurationCopy navigationIntentHandler];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setNavigationIntentHandler:navigationIntentHandler];

      tabGroupProvider = [configurationCopy tabGroupProvider];
      [(BookmarkFolderLibraryItemController *)v5->_bookmarksFolderItemController setTabGroupProvider:tabGroupProvider];
    }

    if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
    {
      v26 = [[SharedWithYouLibraryItemController alloc] initWithConfiguration:configurationCopy];
      sharedWithYouItemController = v5->_sharedWithYouItemController;
      v5->_sharedWithYouItemController = v26;
    }

    v28 = v5;
  }

  return v5;
}

- (void)registerItemsWithRegistration:(id)registration
{
  historyController = self->_historyController;
  registrationCopy = registration;
  [registrationCopy registerItem:historyController forCollectionType:@"HistoryCollection"];
  isSaveForLaterEnabled = [MEMORY[0x277D49A08] isSaveForLaterEnabled];
  v6 = &OBJC_IVAR___MainLibrarySectionController__readingListController;
  if (isSaveForLaterEnabled)
  {
    v6 = &OBJC_IVAR___MainLibrarySectionController__readingListBookmarksItemController;
    v7 = &OBJC_IVAR___MainLibrarySectionController__bookmarksItemController;
  }

  else
  {
    v7 = &OBJC_IVAR___MainLibrarySectionController__bookmarksFolderItemController;
  }

  [registrationCopy registerItem:*(&self->super.super.isa + *v6) forCollectionType:@"ReadingListCollection"];
  [registrationCopy registerItem:*(&self->super.super.isa + *v7) forCollectionType:@"BookmarksCollection"];
}

- (id)viewControllerForCollectionType:(id)type
{
  typeCopy = type;
  if ([MEMORY[0x277D49A08] isSaveForLaterEnabled])
  {
    if (@"BookmarksCollection" == typeCopy)
    {
      v5 = &OBJC_IVAR___MainLibrarySectionController__bookmarksItemController;
      goto LABEL_13;
    }

    if (@"ReadingListCollection" == typeCopy)
    {
      v5 = &OBJC_IVAR___MainLibrarySectionController__readingListBookmarksItemController;
      goto LABEL_13;
    }
  }

  else
  {
    if (@"BookmarksCollection" == typeCopy)
    {
      v5 = &OBJC_IVAR___MainLibrarySectionController__bookmarksFolderItemController;
      goto LABEL_13;
    }

    if (@"ReadingListCollection" == typeCopy)
    {
      v5 = &OBJC_IVAR___MainLibrarySectionController__readingListController;
      goto LABEL_13;
    }
  }

  if (@"HistoryCollection" != typeCopy)
  {
    viewController = 0;
    goto LABEL_14;
  }

  v5 = &OBJC_IVAR___MainLibrarySectionController__historyController;
LABEL_13:
  viewController = [*(&self->super.super.isa + *v5) viewController];
LABEL_14:

  return viewController;
}

- (id)libraryItemControllerForCollectionType:(id)type
{
  if (@"BookmarksCollection" == type)
  {
    v6 = &OBJC_IVAR___MainLibrarySectionController__bookmarksItemController;
  }

  else
  {
    if (@"ReadingListCollection" != type)
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