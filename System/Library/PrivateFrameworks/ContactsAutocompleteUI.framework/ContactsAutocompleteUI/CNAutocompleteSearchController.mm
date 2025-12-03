@interface CNAutocompleteSearchController
- (BOOL)autocompleteResultsController:(id)controller willOverrideImageDataForRecipient:(id)recipient completion:(id)completion;
- (BOOL)autocompleteResultsController:(id)controller willOverrideImageDataForRecipient:(id)recipient imageUpdateBlock:(id)block;
- (BOOL)becomeFirstResponder;
- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)view;
- (BOOL)collapseSelectedSearchResultForComposeRecipientView:(id)view;
- (BOOL)composeRecipientViewShowingSearchResults:(id)results;
- (BOOL)didPresentSomeViewController;
- (BOOL)expandRecipientsInNamedGroups;
- (BOOL)expandSelectedSearchResultForComposeRecipientView:(id)view;
- (BOOL)getSupplementalGroupsForSearchQuery:(id)query completionHandler:(id)handler;
- (BOOL)hasSpaceToDisplaySuggestions;
- (BOOL)shouldUseScreenRelativeFooterViewPositioning;
- (BOOL)suggestionsController:(id)controller imageDataForRecipient:(id)recipient imageUpdateBlock:(id)block;
- (BOOL)wantsAddButton;
- (CGRect)latestKeyboardFrame;
- (CNAutocompleteSearchController)initWithSearchManager:(id)manager textView:(id)view resultsController:(id)controller options:(id)options;
- (CNAutocompleteSearchController)initWithSearchType:(unint64_t)type;
- (CNAutocompleteSearchController)initWithSearchType:(unint64_t)type options:(id)options;
- (CNAutocompleteSearchControllerDelegate)delegate;
- (NSArray)recipients;
- (NSString)composeFieldInfoText;
- (id)atomViewForRecipient:(id)recipient;
- (id)autocompleteResultsController:(id)controller preferredRecipientForRecipient:(id)recipient;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (id)composeRecipientView:(id)view contextMenuConfigurationForAtom:(id)atom;
- (id)selectedRecipientsForSuggestionsController:(id)controller;
- (unint64_t)presentationOptionsForRecipient:(id)recipient;
- (void)_addRecipient:(id)recipient;
- (void)addRecipient:(id)recipient;
- (void)adjustInsetsForKeyboardFrame:(CGRect)frame;
- (void)autocompleteResultsController:(id)controller didAskToRemoveRecipient:(id)recipient;
- (void)autocompleteResultsController:(id)controller didEndDisplayingRowForRecipient:(id)recipient;
- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion;
- (void)autocompleteResultsController:(id)controller willDisplayRowForRecipient:(id)recipient;
- (void)autocompleteResultsControllerWillBeginToScroll:(id)scroll;
- (void)cancelAutocompleteSearch;
- (void)clearPresentedViewControllerState;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom;
- (void)composeRecipientView:(id)view showPersonCardForAtom:(id)atom;
- (void)composeRecipientView:(id)view showPersonCardForRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)consumeResults:(id)results taskID:(id)d;
- (void)dealloc;
- (void)disambiguateRecipient:(id)recipient;
- (void)finishedTaskWithID:(id)d;
- (void)hideResultsController;
- (void)hideSoftwareKeyboard;
- (void)hideSuggestionsController;
- (void)invalidatePreferredRecipients;
- (void)invalidateRecipientTintColors;
- (void)prepareForReuse;
- (void)prewarmSuggestedRecipientsWithCompletionBlock:(id)block;
- (void)providePeopleSuggesterFeedbackForRemovedRecipient:(id)recipient;
- (void)providePeopleSuggesterFeedbackForSuggestedRecipient:(id)recipient;
- (void)providePeopleSuggesterFeedbackForTypedRecipient:(id)recipient;
- (void)providePeopleSuggesterFeedbackForViewWillAppear;
- (void)providePeopleSuggesterFeedbackForViewWillDisappear;
- (void)scrollToBottomOfRecipientView;
- (void)selectNextSearchResultForComposeRecipientView:(id)view;
- (void)selectPreviousSearchResultForComposeRecipientView:(id)view;
- (void)setComposeFieldInfoText:(id)text;
- (void)setDelegate:(id)delegate;
- (void)setExpandRecipientsInNamedGroups:(BOOL)groups;
- (void)setFooterView:(id)view;
- (void)setHeaderView:(id)view;
- (void)setOtherRecipientAddresses:(id)addresses;
- (void)setPreferredRecipient:(id)recipient forRecipient:(id)forRecipient;
- (void)setPresentationOptions:(unint64_t)options forRecipient:(id)recipient;
- (void)setRecipients:(id)recipients;
- (void)setSuggestionsHeaderTitleOverride:(id)override;
- (void)setTintColor:(id)color forRecipient:(id)recipient;
- (void)setWantsAddButton:(BOOL)button;
- (void)setWantsSuggestions:(BOOL)suggestions;
- (void)showSuggestionsController;
- (void)suggestionsController:(id)controller didDeselectRecipient:(id)recipient;
- (void)suggestionsController:(id)controller didSelectRecipient:(id)recipient;
- (void)suggestionsControllerWillBeginScroll:(id)scroll;
- (void)unhideResultsController;
- (void)updateFooterPositionWithKeyboardFrame:(CGRect)frame;
- (void)updateHeaderFooterPositionWithKeyboardIntersectionRect:(CGRect)rect;
- (void)updateHeaderFooterVisibility;
- (void)updateResultsControllerFrame;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (CNAutocompleteSearchController)initWithSearchType:(unint64_t)type
{
  v5 = objc_alloc_init(CNAutocompleteSearchControllerOptions);
  [(CNAutocompleteSearchControllerOptions *)v5 setShowGlassBackground:MEMORY[0x1E695E118]];
  v6 = [(CNAutocompleteSearchController *)self initWithSearchType:type options:v5];

  return v6;
}

- (CNAutocompleteSearchController)initWithSearchType:(unint64_t)type options:(id)options
{
  optionsCopy = options;
  v7 = [[CNAutocompleteSearchManager alloc] initWithAutocompleteSearchType:type];
  v8 = [[CNComposeRecipientTextView alloc] initWithOptions:optionsCopy];
  v9 = [[CNAutocompleteResultsTableViewController alloc] initWithOptions:optionsCopy];
  v10 = [(CNAutocompleteSearchController *)self initWithSearchManager:v7 textView:v8 resultsController:v9 options:optionsCopy];

  return v10;
}

