@interface CKConversationSearchController
+ (Class)cellClassForMode:(unint64_t)a3;
+ (id)reuseIdentifierForMode:(unint64_t)a3;
+ (id)sectionTitle;
+ (id)supportedCellClasses;
- (BOOL)applyLayoutMarginsToLayoutGroup;
- (BOOL)wantsHeaderSection;
- (CKConversationSearchController)init;
- (NSDirectionalEdgeInsets)additionalGroupInsets;
- (double)interGroupSpacing;
- (double)widthForDeterminingAvatarVisibility;
- (id)_additionalMenuElementsForResult:(id)a3;
- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
- (id)customLayoutSectionForEnvironment:(id)a3;
- (id)layoutGroupWithEnvironment:(id)a3;
- (id)navigationBarTitleSummaryForSearchText:(id)a3;
- (void)didSelectResult:(id)a3 visibleResults:(id)a4;
@end

@implementation CKConversationSearchController

- (CKConversationSearchController)init
{
  v3 = objc_alloc_init(CKConversationQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
}

- (void)didSelectResult:(id)a3 visibleResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = CKConversationSearchController;
  [(CKSearchController *)&v26 didSelectResult:v6 visibleResults:v7];
  v8 = MEMORY[0x193AF5EC0](@"_PSMessagesZkwFeedback", @"PeopleSuggester");
  v9 = [(CKSearchController *)self queryController];
  objc_initWeak(&location, v9);

  v10 = [v6 conversation];
  v11 = [v10 chat];
  v12 = [v11 guid];

  v13 = objc_loadWeakRetained(&location);
  v14 = [v13 currentZKWSuggestions];
  if ([v14 count])
  {
    v15 = objc_loadWeakRetained(&location);
    v16 = [v15 currentZKWSuggestions];
    v17 = [v16 copy];
  }

  else
  {
    v17 = [MEMORY[0x1E695DEC8] array];
  }

  v18 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CKConversationSearchController_didSelectResult_visibleResults___block_invoke;
  block[3] = &unk_1E72F4348;
  v24[1] = v8;
  v22 = v12;
  v23 = v17;
  v19 = v17;
  v20 = v12;
  objc_copyWeak(v24, &location);
  dispatch_async(v18, block);

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

void __65__CKConversationSearchController_didSelectResult_visibleResults___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(*(a1 + 56)) initWithChatGuidEngagaged:*(a1 + 32) suggestions:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained zkwSuggester];
  [v4 provideFeedbackForMessagesZkwSuggestions:v2];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) count];
      v8 = 136315650;
      v9 = "[CKConversationSearchController didSelectResult:visibleResults:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s submitted PS feedback for guid %@ currently maintaining %lu zkw results", &v8, 0x20u);
    }
  }
}

- (id)navigationBarTitleSummaryForSearchText:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"CONVERSATION_SEARCH_RESULTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = [v4 stringWithFormat:v6, v3];

    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 userInterfaceLayoutDirection];

    if (v9 == 1)
    {
      v10 = @"\u200F";
    }

    else
    {
      v10 = @"\u200E";
    }

    v11 = [(__CFString *)v10 stringByAppendingString:v7];
  }

  else
  {
    v11 = [objc_opt_class() sectionTitle];
  }

  return v11;
}

+ (id)sectionTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_CONVERSATIONS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

+ (id)reuseIdentifierForMode:(unint64_t)a3
{
  v3 = [objc_opt_class() _shouldUseAvatarCellsForMode:a3];
  v4 = off_1E72E4B48;
  if (!v3)
  {
    v4 = off_1E72E4C10;
  }

  v5 = [(__objc2_class *)*v4 reuseIdentifier];

  return v5;
}

+ (Class)cellClassForMode:(unint64_t)a3
{
  [objc_opt_class() _shouldUseAvatarCellsForMode:a3];
  v3 = objc_opt_class();

  return v3;
}

+ (id)supportedCellClasses
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (NSDirectionalEdgeInsets)additionalGroupInsets
{
  v3 = [(CKSearchController *)self delegate];
  [v3 parentMarginInsetsForSearchController:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if ([objc_opt_class() _shouldUseAvatarCellsForMode:{-[CKSearchController mode](self, "mode")}])
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 searchConversationSectionInsets];
    v5 = v11;
    v13 = v12;
    v7 = v14;
    v16 = v15;
  }

  else
  {
    v13 = 0.0;
    v16 = 0.0;
    if (CKIsRunningInMacCatalyst())
    {
      v7 = v9;
    }

    else
    {
      v5 = v7;
    }
  }

  if ([(CKSearchController *)self mode]!= 1)
  {
    v17 = [(CKSearchController *)self results];
    v18 = [v17 count];

    if (!v18)
    {
      v5 = *MEMORY[0x1E69DC5C0];
      v13 = *(MEMORY[0x1E69DC5C0] + 8);
      v7 = *(MEMORY[0x1E69DC5C0] + 16);
      v16 = *(MEMORY[0x1E69DC5C0] + 24);
    }
  }

  v19 = v5;
  v20 = v13;
  v21 = v7;
  v22 = v16;
  result.trailing = v22;
  result.bottom = v21;
  result.leading = v20;
  result.top = v19;
  return result;
}

- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v15.receiver = self;
  v15.super_class = CKConversationSearchController;
  v6 = [(CKSearchController *)&v15 cellForItemInCollectionView:a3 atIndexPath:a4 withIdentifier:a5];
  if ([objc_opt_class() _shouldUseAvatarCellsForMode:{-[CKSearchController mode](self, "mode")}])
  {
    v7 = v6;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = v6;
    if (isKindOfClass)
    {
      v10 = v9;
      v11 = [(CKSearchController *)self delegate];
      [v10 setShouldInsetResults:{objc_msgSend(v11, "shouldInsetResultsForSearchController:", self)}];

      v12 = [v10 topHairline];
      [v12 setHidden:0];

      v13 = [v10 bottomHairline];
      [v13 setHidden:1];

      [v10 setDelegate:self];
    }
  }

  return v6;
}

- (double)interGroupSpacing
{
  v2 = [objc_opt_class() _shouldUseAvatarCellsForMode:{-[CKSearchController mode](self, "mode")}];
  result = 0.0;
  if (v2)
  {
    return 6.0;
  }

  return result;
}

- (BOOL)wantsHeaderSection
{
  if ([(CKSearchController *)self mode]== 1)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CKConversationSearchController;
  return [(CKSearchController *)&v4 wantsHeaderSection];
}

- (BOOL)applyLayoutMarginsToLayoutGroup
{
  v3 = objc_opt_class();
  v4 = [(CKSearchController *)self mode];

  return [v3 _shouldUseAvatarCellsForMode:v4];
}

- (id)layoutGroupWithEnvironment:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldUseAvatarCellsForMode:{-[CKSearchController mode](self, "mode")}])
  {
    v5 = [(CKSearchController *)self layoutWidth];
    if (v5)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    v7 = 0.33;
    if (v5)
    {
      v7 = 0.25;
    }

    v8 = [MEMORY[0x1E6995558] fractionalWidthDimension:v7];
    v9 = [MEMORY[0x1E6995558] uniformAcrossSiblingsWithEstimate:88.0];
    v10 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v8 heightDimension:v9];
    v11 = [MEMORY[0x1E6995578] itemWithLayoutSize:v10];
    v12 = MEMORY[0x1E6995588];
    v13 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v14 = [v12 sizeWithWidthDimension:v13 heightDimension:v9];

    v15 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v14 repeatingSubitem:v11 count:v6];
    v16 = MEMORY[0x1E6995590];
    v17 = +[CKUIBehavior sharedBehaviors];
    [v17 searchConversationAvatarCellInterItemSpacing];
    v18 = [v16 flexibleSpacing:?];
    [v15 setInterItemSpacing:v18];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CKConversationSearchController;
    v15 = [(CKSearchController *)&v20 layoutGroupWithEnvironment:v4];
  }

  return v15;
}

- (id)customLayoutSectionForEnvironment:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldUseAvatarCellsForMode:{-[CKSearchController mode](self, "mode")}])
  {
    v20.receiver = self;
    v20.super_class = CKConversationSearchController;
    v5 = [(CKSearchController *)&v20 customLayoutSectionForEnvironment:v4];
  }

  else
  {
    if (CKIsRunningInMacCatalyst())
    {
      v6 = [v4 container];
      [v6 contentSize];
      v8 = v7;
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 minConversationListWidth];
      v11 = v8 > v10;
    }

    else
    {
      v11 = 1;
    }

    v12 = [(CKSearchController *)self delegate];
    v13 = [v12 shouldInsetResultsForSearchController:self];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4;
    }

    v15 = [objc_alloc(MEMORY[0x1E69DD3F8]) initWithAppearanceStyle:v14 layoutEnvironment:v4];
    [v15 setSeparatorStyle:v11];
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 conversationCellLeadingSeparatorInsetForEnvironment:v4];
    v18 = v17;

    [v15 setSeparatorInset:{0.0, v18, 0.0, 0.0}];
    v5 = [objc_alloc(MEMORY[0x1E69DD3F0]) initWithConfiguration:v15 layoutEnvironment:v4];
  }

  return v5;
}

- (double)widthForDeterminingAvatarVisibility
{
  v2 = [(CKSearchController *)self delegate];
  [v2 widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

- (id)_additionalMenuElementsForResult:(id)a3
{
  v4 = [a3 conversation];
  v5 = [(CKSearchController *)self delegate];
  v6 = [v5 contextMenusForConversation:v4];

  return v6;
}

@end