@interface CKRecipientSelectionController
- (BOOL)_isToFieldPushedUp;
- (BOOL)_openStewieAppForEmergencyIfRequired;
- (BOOL)_openStewieAppForRoadsideIfRequired;
- (BOOL)_shouldDisableToField;
- (BOOL)_systemUnderLock;
- (BOOL)autocompleteResultsController:(id)a3 willOverrideImageDataForRecipient:(id)a4 completion:(id)a5;
- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)a3 context:(unint64_t)a4;
- (BOOL)collapseSelectedSearchResultForComposeRecipientView:(id)a3;
- (BOOL)composeRecipientViewShowingSearchResults:(id)a3;
- (BOOL)expandSelectedSearchResultForComposeRecipientView:(id)a3;
- (BOOL)finishedComposingRecipients;
- (BOOL)hasEmailRecipientsInAddresses:(id)a3;
- (BOOL)hasFailediMessageRecipients;
- (BOOL)hasIDSResultsForAllRecipients:(id)a3;
- (BOOL)hasPendingiMessageRecipients;
- (BOOL)hasTimedOutRecipients;
- (BOOL)hasUnreachableEmergencyRecipient;
- (BOOL)isSearchResultsHidden;
- (BOOL)lastSentMessageWasNotDeliveredForConversation:(id)a3;
- (BOOL)presentSearchResultsForComposeRecipientView:(id)a3;
- (BOOL)shouldShowVerifiedIconForRecipient:(id)a3;
- (BOOL)toFieldIsFirstResponder;
- (CGPoint)scrollSearchListControllerToTopContentOffset;
- (CKRecipientSelectionController)initWithConversation:(id)a3;
- (CKRecipientSelectionControllerDelegate)delegate;
- (CNContactPickerViewController)contactPickerViewController;
- (CNContactStore)contactStore;
- (UIEdgeInsets)_additionalSearchResultsEdgeInsets;
- (UIEdgeInsets)_navigationBarInsets;
- (UIEdgeInsets)glassPlatterLayoutMargins;
- (UIEdgeInsets)layoutMarginsForComposeRecipientView:(id)a3;
- (UIView)fromFieldContainerView;
- (char)_availibilityForRecipient:(id)a3 onService:(id)a4;
- (char)_satelliteConnectedColorOverrideForRecipient:(id)a3 inConversation:(id)a4;
- (char)serviceColorForRecipientAddresses:(id)a3;
- (char)serviceTypeForRecipient:(id)a3;
- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)a3;
- (double)_preferredDefaultToFieldHeight;
- (double)additionalCatalystTopInset;
- (double)collapsedHeight;
- (double)fieldHeightOffset;
- (double)glassPlatterCornerRadius;
- (double)preferredFieldContainerHeight;
- (double)preferredMacToolbarHeight;
- (double)selectionFieldsHeight;
- (id)_alternateAddressesForRecipient:(id)a3;
- (id)_alternateiMessagableAddressesForRecipient:(id)a3;
- (id)_canonicalRecipientAddresses;
- (id)_recipientCausingTooManyRecipientsError;
- (id)_serviceForRecipientPresentationOptions;
- (id)_toFieldCollapsedTextColor;
- (id)chatForIMHandle:(id)a3;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (id)composeRecipientView:(id)a3 composeRecipientForContact:(id)a4;
- (id)composeRecipientView:(id)a3 contextMenuConfigurationForAtom:(id)a4;
- (id)conversationForRecipients:(id)a3;
- (id)expandedRecipientsForGroupRecipient:(id)a3;
- (id)handleForRecipientNormalizedAddress:(id)a3;
- (id)handlesForScreenTimePolicyCheck;
- (id)preferredColorTypeForExistingConversation:(id)a3;
- (id)preferredRecipientForExistingConversationOfRecipients:(id)a3;
- (id)preferredRecipientForNewContact:(id)a3;
- (id)preferredRecipientForPendingUnifiedContact:(id)a3;
- (id)preferredRecipientForRecipients:(id)a3;
- (id)preferredRecipientForRecipients:(id)a3 forServiceType:(char)a4;
- (id)recipientIsDuetSuggestion:(id)a3;
- (id)recipients;
- (int64_t)_userInterfaceStyleOverride;
- (int64_t)searchListController:(id)a3 idStatusForIDSID:(id)a4;
- (unint64_t)_atomPresentationOptionsForRecipient:(id)a3;
- (void)_adjustToFieldPositionIfNecessary;
- (void)_adjustToFieldSeparatorInsetsIfNecessary;
- (void)_dismissPeoplePicker;
- (void)_handleAddressBookChangedNotification:(id)a3;
- (void)_handleAddressBookPartialChangedNotification:(id)a3;
- (void)_handleContactStoreBatchLoadCompleteNotification:(id)a3;
- (void)_handleConversationPreferredServiceDidChangeNotification:(id)a3;
- (void)_handleIDSResultsWhenSearchTableIsHidden:(id)a3;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3;
- (void)_handleRecipientAvailabilityTimeout:(id)a3;
- (void)_handleRecipientViewChanged:(id)a3;
- (void)_hideSearchField;
- (void)_presentBusinessChatNotSupportedError;
- (void)_refreshActionSheet;
- (void)_removeAvailabilityTimeoutTimerForRecipient:(id)a3;
- (void)_removeRecent;
- (void)_resetSearchResultsInsets;
- (void)_showActionSheetForRecipient:(id)a3 animated:(BOOL)a4;
- (void)_showContactCardForRecipient:(id)a3 sourceView:(id)a4;
- (void)_showDetailsForGroup:(id)a3;
- (void)_showDetailsForRecipient:(id)a3 canDelete:(BOOL)a4;
- (void)_showOneTimeErrorAlertForAddedRecipient:(id)a3 service:(id)a4 withError:(int64_t)a5;
- (void)_showSearchField;
- (void)_startAvailabilityTimeoutTimerForRecipient:(id)a3;
- (void)_updateAddressBookProperties;
- (void)_updateContainerCornerRadiusIfNeeded;
- (void)_updateRecipientViewLayouts;
- (void)_updateSearchResultsTable;
- (void)_updateShowingSearch;
- (void)_updateToField;
- (void)_updateToFieldRecipientsData;
- (void)_updateYOriginSearchListController;
- (void)addRecipient:(id)a3;
- (void)addRecipients:(id)a3;
- (void)autocompleteGroupDetailViewController:(id)a3 didAskToRemoveGroup:(id)a4;
- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
- (void)bringComposeRecipientViewToFront;
- (void)colorTypeForRecipient:(id)a3 completion:(id)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didSelectRecipients:(id)a4;
- (void)composeRecipientView:(id)a3 disambiguateRecipientForAtom:(id)a4;
- (void)composeRecipientView:(id)a3 showPersonCardForAtom:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewEscapePressed:(id)a3;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)composeRecipientViewReturnPressed:(id)a3;
- (void)composeRecipientViewTabPressed:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)dismissSearchResultsForComposeRecipientView:(id)a3;
- (void)handlePendingRecipient:(id)a3;
- (void)invalidateOutstandingIDStatusRequests;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentAlternateAddressesAlertForRecipient:(id)a3;
- (void)recipientViewDidBecomeFirstResponder:(id)a3;
- (void)recipientViewDidResignFirstResponder:(id)a3;
- (void)refreshAvailabilityForRecipients:(id)a3 context:(id)a4;
- (void)refreshComposeSendingServiceForAddresses:(id)a3 context:(id)a4 withCompletionBlock:(id)a5;
- (void)refreshComposeSendingServiceForAddresses:(id)a3 withCompletionBlock:(id)a4;
- (void)removeRecipient:(id)a3;
- (void)reset;
- (void)resetSearchResults;
- (void)scrollSearchListControllerToTop:(BOOL)a3;
- (void)searchListController:(id)a3 destinationsUpdated:(id)a4;
- (void)searchListControllerDidScroll:(id)a3;
- (void)selectNextSearchResultForComposeRecipientView:(id)a3;
- (void)selectPreviousSearchResultForComposeRecipientView:(id)a3;
- (void)sendUpdateRecipientForAtom:(id)a3;
- (void)setConversation:(id)a3;
- (void)setEditable:(BOOL)a3;
- (void)setGameCenterPickedHandles:(id)a3 playerNames:(id)a4;
- (void)setGameCenterPickerBlock:(id)a3;
- (void)setSearchResultsHidden:(BOOL)a3;
- (void)stopCheckingRecipientAvailabilityAndRemoveAllTimers;
- (void)tintColorForRecipient:(id)a3 completion:(id)a4;
- (void)updateScreenTimePolicy;
- (void)updateScrollPocketInteractionsIfNeeded;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKRecipientSelectionController

- (void)dealloc
{
  v3 = [(CKRecipientSelectionController *)self currentConversationContext];

  if (v3)
  {
    v4 = [(CKRecipientSelectionController *)self currentConversationContext];
    [v4 removeObserver:self forKeyPath:@"allowedByScreenTime"];
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_recipientSelectionControllerDidChange object:0];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  [(CKRecipientSelectionController *)self invalidateOutstandingIDStatusRequests];
  [(CKRecipientSelectionController *)self stopCheckingRecipientAvailabilityAndRemoveAllTimers];
  v6 = [(CKRecipientSelectionController *)self toField];
  [v6 setDelegate:0];

  v7 = [(CKRecipientSelectionController *)self toField];
  [v7 setLayoutDelegate:0];

  v8 = [(CKRecipientSelectionController *)self searchListController];

  if (v8)
  {
    v9 = [(CKRecipientSelectionController *)self searchListController];
    v10 = [v9 view];
    [v10 removeFromSuperview];

    v11 = [(CKRecipientSelectionController *)self searchListController];
    [(CKRecipientSelectionController *)self removeChildViewController:v11];

    v12 = [(CKRecipientSelectionController *)self searchListController];
    [v12 setDelegate:0];
  }

  self->_numberOfRowsInToField = 1;
  v13.receiver = self;
  v13.super_class = CKRecipientSelectionController;
  [(CKRecipientSelectionController *)&v13 dealloc];
}