- (CNAutocompleteSearchController)initWithSearchManager:(id)manager textView:(id)view resultsController:(id)controller options:(id)options
{
  managerCopy = manager;
  viewCopy = view;
  controllerCopy = controller;
  optionsCopy = options;
  v28.receiver = self;
  v28.super_class = CNAutocompleteSearchController;
  v15 = [(CNAutocompleteSearchController *)&v28 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_searchManager, manager);
    [(CNAutocompleteSearchManager *)v16->_searchManager setFetchDelegate:v16];
    objc_storeStrong(&v16->_composeField, view);
    [(CNComposeHeaderView *)v16->_composeField setDelegate:v16];
    objc_storeStrong(&v16->_options, options);
    objc_storeStrong(&v16->_resultsController, controller);
    [(CNAutocompleteResultsTableViewController *)v16->_resultsController setDelegate:v16];
    v17 = -[CNAutocompleteSuggestionsViewController initWithSearchType:]([CNAutocompleteSuggestionsViewController alloc], "initWithSearchType:", [managerCopy autocompleteSearchType]);
    suggestionsController = v16->_suggestionsController;
    v16->_suggestionsController = v17;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    view = [(CNAutocompleteSuggestionsViewController *)v16->_suggestionsController view];
    [view setBackgroundColor:clearColor];

    [(CNAutocompleteSuggestionsViewController *)v16->_suggestionsController setDelegate:v16];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v16->_isiPhone = [currentDevice userInterfaceIdiom] == 0;

    v16->_wantsSuggestions = 1;
    [(CNAutocompleteSearchController *)v16 setSuggestionsHeaderTitleOverride:0];
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v16->_shouldHideSuggestionsAfterFirstRecipient = [featureFlags isFeatureEnabled:30] ^ 1;

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v16->_hasSmallScreen = v25 <= 667.0;

    v26 = v16;
  }

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  keyboardWillShowNotificationObserver = [(CNAutocompleteSearchController *)self keyboardWillShowNotificationObserver];
  [defaultCenter removeObserver:keyboardWillShowNotificationObserver];

  keyboardWillHideNotificationObserver = [(CNAutocompleteSearchController *)self keyboardWillHideNotificationObserver];
  [defaultCenter removeObserver:keyboardWillHideNotificationObserver];

  uiContentSizeCategoryDidChangeNotificationObserver = [(CNAutocompleteSearchController *)self uiContentSizeCategoryDidChangeNotificationObserver];
  [defaultCenter removeObserver:uiContentSizeCategoryDidChangeNotificationObserver];

  v7.receiver = self;
  v7.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v7 dealloc];
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField setRecipients:recipientsCopy];
}

- (NSArray)recipients
{
  composeField = [(CNAutocompleteSearchController *)self composeField];
  recipients = [composeField recipients];

  return recipients;
}

- (void)setDelegate:(id)delegate
{
  if (delegate)
  {
    v4 = [[CNAutocompleteSearchControllerSafeDelegateWrapper alloc] initWithDelegate:delegate];
    [(CNAutocompleteSearchController *)self setDelegateWrapper:v4];
  }

  else
  {
    v5 = 0;
    [(CNAutocompleteSearchController *)self setDelegateWrapper:0];
  }

  objc_storeWeak(&self->_delegate, delegate);
}

- (void)setOtherRecipientAddresses:(id)addresses
{
  addressesCopy = addresses;
  if (([(NSArray *)self->_otherRecipientAddresses isEqual:?]& 1) == 0)
  {
    v4 = [objc_alloc(MEMORY[0x1E695CEC8]) initWithHandles:addressesCopy];
    expandedHandles = [v4 expandedHandles];
    suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
    [suggestionsController setOtherRecipientAddresses:expandedHandles];

    expandedOtherRecipientAddresses = self->_expandedOtherRecipientAddresses;
    self->_expandedOtherRecipientAddresses = expandedHandles;
  }
}

- (void)setPresentationOptions:(unint64_t)options forRecipient:(id)recipient
{
  recipientCopy = recipient;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField setAtomPresentationOptions:options forRecipient:recipientCopy];
}

- (void)setTintColor:(id)color forRecipient:(id)recipient
{
  recipientCopy = recipient;
  colorCopy = color;
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  [resultsController setTintColor:colorCopy forRecipient:recipientCopy];
}

- (void)setPreferredRecipient:(id)recipient forRecipient:(id)forRecipient
{
  forRecipientCopy = forRecipient;
  recipientCopy = recipient;
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  [resultsController setPreferredRecipient:recipientCopy forRecipient:forRecipientCopy];
}

- (void)setComposeFieldInfoText:(id)text
{
  textCopy = text;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField setComposeFieldInfoText:textCopy];
}

- (NSString)composeFieldInfoText
{
  composeField = [(CNAutocompleteSearchController *)self composeField];
  composeFieldInfoText = [composeField composeFieldInfoText];

  return composeFieldInfoText;
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  if (headerView != viewCopy)
  {
    v21 = viewCopy;
    superview = [(UIView *)headerView superview];
    view = [(CNAutocompleteSearchController *)self view];

    if (superview == view)
    {
      [(UIView *)self->_headerView removeFromSuperview];
    }

    objc_storeStrong(&self->_headerView, view);
    view2 = [(CNAutocompleteSearchController *)self view];
    [view2 addSubview:self->_headerView];

    suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
    [suggestionsController additionalContentInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(UIView *)v21 frame];
    v18 = v17;
    suggestionsController2 = [(CNAutocompleteSearchController *)self suggestionsController];
    [suggestionsController2 setAdditionalContentInsets:{v18, v12, v14, v16}];

    [(CNAutocompleteSearchController *)self latestKeyboardFrame];
    [(CNAutocompleteSearchController *)self adjustInsetsForKeyboardFrame:?];
    view3 = [(CNAutocompleteSearchController *)self view];
    [view3 setNeedsLayout];

    headerView = [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
    viewCopy = v21;
  }

  MEMORY[0x1EEE66BB8](headerView, viewCopy);
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  if (footerView != viewCopy)
  {
    v21 = viewCopy;
    superview = [(UIView *)footerView superview];
    view = [(CNAutocompleteSearchController *)self view];

    if (superview == view)
    {
      [(UIView *)self->_footerView removeFromSuperview];
    }

    objc_storeStrong(&self->_footerView, view);
    view2 = [(CNAutocompleteSearchController *)self view];
    [view2 addSubview:self->_footerView];

    suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
    [suggestionsController additionalContentInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(UIView *)v21 frame];
    v18 = v17;
    suggestionsController2 = [(CNAutocompleteSearchController *)self suggestionsController];
    [suggestionsController2 setAdditionalContentInsets:{v12, v14, v18, v16}];

    [(CNAutocompleteSearchController *)self latestKeyboardFrame];
    [(CNAutocompleteSearchController *)self adjustInsetsForKeyboardFrame:?];
    view3 = [(CNAutocompleteSearchController *)self view];
    [view3 setNeedsLayout];

    footerView = [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
    viewCopy = v21;
  }

  MEMORY[0x1EEE66BB8](footerView, viewCopy);
}

- (void)setExpandRecipientsInNamedGroups:(BOOL)groups
{
  groupsCopy = groups;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField setExpandRecipientsInNamedGroups:groupsCopy];
}

- (BOOL)expandRecipientsInNamedGroups
{
  composeField = [(CNAutocompleteSearchController *)self composeField];
  expandRecipientsInNamedGroups = [composeField expandRecipientsInNamedGroups];

  return expandRecipientsInNamedGroups;
}

- (void)setWantsAddButton:(BOOL)button
{
  buttonCopy = button;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField setShowsAddButtonWhenExpanded:buttonCopy];
}

