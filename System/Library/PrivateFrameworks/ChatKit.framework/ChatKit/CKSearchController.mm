@interface CKSearchController
+ (id)supportedCellClasses;
- (BOOL)hasMoreResults;
- (BOOL)wantsHeaderSection;
- (CKSearchController)initWithQueryController:(id)controller;
- (CKSearchControllerDelegate)delegate;
- (NSArray)results;
- (NSDirectionalEdgeInsets)additionalGroupInsets;
- (id)_additionalMenuElementsForResult:(id)result;
- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier;
- (id)itemProviderForSearchResult:(id)result;
- (id)menuElementsForResult:(id)result atIndexPath:(id)path sourceRect:(CGRect)rect;
- (id)navigationBarTitleSummaryForSearchText:(id)text;
- (id)queryController:(id)controller conversationForChatGUID:(id)d;
- (id)queryController:(id)controller conversationsForExistingChatsWithGUIDs:(id)ds;
- (id)queryControllerChatGUIDsForDetailsSearch:(id)search;
- (id)searchTokenFiltersForQueryController:(id)controller;
- (id)sectionIdentifierForQueryController:(id)controller;
- (unint64_t)layoutWidth;
- (unint64_t)queriedResultsCount;
- (void)cancelCurrentSearch;
- (void)didSelectResult:(id)result visibleResults:(id)results;
- (void)removeResult:(id)result;
- (void)searchEnded;
- (void)searchQueryResultsDidChange:(id)change;
- (void)searchWithText:(id)text mode:(unint64_t)mode;
- (void)setMode:(unint64_t)mode;
@end

@implementation CKSearchController

- (CKSearchController)initWithQueryController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CKSearchController;
  v5 = [(CKSearchController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CKSearchController *)v5 setQueryController:controllerCopy];
    queryController = [(CKSearchController *)v6 queryController];
    [queryController setDelegate:v6];
  }

  return v6;
}

- (void)searchWithText:(id)text mode:(unint64_t)mode
{
  textCopy = text;
  [(CKSearchController *)self setMode:mode];
  [(CKSearchController *)self setCurrentSearchText:textCopy];
  queryController = [(CKSearchController *)self queryController];
  [queryController searchWithText:textCopy];
}

- (NSArray)results
{
  queryController = [(CKSearchController *)self queryController];
  results = [queryController results];

  return results;
}

- (BOOL)hasMoreResults
{
  queryController = [(CKSearchController *)self queryController];
  hasMoreResults = [queryController hasMoreResults];

  return hasMoreResults;
}

- (unint64_t)queriedResultsCount
{
  queryController = [(CKSearchController *)self queryController];
  queriedResultsCount = [queryController queriedResultsCount];

  return queriedResultsCount;
}

- (void)searchQueryResultsDidChange:(id)change
{
  delegate = [(CKSearchController *)self delegate];
  [delegate searchControllerContentsDidChange:self];
}

- (id)queryController:(id)controller conversationForChatGUID:(id)d
{
  dCopy = d;
  delegate = [(CKSearchController *)self delegate];
  v7 = [delegate searchController:self conversationForChatGUID:dCopy];

  return v7;
}

- (id)queryController:(id)controller conversationsForExistingChatsWithGUIDs:(id)ds
{
  dsCopy = ds;
  delegate = [(CKSearchController *)self delegate];
  v7 = [delegate searchController:self conversationsForExistingChatsWithGUIDs:dsCopy];

  return v7;
}

- (id)sectionIdentifierForQueryController:(id)controller
{
  v3 = objc_opt_class();

  return [v3 sectionIdentifier];
}

- (id)queryControllerChatGUIDsForDetailsSearch:(id)search
{
  delegate = [(CKSearchController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKSearchController *)self delegate];
    v7 = [delegate2 searchControllerChatGUIDsForDetailsSearch:self];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)searchTokenFiltersForQueryController:(id)controller
{
  delegate = [(CKSearchController *)self delegate];
  v5 = [delegate searchTokenFiltersForSearchController:self];

  return v5;
}

- (void)cancelCurrentSearch
{
  queryController = [(CKSearchController *)self queryController];
  [queryController cancelCurrentSearch];
}