- (CKRecipientSelectionController)initWithConversation:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CKRecipientSelectionController;
  v5 = [(CKRecipientSelectionController *)&v16 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_forceMMS = 0;
    v7 = [v4 copyForPendingConversation];
    conversation = v6->_conversation;
    v6->_conversation = v7;

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
  v4 = [v3 recipientSelectionViewRequiresMainScreenBounds];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 bounds];
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

  v15 = [MEMORY[0x1E69DC888] clearColor];
  v16 = [(CKRecipientSelectionController *)self view];
  [v16 setBackgroundColor:v15];

  v17 = +[CKUIBehavior sharedBehaviors];
  v18 = [v17 recipientSelectionViewClipsToBounds];
  v19 = [(CKRecipientSelectionController *)self view];
  [v19 setClipsToBounds:v18];

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
  v23 = [(CKRecipientSelectionController *)self view];
  [v23 frame];
  v25 = v24;

  v91 = [[CKComposeRecipientView alloc] initWithFrame:0.0, 0.0, v25, v22];
  [(CKComposeRecipientView *)v91 setAutoresizingMask:v20];
  [(CKComposeRecipientView *)v91 setDelegate:self];
  [(CKComposeRecipientView *)v91 setLayoutDelegate:self];
  [(CKRecipientSelectionController *)self setToField:v91];
  if (CKIsRunningInMacCatalyst())
  {
    v26 = objc_opt_new();
    v27 = [v26 UUIDString];
    [(CKComposeRecipientView *)v91 setFocusGroupIdentifier:v27];

    v28 = [(CNComposeRecipientTextView *)v91 textView];
    [v28 setFocusGroupIdentifier:0];
  }

  if (loadView_onceToken != -1)
  {
    [CKRecipientSelectionController loadView];
  }

  if (CKIsRunningInMacCatalyst() && ![(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    v29 = [(CKComposeRecipientView *)v91 labelView];
    [v29 setAttributedText:loadView_toText];
  }

  else
  {
    v29 = [loadView_toText string];
    [(CNComposeRecipientTextView *)v91 setLabel:v29];
  }

  v30 = [(CNComposeRecipientTextView *)v91 textView];
  [v30 _setHiddenPocketEdges:15];

  v31 = [(CNComposeRecipientTextView *)v91 addButton];
  v32 = +[CKUIBehavior sharedBehaviors];
  [v31 setHidden:{objc_msgSend(v32, "canAccessContacts") ^ 1}];

  v33 = [(CNComposeRecipientTextView *)v91 textView];
  v34 = +[CKUIBehavior sharedBehaviors];
  v35 = [v34 theme];
  [v33 setKeyboardAppearance:{objc_msgSend(v35, "keyboardAppearance")}];

  v36 = [(CKRecipientSelectionController *)self toField];
  [v36 setSeparatorHidden:1];

  v37 = [(CKRecipientSelectionController *)self toField];
  v38 = [MEMORY[0x1E69DC888] clearColor];
  [v37 setBackgroundColor:v38];

  v39 = [(CKRecipientSelectionController *)self _userInterfaceStyleOverride];
  if (v39)
  {
    [(CKRecipientSelectionController *)self setOverrideUserInterfaceStyle:v39];
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

  v49 = [(CKRecipientSelectionController *)self view];
  [v49 frame];
  v51 = v50 - v46;

  v52 = [[CKUIScrollView1xAdaptable alloc] initWithFrame:v44, v42, v51, v47];
  [(CKUIScrollView1xAdaptable *)v52 setAutoresizingMask:2];
  [(CKUIScrollView1xAdaptable *)v52 setBackgroundColor:0];
  [(CKUIScrollView1xAdaptable *)v52 setContentInsetAdjustmentBehavior:2];
  [(CKUIScrollView1xAdaptable *)v52 setShowsHorizontalScrollIndicator:0];
  [(CKUIScrollView1xAdaptable *)v52 _setHiddenPocketEdges:15];
  [(CKUIScrollView1xAdaptable *)v52 addSubview:v91];
  [(CKRecipientSelectionController *)self setToFieldScrollingView:v52];
  v53 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [v53 bounds];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  [(CKComposeRecipientView *)v91 setFrame:v55, v57, v59, v61];
  v62 = CKIsRunningInMacCatalyst();
  v63 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  v64 = v63;
  if (v62)
  {
    [v63 setAlwaysBounceVertical:1];

    v65 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [v65 setShowsHorizontalScrollIndicator:0];

    v66 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [v66 setScrollEnabled:0];

    v67 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [v67 setShowsVerticalScrollIndicator:0];

    v68 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [v68 setAutomaticallyAdjustsScrollIndicatorInsets:0];
  }

  else
  {
    [v63 setScrollsToTop:0];

    v69 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [v69 setBounces:0];

    v68 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [v68 setAutoresizesSubviews:0];
  }

  v70 = [[CKContainerView1xAdaptable alloc] initWithFrame:v55, v57, v59, v61];
  [(CKContainerView1xAdaptable *)v70 setAutoresizingMask:2];
  objc_storeStrong(&self->_fieldStackContainerView, v70);
  [(CKContainerView1xAdaptable *)v70 addSubview:v52];
  v71 = [(CKRecipientSelectionController *)self view];
  [v71 addSubview:v70];

  [(UIView *)v70 ck_applyGlassBackground];
  v72 = [(CKRecipientSelectionController *)self delegate];
  v73 = objc_opt_respondsToSelector();

  if (v73)
  {
    v74 = [(CKRecipientSelectionController *)self delegate];
    v75 = [v74 headerDecorationViewForRecipientSelectionConroller:self];
    headerDecorationView = self->_headerDecorationView;
    self->_headerDecorationView = v75;

    if (self->_headerDecorationView)
    {
      [(CKRecipientSelectionController *)self _navigationBarInsets];
      v78 = v61 + v77;
      [(UIView *)self->_headerDecorationView setAutoresizingMask:2];
      [(UIView *)self->_headerDecorationView setFrame:v55, v57, v59, v78];
      v79 = [(CKRecipientSelectionController *)self view];
      [v79 addSubview:self->_headerDecorationView];

      v80 = [(CKRecipientSelectionController *)self view];
      [v80 sendSubviewToBack:self->_headerDecorationView];
    }
  }

  if ([(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    v81 = objc_alloc(MEMORY[0x1E69DD250]);
    v82 = [(CKRecipientSelectionController *)self view];
    [v82 frame];
    v84 = v83;
    v85 = +[CKUIBehavior sharedBehaviors];
    [v85 defaultSeparatorHeight];
    v87 = [v81 initWithFrame:{0.0, v22, v84, v86}];

    [v87 setAutoresizingMask:2];
    v88 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
    [v87 setBackgroundColor:v88];

    [(CKRecipientSelectionController *)self setSeparator:v87];
    v89 = [(CKRecipientSelectionController *)self fieldStackContainerView];
    v90 = [(CKRecipientSelectionController *)self separator];
    [v89 addSubview:v90];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleRecipientViewChanged_ name:*MEMORY[0x1E6996390] object:self->_toField];
  [v3 addObserver:self selector:sel__handleIDSResultsWhenSearchTableIsHidden_ name:@"CKIDSResultsFinishedWhenSearchTableIsHiddenNotification" object:0];
  [v3 addObserver:self selector:sel__handleConversationPreferredServiceDidChangeNotification_ name:@"CKConversationPreferredServiceChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handleAddressBookChangedNotification_ name:*MEMORY[0x1E69A6828] object:0];
  [v3 addObserver:self selector:sel__handleAddressBookPartialChangedNotification_ name:*MEMORY[0x1E69A6838] object:0];
  [v3 addObserver:self selector:sel__handleKeyTransparencyStatusChangedNotification_ name:*MEMORY[0x1E69A5810] object:0];
  [v3 addObserver:self selector:sel__handleContactStoreBatchLoadCompleteNotification_ name:*MEMORY[0x1E69A6E10] object:0];
  [(CKRecipientSelectionController *)self _updateAddressBookProperties];
  v4 = [[CKManualUpdater alloc] initWithTarget:self action:sel__updateToFieldRecipientsData];
  [(CKRecipientSelectionController *)self setAddressBookNotificationUpdater:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKRecipientSelectionController;
  [(CKViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppearDeferredSetup
{
  v30.receiver = self;
  v30.super_class = CKRecipientSelectionController;
  [(CKViewController *)&v30 viewDidAppearDeferredSetup];
  v3 = [(CKRecipientSelectionController *)self searchListController];

  if (!v3)
  {
    v4 = [[CKRecipientSearchListController alloc] initWithStyle:CKIsRunningInMacCatalyst() != 0];
    [(CNAutocompleteResultsTableViewController *)v4 setDelegate:self];
    v5 = [(CKRecipientSelectionController *)self view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    if ([(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
    {
      v14 = [(CKRecipientSelectionController *)self toField];
      [v14 frame];
      v9 = v9 + v15;
    }

    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 recipientSelectionSearchControllerRequiresFlexibleMargins];

    if (v17)
    {
      v18 = [(CKRecipientSearchListController *)v4 view];
      [v18 setAutoresizingMask:18];
    }

    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = [v19 recipientSelectionSearchControllerHidesInfoButton];

    if (v20)
    {
      [(CNAutocompleteResultsTableViewController *)v4 setShouldHideInfoButton:1];
    }

    v21 = [(CKRecipientSearchListController *)v4 view];
    [v21 setFrame:{v7, v9, v11, v13}];

    v22 = [(CKRecipientSearchListController *)v4 tableView];
    [v22 setHidden:1];

    if (CKIsRunningInMacCatalyst())
    {
      v23 = [(CKComposeRecipientView *)self->_toField focusGroupIdentifier];
      v24 = [(CKRecipientSearchListController *)v4 tableView];
      [v24 setFocusGroupIdentifier:v23];
    }

    [(CKRecipientSearchListController *)v4 setSmsEnabled:[(CKRecipientSelectionController *)self homogenizePreferredServiceForiMessage]];
    v25 = [(CKRecipientSelectionController *)self recipients];
    [(CKRecipientSearchListController *)v4 setEnteredRecipients:v25];

    v26 = +[CKUIBehavior sharedBehaviors];
    if ([v26 presentsAutocompleteInAPopover])
    {
      v27 = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];

      if (!v27)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    [(CKRecipientSelectionController *)self addChildViewController:v4];
    v28 = [(CKRecipientSelectionController *)self view];
    v29 = [(CKRecipientSearchListController *)v4 view];
    [v28 addSubview:v29];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKRecipientSelectionController;
  [(CKViewController *)&v6 viewWillDisappear:a3];
  v4 = [(CKRecipientSelectionController *)self undoManager];
  [v4 removeAllActions];

  v5 = [(CKRecipientSelectionController *)self toField];
  [v5 parentWillClose];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKRecipientSelectionController;
  [(CKViewController *)&v6 viewDidDisappear:a3];
  [(CKRecipientSelectionController *)self setPreventAtomization:0];
  v4 = [(CKRecipientSelectionController *)self currentConversationContext];
  [v4 removeObserver:self forKeyPath:@"allowedByScreenTime"];

  [(CKRecipientSelectionController *)self setCurrentConversationContext:0];
  v5 = [(CKRecipientSelectionController *)self toField];
  [v5 parentDidClose];
}

- (int64_t)_userInterfaceStyleOverride
{
  v3 = [(CKRecipientSelectionController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CKRecipientSelectionController *)self delegate];
  v6 = [v5 userInterfaceStyleOverrideForRecipientSelectionConroller:self];

  return v6;
}

- (UIEdgeInsets)_additionalSearchResultsEdgeInsets
{
  v3 = [(CKRecipientSelectionController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKRecipientSelectionController *)self delegate];
    [v5 additionalSearchResultsEdgeInsetsForRecipientSelectionController:self];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CKRecipientSelectionController;
  v7 = a4;
  [(CKRecipientSelectionController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__CKRecipientSelectionController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E72EC3E8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

uint64_t __85__CKRecipientSelectionController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateToField];
  v2 = *(a1 + 32);

  return [v2 _resetSearchResultsInsets];
}

- (void)didMoveToParentViewController:(id)a3
{
  [(CKRecipientSelectionController *)self _updateToField];

  [(CKRecipientSelectionController *)self _resetSearchResultsInsets];
}

- (void)bringComposeRecipientViewToFront
{
  v4 = [(CKRecipientSelectionController *)self view];
  v3 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v4 bringSubviewToFront:v3];
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
  v3 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v3 frame];
  v5 = v4;

  v6 = 0.0;
  if (v5 != 0.0)
  {
    v7 = [(CKRecipientSelectionController *)self fieldStackContainerView];
    [v7 frame];
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
    v4 = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = v5;
    if (v4)
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
  v3 = [(CKRecipientSelectionController *)self toField];
  v4 = [v3 numberOfRowsOfTextInField];
  v5 = [(CKRecipientSelectionController *)self numberOfRowsInToField];

  if (v4 != v5)
  {
    v6 = [(CKRecipientSelectionController *)self toField];
    -[CKRecipientSelectionController setNumberOfRowsInToField:](self, "setNumberOfRowsInToField:", [v6 numberOfRowsOfTextInField]);
  }

  if ([(CKRecipientSelectionController *)self numberOfRowsInToField]< 2 || [(CKRecipientSelectionController *)self numberOfRowsInToField]> 3)
  {
    if ([(CKRecipientSelectionController *)self numberOfRowsInToField]<= 3)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = [(CKRecipientSelectionController *)self numberOfRowsInToField];
  }

  [(CKRecipientSelectionController *)self _fieldContainerHeightForNumberOfRows:v7];
  return result;
}

- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = v4;
  if (a3 < 2)
  {
    [v4 toFieldPreferredHeight];
    v13 = v14;
  }

  else
  {
    [v4 defaultToolbarHeight];
    v7 = v6;
    v8 = (a3 - 1);
    [MEMORY[0x1E6996398] defaultHeight];
    v10 = v9;
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 toFieldInterlineSpacing];
    v13 = v7 + v8 * (v10 + v12);
  }

  return v13;
}

- (void)_handleRecipientViewChanged:(id)a3
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_recipientSelectionControllerDidChange object:0];

  [(CKRecipientSelectionController *)self performSelector:sel_recipientSelectionControllerDidChange withObject:0 afterDelay:0.0];
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v6 length])
  {
    [(UILabel *)self->_toFieldPlaceholderLabel setHidden:1];
  }

  else
  {
    v7 = [v11 recipients];
    -[UILabel setHidden:](self->_toFieldPlaceholderLabel, "setHidden:", [v7 count] != 0);
  }

  [(CKRecipientSelectionController *)self _adjustToFieldPositionIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained recipientSelectionController:self textDidChange:v6];

  [(CKRecipientSelectionController *)self _updateSearchResultsTable];
  v9 = [(CKRecipientSelectionController *)self alternateAddressesAlertController];

  if (v9)
  {
    v10 = [(CKRecipientSelectionController *)self alternateAddressesAlertController];
    [v10 dismissViewControllerAnimated:1 completion:0];

    [(CKRecipientSelectionController *)self setAlternateAddressesAlertController:0];
  }
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v15 text];
  if ([v7 length])
  {
    [(UILabel *)self->_toFieldPlaceholderLabel setHidden:1];
  }

  else
  {
    v8 = [v15 recipients];
    -[UILabel setHidden:](self->_toFieldPlaceholderLabel, "setHidden:", [v8 count] != 0);
  }

  if ([(CKRecipientSelectionController *)self isGameCenterRecipient:v6])
  {
    v9 = [v15 atomViewForRecipient:v6];
    [v9 setPresentationOptions:8];
    v10 = [MEMORY[0x1E69DC888] grayColor];
    [v9 setTintColor:v10];
  }

  [(CKRecipientSelectionController *)self updateScreenTimePolicy];
  v11 = [v6 IDSCanonicalAddress];
  [(CKRecipientSelectionController *)self didAddRecipient:v11];
  v12 = [(CKRecipientSelectionController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CKRecipientSelectionController *)self delegate];
    [v14 recipientSelectionControllerDidAddRecipientAddress:v11];
  }
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 text];
  if ([v7 length])
  {
    [(UILabel *)self->_toFieldPlaceholderLabel setHidden:1];
  }

  else
  {
    v8 = [v13 recipients];
    -[UILabel setHidden:](self->_toFieldPlaceholderLabel, "setHidden:", [v8 count] != 0);
  }

  v9 = +[CKAdaptivePresentationController sharedInstance];
  [v9 dismissViewControllerAnimated:1 completion:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(CKRecipientSelectionController *)self toField];
  v12 = [v11 text];
  [WeakRetained recipientSelectionController:self textDidChange:v12];

  [(CKRecipientSelectionController *)self removeRecipient:v6];
  [(CKRecipientSelectionController *)self updateScreenTimePolicy];
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 componentsSeparatedByString:@"\n"];
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
      v18 = v6;
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

      v6 = v18;
      if (v11)
      {
        [v18 clearText];
        v17 = [(CKRecipientSelectionController *)self searchListController];
        [v17 cancelSearch];

        [(CKRecipientSelectionController *)self _updateShowingSearch];
      }
    }

    else
    {
    }
  }
}

- (void)composeRecipientViewReturnPressed:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self delegate];
  [v4 recipientSelectionControllerReturnPressed:self];
}

- (void)composeRecipientViewEscapePressed:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKRecipientSelectionController *)self delegate];
    [v6 recipientSelectionControllerEscapePressed:self];
  }
}

- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4
{
  v4 = a4;
  v5 = +[CKRecipientGenerator sharedRecipientGenerator];
  v6 = [v5 recipientWithAddress:v4];

  return v6;
}

- (void)composeRecipientViewTabPressed:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self delegate];
  [v4 recipientSelectionControllerTabPressed:self];
}

- (id)composeRecipientView:(id)a3 composeRecipientForContact:(id)a4
{
  v4 = a4;
  v5 = +[CKRecipientGenerator sharedRecipientGenerator];
  v6 = [v5 recipientWithContact:v4];

  return v6;
}

