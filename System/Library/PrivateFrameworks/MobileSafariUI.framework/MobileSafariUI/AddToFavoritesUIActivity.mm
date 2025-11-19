@interface AddToFavoritesUIActivity
- (BOOL)addBookmarkNavControllerCanSaveBookmarkChanges:(id)a3;
- (BOOL)canPerformWithTabDocument:(id)a3;
- (id)_systemImageName;
- (id)activityTitle;
- (id)activityType;
- (void)activityDidFinish:(BOOL)a3;
- (void)addBookmarkNavController:(id)a3 didFinishWithResult:(BOOL)a4 bookmark:(id)a5;
- (void)prepareWithTabDocument:(id)a3;
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
    v5 = [(_SFActivity *)self delegate];
    v6 = [v5 addBookmarkActivityTabGroupProvider];
    v7 = [v6 activeTabGroup];
    v8 = [v7 displayTitle];
    v9 = [v3 stringWithFormat:v4, v8];
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

- (BOOL)canPerformWithTabDocument:(id)a3
{
  v4 = a3;
  if (self->_isForPerTabGroupFavorites && (-[_SFActivity delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 addBookmarkActivityTabGroupProvider], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "activeTabGroup"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "supportsTabGroupFavorites"), v7, v6, v5, !v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277D7B590] sharedWebFilterSettings];
    if ([v9 usesAllowedSitesOnly])
    {
      v10 = 0;
    }

    else
    {
      v11 = +[FeatureManager sharedFeatureManager];
      v10 = [v11 isBookmarksAvailable];
    }
  }

  return v10;
}

- (void)prepareWithTabDocument:(id)a3
{
  v22 = a3;
  objc_storeStrong(&self->_tabDocument, a3);
  v5 = [(_SFActivity *)self delegate];
  v6 = [v5 addBookmarkActivityTabGroupProvider];
  v7 = v6;
  bookmarkNavController = self->_bookmarkNavController;
  if (self->_isForPerTabGroupFavorites)
  {
    if (bookmarkNavController)
    {
      goto LABEL_7;
    }

    v9 = [v6 activeTabGroup];
    v10 = [v7 syntheticBookmarkFolderForTabGroup:v9 withAttribution:0];

    v11 = [objc_alloc(MEMORY[0x277CDB8C8]) initForAddingToSyntheticBookmarkFolder:v10];
  }

  else
  {
    if (bookmarkNavController)
    {
      goto LABEL_7;
    }

    v12 = objc_alloc(MEMORY[0x277CDB8C8]);
    v10 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v11 = [v12 initForAddingToFavoritesInCollection:v10];
  }

  v13 = self->_bookmarkNavController;
  self->_bookmarkNavController = v11;

LABEL_7:
  [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController setSyntheticBookmarkProvider:v7];
  v14 = [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController prepareForPresentationForAddingBookmark:1];
  v15 = self->_bookmarkNavController;
  if (v14)
  {
    v16 = [v22 titleForNewBookmark];
    v17 = [v22 cachedCanonicalURLOrURLForSharing];
    v18 = [v17 absoluteString];
    v19 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v20 = [v19 favoritesFolder];
    v21 = [(_SFSingleBookmarkNavigationController *)v15 addBookmarkWithTitle:v16 address:v18 parentBookmark:v20];

    [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController setBookmarkNavDelegate:self];
  }

  else
  {
    self->_bookmarkNavController = 0;

    [v5 addBookmarkActivityFailedToAcquireBookmarkLock:self];
  }
}

- (void)activityDidFinish:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AddToFavoritesUIActivity;
  [(_SFActivity *)&v5 activityDidFinish:?];
  if (v3)
  {
    v4 = [MEMORY[0x277D499B8] sharedLogger];
    [v4 _sf_didAddFavoriteFromShareSheet];
  }
}

- (void)addBookmarkNavController:(id)a3 didFinishWithResult:(BOOL)a4 bookmark:(id)a5
{
  v5 = a4;
  v7 = a5;
  [(AddToFavoritesUIActivity *)self activityDidFinish:v5];
  if (v5 && !self->_isForPerTabGroupFavorites)
  {
    v8 = MEMORY[0x277D4A7A0];
    v9 = [(TabDocument *)self->_tabDocument webView];
    v10 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__AddToFavoritesUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke;
    v11[3] = &unk_2781D7480;
    v12 = v7;
    [v8 saveLeadImageFromWebView:v9 toLeadImageCacheRegisteredWithMetadataManager:v10 completionHandler:v11];
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

- (BOOL)addBookmarkNavControllerCanSaveBookmarkChanges:(id)a3
{
  v3 = self;
  v4 = [(_SFActivity *)self delegate];
  LOBYTE(v3) = [v4 addBookmarkActivityCanSaveBookmarkChanges:v3];

  return v3;
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