- (void)searchEnded
{
  queryController = [(CKSearchController *)self queryController];
  [queryController searchEnded];
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    queryController = [(CKSearchController *)self queryController];
    [queryController setMode:self->_mode];
  }
}

- (id)navigationBarTitleSummaryForSearchText:(id)text
{
  textCopy = text;
  sectionTitle = [objc_opt_class() sectionTitle];
  if ([textCopy length])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"SEARCH_RESULTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v8 = [v5 stringWithFormat:v7, textCopy, sectionTitle];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v11 = @"\u200F";
    }

    else
    {
      v11 = @"\u200E";
    }

    v12 = [(__CFString *)v11 stringByAppendingString:v8];
  }

  else
  {
    v12 = sectionTitle;
  }

  return v12;
}

+ (id)supportedCellClasses
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [self cellClassForMode:0];
  if (v2)
  {
    v4[0] = v2;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  return v2;
}

- (NSDirectionalEdgeInsets)additionalGroupInsets
{
  v2 = *MEMORY[0x1E69DC5C0];
  v3 = *(MEMORY[0x1E69DC5C0] + 8);
  v4 = *(MEMORY[0x1E69DC5C0] + 16);
  v5 = *(MEMORY[0x1E69DC5C0] + 24);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (BOOL)wantsHeaderSection
{
  if (CKIsRunningInMacCatalyst())
  {
    v3 = 1;
  }

  else
  {
    v3 = [(CKSearchController *)self mode]!= 2 && [(CKSearchController *)self mode]!= 4;
  }

  results = [(CKSearchController *)self results];
  v5 = [results count];

  return v5 && v3;
}

- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier
{
  pathCopy = path;
  viewCopy = view;
  v9 = [pathCopy row];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [(CKSearchController *)self reuseIdentifierForIndex:v9];
  }

  else
  {
    v10 = [objc_opt_class() reuseIdentifierForMode:{-[CKSearchController mode](self, "mode")}];
  }

  v11 = v10;
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

  results = [(CKSearchController *)self results];
  v14 = [results count];

  if (v9 >= v14)
  {
    v16 = 0;
  }

  else
  {
    results2 = [(CKSearchController *)self results];
    v16 = [results2 objectAtIndex:v9];
  }

  currentSearchText = [(CKSearchController *)self currentSearchText];
  [v12 configureWithQueryResult:v16 searchText:currentSearchText mode:{-[CKSearchController mode](self, "mode")}];

  return v12;
}

- (unint64_t)layoutWidth
{
  delegate = [(CKSearchController *)self delegate];
  [delegate containerWidthForController:self];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 searchCellPreferredWidth];
  v8 = v7;

  if (CKIsRunningInMacCatalyst())
  {
    if ([(CKSearchController *)self mode]== 3 || [(CKSearchController *)self mode]== 4)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    isAccessibilityPreferredContentSizeCategory = [v10 isAccessibilityPreferredContentSizeCategory];

    result = 0;
    if ((isAccessibilityPreferredContentSizeCategory & 1) == 0)
    {
      v12 = (v5 / v8);
      if (v12 >= 2)
      {
        if (v12 == 2)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

- (id)menuElementsForResult:(id)result atIndexPath:(id)path sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  pathCopy = path;
  v13 = [(CKSearchController *)self _overridingMenuElementsForResult:resultCopy];
  if ([v13 count])
  {
    v14 = v13;
  }

  else
  {
    v35 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
    v32 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69DC628];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"SEARCH_COPY" value:&stru_1F04268F8 table:@"ChatKit"];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __67__CKSearchController_menuElementsForResult_atIndexPath_sourceRect___block_invoke;
    v39[3] = &unk_1E72EFBD8;
    v39[4] = self;
    v18 = resultCopy;
    v40 = v18;
    v34 = [v15 actionWithTitle:v17 image:v35 identifier:0 handler:v39];

    v19 = objc_loadWeakRetained(&location);
    v20 = [v19 _activityItemProviderForResult:v18];

    if (v20)
    {
      v21 = MEMORY[0x1E69DC628];
      v22 = CKFrameworkBundle();
      v23 = [v22 localizedStringForKey:@"SEARCH_SHARE" value:&stru_1F04268F8 table:@"ChatKit"];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __67__CKSearchController_menuElementsForResult_atIndexPath_sourceRect___block_invoke_2;
      v36[3] = &unk_1E72F2338;
      v37 = v20;
      objc_copyWeak(v38, &location);
      v38[1] = *&x;
      v38[2] = *&y;
      v38[3] = *&width;
      v38[4] = *&height;
      v24 = [v21 actionWithTitle:v23 image:v32 identifier:0 handler:v36];

      objc_destroyWeak(v38);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          identifier = [v18 identifier];
          *buf = 138412290;
          v43 = identifier;
          _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Unable to generate share content for result: %@", buf, 0xCu);
        }
      }

      v24 = 0;
    }

    v27 = [MEMORY[0x1E695DF70] arrayWithObject:{v34, v32}];
    v28 = v27;
    if (v24)
    {
      [v27 addObject:v24];
    }

    array = [(CKSearchController *)self _additionalMenuElementsForResult:v18];
    if (!array)
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    if (CKIsRunningInMacCatalyst())
    {
      v30 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v28];
      v14 = [array arrayByAddingObject:v30];
    }

    else
    {
      v14 = [array arrayByAddingObjectsFromArray:v28];
    }

    objc_destroyWeak(&location);
  }

  return v14;
}