- (void)composeRecipientView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [v9 frame];
  v11 = v10;

  if (CKIsRunningInMacCatalyst())
  {
    v12 = [(CKRecipientSelectionController *)self toField];
    v13 = [v12 numberOfRowsOfTextInField];

    if (v13 <= 1)
    {
      [(CKRecipientSelectionController *)self composeRecipientViewOriginY];
      v8 = v14;
    }
  }

  v15 = [(CKRecipientSelectionController *)self toField];
  [v15 setFrame:{v7, v8, v11, height}];

  v16 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [v16 contentSize];
  v18 = v17;
  v20 = v19;

  if (width != v18 || height != v20)
  {
    v21 = [(CKRecipientSelectionController *)self toFieldScrollingView];
    [v21 setContentSize:{width, height}];

    [(CKRecipientSelectionController *)self _updateRecipientViewLayouts];
    v22 = [(CKRecipientSelectionController *)self delegate];
    [v22 recipientSelectionControllerDidChangeSize:self];

    if (CKIsRunningInMacCatalyst())
    {
      v23 = [(CKRecipientSelectionController *)self _shouldEnableScrolling];
      v24 = [(CKRecipientSelectionController *)self toFieldScrollingView];
      [v24 setScrollEnabled:v23];

      v25 = [(CKRecipientSelectionController *)self _shouldEnableScrolling];
      v26 = [(CKRecipientSelectionController *)self toFieldScrollingView];
      [v26 setShowsVerticalScrollIndicator:v25];
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

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  v4 = a3;
  if (![(CKRecipientSelectionController *)self _systemUnderLock])
  {
    v5 = [(CKRecipientSelectionController *)self toField];
    v6 = [v4 text];
    [(CKRecipientSelectionController *)self composeRecipientView:v5 didFinishEnteringAddress:v6];

    [(CKRecipientSelectionController *)self setPeoplePickerHidden:0];
    v7 = [(CKRecipientSelectionController *)self firstResponder];
    [v7 reloadInputViews];

    if (self->_gameCenterPickerBlock)
    {
      v8 = [(CKRecipientSelectionController *)self toField];
      v9 = [v8 inputAccessoryView];
      [v9 setHidden:1];

      v10 = [(CKRecipientSelectionController *)self delegate];
      [v10 recipientSelectionControllerRequestDismissKeyboard:self];

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
      v13 = [(CKRecipientSelectionController *)self contactPickerViewController];
      [v13 setModalPresentationStyle:7];

      v14 = [(CKRecipientSelectionController *)self contactPickerViewController];
      v15 = [v14 popoverPresentationController];
      [v15 setPermittedArrowDirections:1];

      v16 = +[CKUIBehavior sharedBehaviors];
      if ([v16 useMacToolbar])
      {
        v17 = self;
      }

      else
      {
        v17 = [(CKRecipientSelectionController *)self navigationController];
      }

      v18 = v17;

      v19 = +[CKAdaptivePresentationController sharedInstance];
      v20 = [(CKRecipientSelectionController *)self contactPickerViewController];
      [v19 presentViewController:v20 fromViewController:v18 presentationHandler:v11 dismissalHandler:v12 animated:1 completion:0];
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

- (void)composeRecipientView:(id)a3 disambiguateRecipientForAtom:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (CKIsRunningInMacCatalyst())
  {
    [(CKRecipientSelectionController *)self setIsDisambiguating:0];
    v7 = [v6 recipient];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v9 = [v6 recipient];
      [(CKRecipientSelectionController *)self _showContactCardForRecipient:v9 sourceView:v10];
    }
  }

  else
  {
    [(CKRecipientSelectionController *)self sendUpdateRecipientForAtom:v6];
    [(CKRecipientSelectionController *)self setIsDisambiguating:1];
  }
}

- (void)sendUpdateRecipientForAtom:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 recipient];
  v5 = [(CKRecipientSelectionController *)self searchListController];
  v7[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v5 updateRecipients:v6 disambiguatingRecipient:v4];

  [(CKRecipientSelectionController *)self _showSearchField];
}

- (void)composeRecipientView:(id)a3 showPersonCardForAtom:(id)a4
{
  v9 = a4;
  v5 = [v9 recipient];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = [v9 recipient];
    [(CKRecipientSelectionController *)self _showDetailsForRecipient:v7 canDelete:0];
    v8 = [(CKRecipientSelectionController *)self delegate];
    [v8 recipientSelectionControllerDidPushABViewController:self];
  }
}

- (void)composeRecipientView:(id)a3 didSelectRecipients:(id)a4
{
  v8 = a4;
  if ([(CKRecipientSelectionController *)self isDisambiguating])
  {
    [(CKRecipientSelectionController *)self setIsDisambiguating:0];
    [(CKRecipientSelectionController *)self _hideSearchField];
  }

  v5 = [v8 count] == 1;
  v6 = v8;
  if (v5)
  {
    v7 = [v8 objectAtIndex:0];
    if (![(CKRecipientSelectionController *)self homogenizePreferredServiceForiMessage]&& ![(CKRecipientSelectionController *)self _recipientIsGroup:v7])
    {
      [(CKRecipientSelectionController *)self _showActionSheetForRecipient:v7 animated:1];
    }

    v6 = v8;
  }
}

- (void)recipientViewDidBecomeFirstResponder:(id)a3
{
  v8 = a3;
  v4 = [(CKRecipientSelectionController *)self _shouldDisableToField];
  if (v4)
  {
    v5 = [(CKRecipientSelectionController *)self toField];
    v6 = [v5 addButton];
    [v6 setHidden:1];
  }

  else if (![(CKRecipientSelectionController *)self isEditable])
  {
    goto LABEL_5;
  }

  [v8 setEditable:!v4];
LABEL_5:
  v7 = [(CKRecipientSelectionController *)self delegate];
  [v7 recipientSelectionControllerDidBecomeFirstResponder:self];
}

- (void)recipientViewDidResignFirstResponder:(id)a3
{
  [a3 setEditable:0];
  v4 = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
  [v4 updateIfNeeded];
}

- (id)composeRecipientView:(id)a3 contextMenuConfigurationForAtom:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKRecipientSelectionController *)self toField];

  if (v8 != v6)
  {
    goto LABEL_2;
  }

  v11 = [v7 recipient];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [CKDetailsContactsManager alloc];
  v14 = [(CKRecipientSelectionController *)self conversation];
  v15 = [(CKDetailsContactsManager *)v13 initWithConversation:v14 delegate:self];
  [(CKRecipientSelectionController *)self setContactsManager:v15];

  if (isKindOfClass)
  {
    v16 = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v41 = v7;
    v17 = [v7 recipient];
    v18 = [v17 children];

    v19 = [v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v44 + 1) + 8 * i) normalizedAddress];
          v24 = [CKEntity entityForAddress:v23];
          [v16 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v20);
    }

    v25 = [(CKRecipientSelectionController *)self conversation];
    v26 = [v25 recipients];
    v27 = [v26 isEqualToArray:v16];

    if (v27)
    {
      v28 = [(CKRecipientSelectionController *)self conversation];
      v29 = [(CKRecipientSelectionController *)self contactsManager];
      v9 = [CKContextMenuGenerator menuForNamedGroupConversation:v28 andContactsManager:v29];
    }

    else
    {
      v9 = 0;
    }

    v7 = v41;
  }

  else
  {
    v30 = [(CKRecipientSelectionController *)self contactsManager];
    v31 = [v30 conformsToProtocol:&unk_1F06794C0];

    if (!v31 || ([v7 recipient], (v32 = objc_claimAutoreleasedReturnValue()) == 0) || (v33 = v32, objc_msgSend(v7, "recipient"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "normalizedAddress"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v33, !v35))
    {
LABEL_2:
      v9 = 0;
      goto LABEL_3;
    }

    v36 = [v7 recipient];
    v37 = [v36 normalizedAddress];
    v16 = [CKEntity entityForAddress:v37];

    v38 = [(CKRecipientSelectionController *)self contactsManager];
    v9 = [v38 contextMenuForEntity:v16 atom:v7];
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

- (BOOL)composeRecipientViewShowingSearchResults:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self searchListController];
  if ([v4 isSearchResultsHidden])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CKRecipientSelectionController *)self searchListController];
    v5 = [v6 hasSearchResults];
  }

  return v5;
}

- (BOOL)presentSearchResultsForComposeRecipientView:(id)a3
{
  v3 = [(CKRecipientSelectionController *)self searchListController];
  v4 = [v3 hasSearchResults];

  return v4;
}

- (void)dismissSearchResultsForComposeRecipientView:(id)a3
{
  [a3 clearText];
  v4 = [(CKRecipientSelectionController *)self searchListController];
  [v4 cancelSearch];

  [(CKRecipientSelectionController *)self _updateShowingSearch];
}

- (void)selectNextSearchResultForComposeRecipientView:(id)a3
{
  v3 = [(CKRecipientSelectionController *)self searchListController];
  [v3 selectNextSearchResult];
}

- (void)selectPreviousSearchResultForComposeRecipientView:(id)a3
{
  v3 = [(CKRecipientSelectionController *)self searchListController];
  [v3 selectPreviousSearchResult];
}

- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)a3 context:(unint64_t)a4
{
  v6 = [(CKRecipientSelectionController *)self searchListController];
  v7 = [v6 confirmSelectedRecipient];

  if (a4 == 1 && v7)
  {
    v8 = [(CKRecipientSelectionController *)self delegate];
    [v8 recipientSelectionControllerShouldResignFirstResponder:self];
  }

  return v7;
}

- (BOOL)expandSelectedSearchResultForComposeRecipientView:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self searchListController];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(CKRecipientSelectionController *)self searchListController];
  v7 = [v6 expandSelectedRecipient];

  return v7;
}

- (BOOL)collapseSelectedSearchResultForComposeRecipientView:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self searchListController];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(CKRecipientSelectionController *)self searchListController];
  v7 = [v6 collapseSelectedRecipient];

  return v7;
}

- (UIEdgeInsets)layoutMarginsForComposeRecipientView:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isModernSplitViewControllerEnabled];

  if (v6)
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
    v24 = [v4 effectiveUserInterfaceLayoutDirection];
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = v19;
    }

    if (v24)
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

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(CKRecipientSelectionController *)self toField];
      v12 = [v11 text];
      *buf = 134218240;
      v36 = a5;
      v37 = 2048;
      v38 = [v12 length];
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Selected recipient at index %ld, searchText length %ld", buf, 0x16u);
    }
  }

  v13 = [(CKRecipientSelectionController *)self toField];
  [v13 clearText];

  [(CKRecipientSelectionController *)self _updateShowingSearch];
  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 stewieEnabled];

  if (v15)
  {
    if ([v9 kind] == 6)
    {
      v16 = [(CKRecipientSelectionController *)self _openStewieAppForEmergencyIfRequired];
    }

    else
    {
      if ([v9 kind] != 7)
      {
        goto LABEL_11;
      }

      v16 = [(CKRecipientSelectionController *)self _openStewieAppForRoadsideIfRequired];
    }

    if (v16)
    {
      goto LABEL_31;
    }
  }

LABEL_11:
  v17 = [(CKRecipientSelectionController *)self _recipientIsGroup:v9];
  if (v17)
  {
    v18 = [(CKRecipientSelectionController *)self shouldAtomizeToConversationName];
    if (![(CKRecipientSelectionController *)self isMAIDGroupsEnabled])
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_26:
      [(CKRecipientSelectionController *)self addRecipient:v9];
      v24 = [v9 address];
      v25 = v24 == 0;

      if (v25)
      {
        [(CKRecipientSelectionController *)self handlePendingRecipient:v9];
      }

      goto LABEL_28;
    }

    v19 = v18 ^ 1;
  }

  else
  {
    if (![(CKRecipientSelectionController *)self isMAIDGroupsEnabled])
    {
      goto LABEL_26;
    }

    v19 = 0;
  }

  if (!(v19 & 1 | v17 & ([v9 sourceType] == 256)))
  {
    goto LABEL_26;
  }

LABEL_17:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = [(CKRecipientSelectionController *)self _expandedRecipientsForGroupRecipient:v9, 0];
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
  v26 = [(CKRecipientSelectionController *)self toField];
  v27 = [v26 isFirstResponder];

  if ((v27 & 1) == 0)
  {
    v28 = [(CKRecipientSelectionController *)self toField];
    [v28 becomeFirstResponder];
  }

  v29 = [(CKRecipientSelectionController *)self searchListController];
  [v29 didSelectRecipient:v9 atIndex:a5];

LABEL_31:
}

- (BOOL)_openStewieAppForEmergencyIfRequired
{
  v3 = [MEMORY[0x1E69A5B00] sharedInstance];
  v4 = [v3 isStewieEmergencyActive];

  if (v4)
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

      v9 = [(CKRecipientSelectionController *)self searchListController];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __70__CKRecipientSelectionController__openStewieAppForEmergencyIfRequired__block_invoke;
      v16[3] = &unk_1E72EB8D0;
      v16[4] = self;
      v6 = v6;
      v17 = v6;
      [v9 dismissViewControllerAnimated:1 completion:v16];
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

  return v4 ^ 1;
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
  v3 = [MEMORY[0x1E69A5B00] sharedInstance];
  v4 = [v3 isStewieRoadsideActive];

  if (v4)
  {
    v5 = +[CKConversationList sharedConversationList];
    v6 = [MEMORY[0x1E69A5B00] sharedInstance];
    v7 = [v6 mostRecentlyUsedRoadsideChatIdentifier];
    v8 = [v5 conversationForExistingChatWithChatIdentifier:v7];

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

      v11 = [(CKRecipientSelectionController *)self searchListController];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69__CKRecipientSelectionController__openStewieAppForRoadsideIfRequired__block_invoke;
      v18[3] = &unk_1E72EB8D0;
      v18[4] = self;
      v8 = v8;
      v19 = v8;
      [v11 dismissViewControllerAnimated:1 completion:v18];
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

  return v4 ^ 1;
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

- (void)_handleIDSResultsWhenSearchTableIsHidden:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = a3;
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
  v5 = [(CKRecipientSelectionController *)self toField];
  v6 = [v5 recipients];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 address];
        v12 = v11 == 0;

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

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)handlePendingRecipient:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Trying to updating pending state for recipient: %@", &v16, 0xCu);
    }
  }

  v6 = [(CKRecipientSelectionController *)self preferredRecipientForPendingUnifiedContact:v4];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E6996438]);
    v8 = [v4 children];
    v9 = [v7 initWithChildren:v8 defaultChild:v6];

    v10 = [v6 normalizedAddress];
    [v9 setAddress:v10];

    v11 = [(CKRecipientSelectionController *)self toField];
    [v11 removeRecipient:v4];

    v12 = [(CKRecipientSelectionController *)self toField];
    [v12 addRecipient:v9];

    v13 = [(CKRecipientSelectionController *)self toField];
    [v13 invalidateAtomPresentationOptionsForRecipient:v6];

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

