@interface SFBrowsingAssistantSearchResultView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (SFBrowsingAssistantSearchResultView)initWithSearchResult:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)didEngageCardSection:(id)a3;
- (void)didEngageResult:(id)a3;
- (void)didPerformCommand:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SFBrowsingAssistantSearchResultView

- (SFBrowsingAssistantSearchResultView)initWithSearchResult:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SFBrowsingAssistantSearchResultView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(SFBrowsingAssistantSearchResultView *)&v16 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_searchResult, a3);
    v12 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:{v6, v7, v8, v9}];
    tableView = v11->_tableView;
    v11->_tableView = v12;

    [(UITableView *)v11->_tableView setDataSource:v11];
    [(UITableView *)v11->_tableView setDelegate:v11];
    [(UITableView *)v11->_tableView setScrollEnabled:0];
    [(UITableView *)v11->_tableView setScrollsToTop:0];
    [(UITableView *)v11->_tableView setSeparatorStyle:0];
    [(UIView *)v11 _sf_addEdgeMatchedSubview:v11->_tableView];
    v14 = v11;
  }

  return v11;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v8 = 11;
  do
  {
    v9 = height;
    [(SFBrowsingAssistantSearchResultView *)self setBounds:0.0, 0.0, width, height];
    [(SFBrowsingAssistantSearchResultView *)self layoutIfNeeded];
    [(UITableView *)self->_tableView contentSize];
    height = fmax(v10, 60.0);
    if (_SFEqualWithEpsilon(height, v9, 0.01))
    {
      break;
    }

    v9 = height;
    --v8;
  }

  while (v8);
  v11 = width;
  v12 = v9;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v8 = getSearchUITableViewCellClass_softClass;
  v27 = getSearchUITableViewCellClass_softClass;
  if (!getSearchUITableViewCellClass_softClass)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __getSearchUITableViewCellClass_block_invoke;
    v22 = &unk_1E721C5D0;
    v23 = &v24;
    __getSearchUITableViewCellClass_block_invoke(&v19);
    v8 = v25[3];
  }

  v9 = v8;
  _Block_object_dispose(&v24, 8);
  v10 = [v8 reuseIdentifierForResult:self->_searchResult];
  v11 = v10;
  v12 = @"BrowsingAssistantSearchResult";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [v6 dequeueReusableCellWithIdentifier:v13];
  if (!v14)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v15 = getSearchUIClass_softClass;
    v27 = getSearchUIClass_softClass;
    if (!getSearchUIClass_softClass)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getSearchUIClass_block_invoke;
      v22 = &unk_1E721C5D0;
      v23 = &v24;
      __getSearchUIClass_block_invoke(&v19);
      v15 = v25[3];
    }

    v16 = v15;
    _Block_object_dispose(&v24, 8);
    v14 = [v15 rowViewForResult:self->_searchResult style:0 feedbackDelegate:self];
  }

  [v14 setAccessibilityIdentifier:v13];
  if (objc_opt_respondsToSelector())
  {
    [v14 updateWithResult:self->_searchResult];
  }

  v17 = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
  [v17 setCornerRadius:22.0];
  [v14 setBackgroundConfiguration:v17];

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = [a3 cellForRowAtIndexPath:a4];
  if (objc_opt_respondsToSelector())
  {
    [v6 executeCommandWithTriggerEvent:2];
  }

  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2](actionHandler, self->_searchResult);
  }
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  if ([(SFSearchResult *)self->_searchResult _sf_isMediaResult])
  {
    v9 = [v7 cellForRowAtIndexPath:v8];
    if (objc_opt_respondsToSelector())
    {
      v10 = MEMORY[0x1E69DC8D8];
      v11 = [v9 contextMenuActionProvider];
      v12 = [v10 configurationWithIdentifier:0 previewProvider:0 actionProvider:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)didEngageResult:(id)a3
{
  v3 = MEMORY[0x1E69C8EC0];
  v4 = a3;
  v5 = [v3 sharedPARSession];
  [v5 didEngageResult:v4];
}

- (void)didEngageCardSection:(id)a3
{
  v3 = MEMORY[0x1E69C8EC0];
  v4 = a3;
  v5 = [v3 sharedPARSession];
  [v5 didEngageCardSection:v4];
}

- (void)didPerformCommand:(id)a3
{
  v4 = MEMORY[0x1E69C8EC0];
  v5 = a3;
  v6 = [v4 sharedPARSession];
  [v6 didPerformCommand:v5];

  v7 = [MEMORY[0x1E69C8810] sharedLogger];
  [v7 didClickEntityCardSBA];

  v8 = [MEMORY[0x1E69C8EB0] sharedManager];
  [v8 donateBrowsingAssistantUserInteractionDetectedWithWebPageID:self->_webpageIdentifier componentType:objc_msgSend(MEMORY[0x1E69C8EB0] componentIdentifier:"entityComponentTypeFromResult:" tableOfContentsArrayLength:self->_searchResult) tableOfContentsTextIndex:self->_componentIdentifier readerSectionExpanded:{0, 0, 0}];
}

@end