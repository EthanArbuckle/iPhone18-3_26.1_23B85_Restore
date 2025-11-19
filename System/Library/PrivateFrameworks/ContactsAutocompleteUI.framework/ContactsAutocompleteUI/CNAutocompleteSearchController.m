@interface CNAutocompleteSearchController
- (BOOL)autocompleteResultsController:(id)a3 willOverrideImageDataForRecipient:(id)a4 completion:(id)a5;
- (BOOL)autocompleteResultsController:(id)a3 willOverrideImageDataForRecipient:(id)a4 imageUpdateBlock:(id)a5;
- (BOOL)becomeFirstResponder;
- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)a3;
- (BOOL)collapseSelectedSearchResultForComposeRecipientView:(id)a3;
- (BOOL)composeRecipientViewShowingSearchResults:(id)a3;
- (BOOL)didPresentSomeViewController;
- (BOOL)expandRecipientsInNamedGroups;
- (BOOL)expandSelectedSearchResultForComposeRecipientView:(id)a3;
- (BOOL)getSupplementalGroupsForSearchQuery:(id)a3 completionHandler:(id)a4;
- (BOOL)hasSpaceToDisplaySuggestions;
- (BOOL)shouldUseScreenRelativeFooterViewPositioning;
- (BOOL)suggestionsController:(id)a3 imageDataForRecipient:(id)a4 imageUpdateBlock:(id)a5;
- (BOOL)wantsAddButton;
- (CGRect)latestKeyboardFrame;
- (CNAutocompleteSearchController)initWithSearchManager:(id)a3 textView:(id)a4 resultsController:(id)a5 options:(id)a6;
- (CNAutocompleteSearchController)initWithSearchType:(unint64_t)a3;
- (CNAutocompleteSearchController)initWithSearchType:(unint64_t)a3 options:(id)a4;
- (CNAutocompleteSearchControllerDelegate)delegate;
- (NSArray)recipients;
- (NSString)composeFieldInfoText;
- (id)atomViewForRecipient:(id)a3;
- (id)autocompleteResultsController:(id)a3 preferredRecipientForRecipient:(id)a4;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (id)composeRecipientView:(id)a3 contextMenuConfigurationForAtom:(id)a4;
- (id)selectedRecipientsForSuggestionsController:(id)a3;
- (unint64_t)presentationOptionsForRecipient:(id)a3;
- (void)_addRecipient:(id)a3;
- (void)addRecipient:(id)a3;
- (void)adjustInsetsForKeyboardFrame:(CGRect)a3;
- (void)autocompleteResultsController:(id)a3 didAskToRemoveRecipient:(id)a4;
- (void)autocompleteResultsController:(id)a3 didEndDisplayingRowForRecipient:(id)a4;
- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
- (void)autocompleteResultsController:(id)a3 tintColorForRecipient:(id)a4 completion:(id)a5;
- (void)autocompleteResultsController:(id)a3 willDisplayRowForRecipient:(id)a4;
- (void)autocompleteResultsControllerWillBeginToScroll:(id)a3;
- (void)cancelAutocompleteSearch;
- (void)clearPresentedViewControllerState;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 disambiguateRecipientForAtom:(id)a4;
- (void)composeRecipientView:(id)a3 showPersonCardForAtom:(id)a4;
- (void)composeRecipientView:(id)a3 showPersonCardForRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)consumeResults:(id)a3 taskID:(id)a4;
- (void)dealloc;
- (void)disambiguateRecipient:(id)a3;
- (void)finishedTaskWithID:(id)a3;
- (void)hideResultsController;
- (void)hideSoftwareKeyboard;
- (void)hideSuggestionsController;
- (void)invalidatePreferredRecipients;
- (void)invalidateRecipientTintColors;
- (void)prepareForReuse;
- (void)prewarmSuggestedRecipientsWithCompletionBlock:(id)a3;
- (void)providePeopleSuggesterFeedbackForRemovedRecipient:(id)a3;
- (void)providePeopleSuggesterFeedbackForSuggestedRecipient:(id)a3;
- (void)providePeopleSuggesterFeedbackForTypedRecipient:(id)a3;
- (void)providePeopleSuggesterFeedbackForViewWillAppear;
- (void)providePeopleSuggesterFeedbackForViewWillDisappear;
- (void)scrollToBottomOfRecipientView;
- (void)selectNextSearchResultForComposeRecipientView:(id)a3;
- (void)selectPreviousSearchResultForComposeRecipientView:(id)a3;
- (void)setComposeFieldInfoText:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setExpandRecipientsInNamedGroups:(BOOL)a3;
- (void)setFooterView:(id)a3;
- (void)setHeaderView:(id)a3;
- (void)setOtherRecipientAddresses:(id)a3;
- (void)setPreferredRecipient:(id)a3 forRecipient:(id)a4;
- (void)setPresentationOptions:(unint64_t)a3 forRecipient:(id)a4;
- (void)setRecipients:(id)a3;
- (void)setSuggestionsHeaderTitleOverride:(id)a3;
- (void)setTintColor:(id)a3 forRecipient:(id)a4;
- (void)setWantsAddButton:(BOOL)a3;
- (void)setWantsSuggestions:(BOOL)a3;
- (void)showSuggestionsController;
- (void)suggestionsController:(id)a3 didDeselectRecipient:(id)a4;
- (void)suggestionsController:(id)a3 didSelectRecipient:(id)a4;
- (void)suggestionsControllerWillBeginScroll:(id)a3;
- (void)unhideResultsController;
- (void)updateFooterPositionWithKeyboardFrame:(CGRect)a3;
- (void)updateHeaderFooterPositionWithKeyboardIntersectionRect:(CGRect)a3;
- (void)updateHeaderFooterVisibility;
- (void)updateResultsControllerFrame;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CNAutocompleteSearchController

- (BOOL)shouldUseScreenRelativeFooterViewPositioning
{
  if (shouldUseScreenRelativeFooterViewPositioning_cn_once_token_1 != -1)
  {
    [CNAutocompleteSearchController shouldUseScreenRelativeFooterViewPositioning];
  }

  v3 = shouldUseScreenRelativeFooterViewPositioning_cn_once_object_1;

  return [v3 BOOLValue];
}

void __78__CNAutocompleteSearchController_shouldUseScreenRelativeFooterViewPositioning__block_invoke()
{
  v0 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v4 bundleIdentifier];
  v2 = [v0 numberWithBool:{objc_msgSend(v1, "isEqualToString:", @"com.apple.InCallService.RemotePeoplePicker"}];
  v3 = shouldUseScreenRelativeFooterViewPositioning_cn_once_object_1;
  shouldUseScreenRelativeFooterViewPositioning_cn_once_object_1 = v2;
}

- (CNAutocompleteSearchController)initWithSearchType:(unint64_t)a3
{
  v5 = objc_alloc_init(CNAutocompleteSearchControllerOptions);
  [(CNAutocompleteSearchControllerOptions *)v5 setShowGlassBackground:MEMORY[0x1E695E118]];
  v6 = [(CNAutocompleteSearchController *)self initWithSearchType:a3 options:v5];

  return v6;
}

- (CNAutocompleteSearchController)initWithSearchType:(unint64_t)a3 options:(id)a4
{
  v6 = a4;
  v7 = [[CNAutocompleteSearchManager alloc] initWithAutocompleteSearchType:a3];
  v8 = [[CNComposeRecipientTextView alloc] initWithOptions:v6];
  v9 = [[CNAutocompleteResultsTableViewController alloc] initWithOptions:v6];
  v10 = [(CNAutocompleteSearchController *)self initWithSearchManager:v7 textView:v8 resultsController:v9 options:v6];

  return v10;
}

