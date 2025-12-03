@interface CKRecipientSelectionController
- (BOOL)_isToFieldPushedUp;
- (BOOL)_openStewieAppForEmergencyIfRequired;
- (BOOL)_openStewieAppForRoadsideIfRequired;
- (BOOL)_shouldDisableToField;
- (BOOL)_systemUnderLock;
- (BOOL)autocompleteResultsController:(id)controller willOverrideImageDataForRecipient:(id)recipient completion:(id)completion;
- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)view context:(unint64_t)context;
- (BOOL)collapseSelectedSearchResultForComposeRecipientView:(id)view;
- (BOOL)composeRecipientViewShowingSearchResults:(id)results;
- (BOOL)expandSelectedSearchResultForComposeRecipientView:(id)view;
- (BOOL)finishedComposingRecipients;
- (BOOL)hasEmailRecipientsInAddresses:(id)addresses;
- (BOOL)hasFailediMessageRecipients;
- (BOOL)hasIDSResultsForAllRecipients:(id)recipients;
- (BOOL)hasPendingiMessageRecipients;
- (BOOL)hasTimedOutRecipients;
- (BOOL)hasUnreachableEmergencyRecipient;
- (BOOL)isSearchResultsHidden;
- (BOOL)lastSentMessageWasNotDeliveredForConversation:(id)conversation;
- (BOOL)presentSearchResultsForComposeRecipientView:(id)view;
- (BOOL)shouldShowVerifiedIconForRecipient:(id)recipient;
- (BOOL)toFieldIsFirstResponder;
- (CGPoint)scrollSearchListControllerToTopContentOffset;
- (CKRecipientSelectionController)initWithConversation:(id)conversation;
- (CKRecipientSelectionControllerDelegate)delegate;
- (CNContactPickerViewController)contactPickerViewController;
- (CNContactStore)contactStore;
- (UIEdgeInsets)_additionalSearchResultsEdgeInsets;
- (UIEdgeInsets)_navigationBarInsets;
- (UIEdgeInsets)glassPlatterLayoutMargins;
- (UIEdgeInsets)layoutMarginsForComposeRecipientView:(id)view;
- (UIView)fromFieldContainerView;
- (char)_availibilityForRecipient:(id)recipient onService:(id)service;
- (char)_satelliteConnectedColorOverrideForRecipient:(id)recipient inConversation:(id)conversation;
- (char)serviceColorForRecipientAddresses:(id)addresses;
- (char)serviceTypeForRecipient:(id)recipient;
- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)rows;
- (double)_preferredDefaultToFieldHeight;
- (double)additionalCatalystTopInset;
- (double)collapsedHeight;
- (double)fieldHeightOffset;
- (double)glassPlatterCornerRadius;
- (double)preferredFieldContainerHeight;
- (double)preferredMacToolbarHeight;
- (double)selectionFieldsHeight;
- (id)_alternateAddressesForRecipient:(id)recipient;
- (id)_alternateiMessagableAddressesForRecipient:(id)recipient;
- (id)_canonicalRecipientAddresses;
- (id)_recipientCausingTooManyRecipientsError;
- (id)_serviceForRecipientPresentationOptions;
- (id)_toFieldCollapsedTextColor;
- (id)chatForIMHandle:(id)handle;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (id)composeRecipientView:(id)view composeRecipientForContact:(id)contact;
- (id)composeRecipientView:(id)view contextMenuConfigurationForAtom:(id)atom;
- (id)conversationForRecipients:(id)recipients;
- (id)expandedRecipientsForGroupRecipient:(id)recipient;
- (id)handleForRecipientNormalizedAddress:(id)address;
- (id)handlesForScreenTimePolicyCheck;
- (id)preferredColorTypeForExistingConversation:(id)conversation;
- (id)preferredRecipientForExistingConversationOfRecipients:(id)recipients;
- (id)preferredRecipientForNewContact:(id)contact;
- (id)preferredRecipientForPendingUnifiedContact:(id)contact;
- (id)preferredRecipientForRecipients:(id)recipients;
- (id)preferredRecipientForRecipients:(id)recipients forServiceType:(char)type;
- (id)recipientIsDuetSuggestion:(id)suggestion;
- (id)recipients;
- (int64_t)_userInterfaceStyleOverride;
- (int64_t)searchListController:(id)controller idStatusForIDSID:(id)d;
- (unint64_t)_atomPresentationOptionsForRecipient:(id)recipient;
- (void)_adjustToFieldPositionIfNecessary;
- (void)_adjustToFieldSeparatorInsetsIfNecessary;
- (void)_dismissPeoplePicker;
- (void)_handleAddressBookChangedNotification:(id)notification;
- (void)_handleAddressBookPartialChangedNotification:(id)notification;
- (void)_handleContactStoreBatchLoadCompleteNotification:(id)notification;
- (void)_handleConversationPreferredServiceDidChangeNotification:(id)notification;
- (void)_handleIDSResultsWhenSearchTableIsHidden:(id)hidden;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification;
- (void)_handleRecipientAvailabilityTimeout:(id)timeout;
- (void)_handleRecipientViewChanged:(id)changed;
- (void)_hideSearchField;
- (void)_presentBusinessChatNotSupportedError;
- (void)_refreshActionSheet;
- (void)_removeAvailabilityTimeoutTimerForRecipient:(id)recipient;
- (void)_removeRecent;
- (void)_resetSearchResultsInsets;
- (void)_showActionSheetForRecipient:(id)recipient animated:(BOOL)animated;
- (void)_showContactCardForRecipient:(id)recipient sourceView:(id)view;
- (void)_showDetailsForGroup:(id)group;
- (void)_showDetailsForRecipient:(id)recipient canDelete:(BOOL)delete;
- (void)_showOneTimeErrorAlertForAddedRecipient:(id)recipient service:(id)service withError:(int64_t)error;
- (void)_showSearchField;
- (void)_startAvailabilityTimeoutTimerForRecipient:(id)recipient;
- (void)_updateAddressBookProperties;
- (void)_updateContainerCornerRadiusIfNeeded;
- (void)_updateRecipientViewLayouts;
- (void)_updateSearchResultsTable;
- (void)_updateShowingSearch;
- (void)_updateToField;
- (void)_updateToFieldRecipientsData;
- (void)_updateYOriginSearchListController;
- (void)addRecipient:(id)recipient;
- (void)addRecipients:(id)recipients;
- (void)autocompleteGroupDetailViewController:(id)controller didAskToRemoveGroup:(id)group;
- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)bringComposeRecipientViewToFront;
- (void)colorTypeForRecipient:(id)recipient completion:(id)completion;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didSelectRecipients:(id)recipients;
- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom;
- (void)composeRecipientView:(id)view showPersonCardForAtom:(id)atom;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewEscapePressed:(id)pressed;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)composeRecipientViewReturnPressed:(id)pressed;
- (void)composeRecipientViewTabPressed:(id)pressed;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)dismissSearchResultsForComposeRecipientView:(id)view;
- (void)handlePendingRecipient:(id)recipient;
- (void)invalidateOutstandingIDStatusRequests;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentAlternateAddressesAlertForRecipient:(id)recipient;
- (void)recipientViewDidBecomeFirstResponder:(id)responder;
- (void)recipientViewDidResignFirstResponder:(id)responder;
- (void)refreshAvailabilityForRecipients:(id)recipients context:(id)context;
- (void)refreshComposeSendingServiceForAddresses:(id)addresses context:(id)context withCompletionBlock:(id)block;
- (void)refreshComposeSendingServiceForAddresses:(id)addresses withCompletionBlock:(id)block;
- (void)removeRecipient:(id)recipient;
- (void)reset;
- (void)resetSearchResults;
- (void)scrollSearchListControllerToTop:(BOOL)top;
- (void)searchListController:(id)controller destinationsUpdated:(id)updated;
- (void)searchListControllerDidScroll:(id)scroll;
- (void)selectNextSearchResultForComposeRecipientView:(id)view;
- (void)selectPreviousSearchResultForComposeRecipientView:(id)view;
- (void)sendUpdateRecipientForAtom:(id)atom;
- (void)setConversation:(id)conversation;
- (void)setEditable:(BOOL)editable;
- (void)setGameCenterPickedHandles:(id)handles playerNames:(id)names;
- (void)setGameCenterPickerBlock:(id)block;
- (void)setSearchResultsHidden:(BOOL)hidden;
- (void)stopCheckingRecipientAvailabilityAndRemoveAllTimers;
- (void)tintColorForRecipient:(id)recipient completion:(id)completion;
- (void)updateScreenTimePolicy;
- (void)updateScrollPocketInteractionsIfNeeded;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKRecipientSelectionController

- (void)dealloc
{
  currentConversationContext = [(CKRecipientSelectionController *)self currentConversationContext];

  if (currentConversationContext)
  {
    currentConversationContext2 = [(CKRecipientSelectionController *)self currentConversationContext];
    [currentConversationContext2 removeObserver:self forKeyPath:@"allowedByScreenTime"];
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_recipientSelectionControllerDidChange object:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CKRecipientSelectionController *)self invalidateOutstandingIDStatusRequests];
  [(CKRecipientSelectionController *)self stopCheckingRecipientAvailabilityAndRemoveAllTimers];
  toField = [(CKRecipientSelectionController *)self toField];
  [toField setDelegate:0];

  toField2 = [(CKRecipientSelectionController *)self toField];
  [toField2 setLayoutDelegate:0];

  searchListController = [(CKRecipientSelectionController *)self searchListController];

  if (searchListController)
  {
    searchListController2 = [(CKRecipientSelectionController *)self searchListController];
    view = [searchListController2 view];
    [view removeFromSuperview];

    searchListController3 = [(CKRecipientSelectionController *)self searchListController];
    [(CKRecipientSelectionController *)self removeChildViewController:searchListController3];

    searchListController4 = [(CKRecipientSelectionController *)self searchListController];
    [searchListController4 setDelegate:0];
  }

  self->_numberOfRowsInToField = 1;
  v13.receiver = self;
  v13.super_class = CKRecipientSelectionController;
  [(CKRecipientSelectionController *)&v13 dealloc];
}

- (CKRecipientSelectionController)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v16.receiver = self;
  v16.super_class = CKRecipientSelectionController;
  v5 = [(CKRecipientSelectionController *)&v16 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_forceMMS = 0;
    copyForPendingConversation = [conversationCopy copyForPendingConversation];
    conversation = v6->_conversation;
    v6->_conversation = copyForPendingConversation;

    v9 = objc_alloc_init(CKRecipientAvailabilities);
    expandedRecipientAvailabilities = v6->_expandedRecipientAvailabilities;
    v6->_expandedRecipientAvailabilities = v9;

    v6->_allowedByScreenTime = 1;
    v11 = [[CKDetailsContactsManager alloc] initWithConversation:v6->_conversation delegate:v6];
    contactsManager = v6->_contactsManager;
    v6->_contactsManager = v11;

    v6->_numberOfRowsInToField = 1;
    v13 = objc_alloc_init(MEMORY[0x1E69650A0]);
    coreTelephonyClient = v6->_coreTelephonyClient;
    v6->_coreTelephonyClient = v13;
  }

  return v6;
}