- (id)preferredRecipientForPendingUnifiedContact:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Looking for preffered recipient for the pending recipient: %@", &v12, 0xCu);
    }
  }

  v6 = [v4 children];
  v7 = [(CKRecipientSelectionController *)self preferredRecipientForExistingConversationOfRecipients:v6];

  if (!v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "No recipient in existing conversations. Looking for best handle for new contact: %@", &v12, 0xCu);
      }
    }

    v9 = [v4 children];
    v7 = [(CKRecipientSelectionController *)self preferredRecipientForNewContact:v9];
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

- (char)serviceTypeForRecipient:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8020] supportsBusinessChat];
  v6 = [v4 normalizedAddress];
  v7 = [v4 IDSCanonicalAddressForAddress:v6];

  v8 = [(CKRecipientSelectionController *)self searchListController];
  v9 = [(CKRecipientSelectionController *)self searchListController:v8 idStatusForIDSID:v7];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v4 normalizedAddress];
      *buf = 138412546;
      v38 = v11;
      v39 = 2048;
      v40 = v9;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "IDS status for recipinet address %@ is %ld", buf, 0x16u);
    }
  }

  if (v9 == 2)
  {
    LOBYTE(v16) = 0;
  }

  else if (v9 != 1 || (([MEMORY[0x1E69A5C90] iMessageService], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "__ck_serviceType"), v12, v14 = MEMORY[0x193AF5D00](v7), !v5) ? (v15 = 0) : (v15 = 4), !v14 ? (v16 = v13) : (v16 = v15), v16 == 1))
  {
    v17 = [(CKRecipientSelectionController *)self searchListController];
    v18 = [v17 smsEnabled];

    if (v18)
    {
      v19 = +[CKConversationList sharedConversationList];
      v20 = [(CKRecipientSelectionController *)self searchListController];
      v21 = [v20 defaultiMessageAccount];
      v22 = [v4 normalizedAddress];
      v23 = IMStripFormattingFromAddress();
      v24 = [v21 imHandleWithID:v23 alreadyCanonical:0];

      if (v24)
      {
        v36 = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        v26 = [v19 conversationForHandles:v25 displayName:0 joinedChatsOnly:1 create:0];

        if (v26)
        {
          v27 = [v26 sendingService];
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(19);
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v38 = v24;
              v39 = 2112;
              v40 = v27;
              _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Updating service color in recipient search list for handle: %@, with service: %@", buf, 0x16u);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
          {
            v34 = v24;
            v35 = v27;
            _CKLogExternal();
          }

          LOBYTE(v16) = [v27 __ck_serviceType];
          v29 = [v24 isBusiness];
          if (v5)
          {
            v30 = 4;
          }

          else
          {
            v30 = 0;
          }

          if (v29)
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
          v32 = [v4 normalizedAddress];
          *buf = 138412290;
          v38 = v32;
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

- (id)expandedRecipientsForGroupRecipient:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isGroup])
  {
    v4 = [v3 children];
  }

  else
  {
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  v5 = v4;

  return v5;
}

- (char)serviceColorForRecipientAddresses:(id)a3
{
  v4 = a3;
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
  [v4 enumerateObjectsUsingBlock:v6];
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

- (id)conversationForRecipients:(id)a3
{
  v4 = a3;
  v5 = +[CKConversationList sharedConversationList];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __60__CKRecipientSelectionController_conversationForRecipients___block_invoke;
  v19 = &unk_1E72EC398;
  v20 = self;
  v7 = v6;
  v21 = v7;
  [v4 enumerateObjectsUsingBlock:&v16];

  v8 = [v5 conversationForHandles:v7 displayName:0 joinedChatsOnly:1 create:{0, v16, v17, v18, v19, v20}];
  if ([v7 count] != 1)
  {
    goto LABEL_5;
  }

  v9 = [v8 chat];
  v10 = [v9 lastFinishedMessageItem];

  v11 = [v10 handle];
  v12 = [v7 firstObject];
  v13 = [v12 ID];

  if (!v10 || [v11 isEqualToString:v13])
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

- (BOOL)lastSentMessageWasNotDeliveredForConversation:(id)a3
{
  v3 = [a3 chat];
  v4 = [v3 shouldForceServerStatusRefresh];

  return v4;
}

- (BOOL)hasEmailRecipientsInAddresses:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (IMStringIsEmail())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)colorTypeForRecipient:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKRecipientSelectionController *)self expandedRecipientsForGroupRecipient:v6];
  v9 = [v8 __imArrayByApplyingBlock:&__block_literal_global_446];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = [(CKRecipientSelectionController *)self serviceColorForRecipientAddresses:v9];
  if ([v9 count])
  {
    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E69A82A0] isInternationalSpamFilteringEnabled];
  if (v10)
  {
    v12 = v11;
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
    v15 = [(CKRecipientSelectionController *)self searchListController];
    v16 = [v15 smsEnabled];

    if ((v16 | v14))
    {
      goto LABEL_14;
    }

LABEL_15:
    v24 = +[CKUIBehavior sharedBehaviors];
    v25 = [v24 theme];
    v23 = [v25 recipientTextColorForColorType:*(v31 + 24)];

    v7[2](v7, v23);
    goto LABEL_16;
  }

  v13 = [MEMORY[0x1E69A82A0] receiverIsCandidateForHawking:v10];
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
  v26 = v6;
  [(CKRecipientSelectionController *)self lastSentMessageWasNotDeliveredForConversation:v17];
  v18 = [v17 chat];
  [v18 receivedResponseForChat];

  v19 = [v17 chat];
  v20 = [v17 chat];
  v27 = [v20 lastAddressedHandleID];
  v28 = [v17 chat];
  v21 = [v28 lastAddressedSIMID];
  [v17 forceMMS];
  v22 = [v17 chat];
  [v22 isDowngraded];
  v23 = v17;
  v29 = v7;
  IMChatCalculateServiceForSendingNewComposeMaybeForce();

  v6 = v26;
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

- (id)preferredColorTypeForExistingConversation:(id)a3
{
  v3 = a3;
  v4 = [v3 sendingService];
  if ([v3 isBusinessConversation])
  {
    v5 = 6;
  }

  else if ([v3 isStewieConversation])
  {
    v5 = 12;
  }

  else
  {
    v5 = [v4 __ck_displayColor];
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 theme];
  v8 = [v7 recipientTextColorForColorType:v5];

  return v8;
}

- (id)preferredRecipientForExistingConversationOfRecipients:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v16 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Looking for existing conversation for these recipients: %@", buf, 0xCu);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__CKRecipientSelectionController_preferredRecipientForExistingConversationOfRecipients___block_invoke;
  v8[3] = &unk_1E72EC4D8;
  v8[4] = self;
  v8[5] = &v9;
  [v4 enumerateObjectsUsingBlock:v8];
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

- (id)handleForRecipientNormalizedAddress:(id)a3
{
  v4 = a3;
  v5 = [(CKRecipientSelectionController *)self searchListController];
  v6 = [v5 defaultiMessageAccount];
  v7 = [v4 normalizedAddress];

  v8 = IMStripFormattingFromAddress();
  v9 = [v6 imHandleWithID:v8 alreadyCanonical:0];

  return v9;
}

- (id)chatForIMHandle:(id)a3
{
  v3 = MEMORY[0x1E69A5AF8];
  v4 = a3;
  v5 = [v3 sharedRegistry];
  v6 = [v5 existingChatForIMHandle:v4 allowRetargeting:0 fixChatHandle:0];

  return v6;
}

- (char)_satelliteConnectedColorOverrideForRecipient:(id)a3 inConversation:(id)a4
{
  v4 = [a4 sendingService];
  v5 = [MEMORY[0x1E69A5CA0] iMessageLiteService];

  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E69A5CA0] satelliteSMSService];

    if (v4 == v6)
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

- (void)tintColorForRecipient:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 recipientTextColorForColorType:0xFFFFFFFFLL];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Request for setting color for: %@.", buf, 0xCu);
    }
  }

  v12 = [(CKRecipientSelectionController *)self expandedRecipientsForGroupRecipient:v6];
  v13 = [(CKRecipientSelectionController *)self conversationForRecipients:v12];
  v14 = [MEMORY[0x1E69A5B00] sharedInstance];
  v15 = [v14 isSatelliteConnectionActive];

  if (v15)
  {
    v16 = [(CKRecipientSelectionController *)self _satelliteConnectedColorOverrideForRecipient:v6 inConversation:v13];
    v17 = +[CKUIBehavior sharedBehaviors];
    v18 = [v17 theme];
    v19 = [v18 recipientTextColorForColorType:v16];
    v7[2](v7, v19);
  }

  else if (v13 && (([v6 isNotAChildOfUnifiedRecipient] & 1) != 0 || objc_msgSend(v6, "isUnnamedGroup")))
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "There is existing conversation with recipient: %@. We will set the color from the conversaion.", buf, 0xCu);
      }
    }

    v21 = [(CKRecipientSelectionController *)self preferredColorTypeForExistingConversation:v13];

    v7[2](v7, v21);
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
        v31 = v6;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "There is no existing conversation with recipient: %@", buf, 0xCu);
      }
    }

    v23 = [v6 children];
    v24 = [(CKRecipientSelectionController *)self hasIDSResultsForAllRecipients:v23];

    v25 = IMOSLoggingEnabled();
    if (v24)
    {
      if (v25)
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v6;
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Setting color from the IDS results for: %@ ", buf, 0xCu);
        }
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __67__CKRecipientSelectionController_tintColorForRecipient_completion___block_invoke;
      v28[3] = &unk_1E72EC500;
      v29 = v7;
      [(CKRecipientSelectionController *)self colorTypeForRecipient:v6 completion:v28];
    }

    else
    {
      if (v25)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v6;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "No IDS results: %@.", buf, 0xCu);
        }
      }

      v7[2](v7, v10);
    }
  }
}

- (id)recipientIsDuetSuggestion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(v3);
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

      v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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

- (id)preferredRecipientForRecipients:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Searching for preferred recipient for unified recipient: %@", &v11, 0xCu);
    }
  }

  if (v4 && [v4 count])
  {
    v6 = [(CKRecipientSelectionController *)self preferredRecipientForExistingConversationOfRecipients:v4];
    if (v6 || ([(CKRecipientSelectionController *)self preferredRecipientForNewContact:v4], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
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

      v8 = [(CKRecipientSelectionController *)self toField];
      [v8 invalidateAtomPresentationOptionsForRecipient:v6];
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

- (id)preferredRecipientForNewContact:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Looking for preferred recipient for new contact: %@", &v14, 0xCu);
    }
  }

  if ([(CKRecipientSelectionController *)self hasIDSResultsForAllRecipients:v4])
  {
    v6 = [(CKRecipientSelectionController *)self preferredRecipientForRecipients:v4 forServiceType:2];
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
      v6 = [(CKRecipientSelectionController *)self preferredRecipientForRecipients:v4 forServiceType:3];
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
        v6 = [(CKRecipientSelectionController *)self preferredRecipientForRecipients:v4 forServiceType:4];
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
          v6 = [(CKRecipientSelectionController *)self preferredRecipientForRecipients:v4 forServiceType:0];
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

- (id)preferredRecipientForRecipients:(id)a3 forServiceType:(char)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([(CKRecipientSelectionController *)self serviceTypeForRecipient:v13, v17]== v4)
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

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (BOOL)hasIDSResultsForAllRecipients:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Checking if we have IDS results for : %@ ", buf, 0xCu);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
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
        v12 = [v11 normalizedAddress];
        v13 = [v11 IDSCanonicalAddressForAddress:v12];

        v14 = [(CKRecipientSelectionController *)self searchListController];
        v15 = [(CKRecipientSelectionController *)self searchListController:v14 idStatusForIDSID:v13];

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

- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4
{
  v5 = a4;
  if ([v5 isGroup])
  {
    [(CKRecipientSelectionController *)self _showDetailsForGroup:v5];
  }

  else
  {
    [(CKRecipientSelectionController *)self _showDetailsForRecipient:v5 canDelete:1];
  }
}

- (void)searchListControllerDidScroll:(id)a3
{
  v6 = [(CNComposeRecipientTextView *)self->_toField textView];
  if ([v6 isFirstResponder])
  {
    v4 = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];

    if ((v4 & 1) == 0)
    {
      [(CKRecipientSelectionController *)self setPreventAtomization:1];
      v5 = [(CKRecipientSelectionController *)self delegate];
      [v5 recipientSelectionControllerRequestDismissKeyboard:self];

      [(CKRecipientSelectionController *)self setPreventAtomization:0];
    }
  }

  else
  {
  }
}

- (void)refreshAvailabilityForRecipients:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKRecipientSelectionController *)self conversation];
  v9 = [v8 serviceReachabilityContextForRefreshContext:v7];

  v10 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__CKRecipientSelectionController_refreshAvailabilityForRecipients_context___block_invoke;
  v13[3] = &unk_1E72EC548;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v11 = v7;
  v12 = v6;
  [v10 refreshAvailabilityForRecipients:v12 context:v9 resultHandler:v13];
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

- (void)searchListController:(id)a3 destinationsUpdated:(id)a4
{
  v5 = a4;
  v6 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
  [v6 addEntriesFromIDSResults:v5];
}

- (int64_t)searchListController:(id)a3 idStatusForIDSID:(id)a4
{
  v5 = a4;
  v6 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
  v7 = [v6 idStatusForRecipient:v5 service:*MEMORY[0x1E69A7AF0]];

  return v7;
}