- (CNAutocompleteSearchController)initWithSearchManager:(id)a3 textView:(id)a4 resultsController:(id)a5 options:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28.receiver = self;
  v28.super_class = CNAutocompleteSearchController;
  v15 = [(CNAutocompleteSearchController *)&v28 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_searchManager, a3);
    [(CNAutocompleteSearchManager *)v16->_searchManager setFetchDelegate:v16];
    objc_storeStrong(&v16->_composeField, a4);
    [(CNComposeHeaderView *)v16->_composeField setDelegate:v16];
    objc_storeStrong(&v16->_options, a6);
    objc_storeStrong(&v16->_resultsController, a5);
    [(CNAutocompleteResultsTableViewController *)v16->_resultsController setDelegate:v16];
    v17 = -[CNAutocompleteSuggestionsViewController initWithSearchType:]([CNAutocompleteSuggestionsViewController alloc], "initWithSearchType:", [v11 autocompleteSearchType]);
    suggestionsController = v16->_suggestionsController;
    v16->_suggestionsController = v17;

    v19 = [MEMORY[0x1E69DC888] clearColor];
    v20 = [(CNAutocompleteSuggestionsViewController *)v16->_suggestionsController view];
    [v20 setBackgroundColor:v19];

    [(CNAutocompleteSuggestionsViewController *)v16->_suggestionsController setDelegate:v16];
    v21 = [MEMORY[0x1E69DC938] currentDevice];
    v16->_isiPhone = [v21 userInterfaceIdiom] == 0;

    v16->_wantsSuggestions = 1;
    [(CNAutocompleteSearchController *)v16 setSuggestionsHeaderTitleOverride:0];
    v22 = [MEMORY[0x1E69966E8] currentEnvironment];
    v23 = [v22 featureFlags];
    v16->_shouldHideSuggestionsAfterFirstRecipient = [v23 isFeatureEnabled:30] ^ 1;

    v24 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v24 bounds];
    v16->_hasSmallScreen = v25 <= 667.0;

    v26 = v16;
  }

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(CNAutocompleteSearchController *)self keyboardWillShowNotificationObserver];
  [v3 removeObserver:v4];

  v5 = [(CNAutocompleteSearchController *)self keyboardWillHideNotificationObserver];
  [v3 removeObserver:v5];

  v6 = [(CNAutocompleteSearchController *)self uiContentSizeCategoryDidChangeNotificationObserver];
  [v3 removeObserver:v6];

  v7.receiver = self;
  v7.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v7 dealloc];
}

- (void)setRecipients:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSearchController *)self composeField];
  [v5 setRecipients:v4];
}

- (NSArray)recipients
{
  v2 = [(CNAutocompleteSearchController *)self composeField];
  v3 = [v2 recipients];

  return v3;
}

- (void)setDelegate:(id)a3
{
  if (a3)
  {
    v4 = [[CNAutocompleteSearchControllerSafeDelegateWrapper alloc] initWithDelegate:a3];
    [(CNAutocompleteSearchController *)self setDelegateWrapper:v4];
  }

  else
  {
    v5 = 0;
    [(CNAutocompleteSearchController *)self setDelegateWrapper:0];
  }

  objc_storeWeak(&self->_delegate, a3);
}

- (void)setOtherRecipientAddresses:(id)a3
{
  v8 = a3;
  if (([(NSArray *)self->_otherRecipientAddresses isEqual:?]& 1) == 0)
  {
    v4 = [objc_alloc(MEMORY[0x1E695CEC8]) initWithHandles:v8];
    v5 = [v4 expandedHandles];
    v6 = [(CNAutocompleteSearchController *)self suggestionsController];
    [v6 setOtherRecipientAddresses:v5];

    expandedOtherRecipientAddresses = self->_expandedOtherRecipientAddresses;
    self->_expandedOtherRecipientAddresses = v5;
  }
}

- (void)setPresentationOptions:(unint64_t)a3 forRecipient:(id)a4
{
  v6 = a4;
  v7 = [(CNAutocompleteSearchController *)self composeField];
  [v7 setAtomPresentationOptions:a3 forRecipient:v6];
}

- (void)setTintColor:(id)a3 forRecipient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAutocompleteSearchController *)self resultsController];
  [v8 setTintColor:v7 forRecipient:v6];
}

- (void)setPreferredRecipient:(id)a3 forRecipient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAutocompleteSearchController *)self resultsController];
  [v8 setPreferredRecipient:v7 forRecipient:v6];
}

- (void)setComposeFieldInfoText:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSearchController *)self composeField];
  [v5 setComposeFieldInfoText:v4];
}

- (NSString)composeFieldInfoText
{
  v2 = [(CNAutocompleteSearchController *)self composeField];
  v3 = [v2 composeFieldInfoText];

  return v3;
}

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  if (headerView != v5)
  {
    v21 = v5;
    v7 = [(UIView *)headerView superview];
    v8 = [(CNAutocompleteSearchController *)self view];

    if (v7 == v8)
    {
      [(UIView *)self->_headerView removeFromSuperview];
    }

    objc_storeStrong(&self->_headerView, a3);
    v9 = [(CNAutocompleteSearchController *)self view];
    [v9 addSubview:self->_headerView];

    v10 = [(CNAutocompleteSearchController *)self suggestionsController];
    [v10 additionalContentInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(UIView *)v21 frame];
    v18 = v17;
    v19 = [(CNAutocompleteSearchController *)self suggestionsController];
    [v19 setAdditionalContentInsets:{v18, v12, v14, v16}];

    [(CNAutocompleteSearchController *)self latestKeyboardFrame];
    [(CNAutocompleteSearchController *)self adjustInsetsForKeyboardFrame:?];
    v20 = [(CNAutocompleteSearchController *)self view];
    [v20 setNeedsLayout];

    headerView = [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
    v5 = v21;
  }

  MEMORY[0x1EEE66BB8](headerView, v5);
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  footerView = self->_footerView;
  if (footerView != v5)
  {
    v21 = v5;
    v7 = [(UIView *)footerView superview];
    v8 = [(CNAutocompleteSearchController *)self view];

    if (v7 == v8)
    {
      [(UIView *)self->_footerView removeFromSuperview];
    }

    objc_storeStrong(&self->_footerView, a3);
    v9 = [(CNAutocompleteSearchController *)self view];
    [v9 addSubview:self->_footerView];

    v10 = [(CNAutocompleteSearchController *)self suggestionsController];
    [v10 additionalContentInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(UIView *)v21 frame];
    v18 = v17;
    v19 = [(CNAutocompleteSearchController *)self suggestionsController];
    [v19 setAdditionalContentInsets:{v12, v14, v18, v16}];

    [(CNAutocompleteSearchController *)self latestKeyboardFrame];
    [(CNAutocompleteSearchController *)self adjustInsetsForKeyboardFrame:?];
    v20 = [(CNAutocompleteSearchController *)self view];
    [v20 setNeedsLayout];

    footerView = [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
    v5 = v21;
  }

  MEMORY[0x1EEE66BB8](footerView, v5);
}

- (void)setExpandRecipientsInNamedGroups:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNAutocompleteSearchController *)self composeField];
  [v4 setExpandRecipientsInNamedGroups:v3];
}

- (BOOL)expandRecipientsInNamedGroups
{
  v2 = [(CNAutocompleteSearchController *)self composeField];
  v3 = [v2 expandRecipientsInNamedGroups];

  return v3;
}

- (void)setWantsAddButton:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNAutocompleteSearchController *)self composeField];
  [v4 setShowsAddButtonWhenExpanded:v3];
}