- (void)loadView
{
  [(CKRecipientSelectionController *)self setNumberOfRowsInToField:1];
  v3 = +[CKUIBehavior sharedBehaviors];
  recipientSelectionViewRequiresMainScreenBounds = [v3 recipientSelectionViewRequiresMainScreenBounds];

  if (recipientSelectionViewRequiresMainScreenBounds)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v14 = [[CKRecipientSelectionView alloc] initWithFrame:v7, v9, v11, v13];
  [(CKRecipientSelectionController *)self setView:v14];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(CKRecipientSelectionController *)self view];
  [view setBackgroundColor:clearColor];

  v17 = +[CKUIBehavior sharedBehaviors];
  recipientSelectionViewClipsToBounds = [v17 recipientSelectionViewClipsToBounds];
  view2 = [(CKRecipientSelectionController *)self view];
  [view2 setClipsToBounds:recipientSelectionViewClipsToBounds];

  if (CKIsRunningInMacCatalyst())
  {
    v20 = 2;
  }

  else
  {
    v20 = 18;
  }

  [(CKRecipientSelectionController *)self _preferredDefaultToFieldHeight];
  v22 = v21;
  view3 = [(CKRecipientSelectionController *)self view];
  [view3 frame];
  v25 = v24;

  v91 = [[CKComposeRecipientView alloc] initWithFrame:0.0, 0.0, v25, v22];
  [(CKComposeRecipientView *)v91 setAutoresizingMask:v20];
  [(CKComposeRecipientView *)v91 setDelegate:self];
  [(CKComposeRecipientView *)v91 setLayoutDelegate:self];
  [(CKRecipientSelectionController *)self setToField:v91];
  if (CKIsRunningInMacCatalyst())
  {
    v26 = objc_opt_new();
    uUIDString = [v26 UUIDString];
    [(CKComposeRecipientView *)v91 setFocusGroupIdentifier:uUIDString];

    textView = [(CNComposeRecipientTextView *)v91 textView];
    [textView setFocusGroupIdentifier:0];
  }

  if (loadView_onceToken != -1)
  {
    [CKRecipientSelectionController loadView];
  }

  if (CKIsRunningInMacCatalyst() && ![(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    labelView = [(CKComposeRecipientView *)v91 labelView];
    [labelView setAttributedText:loadView_toText];
  }

  else
  {
    labelView = [loadView_toText string];
    [(CNComposeRecipientTextView *)v91 setLabel:labelView];
  }

  textView2 = [(CNComposeRecipientTextView *)v91 textView];
  [textView2 _setHiddenPocketEdges:15];

  addButton = [(CNComposeRecipientTextView *)v91 addButton];
  v32 = +[CKUIBehavior sharedBehaviors];
  [addButton setHidden:{objc_msgSend(v32, "canAccessContacts") ^ 1}];

  textView3 = [(CNComposeRecipientTextView *)v91 textView];
  v34 = +[CKUIBehavior sharedBehaviors];
  theme = [v34 theme];
  [textView3 setKeyboardAppearance:{objc_msgSend(theme, "keyboardAppearance")}];

  toField = [(CKRecipientSelectionController *)self toField];
  [toField setSeparatorHidden:1];

  toField2 = [(CKRecipientSelectionController *)self toField];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [toField2 setBackgroundColor:clearColor2];

  _userInterfaceStyleOverride = [(CKRecipientSelectionController *)self _userInterfaceStyleOverride];
  if (_userInterfaceStyleOverride)
  {
    [(CKRecipientSelectionController *)self setOverrideUserInterfaceStyle:_userInterfaceStyleOverride];
  }

  [(CKRecipientSelectionController *)self setEditable:1];
  v40 = +[CKUIBehavior sharedBehaviors];
  [v40 toFieldScrollViewInsets];
  v42 = v41;
  v44 = v43;
  v46 = v45;

  if (CKIsRunningInMacCatalyst())
  {
    v42 = *(MEMORY[0x1E695EFF8] + 8);
    v44 = *MEMORY[0x1E695EFF8];
  }

  v47 = v22;
  if (CKIsRunningInMacCatalyst())
  {
    [(CKRecipientSelectionController *)self preferredFieldContainerHeight];
    v47 = v48;
  }

  view4 = [(CKRecipientSelectionController *)self view];
  [view4 frame];
  v51 = v50 - v46;

  v52 = [[CKUIScrollView1xAdaptable alloc] initWithFrame:v44, v42, v51, v47];
  [(CKUIScrollView1xAdaptable *)v52 setAutoresizingMask:2];
  [(CKUIScrollView1xAdaptable *)v52 setBackgroundColor:0];
  [(CKUIScrollView1xAdaptable *)v52 setContentInsetAdjustmentBehavior:2];
  [(CKUIScrollView1xAdaptable *)v52 setShowsHorizontalScrollIndicator:0];
  [(CKUIScrollView1xAdaptable *)v52 _setHiddenPocketEdges:15];
  [(CKUIScrollView1xAdaptable *)v52 addSubview:v91];
  [(CKRecipientSelectionController *)self setToFieldScrollingView:v52];
  toFieldScrollingView = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [toFieldScrollingView bounds];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  [(CKComposeRecipientView *)v91 setFrame:v55, v57, v59, v61];
  v62 = CKIsRunningInMacCatalyst();
  toFieldScrollingView2 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  v64 = toFieldScrollingView2;
  if (v62)
  {
    [toFieldScrollingView2 setAlwaysBounceVertical:1];

    toFieldScrollingView3 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [toFieldScrollingView3 setShowsHorizontalScrollIndicator:0];

    toFieldScrollingView4 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [toFieldScrollingView4 setScrollEnabled:0];

    toFieldScrollingView5 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [toFieldScrollingView5 setShowsVerticalScrollIndicator:0];

    toFieldScrollingView6 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [toFieldScrollingView6 setAutomaticallyAdjustsScrollIndicatorInsets:0];
  }

  else
  {
    [toFieldScrollingView2 setScrollsToTop:0];

    toFieldScrollingView7 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [toFieldScrollingView7 setBounces:0];

    toFieldScrollingView6 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [toFieldScrollingView6 setAutoresizesSubviews:0];
  }

  v70 = [[CKContainerView1xAdaptable alloc] initWithFrame:v55, v57, v59, v61];
  [(CKContainerView1xAdaptable *)v70 setAutoresizingMask:2];
  objc_storeStrong(&self->_fieldStackContainerView, v70);
  [(CKContainerView1xAdaptable *)v70 addSubview:v52];
  view5 = [(CKRecipientSelectionController *)self view];
  [view5 addSubview:v70];

  [(UIView *)v70 ck_applyGlassBackground];
  delegate = [(CKRecipientSelectionController *)self delegate];
  v73 = objc_opt_respondsToSelector();

  if (v73)
  {
    delegate2 = [(CKRecipientSelectionController *)self delegate];
    v75 = [delegate2 headerDecorationViewForRecipientSelectionConroller:self];
    headerDecorationView = self->_headerDecorationView;
    self->_headerDecorationView = v75;

    if (self->_headerDecorationView)
    {
      [(CKRecipientSelectionController *)self _navigationBarInsets];
      v78 = v61 + v77;
      [(UIView *)self->_headerDecorationView setAutoresizingMask:2];
      [(UIView *)self->_headerDecorationView setFrame:v55, v57, v59, v78];
      view6 = [(CKRecipientSelectionController *)self view];
      [view6 addSubview:self->_headerDecorationView];

      view7 = [(CKRecipientSelectionController *)self view];
      [view7 sendSubviewToBack:self->_headerDecorationView];
    }
  }

  if ([(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    v81 = objc_alloc(MEMORY[0x1E69DD250]);
    view8 = [(CKRecipientSelectionController *)self view];
    [view8 frame];
    v84 = v83;
    v85 = +[CKUIBehavior sharedBehaviors];
    [v85 defaultSeparatorHeight];
    v87 = [v81 initWithFrame:{0.0, v22, v84, v86}];

    [v87 setAutoresizingMask:2];
    opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
    [v87 setBackgroundColor:opaqueSeparatorColor];

    [(CKRecipientSelectionController *)self setSeparator:v87];
    fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
    separator = [(CKRecipientSelectionController *)self separator];
    [fieldStackContainerView addSubview:separator];
  }

  [(CKRecipientSelectionController *)self setPeoplePickerHidden:1];
}

void __42__CKRecipientSelectionController_loadView__block_invoke()
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = *MEMORY[0x1E69DB648];
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 navbarToLabelFont];
  v16[0] = v1;
  v15[1] = *MEMORY[0x1E69DB650];
  v2 = [MEMORY[0x1E69DC888] grayColor];
  v16[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v4 = loadView_attributes;
  loadView_attributes = v3;

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"TO" value:&stru_1F04268F8 table:@"ChatKit"];
  v8 = [v5 initWithString:v7 attributes:loadView_attributes];
  v9 = loadView_toText;
  loadView_toText = v8;

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"No Recipients" value:&stru_1F04268F8 table:@"ChatKit"];
  v13 = [v10 initWithString:v12 attributes:loadView_attributes];
  v14 = loadView_placeHolderText;
  loadView_placeHolderText = v13;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKRecipientSelectionController;
  [(CKRecipientSelectionController *)&v5 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleRecipientViewChanged_ name:*MEMORY[0x1E6996390] object:self->_toField];
  [defaultCenter addObserver:self selector:sel__handleIDSResultsWhenSearchTableIsHidden_ name:@"CKIDSResultsFinishedWhenSearchTableIsHiddenNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleConversationPreferredServiceDidChangeNotification_ name:@"CKConversationPreferredServiceChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleAddressBookChangedNotification_ name:*MEMORY[0x1E69A6828] object:0];
  [defaultCenter addObserver:self selector:sel__handleAddressBookPartialChangedNotification_ name:*MEMORY[0x1E69A6838] object:0];
  [defaultCenter addObserver:self selector:sel__handleKeyTransparencyStatusChangedNotification_ name:*MEMORY[0x1E69A5810] object:0];
  [defaultCenter addObserver:self selector:sel__handleContactStoreBatchLoadCompleteNotification_ name:*MEMORY[0x1E69A6E10] object:0];
  [(CKRecipientSelectionController *)self _updateAddressBookProperties];
  v4 = [[CKManualUpdater alloc] initWithTarget:self action:sel__updateToFieldRecipientsData];
  [(CKRecipientSelectionController *)self setAddressBookNotificationUpdater:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CKRecipientSelectionController;
  [(CKViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppearDeferredSetup
{
  v30.receiver = self;
  v30.super_class = CKRecipientSelectionController;
  [(CKViewController *)&v30 viewDidAppearDeferredSetup];
  searchListController = [(CKRecipientSelectionController *)self searchListController];

  if (!searchListController)
  {
    v4 = [[CKRecipientSearchListController alloc] initWithStyle:CKIsRunningInMacCatalyst() != 0];
    [(CNAutocompleteResultsTableViewController *)v4 setDelegate:self];
    view = [(CKRecipientSelectionController *)self view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    if ([(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
    {
      toField = [(CKRecipientSelectionController *)self toField];
      [toField frame];
      v9 = v9 + v15;
    }

    v16 = +[CKUIBehavior sharedBehaviors];
    recipientSelectionSearchControllerRequiresFlexibleMargins = [v16 recipientSelectionSearchControllerRequiresFlexibleMargins];

    if (recipientSelectionSearchControllerRequiresFlexibleMargins)
    {
      view2 = [(CKRecipientSearchListController *)v4 view];
      [view2 setAutoresizingMask:18];
    }

    v19 = +[CKUIBehavior sharedBehaviors];
    recipientSelectionSearchControllerHidesInfoButton = [v19 recipientSelectionSearchControllerHidesInfoButton];

    if (recipientSelectionSearchControllerHidesInfoButton)
    {
      [(CNAutocompleteResultsTableViewController *)v4 setShouldHideInfoButton:1];
    }

    view3 = [(CKRecipientSearchListController *)v4 view];
    [view3 setFrame:{v7, v9, v11, v13}];

    tableView = [(CKRecipientSearchListController *)v4 tableView];
    [tableView setHidden:1];

    if (CKIsRunningInMacCatalyst())
    {
      focusGroupIdentifier = [(CKComposeRecipientView *)self->_toField focusGroupIdentifier];
      tableView2 = [(CKRecipientSearchListController *)v4 tableView];
      [tableView2 setFocusGroupIdentifier:focusGroupIdentifier];
    }

    [(CKRecipientSearchListController *)v4 setSmsEnabled:[(CKRecipientSelectionController *)self homogenizePreferredServiceForiMessage]];
    recipients = [(CKRecipientSelectionController *)self recipients];
    [(CKRecipientSearchListController *)v4 setEnteredRecipients:recipients];

    v26 = +[CKUIBehavior sharedBehaviors];
    if ([v26 presentsAutocompleteInAPopover])
    {
      isBeingPresentedInMacDetailsView = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];

      if (!isBeingPresentedInMacDetailsView)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    [(CKRecipientSelectionController *)self addChildViewController:v4];
    view4 = [(CKRecipientSelectionController *)self view];
    view5 = [(CKRecipientSearchListController *)v4 view];
    [view4 addSubview:view5];

    [(CKRecipientSearchListController *)v4 didMoveToParentViewController:self];
    [(CKRecipientSelectionController *)self bringComposeRecipientViewToFront];
LABEL_15:
    [(CKRecipientSelectionController *)self setSearchListController:v4];
    [(CKRecipientSelectionController *)self _updateToField];
    [(CKRecipientSelectionController *)self _resetSearchResultsInsets];
    [(CKRecipientSelectionController *)self updateScrollPocketInteractionsIfNeeded];
  }
}

- (UIView)fromFieldContainerView
{
  fromFieldContainerView = self->_fromFieldContainerView;
  if (!fromFieldContainerView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_fromFieldContainerView;
    self->_fromFieldContainerView = v4;

    [(UIView *)self->_fieldStackContainerView addSubview:self->_fromFieldContainerView];
    fromFieldContainerView = self->_fromFieldContainerView;
  }

  return fromFieldContainerView;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CKRecipientSelectionController;
  [(CKViewController *)&v6 viewWillDisappear:disappear];
  undoManager = [(CKRecipientSelectionController *)self undoManager];
  [undoManager removeAllActions];

  toField = [(CKRecipientSelectionController *)self toField];
  [toField parentWillClose];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CKRecipientSelectionController;
  [(CKViewController *)&v6 viewDidDisappear:disappear];
  [(CKRecipientSelectionController *)self setPreventAtomization:0];
  currentConversationContext = [(CKRecipientSelectionController *)self currentConversationContext];
  [currentConversationContext removeObserver:self forKeyPath:@"allowedByScreenTime"];

  [(CKRecipientSelectionController *)self setCurrentConversationContext:0];
  toField = [(CKRecipientSelectionController *)self toField];
  [toField parentDidClose];
}

- (int64_t)_userInterfaceStyleOverride
{
  delegate = [(CKRecipientSelectionController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(CKRecipientSelectionController *)self delegate];
  v6 = [delegate2 userInterfaceStyleOverrideForRecipientSelectionConroller:self];

  return v6;
}

- (UIEdgeInsets)_additionalSearchResultsEdgeInsets
{
  delegate = [(CKRecipientSelectionController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKRecipientSelectionController *)self delegate];
    [delegate2 additionalSearchResultsEdgeInsetsForRecipientSelectionController:self];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E69DDCE0];
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKRecipientSelectionController;
  [(CKRecipientSelectionController *)&v3 viewWillLayoutSubviews];
  [(CKRecipientSelectionController *)self _updateToField];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CKRecipientSelectionController;
  coordinatorCopy = coordinator;
  [(CKRecipientSelectionController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__CKRecipientSelectionController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E72EC3E8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

uint64_t __85__CKRecipientSelectionController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateToField];
  v2 = *(a1 + 32);

  return [v2 _resetSearchResultsInsets];
}

- (void)didMoveToParentViewController:(id)controller
{
  [(CKRecipientSelectionController *)self _updateToField];

  [(CKRecipientSelectionController *)self _resetSearchResultsInsets];
}

- (void)bringComposeRecipientViewToFront
{
  view = [(CKRecipientSelectionController *)self view];
  fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [view bringSubviewToFront:fieldStackContainerView];
}

- (double)additionalCatalystTopInset
{
  v3 = 0.0;
  if (CKIsRunningInMacCatalyst() && ![(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    if ([v4 useMacToolbar])
    {
      [(CKRecipientSelectionController *)self preferredMacToolbarHeight];
      v6 = v5;
    }

    else
    {
      v7 = +[CKUIBehavior sharedBehaviors];
      [v7 marzNavigationBarHeight];
      v6 = v8;
    }

    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 toFieldPreferredHeight];
    v11 = v10;
    [(CKRecipientSelectionController *)self fieldHeightOffset];
    v13 = v11 + v12;
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 toFieldInterItemSpacing];
    v16 = v6 - (v13 + v15);

    return fmax(v16, 0.0);
  }

  return v3;
}

- (double)fieldHeightOffset
{
  fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView frame];
  v5 = v4;

  v6 = 0.0;
  if (v5 != 0.0)
  {
    fieldStackContainerView2 = [(CKRecipientSelectionController *)self fieldStackContainerView];
    [fieldStackContainerView2 frame];
    v9 = v8;
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 toFieldPreferredHeight];
    v6 = v9 - v11;
  }

  return v6;
}

- (double)_preferredDefaultToFieldHeight
{
  if (CKIsRunningInMacCatalyst())
  {

    [(CKRecipientSelectionController *)self preferredFieldContainerHeight];
  }

  else
  {
    isBeingPresentedInMacDetailsView = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = v5;
    if (isBeingPresentedInMacDetailsView)
    {
      [v5 detailsToFieldPreferredHeight];
    }

    else
    {
      [v5 toFieldPreferredHeight];
    }

    v8 = v7;

    return v8;
  }

  return result;
}

- (double)preferredMacToolbarHeight
{
  [(CKRecipientSelectionController *)self preferredFieldContainerHeight];
  v4 = v3;
  [(CKRecipientSelectionController *)self glassPlatterLayoutMargins];
  return v6 + v4 + v5;
}

- (double)preferredFieldContainerHeight
{
  toField = [(CKRecipientSelectionController *)self toField];
  numberOfRowsOfTextInField = [toField numberOfRowsOfTextInField];
  numberOfRowsInToField = [(CKRecipientSelectionController *)self numberOfRowsInToField];

  if (numberOfRowsOfTextInField != numberOfRowsInToField)
  {
    toField2 = [(CKRecipientSelectionController *)self toField];
    -[CKRecipientSelectionController setNumberOfRowsInToField:](self, "setNumberOfRowsInToField:", [toField2 numberOfRowsOfTextInField]);
  }

  if ([(CKRecipientSelectionController *)self numberOfRowsInToField]< 2 || [(CKRecipientSelectionController *)self numberOfRowsInToField]> 3)
  {
    if ([(CKRecipientSelectionController *)self numberOfRowsInToField]<= 3)
    {
      numberOfRowsInToField2 = 1;
    }

    else
    {
      numberOfRowsInToField2 = 3;
    }
  }

  else
  {
    numberOfRowsInToField2 = [(CKRecipientSelectionController *)self numberOfRowsInToField];
  }

  [(CKRecipientSelectionController *)self _fieldContainerHeightForNumberOfRows:numberOfRowsInToField2];
  return result;
}

- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)rows
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = v4;
  if (rows < 2)
  {
    [v4 toFieldPreferredHeight];
    v13 = v14;
  }

  else
  {
    [v4 defaultToolbarHeight];
    v7 = v6;
    v8 = (rows - 1);
    [MEMORY[0x1E6996398] defaultHeight];
    v10 = v9;
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 toFieldInterlineSpacing];
    v13 = v7 + v8 * (v10 + v12);
  }

  return v13;
}

- (void)_handleRecipientViewChanged:(id)changed
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_recipientSelectionControllerDidChange object:0];

  [(CKRecipientSelectionController *)self performSelector:sel_recipientSelectionControllerDidChange withObject:0 afterDelay:0.0];
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  if ([changeCopy length])
  {
    [(UILabel *)self->_toFieldPlaceholderLabel setHidden:1];
  }

  else
  {
    recipients = [viewCopy recipients];
    -[UILabel setHidden:](self->_toFieldPlaceholderLabel, "setHidden:", [recipients count] != 0);
  }

  [(CKRecipientSelectionController *)self _adjustToFieldPositionIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained recipientSelectionController:self textDidChange:changeCopy];

  [(CKRecipientSelectionController *)self _updateSearchResultsTable];
  alternateAddressesAlertController = [(CKRecipientSelectionController *)self alternateAddressesAlertController];

  if (alternateAddressesAlertController)
  {
    alternateAddressesAlertController2 = [(CKRecipientSelectionController *)self alternateAddressesAlertController];
    [alternateAddressesAlertController2 dismissViewControllerAnimated:1 completion:0];

    [(CKRecipientSelectionController *)self setAlternateAddressesAlertController:0];
  }
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  viewCopy = view;
  recipientCopy = recipient;
  text = [viewCopy text];
  if ([text length])
  {
    [(UILabel *)self->_toFieldPlaceholderLabel setHidden:1];
  }

  else
  {
    recipients = [viewCopy recipients];
    -[UILabel setHidden:](self->_toFieldPlaceholderLabel, "setHidden:", [recipients count] != 0);
  }

  if ([(CKRecipientSelectionController *)self isGameCenterRecipient:recipientCopy])
  {
    v9 = [viewCopy atomViewForRecipient:recipientCopy];
    [v9 setPresentationOptions:8];
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    [v9 setTintColor:grayColor];
  }

  [(CKRecipientSelectionController *)self updateScreenTimePolicy];
  iDSCanonicalAddress = [recipientCopy IDSCanonicalAddress];
  [(CKRecipientSelectionController *)self didAddRecipient:iDSCanonicalAddress];
  delegate = [(CKRecipientSelectionController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CKRecipientSelectionController *)self delegate];
    [delegate2 recipientSelectionControllerDidAddRecipientAddress:iDSCanonicalAddress];
  }
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  viewCopy = view;
  recipientCopy = recipient;
  text = [viewCopy text];
  if ([text length])
  {
    [(UILabel *)self->_toFieldPlaceholderLabel setHidden:1];
  }

  else
  {
    recipients = [viewCopy recipients];
    -[UILabel setHidden:](self->_toFieldPlaceholderLabel, "setHidden:", [recipients count] != 0);
  }

  v9 = +[CKAdaptivePresentationController sharedInstance];
  [v9 dismissViewControllerAnimated:1 completion:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  toField = [(CKRecipientSelectionController *)self toField];
  text2 = [toField text];
  [WeakRetained recipientSelectionController:self textDidChange:text2];

  [(CKRecipientSelectionController *)self removeRecipient:recipientCopy];
  [(CKRecipientSelectionController *)self updateScreenTimePolicy];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  v24 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [address componentsSeparatedByString:@"\n"];
  if ([v7 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v18 = viewCopy;
      v11 = 0;
      v12 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 length] && CKIsValidAddress(v14))
          {
            v15 = +[CKRecipientGenerator sharedRecipientGenerator];
            v16 = [v15 recipientWithAddress:v14];
            [(CKRecipientSelectionController *)self addRecipient:v16];

            v11 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);

      viewCopy = v18;
      if (v11)
      {
        [v18 clearText];
        searchListController = [(CKRecipientSelectionController *)self searchListController];
        [searchListController cancelSearch];

        [(CKRecipientSelectionController *)self _updateShowingSearch];
      }
    }

    else
    {
    }
  }
}

- (void)composeRecipientViewReturnPressed:(id)pressed
{
  delegate = [(CKRecipientSelectionController *)self delegate];
  [delegate recipientSelectionControllerReturnPressed:self];
}

- (void)composeRecipientViewEscapePressed:(id)pressed
{
  delegate = [(CKRecipientSelectionController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKRecipientSelectionController *)self delegate];
    [delegate2 recipientSelectionControllerEscapePressed:self];
  }
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = +[CKRecipientGenerator sharedRecipientGenerator];
  v6 = [v5 recipientWithAddress:addressCopy];

  return v6;
}

- (void)composeRecipientViewTabPressed:(id)pressed
{
  delegate = [(CKRecipientSelectionController *)self delegate];
  [delegate recipientSelectionControllerTabPressed:self];
}

- (id)composeRecipientView:(id)view composeRecipientForContact:(id)contact
{
  contactCopy = contact;
  v5 = +[CKRecipientGenerator sharedRecipientGenerator];
  v6 = [v5 recipientWithContact:contactCopy];

  return v6;
}

- (void)composeRecipientView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  toFieldScrollingView = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [toFieldScrollingView frame];
  v11 = v10;

  if (CKIsRunningInMacCatalyst())
  {
    toField = [(CKRecipientSelectionController *)self toField];
    numberOfRowsOfTextInField = [toField numberOfRowsOfTextInField];

    if (numberOfRowsOfTextInField <= 1)
    {
      [(CKRecipientSelectionController *)self composeRecipientViewOriginY];
      v8 = v14;
    }
  }

  toField2 = [(CKRecipientSelectionController *)self toField];
  [toField2 setFrame:{v7, v8, v11, height}];

  toFieldScrollingView2 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [toFieldScrollingView2 contentSize];
  v18 = v17;
  v20 = v19;

  if (width != v18 || height != v20)
  {
    toFieldScrollingView3 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [toFieldScrollingView3 setContentSize:{width, height}];

    [(CKRecipientSelectionController *)self _updateRecipientViewLayouts];
    delegate = [(CKRecipientSelectionController *)self delegate];
    [delegate recipientSelectionControllerDidChangeSize:self];

    if (CKIsRunningInMacCatalyst())
    {
      _shouldEnableScrolling = [(CKRecipientSelectionController *)self _shouldEnableScrolling];
      toFieldScrollingView4 = [(CKRecipientSelectionController *)self toFieldScrollingView];
      [toFieldScrollingView4 setScrollEnabled:_shouldEnableScrolling];

      _shouldEnableScrolling2 = [(CKRecipientSelectionController *)self _shouldEnableScrolling];
      toFieldScrollingView5 = [(CKRecipientSelectionController *)self toFieldScrollingView];
      [toFieldScrollingView5 setShowsVerticalScrollIndicator:_shouldEnableScrolling2];
    }
  }

  [(CKRecipientSelectionController *)self _updateYOriginSearchListController];
}

- (BOOL)_systemUnderLock
{
  v2 = CKIsRunningInMessagesViewService();
  if (v2)
  {

    LOBYTE(v2) = CKIsScreenLocked();
  }

  return v2;
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (![(CKRecipientSelectionController *)self _systemUnderLock])
  {
    toField = [(CKRecipientSelectionController *)self toField];
    text = [recipientCopy text];
    [(CKRecipientSelectionController *)self composeRecipientView:toField didFinishEnteringAddress:text];

    [(CKRecipientSelectionController *)self setPeoplePickerHidden:0];
    firstResponder = [(CKRecipientSelectionController *)self firstResponder];
    [firstResponder reloadInputViews];

    if (self->_gameCenterPickerBlock)
    {
      toField2 = [(CKRecipientSelectionController *)self toField];
      inputAccessoryView = [toField2 inputAccessoryView];
      [inputAccessoryView setHidden:1];

      delegate = [(CKRecipientSelectionController *)self delegate];
      [delegate recipientSelectionControllerRequestDismissKeyboard:self];

      (*(self->_gameCenterPickerBlock + 2))();
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__CKRecipientSelectionController_composeRecipientViewRequestAddRecipient___block_invoke;
      aBlock[3] = &unk_1E72EC410;
      aBlock[4] = self;
      v11 = _Block_copy(aBlock);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __74__CKRecipientSelectionController_composeRecipientViewRequestAddRecipient___block_invoke_2;
      v21[3] = &unk_1E72EC438;
      v21[4] = self;
      v12 = _Block_copy(v21);
      contactPickerViewController = [(CKRecipientSelectionController *)self contactPickerViewController];
      [contactPickerViewController setModalPresentationStyle:7];

      contactPickerViewController2 = [(CKRecipientSelectionController *)self contactPickerViewController];
      popoverPresentationController = [contactPickerViewController2 popoverPresentationController];
      [popoverPresentationController setPermittedArrowDirections:1];

      v16 = +[CKUIBehavior sharedBehaviors];
      if ([v16 useMacToolbar])
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = [(CKRecipientSelectionController *)self navigationController];
      }

      v18 = selfCopy;

      v19 = +[CKAdaptivePresentationController sharedInstance];
      contactPickerViewController3 = [(CKRecipientSelectionController *)self contactPickerViewController];
      [v19 presentViewController:contactPickerViewController3 fromViewController:v18 presentationHandler:v11 dismissalHandler:v12 animated:1 completion:0];
    }
  }
}

id __74__CKRecipientSelectionController_composeRecipientViewRequestAddRecipient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = [*(a1 + 32) fieldStackContainerView];
  [v6 frame];
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;

  result = [*(a1 + 32) view];
  *a3 = result;
  return result;
}

- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom
{
  viewCopy = view;
  atomCopy = atom;
  if (CKIsRunningInMacCatalyst())
  {
    [(CKRecipientSelectionController *)self setIsDisambiguating:0];
    recipient = [atomCopy recipient];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      recipient2 = [atomCopy recipient];
      [(CKRecipientSelectionController *)self _showContactCardForRecipient:recipient2 sourceView:viewCopy];
    }
  }

  else
  {
    [(CKRecipientSelectionController *)self sendUpdateRecipientForAtom:atomCopy];
    [(CKRecipientSelectionController *)self setIsDisambiguating:1];
  }
}

- (void)sendUpdateRecipientForAtom:(id)atom
{
  v7[1] = *MEMORY[0x1E69E9840];
  recipient = [atom recipient];
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  v7[0] = recipient;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [searchListController updateRecipients:v6 disambiguatingRecipient:recipient];

  [(CKRecipientSelectionController *)self _showSearchField];
}

- (void)composeRecipientView:(id)view showPersonCardForAtom:(id)atom
{
  atomCopy = atom;
  recipient = [atomCopy recipient];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    recipient2 = [atomCopy recipient];
    [(CKRecipientSelectionController *)self _showDetailsForRecipient:recipient2 canDelete:0];
    delegate = [(CKRecipientSelectionController *)self delegate];
    [delegate recipientSelectionControllerDidPushABViewController:self];
  }
}

- (void)composeRecipientView:(id)view didSelectRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if ([(CKRecipientSelectionController *)self isDisambiguating])
  {
    [(CKRecipientSelectionController *)self setIsDisambiguating:0];
    [(CKRecipientSelectionController *)self _hideSearchField];
  }

  v5 = [recipientsCopy count] == 1;
  v6 = recipientsCopy;
  if (v5)
  {
    v7 = [recipientsCopy objectAtIndex:0];
    if (![(CKRecipientSelectionController *)self homogenizePreferredServiceForiMessage]&& ![(CKRecipientSelectionController *)self _recipientIsGroup:v7])
    {
      [(CKRecipientSelectionController *)self _showActionSheetForRecipient:v7 animated:1];
    }

    v6 = recipientsCopy;
  }
}

- (void)recipientViewDidBecomeFirstResponder:(id)responder
{
  responderCopy = responder;
  _shouldDisableToField = [(CKRecipientSelectionController *)self _shouldDisableToField];
  if (_shouldDisableToField)
  {
    toField = [(CKRecipientSelectionController *)self toField];
    addButton = [toField addButton];
    [addButton setHidden:1];
  }

  else if (![(CKRecipientSelectionController *)self isEditable])
  {
    goto LABEL_5;
  }

  [responderCopy setEditable:!_shouldDisableToField];
LABEL_5:
  delegate = [(CKRecipientSelectionController *)self delegate];
  [delegate recipientSelectionControllerDidBecomeFirstResponder:self];
}

- (void)recipientViewDidResignFirstResponder:(id)responder
{
  [responder setEditable:0];
  addressBookNotificationUpdater = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
  [addressBookNotificationUpdater updateIfNeeded];
}