- (void)autocompleteGroupDetailViewController:(id)a3 didAskToRemoveGroup:(id)a4
{
  [(CKRecipientSelectionController *)self setRecentContactForPresentedCNCard:a4];

  [(CKRecipientSelectionController *)self _removeRecent];
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v5 = [v4 getContactStore];
    v6 = self->_contactStore;
    self->_contactStore = v5;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v9 = a4;
  v5 = +[CKRecipientGenerator sharedRecipientGenerator];
  v6 = [v5 recipientWithContactProperty:v9];

  if (!v6)
  {
    v7 = [(CKRecipientSelectionController *)self toField];
    v8 = [v9 contact];
    v6 = [(CKRecipientSelectionController *)self composeRecipientView:v7 composeRecipientForContact:v8];
  }

  [(CKRecipientSelectionController *)self addRecipient:v6];
  [(CKRecipientSelectionController *)self _dismissPeoplePicker];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v5 = a4;
  v6 = [(CKRecipientSelectionController *)self toField];
  v7 = [(CKRecipientSelectionController *)self composeRecipientView:v6 composeRecipientForContact:v5];

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

- (void)setGameCenterPickerBlock:(id)a3
{
  v4 = _Block_copy(a3);
  gameCenterPickerBlock = self->_gameCenterPickerBlock;
  self->_gameCenterPickerBlock = v4;

  if (!self->_toFieldPlaceholderLabel)
  {
    v6 = [(CKRecipientSelectionController *)self toField];
    v7 = [v6 textView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(CKRecipientSelectionController *)self toField];
    v15 = [v14 labelView];
    [v15 bounds];
    v17 = v16;

    v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v9, v11, v13, v17}];
    [(CKRecipientSelectionController *)self setToFieldPlaceholderLabel:v18];

    [(CKRecipientSelectionController *)self systemMinimumLayoutMargins];
    v20 = v19;
    v21 = [(CKRecipientSelectionController *)self toField];
    [v21 titleLabelBaselineAlignmentRectForLabel:self->_toFieldPlaceholderLabel];
    v23 = v22;
    v25 = v24;
    v48 = v26;

    v27 = [(CKRecipientSelectionController *)self toField];
    v28 = [v27 addButton];
    [v28 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = [(CKRecipientSelectionController *)self toField];
    [v37 safeAreaInsets];
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
    v42 = [(CKRecipientSelectionController *)self toField];
    v43 = [v42 textView];
    v44 = [v43 font];
    [(UILabel *)self->_toFieldPlaceholderLabel setFont:v44];

    v45 = [MEMORY[0x1E69DC888] lightGrayColor];
    [(UILabel *)self->_toFieldPlaceholderLabel setTextColor:v45];

    v46 = CKFrameworkBundle();
    v47 = [v46 localizedStringForKey:@"GAME_CENTER_TO_FIELD_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UILabel *)self->_toFieldPlaceholderLabel setText:v47];

    [(UILabel *)self->_toFieldPlaceholderLabel setUserInteractionEnabled:0];
    v49 = [(CKRecipientSelectionController *)self toField];
    [v49 addSubview:self->_toFieldPlaceholderLabel];
  }
}

- (void)setGameCenterPickedHandles:(id)a3 playerNames:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count") + objc_msgSend(v6, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = v6;
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
          v15 = [(CKRecipientSelectionController *)self toField];
          v16 = [(CKRecipientSelectionController *)self composeRecipientView:v15 composeRecipientForAddress:v14];

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
    v17 = v7;
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
    v25 = [(CKRecipientSelectionController *)self _canonicalRecipientAddresses];
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:v25 withCompletionBlock:0];
  }

  [(CKRecipientSelectionController *)self _dismissPeoplePicker];
  v26 = [(CKRecipientSelectionController *)self toField];
  v27 = [v26 inputAccessoryView];
  [v27 setHidden:0];
}

- (void)reset
{
  v3 = [(CKRecipientSelectionController *)self toField];
  [v3 reset];

  [(CKRecipientSelectionController *)self setSearchResultsHidden:1];
  [(CKRecipientSelectionController *)self setPeoplePickerHidden:1];
  [(CKRecipientSelectionController *)self stopCheckingRecipientAvailabilityAndRemoveAllTimers];
  self->_didShowOneTimeErrorAlert = 0;
  v4 = [(CKRecipientSelectionController *)self recipients];
  v5 = [v4 copy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__CKRecipientSelectionController_reset__block_invoke;
  v11[3] = &unk_1E72EC570;
  v11[4] = self;
  [v5 enumerateObjectsUsingBlock:v11];
  v6 = [(CKRecipientSelectionController *)self searchListController];
  v7 = [v6 tableView];
  [v7 setAlpha:1.0];

  v8 = [(CKRecipientSelectionController *)self searchListController];
  [v8 invalidateSearchManager];

  v9 = [(CKRecipientSelectionController *)self searchListController];
  [v9 setEnteredRecipients:0];

  v10 = [(CKRecipientSelectionController *)self searchListController];
  [v10 setSuppressGroupSuggestions:0];
}

- (id)recipients
{
  v2 = [(CKRecipientSelectionController *)self toField];
  v3 = [v2 recipients];

  return v3;
}

- (void)setConversation:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([(CKPendingConversation *)self->_conversation isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_conversation, a3);
    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isKeyTransparencyEnabled];

    if (v7)
    {
      v8 = [v5 chat];
      [v8 fetchKTStatus];
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Adopting pending conversation %@", &v10, 0xCu);
      }
    }
  }
}

- (void)addRecipients:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = v4;
    v5 = v4;
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
          v10 = [v9 address];
          v11 = v10 == 0;

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

          v13 = [(CKRecipientSelectionController *)self toField];
          [v13 addRecipient:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v6);
    }

    v4 = v14;
  }
}

- (BOOL)isSearchResultsHidden
{
  v3 = [(CKRecipientSelectionController *)self searchListController];

  if (!v3)
  {
    return 1;
  }

  v4 = [(CKRecipientSelectionController *)self searchListController];
  v5 = [v4 isSearchResultsHidden];

  return v5;
}

- (void)setEditable:(BOOL)a3
{
  if (self->_editable != a3)
  {
    self->_editable = a3;
    v4 = [(CKRecipientSelectionController *)self toField];
    [v4 setEditable:self->_editable];

    v5 = [(CKRecipientSelectionController *)self toField];
    [v5 setUserInteractionEnabled:self->_editable];

    v6 = [(CKRecipientSelectionController *)self toField];
    [v6 setEnabled:self->_editable];

    [(CKRecipientSelectionController *)self _updateToField];
  }
}

- (BOOL)toFieldIsFirstResponder
{
  v2 = [(CKRecipientSelectionController *)self toField];
  v3 = [v2 textView];
  v4 = [v3 isFirstResponder];

  return v4;
}

- (void)setSearchResultsHidden:(BOOL)a3
{
  if (a3)
  {

    [(CKRecipientSelectionController *)self _hideSearchField];
  }

  else
  {
    v6 = [(CKRecipientSelectionController *)self toField];
    v4 = [v6 textView];
    if ([v4 isFirstResponder])
    {
      v5 = [(CKRecipientSelectionController *)self isPeoplePickerHidden];

      if (v5)
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
  v2 = [(CKRecipientSelectionController *)self searchListController];
  [v2 invalidateOutstandingIDStatusRequests];
}

- (BOOL)finishedComposingRecipients
{
  v3 = [(CKRecipientSelectionController *)self toField];
  v4 = [v3 textView];
  v5 = [v4 isFirstResponder];

  if (!v5)
  {
    return 1;
  }

  v6 = [(CKRecipientSelectionController *)self toField];
  v7 = [v6 text];

  if (v7)
  {
    v8 = [v7 isEqualToString:&stru_1F04268F8];
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
    v3 = [(CKRecipientSelectionController *)self recipients];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__CKRecipientSelectionController_hasFailediMessageRecipients__block_invoke;
    v6[3] = &unk_1E72EC4D8;
    v6[4] = self;
    v6[5] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];
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
  v3 = [MEMORY[0x1E699BE70] sharedInstance];
  if ([v3 supportsSMS])
  {

LABEL_13:
    LOBYTE(v6) = 0;
    return v6;
  }

  v4 = [MEMORY[0x1E69A5CA0] smsEnabled];

  if (!v4)
  {
    goto LABEL_13;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CKRecipientSelectionController *)self recipients];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) rawAddress];
        IsEmergencyPhoneNumber = IMStringIsEmergencyPhoneNumber();

        if (IsEmergencyPhoneNumber)
        {
          LOBYTE(v6) = 1;
          goto LABEL_15;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(CKRecipientSelectionController *)self toField];
  v4 = [v3 recipients];
  if ([v4 count] == 1)
  {
    v5 = [(CKRecipientSelectionController *)self toField];
    v6 = [v5 recipients];
    v7 = [v6 firstObject];
    v8 = [v7 isGroup];
  }

  else
  {
    v8 = 0;
  }

  if ((v14[3] & 1) == 0 && (([(CKRecipientSelectionController *)self homogenizePreferredServiceForiMessage]| v8) & 1) == 0)
  {
    v9 = [(CKRecipientSelectionController *)self recipients];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CKRecipientSelectionController_hasPendingiMessageRecipients__block_invoke;
    v12[3] = &unk_1E72EC4D8;
    v12[4] = self;
    v12[5] = &v13;
    [v9 enumerateObjectsUsingBlock:v12];
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
  v3 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
  v4 = [v3 allValues];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_470];

  v5 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
  [v5 removeAllObjects];
}

- (double)collapsedHeight
{
  [MEMORY[0x1E6996428] preferredHeight];
  v4 = v3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 recipientSelectionCollapsedHeightIncludesNavigationBar];
  v7 = 0.0;
  if (v6)
  {
    [(CKRecipientSelectionController *)self _navigationBarInsets];
  }

  v8 = v4 + v7;

  return v8;
}

- (double)selectionFieldsHeight
{
  v2 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v2 frame];
  v4 = v3;

  return v4;
}

- (double)glassPlatterCornerRadius
{
  v3 = [(CKRecipientSelectionController *)self toField];
  v4 = [v3 numberOfRowsOfTextInField];

  if (v4 < 2)
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
  v11 = [(CKRecipientSelectionController *)self view];
  v12 = [v11 effectiveUserInterfaceLayoutDirection];
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (!v12)
  {
    v6 = v10;
  }

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 fieldPlatterMarginInsetsForLayoutMargins:{v4, v13, v8, v6}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(CKRecipientSelectionController *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = [(CKRecipientSelectionController *)self delegate];
    v26 = [v25 recipientSelectionControllerShouldDisableTopFieldInsets:self];

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
  v5 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  v6 = [v5 layer];
  [v6 setCornerRadius:v4];

  v7 = *MEMORY[0x1E69796E8];
  v9 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  v8 = [v9 layer];
  [v8 setCornerCurve:v7];
}

- (void)refreshComposeSendingServiceForAddresses:(id)a3 context:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = objc_alloc_init(CKPendingConversationStatusRefreshContext);
  }

  v11 = [(CKPendingConversationStatusRefreshContext *)v9 availabilities];

  if (!v11)
  {
    v12 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
    [(CKPendingConversationStatusRefreshContext *)v9 setAvailabilities:v12];
  }

  v13 = [(CKRecipientSelectionController *)self conversation];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__CKRecipientSelectionController_refreshComposeSendingServiceForAddresses_context_withCompletionBlock___block_invoke;
  v15[3] = &unk_1E72EC5B8;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 refreshComposeSendingServiceForAddresses:v8 context:v9 withCompletionBlock:v15];
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

- (void)refreshComposeSendingServiceForAddresses:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __95__CKRecipientSelectionController_refreshComposeSendingServiceForAddresses_withCompletionBlock___block_invoke;
    v8[3] = &unk_1E72EC5E0;
    v9 = v6;
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:a3 context:0 withCompletionBlock:v8];
  }

  else
  {
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:a3 context:0 withCompletionBlock:0];
  }
}

- (void)addRecipient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (([MEMORY[0x1E69A8020] supportsBusinessChat] & 1) != 0 || (objc_msgSend(v4, "rawAddress"), v5 = objc_claimAutoreleasedReturnValue(), IMChatCanonicalIDSIDsForAddress(), v6 = objc_claimAutoreleasedReturnValue(), v7 = MEMORY[0x193AF5D00](), v6, v5, !v7))
    {
      v8 = [(CKRecipientSelectionController *)self toField];
      [v8 addRecipient:v4];

      v9 = [(CKRecipientSelectionController *)self _canonicalRecipientAddresses];
      v10 = [(CKRecipientSelectionController *)self conversation];
      v11 = [v10 sendingService];
      v12 = [MEMORY[0x1E69A5CA0] iMessageService];

      if (v11 == v12)
      {
        v18 = 0;
      }

      else
      {
        v13 = MEMORY[0x1E695DFD8];
        v14 = [MEMORY[0x1E69A5CA0] iMessageService];
        v15 = [v14 internalName];
        v16 = [MEMORY[0x1E69A5CA0] rcsService];
        v17 = [v16 internalName];
        v18 = [v13 setWithObjects:{v15, v17, 0}];
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v20 = [v4 autocompleteResult];
        v21 = [v20 identifier];

        v22 = [MEMORY[0x1E69A5AF8] sharedRegistry];
        v23 = [v22 existingChatWithGUID:v21];

        if (v23)
        {
          v24 = [MEMORY[0x1E69A5CA8] sharedController];
          v25 = [v24 reachabilityContextForChat:v23];
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
      v27 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
      v28 = [(CKPendingConversationStatusRefreshContext *)v26 initWithAvailabilities:v27];

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
      v31 = v4;
      [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:v9 context:v28 withCompletionBlock:v30];
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

- (void)removeRecipient:(id)a3
{
  v4 = a3;
  [(CKRecipientSelectionController *)self _removeAvailabilityTimeoutTimerForRecipient:v4];
  v5 = [(CKRecipientSelectionController *)self toField];
  [v5 removeRecipient:v4];

  v6 = [(CKRecipientSelectionController *)self _canonicalRecipientAddresses];
  [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:v6 withCompletionBlock:0];
}

- (id)_canonicalRecipientAddresses
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CKRecipientSelectionController *)self recipients];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 composeRecipients];
        }

        else if ([v9 isGroup])
        {
          v10 = [v9 children];
        }

        else
        {
          if ([(CKRecipientSelectionController *)self isGameCenterRecipient:v9])
          {
            v11 = 0;
            goto LABEL_14;
          }

          v18 = v9;
          v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
        }

        v11 = v10;
LABEL_14:
        v12 = [v11 __imArrayByApplyingBlock:&__block_literal_global_479_0];
        [v3 addObjectsFromArray:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)_shouldDisableToField
{
  v3 = [(CKRecipientSelectionController *)self conversation];
  v4 = [v3 isBusinessConversation];

  v5 = [(CKRecipientSelectionController *)self conversation];
  LOBYTE(v3) = [v5 isStewieConversation];

  return v4 | v3;
}

