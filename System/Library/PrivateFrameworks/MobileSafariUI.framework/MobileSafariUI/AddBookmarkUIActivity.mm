@interface AddBookmarkUIActivity
- (BOOL)addBookmarkNavControllerCanSaveBookmarkChanges:(id)changes;
- (BOOL)canPerformWithActivityItems:(id)items;
- (void)activityDidFinish:(BOOL)finish;
- (void)addBookmarkNavController:(id)controller didFinishWithResult:(BOOL)result bookmark:(id)bookmark;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation AddBookmarkUIActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  v3 = [items safari_firstObjectPassingTest:&__block_literal_global_63];
  isShowingStartPageOverriddenByExtension = [v3 isShowingStartPageOverriddenByExtension];
  if (v3)
  {
    v5 = ([v3 isBlank] | isShowingStartPageOverriddenByExtension) ^ 1;
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

- (void)prepareWithActivityItems:(id)items
{
  v4 = [items safari_firstObjectPassingTest:&__block_literal_global_2];
  tabDocument = self->_tabDocument;
  self->_tabDocument = v4;

  delegate = [(_SFActivity *)self delegate];
  bookmarkNavController = self->_bookmarkNavController;
  if (!bookmarkNavController)
  {
    v7 = objc_alloc(MEMORY[0x277CDB8C8]);
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v9 = [v7 initWithCollection:mainBookmarkCollection];
    v10 = self->_bookmarkNavController;
    self->_bookmarkNavController = v9;

    addBookmarkActivityTabGroupProvider = [delegate addBookmarkActivityTabGroupProvider];
    [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController setSyntheticBookmarkProvider:addBookmarkActivityTabGroupProvider];

    bookmarkNavController = self->_bookmarkNavController;
  }

  v12 = [(_SFSingleBookmarkNavigationController *)bookmarkNavController prepareForPresentationForAddingBookmark:1];
  v13 = self->_bookmarkNavController;
  if (v12)
  {
    titleForNewBookmark = [(TabDocument *)self->_tabDocument titleForNewBookmark];
    cachedCanonicalURLOrURLForSharing = [(TabDocument *)self->_tabDocument cachedCanonicalURLOrURLForSharing];
    absoluteString = [cachedCanonicalURLOrURLForSharing absoluteString];
    v17 = [(_SFSingleBookmarkNavigationController *)v13 addBookmarkWithTitle:titleForNewBookmark address:absoluteString parentBookmark:0];

    [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavController setBookmarkNavDelegate:self];
  }

  else
  {
    self->_bookmarkNavController = 0;

    [delegate addBookmarkActivityFailedToAcquireBookmarkLock:self];
  }
}

uint64_t __50__AddBookmarkUIActivity_prepareWithActivityItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)activityDidFinish:(BOOL)finish
{
  finishCopy = finish;
  v5.receiver = self;
  v5.super_class = AddBookmarkUIActivity;
  [(_SFActivity *)&v5 activityDidFinish:?];
  if (finishCopy)
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didAddBookmarkWithMethod:3];
  }
}

- (void)addBookmarkNavController:(id)controller didFinishWithResult:(BOOL)result bookmark:(id)bookmark
{
  resultCopy = result;
  bookmarkCopy = bookmark;
  [(AddBookmarkUIActivity *)self activityDidFinish:resultCopy];
  if (resultCopy)
  {
    v8 = MEMORY[0x277D4A7A0];
    webView = [(TabDocument *)self->_tabDocument webView];
    mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__AddBookmarkUIActivity_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke;
    v11[3] = &unk_2781D7480;
    v12 = bookmarkCopy;
    [v8 saveLeadImageFromWebView:webView toLeadImageCacheRegisteredWithMetadataManager:mEMORY[0x277D28F58] completionHandler:v11];
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

- (BOOL)addBookmarkNavControllerCanSaveBookmarkChanges:(id)changes
{
  selfCopy = self;
  delegate = [(_SFActivity *)self delegate];
  LOBYTE(selfCopy) = [delegate addBookmarkActivityCanSaveBookmarkChanges:selfCopy];

  return selfCopy;
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