- (BOOL)wantsAddButton
{
  v2 = [(CNAutocompleteSearchController *)self composeField];
  v3 = [v2 showsAddButtonWhenExpanded];

  return v3;
}

- (void)setWantsSuggestions:(BOOL)a3
{
  if (self->_wantsSuggestions != a3)
  {
    self->_wantsSuggestions = a3;
    if ([(CNAutocompleteSearchController *)self suggestionsAllowed])
    {
      if (a3)
      {

        [(CNAutocompleteSearchController *)self showSuggestionsController];
      }

      else
      {

        [(CNAutocompleteSearchController *)self hideSuggestionsController];
      }
    }
  }
}

- (BOOL)becomeFirstResponder
{
  v2 = [(CNAutocompleteSearchController *)self composeField];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (void)prepareForReuse
{
  [(CNAutocompleteSearchController *)self setRecipients:MEMORY[0x1E695E0F0]];
  v3 = [(CNAutocompleteSearchController *)self composeField];
  [v3 clearText];

  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  [(CNAutocompleteSearchController *)self setLatestKeyboardFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  [(CNAutocompleteSearchController *)self hideResultsController];
  [(CNAutocompleteSearchController *)self setHeaderView:0];
  [(CNAutocompleteSearchController *)self setFooterView:0];
  [(CNAutocompleteSearchController *)self setLatestKeyboardFrame:v4, v5, v6, v7];
  v8 = [(CNAutocompleteSearchController *)self suggestionsController];
  [v8 prepareForReuse];

  [(CNAutocompleteSearchController *)self latestKeyboardFrame];
  [(CNAutocompleteSearchController *)self adjustInsetsForKeyboardFrame:?];
  v9 = [(CNAutocompleteSearchController *)self currentTaskID];

  if (v9)
  {
    v10 = [(CNAutocompleteSearchController *)self searchManager];
    v11 = [(CNAutocompleteSearchController *)self currentTaskID];
    [v10 cancelTaskWithID:v11];

    [(CNAutocompleteSearchController *)self setCurrentTaskID:0];
  }
}

- (void)setSuggestionsHeaderTitleOverride:(id)a3
{
  if (a3)
  {
    suggestionsController = self->_suggestionsController;

    [(CNAutocompleteSuggestionsViewController *)suggestionsController setSuggestionsHeaderTitle:?];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"ZKW_SUGGESTIONS" value:&stru_1F3002C60 table:@"Localized"];
    [(CNAutocompleteSuggestionsViewController *)self->_suggestionsController setSuggestionsHeaderTitle:v5];
  }
}

- (void)viewDidLoad
{
  v106.receiver = self;
  v106.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v106 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(CNAutocompleteSearchController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(CNAutocompleteSearchController *)self view];
  [v5 safeAreaInsets];
  v7 = v6;
  v8 = [(CNAutocompleteSearchController *)self view];
  [v8 bounds];
  v10 = v9;
  +[(CNComposeHeaderView *)CNComposeRecipientTextView];
  v12 = v11;
  v13 = [(CNAutocompleteSearchController *)self composeField];
  [v13 setFrame:{0.0, v7, v10, v12}];

  v14 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v15 = [(CNAutocompleteSearchController *)self composeField];
  [v15 frame];
  v16 = [v14 initWithFrame:?];
  [(CNAutocompleteSearchController *)self setComposeFieldScrollView:v16];

  v17 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [v17 setAutoresizingMask:2];

  v18 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [v18 setShowsHorizontalScrollIndicator:0];

  v19 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [v19 setScrollsToTop:0];

  v20 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [v20 setBounces:0];

  v21 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [v21 setAutoresizesSubviews:0];

  v22 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  v23 = [(CNAutocompleteSearchController *)self composeField];
  [v22 addSubview:v23];

  v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CNAutocompleteSearchController *)self setComposeFieldContainerView:v24];

  v25 = [(CNAutocompleteSearchController *)self composeField];
  [v25 frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [v34 setFrame:{v27, v29, v31, v33}];

  v35 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [v35 setAutoresizingMask:2];

  v36 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  v37 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [v36 addSubview:v37];

  v38 = [(CNAutocompleteSearchController *)self view];
  v39 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [v38 addSubview:v39];

  v40 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"TO" value:&stru_1F3002C60 table:@"Localized"];
  v42 = [(CNAutocompleteSearchController *)self composeField];
  [v42 setLabel:v41];

  v43 = [(CNAutocompleteSearchController *)self composeField];
  [v43 setAutoresizingMask:2];

  v44 = [(CNAutocompleteSearchController *)self composeField];
  [v44 frame];
  MaxY = CGRectGetMaxY(v107);
  v46 = [(CNAutocompleteSearchController *)self view];
  [v46 bounds];
  v48 = v47;
  v49 = [(CNAutocompleteSearchController *)self view];
  [v49 bounds];
  v51 = v50;
  v52 = [(CNAutocompleteSearchController *)self composeField];
  [v52 frame];
  v53 = v51 - CGRectGetMaxY(v108);
  v54 = [(CNAutocompleteSearchController *)self suggestionsController];
  v55 = [v54 view];
  [v55 setFrame:{0.0, MaxY, v48, v53}];

  v56 = [(CNAutocompleteSearchController *)self suggestionsController];
  v57 = [v56 view];
  [v57 setAutoresizingMask:2];

  v58 = [(CNAutocompleteSearchController *)self suggestionsController];
  [v58 willMoveToParentViewController:self];

  v59 = [(CNAutocompleteSearchController *)self view];
  v60 = [(CNAutocompleteSearchController *)self suggestionsController];
  v61 = [v60 view];
  [v59 addSubview:v61];

  v62 = [(CNAutocompleteSearchController *)self suggestionsController];
  [(CNAutocompleteSearchController *)self addChildViewController:v62];

  [(CNAutocompleteSearchController *)self showSuggestionsController];
  v63 = [(CNAutocompleteSearchController *)self composeField];
  [v63 frame];
  v64 = CGRectGetMaxY(v109) + 6.0;
  v65 = [(CNAutocompleteSearchController *)self view];
  [v65 bounds];
  v67 = v66 + -24.0;
  v68 = [(CNAutocompleteSearchController *)self view];
  [v68 bounds];
  v70 = v69;
  v71 = [(CNAutocompleteSearchController *)self composeField];
  [v71 frame];
  v72 = CGRectGetMaxY(v110);
  v73 = [(CNAutocompleteSearchController *)self view];
  [v73 safeAreaInsets];
  v75 = v70 - (v72 + v74);
  v76 = [(CNAutocompleteSearchController *)self resultsController];
  v77 = [v76 view];
  [v77 setFrame:{12.0, v64, v67, v75}];

  v78 = [(CNAutocompleteSearchController *)self resultsController];
  v79 = [v78 view];
  [v79 setAutoresizingMask:2];

  v80 = [(CNAutocompleteSearchController *)self resultsController];
  v81 = [v80 view];
  [v81 setHidden:1];

  v82 = [MEMORY[0x1E69DC888] clearColor];
  v83 = [(CNAutocompleteSearchController *)self resultsController];
  v84 = [v83 view];
  [v84 setBackgroundColor:v82];

  v85 = [(CNAutocompleteSearchController *)self view];
  v86 = [(CNAutocompleteSearchController *)self resultsController];
  v87 = [v86 view];
  [v85 addSubview:v87];

  v88 = [MEMORY[0x1E696AD88] defaultCenter];
  objc_initWeak(&location, self);
  v89 = *MEMORY[0x1E69DE080];
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __45__CNAutocompleteSearchController_viewDidLoad__block_invoke;
  v103[3] = &unk_1E7CD1EA8;
  objc_copyWeak(&v104, &location);
  v90 = [v88 addObserverForName:v89 object:0 queue:0 usingBlock:v103];
  [(CNAutocompleteSearchController *)self setKeyboardWillShowNotificationObserver:v90];

  v91 = *MEMORY[0x1E69DE078];
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __45__CNAutocompleteSearchController_viewDidLoad__block_invoke_2;
  v101[3] = &unk_1E7CD1EA8;
  objc_copyWeak(&v102, &location);
  v92 = [v88 addObserverForName:v91 object:0 queue:0 usingBlock:v101];
  [(CNAutocompleteSearchController *)self setKeyboardWillHideNotificationObserver:v92];

  v93 = *MEMORY[0x1E69DDC48];
  v96 = MEMORY[0x1E69E9820];
  v97 = 3221225472;
  v98 = __45__CNAutocompleteSearchController_viewDidLoad__block_invoke_3;
  v99 = &unk_1E7CD1EA8;
  objc_copyWeak(&v100, &location);
  v94 = [v88 addObserverForName:v93 object:0 queue:0 usingBlock:&v96];
  [(CNAutocompleteSearchController *)self setUiContentSizeCategoryDidChangeNotificationObserver:v94, v96, v97, v98, v99];

  v95 = [(CNAutocompleteSearchController *)self composeField];
  [v95 becomeFirstResponder];

  objc_destroyWeak(&v100);
  objc_destroyWeak(&v102);
  objc_destroyWeak(&v104);
  objc_destroyWeak(&location);
}