- (BOOL)wantsAddButton
{
  composeField = [(CNAutocompleteSearchController *)self composeField];
  showsAddButtonWhenExpanded = [composeField showsAddButtonWhenExpanded];

  return showsAddButtonWhenExpanded;
}

- (void)setWantsSuggestions:(BOOL)suggestions
{
  if (self->_wantsSuggestions != suggestions)
  {
    self->_wantsSuggestions = suggestions;
    if ([(CNAutocompleteSearchController *)self suggestionsAllowed])
    {
      if (suggestions)
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
  composeField = [(CNAutocompleteSearchController *)self composeField];
  becomeFirstResponder = [composeField becomeFirstResponder];

  return becomeFirstResponder;
}

- (void)prepareForReuse
{
  [(CNAutocompleteSearchController *)self setRecipients:MEMORY[0x1E695E0F0]];
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField clearText];

  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  [(CNAutocompleteSearchController *)self setLatestKeyboardFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  [(CNAutocompleteSearchController *)self hideResultsController];
  [(CNAutocompleteSearchController *)self setHeaderView:0];
  [(CNAutocompleteSearchController *)self setFooterView:0];
  [(CNAutocompleteSearchController *)self setLatestKeyboardFrame:v4, v5, v6, v7];
  suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
  [suggestionsController prepareForReuse];

  [(CNAutocompleteSearchController *)self latestKeyboardFrame];
  [(CNAutocompleteSearchController *)self adjustInsetsForKeyboardFrame:?];
  currentTaskID = [(CNAutocompleteSearchController *)self currentTaskID];

  if (currentTaskID)
  {
    searchManager = [(CNAutocompleteSearchController *)self searchManager];
    currentTaskID2 = [(CNAutocompleteSearchController *)self currentTaskID];
    [searchManager cancelTaskWithID:currentTaskID2];

    [(CNAutocompleteSearchController *)self setCurrentTaskID:0];
  }
}

- (void)setSuggestionsHeaderTitleOverride:(id)override
{
  if (override)
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
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(CNAutocompleteSearchController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(CNAutocompleteSearchController *)self view];
  [view2 safeAreaInsets];
  v7 = v6;
  view3 = [(CNAutocompleteSearchController *)self view];
  [view3 bounds];
  v10 = v9;
  +[(CNComposeHeaderView *)CNComposeRecipientTextView];
  v12 = v11;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField setFrame:{0.0, v7, v10, v12}];

  v14 = objc_alloc(MEMORY[0x1E69DCEF8]);
  composeField2 = [(CNAutocompleteSearchController *)self composeField];
  [composeField2 frame];
  v16 = [v14 initWithFrame:?];
  [(CNAutocompleteSearchController *)self setComposeFieldScrollView:v16];

  composeFieldScrollView = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [composeFieldScrollView setAutoresizingMask:2];

  composeFieldScrollView2 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [composeFieldScrollView2 setShowsHorizontalScrollIndicator:0];

  composeFieldScrollView3 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [composeFieldScrollView3 setScrollsToTop:0];

  composeFieldScrollView4 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [composeFieldScrollView4 setBounces:0];

  composeFieldScrollView5 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [composeFieldScrollView5 setAutoresizesSubviews:0];

  composeFieldScrollView6 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  composeField3 = [(CNAutocompleteSearchController *)self composeField];
  [composeFieldScrollView6 addSubview:composeField3];

  v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CNAutocompleteSearchController *)self setComposeFieldContainerView:v24];

  composeField4 = [(CNAutocompleteSearchController *)self composeField];
  [composeField4 frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  composeFieldContainerView = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [composeFieldContainerView setFrame:{v27, v29, v31, v33}];

  composeFieldContainerView2 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [composeFieldContainerView2 setAutoresizingMask:2];

  composeFieldContainerView3 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  composeFieldScrollView7 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [composeFieldContainerView3 addSubview:composeFieldScrollView7];

  view4 = [(CNAutocompleteSearchController *)self view];
  composeFieldContainerView4 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [view4 addSubview:composeFieldContainerView4];

  v40 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"TO" value:&stru_1F3002C60 table:@"Localized"];
  composeField5 = [(CNAutocompleteSearchController *)self composeField];
  [composeField5 setLabel:v41];

  composeField6 = [(CNAutocompleteSearchController *)self composeField];
  [composeField6 setAutoresizingMask:2];

  composeField7 = [(CNAutocompleteSearchController *)self composeField];
  [composeField7 frame];
  MaxY = CGRectGetMaxY(v107);
  view5 = [(CNAutocompleteSearchController *)self view];
  [view5 bounds];
  v48 = v47;
  view6 = [(CNAutocompleteSearchController *)self view];
  [view6 bounds];
  v51 = v50;
  composeField8 = [(CNAutocompleteSearchController *)self composeField];
  [composeField8 frame];
  v53 = v51 - CGRectGetMaxY(v108);
  suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
  view7 = [suggestionsController view];
  [view7 setFrame:{0.0, MaxY, v48, v53}];

  suggestionsController2 = [(CNAutocompleteSearchController *)self suggestionsController];
  view8 = [suggestionsController2 view];
  [view8 setAutoresizingMask:2];

  suggestionsController3 = [(CNAutocompleteSearchController *)self suggestionsController];
  [suggestionsController3 willMoveToParentViewController:self];

  view9 = [(CNAutocompleteSearchController *)self view];
  suggestionsController4 = [(CNAutocompleteSearchController *)self suggestionsController];
  view10 = [suggestionsController4 view];
  [view9 addSubview:view10];

  suggestionsController5 = [(CNAutocompleteSearchController *)self suggestionsController];
  [(CNAutocompleteSearchController *)self addChildViewController:suggestionsController5];

  [(CNAutocompleteSearchController *)self showSuggestionsController];
  composeField9 = [(CNAutocompleteSearchController *)self composeField];
  [composeField9 frame];
  v64 = CGRectGetMaxY(v109) + 6.0;
  view11 = [(CNAutocompleteSearchController *)self view];
  [view11 bounds];
  v67 = v66 + -24.0;
  view12 = [(CNAutocompleteSearchController *)self view];
  [view12 bounds];
  v70 = v69;
  composeField10 = [(CNAutocompleteSearchController *)self composeField];
  [composeField10 frame];
  v72 = CGRectGetMaxY(v110);
  view13 = [(CNAutocompleteSearchController *)self view];
  [view13 safeAreaInsets];
  v75 = v70 - (v72 + v74);
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  view14 = [resultsController view];
  [view14 setFrame:{12.0, v64, v67, v75}];

  resultsController2 = [(CNAutocompleteSearchController *)self resultsController];
  view15 = [resultsController2 view];
  [view15 setAutoresizingMask:2];

  resultsController3 = [(CNAutocompleteSearchController *)self resultsController];
  view16 = [resultsController3 view];
  [view16 setHidden:1];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  resultsController4 = [(CNAutocompleteSearchController *)self resultsController];
  view17 = [resultsController4 view];
  [view17 setBackgroundColor:clearColor];

  view18 = [(CNAutocompleteSearchController *)self view];
  resultsController5 = [(CNAutocompleteSearchController *)self resultsController];
  view19 = [resultsController5 view];
  [view18 addSubview:view19];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  objc_initWeak(&location, self);
  v89 = *MEMORY[0x1E69DE080];
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __45__CNAutocompleteSearchController_viewDidLoad__block_invoke;
  v103[3] = &unk_1E7CD1EA8;
  objc_copyWeak(&v104, &location);
  v90 = [defaultCenter addObserverForName:v89 object:0 queue:0 usingBlock:v103];
  [(CNAutocompleteSearchController *)self setKeyboardWillShowNotificationObserver:v90];

  v91 = *MEMORY[0x1E69DE078];
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __45__CNAutocompleteSearchController_viewDidLoad__block_invoke_2;
  v101[3] = &unk_1E7CD1EA8;
  objc_copyWeak(&v102, &location);
  v92 = [defaultCenter addObserverForName:v91 object:0 queue:0 usingBlock:v101];
  [(CNAutocompleteSearchController *)self setKeyboardWillHideNotificationObserver:v92];

  v93 = *MEMORY[0x1E69DDC48];
  v96 = MEMORY[0x1E69E9820];
  v97 = 3221225472;
  v98 = __45__CNAutocompleteSearchController_viewDidLoad__block_invoke_3;
  v99 = &unk_1E7CD1EA8;
  objc_copyWeak(&v100, &location);
  v94 = [defaultCenter addObserverForName:v93 object:0 queue:0 usingBlock:&v96];
  [(CNAutocompleteSearchController *)self setUiContentSizeCategoryDidChangeNotificationObserver:v94, v96, v97, v98, v99];

  composeField11 = [(CNAutocompleteSearchController *)self composeField];
  [composeField11 becomeFirstResponder];

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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForViewWillAppear];
  v5.receiver = self;
  v5.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForViewWillDisappear];
  v5.receiver = self;
  v5.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v5 viewWillDisappear:disappearCopy];
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
          view = [(CNAutocompleteSearchController *)self view];
          window = [view window];
        }

        else
        {
          window = 0;
        }

        screen = [window screen];
        if (screen)
        {
          [window bounds];
          v8 = v7;
          [screen bounds];
          if (v8 != v9)
          {
            v10 = v9;
            [(CNAutocompleteSearchController *)self setFinalWindowAttached:1];
            v11 = v10 - v8;
            traitCollection = [(CNAutocompleteSearchController *)self traitCollection];
            horizontalSizeClass = [traitCollection horizontalSizeClass];

            if (horizontalSizeClass == 2)
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
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField frame];
  v5 = v4;

  view = [(CNAutocompleteSearchController *)self view];
  [view bounds];
  v8 = v7 + -30.0;
  composeField2 = [(CNAutocompleteSearchController *)self composeField];
  [composeField2 setFrame:{15.0, 0.0, v8, v5}];

  view2 = [(CNAutocompleteSearchController *)self view];
  [view2 safeAreaInsets];
  v12 = v11;
  view3 = [(CNAutocompleteSearchController *)self view];
  [view3 bounds];
  v15 = v14;
  composeFieldScrollView = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [composeFieldScrollView frame];
  v18 = v17;
  composeFieldContainerView = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [composeFieldContainerView setFrame:{0.0, v12, v15, v18}];

  composeFieldContainerView2 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [composeFieldContainerView2 frame];
  MaxY = CGRectGetMaxY(v87);
  view4 = [(CNAutocompleteSearchController *)self view];
  [view4 bounds];
  v24 = v23;
  view5 = [(CNAutocompleteSearchController *)self view];
  [view5 bounds];
  v27 = v26;
  composeFieldContainerView3 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [composeFieldContainerView3 frame];
  v29 = v27 - CGRectGetMaxY(v88);
  suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
  view6 = [suggestionsController view];
  [view6 setFrame:{0.0, MaxY, v24, v29}];

  [(CNAutocompleteSearchController *)self updateResultsControllerFrame];
  headerView = [(CNAutocompleteSearchController *)self headerView];

  if (headerView)
  {
    headerView2 = [(CNAutocompleteSearchController *)self headerView];
    [headerView2 frame];
    v35 = v34;
    v37 = v36;

    view7 = [(CNAutocompleteSearchController *)self view];
    [view7 bounds];
    v40 = v39;

    headerView3 = [(CNAutocompleteSearchController *)self headerView];
    [headerView3 setFrame:{0.0, v35, v40, v37}];

    suggestionsController2 = [(CNAutocompleteSearchController *)self suggestionsController];
    useAccessibleLayout = [suggestionsController2 useAccessibleLayout];

    if (useAccessibleLayout)
    {
      suggestionsController3 = [(CNAutocompleteSearchController *)self suggestionsController];
      view8 = [suggestionsController3 view];
      [view8 frame];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      headerView4 = [(CNAutocompleteSearchController *)self headerView];
      [headerView4 bounds];
      v56 = v49 + v55;

      suggestionsController4 = [(CNAutocompleteSearchController *)self suggestionsController];
      view9 = [suggestionsController4 view];
      [view9 setFrame:{v47, v56, v51, v53}];
    }
  }

  footerView = [(CNAutocompleteSearchController *)self footerView];

  if (footerView)
  {
    footerView2 = [(CNAutocompleteSearchController *)self footerView];
    [footerView2 frame];
    v62 = v61;
    v64 = v63;

    view10 = [(CNAutocompleteSearchController *)self view];
    [view10 bounds];
    v67 = v66;

    footerView3 = [(CNAutocompleteSearchController *)self footerView];
    [footerView3 setFrame:{0.0, v62, v67, v64}];

    [(CNAutocompleteSearchController *)self latestKeyboardFrame];
    [(CNAutocompleteSearchController *)self updateFooterPositionWithKeyboardFrame:?];
    suggestionsController5 = [(CNAutocompleteSearchController *)self suggestionsController];
    useAccessibleLayout2 = [suggestionsController5 useAccessibleLayout];

    if (useAccessibleLayout2)
    {
      suggestionsController6 = [(CNAutocompleteSearchController *)self suggestionsController];
      view11 = [suggestionsController6 view];
      [view11 frame];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;

      footerView4 = [(CNAutocompleteSearchController *)self footerView];
      [footerView4 bounds];
      v83 = v80 - v82;

      suggestionsController7 = [(CNAutocompleteSearchController *)self suggestionsController];
      view12 = [suggestionsController7 view];
      [view12 setFrame:{v74, v76, v78, v83}];
    }
  }

  v86.receiver = self;
  v86.super_class = CNAutocompleteSearchController;
  [(CNAutocompleteSearchController *)&v86 viewDidLayoutSubviews];
}

