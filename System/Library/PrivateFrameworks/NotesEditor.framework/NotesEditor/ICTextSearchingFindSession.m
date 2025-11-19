@interface ICTextSearchingFindSession
- (ICTextSearchingFindSession)initWithTextView:(id)a3;
- (ICTextView)textView;
- (id)divergentResponder;
- (id)replacementText;
- (id)searchText;
@end

@implementation ICTextSearchingFindSession

- (ICTextSearchingFindSession)initWithTextView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICTextSearchingFindSession;
  v5 = [(UITextSearchingFindSession *)&v8 initWithSearchableObject:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textView, v4);
  }

  return v6;
}

- (id)divergentResponder
{
  v2 = [(ICTextSearchingFindSession *)self textView];
  v3 = [v2 editorController];

  return v3;
}

- (id)searchText
{
  v3 = [MEMORY[0x277D369A0] sharedInstance];
  if (([v3 isSecureScreenShowing] & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = [MEMORY[0x277D369A0] sharedInstance];
  v5 = [v4 hasClearedInitialSearchTextIfSecure];

  if (v5)
  {
LABEL_7:
    v10.receiver = self;
    v10.super_class = ICTextSearchingFindSession;
    v8 = [(UIFindSession *)&v10 searchText];
    goto LABEL_8;
  }

  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICTextSearchingFindSession *)v6 searchText];
  }

  v7 = [MEMORY[0x277D369A0] sharedInstance];
  [v7 hasClearedInitialSecureSearchText];

  v8 = &stru_282757698;
LABEL_8:

  return v8;
}

- (id)replacementText
{
  v3 = [MEMORY[0x277D369A0] sharedInstance];
  if (([v3 isSecureScreenShowing] & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = [MEMORY[0x277D369A0] sharedInstance];
  v5 = [v4 hasClearedInitialReplaceTextIfSecure];

  if (v5)
  {
LABEL_7:
    v10.receiver = self;
    v10.super_class = ICTextSearchingFindSession;
    v8 = [(UIFindSession *)&v10 replacementText];
    goto LABEL_8;
  }

  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICTextSearchingFindSession *)v6 replacementText];
  }

  v7 = [MEMORY[0x277D369A0] sharedInstance];
  [v7 hasClearedInitialSecureReplaceText];

  v8 = &stru_282757698;
LABEL_8:

  return v8;
}

- (ICTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end