void __45__CNAutocompleteSearchController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained composeField];
  [v4 setUsingActiveAppearance:1 animated:0];

  v5 = [v3 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v6 CGRectValue];
  [WeakRetained setLatestKeyboardFrame:?];

  [WeakRetained latestKeyboardFrame];
  [WeakRetained adjustInsetsForKeyboardFrame:?];
}

void __45__CNAutocompleteSearchController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained suggestionsController];
  v5 = [v4 useAccessibleLayout];

  if (v5)
  {
    v6 = [WeakRetained composeField];
    [v6 setUsingActiveAppearance:0 animated:0];
  }

  if ([WeakRetained shouldUseScreenRelativeFooterViewPositioning])
  {
    [WeakRetained setLatestKeyboardFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  else
  {
    v7 = [v9 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
    [v8 CGRectValue];
    [WeakRetained setLatestKeyboardFrame:?];
  }

  [WeakRetained latestKeyboardFrame];
  [WeakRetained adjustInsetsForKeyboardFrame:?];
}

void __45__CNAutocompleteSearchController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained suggestionsAllowed])
  {
    [WeakRetained showSuggestionsController];
  }

  else
  {
    [WeakRetained hideSuggestionsController];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForViewWillAppear];
  v5.receiver = self;
  v5.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForViewWillDisappear];
  v5.receiver = self;
  v5.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v5 viewWillDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  if ([(CNAutocompleteSearchController *)self shouldUseScreenRelativeFooterViewPositioning])
  {
    if (![(CNAutocompleteSearchController *)self finalWindowAttached])
    {
      [(CNAutocompleteSearchController *)self latestKeyboardFrame];
      if (v3 > 0.0)
      {
        if ([(CNAutocompleteSearchController *)self isViewLoaded])
        {
          v4 = [(CNAutocompleteSearchController *)self view];
          v5 = [v4 window];
        }

        else
        {
          v5 = 0;
        }

        v6 = [v5 screen];
        if (v6)
        {
          [v5 bounds];
          v8 = v7;
          [v6 bounds];
          if (v8 != v9)
          {
            v10 = v9;
            [(CNAutocompleteSearchController *)self setFinalWindowAttached:1];
            v11 = v10 - v8;
            v12 = [(CNAutocompleteSearchController *)self traitCollection];
            v13 = [v12 horizontalSizeClass];

            if (v13 == 2)
            {
              v14 = v11 * 0.5;
            }

            else
            {
              v14 = v11;
            }

            [(CNAutocompleteSearchController *)self latestKeyboardFrame];
            v16 = v15;
            v18 = v17;
            v20 = v19;
            v22 = v21 - v14;
            [(CNAutocompleteSearchController *)self setLatestKeyboardFrame:?];
            [(CNAutocompleteSearchController *)self updateFooterPositionWithKeyboardFrame:v16, v22, v18, v20];
          }
        }
      }
    }
  }

  v23.receiver = self;
  v23.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v23 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(CNAutocompleteSearchController *)self composeField];
  [v3 frame];
  v5 = v4;

  v6 = [(CNAutocompleteSearchController *)self view];
  [v6 bounds];
  v8 = v7 + -30.0;
  v9 = [(CNAutocompleteSearchController *)self composeField];
  [v9 setFrame:{15.0, 0.0, v8, v5}];

  v10 = [(CNAutocompleteSearchController *)self view];
  [v10 safeAreaInsets];
  v12 = v11;
  v13 = [(CNAutocompleteSearchController *)self view];
  [v13 bounds];
  v15 = v14;
  v16 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [v16 frame];
  v18 = v17;
  v19 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [v19 setFrame:{0.0, v12, v15, v18}];

  v20 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [v20 frame];
  MaxY = CGRectGetMaxY(v87);
  v22 = [(CNAutocompleteSearchController *)self view];
  [v22 bounds];
  v24 = v23;
  v25 = [(CNAutocompleteSearchController *)self view];
  [v25 bounds];
  v27 = v26;
  v28 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [v28 frame];
  v29 = v27 - CGRectGetMaxY(v88);
  v30 = [(CNAutocompleteSearchController *)self suggestionsController];
  v31 = [v30 view];
  [v31 setFrame:{0.0, MaxY, v24, v29}];

  [(CNAutocompleteSearchController *)self updateResultsControllerFrame];
  v32 = [(CNAutocompleteSearchController *)self headerView];

  if (v32)
  {
    v33 = [(CNAutocompleteSearchController *)self headerView];
    [v33 frame];
    v35 = v34;
    v37 = v36;

    v38 = [(CNAutocompleteSearchController *)self view];
    [v38 bounds];
    v40 = v39;

    v41 = [(CNAutocompleteSearchController *)self headerView];
    [v41 setFrame:{0.0, v35, v40, v37}];

    v42 = [(CNAutocompleteSearchController *)self suggestionsController];
    v43 = [v42 useAccessibleLayout];

    if (v43)
    {
      v44 = [(CNAutocompleteSearchController *)self suggestionsController];
      v45 = [v44 view];
      [v45 frame];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v54 = [(CNAutocompleteSearchController *)self headerView];
      [v54 bounds];
      v56 = v49 + v55;

      v57 = [(CNAutocompleteSearchController *)self suggestionsController];
      v58 = [v57 view];
      [v58 setFrame:{v47, v56, v51, v53}];
    }
  }

  v59 = [(CNAutocompleteSearchController *)self footerView];

  if (v59)
  {
    v60 = [(CNAutocompleteSearchController *)self footerView];
    [v60 frame];
    v62 = v61;
    v64 = v63;

    v65 = [(CNAutocompleteSearchController *)self view];
    [v65 bounds];
    v67 = v66;

    v68 = [(CNAutocompleteSearchController *)self footerView];
    [v68 setFrame:{0.0, v62, v67, v64}];

    [(CNAutocompleteSearchController *)self latestKeyboardFrame];
    [(CNAutocompleteSearchController *)self updateFooterPositionWithKeyboardFrame:?];
    v69 = [(CNAutocompleteSearchController *)self suggestionsController];
    v70 = [v69 useAccessibleLayout];

    if (v70)
    {
      v71 = [(CNAutocompleteSearchController *)self suggestionsController];
      v72 = [v71 view];
      [v72 frame];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;

      v81 = [(CNAutocompleteSearchController *)self footerView];
      [v81 bounds];
      v83 = v80 - v82;

      v84 = [(CNAutocompleteSearchController *)self suggestionsController];
      v85 = [v84 view];
      [v85 setFrame:{v74, v76, v78, v83}];
    }
  }

  v86.receiver = self;
  v86.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v86 viewDidLayoutSubviews];
}