- (id)composeRecipientView:(id)view contextMenuConfigurationForAtom:(id)atom
{
  v49 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  atomCopy = atom;
  toField = [(CKRecipientSelectionController *)self toField];

  if (toField != viewCopy)
  {
    goto LABEL_2;
  }

  recipient = [atomCopy recipient];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [CKDetailsContactsManager alloc];
  conversation = [(CKRecipientSelectionController *)self conversation];
  v15 = [(CKDetailsContactsManager *)v13 initWithConversation:conversation delegate:self];
  [(CKRecipientSelectionController *)self setContactsManager:v15];

  if (isKindOfClass)
  {
    array = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v41 = atomCopy;
    recipient2 = [atomCopy recipient];
    children = [recipient2 children];

    v19 = [children countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v45;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(children);
          }

          normalizedAddress = [*(*(&v44 + 1) + 8 * i) normalizedAddress];
          v24 = [CKEntity entityForAddress:normalizedAddress];
          [array addObject:v24];
        }

        v20 = [children countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v20);
    }

    conversation2 = [(CKRecipientSelectionController *)self conversation];
    recipients = [conversation2 recipients];
    v27 = [recipients isEqualToArray:array];

    if (v27)
    {
      conversation3 = [(CKRecipientSelectionController *)self conversation];
      contactsManager = [(CKRecipientSelectionController *)self contactsManager];
      v9 = [CKContextMenuGenerator menuForNamedGroupConversation:conversation3 andContactsManager:contactsManager];
    }

    else
    {
      v9 = 0;
    }

    atomCopy = v41;
  }

  else
  {
    contactsManager2 = [(CKRecipientSelectionController *)self contactsManager];
    v31 = [contactsManager2 conformsToProtocol:&unk_1F06794C0];

    if (!v31 || ([atomCopy recipient], (v32 = objc_claimAutoreleasedReturnValue()) == 0) || (v33 = v32, objc_msgSend(atomCopy, "recipient"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "normalizedAddress"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v33, !v35))
    {
LABEL_2:
      v9 = 0;
      goto LABEL_3;
    }

    recipient3 = [atomCopy recipient];
    normalizedAddress2 = [recipient3 normalizedAddress];
    array = [CKEntity entityForAddress:normalizedAddress2];

    contactsManager3 = [(CKRecipientSelectionController *)self contactsManager];
    v9 = [contactsManager3 contextMenuForEntity:array atom:atomCopy];
  }

  if (v9)
  {
    v39 = MEMORY[0x1E69DC8D8];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __87__CKRecipientSelectionController_composeRecipientView_contextMenuConfigurationForAtom___block_invoke;
    v42[3] = &unk_1E72EC178;
    v43 = v9;
    v40 = v9;
    v9 = [v39 configurationWithIdentifier:0 previewProvider:0 actionProvider:v42];
  }

LABEL_3:

  return v9;
}

- (BOOL)composeRecipientViewShowingSearchResults:(id)results
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  if ([searchListController isSearchResultsHidden])
  {
    hasSearchResults = 0;
  }

  else
  {
    searchListController2 = [(CKRecipientSelectionController *)self searchListController];
    hasSearchResults = [searchListController2 hasSearchResults];
  }

  return hasSearchResults;
}

- (BOOL)presentSearchResultsForComposeRecipientView:(id)view
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  hasSearchResults = [searchListController hasSearchResults];

  return hasSearchResults;
}

- (void)dismissSearchResultsForComposeRecipientView:(id)view
{
  [view clearText];
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  [searchListController cancelSearch];

  [(CKRecipientSelectionController *)self _updateShowingSearch];
}

- (void)selectNextSearchResultForComposeRecipientView:(id)view
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  [searchListController selectNextSearchResult];
}

- (void)selectPreviousSearchResultForComposeRecipientView:(id)view
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  [searchListController selectPreviousSearchResult];
}

- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)view context:(unint64_t)context
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  confirmSelectedRecipient = [searchListController confirmSelectedRecipient];

  if (context == 1 && confirmSelectedRecipient)
  {
    delegate = [(CKRecipientSelectionController *)self delegate];
    [delegate recipientSelectionControllerShouldResignFirstResponder:self];
  }

  return confirmSelectedRecipient;
}

- (BOOL)expandSelectedSearchResultForComposeRecipientView:(id)view
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  expandSelectedRecipient = [searchListController2 expandSelectedRecipient];

  return expandSelectedRecipient;
}

- (BOOL)collapseSelectedSearchResultForComposeRecipientView:(id)view
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  collapseSelectedRecipient = [searchListController2 collapseSelectedRecipient];

  return collapseSelectedRecipient;
}

- (UIEdgeInsets)layoutMarginsForComposeRecipientView:(id)view
{
  viewCopy = view;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  if (isModernSplitViewControllerEnabled)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 additionalComposeRecipientLayoutMargins];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    [(CKRecipientSelectionController *)self systemMinimumLayoutMargins];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    effectiveUserInterfaceLayoutDirection = [viewCopy effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection)
    {
      v25 = v23;
    }

    else
    {
      v25 = v19;
    }

    if (effectiveUserInterfaceLayoutDirection)
    {
      v26 = v19;
    }

    else
    {
      v26 = v23;
    }

    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 additionalComposeRecipientLayoutMargins];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v9 = v17 + v29;
    v15 = v26 + v35;
    v13 = v21 + v33;
    v11 = v25 + v31;
  }

  v36 = v9;
  v37 = v11;
  v38 = v13;
  v39 = v15;
  result.right = v39;
  result.bottom = v38;
  result.left = v37;
  result.top = v36;
  return result;
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  v39 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  recipientCopy = recipient;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      toField = [(CKRecipientSelectionController *)self toField];
      text = [toField text];
      *buf = 134218240;
      indexCopy = index;
      v37 = 2048;
      v38 = [text length];
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Selected recipient at index %ld, searchText length %ld", buf, 0x16u);
    }
  }

  toField2 = [(CKRecipientSelectionController *)self toField];
  [toField2 clearText];

  [(CKRecipientSelectionController *)self _updateShowingSearch];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (stewieEnabled)
  {
    if ([recipientCopy kind] == 6)
    {
      _openStewieAppForEmergencyIfRequired = [(CKRecipientSelectionController *)self _openStewieAppForEmergencyIfRequired];
    }

    else
    {
      if ([recipientCopy kind] != 7)
      {
        goto LABEL_11;
      }

      _openStewieAppForEmergencyIfRequired = [(CKRecipientSelectionController *)self _openStewieAppForRoadsideIfRequired];
    }

    if (_openStewieAppForEmergencyIfRequired)
    {
      goto LABEL_31;
    }
  }

LABEL_11:
  v17 = [(CKRecipientSelectionController *)self _recipientIsGroup:recipientCopy];
  if (v17)
  {
    shouldAtomizeToConversationName = [(CKRecipientSelectionController *)self shouldAtomizeToConversationName];
    if (![(CKRecipientSelectionController *)self isMAIDGroupsEnabled])
    {
      if ((shouldAtomizeToConversationName & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_26:
      [(CKRecipientSelectionController *)self addRecipient:recipientCopy];
      address = [recipientCopy address];
      v25 = address == 0;

      if (v25)
      {
        [(CKRecipientSelectionController *)self handlePendingRecipient:recipientCopy];
      }

      goto LABEL_28;
    }

    v19 = shouldAtomizeToConversationName ^ 1;
  }

  else
  {
    if (![(CKRecipientSelectionController *)self isMAIDGroupsEnabled])
    {
      goto LABEL_26;
    }

    v19 = 0;
  }

  if (!(v19 & 1 | v17 & ([recipientCopy sourceType] == 256)))
  {
    goto LABEL_26;
  }

LABEL_17:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = [(CKRecipientSelectionController *)self _expandedRecipientsForGroupRecipient:recipientCopy, 0];
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = *v31;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v20);
        }

        [(CKRecipientSelectionController *)self addRecipient:*(*(&v30 + 1) + 8 * i)];
      }

      v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v21);
  }

LABEL_28:
  toField3 = [(CKRecipientSelectionController *)self toField];
  isFirstResponder = [toField3 isFirstResponder];

  if ((isFirstResponder & 1) == 0)
  {
    toField4 = [(CKRecipientSelectionController *)self toField];
    [toField4 becomeFirstResponder];
  }

  searchListController = [(CKRecipientSelectionController *)self searchListController];
  [searchListController didSelectRecipient:recipientCopy atIndex:index];

LABEL_31:
}

- (BOOL)_openStewieAppForEmergencyIfRequired
{
  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  isStewieEmergencyActive = [mEMORY[0x1E69A5B00] isStewieEmergencyActive];

  if (isStewieEmergencyActive)
  {
    v5 = +[CKConversationList sharedConversationList];
    v6 = [v5 conversationForExistingChatWithChatIdentifier:*MEMORY[0x1E69A7C40]];

    v7 = IMOSLoggingEnabled();
    if (v6)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Opening emergency conversation", buf, 2u);
        }
      }

      searchListController = [(CKRecipientSelectionController *)self searchListController];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __70__CKRecipientSelectionController__openStewieAppForEmergencyIfRequired__block_invoke;
      v16[3] = &unk_1E72EB8D0;
      v16[4] = self;
      v6 = v6;
      v17 = v6;
      [searchListController dismissViewControllerAnimated:1 completion:v16];
    }

    else if (v7)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "No emergency conversation found", buf, 2u);
      }
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E6965078]);
    [v6 setReason:2];
    objc_initWeak(buf, self);
    coreTelephonyClient = self->_coreTelephonyClient;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__CKRecipientSelectionController__openStewieAppForEmergencyIfRequired__block_invoke_431;
    v13[3] = &unk_1E72EC488;
    objc_copyWeak(&v14, buf);
    [(CoreTelephonyClient *)coreTelephonyClient requestStewieWithContext:v6 completion:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  return isStewieEmergencyActive ^ 1;
}

void __70__CKRecipientSelectionController__openStewieAppForEmergencyIfRequired__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1016));
  [WeakRetained showConversation:*(a1 + 40) animate:1];
}

void __70__CKRecipientSelectionController__openStewieAppForEmergencyIfRequired__block_invoke_431(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Opening Stewie SOS application", buf, 2u);
    }
  }

  if (v3)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__CKRecipientSelectionController__openStewieAppForEmergencyIfRequired__block_invoke_431_cold_1(v3);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CKRecipientSelectionController__openStewieAppForEmergencyIfRequired__block_invoke_432;
  block[3] = &unk_1E72EC460;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v7);
}

void __70__CKRecipientSelectionController__openStewieAppForEmergencyIfRequired__block_invoke_432(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:0 completion:0];
}

- (BOOL)_openStewieAppForRoadsideIfRequired
{
  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  isStewieRoadsideActive = [mEMORY[0x1E69A5B00] isStewieRoadsideActive];

  if (isStewieRoadsideActive)
  {
    v5 = +[CKConversationList sharedConversationList];
    mEMORY[0x1E69A5B00]2 = [MEMORY[0x1E69A5B00] sharedInstance];
    mostRecentlyUsedRoadsideChatIdentifier = [mEMORY[0x1E69A5B00]2 mostRecentlyUsedRoadsideChatIdentifier];
    v8 = [v5 conversationForExistingChatWithChatIdentifier:mostRecentlyUsedRoadsideChatIdentifier];

    v9 = IMOSLoggingEnabled();
    if (v8)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Opening most recent roadside conversation", buf, 2u);
        }
      }

      searchListController = [(CKRecipientSelectionController *)self searchListController];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69__CKRecipientSelectionController__openStewieAppForRoadsideIfRequired__block_invoke;
      v18[3] = &unk_1E72EB8D0;
      v18[4] = self;
      v8 = v8;
      v19 = v8;
      [searchListController dismissViewControllerAnimated:1 completion:v18];
    }

    else if (v9)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "No roadside conversation found", buf, 2u);
      }
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E6965078]);
    [v8 setReason:7];
    objc_initWeak(buf, self);
    coreTelephonyClient = self->_coreTelephonyClient;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__CKRecipientSelectionController__openStewieAppForRoadsideIfRequired__block_invoke_434;
    v15[3] = &unk_1E72EC488;
    objc_copyWeak(&v16, buf);
    [(CoreTelephonyClient *)coreTelephonyClient requestStewieWithContext:v8 completion:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  return isStewieRoadsideActive ^ 1;
}

void __69__CKRecipientSelectionController__openStewieAppForRoadsideIfRequired__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1016));
  [WeakRetained showConversation:*(a1 + 40) animate:1];
}

void __69__CKRecipientSelectionController__openStewieAppForRoadsideIfRequired__block_invoke_434(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Opening Stewie Roadside application", buf, 2u);
    }
  }

  if (v3)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__CKRecipientSelectionController__openStewieAppForRoadsideIfRequired__block_invoke_434_cold_1(v3);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CKRecipientSelectionController__openStewieAppForRoadsideIfRequired__block_invoke_435;
  block[3] = &unk_1E72EC460;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v7);
}

void __69__CKRecipientSelectionController__openStewieAppForRoadsideIfRequired__block_invoke_435(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:0 completion:0];
}

- (void)_handleIDSResultsWhenSearchTableIsHidden:(id)hidden
{
  v22 = *MEMORY[0x1E69E9840];
  hiddenCopy = hidden;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "We received an IDS query results when search table is visible. Checkinf if there are any penidng atoms we should update.", buf, 2u);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  toField = [(CKRecipientSelectionController *)self toField];
  recipients = [toField recipients];

  v7 = [recipients countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(recipients);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        address = [v10 address];
        v12 = address == 0;

        if (v12)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v20 = v10;
              _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Found a pending recipient: %@. We will try to resolve it with the new IDS results.", buf, 0xCu);
            }
          }

          [(CKRecipientSelectionController *)self handlePendingRecipient:v10];
        }
      }

      v7 = [recipients countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)handlePendingRecipient:(id)recipient
{
  v18 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = recipientCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Trying to updating pending state for recipient: %@", &v16, 0xCu);
    }
  }

  v6 = [(CKRecipientSelectionController *)self preferredRecipientForPendingUnifiedContact:recipientCopy];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E6996438]);
    children = [recipientCopy children];
    v9 = [v7 initWithChildren:children defaultChild:v6];

    normalizedAddress = [v6 normalizedAddress];
    [v9 setAddress:normalizedAddress];

    toField = [(CKRecipientSelectionController *)self toField];
    [toField removeRecipient:recipientCopy];

    toField2 = [(CKRecipientSelectionController *)self toField];
    [toField2 addRecipient:v9];

    toField3 = [(CKRecipientSelectionController *)self toField];
    [toField3 invalidateAtomPresentationOptionsForRecipient:v6];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v9;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Replaced old pending recipient with new recipient: %@", &v16, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = 0;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "We didn't find existing conversation or new recipient didn't finish resolving all IDS: %@.", &v16, 0xCu);
    }
  }
}

- (id)preferredRecipientForPendingUnifiedContact:(id)contact
{
  v14 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = contactCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Looking for preffered recipient for the pending recipient: %@", &v12, 0xCu);
    }
  }

  children = [contactCopy children];
  v7 = [(CKRecipientSelectionController *)self preferredRecipientForExistingConversationOfRecipients:children];

  if (!v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = contactCopy;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "No recipient in existing conversations. Looking for best handle for new contact: %@", &v12, 0xCu);
      }
    }

    children2 = [contactCopy children];
    v7 = [(CKRecipientSelectionController *)self preferredRecipientForNewContact:children2];
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Returning preffered recipient: %@", &v12, 0xCu);
    }
  }

  return v7;
}

- (char)serviceTypeForRecipient:(id)recipient
{
  v41 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  supportsBusinessChat = [MEMORY[0x1E69A8020] supportsBusinessChat];
  normalizedAddress = [recipientCopy normalizedAddress];
  v7 = [recipientCopy IDSCanonicalAddressForAddress:normalizedAddress];

  searchListController = [(CKRecipientSelectionController *)self searchListController];
  v9 = [(CKRecipientSelectionController *)self searchListController:searchListController idStatusForIDSID:v7];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      normalizedAddress2 = [recipientCopy normalizedAddress];
      *buf = 138412546;
      v38 = normalizedAddress2;
      v39 = 2048;
      v40 = v9;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "IDS status for recipinet address %@ is %ld", buf, 0x16u);
    }
  }

  if (v9 == 2)
  {
    LOBYTE(v16) = 0;
  }

  else if (v9 != 1 || (([MEMORY[0x1E69A5C90] iMessageService], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "__ck_serviceType"), v12, v14 = MEMORY[0x193AF5D00](v7), !supportsBusinessChat) ? (v15 = 0) : (v15 = 4), !v14 ? (v16 = v13) : (v16 = v15), v16 == 1))
  {
    searchListController2 = [(CKRecipientSelectionController *)self searchListController];
    smsEnabled = [searchListController2 smsEnabled];

    if (smsEnabled)
    {
      v19 = +[CKConversationList sharedConversationList];
      searchListController3 = [(CKRecipientSelectionController *)self searchListController];
      defaultiMessageAccount = [searchListController3 defaultiMessageAccount];
      normalizedAddress3 = [recipientCopy normalizedAddress];
      v23 = IMStripFormattingFromAddress();
      v24 = [defaultiMessageAccount imHandleWithID:v23 alreadyCanonical:0];

      if (v24)
      {
        v36 = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        v26 = [v19 conversationForHandles:v25 displayName:0 joinedChatsOnly:1 create:0];

        if (v26)
        {
          sendingService = [v26 sendingService];
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(19);
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v38 = v24;
              v39 = 2112;
              v40 = sendingService;
              _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Updating service color in recipient search list for handle: %@, with service: %@", buf, 0x16u);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
          {
            v34 = v24;
            v35 = sendingService;
            _CKLogExternal();
          }

          LOBYTE(v16) = [sendingService __ck_serviceType];
          isBusiness = [v24 isBusiness];
          if (supportsBusinessChat)
          {
            v30 = 4;
          }

          else
          {
            v30 = 0;
          }

          if (isBusiness)
          {
            LOBYTE(v16) = v30;
          }

          goto LABEL_37;
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          normalizedAddress4 = [recipientCopy normalizedAddress];
          *buf = 138412290;
          v38 = normalizedAddress4;
          _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "ServiceTypeForRecipient: Handle is nil for recipient address: %@", buf, 0xCu);
        }
      }

      LOBYTE(v16) = 1;
LABEL_37:

      goto LABEL_38;
    }

    LOBYTE(v16) = 1;
  }

LABEL_38:

  return v16;
}

- (id)expandedRecipientsForGroupRecipient:(id)recipient
{
  v7[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if ([recipientCopy isGroup])
  {
    children = [recipientCopy children];
  }

  else
  {
    v7[0] = recipientCopy;
    children = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  v5 = children;

  return v5;
}

- (char)serviceColorForRecipientAddresses:(id)addresses
{
  addressesCopy = addresses;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CKRecipientSelectionController_serviceColorForRecipientAddresses___block_invoke;
  v6[3] = &unk_1E72EBA68;
  v6[4] = self;
  v6[5] = &v7;
  [addressesCopy enumerateObjectsUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

void __68__CKRecipientSelectionController_serviceColorForRecipientAddresses___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = *(a1 + 32);
  v7 = [v6 searchListController];
  v8 = [v6 searchListController:v7 idStatusForIDSID:v12];

  if (v8 == 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_7:
    *a4 = 1;
    goto LABEL_12;
  }

  if (v8 != 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = -1;
    goto LABEL_7;
  }

  if (MEMORY[0x193AF5D00](v12))
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = 6;
LABEL_10:
    *(v9 + 24) = v10;
    goto LABEL_12;
  }

  if (MEMORY[0x193AF5D50](v12))
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = 12;
    goto LABEL_10;
  }

  v11 = [MEMORY[0x1E69A5C90] iMessageService];
  *(*(*(a1 + 40) + 8) + 24) = [v11 __ck_displayColor];

LABEL_12:
}

- (id)conversationForRecipients:(id)recipients
{
  recipientsCopy = recipients;
  v5 = +[CKConversationList sharedConversationList];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recipientsCopy, "count")}];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __60__CKRecipientSelectionController_conversationForRecipients___block_invoke;
  v19 = &unk_1E72EC398;
  selfCopy = self;
  v7 = v6;
  v21 = v7;
  [recipientsCopy enumerateObjectsUsingBlock:&v16];

  v8 = [v5 conversationForHandles:v7 displayName:0 joinedChatsOnly:1 create:{0, v16, v17, v18, v19, selfCopy}];
  if ([v7 count] != 1)
  {
    goto LABEL_5;
  }

  chat = [v8 chat];
  lastFinishedMessageItem = [chat lastFinishedMessageItem];

  handle = [lastFinishedMessageItem handle];
  firstObject = [v7 firstObject];
  v13 = [firstObject ID];

  if (!lastFinishedMessageItem || [handle isEqualToString:v13])
  {

LABEL_5:
    v14 = v8;
    goto LABEL_6;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

void __60__CKRecipientSelectionController_conversationForRecipients___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 searchListController];
  v6 = [v5 defaultiMessageAccount];
  v7 = [v4 normalizedAddress];

  v8 = IMStripFormattingFromAddress();
  v10 = [v6 imHandleWithID:v8 alreadyCanonical:0];

  v9 = v10;
  if (v10)
  {
    [*(a1 + 40) addObject:v10];
    v9 = v10;
  }
}

- (BOOL)lastSentMessageWasNotDeliveredForConversation:(id)conversation
{
  chat = [conversation chat];
  shouldForceServerStatusRefresh = [chat shouldForceServerStatusRefresh];

  return shouldForceServerStatusRefresh;
}