- (void)updateResultsControllerFrame
{
  composeFieldContainerView = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [composeFieldContainerView frame];
  v3 = CGRectGetMaxY(v22) + 6.0;
  view = [(CNAutocompleteSearchController *)self view];
  [view bounds];
  v6 = v5 + -24.0;
  view2 = [(CNAutocompleteSearchController *)self view];
  [view2 bounds];
  v9 = v8;
  composeFieldContainerView2 = [(CNAutocompleteSearchController *)self composeFieldContainerView];
  [composeFieldContainerView2 frame];
  MaxY = CGRectGetMaxY(v23);
  view3 = [(CNAutocompleteSearchController *)self view];
  [view3 safeAreaInsets];
  v14 = MaxY + v13;
  view4 = [(CNAutocompleteSearchController *)self view];
  [view4 safeAreaInsets];
  v17 = v9 - (v14 + v16);
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  view5 = [resultsController view];
  [view5 setFrame:{12.0, v3, v6, v17}];
}

- (BOOL)hasSpaceToDisplaySuggestions
{
  if (![(CNAutocompleteSearchController *)self hasSmallScreen])
  {
    return 1;
  }

  suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
  useAccessibleLayout = [suggestionsController useAccessibleLayout];

  return useAccessibleLayout ^ 1;
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  [(CNAutocompleteSearchController *)self setDidAddRecipientFromTypedQuery:1];
  [(CNAutocompleteSearchController *)self _addRecipient:recipientCopy];
  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForTypedRecipient:recipientCopy];
}

