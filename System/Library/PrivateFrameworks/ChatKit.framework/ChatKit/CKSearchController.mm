@interface CKSearchController
+ (id)supportedCellClasses;
- (BOOL)hasMoreResults;
- (BOOL)wantsHeaderSection;
- (CKSearchController)initWithQueryController:(id)a3;
- (CKSearchControllerDelegate)delegate;
- (NSArray)results;
- (NSDirectionalEdgeInsets)additionalGroupInsets;
- (id)_additionalMenuElementsForResult:(id)a3;
- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
- (id)itemProviderForSearchResult:(id)a3;
- (id)menuElementsForResult:(id)a3 atIndexPath:(id)a4 sourceRect:(CGRect)a5;
- (id)navigationBarTitleSummaryForSearchText:(id)a3;
- (id)queryController:(id)a3 conversationForChatGUID:(id)a4;
- (id)queryController:(id)a3 conversationsForExistingChatsWithGUIDs:(id)a4;
- (id)queryControllerChatGUIDsForDetailsSearch:(id)a3;
- (id)searchTokenFiltersForQueryController:(id)a3;
- (id)sectionIdentifierForQueryController:(id)a3;
- (unint64_t)layoutWidth;
- (unint64_t)queriedResultsCount;
- (void)cancelCurrentSearch;
- (void)didSelectResult:(id)a3 visibleResults:(id)a4;
- (void)removeResult:(id)a3;
- (void)searchEnded;
- (void)searchQueryResultsDidChange:(id)a3;
- (void)searchWithText:(id)a3 mode:(unint64_t)a4;
- (void)setMode:(unint64_t)a3;
@end

@implementation CKSearchController

- (CKSearchController)initWithQueryController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKSearchController;
  v5 = [(CKSearchController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CKSearchController *)v5 setQueryController:v4];
    v7 = [(CKSearchController *)v6 queryController];
    [v7 setDelegate:v6];
  }

  return v6;
}

- (void)searchWithText:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  [(CKSearchController *)self setMode:a4];
  [(CKSearchController *)self setCurrentSearchText:v6];
  v7 = [(CKSearchController *)self queryController];
  [v7 searchWithText:v6];
}

- (NSArray)results
{
  v2 = [(CKSearchController *)self queryController];
  v3 = [v2 results];

  return v3;
}

- (BOOL)hasMoreResults
{
  v2 = [(CKSearchController *)self queryController];
  v3 = [v2 hasMoreResults];

  return v3;
}

- (unint64_t)queriedResultsCount
{
  v2 = [(CKSearchController *)self queryController];
  v3 = [v2 queriedResultsCount];

  return v3;
}

- (void)searchQueryResultsDidChange:(id)a3
{
  v4 = [(CKSearchController *)self delegate];
  [v4 searchControllerContentsDidChange:self];
}

- (id)queryController:(id)a3 conversationForChatGUID:(id)a4
{
  v5 = a4;
  v6 = [(CKSearchController *)self delegate];
  v7 = [v6 searchController:self conversationForChatGUID:v5];

  return v7;
}

- (id)queryController:(id)a3 conversationsForExistingChatsWithGUIDs:(id)a4
{
  v5 = a4;
  v6 = [(CKSearchController *)self delegate];
  v7 = [v6 searchController:self conversationsForExistingChatsWithGUIDs:v5];

  return v7;
}

- (id)sectionIdentifierForQueryController:(id)a3
{
  v3 = objc_opt_class();

  return [v3 sectionIdentifier];
}

- (id)queryControllerChatGUIDsForDetailsSearch:(id)a3
{
  v4 = [(CKSearchController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKSearchController *)self delegate];
    v7 = [v6 searchControllerChatGUIDsForDetailsSearch:self];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)searchTokenFiltersForQueryController:(id)a3
{
  v4 = [(CKSearchController *)self delegate];
  v5 = [v4 searchTokenFiltersForSearchController:self];

  return v5;
}

- (void)cancelCurrentSearch
{
  v2 = [(CKSearchController *)self queryController];
  [v2 cancelCurrentSearch];
}

- (void)searchEnded
{
  v2 = [(CKSearchController *)self queryController];
  [v2 searchEnded];
}

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    v5 = [(CKSearchController *)self queryController];
    [v5 setMode:self->_mode];
  }
}

- (id)navigationBarTitleSummaryForSearchText:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sectionTitle];
  if ([v3 length])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"SEARCH_RESULTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v8 = [v5 stringWithFormat:v7, v3, v4];

    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    v10 = [v9 userInterfaceLayoutDirection];

    if (v10 == 1)
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
    v12 = v4;
  }

  return v12;
}

+ (id)supportedCellClasses
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 cellClassForMode:0];
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

  v4 = [(CKSearchController *)self results];
  v5 = [v4 count];

  return v5 && v3;
}

- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 row];
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
  v12 = [v8 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v7];

  v13 = [(CKSearchController *)self results];
  v14 = [v13 count];

  if (v9 >= v14)
  {
    v16 = 0;
  }

  else
  {
    v15 = [(CKSearchController *)self results];
    v16 = [v15 objectAtIndex:v9];
  }

  v17 = [(CKSearchController *)self currentSearchText];
  [v12 configureWithQueryResult:v16 searchText:v17 mode:{-[CKSearchController mode](self, "mode")}];

  return v12;
}

- (unint64_t)layoutWidth
{
  v3 = [(CKSearchController *)self delegate];
  [v3 containerWidthForController:self];
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
    v11 = [v10 isAccessibilityPreferredContentSizeCategory];

    result = 0;
    if ((v11 & 1) == 0)
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

- (id)menuElementsForResult:(id)a3 atIndexPath:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = [(CKSearchController *)self _overridingMenuElementsForResult:v11];
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
    v18 = v11;
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
          v26 = [v18 identifier];
          *buf = 138412290;
          v43 = v26;
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

    v29 = [(CKSearchController *)self _additionalMenuElementsForResult:v18];
    if (!v29)
    {
      v29 = [MEMORY[0x1E695DEC8] array];
    }

    if (CKIsRunningInMacCatalyst())
    {
      v30 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v28];
      v14 = [v29 arrayByAddingObject:v30];
    }

    else
    {
      v14 = [v29 arrayByAddingObjectsFromArray:v28];
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

- (id)_additionalMenuElementsForResult:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 array];
  v6 = [v4 item];

  v7 = [v6 attributeSet];

  v8 = [v7 contentURL];
  v9 = [v5 copy];

  return v9;
}

- (id)itemProviderForSearchResult:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
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

- (void)didSelectResult:(id)a3 visibleResults:(id)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isSemanticSearchEnabled];

  if (v7)
  {
    v8 = [(CKSearchController *)self queryController];
    v9 = [v8 query];
    if (v9)
    {
      v10 = v9;
      v11 = [(CKSearchController *)self results];
      v12 = [v11 containsObject:v5];

      if (v12)
      {
        v13 = [v5 item];
        v14 = [(CKSearchController *)self queryController];
        v15 = [v14 query];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v17 = [(CKSearchController *)self queryController];
          v18 = [v17 query];

          v19 = [(CKSearchController *)self results];
          v20 = [v19 arrayByApplyingSelector:sel_item];

          [v18 userEngagedWithItem:v13 visibleItems:v20 userInteractionType:0];
        }

LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CKSearchController didSelectResult:v13 visibleResults:?];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)removeResult:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchController *)self results];
  v7 = [v5 mutableCopy];

  [v7 removeObject:v4];
  v6 = [(CKSearchController *)self queryController];
  [v6 setResults:v7];
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