- (BOOL)hasEmailRecipientsInAddresses:(id)addresses
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  addressesCopy = addresses;
  v4 = [addressesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(addressesCopy);
        }

        if (IMStringIsEmail())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [addressesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)colorTypeForRecipient:(id)recipient completion:(id)completion
{
  recipientCopy = recipient;
  completionCopy = completion;
  v8 = [(CKRecipientSelectionController *)self expandedRecipientsForGroupRecipient:recipientCopy];
  v9 = [v8 __imArrayByApplyingBlock:&__block_literal_global_446];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = [(CKRecipientSelectionController *)self serviceColorForRecipientAddresses:v9];
  if ([v9 count])
  {
    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  isInternationalSpamFilteringEnabled = [MEMORY[0x1E69A82A0] isInternationalSpamFilteringEnabled];
  if (firstObject)
  {
    v12 = isInternationalSpamFilteringEnabled;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != 1)
  {
    if (*(v31 + 24) != 255)
    {
      goto LABEL_15;
    }

    v14 = 0;
LABEL_13:
    searchListController = [(CKRecipientSelectionController *)self searchListController];
    smsEnabled = [searchListController smsEnabled];

    if ((smsEnabled | v14))
    {
      goto LABEL_14;
    }

LABEL_15:
    v24 = +[CKUIBehavior sharedBehaviors];
    theme = [v24 theme];
    v23 = [theme recipientTextColorForColorType:*(v31 + 24)];

    completionCopy[2](completionCopy, v23);
    goto LABEL_16;
  }

  v13 = [MEMORY[0x1E69A82A0] receiverIsCandidateForHawking:firstObject];
  v14 = v13;
  if (*(v31 + 24) == 255)
  {
    goto LABEL_13;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_14:
  [(CKRecipientSelectionController *)self hasEmailRecipientsInAddresses:v9];
  v17 = [(CKRecipientSelectionController *)self conversationForRecipients:v8];
  v26 = recipientCopy;
  [(CKRecipientSelectionController *)self lastSentMessageWasNotDeliveredForConversation:v17];
  chat = [v17 chat];
  [chat receivedResponseForChat];

  chat2 = [v17 chat];
  chat3 = [v17 chat];
  lastAddressedHandleID = [chat3 lastAddressedHandleID];
  chat4 = [v17 chat];
  lastAddressedSIMID = [chat4 lastAddressedSIMID];
  [v17 forceMMS];
  chat5 = [v17 chat];
  [chat5 isDowngraded];
  v23 = v17;
  v29 = completionCopy;
  IMChatCalculateServiceForSendingNewComposeMaybeForce();

  recipientCopy = v26;
LABEL_16:

  _Block_object_dispose(&v30, 8);
}

void __67__CKRecipientSelectionController_colorTypeForRecipient_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) isBusinessConversation])
  {
    v3 = 6;
  }

  else if ([*(a1 + 32) isStewieConversation])
  {
    v3 = 12;
  }

  else
  {
    v4 = [MEMORY[0x1E69A5CA0] iMessageService];
    if (v4 == v9)
    {

      v3 = 1;
    }

    else
    {
      v5 = [MEMORY[0x1E69A5CA0] iMessageLiteService];
      v3 = v5 == v9;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 theme];
  v8 = [v7 recipientTextColorForColorType:*(*(*(a1 + 48) + 8) + 24)];

  (*(*(a1 + 40) + 16))();
}

- (id)preferredColorTypeForExistingConversation:(id)conversation
{
  conversationCopy = conversation;
  sendingService = [conversationCopy sendingService];
  if ([conversationCopy isBusinessConversation])
  {
    __ck_displayColor = 6;
  }

  else if ([conversationCopy isStewieConversation])
  {
    __ck_displayColor = 12;
  }

  else
  {
    __ck_displayColor = [sendingService __ck_displayColor];
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  theme = [v6 theme];
  v8 = [theme recipientTextColorForColorType:__ck_displayColor];

  return v8;
}

- (id)preferredRecipientForExistingConversationOfRecipients:(id)recipients
{
  v17 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = recipientsCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Looking for existing conversation for these recipients: %@", buf, 0xCu);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__CKRecipientSelectionController_preferredRecipientForExistingConversationOfRecipients___block_invoke;
  v8[3] = &unk_1E72EC4D8;
  v8[4] = self;
  v8[5] = &v9;
  [recipientsCopy enumerateObjectsUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __88__CKRecipientSelectionController_preferredRecipientForExistingConversationOfRecipients___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) handleForRecipientNormalizedAddress:v7];
  if (v8)
  {
    v9 = [*(a1 + 32) chatForIMHandle:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 chatIdentifier];
      v12 = [v8 ID];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = *(*(*(a1 + 40) + 8) + 40);
            v20 = 138412290;
            v21 = v15;
            _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Found recipient from existing chat. Preferred recipient: %@", &v20, 0xCu);
          }
        }

        *a4 = 1;
        goto LABEL_21;
      }

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v10 chatIdentifier];
          v19 = [v8 ID];
          v20 = 138412546;
          v21 = v18;
          v22 = 2112;
          v23 = v19;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "We didn't find a match of the chat identifier: %@ and handle ID = %@ ", &v20, 0x16u);
        }

LABEL_20:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v8;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "There was no chat found for handle: %@", &v20, 0xCu);
      }

      goto LABEL_20;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = [v7 normalizedAddress];
      v20 = 138412290;
      v21 = v16;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "There was no handle found for recipient normalized address: %@", &v20, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (id)handleForRecipientNormalizedAddress:(id)address
{
  addressCopy = address;
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  defaultiMessageAccount = [searchListController defaultiMessageAccount];
  normalizedAddress = [addressCopy normalizedAddress];

  v8 = IMStripFormattingFromAddress();
  v9 = [defaultiMessageAccount imHandleWithID:v8 alreadyCanonical:0];

  return v9;
}

- (id)chatForIMHandle:(id)handle
{
  v3 = MEMORY[0x1E69A5AF8];
  handleCopy = handle;
  sharedRegistry = [v3 sharedRegistry];
  v6 = [sharedRegistry existingChatForIMHandle:handleCopy allowRetargeting:0 fixChatHandle:0];

  return v6;
}

- (char)_satelliteConnectedColorOverrideForRecipient:(id)recipient inConversation:(id)conversation
{
  sendingService = [conversation sendingService];
  iMessageLiteService = [MEMORY[0x1E69A5CA0] iMessageLiteService];

  if (sendingService == iMessageLiteService)
  {
    v7 = 1;
  }

  else
  {
    satelliteSMSService = [MEMORY[0x1E69A5CA0] satelliteSMSService];

    if (sendingService == satelliteSMSService)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (void)tintColorForRecipient:(id)recipient completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  completionCopy = completion;
  v8 = +[CKUIBehavior sharedBehaviors];
  theme = [v8 theme];
  v10 = [theme recipientTextColorForColorType:0xFFFFFFFFLL];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = recipientCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Request for setting color for: %@.", buf, 0xCu);
    }
  }

  v12 = [(CKRecipientSelectionController *)self expandedRecipientsForGroupRecipient:recipientCopy];
  v13 = [(CKRecipientSelectionController *)self conversationForRecipients:v12];
  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  isSatelliteConnectionActive = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];

  if (isSatelliteConnectionActive)
  {
    v16 = [(CKRecipientSelectionController *)self _satelliteConnectedColorOverrideForRecipient:recipientCopy inConversation:v13];
    v17 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v17 theme];
    v19 = [theme2 recipientTextColorForColorType:v16];
    completionCopy[2](completionCopy, v19);
  }

  else if (v13 && (([recipientCopy isNotAChildOfUnifiedRecipient] & 1) != 0 || objc_msgSend(recipientCopy, "isUnnamedGroup")))
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = recipientCopy;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "There is existing conversation with recipient: %@. We will set the color from the conversaion.", buf, 0xCu);
      }
    }

    v21 = [(CKRecipientSelectionController *)self preferredColorTypeForExistingConversation:v13];

    completionCopy[2](completionCopy, v21);
    v10 = v21;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = recipientCopy;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "There is no existing conversation with recipient: %@", buf, 0xCu);
      }
    }

    children = [recipientCopy children];
    v24 = [(CKRecipientSelectionController *)self hasIDSResultsForAllRecipients:children];

    v25 = IMOSLoggingEnabled();
    if (v24)
    {
      if (v25)
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = recipientCopy;
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Setting color from the IDS results for: %@ ", buf, 0xCu);
        }
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __67__CKRecipientSelectionController_tintColorForRecipient_completion___block_invoke;
      v28[3] = &unk_1E72EC500;
      v29 = completionCopy;
      [(CKRecipientSelectionController *)self colorTypeForRecipient:recipientCopy completion:v28];
    }

    else
    {
      if (v25)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = recipientCopy;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "No IDS results: %@.", buf, 0xCu);
        }
      }

      completionCopy[2](completionCopy, v10);
    }
  }
}

- (id)recipientIsDuetSuggestion:(id)suggestion
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  suggestionCopy = suggestion;
  v4 = [suggestionCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v6 = *v18;
    *&v5 = 138412290;
    v16 = v5;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(suggestionCopy);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v22 = v8;
            _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Checking for DUET results for  recipient: %@", buf, 0xCu);
          }
        }

        v10 = ([v8 sourceType] & 0x10) == 0;
        v11 = IMOSLoggingEnabled();
        if (!v10)
        {
          if (v11)
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Result is from Duet.", buf, 2u);
            }
          }

          v13 = v8;
          goto LABEL_23;
        }

        if (v11)
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Result is not from Duet.", buf, 2u);
          }
        }
      }

      v4 = [suggestionCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_23:

  return v13;
}

- (id)preferredRecipientForRecipients:(id)recipients
{
  v13 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = recipientsCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Searching for preferred recipient for unified recipient: %@", &v11, 0xCu);
    }
  }

  if (recipientsCopy && [recipientsCopy count])
  {
    v6 = [(CKRecipientSelectionController *)self preferredRecipientForExistingConversationOfRecipients:recipientsCopy];
    if (v6 || ([(CKRecipientSelectionController *)self preferredRecipientForNewContact:recipientsCopy], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "We found preferred handle for new contact from IDS. Invalidate the to filed.", &v11, 2u);
        }
      }

      toField = [(CKRecipientSelectionController *)self toField];
      [toField invalidateAtomPresentationOptionsForRecipient:v6];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "No recipients to search for. Returning nil for preferred recipient.", &v11, 2u);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)preferredRecipientForNewContact:(id)contact
{
  v16 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = contactCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Looking for preferred recipient for new contact: %@", &v14, 0xCu);
    }
  }

  if ([(CKRecipientSelectionController *)self hasIDSResultsForAllRecipients:contactCopy])
  {
    v6 = [(CKRecipientSelectionController *)self preferredRecipientForRecipients:contactCopy forServiceType:2];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Selected preferred recipient for iMessage: %@", &v14, 0xCu);
      }
    }

    if (!v6)
    {
      v6 = [(CKRecipientSelectionController *)self preferredRecipientForRecipients:contactCopy forServiceType:3];
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = v6;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Selected preferred recipient for SMS: %@", &v14, 0xCu);
        }
      }

      if (!v6)
      {
        v6 = [(CKRecipientSelectionController *)self preferredRecipientForRecipients:contactCopy forServiceType:4];
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v14 = 138412290;
            v15 = v6;
            _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Selected preferred recipient for Bussiness chat: %@", &v14, 0xCu);
          }
        }

        if (!v6)
        {
          v6 = [(CKRecipientSelectionController *)self preferredRecipientForRecipients:contactCopy forServiceType:0];
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v14 = 138412290;
              v15 = v6;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Selected preferred recipient for invalid service type: %@", &v14, 0xCu);
            }
          }
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Returning preferred recipient: %@", &v14, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "IDS didn't resolve for all handles. Return nil for preffered handle.", &v14, 2u);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)preferredRecipientForRecipients:(id)recipients forServiceType:(char)type
{
  typeCopy = type;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  recipientsCopy = recipients;
  v7 = [recipientsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(recipientsCopy);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([(CKRecipientSelectionController *)self serviceTypeForRecipient:v13, v17]== typeCopy)
        {
          if ([v13 isPhone])
          {
            v15 = v13;

            goto LABEL_20;
          }

          if ([v13 isEmail])
          {
            v14 = v10 == 0;
          }

          else
          {
            v14 = 0;
          }

          if (v14)
          {
            v10 = v13;

            v9 = v10;
          }
        }
      }

      v8 = [recipientsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v9 = v9;
  v15 = v9;
LABEL_20:

  return v15;
}

- (BOOL)hasIDSResultsForAllRecipients:(id)recipients
{
  v32 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = recipientsCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Checking if we have IDS results for : %@ ", buf, 0xCu);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = recipientsCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v9 = *v24;
    *&v8 = 138412546;
    v22 = v8;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        normalizedAddress = [v11 normalizedAddress];
        v13 = [v11 IDSCanonicalAddressForAddress:normalizedAddress];

        searchListController = [(CKRecipientSelectionController *)self searchListController];
        v15 = [(CKRecipientSelectionController *)self searchListController:searchListController idStatusForIDSID:v13];

        v16 = IMOSLoggingEnabled();
        if (!v15)
        {
          if (v16)
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = v22;
              v28 = v13;
              v29 = 2048;
              v30 = 0;
              _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "IDS status for address: %@ is IDSIDStatusUnknown: %ld", buf, 0x16u);
            }
          }

          v19 = 0;
          goto LABEL_27;
        }

        if (v16)
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v22;
            v28 = v13;
            v29 = 2048;
            v30 = v15;
            _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "IDS status for address %@ is %ld", buf, 0x16u);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "IDS status is resolved for all recipients.", buf, 2u);
    }
  }

  v19 = 1;
LABEL_27:

  return v19;
}

- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ([recipientCopy isGroup])
  {
    [(CKRecipientSelectionController *)self _showDetailsForGroup:recipientCopy];
  }

  else
  {
    [(CKRecipientSelectionController *)self _showDetailsForRecipient:recipientCopy canDelete:1];
  }
}

- (void)searchListControllerDidScroll:(id)scroll
{
  textView = [(CNComposeRecipientTextView *)self->_toField textView];
  if ([textView isFirstResponder])
  {
    isInHardwareKeyboardMode = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];

    if ((isInHardwareKeyboardMode & 1) == 0)
    {
      [(CKRecipientSelectionController *)self setPreventAtomization:1];
      delegate = [(CKRecipientSelectionController *)self delegate];
      [delegate recipientSelectionControllerRequestDismissKeyboard:self];

      [(CKRecipientSelectionController *)self setPreventAtomization:0];
    }
  }

  else
  {
  }
}

- (void)refreshAvailabilityForRecipients:(id)recipients context:(id)context
{
  recipientsCopy = recipients;
  contextCopy = context;
  conversation = [(CKRecipientSelectionController *)self conversation];
  v9 = [conversation serviceReachabilityContextForRefreshContext:contextCopy];

  expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__CKRecipientSelectionController_refreshAvailabilityForRecipients_context___block_invoke;
  v13[3] = &unk_1E72EC548;
  v14 = recipientsCopy;
  v15 = contextCopy;
  selfCopy = self;
  v11 = contextCopy;
  v12 = recipientsCopy;
  [expandedRecipientAvailabilities refreshAvailabilityForRecipients:v12 context:v9 resultHandler:v13];
}

void __75__CKRecipientSelectionController_refreshAvailabilityForRecipients_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v35 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Availability request finished for recipients: %@", buf, 0xCu);
    }
  }

  if ([v6 isFinal])
  {
    v9 = [MEMORY[0x1E69A5CA0] rcsService];
    v10 = [v9 internalName];
    if ([v5 isEqualToString:v10])
    {
      v11 = [*(a1 + 40) preconditionsIgnoredForServices];
      if (![v11 count])
      {
        v14 = [*(a1 + 40) isForPendingConversation];

        if (!v14)
        {
          v12 = 0;
          goto LABEL_11;
        }

        v15 = [*(a1 + 48) conversation];
        v16 = [v15 chat];
        v17 = [v16 participants];
        v9 = [v17 __imArrayByApplyingBlock:&__block_literal_global_457_0];

        v18 = [*(a1 + 48) expandedRecipientAvailabilities];
        v19 = [MEMORY[0x1E69A5CA0] rcsService];
        v20 = [v19 internalName];
        v12 = [v18 recipientsWithoutResults:v9 onService:v20];

        if (v12)
        {
          if ([v12 count])
          {
            v21 = [*(a1 + 48) conversation];
            v33 = [v21 sendingService];

            if (v33)
            {
              v32 = [*(a1 + 40) copy];
              v22 = [v32 preconditionsIgnoredForServices];
              v23 = [v22 mutableCopy];
              v24 = v23;
              if (v23)
              {
                v25 = v23;
              }

              else
              {
                v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              }

              v26 = v25;

              v27 = MEMORY[0x1E695DFD8];
              v28 = [v33 internalName];
              v29 = [MEMORY[0x1E69A5CA0] rcsService];
              v30 = [v29 internalName];
              v31 = [v27 setWithObjects:{v28, v30, 0}];
              [v26 unionSet:v31];

              [v32 setPreconditionsIgnoredForServices:v26];
              [*(a1 + 48) refreshAvailabilityForRecipients:v12 context:v32];

              goto LABEL_12;
            }
          }
        }

LABEL_10:

LABEL_11:
        [*(a1 + 48) recipientAvailabilitiesDidUpdate];
LABEL_12:

        goto LABEL_17;
      }
    }

    v12 = 0;
    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Service for sending was not final. Bailing.", buf, 2u);
    }
  }

LABEL_17:
}

id __75__CKRecipientSelectionController_refreshAvailabilityForRecipients_context___block_invoke_454(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 ID];

  if (v3)
  {
    v4 = [v2 ID];
    v3 = IMChatCanonicalIDSIDsForAddress();
  }

  return v3;
}

- (void)searchListController:(id)controller destinationsUpdated:(id)updated
{
  updatedCopy = updated;
  expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
  [expandedRecipientAvailabilities addEntriesFromIDSResults:updatedCopy];
}

- (int64_t)searchListController:(id)controller idStatusForIDSID:(id)d
{
  dCopy = d;
  expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
  v7 = [expandedRecipientAvailabilities idStatusForRecipient:dCopy service:*MEMORY[0x1E69A7AF0]];

  return v7;
}

- (void)autocompleteGroupDetailViewController:(id)controller didAskToRemoveGroup:(id)group
{
  [(CKRecipientSelectionController *)self setRecentContactForPresentedCNCard:group];

  [(CKRecipientSelectionController *)self _removeRecent];
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    getContactStore = [mEMORY[0x1E69A7FD0] getContactStore];
    v6 = self->_contactStore;
    self->_contactStore = getContactStore;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  v5 = +[CKRecipientGenerator sharedRecipientGenerator];
  v6 = [v5 recipientWithContactProperty:propertyCopy];

  if (!v6)
  {
    toField = [(CKRecipientSelectionController *)self toField];
    contact = [propertyCopy contact];
    v6 = [(CKRecipientSelectionController *)self composeRecipientView:toField composeRecipientForContact:contact];
  }

  [(CKRecipientSelectionController *)self addRecipient:v6];
  [(CKRecipientSelectionController *)self _dismissPeoplePicker];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  toField = [(CKRecipientSelectionController *)self toField];
  v7 = [(CKRecipientSelectionController *)self composeRecipientView:toField composeRecipientForContact:contactCopy];

  [(CKRecipientSelectionController *)self addRecipient:v7];
  [(CKRecipientSelectionController *)self _dismissPeoplePicker];
}

- (void)_dismissPeoplePicker
{
  if (self->_contactPickerViewController)
  {
    v3 = +[CKAdaptivePresentationController sharedInstance];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__CKRecipientSelectionController__dismissPeoplePicker__block_invoke;
    v5[3] = &unk_1E72EBA18;
    v5[4] = self;
    [v3 dismissViewControllerAnimated:1 completion:v5];

    [(CKRecipientSelectionController *)self setPeoplePickerHidden:1];
    contactPickerViewController = self->_contactPickerViewController;
    self->_contactPickerViewController = 0;
  }
}

void __54__CKRecipientSelectionController__dismissPeoplePicker__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstResponder];
  [v2 reloadInputViews];

  v4 = [*(a1 + 32) toField];
  v3 = [v4 textView];
  [v3 becomeFirstResponder];
}

- (void)setGameCenterPickerBlock:(id)block
{
  v4 = _Block_copy(block);
  gameCenterPickerBlock = self->_gameCenterPickerBlock;
  self->_gameCenterPickerBlock = v4;

  if (!self->_toFieldPlaceholderLabel)
  {
    toField = [(CKRecipientSelectionController *)self toField];
    textView = [toField textView];
    [textView bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;

    toField2 = [(CKRecipientSelectionController *)self toField];
    labelView = [toField2 labelView];
    [labelView bounds];
    v17 = v16;

    v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v9, v11, v13, v17}];
    [(CKRecipientSelectionController *)self setToFieldPlaceholderLabel:v18];

    [(CKRecipientSelectionController *)self systemMinimumLayoutMargins];
    v20 = v19;
    toField3 = [(CKRecipientSelectionController *)self toField];
    [toField3 titleLabelBaselineAlignmentRectForLabel:self->_toFieldPlaceholderLabel];
    v23 = v22;
    v25 = v24;
    v48 = v26;

    toField4 = [(CKRecipientSelectionController *)self toField];
    addButton = [toField4 addButton];
    [addButton frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    toField5 = [(CKRecipientSelectionController *)self toField];
    [toField5 safeAreaInsets];
    v39 = v20 + v38;

    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v51.origin.x = v30;
      v51.origin.y = v32;
      v51.size.width = v34;
      v51.size.height = v36;
      MaxX = CGRectGetMaxX(v51);
      v41 = v39 + *&v48 - MaxX;
    }

    else
    {
      MaxX = v23 + v39;
      v41 = v30 - (v23 + v39);
    }

    [(UILabel *)self->_toFieldPlaceholderLabel setFrame:MaxX, v25, v41, v17];
    [(UILabel *)self->_toFieldPlaceholderLabel setAutoresizingMask:18];
    toField6 = [(CKRecipientSelectionController *)self toField];
    textView2 = [toField6 textView];
    font = [textView2 font];
    [(UILabel *)self->_toFieldPlaceholderLabel setFont:font];

    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    [(UILabel *)self->_toFieldPlaceholderLabel setTextColor:lightGrayColor];

    v46 = CKFrameworkBundle();
    v47 = [v46 localizedStringForKey:@"GAME_CENTER_TO_FIELD_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UILabel *)self->_toFieldPlaceholderLabel setText:v47];

    [(UILabel *)self->_toFieldPlaceholderLabel setUserInteractionEnabled:0];
    toField7 = [(CKRecipientSelectionController *)self toField];
    [toField7 addSubview:self->_toFieldPlaceholderLabel];
  }
}