void __67__CKSearchController_menuElementsForResult_atIndexPath_sourceRect___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) itemProviderForSearchResult:*(a1 + 40)];
  if (v1)
  {
    v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v4[0] = v1;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
    [v2 setItemProviders:v3];
  }
}

void __67__CKSearchController_menuElementsForResult_atIndexPath_sourceRect___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v8[0] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 initWithActivityItems:v3 applicationActivities:0];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 40));
  [v6 searchController:v7 requestsPresentationOfShareController:v4 atRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

- (id)_additionalMenuElementsForResult:(id)result
{
  v3 = MEMORY[0x1E695DF70];
  resultCopy = result;
  array = [v3 array];
  item = [resultCopy item];

  attributeSet = [item attributeSet];

  contentURL = [attributeSet contentURL];
  v9 = [array copy];

  return v9;
}

- (id)itemProviderForSearchResult:(id)result
{
  v10 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "This should be overridden for this search controller: %@", &v8, 0xCu);
    }
  }

  return 0;
}

- (void)didSelectResult:(id)result visibleResults:(id)results
{
  resultCopy = result;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSemanticSearchEnabled = [mEMORY[0x1E69A8070] isSemanticSearchEnabled];

  if (isSemanticSearchEnabled)
  {
    queryController = [(CKSearchController *)self queryController];
    query = [queryController query];
    if (query)
    {
      v10 = query;
      results = [(CKSearchController *)self results];
      v12 = [results containsObject:resultCopy];

      if (v12)
      {
        item = [resultCopy item];
        queryController2 = [(CKSearchController *)self queryController];
        query2 = [queryController2 query];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          queryController3 = [(CKSearchController *)self queryController];
          query3 = [queryController3 query];

          results2 = [(CKSearchController *)self results];
          v20 = [results2 arrayByApplyingSelector:sel_item];

          [query3 userEngagedWithItem:item visibleItems:v20 userInteractionType:0];
        }

LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    item = IMLogHandleForCategory();
    if (os_log_type_enabled(item, OS_LOG_TYPE_FAULT))
    {
      [CKSearchController didSelectResult:item visibleResults:?];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)removeResult:(id)result
{
  resultCopy = result;
  results = [(CKSearchController *)self results];
  v7 = [results mutableCopy];

  [v7 removeObject:resultCopy];
  queryController = [(CKSearchController *)self queryController];
  [queryController setResults:v7];
}

- (CKSearchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didSelectResult:(uint64_t)a1 visibleResults:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_19020E000, a2, OS_LOG_TYPE_FAULT, "Search controller %@ was told user interacted with item, but no active query is running or index out of bounds", &v2, 0xCu);
}

@end