- (void)updateResultsControllerFrame
{
  v20 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [v20 frame];
  v3 = CGRectGetMaxY(v22) + 6.0;
  v4 = [(CNAutocompleteSearchController *)self view];
  [v4 bounds];
  v6 = v5 + -24.0;
  v7 = [(CNAutocompleteSearchController *)self view];
  [v7 bounds];
  v9 = v8;
  v10 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [v10 frame];
  MaxY = CGRectGetMaxY(v23);
  v12 = [(CNAutocompleteSearchController *)self view];
  [v12 safeAreaInsets];
  v14 = MaxY + v13;
  v15 = [(CNAutocompleteSearchController *)self view];
  [v15 safeAreaInsets];
  v17 = v9 - (v14 + v16);
  v18 = [(CNAutocompleteSearchController *)self resultsController];
  v19 = [v18 view];
  [v19 setFrame:{12.0, v3, v6, v17}];
}

- (BOOL)hasSpaceToDisplaySuggestions
{
  if (![(CNAutocompleteSearchController *)self hasSmallScreen])
  {
    return 1;
  }

  v3 = [(CNAutocompleteSearchController *)self suggestionsController];
  v4 = [v3 useAccessibleLayout];

  return v4 ^ 1;
}

- (void)addRecipient:(id)a3
{
  v4 = a3;
  [(CNAutocompleteSearchController *)self setDidAddRecipientFromTypedQuery:1];
  [(CNAutocompleteSearchController *)self _addRecipient:v4];
  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForTypedRecipient:v4];
}

- (void)_addRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSearchController *)self recipients];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__CNAutocompleteSearchController__addRecipient___block_invoke;
  v9[3] = &unk_1E7CD1BE0;
  v6 = v4;
  v10 = v6;
  v7 = [v5 _cn_any:v9];

  if ((v7 & 1) == 0)
  {
    v8 = [(CNAutocompleteSearchController *)self composeField];
    [v8 addRecipient:v6];

    [(CNAutocompleteSearchController *)self scrollToBottomOfRecipientView];
  }
}

uint64_t __48__CNAutocompleteSearchController__addRecipient___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [*(a1 + 32) address];
  v5 = [v3 _cn_caseInsensitiveIsEqual:v4];

  return v5;
}

- (void)disambiguateRecipient:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNAutocompleteSearchController *)self resultsController];
  v7[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v5 updateRecipients:v6 disambiguatingRecipient:v4];

  [(CNAutocompleteSearchController *)self unhideResultsController];
}

- (void)unhideResultsController
{
  [(CNAutocompleteSearchController *)self setShouldRestoreFirstResponderToComposeField:0];
  [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
  v3 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v4 = [(CNAutocompleteSearchController *)self resultsController];
  v5 = [v4 view];
  [v3 searchController:self willShowResultsView:v5];

  v6 = [(CNAutocompleteSearchController *)self resultsController];
  v7 = [v6 view];
  [v7 setHidden:0];

  [(CNAutocompleteSearchController *)self hideSuggestionsController];
  v10 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v8 = [(CNAutocompleteSearchController *)self resultsController];
  v9 = [v8 view];
  [v10 searchController:self didShowResultsView:v9];
}

- (void)hideResultsController
{
  [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
  v3 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v4 = [(CNAutocompleteSearchController *)self resultsController];
  v5 = [v4 view];
  [v3 searchController:self willHideResultsView:v5];

  v6 = [(CNAutocompleteSearchController *)self resultsController];
  v7 = [v6 view];
  [v7 setHidden:1];

  v10 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v8 = [(CNAutocompleteSearchController *)self resultsController];
  v9 = [v8 view];
  [v10 searchController:self didHideResultsView:v9];
}

- (void)showSuggestionsController
{
  v3 = 1;
  [(CNAutocompleteSearchController *)self setSuggestionsAllowed:1];
  if ([(CNAutocompleteSearchController *)self wantsSuggestions])
  {
    v3 = [(CNAutocompleteSearchController *)self hasSpaceToDisplaySuggestions]^ 1;
  }

  v5 = [(CNAutocompleteSearchController *)self suggestionsController];
  v4 = [v5 view];
  [v4 setHidden:v3];
}

- (void)hideSuggestionsController
{
  [(CNAutocompleteSearchController *)self setSuggestionsAllowed:0];
  v4 = [(CNAutocompleteSearchController *)self suggestionsController];
  v3 = [v4 view];
  [v3 setHidden:1];
}

- (void)invalidateRecipientTintColors
{
  v3 = [(CNAutocompleteSearchController *)self resultsController];
  [v3 invalidateAddressTintColors];

  v4 = [(CNAutocompleteSearchController *)self composeField];
  [v4 invalidateAtomPresentationOptions];
}

- (void)invalidatePreferredRecipients
{
  v2 = [(CNAutocompleteSearchController *)self resultsController];
  [v2 invalidatePreferredRecipients];
}

- (void)adjustInsetsForKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CNAutocompleteSearchController *)self resultsController];
  v45 = [v8 tableView];

  v9 = [v45 window];
  v44 = height;
  [v9 convertRect:0 fromWindow:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v45 convertRect:0 fromView:{v11, v13, v15, v17}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v45 frame];
  v49.origin.x = v19;
  v49.origin.y = v21;
  v49.size.width = v23;
  v49.size.height = v25;
  v48 = CGRectIntersection(v47, v49);
  v26 = CGRectGetHeight(v48);
  v27 = [(CNAutocompleteSearchController *)self footerView];
  if (v27)
  {
    v28 = [(CNAutocompleteSearchController *)self footerView];
    [v28 bounds];
    v30 = v29;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = [(CNAutocompleteSearchController *)self resultsController];
  v32 = [v31 tableView];
  [v32 contentInset];
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = v26 + v30;
  v40 = [(CNAutocompleteSearchController *)self resultsController];
  v41 = [v40 tableView];
  [v41 setContentInset:{v34, v36, v39, v38}];

  v42 = [(CNAutocompleteSearchController *)self resultsController];
  v43 = [v42 tableView];
  [v43 setScrollIndicatorInsets:{v34, v36, v39, v38}];

  [(CNAutocompleteSearchController *)self updateFooterPositionWithKeyboardFrame:x, y, width, v44];
}

- (void)updateFooterPositionWithKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(CNAutocompleteSearchController *)self isViewLoaded])
  {
    v8 = [(CNAutocompleteSearchController *)self view];
    v9 = [v8 window];

    if (v9)
    {
      v31 = [(CNAutocompleteSearchController *)self view];
      v10 = [v31 window];
      v11 = [v10 coordinateSpace];
      v12 = [v31 window];
      v13 = [v12 screen];
      v14 = [v13 coordinateSpace];
      [v11 convertRect:v14 fromCoordinateSpace:{x, y, width, height}];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      [v31 convertRect:0 fromView:{v16, v18, v20, v22}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v31 frame];
      v35.origin.x = v24;
      v35.origin.y = v26;
      v35.size.width = v28;
      v35.size.height = v30;
      v34 = CGRectIntersection(v33, v35);
      [(CNAutocompleteSearchController *)self updateHeaderFooterPositionWithKeyboardIntersectionRect:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
    }
  }
}