- (void)setGameCenterPickedHandles:(id)handles playerNames:(id)names
{
  v38 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  namesCopy = names;
  if ([handlesCopy count] || objc_msgSend(namesCopy, "count"))
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(namesCopy, "count") + objc_msgSend(handlesCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = handlesCopy;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * v13);
          toField = [(CKRecipientSelectionController *)self toField];
          v16 = [(CKRecipientSelectionController *)self composeRecipientView:toField composeRecipientForAddress:v14];

          [v8 addObject:v16];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = namesCopy;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        v21 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * v21);
          v23 = objc_alloc(MEMORY[0x1E6996408]);
          v24 = [v23 initWithContact:0 address:v22 kind:{5, v28}];
          [v8 addObject:v24];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v19);
    }

    [(CKRecipientSelectionController *)self addRecipients:v8];
    _canonicalRecipientAddresses = [(CKRecipientSelectionController *)self _canonicalRecipientAddresses];
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:_canonicalRecipientAddresses withCompletionBlock:0];
  }

  [(CKRecipientSelectionController *)self _dismissPeoplePicker];
  toField2 = [(CKRecipientSelectionController *)self toField];
  inputAccessoryView = [toField2 inputAccessoryView];
  [inputAccessoryView setHidden:0];
}

- (void)reset
{
  toField = [(CKRecipientSelectionController *)self toField];
  [toField reset];

  [(CKRecipientSelectionController *)self setSearchResultsHidden:1];
  [(CKRecipientSelectionController *)self setPeoplePickerHidden:1];
  [(CKRecipientSelectionController *)self stopCheckingRecipientAvailabilityAndRemoveAllTimers];
  self->_didShowOneTimeErrorAlert = 0;
  recipients = [(CKRecipientSelectionController *)self recipients];
  v5 = [recipients copy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__CKRecipientSelectionController_reset__block_invoke;
  v11[3] = &unk_1E72EC570;
  v11[4] = self;
  [v5 enumerateObjectsUsingBlock:v11];
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  tableView = [searchListController tableView];
  [tableView setAlpha:1.0];

  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  [searchListController2 invalidateSearchManager];

  searchListController3 = [(CKRecipientSelectionController *)self searchListController];
  [searchListController3 setEnteredRecipients:0];

  searchListController4 = [(CKRecipientSelectionController *)self searchListController];
  [searchListController4 setSuppressGroupSuggestions:0];
}

- (id)recipients
{
  toField = [(CKRecipientSelectionController *)self toField];
  recipients = [toField recipients];

  return recipients;
}

- (void)setConversation:(id)conversation
{
  v12 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (([(CKPendingConversation *)self->_conversation isEqual:conversationCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_conversation, conversation);
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

    if (isKeyTransparencyEnabled)
    {
      chat = [conversationCopy chat];
      [chat fetchKTStatus];
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = conversationCopy;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Adopting pending conversation %@", &v10, 0xCu);
      }
    }
  }
}

- (void)addRecipients:(id)recipients
{
  v22 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  if (recipientsCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = recipientsCopy;
    v5 = recipientsCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          address = [v9 address];
          v11 = address == 0;

          if (v11 && IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v20 = v9;
              _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "[CKRecipientSelectionController addRecipient] adding recipient %@ with nil address, this will set atom to pending state...", buf, 0xCu);
            }
          }

          toField = [(CKRecipientSelectionController *)self toField];
          [toField addRecipient:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v6);
    }

    recipientsCopy = v14;
  }
}

- (BOOL)isSearchResultsHidden
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];

  if (!searchListController)
  {
    return 1;
  }

  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  isSearchResultsHidden = [searchListController2 isSearchResultsHidden];

  return isSearchResultsHidden;
}

- (void)setEditable:(BOOL)editable
{
  if (self->_editable != editable)
  {
    self->_editable = editable;
    toField = [(CKRecipientSelectionController *)self toField];
    [toField setEditable:self->_editable];

    toField2 = [(CKRecipientSelectionController *)self toField];
    [toField2 setUserInteractionEnabled:self->_editable];

    toField3 = [(CKRecipientSelectionController *)self toField];
    [toField3 setEnabled:self->_editable];

    [(CKRecipientSelectionController *)self _updateToField];
  }
}

- (BOOL)toFieldIsFirstResponder
{
  toField = [(CKRecipientSelectionController *)self toField];
  textView = [toField textView];
  isFirstResponder = [textView isFirstResponder];

  return isFirstResponder;
}

- (void)setSearchResultsHidden:(BOOL)hidden
{
  if (hidden)
  {

    [(CKRecipientSelectionController *)self _hideSearchField];
  }

  else
  {
    toField = [(CKRecipientSelectionController *)self toField];
    textView = [toField textView];
    if ([textView isFirstResponder])
    {
      isPeoplePickerHidden = [(CKRecipientSelectionController *)self isPeoplePickerHidden];

      if (isPeoplePickerHidden)
      {

        [(CKRecipientSelectionController *)self _showSearchField];
      }
    }

    else
    {
    }
  }
}

- (void)invalidateOutstandingIDStatusRequests
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  [searchListController invalidateOutstandingIDStatusRequests];
}

- (BOOL)finishedComposingRecipients
{
  toField = [(CKRecipientSelectionController *)self toField];
  textView = [toField textView];
  isFirstResponder = [textView isFirstResponder];

  if (!isFirstResponder)
  {
    return 1;
  }

  toField2 = [(CKRecipientSelectionController *)self toField];
  text = [toField2 text];

  if (text)
  {
    v8 = [text isEqualToString:&stru_1F04268F8];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)hasFailediMessageRecipients
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (![(CKRecipientSelectionController *)self homogenizePreferredServiceForiMessage])
  {
    recipients = [(CKRecipientSelectionController *)self recipients];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__CKRecipientSelectionController_hasFailediMessageRecipients__block_invoke;
    v6[3] = &unk_1E72EC4D8;
    v6[4] = self;
    v6[5] = &v7;
    [recipients enumerateObjectsUsingBlock:v6];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __61__CKRecipientSelectionController_hasFailediMessageRecipients__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (([*(a1 + 32) isGameCenterRecipient:?] & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E69A5C90] iMessageService];
    LODWORD(v6) = [v6 _availibilityForRecipient:v8 onService:v7];

    if (!v6)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (BOOL)hasUnreachableEmergencyRecipient
{
  v17 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  if ([mEMORY[0x1E699BE70] supportsSMS])
  {

LABEL_13:
    LOBYTE(v6) = 0;
    return v6;
  }

  smsEnabled = [MEMORY[0x1E69A5CA0] smsEnabled];

  if (!smsEnabled)
  {
    goto LABEL_13;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  recipients = [(CKRecipientSelectionController *)self recipients];
  v6 = [recipients countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(recipients);
        }

        rawAddress = [*(*(&v12 + 1) + 8 * i) rawAddress];
        IsEmergencyPhoneNumber = IMStringIsEmergencyPhoneNumber();

        if (IsEmergencyPhoneNumber)
        {
          LOBYTE(v6) = 1;
          goto LABEL_15;
        }
      }

      v6 = [recipients countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v6;
}

- (BOOL)hasPendingiMessageRecipients
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = ![(CKRecipientSelectionController *)self finishedComposingRecipients];
  toField = [(CKRecipientSelectionController *)self toField];
  recipients = [toField recipients];
  if ([recipients count] == 1)
  {
    toField2 = [(CKRecipientSelectionController *)self toField];
    recipients2 = [toField2 recipients];
    firstObject = [recipients2 firstObject];
    isGroup = [firstObject isGroup];
  }

  else
  {
    isGroup = 0;
  }

  if ((v14[3] & 1) == 0 && (([(CKRecipientSelectionController *)self homogenizePreferredServiceForiMessage]| isGroup) & 1) == 0)
  {
    recipients3 = [(CKRecipientSelectionController *)self recipients];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CKRecipientSelectionController_hasPendingiMessageRecipients__block_invoke;
    v12[3] = &unk_1E72EC4D8;
    v12[4] = self;
    v12[5] = &v13;
    [recipients3 enumerateObjectsUsingBlock:v12];
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void __62__CKRecipientSelectionController_hasPendingiMessageRecipients__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (([*(a1 + 32) isGameCenterRecipient:?] & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E69A5C90] iMessageService];
    LODWORD(v6) = [v6 _availibilityForRecipient:v8 onService:v7];

    if (v6 == -1)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (void)stopCheckingRecipientAvailabilityAndRemoveAllTimers
{
  recipientAvailibityTimers = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
  allValues = [recipientAvailibityTimers allValues];
  [allValues enumerateObjectsUsingBlock:&__block_literal_global_470];

  recipientAvailibityTimers2 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
  [recipientAvailibityTimers2 removeAllObjects];
}

- (double)collapsedHeight
{
  [MEMORY[0x1E6996428] preferredHeight];
  v4 = v3;
  v5 = +[CKUIBehavior sharedBehaviors];
  recipientSelectionCollapsedHeightIncludesNavigationBar = [v5 recipientSelectionCollapsedHeightIncludesNavigationBar];
  v7 = 0.0;
  if (recipientSelectionCollapsedHeightIncludesNavigationBar)
  {
    [(CKRecipientSelectionController *)self _navigationBarInsets];
  }

  v8 = v4 + v7;

  return v8;
}

- (double)selectionFieldsHeight
{
  fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView frame];
  v4 = v3;

  return v4;
}

- (double)glassPlatterCornerRadius
{
  toField = [(CKRecipientSelectionController *)self toField];
  numberOfRowsOfTextInField = [toField numberOfRowsOfTextInField];

  if (numberOfRowsOfTextInField < 2)
  {
    [(CKRecipientSelectionController *)self selectionFieldsHeight];
    return v9 * 0.5;
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 newComposeRoundedRectPlatterCornerRadius];
    v7 = v6;

    return v7;
  }
}

- (UIEdgeInsets)glassPlatterLayoutMargins
{
  [(CKRecipientSelectionController *)self systemMinimumLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(CKRecipientSelectionController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (!effectiveUserInterfaceLayoutDirection)
  {
    v6 = v10;
  }

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 fieldPlatterMarginInsetsForLayoutMargins:{v4, v13, v8, v6}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  delegate = [(CKRecipientSelectionController *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    delegate2 = [(CKRecipientSelectionController *)self delegate];
    v26 = [delegate2 recipientSelectionControllerShouldDisableTopFieldInsets:self];

    if (v26)
    {
      v16 = 0.0;
    }
  }

  v27 = v16;
  v28 = v18;
  v29 = v20;
  v30 = v22;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

- (void)_updateContainerCornerRadiusIfNeeded
{
  [(CKRecipientSelectionController *)self glassPlatterCornerRadius];
  v4 = v3;
  fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
  layer = [fieldStackContainerView layer];
  [layer setCornerRadius:v4];

  v7 = *MEMORY[0x1E69796E8];
  fieldStackContainerView2 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  layer2 = [fieldStackContainerView2 layer];
  [layer2 setCornerCurve:v7];
}

- (void)refreshComposeSendingServiceForAddresses:(id)addresses context:(id)context withCompletionBlock:(id)block
{
  addressesCopy = addresses;
  contextCopy = context;
  blockCopy = block;
  if (!contextCopy)
  {
    contextCopy = objc_alloc_init(CKPendingConversationStatusRefreshContext);
  }

  availabilities = [(CKPendingConversationStatusRefreshContext *)contextCopy availabilities];

  if (!availabilities)
  {
    expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
    [(CKPendingConversationStatusRefreshContext *)contextCopy setAvailabilities:expandedRecipientAvailabilities];
  }

  conversation = [(CKRecipientSelectionController *)self conversation];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__CKRecipientSelectionController_refreshComposeSendingServiceForAddresses_context_withCompletionBlock___block_invoke;
  v15[3] = &unk_1E72EC5B8;
  v15[4] = self;
  v16 = blockCopy;
  v14 = blockCopy;
  [conversation refreshComposeSendingServiceForAddresses:addressesCopy context:contextCopy withCompletionBlock:v15];
}

void __103__CKRecipientSelectionController_refreshComposeSendingServiceForAddresses_context_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  if (a5)
  {
    [*(a1 + 32) recipientAvailabilitiesDidUpdate];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Refreshed compose sending service but availabilities did not change.", v17, 2u);
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v13, v14, a4, a6, a7);
  }
}

- (void)refreshComposeSendingServiceForAddresses:(id)addresses withCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __95__CKRecipientSelectionController_refreshComposeSendingServiceForAddresses_withCompletionBlock___block_invoke;
    v8[3] = &unk_1E72EC5E0;
    v9 = blockCopy;
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:addresses context:0 withCompletionBlock:v8];
  }

  else
  {
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:addresses context:0 withCompletionBlock:0];
  }
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (recipientCopy)
  {
    if (([MEMORY[0x1E69A8020] supportsBusinessChat] & 1) != 0 || (objc_msgSend(recipientCopy, "rawAddress"), v5 = objc_claimAutoreleasedReturnValue(), IMChatCanonicalIDSIDsForAddress(), v6 = objc_claimAutoreleasedReturnValue(), v7 = MEMORY[0x193AF5D00](), v6, v5, !v7))
    {
      toField = [(CKRecipientSelectionController *)self toField];
      [toField addRecipient:recipientCopy];

      _canonicalRecipientAddresses = [(CKRecipientSelectionController *)self _canonicalRecipientAddresses];
      conversation = [(CKRecipientSelectionController *)self conversation];
      sendingService = [conversation sendingService];
      iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];

      if (sendingService == iMessageService)
      {
        v18 = 0;
      }

      else
      {
        v13 = MEMORY[0x1E695DFD8];
        iMessageService2 = [MEMORY[0x1E69A5CA0] iMessageService];
        internalName = [iMessageService2 internalName];
        rcsService = [MEMORY[0x1E69A5CA0] rcsService];
        internalName2 = [rcsService internalName];
        v18 = [v13 setWithObjects:{internalName, internalName2, 0}];
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        autocompleteResult = [recipientCopy autocompleteResult];
        identifier = [autocompleteResult identifier];

        mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
        v23 = [mEMORY[0x1E69A5AF8] existingChatWithGUID:identifier];

        if (v23)
        {
          mEMORY[0x1E69A5CA8] = [MEMORY[0x1E69A5CA8] sharedController];
          v25 = [mEMORY[0x1E69A5CA8] reachabilityContextForChat:v23];
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = [CKPendingConversationStatusRefreshContext alloc];
      expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
      v28 = [(CKPendingConversationStatusRefreshContext *)v26 initWithAvailabilities:expandedRecipientAvailabilities];

      [(CKPendingConversationStatusRefreshContext *)v28 setCustomContext:v25];
      [(CKPendingConversationStatusRefreshContext *)v28 setIsForPendingConversation:(isKindOfClass & 1) == 0];
      [(CKPendingConversationStatusRefreshContext *)v28 setPreconditionsIgnoredForServices:v18];
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Refreshing compose service with CKPendingConversationStatusRefreshContext after adding recipient.", buf, 2u);
        }
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __47__CKRecipientSelectionController_addRecipient___block_invoke;
      v30[3] = &unk_1E72EC608;
      v30[4] = self;
      v31 = recipientCopy;
      [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:_canonicalRecipientAddresses context:v28 withCompletionBlock:v30];
    }

    else
    {
      [(CKRecipientSelectionController *)self _presentBusinessChatNotSupportedError];
    }
  }
}

uint64_t __47__CKRecipientSelectionController_addRecipient___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a6 == 1 && a5)
  {
    v7 = result;
    [*(result + 32) _showOneTimeErrorAlertForAddedRecipient:*(result + 40) service:a2 withError:1];
    v8 = *(v7 + 32);

    return [v8 _adjustToFieldPositionIfNecessary];
  }

  return result;
}

- (void)removeRecipient:(id)recipient
{
  recipientCopy = recipient;
  [(CKRecipientSelectionController *)self _removeAvailabilityTimeoutTimerForRecipient:recipientCopy];
  toField = [(CKRecipientSelectionController *)self toField];
  [toField removeRecipient:recipientCopy];

  _canonicalRecipientAddresses = [(CKRecipientSelectionController *)self _canonicalRecipientAddresses];
  [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:_canonicalRecipientAddresses withCompletionBlock:0];
}

- (id)_canonicalRecipientAddresses
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  recipients = [(CKRecipientSelectionController *)self recipients];
  v5 = [recipients countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(recipients);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          composeRecipients = [v9 composeRecipients];
        }

        else if ([v9 isGroup])
        {
          composeRecipients = [v9 children];
        }

        else
        {
          if ([(CKRecipientSelectionController *)self isGameCenterRecipient:v9])
          {
            v11 = 0;
            goto LABEL_14;
          }

          v18 = v9;
          composeRecipients = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
        }

        v11 = composeRecipients;
LABEL_14:
        v12 = [v11 __imArrayByApplyingBlock:&__block_literal_global_479_0];
        [array addObjectsFromArray:v12];
      }

      v6 = [recipients countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  return array;
}

- (BOOL)_shouldDisableToField
{
  conversation = [(CKRecipientSelectionController *)self conversation];
  isBusinessConversation = [conversation isBusinessConversation];

  conversation2 = [(CKRecipientSelectionController *)self conversation];
  LOBYTE(conversation) = [conversation2 isStewieConversation];

  return isBusinessConversation | conversation;
}

- (void)_updateToField
{
  toField = [(CKRecipientSelectionController *)self toField];
  _toFieldCollapsedTextColor = [(CKRecipientSelectionController *)self _toFieldCollapsedTextColor];
  [toField setInactiveTextColor:_toFieldCollapsedTextColor];

  toField2 = [(CKRecipientSelectionController *)self toField];
  addButton = [toField2 addButton];
  conversation = [(CKRecipientSelectionController *)self conversation];
  [addButton setEnabled:{objc_msgSend(conversation, "canInsertMoreRecipients")}];

  toField3 = [(CKRecipientSelectionController *)self toField];
  [toField3 invalidateAtomPresentationOptions];

  if ([(CKRecipientSelectionController *)self _shouldDisableToField])
  {
    toField4 = [(CKRecipientSelectionController *)self toField];
    addButton2 = [toField4 addButton];
    [addButton2 setHidden:1];

    toField5 = [(CKRecipientSelectionController *)self toField];
    textView = [toField5 textView];
    [textView setEditable:0];
  }

  [(CKRecipientSelectionController *)self _refreshActionSheet];
  searchListController = [(CKRecipientSelectionController *)self searchListController];

  if (searchListController)
  {
    searchListController2 = [(CKRecipientSelectionController *)self searchListController];
    recipients = [(CKRecipientSelectionController *)self recipients];
    [searchListController2 setEnteredRecipients:recipients];
  }

  toFieldScrollingView = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [toFieldScrollingView frame];
  v18 = v17;

  if (CKIsRunningInMacCatalyst())
  {
    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 toFieldXOffset];

    [(CKRecipientSelectionController *)self glassPlatterLayoutMargins];
    v21 = v20;
  }

  else
  {
    [(CKRecipientSelectionController *)self _navigationBarInsets];
    v23 = v22;
    [(CKRecipientSelectionController *)self glassPlatterLayoutMargins];
    v21 = v23 + v24;
    if (![(CKRecipientSelectionController *)self shouldHideFromField])
    {
      [(UIView *)self->_fromFieldContainerView bounds];
      v18 = v18 + v25;
    }
  }

  view = [(CKRecipientSelectionController *)self view];
  [view bounds];
  v28 = v27;

  [(CKRecipientSelectionController *)self glassPlatterLayoutMargins];
  v30 = v29;
  v32 = v28 - (v29 + v31);
  fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView setFrame:{v30, v21, v32, v18}];

  [(CKRecipientSelectionController *)self _updateContainerCornerRadiusIfNeeded];
  toField6 = [(CKRecipientSelectionController *)self toField];
  [toField6 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;

  if (CKIsRunningInMacCatalyst())
  {
    [(CKRecipientSelectionController *)self composeRecipientViewOriginY];
    v38 = v41;
  }

  toField7 = [(CKRecipientSelectionController *)self toField];
  [toField7 setFrame:{v36, v38, v32, v40}];

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __48__CKRecipientSelectionController__updateToField__block_invoke;
  v43[3] = &unk_1E72EBA18;
  v43[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v43];
  [(CKRecipientSelectionController *)self _adjustToFieldSeparatorInsetsIfNecessary];
}

