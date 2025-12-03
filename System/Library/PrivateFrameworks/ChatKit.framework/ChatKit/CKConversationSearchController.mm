@interface CKConversationSearchController
+ (Class)cellClassForMode:(unint64_t)mode;
+ (id)reuseIdentifierForMode:(unint64_t)mode;
+ (id)sectionTitle;
+ (id)supportedCellClasses;
- (BOOL)applyLayoutMarginsToLayoutGroup;
- (BOOL)wantsHeaderSection;
- (CKConversationSearchController)init;
- (NSDirectionalEdgeInsets)additionalGroupInsets;
- (double)interGroupSpacing;
- (double)widthForDeterminingAvatarVisibility;
- (id)_additionalMenuElementsForResult:(id)result;
- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier;
- (id)customLayoutSectionForEnvironment:(id)environment;
- (id)layoutGroupWithEnvironment:(id)environment;
- (id)navigationBarTitleSummaryForSearchText:(id)text;
- (void)didSelectResult:(id)result visibleResults:(id)results;
@end

@implementation CKConversationSearchController

- (CKConversationSearchController)init
{
  v3 = objc_alloc_init(CKConversationQueryController);
  v4 = [(CKSearchController *)self initWithQueryController:v3];

  return v4;
}

- (void)didSelectResult:(id)result visibleResults:(id)results
{
  resultCopy = result;
  resultsCopy = results;
  v26.receiver = self;
  v26.super_class = CKConversationSearchController;
  [(CKSearchController *)&v26 didSelectResult:resultCopy visibleResults:resultsCopy];
  v8 = MEMORY[0x193AF5EC0](@"_PSMessagesZkwFeedback", @"PeopleSuggester");
  queryController = [(CKSearchController *)self queryController];
  objc_initWeak(&location, queryController);

  conversation = [resultCopy conversation];
  chat = [conversation chat];
  guid = [chat guid];

  v13 = objc_loadWeakRetained(&location);
  currentZKWSuggestions = [v13 currentZKWSuggestions];
  if ([currentZKWSuggestions count])
  {
    v15 = objc_loadWeakRetained(&location);
    currentZKWSuggestions2 = [v15 currentZKWSuggestions];
    array = [currentZKWSuggestions2 copy];
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v18 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CKConversationSearchController_didSelectResult_visibleResults___block_invoke;
  block[3] = &unk_1E72F4348;
  v24[1] = v8;
  v22 = guid;
  v23 = array;
  v19 = array;
  v20 = guid;
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

- (id)navigationBarTitleSummaryForSearchText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"CONVERSATION_SEARCH_RESULTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    textCopy = [v4 stringWithFormat:v6, textCopy];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v10 = @"\u200F";
    }

    else
    {
      v10 = @"\u200E";
    }

    sectionTitle = [(__CFString *)v10 stringByAppendingString:textCopy];
  }

  else
  {
    sectionTitle = [objc_opt_class() sectionTitle];
  }

  return sectionTitle;
}

+ (id)sectionTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_CONVERSATIONS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

+ (id)reuseIdentifierForMode:(unint64_t)mode
{
  v3 = [objc_opt_class() _shouldUseAvatarCellsForMode:mode];
  v4 = off_1E72E4B48;
  if (!v3)
  {
    v4 = off_1E72E4C10;
  }

  reuseIdentifier = [(__objc2_class *)*v4 reuseIdentifier];

  return reuseIdentifier;
}

+ (Class)cellClassForMode:(unint64_t)mode
{
  [objc_opt_class() _shouldUseAvatarCellsForMode:mode];
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
  delegate = [(CKSearchController *)self delegate];
  [delegate parentMarginInsetsForSearchController:self];
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
    results = [(CKSearchController *)self results];
    v18 = [results count];

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

- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = CKConversationSearchController;
  v6 = [(CKSearchController *)&v15 cellForItemInCollectionView:view atIndexPath:path withIdentifier:identifier];
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
      delegate = [(CKSearchController *)self delegate];
      [v10 setShouldInsetResults:{objc_msgSend(delegate, "shouldInsetResultsForSearchController:", self)}];

      topHairline = [v10 topHairline];
      [topHairline setHidden:0];

      bottomHairline = [v10 bottomHairline];
      [bottomHairline setHidden:1];

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
  mode = [(CKSearchController *)self mode];

  return [v3 _shouldUseAvatarCellsForMode:mode];
}

- (id)layoutGroupWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([objc_opt_class() _shouldUseAvatarCellsForMode:{-[CKSearchController mode](self, "mode")}])
  {
    layoutWidth = [(CKSearchController *)self layoutWidth];
    if (layoutWidth)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    v7 = 0.33;
    if (layoutWidth)
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
    v15 = [(CKSearchController *)&v20 layoutGroupWithEnvironment:environmentCopy];
  }

  return v15;
}

- (id)customLayoutSectionForEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([objc_opt_class() _shouldUseAvatarCellsForMode:{-[CKSearchController mode](self, "mode")}])
  {
    v20.receiver = self;
    v20.super_class = CKConversationSearchController;
    v5 = [(CKSearchController *)&v20 customLayoutSectionForEnvironment:environmentCopy];
  }

  else
  {
    if (CKIsRunningInMacCatalyst())
    {
      container = [environmentCopy container];
      [container contentSize];
      v8 = v7;
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 minConversationListWidth];
      v11 = v8 > v10;
    }

    else
    {
      v11 = 1;
    }

    delegate = [(CKSearchController *)self delegate];
    v13 = [delegate shouldInsetResultsForSearchController:self];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4;
    }

    v15 = [objc_alloc(MEMORY[0x1E69DD3F8]) initWithAppearanceStyle:v14 layoutEnvironment:environmentCopy];
    [v15 setSeparatorStyle:v11];
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 conversationCellLeadingSeparatorInsetForEnvironment:environmentCopy];
    v18 = v17;

    [v15 setSeparatorInset:{0.0, v18, 0.0, 0.0}];
    v5 = [objc_alloc(MEMORY[0x1E69DD3F0]) initWithConfiguration:v15 layoutEnvironment:environmentCopy];
  }

  return v5;
}

- (double)widthForDeterminingAvatarVisibility
{
  delegate = [(CKSearchController *)self delegate];
  [delegate widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

- (id)_additionalMenuElementsForResult:(id)result
{
  conversation = [result conversation];
  delegate = [(CKSearchController *)self delegate];
  v6 = [delegate contextMenusForConversation:conversation];

  return v6;
}

@end