- (void)_updateToField
{
  v3 = [(CKRecipientSelectionController *)self toField];
  v4 = [(CKRecipientSelectionController *)self _toFieldCollapsedTextColor];
  [v3 setInactiveTextColor:v4];

  v5 = [(CKRecipientSelectionController *)self toField];
  v6 = [v5 addButton];
  v7 = [(CKRecipientSelectionController *)self conversation];
  [v6 setEnabled:{objc_msgSend(v7, "canInsertMoreRecipients")}];

  v8 = [(CKRecipientSelectionController *)self toField];
  [v8 invalidateAtomPresentationOptions];

  if ([(CKRecipientSelectionController *)self _shouldDisableToField])
  {
    v9 = [(CKRecipientSelectionController *)self toField];
    v10 = [v9 addButton];
    [v10 setHidden:1];

    v11 = [(CKRecipientSelectionController *)self toField];
    v12 = [v11 textView];
    [v12 setEditable:0];
  }

  [(CKRecipientSelectionController *)self _refreshActionSheet];
  v13 = [(CKRecipientSelectionController *)self searchListController];

  if (v13)
  {
    v14 = [(CKRecipientSelectionController *)self searchListController];
    v15 = [(CKRecipientSelectionController *)self recipients];
    [v14 setEnteredRecipients:v15];
  }

  v16 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [v16 frame];
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

  v26 = [(CKRecipientSelectionController *)self view];
  [v26 bounds];
  v28 = v27;

  [(CKRecipientSelectionController *)self glassPlatterLayoutMargins];
  v30 = v29;
  v32 = v28 - (v29 + v31);
  v33 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v33 setFrame:{v30, v21, v32, v18}];

  [(CKRecipientSelectionController *)self _updateContainerCornerRadiusIfNeeded];
  v34 = [(CKRecipientSelectionController *)self toField];
  [v34 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;

  if (CKIsRunningInMacCatalyst())
  {
    [(CKRecipientSelectionController *)self composeRecipientViewOriginY];
    v38 = v41;
  }

  v42 = [(CKRecipientSelectionController *)self toField];
  [v42 setFrame:{v36, v38, v32, v40}];

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
  v3 = [(CKRecipientSelectionController *)self toField];
  [v3 clearText];

  v4 = [(CKRecipientSelectionController *)self recipients];
  v5 = [v4 copy];

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
  v3 = [(CKRecipientSelectionController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKRecipientSelectionController *)self delegate];
    v6 = [v5 associatedScrollViewForRecipientSelectionController:self];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CKRecipientSelectionController *)self associatedScrollViewPocketInteraction];
  v8 = [v7 _scrollView];

  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v20 = 134218240;
    v21 = v8;
    v22 = 2048;
    v23 = v6;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "-updateScrollPocketInteractionsIfNeeded called. Transitioning from scrollViews %p to %p.", &v20, 0x16u);
  }

  if (v8 != v6)
  {
    v10 = [(CKRecipientSelectionController *)self associatedScrollViewPocketInteraction];
    v11 = [v10 view];
    [v11 removeInteraction:v10];

    [(CKRecipientSelectionController *)self setAssociatedScrollViewPocketInteraction:0];
    v12 = v6;
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:v12 edge:1 style:1];
      v14 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [v14 addInteraction:v13];

      [(CKRecipientSelectionController *)self setAssociatedScrollViewPocketInteraction:v13];
    }
  }

  v15 = [(CKRecipientSelectionController *)self contactSearchScrollViewPocketInteraction];

  if (!v15)
  {
    v16 = [(CKRecipientSelectionController *)self searchListController];
    v17 = [v16 tableView];

    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:v17 edge:1 style:1];
      v19 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [v19 addInteraction:v18];

      [(CKRecipientSelectionController *)self setContactSearchScrollViewPocketInteraction:v18];
    }
  }
}

- (void)_updateYOriginSearchListController
{
  v3 = [(CKRecipientSelectionController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKRecipientSelectionController *)self separator];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if ([(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    v21 = [(CKRecipientSelectionController *)self toField];
    [v21 frame];
    v7 = v22;

    v23 = [(CKRecipientSelectionController *)self toField];
    [v23 frame];
    v16 = v24;
  }

  v25 = [(CKRecipientSelectionController *)self searchListController];
  v26 = [v25 view];
  [v26 setFrame:{v5, v7, v9, v11}];

  v27 = [(CKRecipientSelectionController *)self separator];
  [v27 setFrame:{v14, v16, v18, v20}];
}

- (id)_serviceForRecipientPresentationOptions
{
  v2 = [(CKRecipientSelectionController *)self conversation];
  v3 = [v2 sendingService];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E69A5C90] iMessageService];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)_atomPresentationOptionsForRecipient:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 address];

  if (v5)
  {
    if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
    {
      v6 = [(CKRecipientSelectionController *)self currentConversationContext];

      if (v6)
      {
        v7 = [(CKRecipientSelectionController *)self currentConversationContext];
        v8 = [v7 allowedByContactsHandle];
        v9 = [v4 normalizedAddress];
        v10 = [v8 objectForKey:v9];

        if (v10 && ![v10 BOOLValue])
        {

          v28 = 0x2000;
          goto LABEL_79;
        }
      }
    }

    v11 = [(CKRecipientSelectionController *)self conversation];
    v65 = [v11 sendingService];

    v12 = [(CKRecipientSelectionController *)self _serviceForRecipientPresentationOptions];
    v64 = [(CKRecipientSelectionController *)self _availibilityForRecipient:v4 onService:v12];

    v13 = [MEMORY[0x1E69A5C90] iMessageService];
    v14 = [(CKRecipientSelectionController *)self _availibilityForRecipient:v4 onService:v13];

    v15 = [v4 rawAddress];
    v16 = IMChatCanonicalIDSIDsForAddress();
    v17 = [v16 _stripFZIDPrefix];
    v18 = MEMORY[0x193AF5D40]();

    v19 = [(CKRecipientSelectionController *)self toField];
    v20 = [v19 recipients];
    if ([v20 count] == 1)
    {
      v21 = [(CKRecipientSelectionController *)self toField];
      v22 = [v21 recipients];
      v23 = [v22 firstObject];
      v24 = [v23 isGroup];

      if (v24)
      {
        v25 = 1;
        v26 = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v29 = [(CKRecipientSelectionController *)self delegate];
    if ([v29 recipientSelectionIsGroup:self])
    {
      v25 = 1;
    }

    else
    {
      v25 = [v4 isGroup];
    }

    v26 = 0;
LABEL_20:
    v30 = [MEMORY[0x1E69A5B00] sharedInstance];
    v31 = [v30 isSatelliteConnectionActive];

    if (v25 & v31)
    {
      v32 = 0x10000;
LABEL_71:
      if ([(CKRecipientSelectionController *)self shouldShowVerifiedIconForRecipient:v4])
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

    if ([(CKRecipientSelectionController *)self isGameCenterRecipient:v4])
    {
      v32 = 8;
      goto LABEL_71;
    }

    if ([v65 __ck_isRCS])
    {
      v33 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
      v34 = [v4 IDSCanonicalAddress];
      v35 = [v33 hasResultsForRecipient:v34];

      if (v35)
      {
        buf[0] = 0;
        v36 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v37 = [v4 IDSCanonicalAddress];
        v38 = [v65 name];
        v39 = [v36 reachabilityForRecipient:v37 service:v38 isFinal:buf];

        v40 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v41 = [v4 IDSCanonicalAddress];
        v42 = [v40 reachabilityForRecipient:v41 service:*MEMORY[0x1E69A7AE0]];

        if (v64 != -1)
        {
          [(CKRecipientSelectionController *)self _removeAvailabilityTimeoutTimerForRecipient:v4];
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
      v43 = [v65 __ck_isMadrid];
      if (v14 == 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = v43;
      }

      if (v44)
      {
        v32 = 0;
      }

      else
      {
        v32 = 2;
      }

      v45 = [v4 children];
      v46 = [v45 indexOfObjectPassingTest:&__block_literal_global_486_0];

      v47 = [v4 isGroup];
      if (([v65 __ck_isMadrid] & 1) == 0 && v25 & (v46 != 0x7FFFFFFFFFFFFFFFLL) | (((v47 | v18) & 1) == 0))
      {
        v32 = 1;
      }

      goto LABEL_71;
    }

    v48 = v64;
    if (v64 != -1)
    {
      [(CKRecipientSelectionController *)self _removeAvailabilityTimeoutTimerForRecipient:v4];
      v48 = v64;
    }

    if (v14 == 1)
    {
      if ((v18 & 1) == 0)
      {
        v49 = 0;
        v32 = ([v65 __ck_isMadrid] & 1) == 0;
        goto LABEL_69;
      }

      goto LABEL_58;
    }

    if (v48 == -1)
    {
      v51 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
      v52 = [v51 objectForKey:v4];

      if (v52)
      {
        v53 = [v52 isValid];
        v49 = v53 ^ 1;
        if (v53)
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
        [(CKRecipientSelectionController *)self _startAvailabilityTimeoutTimerForRecipient:v4];
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
      v56 = [(CKRecipientSelectionController *)self _alternateAddressesForRecipient:v4];
      v57 = [v56 __imArrayByApplyingBlock:&__block_literal_global_489];
      v58 = [CKPendingConversationStatusRefreshContext alloc];
      v59 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
      v60 = [(CKPendingConversationStatusRefreshContext *)v58 initWithAvailabilities:v59];

      v61 = [(CKRecipientSelectionController *)self conversation];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __71__CKRecipientSelectionController__atomPresentationOptionsForRecipient___block_invoke_3;
      v66[3] = &unk_1E72EC670;
      v66[4] = self;
      v67 = v4;
      [v61 refreshStatusForAddresses:v57 context:v60 withCompletionBlock:v66];
    }

    goto LABEL_71;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v69 = v4;
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

- (BOOL)shouldShowVerifiedIconForRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CKRecipientSelectionController *)self conversation];
  v6 = [v5 chat];
  v7 = [CKContactKeyVerificationRecipientsHelper shouldShowVerifiedIconForRecipient:v4 inChat:v6];

  return v7;
}

- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isKeyTransparencyEnabled];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:*MEMORY[0x1E69A5800]];

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

    v10 = [(CKRecipientSelectionController *)self recipients];
    v11 = [(CKRecipientSelectionController *)self conversation];
    v12 = [CKContactKeyVerificationRecipientsHelper recipientsToUpdateForUpdatedCKVHandles:v8 recipients:v10 inConversation:v11];

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
          v18 = [(CKRecipientSelectionController *)self toField];
          [v18 invalidateAtomPresentationOptionsForRecipient:v17];

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
      v13 = 1;
      goto LABEL_24;
    }

    v14 = [(CKRecipientSelectionController *)self conversation];
    v15 = [v14 isBusinessConversation];

    if (v15)
    {
      v13 = 6;
      goto LABEL_24;
    }

    v16 = [(CKRecipientSelectionController *)self conversation];
    v17 = [v16 isStewieConversation];

    if (v17)
    {
      v13 = 12;
      goto LABEL_24;
    }

    v22 = [(CKRecipientSelectionController *)self conversation];
    if ([v22 recipientCount] <= 1)
    {
    }

    else
    {
      v23 = [MEMORY[0x1E69A5B00] sharedInstance];
      v24 = [v23 isSatelliteConnectionActive];

      if (v24)
      {
        v13 = -1;
        goto LABEL_24;
      }
    }

    v3 = [(CKRecipientSelectionController *)self conversation];
    v25 = [v3 sendingService];
    v13 = [v25 __ck_displayColor];

LABEL_18:
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 3;
    goto LABEL_24;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(CKRecipientSelectionController *)self recipients];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v8 IDSCanonicalAddress];
        v10 = [v9 _appearsToBeEmail];

        if (v10)
        {
          v11 = [MEMORY[0x1E69A5C90] iMessageService];
          v12 = [(CKRecipientSelectionController *)self _availibilityForRecipient:v8 onService:v11];

          if (!v12)
          {
            v13 = 3;
            goto LABEL_18;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v13 = 0;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_24:
  v18 = +[CKUIBehavior sharedBehaviors];
  v19 = [v18 theme];
  v20 = [v19 recipientTextColorForColorType:v13];

  return v20;
}

- (void)_handleAddressBookChangedNotification:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
  [v4 setNeedsUpdate];

  v5 = [(CKRecipientSelectionController *)self toField];
  v6 = [v5 textView];
  v7 = [v6 isEditing];

  if ((v7 & 1) == 0)
  {
    v8 = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
    [v8 updateIfNeeded];
  }
}

- (void)_handleContactStoreBatchLoadCompleteNotification:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
  [v4 setNeedsUpdate];

  v5 = [(CKRecipientSelectionController *)self toField];
  v6 = [v5 textView];
  v7 = [v6 isEditing];

  if ((v7 & 1) == 0)
  {
    v8 = [(CKRecipientSelectionController *)self addressBookNotificationUpdater];
    [v8 updateIfNeeded];
  }
}

- (void)_handleAddressBookPartialChangedNotification:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A6868]];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A6858]];

  if ([v6 length] && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69A6840]) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69A6848]) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69A6850]) & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(CKRecipientSelectionController *)self recipients];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [(CKRecipientSelectionController *)self _addressForRecipient:*(*(&v16 + 1) + 8 * i)];
          v15 = [v6 isEqualToString:v14];

          if (v15)
          {
            [(CKRecipientSelectionController *)self _handleAddressBookChangedNotification:v4];
            goto LABEL_15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_handleConversationPreferredServiceDidChangeNotification:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    v8 = [v7 chat];
    if (v8)
    {
    }

    else
    {
      v9 = [(CKRecipientSelectionController *)self conversation];
      v10 = [v9 chat];

      if (!v10)
      {
        goto LABEL_11;
      }
    }

    v11 = [(CKRecipientSelectionController *)self conversation];
    v12 = [v11 chat];
    v13 = [v4 object];
    v14 = [v13 chat];
    v15 = [v12 isEqual:v14];

    if ((v15 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v4 object];
          v18 = [v17 chat];
          v19 = [v18 chatIdentifier];
          v20 = [(CKRecipientSelectionController *)self conversation];
          v21 = [v20 chat];
          v22 = [v21 chatIdentifier];
          v26 = 138412546;
          v27 = v19;
          v28 = 2112;
          v29 = v22;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "notification.object %@ conversation.chat %@", &v26, 0x16u);
        }
      }

      v23 = [(CKRecipientSelectionController *)self conversation];
      v24 = [v23 handles];
      v25 = [v24 __imArrayByApplyingBlock:&__block_literal_global_495_0];

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