- (void)_updateToFieldRecipientsData
{
  v20 = *MEMORY[0x1E69E9840];
  toField = [(CKRecipientSelectionController *)self toField];
  [toField clearText];

  recipients = [(CKRecipientSelectionController *)self recipients];
  v5 = [recipients copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = +[CKRecipientGenerator sharedRecipientGenerator];
        v13 = [(CKRecipientSelectionController *)self _addressForRecipient:v11];
        v14 = [v12 recipientWithAddress:v13];

        if (v14)
        {
          [(CKRecipientSelectionController *)self removeRecipient:v11];
          [(CKRecipientSelectionController *)self addRecipient:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(CKRecipientSelectionController *)self _updateToField];
}

- (void)updateScrollPocketInteractionsIfNeeded
{
  v24 = *MEMORY[0x1E69E9840];
  delegate = [(CKRecipientSelectionController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKRecipientSelectionController *)self delegate];
    v6 = [delegate2 associatedScrollViewForRecipientSelectionController:self];
  }

  else
  {
    v6 = 0;
  }

  associatedScrollViewPocketInteraction = [(CKRecipientSelectionController *)self associatedScrollViewPocketInteraction];
  _scrollView = [associatedScrollViewPocketInteraction _scrollView];

  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v20 = 134218240;
    v21 = _scrollView;
    v22 = 2048;
    v23 = v6;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "-updateScrollPocketInteractionsIfNeeded called. Transitioning from scrollViews %p to %p.", &v20, 0x16u);
  }

  if (_scrollView != v6)
  {
    associatedScrollViewPocketInteraction2 = [(CKRecipientSelectionController *)self associatedScrollViewPocketInteraction];
    view = [associatedScrollViewPocketInteraction2 view];
    [view removeInteraction:associatedScrollViewPocketInteraction2];

    [(CKRecipientSelectionController *)self setAssociatedScrollViewPocketInteraction:0];
    v12 = v6;
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:v12 edge:1 style:1];
      fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [fieldStackContainerView addInteraction:v13];

      [(CKRecipientSelectionController *)self setAssociatedScrollViewPocketInteraction:v13];
    }
  }

  contactSearchScrollViewPocketInteraction = [(CKRecipientSelectionController *)self contactSearchScrollViewPocketInteraction];

  if (!contactSearchScrollViewPocketInteraction)
  {
    searchListController = [(CKRecipientSelectionController *)self searchListController];
    tableView = [searchListController tableView];

    if (tableView)
    {
      v18 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:tableView edge:1 style:1];
      fieldStackContainerView2 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [fieldStackContainerView2 addInteraction:v18];

      [(CKRecipientSelectionController *)self setContactSearchScrollViewPocketInteraction:v18];
    }
  }
}

- (void)_updateYOriginSearchListController
{
  view = [(CKRecipientSelectionController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  separator = [(CKRecipientSelectionController *)self separator];
  [separator frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if ([(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    toField = [(CKRecipientSelectionController *)self toField];
    [toField frame];
    v7 = v22;

    toField2 = [(CKRecipientSelectionController *)self toField];
    [toField2 frame];
    v16 = v24;
  }

  searchListController = [(CKRecipientSelectionController *)self searchListController];
  view2 = [searchListController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  separator2 = [(CKRecipientSelectionController *)self separator];
  [separator2 setFrame:{v14, v16, v18, v20}];
}

- (id)_serviceForRecipientPresentationOptions
{
  conversation = [(CKRecipientSelectionController *)self conversation];
  sendingService = [conversation sendingService];
  v4 = sendingService;
  if (sendingService)
  {
    iMessageService = sendingService;
  }

  else
  {
    iMessageService = [MEMORY[0x1E69A5C90] iMessageService];
  }

  v6 = iMessageService;

  return v6;
}

- (unint64_t)_atomPresentationOptionsForRecipient:(id)recipient
{
  v70 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  address = [recipientCopy address];

  if (address)
  {
    if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
    {
      currentConversationContext = [(CKRecipientSelectionController *)self currentConversationContext];

      if (currentConversationContext)
      {
        currentConversationContext2 = [(CKRecipientSelectionController *)self currentConversationContext];
        allowedByContactsHandle = [currentConversationContext2 allowedByContactsHandle];
        normalizedAddress = [recipientCopy normalizedAddress];
        v10 = [allowedByContactsHandle objectForKey:normalizedAddress];

        if (v10 && ![v10 BOOLValue])
        {

          v28 = 0x2000;
          goto LABEL_79;
        }
      }
    }

    conversation = [(CKRecipientSelectionController *)self conversation];
    sendingService = [conversation sendingService];

    _serviceForRecipientPresentationOptions = [(CKRecipientSelectionController *)self _serviceForRecipientPresentationOptions];
    v64 = [(CKRecipientSelectionController *)self _availibilityForRecipient:recipientCopy onService:_serviceForRecipientPresentationOptions];

    iMessageService = [MEMORY[0x1E69A5C90] iMessageService];
    v14 = [(CKRecipientSelectionController *)self _availibilityForRecipient:recipientCopy onService:iMessageService];

    rawAddress = [recipientCopy rawAddress];
    v16 = IMChatCanonicalIDSIDsForAddress();
    _stripFZIDPrefix = [v16 _stripFZIDPrefix];
    v18 = MEMORY[0x193AF5D40]();

    toField = [(CKRecipientSelectionController *)self toField];
    recipients = [toField recipients];
    if ([recipients count] == 1)
    {
      toField2 = [(CKRecipientSelectionController *)self toField];
      recipients2 = [toField2 recipients];
      firstObject = [recipients2 firstObject];
      isGroup = [firstObject isGroup];

      if (isGroup)
      {
        isGroup2 = 1;
        v26 = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }

    delegate = [(CKRecipientSelectionController *)self delegate];
    if ([delegate recipientSelectionIsGroup:self])
    {
      isGroup2 = 1;
    }

    else
    {
      isGroup2 = [recipientCopy isGroup];
    }

    v26 = 0;
LABEL_20:
    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    isSatelliteConnectionActive = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];

    if (isGroup2 & isSatelliteConnectionActive)
    {
      v32 = 0x10000;
LABEL_71:
      if ([(CKRecipientSelectionController *)self shouldShowVerifiedIconForRecipient:recipientCopy])
      {
        v28 = v32 | 0x100000;
      }

      else
      {
        v28 = v32;
      }

      if (IMOSLoggingEnabled())
      {
        v62 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v69 = v28;
          _os_log_impl(&dword_19020E000, v62, OS_LOG_TYPE_INFO, "atomPresentationOptionsForRecipient returning %lu", buf, 0xCu);
        }
      }

      goto LABEL_79;
    }

    if ([(CKRecipientSelectionController *)self isGameCenterRecipient:recipientCopy])
    {
      v32 = 8;
      goto LABEL_71;
    }

    if ([sendingService __ck_isRCS])
    {
      expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
      iDSCanonicalAddress = [recipientCopy IDSCanonicalAddress];
      v35 = [expandedRecipientAvailabilities hasResultsForRecipient:iDSCanonicalAddress];

      if (v35)
      {
        buf[0] = 0;
        expandedRecipientAvailabilities2 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        iDSCanonicalAddress2 = [recipientCopy IDSCanonicalAddress];
        name = [sendingService name];
        v39 = [expandedRecipientAvailabilities2 reachabilityForRecipient:iDSCanonicalAddress2 service:name isFinal:buf];

        expandedRecipientAvailabilities3 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        iDSCanonicalAddress3 = [recipientCopy IDSCanonicalAddress];
        v42 = [expandedRecipientAvailabilities3 reachabilityForRecipient:iDSCanonicalAddress3 service:*MEMORY[0x1E69A7AE0]];

        if (v64 != -1)
        {
          [(CKRecipientSelectionController *)self _removeAvailabilityTimeoutTimerForRecipient:recipientCopy];
        }

        if (v39 && (([v39 isReachable] & 1) != 0 || buf[0] == 1))
        {
          if ([v39 isReachable])
          {
            v32 = 2;
          }

          else if ([v42 isReachable])
          {
            v32 = 2;
          }

          else
          {
            v32 = 1;
          }
        }

        else
        {
          v32 = 6;
        }

        goto LABEL_71;
      }
    }

    if (self->_forceMMS)
    {
      v32 = 2;
      goto LABEL_71;
    }

    if ((v26 | [(CKRecipientSelectionController *)self homogenizePreferredServiceForiMessage]) == 1)
    {
      __ck_isMadrid = [sendingService __ck_isMadrid];
      if (v14 == 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = __ck_isMadrid;
      }

      if (v44)
      {
        v32 = 0;
      }

      else
      {
        v32 = 2;
      }

      children = [recipientCopy children];
      v46 = [children indexOfObjectPassingTest:&__block_literal_global_486_0];

      isGroup3 = [recipientCopy isGroup];
      if (([sendingService __ck_isMadrid] & 1) == 0 && isGroup2 & (v46 != 0x7FFFFFFFFFFFFFFFLL) | (((isGroup3 | v18) & 1) == 0))
      {
        v32 = 1;
      }

      goto LABEL_71;
    }

    v48 = v64;
    if (v64 != -1)
    {
      [(CKRecipientSelectionController *)self _removeAvailabilityTimeoutTimerForRecipient:recipientCopy];
      v48 = v64;
    }

    if (v14 == 1)
    {
      if ((v18 & 1) == 0)
      {
        v49 = 0;
        v32 = ([sendingService __ck_isMadrid] & 1) == 0;
        goto LABEL_69;
      }

      goto LABEL_58;
    }

    if (v48 == -1)
    {
      recipientAvailibityTimers = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
      v52 = [recipientAvailibityTimers objectForKey:recipientCopy];

      if (v52)
      {
        isValid = [v52 isValid];
        v49 = isValid ^ 1;
        if (isValid)
        {
          v32 = 4;
        }

        else
        {
          v32 = 1;
        }
      }

      else
      {
        [(CKRecipientSelectionController *)self _startAvailabilityTimeoutTimerForRecipient:recipientCopy];
        v49 = 0;
        v32 = 4;
      }
    }

    else
    {
      if (v48)
      {
LABEL_58:
        v49 = 0;
        v32 = 0;
        goto LABEL_69;
      }

      v50 = v18 == 0;
      v49 = 1;
      if (v50)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }
    }

LABEL_69:
    v54 = +[CKUIBehavior sharedBehaviors];
    v55 = v49 & [v54 shouldAutomaticallyCheckAvailabilityOfAlternateAddresses];

    if (v55 == 1)
    {
      v56 = [(CKRecipientSelectionController *)self _alternateAddressesForRecipient:recipientCopy];
      v57 = [v56 __imArrayByApplyingBlock:&__block_literal_global_489];
      v58 = [CKPendingConversationStatusRefreshContext alloc];
      expandedRecipientAvailabilities4 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
      v60 = [(CKPendingConversationStatusRefreshContext *)v58 initWithAvailabilities:expandedRecipientAvailabilities4];

      conversation2 = [(CKRecipientSelectionController *)self conversation];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __71__CKRecipientSelectionController__atomPresentationOptionsForRecipient___block_invoke_3;
      v66[3] = &unk_1E72EC670;
      v66[4] = self;
      v67 = recipientCopy;
      [conversation2 refreshStatusForAddresses:v57 context:v60 withCompletionBlock:v66];
    }

    goto LABEL_71;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v69 = recipientCopy;
      _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Recipient (%@) address is nil. Set atom state to pending...", buf, 0xCu);
    }
  }

  v28 = 4;
LABEL_79:

  return v28;
}

uint64_t __71__CKRecipientSelectionController__atomPresentationOptionsForRecipient___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 rawAddress];
  v3 = IMChatCanonicalIDSIDsForAddress();
  v4 = [v3 _stripFZIDPrefix];
  IsEmail = IMStringIsEmail();

  return IsEmail;
}

void __71__CKRecipientSelectionController__atomPresentationOptionsForRecipient___block_invoke_3(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v10 = a2;
  v9 = a3;
  if (a4)
  {
    [*(a1 + 32) _removeAvailabilityTimeoutTimerForRecipient:*(a1 + 40)];
  }

  if (a5)
  {
    [*(a1 + 32) _updateToField];
  }
}

- (BOOL)shouldShowVerifiedIconForRecipient:(id)recipient
{
  recipientCopy = recipient;
  conversation = [(CKRecipientSelectionController *)self conversation];
  chat = [conversation chat];
  v7 = [CKContactKeyVerificationRecipientsHelper shouldShowVerifiedIconForRecipient:recipientCopy inChat:chat];

  return v7;
}

- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification
{
  v26 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (isKeyTransparencyEnabled)
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKey:*MEMORY[0x1E69A5800]];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Status changed for handles: %@", buf, 0xCu);
      }
    }

    recipients = [(CKRecipientSelectionController *)self recipients];
    conversation = [(CKRecipientSelectionController *)self conversation];
    v12 = [CKContactKeyVerificationRecipientsHelper recipientsToUpdateForUpdatedCKVHandles:v8 recipients:recipients inConversation:conversation];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          toField = [(CKRecipientSelectionController *)self toField];
          [toField invalidateAtomPresentationOptionsForRecipient:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (id)_toFieldCollapsedTextColor
{
  v31 = *MEMORY[0x1E69E9840];
  if (![(CKRecipientSelectionController *)self hasFailediMessageRecipients]&& ![(CKRecipientSelectionController *)self hasTimedOutRecipients])
  {
    if ([(CKRecipientSelectionController *)self hasPendingiMessageRecipients])
    {
      __ck_displayColor = 1;
      goto LABEL_24;
    }

    conversation = [(CKRecipientSelectionController *)self conversation];
    isBusinessConversation = [conversation isBusinessConversation];

    if (isBusinessConversation)
    {
      __ck_displayColor = 6;
      goto LABEL_24;
    }

    conversation2 = [(CKRecipientSelectionController *)self conversation];
    isStewieConversation = [conversation2 isStewieConversation];

    if (isStewieConversation)
    {
      __ck_displayColor = 12;
      goto LABEL_24;
    }

    conversation3 = [(CKRecipientSelectionController *)self conversation];
    if ([conversation3 recipientCount] <= 1)
    {
    }

    else
    {
      mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
      isSatelliteConnectionActive = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];

      if (isSatelliteConnectionActive)
      {
        __ck_displayColor = -1;
        goto LABEL_24;
      }
    }

    conversation4 = [(CKRecipientSelectionController *)self conversation];
    sendingService = [conversation4 sendingService];
    __ck_displayColor = [sendingService __ck_displayColor];

LABEL_18:
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __ck_displayColor = 3;
    goto LABEL_24;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  conversation4 = [(CKRecipientSelectionController *)self recipients];
  v4 = [conversation4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(conversation4);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        iDSCanonicalAddress = [v8 IDSCanonicalAddress];
        _appearsToBeEmail = [iDSCanonicalAddress _appearsToBeEmail];

        if (_appearsToBeEmail)
        {
          iMessageService = [MEMORY[0x1E69A5C90] iMessageService];
          v12 = [(CKRecipientSelectionController *)self _availibilityForRecipient:v8 onService:iMessageService];

          if (!v12)
          {
            __ck_displayColor = 3;
            goto LABEL_18;
          }
        }
      }

      v5 = [conversation4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    __ck_displayColor = 0;
    goto LABEL_18;
  }

  __ck_displayColor = 0;
LABEL_24:
  v18 = +[CKUIBehavior sharedBehaviors];
  theme = [v18 theme];
  v20 = [theme recipientTextColorForColorType:__ck_displayColor];

  return v20;
}

- (void)_handleAddressBookChangedNotification:(id)notification
{
  addressBookNotificationUpdater = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
  [addressBookNotificationUpdater setNeedsUpdate];

  toField = [(CKRecipientSelectionController *)self toField];
  textView = [toField textView];
  isEditing = [textView isEditing];

  if ((isEditing & 1) == 0)
  {
    addressBookNotificationUpdater2 = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
    [addressBookNotificationUpdater2 updateIfNeeded];
  }
}

- (void)_handleContactStoreBatchLoadCompleteNotification:(id)notification
{
  addressBookNotificationUpdater = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
  [addressBookNotificationUpdater setNeedsUpdate];

  toField = [(CKRecipientSelectionController *)self toField];
  textView = [toField textView];
  isEditing = [textView isEditing];

  if ((isEditing & 1) == 0)
  {
    addressBookNotificationUpdater2 = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
    [addressBookNotificationUpdater2 updateIfNeeded];
  }
}

- (void)_handleAddressBookPartialChangedNotification:(id)notification
{
  v21 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A6868]];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69A6858]];

  if ([v6 length] && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69A6840]) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69A6848]) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69A6850]) & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    recipients = [(CKRecipientSelectionController *)self recipients];
    v10 = [recipients countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(recipients);
          }

          v14 = [(CKRecipientSelectionController *)self _addressForRecipient:*(*(&v16 + 1) + 8 * i)];
          v15 = [v6 isEqualToString:v14];

          if (v15)
          {
            [(CKRecipientSelectionController *)self _handleAddressBookChangedNotification:notificationCopy];
            goto LABEL_15;
          }
        }

        v11 = [recipients countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

- (void)_handleConversationPreferredServiceDidChangeNotification:(id)notification
{
  v30 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    chat = [object2 chat];
    if (chat)
    {
    }

    else
    {
      conversation = [(CKRecipientSelectionController *)self conversation];
      chat2 = [conversation chat];

      if (!chat2)
      {
        goto LABEL_11;
      }
    }

    conversation2 = [(CKRecipientSelectionController *)self conversation];
    chat3 = [conversation2 chat];
    object3 = [notificationCopy object];
    chat4 = [object3 chat];
    v15 = [chat3 isEqual:chat4];

    if ((v15 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          object4 = [notificationCopy object];
          chat5 = [object4 chat];
          chatIdentifier = [chat5 chatIdentifier];
          conversation3 = [(CKRecipientSelectionController *)self conversation];
          chat6 = [conversation3 chat];
          chatIdentifier2 = [chat6 chatIdentifier];
          v26 = 138412546;
          v27 = chatIdentifier;
          v28 = 2112;
          v29 = chatIdentifier2;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "notification.object %@ conversation.chat %@", &v26, 0x16u);
        }
      }

      conversation4 = [(CKRecipientSelectionController *)self conversation];
      handles = [conversation4 handles];
      v25 = [handles __imArrayByApplyingBlock:&__block_literal_global_495_0];

      [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:v25 withCompletionBlock:0];
    }
  }

LABEL_11:
  [(CKRecipientSelectionController *)self _updateToField];
  [(CKRecipientSelectionController *)self conversationPreferredServiceDidChange];
}

id __91__CKRecipientSelectionController__handleConversationPreferredServiceDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  v3 = IMChatCanonicalIDSIDsForAddress();

  return v3;
}

- (char)_availibilityForRecipient:(id)recipient onService:(id)service
{
  v28 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  serviceCopy = service;
  rawAddress = [recipientCopy rawAddress];
  v9 = IMChatCanonicalIDSIDsForAddress();

  v10 = IMOSLoggingEnabled();
  if (!v9)
  {
    if (v10)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        rawAddress2 = [recipientCopy rawAddress];
        v22 = 138412546;
        v23 = rawAddress2;
        v24 = 2112;
        v25 = recipientCopy;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "IMChatCanonicalIDSIDsForAddress returned nil idsAddress for %@ / %@", &v22, 0x16u);
      }
    }

LABEL_15:
    v16 = -1;
    goto LABEL_17;
  }

  if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      rawAddress3 = [recipientCopy rawAddress];
      v22 = 138412802;
      v23 = rawAddress3;
      v24 = 2112;
      v25 = recipientCopy;
      v26 = 2048;
      v27 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "IDSIDStatus for %@ / %@ returned %ld", &v22, 0x20u);
    }
  }

  expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
  internalName = [serviceCopy internalName];
  v15 = [expandedRecipientAvailabilities idStatusForRecipient:v9 service:internalName];

  if (v15 == 2)
  {
    goto LABEL_10;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69A8020] supportsBusinessChat] & 1) == 0 && (MEMORY[0x193AF5D00](v9))
  {
LABEL_10:
    v16 = 0;
    goto LABEL_17;
  }

  v16 = 1;
LABEL_17:
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      rawAddress4 = [recipientCopy rawAddress];
      v22 = 138412802;
      v23 = rawAddress4;
      v24 = 2112;
      v25 = recipientCopy;
      v26 = 2048;
      v27 = v16;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "availibilityForRecipient %@ / %@ returned as %ld", &v22, 0x20u);
    }
  }

  return v16;
}

- (void)_startAvailabilityTimeoutTimerForRecipient:(id)recipient
{
  v15 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  recipientAvailibityTimers = [(CKRecipientSelectionController *)self recipientAvailibityTimers];

  if (!recipientAvailibityTimers)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    [(CKRecipientSelectionController *)self setRecipientAvailibityTimers:v6];
  }

  v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:recipientCopy forKey:@"recipient"];
  v8 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleRecipientAvailabilityTimeout_ selector:v7 userInfo:0 repeats:30.0];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop addTimer:v8 forMode:*MEMORY[0x1E695D918]];

  recipientAvailibityTimers2 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
  [recipientAvailibityTimers2 setObject:v8 forKey:recipientCopy];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      address = [recipientCopy address];
      v13 = 138412290;
      v14 = address;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Started availability timer for %@", &v13, 0xCu);
    }
  }
}

- (void)_removeAvailabilityTimeoutTimerForRecipient:(id)recipient
{
  v17 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  recipientAvailibityTimers = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
  v6 = [recipientAvailibityTimers objectForKey:recipientCopy];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      address = [recipientCopy address];
      isValid = [v6 isValid];
      v10 = @"NO";
      if (isValid)
      {
        v10 = @"YES";
      }

      v13 = 138412546;
      v14 = address;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Cancelling availability timer for %@ (was valid: %@)", &v13, 0x16u);
    }
  }

  if (v6)
  {
    recipientAvailibityTimers2 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
    [recipientAvailibityTimers2 removeObjectForKey:recipientCopy];

    [v6 invalidate];
  }

  delegate = [(CKRecipientSelectionController *)self delegate];
  [delegate recipientSelectionController:self didFinishAvailaiblityLookupForRecipient:recipientCopy];
}