- (void)_addRecipient:(id)recipient
{
  recipientCopy = recipient;
  recipients = [(CNAutocompleteSearchController *)self recipients];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__CNAutocompleteSearchController__addRecipient___block_invoke;
  v9[3] = &unk_1E7CD1BE0;
  v6 = recipientCopy;
  v10 = v6;
  v7 = [recipients _cn_any:v9];

  if ((v7 & 1) == 0)
  {
    composeField = [(CNAutocompleteSearchController *)self composeField];
    [composeField addRecipient:v6];

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

- (void)disambiguateRecipient:(id)recipient
{
  v7[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  v7[0] = recipientCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [resultsController updateRecipients:v6 disambiguatingRecipient:recipientCopy];

  [(CNAutocompleteSearchController *)self unhideResultsController];
}

- (void)unhideResultsController
{
  [(CNAutocompleteSearchController *)self setShouldRestoreFirstResponderToComposeField:0];
  [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  view = [resultsController view];
  [delegateWrapper searchController:self willShowResultsView:view];

  resultsController2 = [(CNAutocompleteSearchController *)self resultsController];
  view2 = [resultsController2 view];
  [view2 setHidden:0];

  [(CNAutocompleteSearchController *)self hideSuggestionsController];
  delegateWrapper2 = [(CNAutocompleteSearchController *)self delegateWrapper];
  resultsController3 = [(CNAutocompleteSearchController *)self resultsController];
  view3 = [resultsController3 view];
  [delegateWrapper2 searchController:self didShowResultsView:view3];
}

- (void)hideResultsController
{
  [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  view = [resultsController view];
  [delegateWrapper searchController:self willHideResultsView:view];

  resultsController2 = [(CNAutocompleteSearchController *)self resultsController];
  view2 = [resultsController2 view];
  [view2 setHidden:1];

  delegateWrapper2 = [(CNAutocompleteSearchController *)self delegateWrapper];
  resultsController3 = [(CNAutocompleteSearchController *)self resultsController];
  view3 = [resultsController3 view];
  [delegateWrapper2 searchController:self didHideResultsView:view3];
}

- (void)showSuggestionsController
{
  v3 = 1;
  [(CNAutocompleteSearchController *)self setSuggestionsAllowed:1];
  if ([(CNAutocompleteSearchController *)self wantsSuggestions])
  {
    v3 = [(CNAutocompleteSearchController *)self hasSpaceToDisplaySuggestions]^ 1;
  }

  suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
  view = [suggestionsController view];
  [view setHidden:v3];
}

- (void)hideSuggestionsController
{
  [(CNAutocompleteSearchController *)self setSuggestionsAllowed:0];
  suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
  view = [suggestionsController view];
  [view setHidden:1];
}

- (void)invalidateRecipientTintColors
{
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  [resultsController invalidateAddressTintColors];

  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField invalidateAtomPresentationOptions];
}

- (void)invalidatePreferredRecipients
{
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  [resultsController invalidatePreferredRecipients];
}

- (void)adjustInsetsForKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  tableView = [resultsController tableView];

  window = [tableView window];
  v44 = height;
  [window convertRect:0 fromWindow:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [tableView convertRect:0 fromView:{v11, v13, v15, v17}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [tableView frame];
  v49.origin.x = v19;
  v49.origin.y = v21;
  v49.size.width = v23;
  v49.size.height = v25;
  v48 = CGRectIntersection(v47, v49);
  v26 = CGRectGetHeight(v48);
  footerView = [(CNAutocompleteSearchController *)self footerView];
  if (footerView)
  {
    footerView2 = [(CNAutocompleteSearchController *)self footerView];
    [footerView2 bounds];
    v30 = v29;
  }

  else
  {
    v30 = 0.0;
  }

  resultsController2 = [(CNAutocompleteSearchController *)self resultsController];
  tableView2 = [resultsController2 tableView];
  [tableView2 contentInset];
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = v26 + v30;
  resultsController3 = [(CNAutocompleteSearchController *)self resultsController];
  tableView3 = [resultsController3 tableView];
  [tableView3 setContentInset:{v34, v36, v39, v38}];

  resultsController4 = [(CNAutocompleteSearchController *)self resultsController];
  tableView4 = [resultsController4 tableView];
  [tableView4 setScrollIndicatorInsets:{v34, v36, v39, v38}];

  [(CNAutocompleteSearchController *)self updateFooterPositionWithKeyboardFrame:x, y, width, v44];
}

- (void)updateFooterPositionWithKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(CNAutocompleteSearchController *)self isViewLoaded])
  {
    view = [(CNAutocompleteSearchController *)self view];
    window = [view window];

    if (window)
    {
      view2 = [(CNAutocompleteSearchController *)self view];
      window2 = [view2 window];
      coordinateSpace = [window2 coordinateSpace];
      window3 = [view2 window];
      screen = [window3 screen];
      coordinateSpace2 = [screen coordinateSpace];
      [coordinateSpace convertRect:coordinateSpace2 fromCoordinateSpace:{x, y, width, height}];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      [view2 convertRect:0 fromView:{v16, v18, v20, v22}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [view2 frame];
      v35.origin.x = v24;
      v35.origin.y = v26;
      v35.size.width = v28;
      v35.size.height = v30;
      v34 = CGRectIntersection(v33, v35);
      [(CNAutocompleteSearchController *)self updateHeaderFooterPositionWithKeyboardIntersectionRect:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
    }
  }
}

- (void)updateHeaderFooterPositionWithKeyboardIntersectionRect:(CGRect)rect
{
  height = rect.size.height;
  v5 = [(CNAutocompleteSearchController *)self view:rect.origin.x];
  superview = [v5 superview];
  [superview safeAreaInsets];
  v8 = v7;
  v10 = v9;

  headerView = [(CNAutocompleteSearchController *)self headerView];

  if (headerView)
  {
    headerView2 = [(CNAutocompleteSearchController *)self headerView];
    [headerView2 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    composeFieldContainerView = [(CNAutocompleteSearchController *)self composeFieldContainerView];
    [composeFieldContainerView frame];
    v20 = v8 + CGRectGetMaxY(v35);

    headerView3 = [(CNAutocompleteSearchController *)self headerView];
    [headerView3 setFrame:{v14, v20, v16, v18}];
  }

  footerView = [(CNAutocompleteSearchController *)self footerView];

  if (footerView)
  {
    footerView2 = [(CNAutocompleteSearchController *)self footerView];
    [footerView2 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;

    view = [(CNAutocompleteSearchController *)self view];
    [view bounds];
    v31 = CGRectGetMaxY(v36) - (height + v29);

    if (height == 0.0)
    {
      v32 = v31 - v10;
    }

    else
    {
      v32 = v31;
    }

    footerView3 = [(CNAutocompleteSearchController *)self footerView];
    [footerView3 setFrame:{v25, v32, v27, v29}];
  }
}

- (void)updateHeaderFooterVisibility
{
  composeField = [(CNAutocompleteSearchController *)self composeField];
  text = [composeField text];
  if (text && (-[CNAutocompleteSearchController composeField](self, "composeField"), v2 = objc_claimAutoreleasedReturnValue(), [v2 text], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
  {
    inDisambiguationMode = 1;
  }

  else
  {
    resultsController = [(CNAutocompleteSearchController *)self resultsController];
    inDisambiguationMode = [resultsController inDisambiguationMode];

    if (!text)
    {
      goto LABEL_6;
    }
  }

LABEL_6:
  headerView = [(CNAutocompleteSearchController *)self headerView];

  if (headerView)
  {
    headerView2 = [(CNAutocompleteSearchController *)self headerView];
    [headerView2 setHidden:inDisambiguationMode];
  }

  footerView = [(CNAutocompleteSearchController *)self footerView];

  if (footerView)
  {
    footerView2 = [(CNAutocompleteSearchController *)self footerView];
    [footerView2 setHidden:inDisambiguationMode];
  }
}

- (void)prewarmSuggestedRecipientsWithCompletionBlock:(id)block
{
  blockCopy = block;
  suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
  [suggestionsController fetchSuggestedRecipientsWithCompletionBlock:blockCopy];
}

- (id)atomViewForRecipient:(id)recipient
{
  composeField = self->_composeField;
  if (composeField)
  {
    composeField = [composeField atomViewForRecipient:recipient];
    v3 = vars8;
  }

  return composeField;
}

- (void)consumeResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  currentTaskID = [(CNAutocompleteSearchController *)self currentTaskID];
  v8 = [dCopy isEqualToNumber:currentTaskID];

  if (v8)
  {
    autocompleteResults = [(CNAutocompleteSearchController *)self autocompleteResults];

    if (autocompleteResults)
    {
      autocompleteResults2 = [(CNAutocompleteSearchController *)self autocompleteResults];
      v11 = [autocompleteResults2 arrayByAddingObjectsFromArray:resultsCopy];
      [(CNAutocompleteSearchController *)self setAutocompleteResults:v11];
    }

    else
    {
      [(CNAutocompleteSearchController *)self setAutocompleteResults:resultsCopy];
    }

    autocompleteResults3 = [(CNAutocompleteSearchController *)self autocompleteResults];
    resultsController = [(CNAutocompleteSearchController *)self resultsController];
    [resultsController setRecipients:autocompleteResults3];

    [(CNAutocompleteSearchController *)self unhideResultsController];
  }
}

- (void)finishedTaskWithID:(id)d
{
  dCopy = d;
  currentTaskID = [(CNAutocompleteSearchController *)self currentTaskID];
  v5 = [dCopy isEqualToNumber:currentTaskID];

  if (v5)
  {
    autocompleteResults = [(CNAutocompleteSearchController *)self autocompleteResults];

    if (!autocompleteResults)
    {
      [(CNAutocompleteSearchController *)self consumeResults:MEMORY[0x1E695E0F0] taskID:dCopy];
    }

    [(CNAutocompleteSearchController *)self setCurrentTaskID:0];
  }
}

- (BOOL)getSupplementalGroupsForSearchQuery:(id)query completionHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__CNAutocompleteSearchController_getSupplementalGroupsForSearchQuery_completionHandler___block_invoke;
  v11[3] = &unk_1E7CD2628;
  v12 = handlerCopy;
  v9 = handlerCopy;
  LOBYTE(self) = [delegateWrapper searchController:self supplementalGroupsForSearchQuery:queryCopy completionHandler:v11];

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

- (BOOL)autocompleteResultsController:(id)controller willOverrideImageDataForRecipient:(id)recipient completion:(id)completion
{
  completionCopy = completion;
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  LOBYTE(self) = [delegateWrapper searchController:self imageDataForRecipient:recipientCopy imageUpdateBlock:completionCopy];

  return self;
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self textViewWillChangeSize:{width, height}];

  composeField2 = [(CNAutocompleteSearchController *)self composeField];
  [composeField2 setFrame:{v9, v11, v13, height}];

  composeFieldScrollView = [(CNAutocompleteSearchController *)self composeFieldScrollView];
  [composeFieldScrollView contentSize];
  v18 = v17;
  v20 = v19;

  if (v13 != v18 || height != v20)
  {
    composeFieldScrollView2 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
    [composeFieldScrollView2 setContentSize:{v13, height}];

    view = [(CNAutocompleteSearchController *)self view];
    [view bounds];
    [(CNAutocompleteSearchController *)self latestKeyboardFrame];
    footerView = [(CNAutocompleteSearchController *)self footerView];
    [footerView bounds];

    +[(CNComposeHeaderView *)CNComposeRecipientTextView];
    if (height <= 150.0)
    {
      v24 = height;
    }

    else
    {
      v24 = 150.0;
    }

    composeFieldContainerView = [(CNAutocompleteSearchController *)self composeFieldContainerView];
    [composeFieldContainerView setFrame:{v9, v11, v13, v24}];

    view2 = [(CNAutocompleteSearchController *)self view];
    [view2 safeAreaInsets];
    v28 = v27;
    view3 = [(CNAutocompleteSearchController *)self view];
    [view3 bounds];
    v31 = v30;

    composeFieldScrollView3 = [(CNAutocompleteSearchController *)self composeFieldScrollView];
    [composeFieldScrollView3 setFrame:{0.0, v28, v31, v24}];
  }

  view4 = [(CNAutocompleteSearchController *)self view];
  [view4 setNeedsLayout];

  delegateWrapper2 = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper2 searchController:self textViewDidChangeSize:{width, height}];
}

- (void)scrollToBottomOfRecipientView
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  mainThreadScheduler = [schedulerProvider mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CNAutocompleteSearchController_scrollToBottomOfRecipientView__block_invoke;
  v7[3] = &unk_1E7CD1F90;
  v7[4] = self;
  v6 = [mainThreadScheduler afterDelay:v7 performBlock:0.0];
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

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  v36 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  changeCopy = change;
  [(CNAutocompleteSearchController *)self cancelAutocompleteSearch];
  v8 = (*(*MEMORY[0x1E6996568] + 16))();
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self textViewTextDidChange:changeCopy];

  recipients = [viewCopy recipients];
  v11 = [recipients count];

  if (v11)
  {
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    resultsController = [(CNAutocompleteSearchController *)self resultsController];
    [resultsController setRecipients:0];

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
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  expandedOtherRecipientAddresses = [(CNAutocompleteSearchController *)self expandedOtherRecipientAddresses];
  v15 = [expandedOtherRecipientAddresses countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(expandedOtherRecipientAddresses);
        }

        [array addObject:*(*(&v31 + 1) + 8 * i)];
      }

      v16 = [expandedOtherRecipientAddresses countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  v30 = viewCopy;
  uncommentedAddresses = [viewCopy uncommentedAddresses];
  [array addObjectsFromArray:uncommentedAddresses];

  v20 = objc_alloc_init(MEMORY[0x1E6996330]);
  v21 = [array copy];
  [v20 setOtherAddressesAlreadyChosen:v21];

  searchManager = [(CNAutocompleteSearchController *)self searchManager];
  v23 = [searchManager searchForText:changeCopy withAutocompleteFetchContext:v20 consumer:self];
  [(CNAutocompleteSearchController *)self setCurrentTaskID:v23];

  composeField = [(CNAutocompleteSearchController *)self composeField];
  textView = [composeField textView];
  selectedRange = [textView selectedRange];
  composeField2 = [(CNAutocompleteSearchController *)self composeField];
  recipients2 = [composeField2 recipients];
  v29 = [recipients2 count];

  if (selectedRange > v29)
  {
    [(CNAutocompleteSearchController *)self scrollToBottomOfRecipientView];
  }

  viewCopy = v30;
LABEL_18:
}

- (void)cancelAutocompleteSearch
{
  currentTaskID = [(CNAutocompleteSearchController *)self currentTaskID];

  if (currentTaskID)
  {
    searchManager = [(CNAutocompleteSearchController *)self searchManager];
    currentTaskID2 = [(CNAutocompleteSearchController *)self currentTaskID];
    [searchManager cancelTaskWithID:currentTaskID2];

    [(CNAutocompleteSearchController *)self setCurrentTaskID:0];
  }

  [(CNAutocompleteSearchController *)self setAutocompleteResults:0];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  addressCopy = address;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  v8 = [delegateWrapper searchController:self composeRecipientForAddress:addressCopy];

  if (v8)
  {
    [(CNAutocompleteSearchController *)self cancelAutocompleteSearch];
    composeField = [(CNAutocompleteSearchController *)self composeField];
    [composeField clearText];

    [(CNAutocompleteSearchController *)self addRecipient:v8];
    [(CNAutocompleteSearchController *)self hideResultsController];
  }
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  viewCopy = view;
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self didAddRecipient:recipientCopy];

  if (-[CNAutocompleteSearchController shouldHideSuggestionsAfterFirstRecipient](self, "shouldHideSuggestionsAfterFirstRecipient") && ([viewCopy recipients], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9) || -[CNAutocompleteSearchController didAddRecipientFromTypedQuery](self, "didAddRecipientFromTypedQuery"))
  {
    [(CNAutocompleteSearchController *)self hideSuggestionsController];
  }

  else
  {
    [(CNAutocompleteSearchController *)self showSuggestionsController];
    suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
    [suggestionsController invalidateSelectedRecipients];
  }
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  viewCopy = view;
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self didRemoveRecipient:recipientCopy];

  if ([(CNAutocompleteSearchController *)self shouldHideSuggestionsAfterFirstRecipient])
  {
    recipients = [viewCopy recipients];
    v9 = [recipients count];

    if (!v9)
    {
      suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
      [suggestionsController setRecipients:0];

      [(CNAutocompleteSearchController *)self showSuggestionsController];
    }
  }

  suggestionsController2 = [(CNAutocompleteSearchController *)self suggestionsController];
  [suggestionsController2 invalidateSelectedRecipients];

  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForRemovedRecipient:recipientCopy];
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField clearText];

  autocompleteResults = [(CNAutocompleteSearchController *)self autocompleteResults];

  if (autocompleteResults)
  {
    [(CNAutocompleteSearchController *)self setAutocompleteResults:0];
    [(CNAutocompleteSearchController *)self hideResultsController];
    if (![(CNAutocompleteSearchController *)self shouldHideSuggestionsAfterFirstRecipient]|| ![(CNAutocompleteSearchController *)self didAddRecipientFromTypedQuery])
    {
      [(CNAutocompleteSearchController *)self showSuggestionsController];
    }
  }

  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  composeField2 = [(CNAutocompleteSearchController *)self composeField];
  addButton = [composeField2 addButton];
  [delegateWrapper didTapTextViewAccessoryButtonForSearchController:self anchoredToView:addButton];
}

- (void)composeRecipientView:(id)view showPersonCardForAtom:(id)atom
{
  atomCopy = atom;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField clearText];

  recipient = [atomCopy recipient];

  [(CNAutocompleteSearchController *)self disambiguateRecipient:recipient];
}

- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom
{
  atomCopy = atom;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField clearText];

  recipient = [atomCopy recipient];

  [(CNAutocompleteSearchController *)self disambiguateRecipient:recipient];
}

- (id)composeRecipientView:(id)view contextMenuConfigurationForAtom:(id)atom
{
  atomCopy = atom;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  recipient = [atomCopy recipient];

  v8 = [delegateWrapper searchController:self contextMenuConfigurationForRecipient:recipient];

  return v8;
}

- (void)composeRecipientView:(id)view showPersonCardForRecipient:(id)recipient
{
  recipientCopy = recipient;
  [(CNAutocompleteSearchController *)self setDidPresentContactCard:1];
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self didTapTableAccessoryForRecipient:recipientCopy];
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  v7 = [delegateWrapper searchController:self composeRecipientForAddress:addressCopy];

  return v7;
}

- (unint64_t)presentationOptionsForRecipient:(id)recipient
{
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  v6 = [delegateWrapper searchController:self presentationOptionsForRecipient:recipientCopy];

  return v6;
}

- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion
{
  completionCopy = completion;
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  v10 = [delegateWrapper searchController:self tintColorForRecipient:recipientCopy];

  completionCopy[2](completionCopy, v10);
}

- (id)autocompleteResultsController:(id)controller preferredRecipientForRecipient:(id)recipient
{
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  v7 = [delegateWrapper searchController:self preferredRecipientForRecipient:recipientCopy];

  return v7;
}