- (char)_availibilityForRecipient:(id)a3 onService:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 rawAddress];
  v9 = IMChatCanonicalIDSIDsForAddress();

  v10 = IMOSLoggingEnabled();
  if (!v9)
  {
    if (v10)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v6 rawAddress];
        v22 = 138412546;
        v23 = v18;
        v24 = 2112;
        v25 = v6;
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
      v12 = [v6 rawAddress];
      v22 = 138412802;
      v23 = v12;
      v24 = 2112;
      v25 = v6;
      v26 = 2048;
      v27 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "IDSIDStatus for %@ / %@ returned %ld", &v22, 0x20u);
    }
  }

  v13 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
  v14 = [v7 internalName];
  v15 = [v13 idStatusForRecipient:v9 service:v14];

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
      v20 = [v6 rawAddress];
      v22 = 138412802;
      v23 = v20;
      v24 = 2112;
      v25 = v6;
      v26 = 2048;
      v27 = v16;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "availibilityForRecipient %@ / %@ returned as %ld", &v22, 0x20u);
    }
  }

  return v16;
}

- (void)_startAvailabilityTimeoutTimerForRecipient:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    [(CKRecipientSelectionController *)self setRecipientAvailibityTimers:v6];
  }

  v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:v4 forKey:@"recipient"];
  v8 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleRecipientAvailabilityTimeout_ selector:v7 userInfo:0 repeats:30.0];
  v9 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v9 addTimer:v8 forMode:*MEMORY[0x1E695D918]];

  v10 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
  [v10 setObject:v8 forKey:v4];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v4 address];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Started availability timer for %@", &v13, 0xCu);
    }
  }
}

- (void)_removeAvailabilityTimeoutTimerForRecipient:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
  v6 = [v5 objectForKey:v4];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 address];
      v9 = [v6 isValid];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }

      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Cancelling availability timer for %@ (was valid: %@)", &v13, 0x16u);
    }
  }

  if (v6)
  {
    v11 = [(CKRecipientSelectionController *)self recipientAvailibityTimers];
    [v11 removeObjectForKey:v4];

    [v6 invalidate];
  }

  v12 = [(CKRecipientSelectionController *)self delegate];
  [v12 recipientSelectionController:self didFinishAvailaiblityLookupForRecipient:v4];
}

- (void)_handleRecipientAvailabilityTimeout:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"recipient"];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 address];
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Timeout of availability timer for %@", buf, 0xCu);
    }
  }

  if (CKShowInternalErrors())
  {
    v9 = [v6 rawAddress];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"RECIPIENT_AVAILABILITY_TIMEOUT_ERROR_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    v13 = [v10 stringWithFormat:v12, v9];

    v14 = [MEMORY[0x1E69DC668] sharedApplication];
    LODWORD(v12) = [v14 userInterfaceLayoutDirection] == 1;

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

  [v4 invalidate];
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
    v3 = [(CKRecipientSelectionController *)self recipients];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__CKRecipientSelectionController_hasTimedOutRecipients__block_invoke;
    v6[3] = &unk_1E72EC4D8;
    v6[4] = self;
    v6[5] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];
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
  v3 = [(CKRecipientSelectionController *)self recipients];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__CKRecipientSelectionController__recipientCausingTooManyRecipientsError__block_invoke;
  v6[3] = &unk_1E72EC4D8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 enumerateObjectsWithOptions:2 usingBlock:v6];

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

- (void)_showOneTimeErrorAlertForAddedRecipient:(id)a3 service:(id)a4 withError:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5 != 1 || self->_didShowOneTimeErrorAlert)
  {
    goto LABEL_32;
  }

  if (v9)
  {
    if ([v9 __ck_isiMessage])
    {
LABEL_5:
      v11 = CKFrameworkBundle();
      v12 = [v11 localizedStringForKey:@"ADDRESS_LIST_FULL" value:&stru_1F04268F8 table:@"ChatKit"];

      v13 = [MEMORY[0x1E69A5C90] iMessageService];
      v14 = [(CKConversation *)self->_conversation lastAddressedHandle];
      v15 = [(CKConversation *)self->_conversation lastAddressedSIMID];
      v16 = [v13 __ck_maxRecipientCountForHandle:v14 simID:v15];

      v17 = MEMORY[0x1E696ADA0];
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
      v19 = [v17 localizedStringFromNumber:v18 numberStyle:1];

      v20 = MEMORY[0x1E696AEC0];
      v21 = CKFrameworkBundle();
      v22 = [v21 localizedStringForKey:@"ERR_TOO_MANY_RECIPIENTS_FOR_IMESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
      v23 = [v20 stringWithFormat:v22, v19];

      v24 = [MEMORY[0x1E69DC668] sharedApplication];
      v25 = [v24 userInterfaceLayoutDirection];

      if (v25 == 1)
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
    v28 = [(CKPendingConversation *)self->_conversation previousSendingService];
    v29 = [v28 __ck_isiMessage];

    if (v29)
    {
      goto LABEL_5;
    }
  }

  if ([(CKRecipientSelectionController *)self _availibilityForRecipient:v8 onService:v10])
  {
    v30 = [(CKRecipientSelectionController *)self _recipientCausingTooManyRecipientsError];
  }

  else
  {
    v30 = v8;
  }

  v23 = v30;
  v31 = [MEMORY[0x1E69A5CA0] smsService];
  v32 = [(CKRecipientSelectionController *)self _availibilityForRecipient:v8 onService:v31];

  if (v32 == 1)
  {
    v33 = [MEMORY[0x1E69A5CA0] smsService];
  }

  else if (v10)
  {
    v33 = v10;
  }

  else
  {
    v33 = [(CKPendingConversation *)self->_conversation previousSendingService];
  }

  v34 = v33;
  v35 = [v23 compositeName];
  v36 = [(CKConversation *)self->_conversation lastAddressedHandle];
  v37 = [(CKConversation *)self->_conversation lastAddressedSIMID];
  v60 = v34;
  v38 = [v34 __ck_maxRecipientCountForHandle:v36 simID:v37];

  v39 = MEMORY[0x1E696ADA0];
  v40 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
  v19 = [v39 localizedStringFromNumber:v40 numberStyle:1];

  if (v35 && ([v35 isEqualToString:&stru_1F04268F8] & 1) == 0)
  {
    v43 = MEMORY[0x1E696AEC0];
    v44 = CKFrameworkBundle();
    v45 = [v44 localizedStringForKey:@"CANNOT_ADD_RECIPIENT_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v41 = [v43 stringWithFormat:v45, v35];

    v46 = [MEMORY[0x1E69DC668] sharedApplication];
    v47 = [v46 userInterfaceLayoutDirection];

    if (v47 == 1)
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

  v53 = [MEMORY[0x1E69DC668] sharedApplication];
  v54 = [v53 userInterfaceLayoutDirection];

  if (v54 == 1)
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
    v4 = [v3 shouldAutomaticallyCheckAvailabilityOfAlternateAddresses];

    if (!v4)
    {
      return;
    }

    v5 = [(CKRecipientSelectionController *)self toField];
    v6 = [(CKRecipientSelectionController *)self toField];
    v7 = [v6 textView];
    v8 = [v7 selectedRange];
    v13 = [v5 atomViewsInRange:{v8, v9}];

    if ([v13 count] == 1)
    {
      v10 = [v13 objectAtIndex:0];
      v11 = [v10 recipient];

      if (v11)
      {
        v12 = [v10 recipient];
        [(CKRecipientSelectionController *)self _showActionSheetForRecipient:v12 animated:0];
      }
    }
  }
}

- (void)presentAlternateAddressesAlertForRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CKRecipientSelectionController *)self _alternateiMessagableAddressesForRecipient:v4];
  if ([v4 isEmail])
  {
    [v4 uncommentedAddress];
  }

  else
  {
    [v4 commentedAddress];
  }
  v30 = ;
  v6 = MEMORY[0x1E696AEC0];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ADDRESS_NOT_REGISTERED_WITH_MADRID" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"MADRID" value:&stru_1F04268F8 table:@"ChatKit"];
  v11 = [v6 stringWithFormat:v8, v30, v10];

  v12 = [MEMORY[0x1E69DC668] sharedApplication];
  v13 = [v12 userInterfaceLayoutDirection];

  if (v13 == 1)
  {
    v14 = @"\u200F";
  }

  else
  {
    v14 = @"\u200E";
  }

  v32 = [(__CFString *)v14 stringByAppendingString:v11];

  v15 = [CKAlertController alertControllerWithTitle:v32 message:0 preferredStyle:0];
  v16 = [(CKRecipientSelectionController *)self toField];
  v17 = [v16 atomViewForRecipient:v4];

  v18 = [v5 allKeys];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __77__CKRecipientSelectionController_presentAlternateAddressesAlertForRecipient___block_invoke;
  v38[3] = &unk_1E72EC6E8;
  v39 = v15;
  v40 = v5;
  v41 = self;
  v19 = v4;
  v42 = v19;
  v31 = v5;
  v20 = v15;
  [v18 enumerateObjectsUsingBlock:v38];

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
  v35 = self;
  v27 = v17;
  v28 = [CKAlertAction actionWithTitle:v26 style:1 handler:v33];
  [v20 addAction:v28];

  v29 = [v20 popoverPresentationController];
  [v29 setSourceView:v27];

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

- (void)_showActionSheetForRecipient:(id)a3 animated:(BOOL)a4
{
  v10 = a3;
  v5 = [MEMORY[0x1E69A5C90] iMessageService];
  v6 = [(CKRecipientSelectionController *)self _availibilityForRecipient:v10 onService:v5];

  if (!v6 && !CKIsRunningInMacCatalyst())
  {
    v7 = [(CKRecipientSelectionController *)self conversation];
    v8 = [v7 sendingService];
    v9 = [v8 __ck_isiMessage];

    if (v9)
    {
      [(CKRecipientSelectionController *)self presentAlternateAddressesAlertForRecipient:v10];
    }
  }
}

- (id)_alternateAddressesForRecipient:(id)a3
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = *MEMORY[0x1E695C330];
  v32[0] = *MEMORY[0x1E695C208];
  v32[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v7 = [v3 contactWithKeysToFetch:v6];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 phoneNumbers];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v26 + 1) + 8 * i) value];
        v14 = [v13 stringValue];
        [v4 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v7 emailAddresses];
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v22 + 1) + 8 * j) value];
        [v4 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  return v4;
}

- (id)_alternateiMessagableAddressesForRecipient:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self _alternateAddressesForRecipient:a3];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [MEMORY[0x1E69A5CA0] iMessageService];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__CKRecipientSelectionController__alternateiMessagableAddressesForRecipient___block_invoke;
  v12[3] = &unk_1E72EC738;
  v12[4] = self;
  v13 = v6;
  v7 = v5;
  v14 = v7;
  v8 = v6;
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

- (void)_showDetailsForGroup:(id)a3
{
  v4 = MEMORY[0x1E69963A8];
  v5 = a3;
  v7 = objc_alloc_init(v4);
  [v7 setGroup:v5];

  [v7 setDelegate:self];
  [(CKRecipientSelectionController *)self setPreventAtomization:1];
  v6 = [(CKRecipientSelectionController *)self navigationController];
  [v6 pushViewController:v7 animated:1];
}

- (void)_showDetailsForRecipient:(id)a3 canDelete:(BOOL)a4
{
  v4 = a4;
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 contact];
  if (!v7)
  {
    v15 = [v6 rawAddress];
    v9 = IMStripFormattingFromAddress();

    v16 = [MEMORY[0x1E69A5A80] sharedInstance];
    v17 = [v16 __ck_bestAccountForAddress:v9];
    v14 = [v17 imHandleWithID:v9 alreadyCanonical:0];

    if ([v14 isChatBot])
    {
      v13 = [[CKChatBotInfoController alloc] initWithHandle:v14 fallbackHandle:v9];
LABEL_16:
      v7 = 0;
      goto LABEL_17;
    }

    v18 = [[CKEntity alloc] initWithIMHandle:v14];
    v19 = [v6 address];
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
    if (v4 && [v6 isRemovableFromSearchResults])
    {
      [(CKRecipientSelectionController *)self setRecentContactForPresentedCNCard:v6];
      if (v37 != 1)
      {
LABEL_13:
        if (p_location[5])
        {
          v25 = [(CKEntity *)v18 propertyType];
          [(CKChatBotInfoController *)v13 highlightPropertyWithKey:v25 identifier:p_location[5]];
        }

        _Block_object_dispose(&location, 8);
        goto LABEL_16;
      }

      v21 = [(CKChatBotInfoController *)v13 contentViewController];
      v22 = CKFrameworkBundle();
      v31 = [v22 localizedStringForKey:@"REMOVE_RECENT" value:&stru_1F04268F8 table:@"ChatKit"];
      v23 = [v21 cardBottomGroup];
      [v21 addActionWithTitle:v31 target:self selector:sel__removeRecent inGroup:v23 destructive:1];
    }

    else
    {
      v24 = [(CKEntity *)v18 propertyType];
      v21 = [v20 valueForKey:v24];

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __69__CKRecipientSelectionController__showDetailsForRecipient_canDelete___block_invoke;
      v33[3] = &unk_1E72EC760;
      v34 = v18;
      v35 = v32;
      v36 = &location;
      [v21 enumerateObjectsUsingBlock:v33];

      v22 = v34;
    }

    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v44[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];

  if (([v7 areKeysAvailable:v9] & 1) == 0)
  {
    v10 = [(CKRecipientSelectionController *)self contactStore];
    v11 = [v7 identifier];
    v12 = [v10 unifiedContactWithIdentifier:v11 keysToFetch:v9 error:0];

    v7 = v12;
  }

  v13 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v7];
  v14 = [MEMORY[0x1E695CE18] storeWithOptions:3];
  [(CKChatBotInfoController *)v13 setContactStore:v14];