- (void)updateHeaderFooterPositionWithKeyboardIntersectionRect:(CGRect)a3
{
  height = a3.size.height;
  v5 = [(CNAutocompleteSearchController *)self view:a3.origin.x];
  v6 = [v5 superview];
  [v6 safeAreaInsets];
  v8 = v7;
  v10 = v9;

  v11 = [(CNAutocompleteSearchController *)self headerView];

  if (v11)
  {
    v12 = [(CNAutocompleteSearchController *)self headerView];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
    [v19 frame];
    v20 = v8 + CGRectGetMaxY(v35);

    v21 = [(CNAutocompleteSearchController *)self headerView];
    [v21 setFrame:{v14, v20, v16, v18}];
  }

  v22 = [(CNAutocompleteSearchController *)self footerView];

  if (v22)
  {
    v23 = [(CNAutocompleteSearchController *)self footerView];
    [v23 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [(CNAutocompleteSearchController *)self view];
    [v30 bounds];
    v31 = CGRectGetMaxY(v36) - (height + v29);

    if (height == 0.0)
    {
      v32 = v31 - v10;
    }

    else
    {
      v32 = v31;
    }

    v33 = [(CNAutocompleteSearchController *)self footerView];
    [v33 setFrame:{v25, v32, v27, v29}];
  }
}

- (void)updateHeaderFooterVisibility
{
  v5 = [(CNAutocompleteSearchController *)self composeField];
  v6 = [v5 text];
  if (v6 && (-[CNAutocompleteSearchController composeField](self, "composeField"), v2 = objc_claimAutoreleasedReturnValue(), [v2 text], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CNAutocompleteSearchController *)self resultsController];
    v7 = [v8 inDisambiguationMode];

    if (!v6)
    {
      goto LABEL_6;
    }
  }

LABEL_6:
  v9 = [(CNAutocompleteSearchController *)self headerView];

  if (v9)
  {
    v10 = [(CNAutocompleteSearchController *)self headerView];
    [v10 setHidden:v7];
  }

  v11 = [(CNAutocompleteSearchController *)self footerView];

  if (v11)
  {
    v12 = [(CNAutocompleteSearchController *)self footerView];
    [v12 setHidden:v7];
  }
}

- (void)prewarmSuggestedRecipientsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSearchController *)self suggestionsController];
  [v5 fetchSuggestedRecipientsWithCompletionBlock:v4];
}

- (id)atomViewForRecipient:(id)a3
{
  composeField = self->_composeField;
  if (composeField)
  {
    composeField = [composeField atomViewForRecipient:a3];
    v3 = vars8;
  }

  return composeField;
}

- (void)consumeResults:(id)a3 taskID:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(CNAutocompleteSearchController *)self currentTaskID];
  v8 = [v6 isEqualToNumber:v7];

  if (v8)
  {
    v9 = [(CNAutocompleteSearchController *)self autocompleteResults];

    if (v9)
    {
      v10 = [(CNAutocompleteSearchController *)self autocompleteResults];
      v11 = [v10 arrayByAddingObjectsFromArray:v14];
      [(CNAutocompleteSearchController *)self setAutocompleteResults:v11];
    }

    else
    {
      [(CNAutocompleteSearchController *)self setAutocompleteResults:v14];
    }

    v12 = [(CNAutocompleteSearchController *)self autocompleteResults];
    v13 = [(CNAutocompleteSearchController *)self resultsController];
    [v13 setRecipients:v12];

    [(CNAutocompleteSearchController *)self unhideResultsController];
  }
}

- (void)finishedTaskWithID:(id)a3
{
  v7 = a3;
  v4 = [(CNAutocompleteSearchController *)self currentTaskID];
  v5 = [v7 isEqualToNumber:v4];

  if (v5)
  {
    v6 = [(CNAutocompleteSearchController *)self autocompleteResults];

    if (!v6)
    {
      [(CNAutocompleteSearchController *)self consumeResults:MEMORY[0x1E695E0F0] taskID:v7];
    }

    [(CNAutocompleteSearchController *)self setCurrentTaskID:0];
  }
}

- (BOOL)getSupplementalGroupsForSearchQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__CNAutocompleteSearchController_getSupplementalGroupsForSearchQuery_completionHandler___block_invoke;
  v11[3] = &unk_1E7CD2628;
  v12 = v6;
  v9 = v6;
  LOBYTE(self) = [v8 searchController:self supplementalGroupsForSearchQuery:v7 completionHandler:v11];

  return self;
}

void __88__CNAutocompleteSearchController_getSupplementalGroupsForSearchQuery_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  v6 = [v7 _cn_map:&__block_literal_global_47];
  (*(*(a1 + 32) + 16))();
}

CNAutocompleteSupplementalGroup *__88__CNAutocompleteSearchController_getSupplementalGroupsForSearchQuery_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 members];
  v4 = [v3 _cn_map:&__block_literal_global_50_0];

  v5 = [CNAutocompleteSupplementalGroup alloc];
  v6 = [v2 identifier];
  v7 = [v2 title];

  v8 = [(CNAutocompleteSupplementalGroup *)v5 initWithIdentifier:v6 title:v7 members:v4];

  return v8;
}

CNAutocompleteSupplementalGroupMember *__88__CNAutocompleteSearchController_getSupplementalGroupsForSearchQuery_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CNAutocompleteSupplementalGroupMember alloc];
  v4 = [v2 nameComponents];
  v5 = [v2 address];
  v6 = [v2 addressType];

  v7 = [(CNAutocompleteSupplementalGroupMember *)v3 initWithNameComponents:v4 address:v5 addressType:v6];

  return v7;
}

- (BOOL)autocompleteResultsController:(id)a3 willOverrideImageDataForRecipient:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CNAutocompleteSearchController *)self delegateWrapper];
  LOBYTE(self) = [v9 searchController:self imageDataForRecipient:v8 imageUpdateBlock:v7];

  return self;
}

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [(CNAutocompleteSearchController *)self composeField];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v14 searchController:self textViewWillChangeSize:{width, height}];

  v15 = [(CNAutocompleteSearchController *)self composeField];
  [v15 setFrame:{v9, v11, v13, height}];

  v16 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [v16 contentSize];
  v18 = v17;
  v20 = v19;

  if (v13 != v18 || height != v20)
  {
    v21 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
    [v21 setContentSize:{v13, height}];

    v22 = [(CNAutocompleteSearchController *)self view];
    [v22 bounds];
    [(CNAutocompleteSearchController *)self latestKeyboardFrame];
    v23 = [(CNAutocompleteSearchController *)self footerView];
    [v23 bounds];

    +[(CNComposeHeaderView *)CNComposeRecipientTextView];
    if (height <= 150.0)
    {
      v24 = height;
    }

    else
    {
      v24 = 150.0;
    }

    v25 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
    [v25 setFrame:{v9, v11, v13, v24}];

    v26 = [(CNAutocompleteSearchController *)self view];
    [v26 safeAreaInsets];
    v28 = v27;
    v29 = [(CNAutocompleteSearchController *)self view];
    [v29 bounds];
    v31 = v30;

    v32 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
    [v32 setFrame:{0.0, v28, v31, v24}];
  }

  v33 = [(CNAutocompleteSearchController *)self view];
  [v33 setNeedsLayout];

  v34 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v34 searchController:self textViewDidChangeSize:{width, height}];
}

