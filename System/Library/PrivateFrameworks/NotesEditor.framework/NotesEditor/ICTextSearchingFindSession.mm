@interface ICTextSearchingFindSession
- (ICTextSearchingFindSession)initWithTextView:(id)view;
- (ICTextView)textView;
- (id)divergentResponder;
- (id)replacementText;
- (id)searchText;
@end

@implementation ICTextSearchingFindSession

- (ICTextSearchingFindSession)initWithTextView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = ICTextSearchingFindSession;
  v5 = [(UITextSearchingFindSession *)&v8 initWithSearchableObject:viewCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textView, viewCopy);
  }

  return v6;
}

- (id)divergentResponder
{
  textView = [(ICTextSearchingFindSession *)self textView];
  editorController = [textView editorController];

  return editorController;
}

- (id)searchText
{
  mEMORY[0x277D369A0] = [MEMORY[0x277D369A0] sharedInstance];
  if (([mEMORY[0x277D369A0] isSecureScreenShowing] & 1) == 0)
  {

    goto LABEL_7;
  }

  mEMORY[0x277D369A0]2 = [MEMORY[0x277D369A0] sharedInstance];
  hasClearedInitialSearchTextIfSecure = [mEMORY[0x277D369A0]2 hasClearedInitialSearchTextIfSecure];

  if (hasClearedInitialSearchTextIfSecure)
  {
LABEL_7:
    v10.receiver = self;
    v10.super_class = ICTextSearchingFindSession;
    searchText = [(UIFindSession *)&v10 searchText];
    goto LABEL_8;
  }

  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICTextSearchingFindSession *)v6 searchText];
  }

  mEMORY[0x277D369A0]3 = [MEMORY[0x277D369A0] sharedInstance];
  [mEMORY[0x277D369A0]3 hasClearedInitialSecureSearchText];

  searchText = &stru_282757698;
LABEL_8:

  return searchText;
}

- (id)replacementText
{
  mEMORY[0x277D369A0] = [MEMORY[0x277D369A0] sharedInstance];
  if (([mEMORY[0x277D369A0] isSecureScreenShowing] & 1) == 0)
  {

    goto LABEL_7;
  }

  mEMORY[0x277D369A0]2 = [MEMORY[0x277D369A0] sharedInstance];
  hasClearedInitialReplaceTextIfSecure = [mEMORY[0x277D369A0]2 hasClearedInitialReplaceTextIfSecure];

  if (hasClearedInitialReplaceTextIfSecure)
  {
LABEL_7:
    v10.receiver = self;
    v10.super_class = ICTextSearchingFindSession;
    replacementText = [(UIFindSession *)&v10 replacementText];
    goto LABEL_8;
  }

  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICTextSearchingFindSession *)v6 replacementText];
  }

  mEMORY[0x277D369A0]3 = [MEMORY[0x277D369A0] sharedInstance];
  [mEMORY[0x277D369A0]3 hasClearedInitialSecureReplaceText];

  replacementText = &stru_282757698;
LABEL_8:

  return replacementText;
}

- (ICTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end