LABEL_17:

  [(CKRecipientSelectionController *)self setPreventAtomization:1];
  if (CKIsRunningInMacCatalyst())
  {
    v26 = objc_initWeak(&location, self);
    v27 = [(CKRecipientSelectionController *)self searchListController];
    v28 = [v27 tableView];

    [(CKRecipientSelectionController *)self _showContactCardForRecipient:v6 sourceView:v28];
    objc_destroyWeak(&location);
  }

  else
  {
    v29 = [(CKRecipientSelectionController *)self navigationController];
    if (v29)
    {
      v30 = [(CKRecipientSelectionController *)self navigationController];
      [v30 pushViewController:v13 animated:1];
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

- (void)_showContactCardForRecipient:(id)a3 sourceView:(id)a4
{
  v4 = [a3 rawAddress];
  v13 = IMStripFormattingFromAddress();

  v5 = [MEMORY[0x1E69A5A80] sharedInstance];
  v6 = [v5 __ck_bestAccountForAddress:v13];
  v7 = [v6 imHandleWithID:v13 alreadyCanonical:0];

  v8 = [v7 cnContactWithKeys:MEMORY[0x1E695E0F0]];
  if (CKIsRunningInMacCatalyst() && [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v8])
  {
    v9 = [MEMORY[0x1E696AD60] stringWithString:@"addressbook://"];
    v10 = [v8 identifier];
    [v9 appendString:v10];

    v11 = *MEMORY[0x1E69DDA98];
    v12 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    [v11 openURL:v12 withCompletionHandler:0];
  }
}

- (void)_removeRecent
{
  v3 = [(CKRecipientSelectionController *)self recentContactForPresentedCNCard];

  if (v3)
  {
    v4 = [(CKRecipientSelectionController *)self searchListController];
    v5 = [(CKRecipientSelectionController *)self recentContactForPresentedCNCard];
    [v4 removeRecipient:v5];
  }

  v7 = [(CKRecipientSelectionController *)self navigationController];
  v6 = [v7 popViewControllerAnimated:1];
}

- (void)_updateRecipientViewLayouts
{
  v3 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [v3 contentSize];
  v5 = v4;

  v6 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [v13 frame];
  v15 = v14;

  v16 = [(CKRecipientSelectionController *)self toField];
  v17 = [v16 textView];
  if ([v17 isFirstResponder])
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

      v27 = [(CKRecipientSelectionController *)self view];
      [v27 bounds];
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
  v3 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 recipientSelectionShouldSlideToField];

  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = [(CKRecipientSelectionController *)self toField];
  v15 = [v14 text];
  if (![v15 length])
  {
    goto LABEL_8;
  }

  v16 = [(CKRecipientSelectionController *)self toField];
  if ([v16 numberOfRowsOfTextInField] <= 1)
  {

LABEL_8:
LABEL_9:
    v29 = [(CKRecipientSelectionController *)self toField];
    v30 = [v29 text];
    if ([v30 length])
    {
      v31 = [(CKRecipientSelectionController *)self toField];
      v32 = [v31 numberOfRowsOfTextInField];

      if (v32 != 1)
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

  v17 = [(CKRecipientSelectionController *)self conversation];
  v18 = [v17 canInsertMoreRecipients];

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = [(CKRecipientSelectionController *)self toField];
  [v19 offsetForRowWithTextField];
  v21 = v20;

  v22 = [(CKRecipientSelectionController *)self toField];
  [v22 bounds];
  v24 = v23;

  v25 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v25 bounds];
  v27 = v26;

  if (v21 != 0.0)
  {
    [(CKRecipientSelectionController *)self _navigationBarInsets];
    v7 = v28 - (v21 + v27 - v24 + 2.0);
  }

LABEL_14:
  v34 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v34 frame];
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
    v3 = [(CKRecipientSelectionController *)self shouldHideFromField];
    v4 = [(CKRecipientSelectionController *)self toField];
    [v4 setSeparatorHidden:v3];

    v5 = [(CKRecipientSelectionController *)self toField];
    [v5 separatorDirectionalEdgeInsets];
    v7 = v6;
    v9 = v8;

    v10 = [(CKRecipientSelectionController *)self toField];
    [v10 _textButtonMargin];
    v12 = v11;
    v13 = [(CKRecipientSelectionController *)self toField];
    [v13 safeAreaInsets];
    v15 = v12 + v14;

    if (v15 != 0.0)
    {
      v16 = [(CKRecipientSelectionController *)self toField];
      [v16 setSeparatorDirectionalEdgeInsets:{v7, v15, v9, v15}];
    }
  }
}

- (BOOL)_isToFieldPushedUp
{
  v2 = self;
  v3 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v3 origin];
  v5 = v4;
  [(CKRecipientSelectionController *)v2 _navigationBarInsets];
  LOBYTE(v2) = v5 < v6;

  return v2;
}

- (void)_resetSearchResultsInsets
{
  if (CKIsRunningInMacCatalyst())
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 popoverPadding];
    v5 = v4;

    v6 = [(CKRecipientSelectionController *)self searchListController];
    v7 = [v6 tableView];
    v8 = 0.0;
    [v7 _setSectionContentInset:{0.0, v5, 0.0, v5}];

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
    v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v16 = [v15 isRedesignedDetailsViewEnabled];

    if (v16)
    {
      v17 = *v11;
      v18 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [v18 frame];
      v20 = v19;
      [(CKRecipientSelectionController *)self _navigationBarInsets];
      v22 = v20 - v21;

      v23 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [v23 bounds];
      v25 = v22 + v24;

      v26 = +[CKUIBehavior sharedBehaviors];
      [v26 additionalSearchResultTopPadding];
      v28 = v17 + v25 + v27;
    }

    else
    {
      [(CKRecipientSelectionController *)self _navigationBarInsets];
      v30 = v29;
      v31 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [v31 origin];
      v33 = v30 - v32;

      v26 = [(CKRecipientSelectionController *)self fieldStackContainerView];
      [v26 bounds];
      v28 = v34 - v33;
    }

    [(CKRecipientSelectionController *)self _additionalSearchResultsEdgeInsets];
    v5 = v28 + v35;
    v8 = v12 + v36;
    v9 = v13 + v37;
    v10 = v14 + v38;
  }

  v39 = [(CKRecipientSelectionController *)self searchListController];
  [v39 setAdditionalSafeAreaInsets:{v5, v8, v9, v10}];
}

- (void)_updateShowingSearch
{
  v3 = [(CKRecipientSelectionController *)self conversation];
  v4 = [v3 canInsertMoreRecipients];

  if (v4)
  {
    v5 = [(CKRecipientSelectionController *)self searchListController];
    if ([v5 hasSearchResults])
    {
      v6 = [(CKRecipientSelectionController *)self shouldSuppressSearchResultsTable];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = ([(CKRecipientSelectionController *)self alwaysShowSearchResultsTable]^ 1) & v6;

  [(CKRecipientSelectionController *)self setSearchResultsHidden:v7];
}

- (void)_showSearchField
{
  if (![(CKRecipientSelectionController *)self isSearchResultsHidden])
  {
    goto LABEL_11;
  }

  v3 = [(CKRecipientSelectionController *)self searchListController];
  v4 = [v3 tableView];
  [v4 setHidden:0];

  v5 = [(CKRecipientSelectionController *)self firstResponder];
  [v5 reloadInputViewsWithoutReset];

  v6 = +[CKUIBehavior sharedBehaviors];
  if ([v6 presentsAutocompleteInAPopover])
  {
    v7 = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];

    if (!v7)
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

  v8 = [(CKRecipientSelectionController *)self view];
  v9 = [(CKRecipientSelectionController *)self searchListController];
  v10 = [v9 tableView];
  [v8 bringSubviewToFront:v10];

LABEL_8:
  v11 = [(CKRecipientSelectionController *)self headerDecorationView];

  if (v11)
  {
    v12 = [(CKRecipientSelectionController *)self view];
    v13 = [(CKRecipientSelectionController *)self headerDecorationView];
    [v12 bringSubviewToFront:v13];
  }

  [(CKRecipientSelectionController *)self bringComposeRecipientViewToFront];
  v14 = [(CKRecipientSelectionController *)self searchListController];
  v15 = [v14 tableView];
  [v15 setScrollsToTop:1];

  v16 = [(CKRecipientSelectionController *)self delegate];
  [v16 recipientSelectionControllerSearchListDidShowOrHide:self];

LABEL_11:
  v17 = +[CKUIBehavior sharedBehaviors];
  if ([v17 presentsAutocompleteInAPopover] && !-[CKRecipientSelectionController isSearchResultsHidden](self, "isSearchResultsHidden"))
  {
    v18 = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];

    if (!v18)
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
    v3 = [(CKRecipientSelectionController *)self searchListController];

    if (v3)
    {
      v4 = [(CKRecipientSelectionController *)self searchListController];
      v5 = [v4 tableView];
      v6 = 1;
      [v5 setHidden:1];

      v7 = [(CKRecipientSelectionController *)self firstResponder];
      [v7 reloadInputViewsWithoutReset];

      v8 = [(CKRecipientSelectionController *)self searchListController];
      v9 = [v8 tableView];
      [v9 setScrollsToTop:0];

      v10 = [(CKRecipientSelectionController *)self delegate];
      [v10 recipientSelectionControllerSearchListDidShowOrHide:self];

      v11 = [(CKRecipientSelectionController *)self searchListController];
      if (v11)
      {
        v12 = [(CKRecipientSelectionController *)self presentedViewController];
        v13 = [(CKRecipientSelectionController *)self searchListController];
        v6 = v12 != v13;
      }

      v15 = +[CKUIBehavior sharedBehaviors];
      if (![v15 presentsAutocompleteInAPopover] || v6)
      {
      }

      else
      {
        v14 = [(CKRecipientSelectionController *)self isBeingPresentedInMacDetailsView];

        if (!v14)
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
  v3 = [(CKRecipientSelectionController *)self delegate];

  if (v3)
  {
    v4 = [(CKRecipientSelectionController *)self delegate];
    [v4 navigationBarInsetsForRecipientSelectionController:self];
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
  v3 = [(CKRecipientSelectionController *)self toField];
  v4 = [v3 text];
  v5 = [v4 length];

  if (!v5)
  {
    [(CKRecipientSelectionController *)self resetSearchResults];
  }

  v6 = [(CKRecipientSelectionController *)self toField];
  v7 = [v6 text];
  if (![v7 length])
  {
    goto LABEL_12;
  }

  v8 = [(CKRecipientSelectionController *)self conversation];
  if (([v8 canInsertMoreRecipients] & 1) == 0)
  {

LABEL_12:
    goto LABEL_13;
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 canAccessContacts];

  if (v10)
  {
    v11 = [(CKRecipientSelectionController *)self searchListController];
    v12 = [(CKRecipientSelectionController *)self toField];
    v13 = [v12 text];
    [v11 searchWithText:v13];

    [(CKRecipientSelectionController *)self scrollSearchListControllerToTop:0];
    v17 = [(CKRecipientSelectionController *)self toField];
    v14 = [v17 text];
    if ([v14 length] <= 1)
    {
    }

    else
    {
      v15 = [(CKRecipientSelectionController *)self searchListController];
      v16 = [v15 hasSearchResults];

      if (v16)
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
  v2 = [(CKRecipientSelectionController *)self searchListController];
  [v2 setSearchResults:0];
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
    v4 = [(CKRecipientSelectionController *)self toField];
    v5 = [v4 textView];
    [v5 setKeyboardType:v3];
  }
}

- (CNContactPickerViewController)contactPickerViewController
{
  contactPickerViewController = self->_contactPickerViewController;
  if (!contactPickerViewController)
  {
    v4 = objc_alloc_init(CKCNContactPickerViewController);
    v5 = [(CKRecipientSelectionController *)self _userInterfaceStyleOverride];
    if (v5)
    {
      [(CKCNContactPickerViewController *)v4 setOverrideUserInterfaceStyle:v5];
    }

    v6 = CKPreferredContactsProperties([(CNContactPickerViewController *)v4 setDelegate:self]);
    [(CNContactPickerViewController *)v4 setDisplayedPropertyKeys:v6];

    v7 = [(CKCNContactPickerViewController *)v4 navigationItem];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"NEW_MESSAGE_PROMPT" value:&stru_1F04268F8 table:@"ChatKit"];
    [v7 setPrompt:v9];

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

- (void)scrollSearchListControllerToTop:(BOOL)a3
{
  v3 = a3;
  v6 = [(CKRecipientSelectionController *)self searchListController];
  v5 = [v6 tableView];
  [(CKRecipientSelectionController *)self scrollSearchListControllerToTopContentOffset];
  [v5 setContentOffset:v3 animated:?];
}

- (CGPoint)scrollSearchListControllerToTopContentOffset
{
  v3 = [(CKRecipientSelectionController *)self searchListController];
  v4 = [v3 tableView];
  [v4 contentOffset];
  v6 = v5;

  v7 = [(CKRecipientSelectionController *)self searchListController];
  v8 = [v7 tableView];
  [v8 adjustedContentInset];
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
    v4 = [(CKRecipientSelectionController *)self toField];
    v5 = [v4 recipients];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) normalizedAddress];
          if (v10)
          {
            [v3 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    v3 = [(CKRecipientSelectionController *)self currentConversationContext];
    [v3 removeObserver:self forKeyPath:@"allowedByScreenTime"];

    [(CKRecipientSelectionController *)self setCurrentConversationContext:0];
    v4 = [(CKRecipientSelectionController *)self handlesForScreenTimePolicyCheck];
    v5 = [MEMORY[0x1E69A5B68] sharedInstance];
    v9 = 0;
    v6 = [v5 allowedToShowConversationWithHandleIDs:v4 sync:1 context:&v9];
    v7 = v9;
    [(CKRecipientSelectionController *)self setAllowedByScreenTime:v6];

    [(CKRecipientSelectionController *)self setCurrentConversationContext:v7];
    v8 = [(CKRecipientSelectionController *)self currentConversationContext];
    [v8 addObserver:self forKeyPath:@"allowedByScreenTime" options:1 context:ctxAllowedByScreenTime];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = v10;
  if (ctxAllowedByScreenTime == a6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__CKRecipientSelectionController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E72EB8D0;
    v14 = v10;
    v15 = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKRecipientSelectionController;
    [(CKRecipientSelectionController *)&v12 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

void __81__CKRecipientSelectionController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) setAllowedByScreenTime:{objc_msgSend(v2, "allowedByScreenTime")}];
  [*(a1 + 40) _updateToField];
}

- (BOOL)autocompleteResultsController:(id)a3 willOverrideImageDataForRecipient:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  if ([v6 isGroup])
  {
    v8 = [v6 autocompleteResult];
    v9 = [v8 identifier];

    v10 = +[CKConversationList sharedConversationList];
    v11 = [v10 conversationForExistingChatWithGUID:v9];

    v12 = [v11 isGroupConversation];
    if (v12)
    {
      v13 = [v11 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:0];
      v14 = [v13 groupPhoto];
      v7[2](v7, v14);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
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