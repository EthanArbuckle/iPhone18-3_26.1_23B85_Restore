@interface AddToFavoritesUIActivity
- (BOOL)addBookmarkNavControllerCanSaveBookmarkChanges:(id)changes;
- (BOOL)canPerformWithTabDocument:(id)document;
- (id)_systemImageName;
- (id)activityTitle;
- (id)activityType;
- (void)activityDidFinish:(BOOL)finish;
- (void)addBookmarkNavController:(id)controller didFinishWithResult:(BOOL)result bookmark:(id)bookmark;
- (void)prepareWithTabDocument:(id)document;
@end

@implementation AddToFavoritesUIActivity

- (id)activityType
{
  if (self->_isForPerTabGroupFavorites)
  {
    return @"com.apple.mobilesafari.activity.addToPerTabGroupFavorites";
  }

  else
  {
    return @"com.apple.mobilesafari.activity.addToFavorites";
  }
}

- (id)activityTitle
{
  if (self->_isForPerTabGroupFavorites)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = _WBSLocalizedString();
    delegate = [(_SFActivity *)self delegate];
    addBookmarkActivityTabGroupProvider = [delegate addBookmarkActivityTabGroupProvider];
    activeTabGroup = [addBookmarkActivityTabGroupProvider activeTabGroup];
    displayTitle = [activeTabGroup displayTitle];
    v9 = [v3 stringWithFormat:v4, displayTitle];
  }

  else
  {
    v9 = _WBSLocalizedString();
  }

  return v9;
}

- (id)_systemImageName
{
  if (self->_isForPerTabGroupFavorites)
  {
    return @"star.square.on.square";
  }

  else
  {
    return @"star";
  }
}

- (BOOL)canPerformWithTabDocument:(id)document
{
  documentCopy = document;
  if (self->_isForPerTabGroupFavorites && (-[_SFActivity delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 addBookmarkActivityTabGroupProvider], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "activeTabGroup"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "supportsTabGroupFavorites"), v7, v6, v5, !v8))
  {
    isBookmarksAvailable = 0;
  }

  else
  {
    mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
    if ([mEMORY[0x277D7B590] usesAllowedSitesOnly])
    {
      isBookmarksAvailable = 0;
    }

    else
    {
      v11 = +[FeatureManager sharedFeatureManager];
      isBookmarksAvailable = [v11 isBookmarksAvailable];
    }
  }

  return isBookmarksAvailable;
}

- (void)prepareWithTabDocument:(id)document
{
  documentCopy = document;
  objc_storeStrong(&self->_tabDocument, document);
  delegate = [(_SFActivity *)self delegate];
  addBookmarkActivityTabGroupProvider = [delegate addBookmarkActivityTabGroupProvider];
  v7 = addBookmarkActivityTabGroupProvider;
  bookmarkNavController = self->_bookmarkNavController;
  if (self->_isForPerTabGroupFavorites)
  {
    if (bookmarkNavController)
    {
      goto LABEL_7;
    }

    activeTabGroup = [addBookmarkActivityTabGroupProvider activeTabGroup];
    mainBookmarkCollection = [v7 syntheticBookmarkFolderForTabGroup:activeTabGroup withAttribution:0];

    v11 = [objc_alloc(MEMORY[0x277CDB8C8]) initForAddingToSyntheticBookmarkFolder:mainBookmarkCollection];
  }

  else
  {
    if (bookmarkNavController)
    {
      goto LABEL_7;
    }

    v12 = objc_alloc(MEMORY[0x277CDB8C8]);
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v11 = [v12 initForAddingToFavoritesInCollection:mainBookmarkCollection];
  }

  v13 = self->_bookmarkNavController;
  self->_bookmarkNavController = v11;

LABEL_7:
  [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController setSyntheticBookmarkProvider:v7];
  v14 = [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController prepareForPresentationForAddingBookmark:1];
  v15 = self->_bookmarkNavController;
  if (v14)
  {
    titleForNewBookmark = [documentCopy titleForNewBookmark];
    cachedCanonicalURLOrURLForSharing = [documentCopy cachedCanonicalURLOrURLForSharing];
    absoluteString = [cachedCanonicalURLOrURLForSharing absoluteString];
    mainBookmarkCollection2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    favoritesFolder = [mainBookmarkCollection2 favoritesFolder];
    v21 = [(_SFSingleBookmarkNavigationController *)v15 addBookmarkWithTitle:titleForNewBookmark address:absoluteString parentBookmark:favoritesFolder];

    [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController setBookmarkNavDelegate:self];
  }

  else
  {
    self->_bookmarkNavController = 0;

    [delegate addBookmarkActivityFailedToAcquireBookmarkLock:self];
  }
}

- (void)activityDidFinish:(BOOL)finish
{
  finishCopy = finish;
  v5.receiver = self;
  v5.super_class = AddToFavoritesUIActivity;
  [(_SFActivity *)&v5 activityDidFinish:?];
  if (finishCopy)
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] _sf_didAddFavoriteFromShareSheet];
  }
}

- (void)addBookmarkNavController:(id)controller didFinishWithResult:(BOOL)result bookmark:(id)bookmark
{
  resultCopy = result;
  bookmarkCopy = bookmark;
  [(AddToFavoritesUIActivity *)self activityDidFinish:resultCopy];
  if (resultCopy && !self->_isForPerTabGroupFavorites)
  {
    v8 = MEMORY[0x277D4A7A0];
    webView = [(TabDocument *)self->_tabDocument webView];
    mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__AddToFavoritesUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke;
    v11[3] = &unk_2781D7480;
    v12 = bookmarkCopy;
    [v8 saveLeadImageFromWebView:webView toLeadImageCacheRegisteredWithMetadataManager:mEMORY[0x277D28F58] completionHandler:v11];
  }
}

void __82__AddToFavoritesUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__AddToFavoritesUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_23;
    v9[3] = &unk_2781D4C88;
    v10 = *(a1 + 32);
    v11 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  else if (v6)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __82__AddToFavoritesUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_cold_1(v8, v7);
    }
  }
}

void __82__AddToFavoritesUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_23(uint64_t a1)
{
  v2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  [(WebBookmarkCollection *)v2 updateBookmark:*(a1 + 40) withLeadImageURL:?];
}

- (BOOL)addBookmarkNavControllerCanSaveBookmarkChanges:(id)changes
{
  selfCopy = self;
  delegate = [(_SFActivity *)self delegate];
  LOBYTE(selfCopy) = [delegate addBookmarkActivityCanSaveBookmarkChanges:selfCopy];

  return selfCopy;
}

void __82__AddToFavoritesUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_215819000, v3, OS_LOG_TYPE_ERROR, "Could not save lead image for bookmark from Favorites action sheet action in with error: %{public}@", &v5, 0xCu);
}

@end