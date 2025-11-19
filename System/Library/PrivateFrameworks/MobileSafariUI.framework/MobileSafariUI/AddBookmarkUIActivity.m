@interface AddBookmarkUIActivity
- (BOOL)addBookmarkNavControllerCanSaveBookmarkChanges:(id)a3;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (void)activityDidFinish:(BOOL)a3;
- (void)addBookmarkNavController:(id)a3 didFinishWithResult:(BOOL)a4 bookmark:(id)a5;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation AddBookmarkUIActivity

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = [a3 safari_firstObjectPassingTest:&__block_literal_global_63];
  v4 = [v3 isShowingStartPageOverriddenByExtension];
  if (v3)
  {
    v5 = ([v3 isBlank] | v4) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t __53__AddBookmarkUIActivity_canPerformWithActivityItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = [a3 safari_firstObjectPassingTest:&__block_literal_global_2];
  tabDocument = self->_tabDocument;
  self->_tabDocument = v4;

  v18 = [(_SFActivity *)self delegate];
  bookmarkNavController = self->_bookmarkNavController;
  if (!bookmarkNavController)
  {
    v7 = objc_alloc(MEMORY[0x277CDB8C8]);
    v8 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v9 = [v7 initWithCollection:v8];
    v10 = self->_bookmarkNavController;
    self->_bookmarkNavController = v9;

    v11 = [v18 addBookmarkActivityTabGroupProvider];
    [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController setSyntheticBookmarkProvider:v11];

    bookmarkNavController = self->_bookmarkNavController;
  }

  v12 = [(_SFSingleBookmarkNavigationController *)bookmarkNavController prepareForPresentationForAddingBookmark:1];
  v13 = self->_bookmarkNavController;
  if (v12)
  {
    v14 = [(TabDocument *)self->_tabDocument titleForNewBookmark];
    v15 = [(TabDocument *)self->_tabDocument cachedCanonicalURLOrURLForSharing];
    v16 = [v15 absoluteString];
    v17 = [(_SFSingleBookmarkNavigationController *)v13 addBookmarkWithTitle:v14 address:v16 parentBookmark:0];

    [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController setBookmarkNavDelegate:self];
  }

  else
  {
    self->_bookmarkNavController = 0;

    [v18 addBookmarkActivityFailedToAcquireBookmarkLock:self];
  }
}

uint64_t __50__AddBookmarkUIActivity_prepareWithActivityItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)activityDidFinish:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AddBookmarkUIActivity;
  [(_SFActivity *)&v5 activityDidFinish:?];
  if (v3)
  {
    v4 = [MEMORY[0x277D499B8] sharedLogger];
    [v4 didAddBookmarkWithMethod:3];
  }
}

- (void)addBookmarkNavController:(id)a3 didFinishWithResult:(BOOL)a4 bookmark:(id)a5
{
  v5 = a4;
  v7 = a5;
  [(AddBookmarkUIActivity *)self activityDidFinish:v5];
  if (v5)
  {
    v8 = MEMORY[0x277D4A7A0];
    v9 = [(TabDocument *)self->_tabDocument webView];
    v10 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__AddBookmarkUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke;
    v11[3] = &unk_2781D7480;
    v12 = v7;
    [v8 saveLeadImageFromWebView:v9 toLeadImageCacheRegisteredWithMetadataManager:v10 completionHandler:v11];
  }
}

void __79__AddBookmarkUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __79__AddBookmarkUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_8;
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
      __79__AddBookmarkUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_cold_1(v8, v7);
    }
  }
}

void __79__AddBookmarkUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_8(uint64_t a1)
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

void __79__AddBookmarkUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_215819000, v3, OS_LOG_TYPE_ERROR, "Could not save lead image for bookmark from Bookmark action sheet action in with error: %{public}@", &v5, 0xCu);
}

@end