- (void)scrollToBottomOfRecipientView
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 schedulerProvider];
  v5 = [v4 mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CNAutocompleteSearchController_scrollToBottomOfRecipientView__block_invoke;
  v7[3] = &unk_1E7CD1F90;
  v7[4] = self;
  v6 = [v5 afterDelay:v7 performBlock:0.0];
}

void __63__CNAutocompleteSearchController_scrollToBottomOfRecipientView__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) composeFieldScrollView];
  v2 = [*(a1 + 32) composeFieldScrollView];
  [v2 contentOffset];
  v4 = v3;
  v5 = [*(a1 + 32) composeFieldScrollView];
  [v5 contentSize];
  [v7 scrollRectToVisible:1 animated:{v4, v6 + -1.0, 1.0, 1.0}];
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(CNAutocompleteSearchController *)self cancelAutocompleteSearch];
  v8 = (*(*MEMORY[0x1E6996568] + 16))();
  v9 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v9 searchController:self textViewTextDidChange:v7];

  v10 = [v6 recipients];
  v11 = [v10 count];

  if (v11)
  {
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v12 = [(CNAutocompleteSearchController *)self resultsController];
    [v12 setRecipients:0];

    [(CNAutocompleteSearchController *)self hideResultsController];
    goto LABEL_18;
  }

  [(CNAutocompleteSearchController *)self setDidAddRecipientFromTypedQuery:0];
  if (v8)
  {
    [(CNAutocompleteSearchController *)self showSuggestionsController];
    goto LABEL_6;
  }

  [(CNAutocompleteSearchController *)self hideSuggestionsController];
LABEL_8:
  v13 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = [(CNAutocompleteSearchController *)self expandedOtherRecipientAddresses];
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v13 addObject:*(*(&v31 + 1) + 8 * i)];
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  v30 = v6;
  v19 = [v6 uncommentedAddresses];
  [v13 addObjectsFromArray:v19];

  v20 = objc_alloc_init(MEMORY[0x1E6996330]);
  v21 = [v13 copy];
  [v20 setOtherAddressesAlreadyChosen:v21];

  v22 = [(CNAutocompleteSearchController *)self searchManager];
  v23 = [v22 searchForText:v7 withAutocompleteFetchContext:v20 consumer:self];
  [(CNAutocompleteSearchController *)self setCurrentTaskID:v23];

  v24 = [(CNAutocompleteSearchController *)self composeField];
  v25 = [v24 textView];
  v26 = [v25 selectedRange];
  v27 = [(CNAutocompleteSearchController *)self composeField];
  v28 = [v27 recipients];
  v29 = [v28 count];

  if (v26 > v29)
  {
    [(CNAutocompleteSearchController *)self scrollToBottomOfRecipientView];
  }

  v6 = v30;
LABEL_18:
}

- (void)cancelAutocompleteSearch
{
  v3 = [(CNAutocompleteSearchController *)self currentTaskID];

  if (v3)
  {
    v4 = [(CNAutocompleteSearchController *)self searchManager];
    v5 = [(CNAutocompleteSearchController *)self currentTaskID];
    [v4 cancelTaskWithID:v5];

    [(CNAutocompleteSearchController *)self setCurrentTaskID:0];
  }

  [(CNAutocompleteSearchController *)self setAutocompleteResults:0];
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v8 = [v6 searchController:self composeRecipientForAddress:v5];

  if (v8)
  {
    [(CNAutocompleteSearchController *)self cancelAutocompleteSearch];
    v7 = [(CNAutocompleteSearchController *)self composeField];
    [v7 clearText];

    [(CNAutocompleteSearchController *)self addRecipient:v8];
    [(CNAutocompleteSearchController *)self hideResultsController];
  }
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v7 searchController:self didAddRecipient:v6];

  if (-[CNAutocompleteSearchController shouldHideSuggestionsAfterFirstRecipient](self, "shouldHideSuggestionsAfterFirstRecipient") && ([v11 recipients], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9) || -[CNAutocompleteSearchController didAddRecipientFromTypedQuery](self, "didAddRecipientFromTypedQuery"))
  {
    [(CNAutocompleteSearchController *)self hideSuggestionsController];
  }

  else
  {
    [(CNAutocompleteSearchController *)self showSuggestionsController];
    v10 = [(CNAutocompleteSearchController *)self suggestionsController];
    [v10 invalidateSelectedRecipients];
  }
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v7 searchController:self didRemoveRecipient:v6];

  if ([(CNAutocompleteSearchController *)self shouldHideSuggestionsAfterFirstRecipient])
  {
    v8 = [v12 recipients];
    v9 = [v8 count];

    if (!v9)
    {
      v10 = [(CNAutocompleteSearchController *)self suggestionsController];
      [v10 setRecipients:0];

      [(CNAutocompleteSearchController *)self showSuggestionsController];
    }
  }

  v11 = [(CNAutocompleteSearchController *)self suggestionsController];
  [v11 invalidateSelectedRecipients];

  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForRemovedRecipient:v6];
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  v4 = [(CNAutocompleteSearchController *)self composeField];
  [v4 clearText];

  v5 = [(CNAutocompleteSearchController *)self autocompleteResults];

  if (v5)
  {
    [(CNAutocompleteSearchController *)self setAutocompleteResults:0];
    [(CNAutocompleteSearchController *)self hideResultsController];
    if (![(CNAutocompleteSearchController *)self shouldHideSuggestionsAfterFirstRecipient]|| ![(CNAutocompleteSearchController *)self didAddRecipientFromTypedQuery])
    {
      [(CNAutocompleteSearchController *)self showSuggestionsController];
    }
  }

  v8 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v6 = [(CNAutocompleteSearchController *)self composeField];
  v7 = [v6 addButton];
  [v8 didTapTextViewAccessoryButtonForSearchController:self anchoredToView:v7];
}

- (void)composeRecipientView:(id)a3 showPersonCardForAtom:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self composeField];
  [v6 clearText];

  v7 = [v5 recipient];

  [(CNAutocompleteSearchController *)self disambiguateRecipient:v7];
}

- (void)composeRecipientView:(id)a3 disambiguateRecipientForAtom:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self composeField];
  [v6 clearText];

  v7 = [v5 recipient];

  [(CNAutocompleteSearchController *)self disambiguateRecipient:v7];
}

- (id)composeRecipientView:(id)a3 contextMenuConfigurationForAtom:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v7 = [v5 recipient];

  v8 = [v6 searchController:self contextMenuConfigurationForRecipient:v7];

  return v8;
}

- (void)composeRecipientView:(id)a3 showPersonCardForRecipient:(id)a4
{
  v5 = a4;
  [(CNAutocompleteSearchController *)self setDidPresentContactCard:1];
  v6 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v6 searchController:self didTapTableAccessoryForRecipient:v5];
}

- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v7 = [v6 searchController:self composeRecipientForAddress:v5];

  return v7;
}

- (unint64_t)presentationOptionsForRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v6 = [v5 searchController:self presentationOptionsForRecipient:v4];

  return v6;
}

- (void)autocompleteResultsController:(id)a3 tintColorForRecipient:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v10 = [v9 searchController:self tintColorForRecipient:v8];

  v7[2](v7, v10);
}

- (id)autocompleteResultsController:(id)a3 preferredRecipientForRecipient:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self delegateWrapper];
  v7 = [v6 searchController:self preferredRecipientForRecipient:v5];

  return v7;
}

- (BOOL)autocompleteResultsController:(id)a3 willOverrideImageDataForRecipient:(id)a4 imageUpdateBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CNAutocompleteSearchController *)self delegateWrapper];
  LOBYTE(self) = [v9 searchController:self imageDataForRecipient:v8 imageUpdateBlock:v7];

  return self;
}