- (BOOL)autocompleteResultsController:(id)controller willOverrideImageDataForRecipient:(id)recipient imageUpdateBlock:(id)block
{
  blockCopy = block;
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  LOBYTE(self) = [delegateWrapper searchController:self imageDataForRecipient:recipientCopy imageUpdateBlock:blockCopy];

  return self;
}

- (void)suggestionsController:(id)controller didSelectRecipient:(id)recipient
{
  recipientCopy = recipient;
  controllerCopy = controller;
  [(CNAutocompleteSearchController *)self _addRecipient:recipientCopy];
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self didAddRecipientBySuggestionsController:recipientCopy];

  [(CNAutocompleteSearchController *)self providePeopleSuggesterFeedbackForSuggestedRecipient:recipientCopy];
  LODWORD(recipientCopy) = [controllerCopy useAccessibleLayout];

  if (recipientCopy)
  {

    [(CNAutocompleteSearchController *)self hideSoftwareKeyboard];
  }
}

- (void)suggestionsController:(id)controller didDeselectRecipient:(id)recipient
{
  recipientCopy = recipient;
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField removeRecipient:recipientCopy];
}

- (void)hideSoftwareKeyboard
{
  if (([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] & 1) == 0)
  {
    suggestionsController = [(CNAutocompleteSearchController *)self suggestionsController];
    useAccessibleLayout = [suggestionsController useAccessibleLayout];

    if (useAccessibleLayout)
    {
      composeField = [(CNAutocompleteSearchController *)self composeField];
      [composeField setUsingActiveAppearance:0 animated:0];
    }

    [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:1];
    composeField2 = [(CNAutocompleteSearchController *)self composeField];
    [composeField2 resignFirstResponder];

    [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:0];
  }
}