- (void)_handleRecipientAvailabilityTimeout:(id)timeout
{
  v21 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  userInfo = [timeoutCopy userInfo];
  v6 = [userInfo objectForKey:@"recipient"];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      address = [v6 address];
      *buf = 138412290;
      v20 = address;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Timeout of availability timer for %@", buf, 0xCu);
    }
  }

  if (CKShowInternalErrors())
  {
    rawAddress = [v6 rawAddress];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"RECIPIENT_AVAILABILITY_TIMEOUT_ERROR_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    v13 = [v10 stringWithFormat:v12, rawAddress];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    LODWORD(v12) = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

    if (v12)
    {
      v15 = @"\u200F";
    }

    else
    {
      v15 = @"\u200E";
    }

    v16 = [(__CFString *)v15 stringByAppendingString:v13];

    v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:v16 forKey:*MEMORY[0x1E696A578]];
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.MobileSMS.CKRecipientAvailabilityTimeout" code:1 userInfo:v17];
    CKShowError(v18, self);
  }

  [timeoutCopy invalidate];
  [(CKRecipientSelectionController *)self _updateToField];
}

- (BOOL)hasTimedOutRecipients
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (![(CKRecipientSelectionController *)self homogenizePreferredServiceForiMessage])
  {
    recipients = [(CKRecipientSelectionController *)self recipients];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__CKRecipientSelectionController_hasTimedOutRecipients__block_invoke;
    v6[3] = &unk_1E72EC4D8;
    v6[4] = self;
    v6[5] = &v7;
    [recipients enumerateObjectsUsingBlock:v6];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __55__CKRecipientSelectionController_hasTimedOutRecipients__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 recipientAvailibityTimers];
  v11 = [v8 objectForKey:v7];

  v9 = v11;
  if (v11)
  {
    v10 = [v11 isValid];
    v9 = v11;
    if ((v10 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (id)_recipientCausingTooManyRecipientsError
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  recipients = [(CKRecipientSelectionController *)self recipients];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__CKRecipientSelectionController__recipientCausingTooManyRecipientsError__block_invoke;
  v6[3] = &unk_1E72EC4D8;
  v6[4] = self;
  v6[5] = &v7;
  [recipients enumerateObjectsWithOptions:2 usingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __73__CKRecipientSelectionController__recipientCausingTooManyRecipientsError__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E69A5C90] iMessageService];
  LODWORD(v7) = [v7 _availibilityForRecipient:v9 onService:v8];

  if (!v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_showOneTimeErrorAlertForAddedRecipient:(id)recipient service:(id)service withError:(int64_t)error
{
  recipientCopy = recipient;
  serviceCopy = service;
  v10 = serviceCopy;
  if (error != 1 || self->_didShowOneTimeErrorAlert)
  {
    goto LABEL_32;
  }

  if (serviceCopy)
  {
    if ([serviceCopy __ck_isiMessage])
    {
LABEL_5:
      v11 = CKFrameworkBundle();
      v12 = [v11 localizedStringForKey:@"ADDRESS_LIST_FULL" value:&stru_1F04268F8 table:@"ChatKit"];

      iMessageService = [MEMORY[0x1E69A5C90] iMessageService];
      lastAddressedHandle = [(CKConversation *)self->_conversation lastAddressedHandle];
      lastAddressedSIMID = [(CKConversation *)self->_conversation lastAddressedSIMID];
      v16 = [iMessageService __ck_maxRecipientCountForHandle:lastAddressedHandle simID:lastAddressedSIMID];

      v17 = MEMORY[0x1E696ADA0];
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
      v19 = [v17 localizedStringFromNumber:v18 numberStyle:1];

      v20 = MEMORY[0x1E696AEC0];
      v21 = CKFrameworkBundle();
      v22 = [v21 localizedStringForKey:@"ERR_TOO_MANY_RECIPIENTS_FOR_IMESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
      v23 = [v20 stringWithFormat:v22, v19];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v26 = @"\u200F";
      }

      else
      {
        v26 = @"\u200E";
      }

      v27 = [(__CFString *)v26 stringByAppendingString:v23];
      goto LABEL_29;
    }
  }

  else
  {
    previousSendingService = [(CKPendingConversation *)self->_conversation previousSendingService];
    __ck_isiMessage = [previousSendingService __ck_isiMessage];

    if (__ck_isiMessage)
    {
      goto LABEL_5;
    }
  }

  if ([(CKRecipientSelectionController *)self _availibilityForRecipient:recipientCopy onService:v10])
  {
    _recipientCausingTooManyRecipientsError = [(CKRecipientSelectionController *)self _recipientCausingTooManyRecipientsError];
  }

  else
  {
    _recipientCausingTooManyRecipientsError = recipientCopy;
  }

  v23 = _recipientCausingTooManyRecipientsError;
  smsService = [MEMORY[0x1E69A5CA0] smsService];
  v32 = [(CKRecipientSelectionController *)self _availibilityForRecipient:recipientCopy onService:smsService];

  if (v32 == 1)
  {
    smsService2 = [MEMORY[0x1E69A5CA0] smsService];
  }

  else if (v10)
  {
    smsService2 = v10;
  }

  else
  {
    smsService2 = [(CKPendingConversation *)self->_conversation previousSendingService];
  }

  v34 = smsService2;
  compositeName = [v23 compositeName];
  lastAddressedHandle2 = [(CKConversation *)self->_conversation lastAddressedHandle];
  lastAddressedSIMID2 = [(CKConversation *)self->_conversation lastAddressedSIMID];
  v60 = v34;
  v38 = [v34 __ck_maxRecipientCountForHandle:lastAddressedHandle2 simID:lastAddressedSIMID2];

  v39 = MEMORY[0x1E696ADA0];
  v40 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
  v19 = [v39 localizedStringFromNumber:v40 numberStyle:1];

  if (compositeName && ([compositeName isEqualToString:&stru_1F04268F8] & 1) == 0)
  {
    v43 = MEMORY[0x1E696AEC0];
    v44 = CKFrameworkBundle();
    v45 = [v44 localizedStringForKey:@"CANNOT_ADD_RECIPIENT_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v41 = [v43 stringWithFormat:v45, compositeName];

    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection2 == 1)
    {
      v48 = @"\u200F";
    }

    else
    {
      v48 = @"\u200E";
    }

    v42 = [(__CFString *)v48 stringByAppendingString:v41];
  }

  else
  {
    v41 = CKFrameworkBundle();
    v42 = [v41 localizedStringForKey:@"CANNOT_ADD_RECIPIENT" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v12 = v42;

  v49 = MEMORY[0x1E696AEC0];
  v50 = CKFrameworkBundle();
  v51 = [v50 localizedStringForKey:@"ERR_ALL_RECIPIENTS_NEED_IMESSAGE_OR_RCS" value:&stru_1F04268F8 table:@"ChatKit"];
  v52 = [v49 stringWithFormat:v51, v19];

  mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection3 = [mEMORY[0x1E69DC668]3 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection3 == 1)
  {
    v55 = @"\u200F";
  }

  else
  {
    v55 = @"\u200E";
  }

  v27 = [(__CFString *)v55 stringByAppendingString:v52];

LABEL_29:
  v56 = CKFrameworkBundle();
  v57 = [v56 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];

  objc_initWeak(&location, self);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __92__CKRecipientSelectionController__showOneTimeErrorAlertForAddedRecipient_service_withError___block_invoke;
  v61[3] = &unk_1E72EC698;
  objc_copyWeak(&v62, &location);
  v58 = CKCreateAlertControllerWithError(0, v12, v27, v57, v61);
  v59 = v58;
  if (v58)
  {
    [v58 presentFromViewController:self animated:1 completion:0];
  }

  self->_didShowOneTimeErrorAlert = 1;

  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);

LABEL_32:
}

void __92__CKRecipientSelectionController__showOneTimeErrorAlertForAddedRecipient_service_withError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained toField];
  v2 = [v1 textView];
  [v2 becomeFirstResponder];
}

- (void)_presentBusinessChatNotSupportedError
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"CANNOT_USE_MESSAGES_FOR_BUSINESS" value:&stru_1F04268F8 table:@"ChatKit"];
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"BUSINESS_CHAT_IS_CURRENTLY_NOT_SUPPORTED" value:&stru_1F04268F8 table:@"ChatKit"];
  v10 = [CKAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [CKAlertAction actionWithTitle:v8 style:0 handler:0];

  [v10 addAction:v9];
  [v10 setPreferredAction:v9];
  [v10 presentFromViewController:self animated:1 completion:0];
}

- (void)_refreshActionSheet
{
  v13 = +[CKUIBehavior sharedBehaviors];
  if ([v13 shouldRefreshAlternateAddressesSheet])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    shouldAutomaticallyCheckAvailabilityOfAlternateAddresses = [v3 shouldAutomaticallyCheckAvailabilityOfAlternateAddresses];

    if (!shouldAutomaticallyCheckAvailabilityOfAlternateAddresses)
    {
      return;
    }

    toField = [(CKRecipientSelectionController *)self toField];
    toField2 = [(CKRecipientSelectionController *)self toField];
    textView = [toField2 textView];
    selectedRange = [textView selectedRange];
    v13 = [toField atomViewsInRange:{selectedRange, v9}];

    if ([v13 count] == 1)
    {
      v10 = [v13 objectAtIndex:0];
      recipient = [v10 recipient];

      if (recipient)
      {
        recipient2 = [v10 recipient];
        [(CKRecipientSelectionController *)self _showActionSheetForRecipient:recipient2 animated:0];
      }
    }
  }
}

- (void)presentAlternateAddressesAlertForRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = [(CKRecipientSelectionController *)self _alternateiMessagableAddressesForRecipient:recipientCopy];
  if ([recipientCopy isEmail])
  {
    [recipientCopy uncommentedAddress];
  }

  else
  {
    [recipientCopy commentedAddress];
  }
  v30 = ;
  v6 = MEMORY[0x1E696AEC0];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ADDRESS_NOT_REGISTERED_WITH_MADRID" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"MADRID" value:&stru_1F04268F8 table:@"ChatKit"];
  v11 = [v6 stringWithFormat:v8, v30, v10];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v14 = @"\u200F";
  }

  else
  {
    v14 = @"\u200E";
  }

  v32 = [(__CFString *)v14 stringByAppendingString:v11];

  v15 = [CKAlertController alertControllerWithTitle:v32 message:0 preferredStyle:0];
  toField = [(CKRecipientSelectionController *)self toField];
  v17 = [toField atomViewForRecipient:recipientCopy];

  allKeys = [v5 allKeys];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __77__CKRecipientSelectionController_presentAlternateAddressesAlertForRecipient___block_invoke;
  v38[3] = &unk_1E72EC6E8;
  v39 = v15;
  v40 = v5;
  selfCopy = self;
  v19 = recipientCopy;
  v42 = v19;
  v31 = v5;
  v20 = v15;
  [allKeys enumerateObjectsUsingBlock:v38];

  v21 = CKFrameworkBundle();
  v22 = [v21 localizedStringForKey:@"REMOVE" value:&stru_1F04268F8 table:@"ChatKit"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __77__CKRecipientSelectionController_presentAlternateAddressesAlertForRecipient___block_invoke_3;
  v36[3] = &unk_1E72EC710;
  v36[4] = self;
  v37 = v19;
  v23 = v19;
  v24 = [CKAlertAction actionWithTitle:v22 style:2 handler:v36];
  [v20 addAction:v24];

  v25 = CKFrameworkBundle();
  v26 = [v25 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __77__CKRecipientSelectionController_presentAlternateAddressesAlertForRecipient___block_invoke_4;
  v33[3] = &unk_1E72EC710;
  v34 = v17;
  selfCopy2 = self;
  v27 = v17;
  v28 = [CKAlertAction actionWithTitle:v26 style:1 handler:v33];
  [v20 addAction:v28];

  popoverPresentationController = [v20 popoverPresentationController];
  [popoverPresentationController setSourceView:v27];

  [v20 presentFromViewController:self animated:1 completion:0];
  [v27 setSelected:1 animated:1];
  [(CKRecipientSelectionController *)self setAlternateAddressesAlertController:v20];
}

void __77__CKRecipientSelectionController_presentAlternateAddressesAlertForRecipient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"USE_ALTERNATE_MADRID_ADDRESS" value:&stru_1F04268F8 table:@"ChatKit"];
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

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__CKRecipientSelectionController_presentAlternateAddressesAlertForRecipient___block_invoke_2;
  v16[3] = &unk_1E72EC6C0;
  v12 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = v3;
  v13 = *(a1 + 56);
  v19 = *(a1 + 48);
  v20 = v13;
  v14 = v3;
  v15 = [CKAlertAction actionWithTitle:v11 style:0 handler:v16];
  [v12 addAction:v15];
}

void __77__CKRecipientSelectionController_presentAlternateAddressesAlertForRecipient___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  [*(a1 + 48) removeRecipient:*(a1 + 56)];
  [*(a1 + 48) addRecipient:v2];
}

void __77__CKRecipientSelectionController_presentAlternateAddressesAlertForRecipient___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setSelected:0 animated:1];
  v3 = [*(a1 + 40) toField];
  v2 = [v3 textView];
  [v2 becomeFirstResponder];
}

- (void)_showActionSheetForRecipient:(id)recipient animated:(BOOL)animated
{
  recipientCopy = recipient;
  iMessageService = [MEMORY[0x1E69A5C90] iMessageService];
  v6 = [(CKRecipientSelectionController *)self _availibilityForRecipient:recipientCopy onService:iMessageService];

  if (!v6 && !CKIsRunningInMacCatalyst())
  {
    conversation = [(CKRecipientSelectionController *)self conversation];
    sendingService = [conversation sendingService];
    __ck_isiMessage = [sendingService __ck_isiMessage];

    if (__ck_isiMessage)
    {
      [(CKRecipientSelectionController *)self presentAlternateAddressesAlertForRecipient:recipientCopy];
    }
  }
}

- (id)_alternateAddressesForRecipient:(id)recipient
{
  v32[2] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = *MEMORY[0x1E695C330];
  v32[0] = *MEMORY[0x1E695C208];
  v32[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v7 = [recipientCopy contactWithKeysToFetch:v6];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  phoneNumbers = [v7 phoneNumbers];
  v9 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        value = [*(*(&v26 + 1) + 8 * i) value];
        stringValue = [value stringValue];
        [v4 addObject:stringValue];
      }

      v10 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  emailAddresses = [v7 emailAddresses];
  v16 = [emailAddresses countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(emailAddresses);
        }

        value2 = [*(*(&v22 + 1) + 8 * j) value];
        [v4 addObject:value2];
      }

      v17 = [emailAddresses countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  return v4;
}

- (id)_alternateiMessagableAddressesForRecipient:(id)recipient
{
  v4 = [(CKRecipientSelectionController *)self _alternateAddressesForRecipient:recipient];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__CKRecipientSelectionController__alternateiMessagableAddressesForRecipient___block_invoke;
  v12[3] = &unk_1E72EC738;
  v12[4] = self;
  v13 = iMessageService;
  v7 = v5;
  v14 = v7;
  v8 = iMessageService;
  [v4 enumerateObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __77__CKRecipientSelectionController__alternateiMessagableAddressesForRecipient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CKRecipientGenerator sharedRecipientGenerator];
  v6 = [v4 recipientWithAddress:v3];

  if ([v6 isEmail])
  {
    [v6 uncommentedAddress];
  }

  else
  {
    [v6 commentedAddress];
  }
  v5 = ;
  if ([*(a1 + 32) _availibilityForRecipient:v6 onService:*(a1 + 40)] == 1)
  {
    [*(a1 + 48) setObject:v6 forKey:v5];
  }
}

- (void)_showDetailsForGroup:(id)group
{
  v4 = MEMORY[0x1E69963A8];
  groupCopy = group;
  v7 = objc_alloc_init(v4);
  [v7 setGroup:groupCopy];

  [v7 setDelegate:self];
  [(CKRecipientSelectionController *)self setPreventAtomization:1];
  navigationController = [(CKRecipientSelectionController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
}

- (void)_showDetailsForRecipient:(id)recipient canDelete:(BOOL)delete
{
  deleteCopy = delete;
  v44[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  contact = [recipientCopy contact];
  if (!contact)
  {
    rawAddress = [recipientCopy rawAddress];
    v9 = IMStripFormattingFromAddress();

    mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
    v17 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddress:v9];
    v14 = [v17 imHandleWithID:v9 alreadyCanonical:0];

    if ([v14 isChatBot])
    {
      v13 = [[CKChatBotInfoController alloc] initWithHandle:v14 fallbackHandle:v9];
LABEL_16:
      contact = 0;
      goto LABEL_17;
    }

    v18 = [[CKEntity alloc] initWithIMHandle:v14];
    address = [recipientCopy address];
    v32 = IMStripFormattingFromAddress();

    v20 = [v14 cnContactWithKeys:MEMORY[0x1E695E0F0]];
    location = 0;
    p_location = &location;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__3;
    v42 = __Block_byref_object_dispose__3;
    v43 = 0;
    v37 = 0;
    v13 = [(CKEntity *)v18 personViewControllerWithDelegate:self isUnknown:&v37];
    [(CKChatBotInfoController *)v13 setAllowsActions:0];
    if (deleteCopy && [recipientCopy isRemovableFromSearchResults])
    {
      [(CKRecipientSelectionController *)self setRecentContactForPresentedCNCard:recipientCopy];
      if (v37 != 1)
      {
LABEL_13:
        if (p_location[5])
        {
          propertyType = [(CKEntity *)v18 propertyType];
          [(CKChatBotInfoController *)v13 highlightPropertyWithKey:propertyType identifier:p_location[5]];
        }

        _Block_object_dispose(&location, 8);
        goto LABEL_16;
      }

      contentViewController = [(CKChatBotInfoController *)v13 contentViewController];
      v22 = CKFrameworkBundle();
      v31 = [v22 localizedStringForKey:@"REMOVE_RECENT" value:&stru_1F04268F8 table:@"ChatKit"];
      cardBottomGroup = [contentViewController cardBottomGroup];
      [contentViewController addActionWithTitle:v31 target:self selector:sel__removeRecent inGroup:cardBottomGroup destructive:1];
    }

    else
    {
      propertyType2 = [(CKEntity *)v18 propertyType];
      contentViewController = [v20 valueForKey:propertyType2];

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __69__CKRecipientSelectionController__showDetailsForRecipient_canDelete___block_invoke;
      v33[3] = &unk_1E72EC760;
      v34 = v18;
      v35 = v32;
      v36 = &location;
      [contentViewController enumerateObjectsUsingBlock:v33];

      v22 = v34;
    }

    goto LABEL_13;
  }

  descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v44[0] = descriptorForRequiredKeys;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];

  if (([contact areKeysAvailable:v9] & 1) == 0)
  {
    contactStore = [(CKRecipientSelectionController *)self contactStore];
    identifier = [contact identifier];
    v12 = [contactStore unifiedContactWithIdentifier:identifier keysToFetch:v9 error:0];

    contact = v12;
  }

  v13 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:contact];
  v14 = [MEMORY[0x1E695CE18] storeWithOptions:3];
  [(CKChatBotInfoController *)v13 setContactStore:v14];
LABEL_17:

  [(CKRecipientSelectionController *)self setPreventAtomization:1];
  if (CKIsRunningInMacCatalyst())
  {
    v26 = objc_initWeak(&location, self);
    searchListController = [(CKRecipientSelectionController *)self searchListController];
    tableView = [searchListController tableView];

    [(CKRecipientSelectionController *)self _showContactCardForRecipient:recipientCopy sourceView:tableView];
    objc_destroyWeak(&location);
  }

  else
  {
    navigationController = [(CKRecipientSelectionController *)self navigationController];
    if (navigationController)
    {
      navigationController2 = [(CKRecipientSelectionController *)self navigationController];
      [navigationController2 pushViewController:v13 animated:1];
    }
  }
}

void __69__CKRecipientSelectionController__showDetailsForRecipient_canDelete___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [*(a1 + 32) propertyType];
  v7 = [v6 isEqual:*MEMORY[0x1E695C330]];
  v8 = [v15 value];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 stringValue];

    v9 = v10;
  }

  v11 = IMStripFormattingFromAddress();

  if ([v11 isEqualToString:*(a1 + 40)])
  {
    v12 = [v15 identifier];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }
}

- (void)_showContactCardForRecipient:(id)recipient sourceView:(id)view
{
  rawAddress = [recipient rawAddress];
  v13 = IMStripFormattingFromAddress();

  mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
  v6 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddress:v13];
  v7 = [v6 imHandleWithID:v13 alreadyCanonical:0];

  v8 = [v7 cnContactWithKeys:MEMORY[0x1E695E0F0]];
  if (CKIsRunningInMacCatalyst() && [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v8])
  {
    v9 = [MEMORY[0x1E696AD60] stringWithString:@"addressbook://"];
    identifier = [v8 identifier];
    [v9 appendString:identifier];

    v11 = *MEMORY[0x1E69DDA98];
    v12 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    [v11 openURL:v12 withCompletionHandler:0];
  }
}

- (void)_removeRecent
{
  recentContactForPresentedCNCard = [(CKRecipientSelectionController *)self recentContactForPresentedCNCard];

  if (recentContactForPresentedCNCard)
  {
    searchListController = [(CKRecipientSelectionController *)self searchListController];
    recentContactForPresentedCNCard2 = [(CKRecipientSelectionController *)self recentContactForPresentedCNCard];
    [searchListController removeRecipient:recentContactForPresentedCNCard2];
  }

  navigationController = [(CKRecipientSelectionController *)self navigationController];
  v6 = [navigationController popViewControllerAnimated:1];
}