- (void)suggestionsController:(id)a3 didSelectRecipient:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CNAutocompleteSearchController *)self _addRecipient:v6];
  v8 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v8 searchController:self didAddRecipientBySuggestionsController:v6];

  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForSuggestedRecipient:v6];
  LODWORD(v6) = [v7 useAccessibleLayout];

  if (v6)
  {

    [(CNAutocompleteSearchController *)self hideSoftwareKeyboard];
  }
}

- (void)suggestionsController:(id)a3 didDeselectRecipient:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self composeField];
  [v6 removeRecipient:v5];
}

- (void)hideSoftwareKeyboard
{
  if (([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] & 1) == 0)
  {
    v3 = [(CNAutocompleteSearchController *)self suggestionsController];
    v4 = [v3 useAccessibleLayout];

    if (v4)
    {
      v5 = [(CNAutocompleteSearchController *)self composeField];
      [v5 setUsingActiveAppearance:0 animated:0];
    }

    [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:1];
    v6 = [(CNAutocompleteSearchController *)self composeField];
    [v6 resignFirstResponder];

    [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:0];
  }
}

- (id)selectedRecipientsForSuggestionsController:(id)a3
{
  v3 = [(CNAutocompleteSearchController *)self composeField];
  v4 = [v3 recipients];

  return v4;
}

- (void)suggestionsControllerWillBeginScroll:(id)a3
{
  [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:1];
  v4 = [(CNAutocompleteSearchController *)self composeField];
  [v4 resignFirstResponder];

  [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:0];
}

- (BOOL)suggestionsController:(id)a3 imageDataForRecipient:(id)a4 imageUpdateBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CNAutocompleteSearchController *)self delegateWrapper];
  LOBYTE(self) = [v9 searchController:self imageDataForRecipient:v8 imageUpdateBlock:v7];

  return self;
}

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  v6 = a4;
  [(CNAutocompleteSearchController *)self cancelAutocompleteSearch];
  v7 = [(CNAutocompleteSearchController *)self composeField];
  [v7 clearText];

  [(CNAutocompleteSearchController *)self addRecipient:v6];
  v8 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v8 searchController:self didAddRecipientByResultsController:v6];

  [(CNAutocompleteSearchController *)self hideResultsController];
  [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
  if ([(CNAutocompleteSearchController *)self shouldRestoreFirstResponderToComposeField])
  {

    [(CNAutocompleteSearchController *)self becomeFirstResponder];
  }
}

- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4
{
  v5 = a4;
  [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:1];
  v6 = [(CNAutocompleteSearchController *)self composeField];
  [v6 resignFirstResponder];

  [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:0];
  [(CNAutocompleteSearchController *)self setDidPresentContactCard:1];
  v7 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v7 searchController:self didTapTableAccessoryForRecipient:v5];
}

- (void)autocompleteResultsController:(id)a3 didAskToRemoveRecipient:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self searchManager];
  [v6 removeRecipientResult:v5];
}

- (void)autocompleteResultsControllerWillBeginToScroll:(id)a3
{
  v6 = [(CNAutocompleteSearchController *)self composeField];
  if ([v6 isFirstResponder])
  {
    v4 = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];

    if ((v4 & 1) == 0)
    {
      [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:1];
      v5 = [(CNAutocompleteSearchController *)self composeField];
      [v5 resignFirstResponder];

      [(CNAutocompleteSearchController *)self setShouldRestoreFirstResponderToComposeField:1];

      [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:0];
    }
  }

  else
  {
  }
}

- (void)selectNextSearchResultForComposeRecipientView:(id)a3
{
  v3 = [(CNAutocompleteSearchController *)self resultsController];
  [v3 selectNextSearchResult];
}

- (void)selectPreviousSearchResultForComposeRecipientView:(id)a3
{
  v3 = [(CNAutocompleteSearchController *)self resultsController];
  [v3 selectPreviousSearchResult];
}

- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)a3
{
  v3 = [(CNAutocompleteSearchController *)self resultsController];
  v4 = [v3 confirmSelectedRecipient];

  return v4;
}

- (BOOL)composeRecipientViewShowingSearchResults:(id)a3
{
  v4 = [(CNAutocompleteSearchController *)self resultsController];
  v5 = [v4 view];
  if ([v5 isHidden])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CNAutocompleteSearchController *)self autocompleteResults];
    v6 = [v7 count] != 0;
  }

  return v6;
}

- (BOOL)expandSelectedSearchResultForComposeRecipientView:(id)a3
{
  v3 = [(CNAutocompleteSearchController *)self resultsController];
  v4 = [v3 expandSelectedRecipient];

  return v4;
}

- (BOOL)collapseSelectedSearchResultForComposeRecipientView:(id)a3
{
  v3 = [(CNAutocompleteSearchController *)self resultsController];
  v4 = [v3 collapseSelectedRecipient];

  return v4;
}

- (void)autocompleteResultsController:(id)a3 willDisplayRowForRecipient:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v6 searchController:self willDisplayRowForRecipient:v5];
}

- (void)autocompleteResultsController:(id)a3 didEndDisplayingRowForRecipient:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [v6 searchController:self didEndDisplayingRowForRecipient:v5];
}

- (BOOL)didPresentSomeViewController
{
  if ([(CNAutocompleteSearchController *)self didPresentContactPicker])
  {
    return 1;
  }

  return [(CNAutocompleteSearchController *)self didPresentContactCard];
}

- (void)clearPresentedViewControllerState
{
  [(CNAutocompleteSearchController *)self setDidPresentContactPicker:0];

  [(CNAutocompleteSearchController *)self setDidPresentContactCard:0];
}

- (void)providePeopleSuggesterFeedbackForViewWillAppear
{
  v3 = [(CNAutocompleteSearchController *)self didPresentSomeViewController];
  v4 = MEMORY[0x1E6996350];
  if (v3)
  {
    [MEMORY[0x1E6996350] userEnteredExistingSession];

    [(CNAutocompleteSearchController *)self clearPresentedViewControllerState];
  }

  else
  {

    [v4 userEnteredNewSession];
  }
}

- (void)providePeopleSuggesterFeedbackForViewWillDisappear
{
  v2 = [(CNAutocompleteSearchController *)self didPresentSomeViewController];
  v3 = MEMORY[0x1E6996350];
  if (v2)
  {

    [v3 userNavigatedAwayFromSession];
  }

  else
  {

    [v3 userTerminatedSession];
  }
}

- (void)providePeopleSuggesterFeedbackForSuggestedRecipient:(id)a3
{
  v3 = [a3 autocompleteResult];
  v5 = [v3 psSuggestion];

  v4 = v5;
  if (v5)
  {
    [MEMORY[0x1E6996350] userSelectedSuggestion:v5];
    v4 = v5;
  }
}

- (void)providePeopleSuggesterFeedbackForTypedRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSearchController *)self didPresentContactPicker];
  v6 = MEMORY[0x1E6996350];
  v7 = [v4 contact];

  if (v5)
  {
    [v6 userSelectedFromContactPicker:v7];
  }

  else
  {
    [v6 userEnteredContact:v7];
  }
}

- (void)providePeopleSuggesterFeedbackForRemovedRecipient:(id)a3
{
  v3 = MEMORY[0x1E6996350];
  v4 = [a3 contact];
  [v3 userRemovedContact:v4];
}

- (CNAutocompleteSearchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)latestKeyboardFrame
{
  x = self->_latestKeyboardFrame.origin.x;
  y = self->_latestKeyboardFrame.origin.y;
  width = self->_latestKeyboardFrame.size.width;
  height = self->_latestKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end