- (id)selectedRecipientsForSuggestionsController:(id)controller
{
  composeField = [(CNAutocompleteSearchController *)self composeField];
  recipients = [composeField recipients];

  return recipients;
}

- (void)suggestionsControllerWillBeginScroll:(id)scroll
{
  [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:1];
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField resignFirstResponder];

  [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:0];
}

- (BOOL)suggestionsController:(id)controller imageDataForRecipient:(id)recipient imageUpdateBlock:(id)block
{
  blockCopy = block;
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  LOBYTE(self) = [delegateWrapper searchController:self imageDataForRecipient:recipientCopy imageUpdateBlock:blockCopy];

  return self;
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  recipientCopy = recipient;
  [(CNAutocompleteSearchController *)self cancelAutocompleteSearch];
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField clearText];

  [(CNAutocompleteSearchController *)self addRecipient:recipientCopy];
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self didAddRecipientByResultsController:recipientCopy];

  [(CNAutocompleteSearchController *)self hideResultsController];
  [(CNAutocompleteSearchController *)self updateHeaderFooterVisibility];
  if ([(CNAutocompleteSearchController *)self shouldRestoreFirstResponderToComposeField])
  {

    [(CNAutocompleteSearchController *)self becomeFirstResponder];
  }
}

- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient
{
  recipientCopy = recipient;
  [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:1];
  composeField = [(CNAutocompleteSearchController *)self composeField];
  [composeField resignFirstResponder];

  [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:0];
  [(CNAutocompleteSearchController *)self setDidPresentContactCard:1];
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self didTapTableAccessoryForRecipient:recipientCopy];
}

- (void)autocompleteResultsController:(id)controller didAskToRemoveRecipient:(id)recipient
{
  recipientCopy = recipient;
  searchManager = [(CNAutocompleteSearchController *)self searchManager];
  [searchManager removeRecipientResult:recipientCopy];
}

- (void)autocompleteResultsControllerWillBeginToScroll:(id)scroll
{
  composeField = [(CNAutocompleteSearchController *)self composeField];
  if ([composeField isFirstResponder])
  {
    isInHardwareKeyboardMode = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];

    if ((isInHardwareKeyboardMode & 1) == 0)
    {
      [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:1];
      composeField2 = [(CNAutocompleteSearchController *)self composeField];
      [composeField2 resignFirstResponder];

      [(CNAutocompleteSearchController *)self setShouldRestoreFirstResponderToComposeField:1];

      [(CNAutocompleteSearchController *)self setIgnoreDidFinishAddress:0];
    }
  }

  else
  {
  }
}

- (void)selectNextSearchResultForComposeRecipientView:(id)view
{
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  [resultsController selectNextSearchResult];
}

- (void)selectPreviousSearchResultForComposeRecipientView:(id)view
{
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  [resultsController selectPreviousSearchResult];
}

- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)view
{
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  confirmSelectedRecipient = [resultsController confirmSelectedRecipient];

  return confirmSelectedRecipient;
}

- (BOOL)composeRecipientViewShowingSearchResults:(id)results
{
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  view = [resultsController view];
  if ([view isHidden])
  {
    v6 = 0;
  }

  else
  {
    autocompleteResults = [(CNAutocompleteSearchController *)self autocompleteResults];
    v6 = [autocompleteResults count] != 0;
  }

  return v6;
}

- (BOOL)expandSelectedSearchResultForComposeRecipientView:(id)view
{
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  expandSelectedRecipient = [resultsController expandSelectedRecipient];

  return expandSelectedRecipient;
}

- (BOOL)collapseSelectedSearchResultForComposeRecipientView:(id)view
{
  resultsController = [(CNAutocompleteSearchController *)self resultsController];
  collapseSelectedRecipient = [resultsController collapseSelectedRecipient];

  return collapseSelectedRecipient;
}

- (void)autocompleteResultsController:(id)controller willDisplayRowForRecipient:(id)recipient
{
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self willDisplayRowForRecipient:recipientCopy];
}

- (void)autocompleteResultsController:(id)controller didEndDisplayingRowForRecipient:(id)recipient
{
  recipientCopy = recipient;
  delegateWrapper = [(CNAutocompleteSearchController *)self delegateWrapper];
  [delegateWrapper searchController:self didEndDisplayingRowForRecipient:recipientCopy];
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
  didPresentSomeViewController = [(CNAutocompleteSearchController *)self didPresentSomeViewController];
  v4 = MEMORY[0x1E6996350];
  if (didPresentSomeViewController)
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
  didPresentSomeViewController = [(CNAutocompleteSearchController *)self didPresentSomeViewController];
  v3 = MEMORY[0x1E6996350];
  if (didPresentSomeViewController)
  {

    [v3 userNavigatedAwayFromSession];
  }

  else
  {

    [v3 userTerminatedSession];
  }
}

- (void)providePeopleSuggesterFeedbackForSuggestedRecipient:(id)recipient
{
  autocompleteResult = [recipient autocompleteResult];
  psSuggestion = [autocompleteResult psSuggestion];

  v4 = psSuggestion;
  if (psSuggestion)
  {
    [MEMORY[0x1E6996350] userSelectedSuggestion:psSuggestion];
    v4 = psSuggestion;
  }
}

- (void)providePeopleSuggesterFeedbackForTypedRecipient:(id)recipient
{
  recipientCopy = recipient;
  didPresentContactPicker = [(CNAutocompleteSearchController *)self didPresentContactPicker];
  v6 = MEMORY[0x1E6996350];
  contact = [recipientCopy contact];

  if (didPresentContactPicker)
  {
    [v6 userSelectedFromContactPicker:contact];
  }

  else
  {
    [v6 userEnteredContact:contact];
  }
}

- (void)providePeopleSuggesterFeedbackForRemovedRecipient:(id)recipient
{
  v3 = MEMORY[0x1E6996350];
  contact = [recipient contact];
  [v3 userRemovedContact:contact];
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