- (void)_updateRecipientViewLayouts
{
  toFieldScrollingView = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [toFieldScrollingView contentSize];
  v5 = v4;

  fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  toFieldScrollingView2 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [toFieldScrollingView2 frame];
  v15 = v14;

  toField = [(CKRecipientSelectionController *)self toField];
  textView = [toField textView];
  if ([textView isFirstResponder])
  {
    v18 = 1;
  }

  else
  {
    v18 = ![(CKRecipientSelectionController *)self isSearchResultsHidden];
  }

  if (CKIsRunningInMacCatalyst())
  {
    [(CKRecipientSelectionController *)self preferredFieldContainerHeight];
    v20 = v19;
  }

  else
  {
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 toFieldPreferredHeight];
    v23 = v22;

    v20 = v5;
    if (v18)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained visibleInputAndEntryViewHeightToAvoidForRecipientSelectionController:self];
      v26 = v25;

      view = [(CKRecipientSelectionController *)self view];
      [view bounds];
      v29 = v28;

      [(CKRecipientSelectionController *)self composeRecipientViewOriginY];
      v31 = v29 - v30 - v26;
      [(CKRecipientSelectionController *)self fromFieldHeight];
      v33 = v31 - v32;
      if (v5 < v33)
      {
        v33 = v5;
      }

      if (v33 >= v23)
      {
        v20 = v33;
      }

      else
      {
        v20 = v23;
      }
    }
  }

  if (CKIsRunningInMacCatalyst())
  {
    [(CKRecipientSelectionController *)self glassPlatterLayoutMargins];
    v10 = v34;
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __61__CKRecipientSelectionController__updateRecipientViewLayouts__block_invoke;
  v35[3] = &unk_1E72EC788;
  v36 = v5 != v15;
  v35[4] = self;
  v35[5] = v8;
  v35[6] = v10;
  v35[7] = v12;
  *&v35[8] = v20;
  [MEMORY[0x1E69DD250] animateWithDuration:v35 animations:0.200000003];
}

uint64_t __61__CKRecipientSelectionController__updateRecipientViewLayouts__block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = [*(a1 + 32) fieldStackContainerView];
    [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

    v3 = [*(a1 + 32) toFieldScrollingView];
    v4 = [*(a1 + 32) fieldStackContainerView];
    [v4 bounds];
    [v3 setFrame:?];

    v5 = [*(a1 + 32) toFieldScrollingView];
    [v5 __ck_scrollToBottom:1];
  }

  v6 = [*(a1 + 32) searchListController];
  v7 = [v6 tableView];
  v8 = [v7 __ck_isScrolledToTop];

  result = [*(a1 + 32) _resetSearchResultsInsets];
  if (v8)
  {
    v10 = *(a1 + 32);

    return [v10 scrollSearchListControllerToTop:1];
  }

  return result;
}

- (void)_adjustToFieldPositionIfNecessary
{
  fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  recipientSelectionShouldSlideToField = [v12 recipientSelectionShouldSlideToField];

  if (!recipientSelectionShouldSlideToField)
  {
    goto LABEL_14;
  }

  toField = [(CKRecipientSelectionController *)self toField];
  text = [toField text];
  if (![text length])
  {
    goto LABEL_8;
  }

  toField2 = [(CKRecipientSelectionController *)self toField];
  if ([toField2 numberOfRowsOfTextInField] <= 1)
  {

LABEL_8:
LABEL_9:
    toField3 = [(CKRecipientSelectionController *)self toField];
    text2 = [toField3 text];
    if ([text2 length])
    {
      toField4 = [(CKRecipientSelectionController *)self toField];
      numberOfRowsOfTextInField = [toField4 numberOfRowsOfTextInField];

      if (numberOfRowsOfTextInField != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    [(CKRecipientSelectionController *)self _navigationBarInsets];
    v7 = v33;
    goto LABEL_14;
  }

  conversation = [(CKRecipientSelectionController *)self conversation];
  canInsertMoreRecipients = [conversation canInsertMoreRecipients];

  if (!canInsertMoreRecipients)
  {
    goto LABEL_9;
  }

  toField5 = [(CKRecipientSelectionController *)self toField];
  [toField5 offsetForRowWithTextField];
  v21 = v20;

  toField6 = [(CKRecipientSelectionController *)self toField];
  [toField6 bounds];
  v24 = v23;

  fieldStackContainerView2 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView2 bounds];
  v27 = v26;

  if (v21 != 0.0)
  {
    [(CKRecipientSelectionController *)self _navigationBarInsets];
    v7 = v28 - (v21 + v27 - v24 + 2.0);
  }

LABEL_14:
  fieldStackContainerView3 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView3 frame];
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  v35 = CGRectEqualToRect(v38, v39);

  if (!v35)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__CKRecipientSelectionController__adjustToFieldPositionIfNecessary__block_invoke;
    aBlock[3] = &unk_1E72EC7B0;
    aBlock[4] = self;
    *&aBlock[5] = v5;
    *&aBlock[6] = v7;
    *&aBlock[7] = v9;
    *&aBlock[8] = v11;
    v36 = _Block_copy(aBlock);
    [MEMORY[0x1E69DD250] animateWithDuration:v36 animations:0.200000003];
  }
}

void __67__CKRecipientSelectionController__adjustToFieldPositionIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fieldStackContainerView];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  [*(a1 + 32) _resetSearchResultsInsets];
  [*(a1 + 32) scrollSearchListControllerToTop:1];
  v3 = [*(a1 + 32) delegate];
  [v3 recipientSelectionControllerDidChangeSize:*(a1 + 32)];
}

- (void)_adjustToFieldSeparatorInsetsIfNecessary
{
  if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    shouldHideFromField = [(CKRecipientSelectionController *)self shouldHideFromField];
    toField = [(CKRecipientSelectionController *)self toField];
    [toField setSeparatorHidden:shouldHideFromField];

    toField2 = [(CKRecipientSelectionController *)self toField];
    [toField2 separatorDirectionalEdgeInsets];
    v7 = v6;
    v9 = v8;

    toField3 = [(CKRecipientSelectionController *)self toField];
    [toField3 _textButtonMargin];
    v12 = v11;
    toField4 = [(CKRecipientSelectionController *)self toField];
    [toField4 safeAreaInsets];
    v15 = v12 + v14;

    if (v15 != 0.0)
    {
      toField5 = [(CKRecipientSelectionController *)self toField];
      [toField5 setSeparatorDirectionalEdgeInsets:{v7, v15, v9, v15}];
    }
  }
}

- (BOOL)_isToFieldPushedUp
{
  selfCopy = self;
  fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView origin];
  v5 = v4;
  [(CKRecipientSelectionController *)selfCopy _navigationBarInsets];
  LOBYTE(selfCopy) = v5 < v6;

  return selfCopy;
}

- (void)_resetSearchResultsInsets
{
  if (CKIsRunningInMacCatalyst())
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 popoverPadding];
    v5 = v4;

    searchListController = [(CKRecipientSelectionController *)self searchListController];
    tableView = [searchListController tableView];
    v8 = 0.0;
    [tableView _setSectionContentInset:{0.0, v5, 0.0, v5}];

    v9 = v5;
    v10 = 0.0;
    if ([(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
    {
      return;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

    if (isRedesignedDetailsViewEnabled)
    {
      v17 = *v11;
      fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [fieldStackContainerView frame];
      v20 = v19;
      [(CKRecipientSelectionController *)self _navigationBarInsets];
      v22 = v20 - v21;

      fieldStackContainerView2 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [fieldStackContainerView2 bounds];
      v25 = v22 + v24;

      fieldStackContainerView4 = +[CKUIBehavior sharedBehaviors];
      [fieldStackContainerView4 additionalSearchResultTopPadding];
      v28 = v17 + v25 + v27;
    }

    else
    {
      [(CKRecipientSelectionController *)self _navigationBarInsets];
      v30 = v29;
      fieldStackContainerView3 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [fieldStackContainerView3 origin];
      v33 = v30 - v32;

      fieldStackContainerView4 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [fieldStackContainerView4 bounds];
      v28 = v34 - v33;
    }

    [(CKRecipientSelectionController *)self _additionalSearchResultsEdgeInsets];
    v5 = v28 + v35;
    v8 = v12 + v36;
    v9 = v13 + v37;
    v10 = v14 + v38;
  }

  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  [searchListController2 setAdditionalSafeAreaInsets:{v5, v8, v9, v10}];
}

- (void)_updateShowingSearch
{
  conversation = [(CKRecipientSelectionController *)self conversation];
  canInsertMoreRecipients = [conversation canInsertMoreRecipients];

  if (canInsertMoreRecipients)
  {
    searchListController = [(CKRecipientSelectionController *)self searchListController];
    if ([searchListController hasSearchResults])
    {
      shouldSuppressSearchResultsTable = [(CKRecipientSelectionController *)self shouldSuppressSearchResultsTable];
    }

    else
    {
      shouldSuppressSearchResultsTable = 1;
    }
  }

  else
  {
    shouldSuppressSearchResultsTable = 1;
  }

  v7 = ([(CKRecipientSelectionController *)self alwaysShowSearchResultsTable]^ 1) & shouldSuppressSearchResultsTable;

  [(CKRecipientSelectionController *)self setSearchResultsHidden:v7];
}

- (void)_showSearchField
{
  if (![(CKRecipientSelectionController *)self isSearchResultsHidden])
  {
    goto LABEL_11;
  }

  searchListController = [(CKRecipientSelectionController *)self searchListController];
  tableView = [searchListController tableView];
  [tableView setHidden:0];

  firstResponder = [(CKRecipientSelectionController *)self firstResponder];
  [firstResponder reloadInputViewsWithoutReset];

  v6 = +[CKUIBehavior sharedBehaviors];
  if ([v6 presentsAutocompleteInAPopover])
  {
    isBeingPresentedInMacDetailsView = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];

    if (!isBeingPresentedInMacDetailsView)
    {
      if ([(CKRecipientSelectionController *)self _configureSearchListControllerAsAPopover])
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __50__CKRecipientSelectionController__showSearchField__block_invoke;
        v19[3] = &unk_1E72EBA18;
        v19[4] = self;
        [MEMORY[0x1E69DD258] _performWithoutDeferringTransitions:v19];
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

  view = [(CKRecipientSelectionController *)self view];
  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  tableView2 = [searchListController2 tableView];
  [view bringSubviewToFront:tableView2];

LABEL_8:
  headerDecorationView = [(CKRecipientSelectionController *)self headerDecorationView];

  if (headerDecorationView)
  {
    view2 = [(CKRecipientSelectionController *)self view];
    headerDecorationView2 = [(CKRecipientSelectionController *)self headerDecorationView];
    [view2 bringSubviewToFront:headerDecorationView2];
  }

  [(CKRecipientSelectionController *)self bringComposeRecipientViewToFront];
  searchListController3 = [(CKRecipientSelectionController *)self searchListController];
  tableView3 = [searchListController3 tableView];
  [tableView3 setScrollsToTop:1];

  delegate = [(CKRecipientSelectionController *)self delegate];
  [delegate recipientSelectionControllerSearchListDidShowOrHide:self];

LABEL_11:
  v17 = +[CKUIBehavior sharedBehaviors];
  if ([v17 presentsAutocompleteInAPopover] && !-[CKRecipientSelectionController isSearchResultsHidden](self, "isSearchResultsHidden"))
  {
    isBeingPresentedInMacDetailsView2 = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];

    if (!isBeingPresentedInMacDetailsView2)
    {
      [(CKRecipientSelectionController *)self _updateSearchListControllerPopOverSizing];
    }
  }

  else
  {
  }
}

void __50__CKRecipientSelectionController__showSearchField__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchListController];
  v3 = [v2 popoverPresentationController];
  v4 = [v3 sourceView];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 searchListController];
    [v5 presentViewController:v6 animated:1 completion:&__block_literal_global_587];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "ContactSearchAutocomplete : Source view for search results popover is nil, will not present", v8, 2u);
    }
  }
}

- (void)_hideSearchField
{
  if (![(CKRecipientSelectionController *)self isSearchResultsHidden])
  {
    searchListController = [(CKRecipientSelectionController *)self searchListController];

    if (searchListController)
    {
      searchListController2 = [(CKRecipientSelectionController *)self searchListController];
      tableView = [searchListController2 tableView];
      v6 = 1;
      [tableView setHidden:1];

      firstResponder = [(CKRecipientSelectionController *)self firstResponder];
      [firstResponder reloadInputViewsWithoutReset];

      searchListController3 = [(CKRecipientSelectionController *)self searchListController];
      tableView2 = [searchListController3 tableView];
      [tableView2 setScrollsToTop:0];

      delegate = [(CKRecipientSelectionController *)self delegate];
      [delegate recipientSelectionControllerSearchListDidShowOrHide:self];

      searchListController4 = [(CKRecipientSelectionController *)self searchListController];
      if (searchListController4)
      {
        presentedViewController = [(CKRecipientSelectionController *)self presentedViewController];
        searchListController5 = [(CKRecipientSelectionController *)self searchListController];
        v6 = presentedViewController != searchListController5;
      }

      v15 = +[CKUIBehavior sharedBehaviors];
      if (![v15 presentsAutocompleteInAPopover] || v6)
      {
      }

      else
      {
        isBeingPresentedInMacDetailsView = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];

        if (!isBeingPresentedInMacDetailsView)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __50__CKRecipientSelectionController__hideSearchField__block_invoke;
          v16[3] = &unk_1E72EBA18;
          v16[4] = self;
          [MEMORY[0x1E69DD258] _performWithoutDeferringTransitions:v16];
        }
      }
    }
  }
}

void __50__CKRecipientSelectionController__hideSearchField__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) searchListController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (UIEdgeInsets)_navigationBarInsets
{
  delegate = [(CKRecipientSelectionController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CKRecipientSelectionController *)self delegate];
    [delegate2 navigationBarInsetsForRecipientSelectionController:self];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)_updateSearchResultsTable
{
  toField = [(CKRecipientSelectionController *)self toField];
  text = [toField text];
  v5 = [text length];

  if (!v5)
  {
    [(CKRecipientSelectionController *)self resetSearchResults];
  }

  toField2 = [(CKRecipientSelectionController *)self toField];
  text2 = [toField2 text];
  if (![text2 length])
  {
    goto LABEL_12;
  }

  conversation = [(CKRecipientSelectionController *)self conversation];
  if (([conversation canInsertMoreRecipients] & 1) == 0)
  {

LABEL_12:
    goto LABEL_13;
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  canAccessContacts = [v9 canAccessContacts];

  if (canAccessContacts)
  {
    searchListController = [(CKRecipientSelectionController *)self searchListController];
    toField3 = [(CKRecipientSelectionController *)self toField];
    text3 = [toField3 text];
    [searchListController searchWithText:text3];

    [(CKRecipientSelectionController *)self scrollSearchListControllerToTop:0];
    toField4 = [(CKRecipientSelectionController *)self toField];
    text4 = [toField4 text];
    if ([text4 length] <= 1)
    {
    }

    else
    {
      searchListController2 = [(CKRecipientSelectionController *)self searchListController];
      hasSearchResults = [searchListController2 hasSearchResults];

      if (hasSearchResults)
      {

        [(CKRecipientSelectionController *)self setSearchResultsHidden:0];
      }
    }

    return;
  }

LABEL_13:
  if (([(CKRecipientSelectionController *)self alwaysShowSearchResultsTable]& 1) == 0)
  {
    [(CKRecipientSelectionController *)self setSearchResultsHidden:1];
  }

  [(CKRecipientSelectionController *)self invalidateOutstandingIDStatusRequests];
}

- (void)resetSearchResults
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  [searchListController setSearchResults:0];
}

- (void)_updateAddressBookProperties
{
  v6 = CKPreferredAddressTypes();
  if ([v6 count] == 2 && objc_msgSend(v6, "containsObject:", *MEMORY[0x1E695C330]) && (objc_msgSend(v6, "containsObject:", *MEMORY[0x1E695C208]) & 1) != 0)
  {
    v3 = 7;
  }

  else if ([v6 count] == 1)
  {
    if ([v6 containsObject:*MEMORY[0x1E695C330]])
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if (self->_toField)
  {
    toField = [(CKRecipientSelectionController *)self toField];
    textView = [toField textView];
    [textView setKeyboardType:v3];
  }
}

- (CNContactPickerViewController)contactPickerViewController
{
  contactPickerViewController = self->_contactPickerViewController;
  if (!contactPickerViewController)
  {
    v4 = objc_alloc_init(CKCNContactPickerViewController);
    _userInterfaceStyleOverride = [(CKRecipientSelectionController *)self _userInterfaceStyleOverride];
    if (_userInterfaceStyleOverride)
    {
      [(CKCNContactPickerViewController *)v4 setOverrideUserInterfaceStyle:_userInterfaceStyleOverride];
    }

    v6 = CKPreferredContactsProperties([(CNContactPickerViewController *)v4 setDelegate:self]);
    [(CNContactPickerViewController *)v4 setDisplayedPropertyKeys:v6];

    navigationItem = [(CKCNContactPickerViewController *)v4 navigationItem];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"NEW_MESSAGE_PROMPT" value:&stru_1F04268F8 table:@"ChatKit"];
    [navigationItem setPrompt:v9];

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddresses.@count > 0) OR (phoneNumbers.@count > 0)"];
    [(CNContactPickerViewController *)v4 setPredicateForEnablingContact:v10];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddresses.@count + phoneNumbers.@count) == 1"];
    [(CNContactPickerViewController *)v4 setPredicateForSelectionOfContact:v11];

    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(property == 'emailAddresses') OR (property == 'phoneNumbers')"];
    [(CNContactPickerViewController *)v4 setPredicateForSelectionOfProperty:v12];

    v13 = self->_contactPickerViewController;
    self->_contactPickerViewController = &v4->super;

    contactPickerViewController = self->_contactPickerViewController;
  }

  return contactPickerViewController;
}

- (void)scrollSearchListControllerToTop:(BOOL)top
{
  topCopy = top;
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  tableView = [searchListController tableView];
  [(CKRecipientSelectionController *)self scrollSearchListControllerToTopContentOffset];
  [tableView setContentOffset:topCopy animated:?];
}

- (CGPoint)scrollSearchListControllerToTopContentOffset
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  tableView = [searchListController tableView];
  [tableView contentOffset];
  v6 = v5;

  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  tableView2 = [searchListController2 tableView];
  [tableView2 adjustedContentInset];
  v10 = -v9;

  v11 = v6;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)handlesForScreenTimePolicyCheck
{
  v18 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    v3 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    toField = [(CKRecipientSelectionController *)self toField];
    recipients = [toField recipients];

    v6 = [recipients countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(recipients);
          }

          normalizedAddress = [*(*(&v13 + 1) + 8 * i) normalizedAddress];
          if (normalizedAddress)
          {
            [v3 addObject:normalizedAddress];
          }
        }

        v7 = [recipients countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [v3 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateScreenTimePolicy
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    currentConversationContext = [(CKRecipientSelectionController *)self currentConversationContext];
    [currentConversationContext removeObserver:self forKeyPath:@"allowedByScreenTime"];

    [(CKRecipientSelectionController *)self setCurrentConversationContext:0];
    handlesForScreenTimePolicyCheck = [(CKRecipientSelectionController *)self handlesForScreenTimePolicyCheck];
    mEMORY[0x1E69A5B68] = [MEMORY[0x1E69A5B68] sharedInstance];
    v9 = 0;
    v6 = [mEMORY[0x1E69A5B68] allowedToShowConversationWithHandleIDs:handlesForScreenTimePolicyCheck sync:1 context:&v9];
    v7 = v9;
    [(CKRecipientSelectionController *)self setAllowedByScreenTime:v6];

    [(CKRecipientSelectionController *)self setCurrentConversationContext:v7];
    currentConversationContext2 = [(CKRecipientSelectionController *)self currentConversationContext];
    [currentConversationContext2 addObserver:self forKeyPath:@"allowedByScreenTime" options:1 context:ctxAllowedByScreenTime];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  v11 = objectCopy;
  if (ctxAllowedByScreenTime == context)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__CKRecipientSelectionController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E72EB8D0;
    v14 = objectCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKRecipientSelectionController;
    [(CKRecipientSelectionController *)&v12 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

void __81__CKRecipientSelectionController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) setAllowedByScreenTime:{objc_msgSend(v2, "allowedByScreenTime")}];
  [*(a1 + 40) _updateToField];
}

- (BOOL)autocompleteResultsController:(id)controller willOverrideImageDataForRecipient:(id)recipient completion:(id)completion
{
  recipientCopy = recipient;
  completionCopy = completion;
  if ([recipientCopy isGroup])
  {
    autocompleteResult = [recipientCopy autocompleteResult];
    identifier = [autocompleteResult identifier];

    v10 = +[CKConversationList sharedConversationList];
    v11 = [v10 conversationForExistingChatWithGUID:identifier];

    isGroupConversation = [v11 isGroupConversation];
    if (isGroupConversation)
    {
      v13 = [v11 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:0];
      groupPhoto = [v13 groupPhoto];
      completionCopy[2](completionCopy, groupPhoto);
    }
  }

  else
  {
    LOBYTE(isGroupConversation) = 0;
  }

  return isGroupConversation;
}

- (CKRecipientSelectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __70__CKRecipientSelectionController__openStewieAppForEmergencyIfRequired__block_invoke_431_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_5(&dword_19020E000, v2, v3, "Request Stewie error: %@", v4, v5, v6, v7, 2u);
}

void __69__CKRecipientSelectionController__openStewieAppForRoadsideIfRequired__block_invoke_434_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_5(&dword_19020E000, v2, v3, "Request Stewie error: %@", v4, v5, v6, v7, 2u);
}

@end