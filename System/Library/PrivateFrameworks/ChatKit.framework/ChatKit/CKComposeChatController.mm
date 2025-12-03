@interface CKComposeChatController
- (BOOL)_isAllowlistedBusinessRecipient;
- (BOOL)_isBusinessConversation;
- (BOOL)_isNewBusinessConversation;
- (BOOL)_shouldRestoreDraftState;
- (BOOL)_shouldSetToFieldAsFirstResponder;
- (BOOL)_shouldValidatePayloadBeforeSendingPayload:(id)payload;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canShowBusinessOnboarding;
- (BOOL)hasFailedRecipients;
- (BOOL)hasUnreachableEmergencyRecipient;
- (BOOL)isComposingRecipient;
- (BOOL)isReadOnly;
- (BOOL)isSafeToMarkAsRead;
- (BOOL)prefersBottomDividerHidden;
- (BOOL)recipientSelectionControllerShouldDisableTopFieldInsets:(id)insets;
- (BOOL)recipientSelectionIsGroup:(id)group;
- (BOOL)reloadEntryViewForStagedPluginMessage;
- (BOOL)shouldForceToSMSForConversation:(id)conversation forRecipient:(id)recipient;
- (BOOL)shouldShowAvatarViewInTranscriptNavigationBar;
- (BOOL)shouldShowEntryView;
- (BOOL)shouldShowNavigationBar;
- (CKComposeChatController)initWithRecipientAddresses:(id)addresses composition:(id)composition chatIdentifier:(id)identifier bizIntent:(id)intent simID:(id)d;
- (NSArray)proposedRecipients;
- (NSString)unatomizedRecipientText;
- (UIBarButtonItem)composeCancelItem;
- (UIEdgeInsets)macToolbarInsets;
- (UIEdgeInsets)recipientSelectionAdditionalSearchListInsets;
- (UIEdgeInsets)virtualToolbarContentInsets;
- (double)_entryViewTopInsetPadding;
- (double)_maxEntryViewHeight;
- (double)topInsetPadding;
- (double)visibleInputAndEntryViewHeightToAvoidForRecipientSelectionController:(id)controller;
- (id)_anisetteData;
- (id)_updateSendingIdentity;
- (id)associatedScrollViewForRecipientSelectionController:(id)controller;
- (id)chatForIMHandle:(id)handle;
- (id)handleForRecipientNormalizedAddress:(id)address;
- (id)inputAccessoryView;
- (id)inputAccessoryViewController;
- (id)outgoingComposeViewForSendAnimation;
- (id)preferredFocusEnvironments;
- (id)preferredNavigationBarTitleText;
- (id)selectedRecipientsForSuggestionsController:(id)controller;
- (id)textViewOnscreenWithEntryView;
- (id)virtualView;
- (int64_t)currentTranscriptNavigationBarMode;
- (int64_t)currentTranscriptNavigationBarTitleDisplayMode;
- (int64_t)preferredStatusBarStyle;
- (uint64_t)_updateBlackholeAlertView;
- (void)_determineSpamFilterHandshakeStateForAccount:(id)account;
- (void)_invalidateBlackholeAlertView;
- (void)_passKitUIDismissed:(id)dismissed;
- (void)_prepareForSendFromCardIfNecessaryAndSend:(id)send;
- (void)_processBizIntentIfNeeded;
- (void)_reloadMentionsData;
- (void)_saveDraftState;
- (void)_setConversationDeferredSetup;
- (void)_triggerRecipientFinalization;
- (void)_updateBizNavbarIfNecessary;
- (void)_updateBlackholeAlertView;
- (void)_updateNavigationButtons;
- (void)_updateNavigationUI;
- (void)_updateSendLaterCompositionIfNecessary;
- (void)_updateTitleAnimated:(BOOL)animated;
- (void)_viewDidInitialLayoutSubviews;
- (void)addBizIntentToConversation:(id)conversation;
- (void)businessInfoView:(id)view infoButtonTapped:(id)tapped;
- (void)cancelCompose;
- (void)configureWithToolbarController:(id)controller;
- (void)conversationLeft;
- (void)dealloc;
- (void)didFinishShowingBusinessOnboarding;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleAddressBookChange:(id)change;
- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)needed;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)layoutBusinessInfoViewIfNecessary;
- (void)messageEntryViewDidChange:(id)change isTextChange:(BOOL)textChange isShelfChange:(BOOL)shelfChange isTranslationChange:(BOOL)translationChange;
- (void)messageEntryViewSendButtonHit:(id)hit;
- (void)messageEntryViewSendButtonHitWhileDisabled:(id)disabled;
- (void)navbarManagerIsAnimatingNavbarTransition:(id)transition;
- (void)parentControllerDidResume:(BOOL)resume animating:(BOOL)animating;
- (void)prepareForSuspend;
- (void)prepareToDismissForSecondInstance;
- (void)providerWillBeRemovedFromToolbarController:(id)controller;
- (void)recipientSelectionController:(id)controller didFinishAvailaiblityLookupForRecipient:(id)recipient;
- (void)recipientSelectionController:(id)controller didSelectConversation:(id)conversation isiMessagable:(BOOL)messagable;
- (void)recipientSelectionController:(id)controller textDidChange:(id)change;
- (void)recipientSelectionControllerReturnPressed:(id)pressed;
- (void)recipientSelectionControllerSearchListDidShowOrHide:(id)hide;
- (void)recipientSelectionControllerShouldResignFirstResponder:(id)responder;
- (void)recipientSelectionControllerTabPressed:(id)pressed;
- (void)reloadEntryViewIfNeeded;
- (void)restoreInputAfterSearchPresentation;
- (void)sendAnimationManagerWillStartAnimation:(id)animation context:(id)context;
- (void)sendComposition:(id)composition;
- (void)setBlackholeAlertStatusQueue:(uint64_t)queue;
- (void)setBusinessInfoViewInfoIfNecessary;
- (void)setPrepopulatedComposition:(id)composition;
- (void)setPrepopulatedRecipients:(id)recipients;
- (void)setServiceId:(id)id;
- (void)setSuggestedRepliesData:(id)data;
- (void)showConversation:(id)conversation animate:(BOOL)animate;
- (void)stageSuggestedReplies;
- (void)suggestionsController:(id)controller didDeselectRecipient:(id)recipient;
- (void)suggestionsController:(id)controller didSelectRecipient:(id)recipient;
- (void)transcriptNavigationBar:(id)bar didTapToPerformAction:(int64_t)action;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation CKComposeChatController

- (void)dealloc
{
  v3 = +[CKUIBehavior sharedBehaviors];
  shouldSuppressRotationInNewCompose = [v3 shouldSuppressRotationInNewCompose];

  if (shouldSuppressRotationInNewCompose)
  {
    [(CKChatController *)self endHoldingAutorotationForKey:@"CKAutorotationHoldNewCompose"];
  }

  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  [composeRecipientSelectionController stopCheckingRecipientAvailabilityAndRemoveAllTimers];

  composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [composeRecipientSelectionController2 invalidateOutstandingIDStatusRequests];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v8.receiver = self;
  v8.super_class = CKComposeChatController;
  [(CKChatController *)&v8 dealloc];
}

- (CKComposeChatController)initWithRecipientAddresses:(id)addresses composition:(id)composition chatIdentifier:(id)identifier bizIntent:(id)intent simID:(id)d
{
  v77 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  compositionCopy = composition;
  identifierCopy = identifier;
  intentCopy = intent;
  dCopy = d;
  v17 = +[CKConversation newPendingConversation];
  v73.receiver = self;
  v73.super_class = CKComposeChatController;
  v18 = [(CKChatController *)&v73 initWithConversation:v17];

  if (v18)
  {
    if (addressesCopy && [addressesCopy count])
    {
      v58 = dCopy;
      v59 = intentCopy;
      v61 = identifierCopy;
      v62 = v18;
      v60 = compositionCopy;
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(addressesCopy, "count")}];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v20 = addressesCopy;
      v21 = [v20 countByEnumeratingWithState:&v69 objects:v76 count:16];
      v63 = v19;
      if (v21)
      {
        v22 = v21;
        handle2 = 0;
        v23 = *v70;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v70 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v69 + 1) + 8 * i);
            if (CKIsValidAddress(v25))
            {
              v26 = +[CKRecipientGenerator sharedRecipientGenerator];
              v27 = [v26 recipientWithAddress:v25];

              if (v27)
              {
                if (!handle2)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v28 = v27;
                    handle = [v28 handle];
                    isBusiness = [handle isBusiness];

                    if (isBusiness)
                    {
                      handle2 = [v28 handle];
                    }

                    else
                    {
                      handle2 = 0;
                    }

                    v19 = v63;
                  }

                  else
                  {
                    handle2 = 0;
                  }
                }

                [v19 addObject:v27];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v69 objects:v76 count:16];
        }

        while (v22);
      }

      else
      {
        handle2 = 0;
      }

      [(CKComposeChatController *)v62 setRecipientsListChanged:0];
      mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
      identifierCopy = v61;
      v32 = [mEMORY[0x1E69A5AF8] existingChatWithChatIdentifier:v61];

      if (v32 && [v32 isGroupChat])
      {
        v56 = v32;
        v57 = addressesCopy;
        v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v34 = v20;
        v35 = [v34 countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v66;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v66 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v65 + 1) + 8 * j);
              v40 = objc_alloc(MEMORY[0x1E69A5B90]);
              mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
              v42 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddresses:v34];
              v43 = [v40 initWithAccount:v42 ID:v39 alreadyCanonical:1];

              [v33 addObject:v43];
            }

            v36 = [v34 countByEnumeratingWithState:&v65 objects:v75 count:16];
          }

          while (v36);
        }

        v44 = [CKIMGroupComposeRecipient alloc];
        guid = [v56 guid];
        displayName = [v56 displayName];
        v47 = [(CKIMGroupComposeRecipient *)v44 initWithGUID:guid displayString:displayName detailsString:0 handles:v33 lastMessageDate:0 searchTerm:0 matchingRecipient:0];

        v48 = MEMORY[0x1E695DF70];
        v74 = v47;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
        v19 = [v48 arrayWithArray:v49];

        v32 = v56;
        addressesCopy = v57;
        identifierCopy = v61;
      }

      v18 = v62;
      [(CKComposeChatController *)v62 setBusinessHandle:handle2];
      v50 = v19;
      [(CKComposeChatController *)v62 setPrepopulatedRecipients:v19];
      intentCopy = v59;
      compositionCopy = v60;
      dCopy = v58;
      if (v58)
      {
        v51 = [v58 copy];
        prepopulatedSIMID = v62->_prepopulatedSIMID;
        v62->_prepopulatedSIMID = v51;
      }
    }

    [(CKComposeChatController *)v18 setPrepopulatedComposition:compositionCopy];
    [(CKComposeChatController *)v18 setBizIntent:intentCopy];
    v53 = +[CKUIBehavior sharedBehaviors];
    shouldSuppressRotationInNewCompose = [v53 shouldSuppressRotationInNewCompose];

    if (shouldSuppressRotationInNewCompose)
    {
      [(CKChatController *)v18 beginHoldingAutorotationForKey:@"CKAutorotationHoldNewCompose"];
    }
  }

  return v18;
}

- (void)prepareForSuspend
{
  v4.receiver = self;
  v4.super_class = CKComposeChatController;
  [(CKChatController *)&v4 prepareForSuspend];
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  [composeRecipientSelectionController invalidateOutstandingIDStatusRequests];
}

- (void)parentControllerDidResume:(BOOL)resume animating:(BOOL)animating
{
  animatingCopy = animating;
  resumeCopy = resume;
  v8.receiver = self;
  v8.super_class = CKComposeChatController;
  [CKCoreChatController parentControllerDidResume:sel_parentControllerDidResume_animating_ animating:?];
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  [composeRecipientSelectionController parentControllerDidResume:resumeCopy animating:animatingCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CKComposeChatController;
  [(CKChatController *)&v8 viewWillAppear:appear];
  [(CKChatController *)self setFrozenEntryViewHeightDuringDismissAnimation:0];
  [(CKComposeChatController *)self _updateBusinessInfoIfNecessary];
  [(CKComposeChatController *)self _updateNavigationUI];
  if (CKIsRunningInMacCatalyst())
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    useMacToolbar = [v4 useMacToolbar];

    if ((useMacToolbar & 1) == 0)
    {
      catalystComposeNavigationController = [(CKComposeChatController *)self catalystComposeNavigationController];
      [catalystComposeNavigationController setNavigationBarHidden:1 animated:0];
    }
  }

  v7 = +[CKBalloonPluginManager sharedInstance];
  [v7 invalidatePhotosViewController];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v16.receiver = self;
  v16.super_class = CKComposeChatController;
  [(CKChatController *)&v16 viewWillDisappear:disappear];
  if (CKIsRunningInMacCatalyst())
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    useMacToolbar = [v4 useMacToolbar];

    if ((useMacToolbar & 1) == 0)
    {
      catalystComposeNavigationController = [(CKComposeChatController *)self catalystComposeNavigationController];
      [catalystComposeNavigationController setNavigationBarHidden:0 animated:0];
    }
  }

  v7 = MEMORY[0x1E696AD98];
  [(CKComposeChatController *)self _maxEntryViewHeight];
  v8 = [v7 numberWithDouble:?];
  [(CKChatController *)self setFrozenEntryViewHeightDuringDismissAnimation:v8];

  objc_initWeak(&location, self);
  transitionCoordinator = [(CKComposeChatController *)self transitionCoordinator];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __45__CKComposeChatController_viewWillDisappear___block_invoke;
  v13 = &unk_1E72F3630;
  objc_copyWeak(&v14, &location);
  [transitionCoordinator notifyWhenInteractionChangesUsingBlock:&v10];

  [(CKComposeChatController *)self resignFirstResponder:v10];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __45__CKComposeChatController_viewWillDisappear___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setFrozenEntryViewHeightDuringDismissAnimation:0];
    [WeakRetained updateEntryViewHeightAnimated:0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CKComposeChatController;
  [(CKChatController *)&v6 viewDidDisappear:disappear];
  navbarManager = [(CKComposeChatController *)self navbarManager];
  customStatusBackgroundView = [navbarManager customStatusBackgroundView];
  [customStatusBackgroundView removeFromSuperview];
}

- (void)viewDidLoad
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CKComposeChatController;
  [(CKChatController *)&v24 viewDidLoad];
  navbarManager = [(CKComposeChatController *)self navbarManager];
  cancelButton = [navbarManager cancelButton];
  [cancelButton addTarget:self action:sel_cancelButtonTapped forEvents:64];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleAddressBookChange_ name:*MEMORY[0x1E69A6828] object:0];

  if (CKIsRunningInMacCatalyst())
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    useMacToolbar = [v6 useMacToolbar];

    navigationController = [(CKComposeChatController *)self navigationController];
    catalystComposeNavigationController2 = navigationController;
    if (useMacToolbar)
    {
      [navigationController setNavigationBarHidden:1];
    }

    else
    {
      [(CKComposeChatController *)self setCatalystComposeNavigationController:navigationController];

      catalystComposeNavigationController = [(CKComposeChatController *)self catalystComposeNavigationController];
      navigationBar = [catalystComposeNavigationController navigationBar];
      [navigationBar frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      catalystComposeNavigationController2 = [(CKComposeChatController *)self catalystComposeNavigationController];
      navigationBar2 = [catalystComposeNavigationController2 navigationBar];
      v19 = +[CKUIBehavior sharedBehaviors];
      [v19 marzNavigationBarHeight];
      [navigationBar2 setFrame:{v13, v15, v17, v20}];
    }
  }

  v25[0] = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v22 = [(CKComposeChatController *)self registerForTraitChanges:v21 withHandler:&__block_literal_global_147];

  if (CKIsRunningInMessagesViewService())
  {
    mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
    [mEMORY[0x1E69A7F68] resetCacheSubscriptionInfo];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKComposeChatController;
  [(CKChatController *)&v3 viewWillLayoutSubviews];
  [(CKComposeChatController *)self _updateBlackholeAlertView];
}

- (void)viewSafeAreaInsetsDidChange
{
  v2.receiver = self;
  v2.super_class = CKComposeChatController;
  [(CKChatController *)&v2 viewSafeAreaInsetsDidChange];
}

- (void)viewDidLayoutSubviews
{
  initialLayoutComplete = [(CKCoreChatController *)self initialLayoutComplete];
  v38.receiver = self;
  v38.super_class = CKComposeChatController;
  [(CKChatController *)&v38 viewDidLayoutSubviews];
  [(CKComposeChatController *)self _updateBusinessInfoIfNecessary];
  [(CKComposeChatController *)self layoutBusinessInfoViewIfNecessary];
  view = [(CKComposeChatController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;

  view2 = [(CKComposeChatController *)self view];
  [view2 safeAreaInsets];
  v11 = v10;
  v13 = v12;

  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  view3 = [composeRecipientSelectionController view];

  [view3 setFrame:{v11, 0.0, v6 - (v11 + v13), v8}];
  blackholeAlertView = [(CKComposeChatController *)self blackholeAlertView];

  if (blackholeAlertView)
  {
    view4 = [(CKComposeChatController *)self view];
    [view4 bounds];
    Width = CGRectGetWidth(v39);

    blackholeAlertView2 = [(CKComposeChatController *)self blackholeAlertView];
    label = [blackholeAlertView2 label];
    attributedText = [label attributedText];
    [CKBlackholeChatItem sizeThatFits:attributedText text:Width, 1.79769313e308];
    v23 = v22;

    v24 = *MEMORY[0x1E695F058];
    [(CKScrollViewController *)self navigationBarInsets];
    v26 = v25;
    composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
    [composeRecipientSelectionController2 collapsedHeight];
    v29 = v26 + v28;

    composeRecipientSelectionController3 = [(CKComposeChatController *)self composeRecipientSelectionController];
    [composeRecipientSelectionController3 fromFieldHeight];
    v32 = v29 + v31;

    v33 = +[CKUIBehavior sharedBehaviors];
    [v33 topTranscriptSpace];
    v35 = v32 + v34;

    blackholeAlertView3 = [(CKComposeChatController *)self blackholeAlertView];
    [blackholeAlertView3 setFrame:{v24, v35, Width, v23}];
  }

  if (!initialLayoutComplete)
  {
    if ([(CKComposeChatController *)self _shouldSetToFieldAsFirstResponder])
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    [(CKChatController *)self setTargetFirstResponder:v37];
    [(CKComposeChatController *)self reloadInputViews];
    [(CKComposeChatController *)self becomeFirstResponder];
  }
}

- (void)_viewDidInitialLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = CKComposeChatController;
  [(CKCoreChatController *)&v6 _viewDidInitialLayoutSubviews];
  [(CKComposeChatController *)self reloadEntryViewIfNeeded];
  view = [(CKComposeChatController *)self view];
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  view2 = [composeRecipientSelectionController view];
  [view bringSubviewToFront:view2];
}

- (void)viewLayoutMarginsDidChange
{
  v9.receiver = self;
  v9.super_class = CKComposeChatController;
  [(CKComposeChatController *)&v9 viewLayoutMarginsDidChange];
  [(CKComposeChatController *)self systemMinimumLayoutMargins];
  v4.f64[1] = v3;
  v6.f64[1] = v5;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *MEMORY[0x1E69DC5C0]), vceqq_f64(v6, *(MEMORY[0x1E69DC5C0] + 16))))) & 1) == 0)
  {
    navbarManager = [(CKComposeChatController *)self navbarManager];
    contentView = [navbarManager contentView];
    [contentView setNeedsLayout];
  }
}

- (double)_maxEntryViewHeight
{
  v3.receiver = self;
  v3.super_class = CKComposeChatController;
  [(CKChatController *)&v3 _maxEntryViewHeight];
  return result;
}

- (id)preferredFocusEnvironments
{
  array = [MEMORY[0x1E695DF70] array];
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  toField = [composeRecipientSelectionController toField];
  textView = [toField textView];

  if (textView)
  {
    composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
    toField2 = [composeRecipientSelectionController2 toField];
    textView2 = [toField2 textView];
    [array addObject:textView2];
  }

  entryView = [(CKChatController *)self entryView];
  contentView = [entryView contentView];
  textView3 = [contentView textView];

  if (textView3)
  {
    entryView2 = [(CKChatController *)self entryView];
    contentView2 = [entryView2 contentView];
    textView4 = [contentView2 textView];
    [array addObject:textView4];
  }

  return array;
}

- (void)setPrepopulatedComposition:(id)composition
{
  v13 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"YES";
      if (!compositionCopy)
      {
        v6 = @"NO";
      }

      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Call made to pre-populate the composition. hasNonNilComposition={%@}", &v11, 0xCu);
    }
  }

  if (!compositionCopy || ([(CKChatController *)self entryView], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == 0, v7, v8))
  {
    v10 = compositionCopy;
    prepopulatedComposition = self->_prepopulatedComposition;
    self->_prepopulatedComposition = v10;
  }

  else
  {
    [(CKChatController *)self setComposition:compositionCopy];
    prepopulatedComposition = self->_prepopulatedComposition;
    self->_prepopulatedComposition = 0;
  }
}

- (void)setPrepopulatedRecipients:(id)recipients
{
  v13 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];

  v6 = IMOSLoggingEnabled();
  if (composeRecipientSelectionController)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = recipientsCopy;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Call made to pre-populate recipients (adding): %@", &v11, 0xCu);
      }
    }

    prepopulatedRecipients = [(CKComposeChatController *)self composeRecipientSelectionController];
    [prepopulatedRecipients addRecipients:recipientsCopy];
    goto LABEL_13;
  }

  if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = recipientsCopy;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Call made to pre-populate recipients (not yet ready): %@", &v11, 0xCu);
    }
  }

  if (self->_prepopulatedRecipients != recipientsCopy)
  {
    v10 = recipientsCopy;
    prepopulatedRecipients = self->_prepopulatedRecipients;
    self->_prepopulatedRecipients = v10;
LABEL_13:
  }
}

- (void)setSuggestedRepliesData:(id)data
{
  objc_storeStrong(&self->_suggestedRepliesData, data);
  conversation = [(CKCoreChatController *)self conversation];
  [conversation setChatBot:MEMORY[0x1E695E118]];
}

- (void)setServiceId:(id)id
{
  idCopy = id;
  objc_storeStrong(&self->_serviceId, id);
  if (idCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Got valid serviceId. Setting conversation as chatbot", v8, 2u);
      }
    }

    conversation = [(CKCoreChatController *)self conversation];
    [conversation setChatBot:MEMORY[0x1E695E118]];
  }
}

- (NSArray)proposedRecipients
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];

  if (composeRecipientSelectionController)
  {
    composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
    expandedRecipients = [composeRecipientSelectionController2 expandedRecipients];
  }

  else
  {
    expandedRecipients = self->_prepopulatedRecipients;
  }

  return expandedRecipients;
}

- (NSString)unatomizedRecipientText
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  toField = [composeRecipientSelectionController toField];
  text = [toField text];

  return text;
}

- (void)conversationLeft
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "conversationLeft", v8, 2u);
    }
  }

  composition = [(CKChatController *)self composition];
  v5 = +[CKConversationList sharedConversationList];
  pendingConversationCreatingIfNecessary = [v5 pendingConversationCreatingIfNecessary];
  [(CKChatController *)self setConversation:pendingConversationCreatingIfNecessary];

  if (![(CKCoreChatController *)self isSendingMessage])
  {
    entryView = [(CKChatController *)self entryView];
    [entryView setComposition:composition];
  }
}

- (void)_setConversationDeferredSetup
{
  v39.receiver = self;
  v39.super_class = CKComposeChatController;
  [(CKChatController *)&v39 _setConversationDeferredSetup];
  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];

  if (chat)
  {
    date = [MEMORY[0x1E695DF00] date];
    [CKPowerLog sendTranscriptVisibilityChangedEvent:date event:0 metadata:0];
  }

  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];

  if (!composeRecipientSelectionController)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Creating composeRecipientSelection controller during _setConversationDeferredSetup", buf, 2u);
      }
    }

    v8 = [CKComposeRecipientSelectionController alloc];
    conversation2 = [(CKCoreChatController *)self conversation];
    v10 = [(CKRecipientSelectionController *)v8 initWithConversation:conversation2];

    [(CKRecipientSelectionController *)v10 setDelegate:self];
    [(CKComposeChatController *)self setComposeRecipientSelectionController:v10];
    composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
    view = [composeRecipientSelectionController2 view];
    view2 = [(CKComposeChatController *)self view];
    [view2 bounds];
    [view setFrame:?];

    v14 = +[CKUIBehavior sharedBehaviors];
    LOBYTE(view) = [v14 useMacToolbar];

    if (view)
    {
      macToolbarController = [(CKCoreChatController *)self macToolbarController];
      [macToolbarController updateVirtualViewForProvider:self];
    }

    else
    {
      if ([(CKComposeChatController *)self _isBusinessConversation])
      {
        goto LABEL_13;
      }

      [(CKComposeChatController *)self addChildViewController:v10];
      view3 = [(CKComposeChatController *)self view];
      composeRecipientSelectionController3 = [(CKComposeChatController *)self composeRecipientSelectionController];
      view4 = [composeRecipientSelectionController3 view];
      [view3 addSubview:view4];

      macToolbarController = [(CKComposeChatController *)self composeRecipientSelectionController];
      [macToolbarController didMoveToParentViewController:self];
    }

LABEL_13:
    delegate = [(CKCoreChatController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      delegate2 = [(CKCoreChatController *)self delegate];
      composeChatControllerCanEditRecipients = [delegate2 composeChatControllerCanEditRecipients];

      composeRecipientSelectionController4 = [(CKComposeChatController *)self composeRecipientSelectionController];
      [composeRecipientSelectionController4 setEditable:composeChatControllerCanEditRecipients];

      if (CKIsRunningInMessagesViewService())
      {
        if (composeChatControllerCanEditRecipients)
        {
          if (CKIsScreenLocked())
          {
            SBSRequestPasscodeUnlockUI();
          }
        }

        else
        {
          [(CKChatController *)self setTargetFirstResponder:1];
        }
      }
    }

    prepopulatedRecipients = [(CKComposeChatController *)self prepopulatedRecipients];

    if (prepopulatedRecipients)
    {
      composeRecipientSelectionController5 = [(CKComposeChatController *)self composeRecipientSelectionController];
      prepopulatedRecipients2 = [(CKComposeChatController *)self prepopulatedRecipients];
      [composeRecipientSelectionController5 addRecipients:prepopulatedRecipients2];

      prepopulatedSIMID = [(CKComposeChatController *)self prepopulatedSIMID];
      composeRecipientSelectionController6 = [(CKComposeChatController *)self composeRecipientSelectionController];
      [composeRecipientSelectionController6 setSimID:prepopulatedSIMID];
    }

    prepopulatedComposition = [(CKComposeChatController *)self prepopulatedComposition];

    if (prepopulatedComposition)
    {
      entryView = [(CKChatController *)self entryView];
      composition = [entryView composition];
      if ([composition hasContent])
      {
        [composition compositionByAppendingComposition:self->_prepopulatedComposition];
      }

      else
      {
        [(CKComposeChatController *)self prepopulatedComposition];
      }
      v32 = ;
      [(CKChatController *)self setComposition:v32];
    }

    [(CKComposeChatController *)self setPrepopulatedRecipients:0];
    [(CKComposeChatController *)self setPrepopulatedComposition:0];
  }

  v33 = +[CKUIBehavior sharedBehaviors];
  useMacToolbar = [v33 useMacToolbar];

  if ((useMacToolbar & 1) == 0)
  {
    view5 = [(CKComposeChatController *)self view];
    composeRecipientSelectionController7 = [(CKComposeChatController *)self composeRecipientSelectionController];
    view6 = [composeRecipientSelectionController7 view];
    [view5 bringSubviewToFront:view6];
  }

  [(CKComposeChatController *)self _updateBusinessInfoIfNecessary];
  [(CKComposeChatController *)self _updateSendLaterCompositionIfNecessary];
}

void __56__CKComposeChatController__setConversationDeferredSetup__block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = [*(a1 + 32) composeRecipientSelectionController];
    [v4 setEditable:0];

    v5 = [*(a1 + 32) delegate];
    [v5 composeChatControllerDidCancelComposition:*(a1 + 32)];
  }
}

- (BOOL)_shouldSetToFieldAsFirstResponder
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  if ([composeRecipientSelectionController isEditable])
  {
    proposedRecipients = [(CKComposeChatController *)self proposedRecipients];
    v5 = [proposedRecipients count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_updateSendingIdentity
{
  v36 = *MEMORY[0x1E69E9840];
  conversation = [(CKCoreChatController *)self conversation];
  sendingService = [conversation sendingService];

  mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
  v6 = [mEMORY[0x1E69A5A80] __ck_defaultAccountForService:sendingService];

  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  selectedLastAddressedOrDefaultHandle = [composeRecipientSelectionController selectedLastAddressedOrDefaultHandle];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      name = [sendingService name];
      v30 = 138412802;
      v31 = selectedLastAddressedOrDefaultHandle;
      v32 = 2112;
      v33 = name;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "_updateSendingIdentity selectedLastAddressedHandle: %@, perferredService: %@, account: %@", &v30, 0x20u);
    }
  }

  if ([(CKComposeChatController *)self _deviceHasMultipleActiveSubscriptions])
  {
    composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
    selectedSubscriptionContext = [composeRecipientSelectionController2 selectedSubscriptionContext];
    labelID = [selectedSubscriptionContext labelID];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v30 = 138412290;
        v31 = labelID;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Sending composition with simID: %@", &v30, 0xCu);
      }
    }

    [(CKComposeChatController *)self setLastAddressedSIMID:labelID];
    if (selectedLastAddressedOrDefaultHandle && (IMStringIsEmail() & 1) != 0 || ([v6 serviceName], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", *MEMORY[0x1E69A7AF0]), v15, (v16 & 1) != 0))
    {
      composeRecipientSelectionController3 = [(CKComposeChatController *)self composeRecipientSelectionController];
      hasiMessageableContext = [composeRecipientSelectionController3 hasiMessageableContext];

      if (hasiMessageableContext)
      {
        [(CKComposeChatController *)self setLastAddressedHandle:selectedLastAddressedOrDefaultHandle];
        mEMORY[0x1E69A5A80]2 = [MEMORY[0x1E69A5A80] sharedInstance];
        lastAddressedHandle = [(CKComposeChatController *)self lastAddressedHandle];
        lastAddressedSIMID = [(CKComposeChatController *)self lastAddressedSIMID];
        v22 = [mEMORY[0x1E69A5A80]2 iMessageAccountForLastAddressedHandle:lastAddressedHandle simID:lastAddressedSIMID];

        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            lastAddressedHandle2 = [(CKComposeChatController *)self lastAddressedHandle];
            lastAddressedSIMID2 = [(CKComposeChatController *)self lastAddressedSIMID];
            v30 = 138412802;
            v31 = selectedLastAddressedOrDefaultHandle;
            v32 = 2112;
            v33 = lastAddressedHandle2;
            v34 = 2112;
            v35 = lastAddressedSIMID2;
            _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Selected last addressed handle is iMessage capable %@ and at least one context is iMessage-capable, so pick the account corresponding to last addressed handle %@ and simID %@", &v30, 0x20u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v30 = 138412290;
            v31 = v22;
            _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Account picked %@", &v30, 0xCu);
          }
        }

        v6 = v22;
      }
    }

    else
    {
      [(CKComposeChatController *)self setLastAddressedHandle:selectedLastAddressedOrDefaultHandle];
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          lastAddressedHandle3 = [(CKComposeChatController *)self lastAddressedHandle];
          v30 = 138412290;
          v31 = lastAddressedHandle3;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Sending SMS composition with last addressed handle %@", &v30, 0xCu);
        }
      }
    }
  }

  return v6;
}

- (void)sendComposition:(id)composition
{
  v96 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Sending composition from compose controller.", buf, 2u);
    }
  }

  selfCopy = self;
  conversation = [(CKCoreChatController *)self conversation];
  v6 = [conversation recipientCount] == 0;

  if (!v6)
  {
    composeRecipientSelectionController = [(CKComposeChatController *)selfCopy composeRecipientSelectionController];
    [composeRecipientSelectionController stopCheckingRecipientAvailabilityAndRemoveAllTimers];

    composeRecipientSelectionController2 = [(CKComposeChatController *)selfCopy composeRecipientSelectionController];
    [composeRecipientSelectionController2 setSearchResultsHidden:1];

    _updateSendingIdentity = [(CKComposeChatController *)selfCopy _updateSendingIdentity];
    if (!_updateSendingIdentity)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Cannot send composition to conversation with no account.", buf, 2u);
        }
      }

      goto LABEL_65;
    }

    composeRecipientSelectionController3 = [(CKComposeChatController *)selfCopy composeRecipientSelectionController];
    selectedSubscriptionContext = [composeRecipientSelectionController3 selectedSubscriptionContext];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        lastAddressedHandle = [(CKComposeChatController *)selfCopy lastAddressedHandle];
        lastAddressedSIMID = [(CKComposeChatController *)selfCopy lastAddressedSIMID];
        conversation2 = [(CKCoreChatController *)selfCopy conversation];
        *buf = 138413314;
        v87 = _updateSendingIdentity;
        v88 = 2112;
        v89 = lastAddressedHandle;
        v90 = 2112;
        v91 = lastAddressedSIMID;
        v92 = 2112;
        v93 = selectedSubscriptionContext;
        v94 = 2112;
        v95 = conversation2;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Sending composition with account: %@ lastAddressedHandle: %@ lastAddressedSIMID: %@ subscription: %@ conversation: %@", buf, 0x34u);
      }
    }

    ignoreEmailsWhenSending = [(CKComposeChatController *)selfCopy ignoreEmailsWhenSending];
    conversation3 = [(CKCoreChatController *)selfCopy conversation];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      conversation4 = [(CKCoreChatController *)selfCopy conversation];
      pendingChat = [conversation4 pendingChat];
    }

    else
    {
      pendingChat = 0;
    }

    composeRecipientSelectionController4 = [(CKComposeChatController *)selfCopy composeRecipientSelectionController];
    gameCenterPickerBlock = [composeRecipientSelectionController4 gameCenterPickerBlock];

    if ((gameCenterPickerBlock != 0) | (ignoreEmailsWhenSending | pendingChat) & 1 || (-[CKCoreChatController conversation](selfCopy, "conversation"), v25 = objc_claimAutoreleasedReturnValue(), [v25 chat], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v25, v27))
    {
      composeRecipientSelectionController5 = [(CKComposeChatController *)selfCopy composeRecipientSelectionController];
      expandedRecipients = [composeRecipientSelectionController5 expandedRecipients];

      v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(expandedRecipients, "count")}];
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v31 = expandedRecipients;
      v32 = [v31 countByEnumeratingWithState:&v81 objects:v85 count:16];
      if (v32)
      {
        v33 = *v82;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v82 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v81 + 1) + 8 * i);
            if ([v35 kind] != 5 || gameCenterPickerBlock == 0)
            {
              rawAddress = [v35 rawAddress];
              v38 = IMStripFormattingFromAddress();

              if (v38 && (!ignoreEmailsWhenSending || (IMStringIsEmail() & 1) == 0))
              {
                v39 = [_updateSendingIdentity imHandleWithID:v38 alreadyCanonical:0];
                if (v39)
                {
                  [v30 addObject:v39];
                }
              }
            }
          }

          v32 = [v31 countByEnumeratingWithState:&v81 objects:v85 count:16];
        }

        while (v32);
      }

      HIDWORD(v69) = [v30 count] != 0;
      conversation5 = [(CKCoreChatController *)selfCopy conversation];
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();

      if (v41)
      {
        conversation6 = [(CKCoreChatController *)selfCopy conversation];
        isSendingServiceEncrypted = [conversation6 isSendingServiceEncrypted];
      }

      else
      {
        isSendingServiceEncrypted = 0;
      }

      v44 = +[CKConversationList sharedConversationList];
      lastAddressedHandle2 = [(CKComposeChatController *)selfCopy lastAddressedHandle];
      lastAddressedSIMID2 = [(CKComposeChatController *)selfCopy lastAddressedSIMID];
      LOBYTE(v69) = 1;
      v47 = [v44 conversationForHandles:v30 displayName:0 lastAddressedHandle:lastAddressedHandle2 lastAddressedSIMID:lastAddressedSIMID2 joinedChatsOnly:1 findMatchingNamedGroups:0 create:v69];

      [(CKChatController *)selfCopy setConversation:v47];
      chat = [v47 chat];
      [chat setSupportsEncryption:isSendingServiceEncrypted];

      delegate = [(CKCoreChatController *)selfCopy delegate];
      [delegate composeChatController:selfCopy didSelectNewConversation:v47];
    }

    else
    {
      v70 = 1;
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

    if (isIntroductionsEnabled)
    {
      conversation7 = [(CKCoreChatController *)selfCopy conversation];
      chat2 = [conversation7 chat];

      if (chat2)
      {
        if ([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled])
        {
          conversation8 = [(CKCoreChatController *)selfCopy conversation];
          chat3 = [conversation8 chat];
          v56 = [chat3 isFiltered] == 0;

          if (!v56)
          {
            conversation9 = [(CKCoreChatController *)selfCopy conversation];
            chat4 = [conversation9 chat];
            [chat4 markAsKnownAndSaveInContacts:0 completion:0];
          }
        }
      }
    }

    if (!gameCenterPickerBlock || ([(CKCoreChatController *)selfCopy conversation], v59 = objc_claimAutoreleasedReturnValue(), v60 = v59 == 0, v59, !v60))
    {
      inputController = [(CKCoreChatController *)selfCopy inputController];
      [inputController requestPhotoBrowserToPrepareForDraftClearingPhotoShelfViewController:0];

      if ([(CKChatController *)selfCopy showSendAlertIfNecessaryForComposition:compositionCopy])
      {
        if (IMOSLoggingEnabled())
        {
          v62 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v62, OS_LOG_TYPE_INFO, "Showing send alert. Not sending message.", buf, 2u);
          }
        }

        goto LABEL_64;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__CKComposeChatController_sendComposition___block_invoke;
      aBlock[3] = &unk_1E72F2680;
      v77 = compositionCopy;
      v78 = selfCopy;
      v80 = v70;
      v79 = _updateSendingIdentity;
      v63 = _Block_copy(aBlock);
      v64 = v63;
      if (ignoreEmailsWhenSending)
      {
        conversation10 = [(CKCoreChatController *)selfCopy conversation];
        [conversation10 refreshServiceForSending];

        v66 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__CKComposeChatController_sendComposition___block_invoke_334;
        block[3] = &unk_1E72ED1C8;
        block[4] = selfCopy;
        v75 = v64;
        dispatch_after(v66, MEMORY[0x1E69E96A0], block);
      }

      else
      {
        (*(v63 + 2))(v63);
      }
    }

    v67 = +[CKDraftManager sharedInstance];
    [v67 setDraftForPendingConversation:0 withRecipients:0];

    v68 = +[CKDraftManager sharedInstance];
    [v68 saveCompositionAndFlushCache:0];

LABEL_64:
LABEL_65:

    goto LABEL_66;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      conversation11 = [(CKCoreChatController *)selfCopy conversation];
      *buf = 138412290;
      v87 = conversation11;
      _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Cannot send composition to conversation with no recipients: %@", buf, 0xCu);
    }
  }

LABEL_66:
}

void __43__CKComposeChatController_sendComposition___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CKComposeChatController_sendComposition___block_invoke_2;
  aBlock[3] = &unk_1E72EB8D0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = v2;
  v9 = v3;
  v4 = _Block_copy(aBlock);
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 40) _determineSpamFilterHandshakeStateForAccount:*(a1 + 48)];
    [*(a1 + 40) _prepareForSendFromCardIfNecessaryAndSend:v4];
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Can not send the message because we have no valid handles to send to.", v6, 2u);
    }
  }
}

void __43__CKComposeChatController_sendComposition___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) shelfPluginPayload];
  if ([*(a1 + 32) compositionIsCollaboration])
  {
    if ([*(a1 + 40) shareWasCreated])
    {
      v3 = *(a1 + 32);
      v23.receiver = *(a1 + 40);
      v23.super_class = CKComposeChatController;
      objc_msgSendSuper2(&v23, sel_sendComposition_, v3);
      [*(a1 + 40) setShareWasCreated:0];
    }

    else
    {
      [*(a1 + 40) enableSendButtonSpinner];
      v15 = *(a1 + 32);
      v22.receiver = *(a1 + 40);
      v22.super_class = CKComposeChatController;
      objc_msgSendSuper2(&v22, sel_sendCompositionForCollaboration_collaborationType_completion_, v15, [v2 payloadCollaborationType], 0);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    if ([v2 sendAsCopy])
    {
      v5 = [v2 sendAsCopyURL];

      if (v5)
      {
        v6 = [v2 sendAsCopyURL];
        [v2 setUrl:v6];

        v7 = [CKComposition alloc];
        v8 = [*(a1 + 32) text];
        v9 = [*(a1 + 32) subject];
        v10 = [*(a1 + 32) translation];
        v11 = [*(a1 + 32) bizIntent];
        v12 = [*(a1 + 32) shelfMediaObject];
        v13 = [*(a1 + 32) proofreadingInfo];
        v14 = [(CKComposition *)v7 initWithText:v8 subject:v9 translation:v10 shelfPluginPayload:v2 bizIntent:v11 shelfMediaObject:v12 proofreadingInfo:v13];

        v4 = v14;
      }
    }

    v21.receiver = *(a1 + 40);
    v21.super_class = CKComposeChatController;
    objc_msgSendSuper2(&v21, sel_sendComposition_, v4);
  }

  v16 = *(a1 + 40);
  v17 = [v16 conversation];
  [v16 addBizIntentToConversation:v17];

  [*(a1 + 40) setSendingComposition:1];
  v18 = [*(a1 + 40) businessInfoView];
  v19 = [v18 superview];

  if (v19)
  {
    v20 = [*(a1 + 40) businessInfoView];
    [v20 removeFromSuperview];
  }
}

void __43__CKComposeChatController_sendComposition___block_invoke_334(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v3 = [v2 chat];
  v4 = [v3 account];
  v5 = [v4 service];

  v6 = [MEMORY[0x1E69A5CA0] iMessageService];

  v7 = IMOSLoggingEnabled();
  if (v5 == v6)
  {
    if (v7)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Cache hit after removing emails from conversation, send now", buf, 2u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Waiting for registration check before sending", v11, 2u);
      }
    }

    v9 = dispatch_time(0, 4000000000);
    dispatch_after(v9, MEMORY[0x1E69E96A0], *(a1 + 40));
  }
}

- (void)_determineSpamFilterHandshakeStateForAccount:(id)account
{
  accountCopy = account;
  if ([MEMORY[0x1E69A82A0] isInternationalSpamFilteringEnabled])
  {
    conversation = [(CKCoreChatController *)self conversation];
    chat = [conversation chat];
    repliedToChat = [chat repliedToChat];

    conversation2 = [(CKCoreChatController *)self conversation];
    chat2 = [conversation2 chat];
    receivedResponseForChat = [chat2 receivedResponseForChat];

    if ((repliedToChat & 1) == 0 && (receivedResponseForChat & 1) == 0)
    {
      serviceName = [accountCopy serviceName];
      v11 = [serviceName isEqualToString:*MEMORY[0x1E69A7AE0]];

      if (v11)
      {
        conversation3 = [(CKCoreChatController *)self conversation];
        chat3 = [conversation3 chat];
        participants = [chat3 participants];
        conversation4 = [participants __imArrayByApplyingBlock:&__block_literal_global_339_0];

        [MEMORY[0x1E69A82A0] participantsAreiMessagable:conversation4 completionBlock:&__block_literal_global_342];
      }

      else
      {
        mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
        [mEMORY[0x1E69A8168] trackSpamEvent:1];

        conversation4 = [(CKCoreChatController *)self conversation];
        chat4 = [conversation4 chat];
        [chat4 setValue:&unk_1F04E7EC0 forChatProperty:*MEMORY[0x1E69A5D38]];
      }
    }
  }
}

id __72__CKComposeChatController__determineSpamFilterHandshakeStateForAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  v3 = IMChatCanonicalIDSIDsForAddress();

  return v3;
}

void __72__CKComposeChatController__determineSpamFilterHandshakeStateForAccount___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [MEMORY[0x1E69A8168] sharedInstance];
    [v2 trackSpamEvent:1];
  }
}

- (void)_prepareForSendFromCardIfNecessaryAndSend:(id)send
{
  sendCopy = send;
  [(CKChatController *)self dismissEffectPickerAnimated:1];
  [(CKComposeChatController *)self setHasStartedSendAnimation:1];
  _currentPresentationController = [(CKChatController *)self _currentPresentationController];
  if ([(CKCoreChatController *)self shouldDismissAfterSend]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "Not sending in a sheet, sending normally!", buf, 2u);
      }
    }

    if (sendCopy)
    {
      sendCopy[2](sendCopy);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Preparing to transition from sheet->fullscreen", buf, 2u);
      }
    }

    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    [collectionViewController setTransitioningFromComposing:1];

    [(CKComposeChatController *)self setSendingViaCardUI:1];
    transcriptNavigationBarController = [(CKChatController *)self transcriptNavigationBarController];
    v9 = +[_TtC7ChatKit29TranscriptNavigationBarChange barButtonsChange];
    [transcriptNavigationBarController applyChange:v9];

    transcriptNavigationBarController2 = [(CKChatController *)self transcriptNavigationBarController];
    v11 = +[_TtC7ChatKit29TranscriptNavigationBarChange titleDisplayModeChange];
    [transcriptNavigationBarController2 applyChange:v11];

    v12 = _currentPresentationController;
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 sendAnimationDuration];
    v15 = v14;

    containerView = [v12 containerView];
    _UISheetMinimumTopInset();
    v18 = v17;

    collectionView = [(CKChatController *)self collectionView];
    [collectionView beginDisablingTranscriptDynamicsForReason:7];
    collectionView2 = [(CKChatController *)self collectionView];
    [collectionView2 contentOffset];
    v22 = v21;
    v24 = v23;

    containerView2 = [v12 containerView];
    [containerView2 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    collectionView3 = [(CKChatController *)self collectionView];
    [collectionView3 setAutoresizingMask:0];

    collectionView4 = [(CKChatController *)self collectionView];
    [collectionView4 setFrame:{v27, v29 - v18, v31, v33}];

    collectionView5 = [(CKChatController *)self collectionView];
    [collectionView5 setContentOffset:{v22, v24 - v18}];

    collectionView6 = [(CKChatController *)self collectionView];
    [collectionView6 layoutIfNeeded];

    v38 = MEMORY[0x1E69DD250];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __69__CKComposeChatController__prepareForSendFromCardIfNecessaryAndSend___block_invoke;
    v49[3] = &unk_1E72EB8D0;
    v39 = v12;
    v50 = v39;
    selfCopy = self;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __69__CKComposeChatController__prepareForSendFromCardIfNecessaryAndSend___block_invoke_2;
    v47[3] = &unk_1E72EB9C8;
    v40 = collectionView;
    v48 = v40;
    [v38 animateWithDuration:v49 animations:v47 completion:v15];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __69__CKComposeChatController__prepareForSendFromCardIfNecessaryAndSend___block_invoke_3;
    v46[3] = &unk_1E72EBA18;
    v46[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v46 animations:v15 * 0.5];
    delegate = [(CKCoreChatController *)self delegate];
    v42 = [delegate composeChatControllerShouldShowBackButtonViewDuringSendAnimation:self];

    navbarManager = [(CKComposeChatController *)self navbarManager];
    conversation = [(CKCoreChatController *)self conversation];
    [navbarManager commitTransitionAnimationWithConversation:conversation shouldShowBackButtonView:v42];

    if (sendCopy)
    {
      sendCopy[2](sendCopy);
    }
  }
}

void __69__CKComposeChatController__prepareForSendFromCardIfNecessaryAndSend___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setWantsFullScreen:{objc_msgSend(*(a1 + 32), "_wantsFullScreen") ^ 1}];
  v2 = [*(a1 + 32) containerView];
  [v2 layoutIfNeeded];

  v3 = [*(a1 + 32) containerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [*(a1 + 40) collectionView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

void __69__CKComposeChatController__prepareForSendFromCardIfNecessaryAndSend___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) composeRecipientSelectionController];
  v2 = [v1 view];

  [v2 setAlpha:0.0];
}

- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)needed
{
  neededCopy = needed;
  traitCollection = [(CKComposeChatController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [neededCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    [collectionViewController balloonMaxWidth];
    v9 = v8;
    [collectionViewController marginInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    traitCollection2 = [(CKComposeChatController *)self traitCollection];
    [collectionViewController transcriptBackgroundLuminance];
    [collectionViewController invalidateChatItemLayoutWithNewBalloonMaxWidth:traitCollection2 marginInsets:v9 traitCollection:v11 transcriptBackgroundLuminance:{v13, v15, v17, v19}];
  }
}

- (void)addBizIntentToConversation:(id)conversation
{
  conversationCopy = conversation;
  bizIntent = [(CKComposeChatController *)self bizIntent];

  if (bizIntent)
  {
    [(CKComposeChatController *)self _processBizIntentIfNeeded];
    bizIntent2 = [(CKComposeChatController *)self bizIntent];
    chat = [conversationCopy chat];
    [chat setBizIntent:bizIntent2];

    [(CKComposeChatController *)self setBizIntent:0];
  }
}

- (void)_processBizIntentIfNeeded
{
  v51 = *MEMORY[0x1E69E9840];
  bizIntent = [(CKComposeChatController *)self bizIntent];
  if (bizIntent)
  {
    _isAllowlistedBusinessRecipient = [(CKComposeChatController *)self _isAllowlistedBusinessRecipient];

    if (_isAllowlistedBusinessRecipient)
    {
      bizIntent2 = [(CKComposeChatController *)self bizIntent];
      v6 = [bizIntent2 objectForKeyedSubscript:@"biz-intent-id"];
      v7 = [v6 dataUsingEncoding:4];

      if (v7)
      {
        v44 = 0;
        v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v44];
        v9 = v44;
        v10 = [v8 mutableCopy];

        if (v9)
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              bizIntent3 = [(CKComposeChatController *)self bizIntent];
              *buf = 138412546;
              v48 = bizIntent3;
              v49 = 2112;
              v50 = v9;
              _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Fail to decode JSON bizIntent biz-intent-id [%@] due to error [%@]", buf, 0x16u);
            }
          }
        }

        else
        {
          v15 = [v10 objectForKeyedSubscript:@"authBag"];
          v16 = [v15 dataUsingEncoding:4];

          if (v16)
          {
            v43 = 0;
            v17 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v16 options:0 error:&v43];
            v9 = v43;
            v18 = [v17 mutableCopy];

            if (v9)
            {
              if (IMOSLoggingEnabled())
              {
                v19 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  bizIntent4 = [(CKComposeChatController *)self bizIntent];
                  v21 = [bizIntent4 objectForKeyedSubscript:@"authBag"];
                  *buf = 138412546;
                  v48 = v21;
                  v49 = 2112;
                  v50 = v9;
                  _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Fail to decode JSON bizIntent authBag [%@] due to error [%@]", buf, 0x16u);
                }
              }
            }

            else
            {
              _anisetteData = [(CKComposeChatController *)self _anisetteData];
              v24 = _anisetteData;
              if (_anisetteData)
              {
                oneTimePassword = [_anisetteData oneTimePassword];
                [v18 setObject:oneTimePassword forKeyedSubscript:@"X-Apple-I-MD"];
              }

              v42 = 0;
              v40 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v18 options:0 error:&v42];
              v26 = v42;
              if (v26)
              {
                v9 = v26;
                if (IMOSLoggingEnabled())
                {
                  v27 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v48 = v18;
                    v49 = 2112;
                    v50 = v9;
                    _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Fail to serialize processed authBag [%@] due to error [%@]", buf, 0x16u);
                  }
                }
              }

              else
              {
                v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v40 encoding:4];
                [v10 setObject:v39 forKeyedSubscript:@"authBag"];
                v41 = 0;
                v38 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:0 error:&v41];
                v9 = v41;
                if (v9)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v28 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v48 = v10;
                      v49 = 2112;
                      v50 = v9;
                      _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Fail to serialize processed biz-intent-id [%@] due to error [%@]", buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v38 encoding:4];
                  v45[0] = @"biz-group-id";
                  bizIntent5 = [(CKComposeChatController *)self bizIntent];
                  v30 = [bizIntent5 objectForKeyedSubscript:@"biz-group-id"];
                  v45[1] = @"biz-intent-id";
                  v46[0] = v30;
                  v46[1] = v37;
                  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

                  bizIntent6 = [(CKComposeChatController *)self bizIntent];
                  v32 = [bizIntent6 objectForKeyedSubscript:@"biz-greeting-txt"];

                  if (v32)
                  {
                    v33 = [v36 mutableCopy];
                    bizIntent7 = [(CKComposeChatController *)self bizIntent];
                    v35 = [bizIntent7 objectForKeyedSubscript:@"biz-greeting-txt"];
                    [v33 setObject:v35 forKeyedSubscript:@"biz-greeting-txt"];
                  }

                  else
                  {
                    v33 = v36;
                  }

                  [(CKComposeChatController *)self setBizIntent:v33];
                }
              }
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v48 = v10;
                _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Fail to decode authBag from biz-intent-id [%@]", buf, 0xCu);
              }
            }

            v9 = 0;
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          bizIntent8 = [(CKComposeChatController *)self bizIntent];
          *buf = 138412290;
          v48 = bizIntent8;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Fail to decode biz-intent-id from [%@]", buf, 0xCu);
        }
      }
    }
  }
}

- (BOOL)_isAllowlistedBusinessRecipient
{
  v21 = *MEMORY[0x1E69E9840];
  prepopulatedRecipients = [(CKComposeChatController *)self prepopulatedRecipients];
  v4 = [prepopulatedRecipients count];

  if (v4 == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    prepopulatedRecipients2 = [(CKComposeChatController *)self prepopulatedRecipients];
    v6 = [prepopulatedRecipients2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(prepopulatedRecipients2);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          address = [v9 address];
          handle = [v9 handle];
          isBusiness = [handle isBusiness];

          if (isBusiness)
          {
            v13 = IMSharedHelperBusinessAllowlist();
            v14 = [v13 containsObject:address];

            if (v14)
            {

              LOBYTE(v6) = 1;
              goto LABEL_14;
            }
          }
        }

        v6 = [prepopulatedRecipients2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_anisetteData
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x193AF5EC0](@"AKAnisetteProvisioningController", @"AuthKit");
  if (v2)
  {
    v3 = objc_alloc_init(v2);
    v9 = 0;
    v4 = [v3 anisetteDataWithError:&v9];
    v5 = v9;
    if (v5 && IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "CKComposeChatController: Failed fetching anisette data with error [%@]", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "CKComposeChatController: Failed linking Accounts - AKAnisetteProvisioningController", buf, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

- (void)stageSuggestedReplies
{
  suggestedRepliesData = [(CKComposeChatController *)self suggestedRepliesData];

  if (!suggestedRepliesData)
  {
    return;
  }

  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];

  if (!chat)
  {
    _updateSendingIdentity = [(CKComposeChatController *)self _updateSendingIdentity];
    composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
    expandedRecipients = [composeRecipientSelectionController expandedRecipients];

    if ([expandedRecipients count] != 1)
    {

      goto LABEL_11;
    }

    v8 = [expandedRecipients objectAtIndexedSubscript:0];
    rawAddress = [v8 rawAddress];
    v10 = IMStripFormattingFromAddress();

    if (v10)
    {
      v11 = [_updateSendingIdentity imHandleWithID:v10 alreadyCanonical:0];
      v12 = [CKPendingConversation pendingConversationForHandle:v11];
      [(CKChatController *)self setConversation:v12];
      delegate = [(CKCoreChatController *)self delegate];
      [delegate composeChatController:self didSelectNewConversation:v12];
    }
  }

  conversation2 = [(CKCoreChatController *)self conversation];
  _updateSendingIdentity = [conversation2 chat];

  v15 = _updateSendingIdentity;
  if (_updateSendingIdentity)
  {
    suggestedRepliesData2 = [(CKComposeChatController *)self suggestedRepliesData];
    [_updateSendingIdentity setSuggestedRepliesData:suggestedRepliesData2];

    [_updateSendingIdentity reloadChatItemsForSuggestedRepliesChange];
    [(CKComposeChatController *)self setSuggestedRepliesData:0];
LABEL_11:
    v15 = _updateSendingIdentity;
  }
}

- (id)outgoingComposeViewForSendAnimation
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  fieldStackContainerView = [composeRecipientSelectionController fieldStackContainerView];

  return fieldStackContainerView;
}

- (BOOL)isSafeToMarkAsRead
{
  v7.receiver = self;
  v7.super_class = CKComposeChatController;
  isSafeToMarkAsRead = [(CKChatController *)&v7 isSafeToMarkAsRead];
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  isSearchResultsHidden = [composeRecipientSelectionController isSearchResultsHidden];

  return isSafeToMarkAsRead & isSearchResultsHidden;
}

- (double)topInsetPadding
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];

  v4 = 0.0;
  if (![(CKChatController *)self isAnimatingMessageSend]&& composeRecipientSelectionController && !CKIsRunningInMacCatalyst())
  {
    composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
    [composeRecipientSelectionController2 collapsedHeight];
    v7 = v6;

    composeRecipientSelectionController3 = [(CKComposeChatController *)self composeRecipientSelectionController];
    [composeRecipientSelectionController3 fromFieldHeight];
    v4 = v7 + v9;
  }

  return v4;
}

- (void)keyboardWillHide:(id)hide
{
  hideCopy = hide;
  if (![(CKComposeChatController *)self ignoreKeyboardNotifications])
  {
    v5.receiver = self;
    v5.super_class = CKComposeChatController;
    [(CKChatController *)&v5 keyboardWillHide:hideCopy];
  }
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  if (![(CKComposeChatController *)self ignoreKeyboardNotifications])
  {
    v6.receiver = self;
    v6.super_class = CKComposeChatController;
    [(CKChatController *)&v6 keyboardWillShow:showCopy];
    entryView = [(CKChatController *)self entryView];
    [entryView setNeedsLayout];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  inputController = [(CKCoreChatController *)self inputController];
  [inputController setPreventResignFirstResponder:1];

  v8.receiver = self;
  v8.super_class = CKComposeChatController;
  [(CKChatController *)&v8 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (UIEdgeInsets)macToolbarInsets
{
  v3 = MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  v7 = +[CKUIBehavior sharedBehaviors];
  useMacToolbar = [v7 useMacToolbar];

  if (useMacToolbar)
  {
    [(CKChatController *)self preferredMacToolbarHeight];
    v10 = v9;
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 macAppKitToolbarHeight];
    if (v10 > v12)
    {
      [(CKChatController *)self preferredMacToolbarHeight];
      v15 = v16;
    }

    else
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      [v13 macAppKitToolbarHeight];
      v15 = v14;
    }
  }

  else
  {
    v15 = *v3;
  }

  v17 = v15;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (id)preferredNavigationBarTitleText
{
  overrideTitle = self->_overrideTitle;
  if (overrideTitle)
  {
    v3 = overrideTitle;
  }

  else
  {
    composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
    expandedRecipients = [composeRecipientSelectionController expandedRecipients];

    entryView = [(CKChatController *)self entryView];
    composition = [entryView composition];

    mediaObjects = [composition mediaObjects];
    subject = [composition subject];
    string = [subject string];

    if (![expandedRecipients count] || (-[CKCoreChatController conversation](self, "conversation"), v12 = objc_claimAutoreleasedReturnValue(), -[CKCoreChatController conversation](self, "conversation"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "sendingService"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "_headerTitleForPendingMediaObjects:subject:onService:", mediaObjects, string, v14), v3 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, !v3))
    {
      v15 = CKFrameworkBundle();
      v3 = [v15 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    }
  }

  return v3;
}

- (void)_updateTitleAnimated:(BOOL)animated
{
  v3.receiver = self;
  v3.super_class = CKComposeChatController;
  [(CKChatController *)&v3 _updateTitleAnimated:animated];
}

- (void)navbarManagerIsAnimatingNavbarTransition:(id)transition
{
  navigationItem = [(CKComposeChatController *)self navigationItem];
  titleView = [navigationItem titleView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationItem2 = [(CKComposeChatController *)self navigationItem];
    titleView2 = [navigationItem2 titleView];
  }

  else
  {
    titleView2 = 0;
  }

  navbarManager = [(CKComposeChatController *)self navbarManager];
  contentView = [navbarManager contentView];

  [contentView sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [titleView2 setHeight:v9];
  navigationController = [(CKComposeChatController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  superview = [navigationBar superview];
  [superview setNeedsLayout];

  navigationController2 = [(CKComposeChatController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  superview2 = [navigationBar2 superview];
  [superview2 layoutIfNeeded];
}

- (void)transcriptNavigationBar:(id)bar didTapToPerformAction:(int64_t)action
{
  if (action == 6)
  {
    [(CKComposeChatController *)self cancelButtonTapped];
  }
}

- (void)_updateNavigationButtons
{
  transcriptNavigationBarController = [(CKChatController *)self transcriptNavigationBarController];
  v2 = +[_TtC7ChatKit29TranscriptNavigationBarChange barButtonsChange];
  [transcriptNavigationBarController applyChange:v2];
}

- (int64_t)currentTranscriptNavigationBarMode
{
  if ([(CKComposeChatController *)self hasStartedSendAnimation])
  {
    return -1;
  }

  if ([(CKComposeChatController *)self shouldShowComposeCancelItem])
  {
    return 3;
  }

  return -1;
}

- (int64_t)currentTranscriptNavigationBarTitleDisplayMode
{
  if ([(CKComposeChatController *)self hasStartedSendAnimation])
  {
    return 1;
  }

  if ([(CKComposeChatController *)self _isBusinessConversation])
  {
    return 0;
  }

  return 3;
}

- (UIBarButtonItem)composeCancelItem
{
  composeCancelItem = self->_composeCancelItem;
  if (!composeCancelItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped];
    v5 = self->_composeCancelItem;
    self->_composeCancelItem = v4;

    composeCancelItem = self->_composeCancelItem;
  }

  return composeCancelItem;
}

- (void)cancelCompose
{
  [(CKComposeChatController *)self setNewComposeCancelled:1];
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  [composeRecipientSelectionController stopCheckingRecipientAvailabilityAndRemoveAllTimers];

  composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [composeRecipientSelectionController2 setSearchResultsHidden:1];

  [(CKChatController *)self setTargetFirstResponder:0];
  splitViewController = [(CKChatController *)self splitViewController];
  if (!splitViewController || (v6 = splitViewController, -[CKChatController splitViewController](self, "splitViewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isCollapsed], v7, v6, v8))
  {
    [(CKChatController *)self dismissKeyboard];
    [(CKComposeChatController *)self reloadInputViews];
  }

  inputController = [(CKCoreChatController *)self inputController];
  [inputController requestPhotoBrowserToUnstageAllImages];

  delegate = [(CKCoreChatController *)self delegate];
  [delegate composeChatControllerDidCancelComposition:self];
}

- (BOOL)isReadOnly
{
  chat = [(CKCoreChatController *)self chat];
  isReadOnly = [chat isReadOnly];

  return isReadOnly;
}

- (BOOL)shouldShowEntryView
{
  v10.receiver = self;
  v10.super_class = CKComposeChatController;
  if ([(CKChatController *)&v10 shouldShowEntryView])
  {
    if (![(CKComposeChatController *)self newComposeCancelled])
    {
      composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
      isSearchResultsHidden = [composeRecipientSelectionController isSearchResultsHidden];

      if (isSearchResultsHidden)
      {
        LOBYTE(v3) = 1;
        return v3;
      }

      v3 = IMOSLoggingEnabled();
      if (!v3)
      {
        return v3;
      }

      v4 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      *v9 = 0;
      v5 = "Not showing entry view because recipient search results are visible";
      goto LABEL_9;
    }

    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        v5 = "Not showing entry view because new compose is cancelled";
LABEL_9:
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, v5, v9, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        v5 = "Not showing entry view because super.shouldShowEntryView is false";
        goto LABEL_9;
      }

LABEL_10:

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)inputAccessoryViewController
{
  if (CKInputAccessoryViewControllerEnabled() && [(CKComposeChatController *)self shouldShowEntryView])
  {
    v5.receiver = self;
    v5.super_class = CKComposeChatController;
    inputAccessoryViewController = [(CKChatController *)&v5 inputAccessoryViewController];
  }

  else
  {
    inputAccessoryViewController = 0;
  }

  return inputAccessoryViewController;
}

- (id)inputAccessoryView
{
  if (CKInputAccessoryViewControllerEnabled() || ![(CKComposeChatController *)self shouldShowEntryView])
  {
    inputAccessoryView = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKComposeChatController;
    inputAccessoryView = [(CKChatController *)&v5 inputAccessoryView];
  }

  return inputAccessoryView;
}

- (double)_entryViewTopInsetPadding
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  [composeRecipientSelectionController collapsedHeight];
  v5 = v4;

  composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [composeRecipientSelectionController2 glassPlatterLayoutMargins];
  v8 = v7;
  v10 = v9;

  v11 = v5 + v8 + v10;
  composeRecipientSelectionController3 = [(CKComposeChatController *)self composeRecipientSelectionController];
  shouldHideFromField = [composeRecipientSelectionController3 shouldHideFromField];

  if ((shouldHideFromField & 1) == 0)
  {
    composeRecipientSelectionController4 = [(CKComposeChatController *)self composeRecipientSelectionController];
    fromFieldContainerView = [composeRecipientSelectionController4 fromFieldContainerView];
    [fromFieldContainerView frame];
    v17 = v16;

    return v11 + v17;
  }

  return v11;
}

- (void)reloadEntryViewIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[CKComposeChatController reloadEntryViewIfNeeded]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "reloadEntryViewIfNeeded called from %s", buf, 0xCu);
    }
  }

  v11.receiver = self;
  v11.super_class = CKComposeChatController;
  [(CKChatController *)&v11 reloadEntryViewIfNeeded];
  v4 = [CKMentionsController alloc];
  entryView = [(CKChatController *)self entryView];
  contentView = [entryView contentView];
  textView = [contentView textView];
  conversation = [(CKCoreChatController *)self conversation];
  v9 = [(CKMentionsController *)v4 initWithEntryTextView:textView conversation:conversation];
  [(CKChatController *)self setMentionsController:v9];

  [(CKComposeChatController *)self _reloadMentionsData];
  entryView2 = [(CKChatController *)self entryView];
  if (entryView2)
  {
    [entryView2 setComposingRecipient:{-[CKComposeChatController isComposingRecipient](self, "isComposingRecipient")}];
    [entryView2 setFailedRecipients:{-[CKComposeChatController hasFailedRecipients](self, "hasFailedRecipients")}];
    [entryView2 setUnreachableEmergencyRecipient:{-[CKComposeChatController hasUnreachableEmergencyRecipient](self, "hasUnreachableEmergencyRecipient")}];
  }
}

- (BOOL)reloadEntryViewForStagedPluginMessage
{
  v16 = *MEMORY[0x1E69E9840];
  entryView = [(CKChatController *)self entryView];
  composition = [entryView composition];
  shelfPluginPayload = [composition shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];

  if (![pluginBundleID length])
  {
    goto LABEL_12;
  }

  v7 = IMBalloonExtensionIDWithSuffix();
  if (([pluginBundleID isEqualToString:v7] & 1) == 0)
  {

    goto LABEL_12;
  }

  recipientsListChanged = [(CKComposeChatController *)self recipientsListChanged];

  if (!recipientsListChanged)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      recipientsListChanged2 = [(CKComposeChatController *)self recipientsListChanged];
      v11 = "NO";
      if (recipientsListChanged2)
      {
        v11 = "YES";
      }

      v14 = 136315138;
      v15 = v11;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Triggering an entry view reload since Check-in Message is staged in new compose, recipientsListChanged, %s", &v14, 0xCu);
    }
  }

  [(CKComposeChatController *)self setRecipientsListChanged:0];
  v12 = 1;
LABEL_13:

  return v12;
}

- (BOOL)_shouldValidatePayloadBeforeSendingPayload:(id)payload
{
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requiresValidation = [payloadCopy requiresValidation];
  }

  else
  {
    requiresValidation = 0;
  }

  return requiresValidation;
}

- (void)messageEntryViewDidChange:(id)change isTextChange:(BOOL)textChange isShelfChange:(BOOL)shelfChange isTranslationChange:(BOOL)translationChange
{
  v10.receiver = self;
  v10.super_class = CKComposeChatController;
  [(CKChatController *)&v10 messageEntryViewDidChange:change isTextChange:textChange isShelfChange:shelfChange isTranslationChange:translationChange];
  [(CKComposeChatController *)self _updateTitleAnimated:1];
  _currentPresentationController = [(CKChatController *)self _currentPresentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    composition = [(CKChatController *)self composition];
    -[CKComposeChatController setModalInPresentation:](self, "setModalInPresentation:", [composition hasContent]);
  }
}

- (void)messageEntryViewSendButtonHit:(id)hit
{
  hitCopy = hit;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "messageEntryViewSendButtonHit:", buf, 2u);
    }
  }

  effectPickerWindow = [(CKChatController *)self effectPickerWindow];

  if (effectPickerWindow)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v8 = "Effect picker window is not nil. Return.";
LABEL_13:
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, v8, buf, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if ([(CKCoreChatController *)self isSendingMessage])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v8 = "isSendingMessage. Return.";
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  else
  {
    composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
    allowedByScreenTime = [composeRecipientSelectionController allowedByScreenTime];

    if (allowedByScreenTime)
    {
      v11 = +[CKAdaptivePresentationController sharedInstance];
      [v11 dismissViewControllerAnimated:1 completion:0];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__passKitUIDismissed_ name:@"CKPluginExtensionStateObserverPassKitUIDismissed" object:0];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke;
      v14[3] = &unk_1E72ED6D8;
      v14[4] = self;
      [hitCopy compositionWithAcceptedAutocorrection:v14];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Handle is not allowed by the screentime policy. Return.", buf, 2u);
        }
      }

      [(CKChatController *)self showScreenTimeShieldIfNeeded];
    }
  }
}

void __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Composition has accepted autocorrections.", buf, 2u);
    }
  }

  v5 = [v3 shelfPluginPayload];
  v6 = [*(a1 + 32) _shouldValidatePayloadBeforeSendingPayload:v5];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "shouldValidatePayload", buf, 2u);
      }
    }

    v9 = v5;
    v10 = +[CKBalloonPluginManager sharedInstance];
    v11 = [v9 pluginBundleID];
    v12 = [v10 viewControllerForPluginIdentifier:v11];

    v13 = [v3 text];
    v14 = [v13 string];

    v43 = v14;
    v15 = [v14 stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A5F00] withString:&stru_1F04268F8];
    v41 = [v15 stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A5F20] withString:&stru_1F04268F8];

    [*(a1 + 32) _triggerRecipientFinalization];
    if (objc_opt_respondsToSelector())
    {
      v16 = [*(a1 + 32) conversation];
      v17 = [v16 senderIdentifier];
      [v12 setSender:v17];
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [*(a1 + 32) conversation];
      v19 = [v18 recipientStrings];

      [v12 setRecipients:v19];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_406;
    aBlock[3] = &unk_1E72F3F58;
    v20 = v3;
    v21 = *(a1 + 32);
    v52 = v20;
    v53 = v21;
    v22 = v9;
    v54 = v22;
    v23 = _Block_copy(aBlock);
    v24 = [*(a1 + 32) entryView];
    v25 = [v24 contentView];
    v26 = [v25 pluginEntryViewController];
    if (v26)
    {
      v27 = v26;
      v28 = [v22 liveEditableInEntryView];

      if (v28)
      {
        if ([*(a1 + 32) isKeyboardVisible])
        {
          [*(a1 + 32) setTargetFirstResponder:1];
          [*(a1 + 32) becomeFirstResponder];
        }

        v29 = [*(a1 + 32) entryView];
        v30 = [v29 contentView];
        v31 = [v30 pluginEntryViewController];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_3_414;
        v48[3] = &unk_1E72EDF90;
        v32 = &v49;
        v49 = v12;
        v50 = v23;
        v33 = v23;
        [v31 fetchInternalMessageStateForDraft:0 completion:v48];

        v34 = v42;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_4;
    v46[3] = &unk_1E72EDFB8;
    v32 = &v47;
    v47 = v23;
    v40 = v23;
    v34 = v41;
    [v12 validatePayloadForSending:v22 associatedText:v41 completionHandler:v46];
LABEL_26:

    goto LABEL_27;
  }

  if (v7)
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "Should not validate payload", buf, 2u);
    }
  }

  v36 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [*(a1 + 32) setTimingCollectionSendGelato:v36];

  v37 = [*(a1 + 32) timingCollectionSendGelato];
  [v37 startTimingForKey:@"sendGelato"];

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_420;
  v44[3] = &unk_1E72EB8D0;
  v44[4] = *(a1 + 32);
  v45 = v3;
  v38 = _Block_copy(v44);
  v39 = [*(a1 + 32) composeRecipientSelectionController];
  [v39 atomizeAndInvokeBlock:v38];

LABEL_27:
}

void __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_406(uint64_t a1, int a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "In validatePayloadForSending.", buf, 2u);
    }
  }

  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_407;
    block[3] = &unk_1E72EB880;
    v19 = v7;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v20 = v10;
    v21 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [*(a1 + 48) pluginBundleID];
          v14 = *(a1 + 48);
          *buf = 138412802;
          v23 = v13;
          v24 = 2112;
          v25 = v14;
          v26 = 2112;
          v27 = v8;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Payload validation from plugin %@ for payload (%@) failed. reason %@", buf, 0x20u);
        }
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_411;
      v16[3] = &unk_1E72EB8D0;
      v16[4] = *(a1 + 40);
      v17 = v8;
      dispatch_async(MEMORY[0x1E69E96A0], v16);
    }

    if (CKIsRunningInMessagesViewService())
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_2_412;
      v15[3] = &unk_1E72EBA18;
      v15[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }
}

void __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_407(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_2;
  aBlock[3] = &unk_1E72EB880;
  v2 = a1 + 32;
  v23 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v24 = v3;
  v25 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [*v2 pluginBundleID];
  v7 = IMBalloonExtensionIDWithSuffix();
  v8 = [v6 isEqualToString:v7];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = _Block_copy(v5);
      v12 = MEMORY[0x1E696AD98];
      v13 = +[CKPluginExtensionStateObserver sharedInstance];
      v14 = [v12 numberWithBool:{objc_msgSend(v13, "passKitUIPresented")}];
      v15 = [MEMORY[0x1E696AD98] numberWithBool:v8];
      *buf = 138413058;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Preparing for send after payload validation. payload %@. sendBlock %@. passKitUIPresented %@. isSurf:%@", buf, 0x2Au);
    }
  }

  v16 = +[CKPluginExtensionStateObserver sharedInstance];
  v17 = [v16 passKitUIPresented];

  v18 = IMOSLoggingEnabled();
  if (v17 & v8)
  {
    if (v18)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Calling setDeferredSendAnimationBlock.", buf, 2u);
      }
    }

    [*(a1 + 48) setDeferredSendAnimationBlock:v5];
  }

  else
  {
    if (v18)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "passKitUIPresented is not presented or plugin is not Surf.", buf, 2u);
      }
    }

    v21 = [*(a1 + 48) composeRecipientSelectionController];
    [v21 atomizeAndInvokeBlock:v5];
  }
}

void __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_3;
  v5[3] = &unk_1E72EE588;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [CKComposition compositionWithShelfPluginPayload:v2 completionHandler:v5];
}

void __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) compositionByAppendingComposition:v5];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Calling sendComposition with composition after validating payload", v9, 2u);
    }
  }

  [*(a1 + 40) sendCompositionIfAllowed:v7];
}

void __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_2_412(uint64_t a1)
{
  v2 = [*(a1 + 32) entryView];
  v1 = [v2 sendButton];
  [v1 setEnabled:1];
}

void __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_3_414(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _itemPayloadFromMSMessage:a2];
  (*(*(a1 + 40) + 16))();
}

uint64_t __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke_420(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Send block invoked", v4, 2u);
    }
  }

  return [*(a1 + 32) sendCompositionIfAllowed:*(a1 + 40)];
}

- (void)_passKitUIDismissed:(id)dismissed
{
  deferredSendAnimationBlock = [(CKComposeChatController *)self deferredSendAnimationBlock];
  if (deferredSendAnimationBlock)
  {
    v5 = deferredSendAnimationBlock;
    v6 = +[CKPluginExtensionStateObserver sharedInstance];
    passKitUIPresented = [v6 passKitUIPresented];

    if ((passKitUIPresented & 1) == 0)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"CKPluginExtensionStateObserverPassKitUIDismissed" object:0];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__CKComposeChatController__passKitUIDismissed___block_invoke;
      block[3] = &unk_1E72EBA18;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __47__CKComposeChatController__passKitUIDismissed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) composeRecipientSelectionController];
  v3 = [*(a1 + 32) deferredSendAnimationBlock];
  [v2 atomizeAndInvokeBlock:v3];

  v4 = *(a1 + 32);

  return [v4 setDeferredSendAnimationBlock:0];
}

- (void)messageEntryViewSendButtonHitWhileDisabled:(id)disabled
{
  disabledCopy = disabled;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Send button was hit while it was disabled.", buf, 2u);
    }
  }

  v10.receiver = self;
  v10.super_class = CKComposeChatController;
  [(CKChatController *)&v10 messageEntryViewSendButtonHitWhileDisabled:disabledCopy];
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  toFieldIsFirstResponder = [composeRecipientSelectionController toFieldIsFirstResponder];

  if (toFieldIsFirstResponder)
  {
    entryView = [(CKChatController *)self entryView];
    contentView = [entryView contentView];
    [contentView makeActive];
  }
}

- (id)textViewOnscreenWithEntryView
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  toField = [composeRecipientSelectionController toField];
  textView = [toField textView];

  return textView;
}

- (BOOL)becomeFirstResponder
{
  v19 = *MEMORY[0x1E69E9840];
  funCameraViewController = [(CKChatController *)self funCameraViewController];
  if (funCameraViewController)
  {
    funCameraViewController2 = [(CKChatController *)self funCameraViewController];
    v5 = [funCameraViewController2 isDismissing] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  if ([(CKChatController *)self targetFirstResponder]== 2)
  {
    composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
    toField = [composeRecipientSelectionController toField];
    becomeFirstResponder = [toField becomeFirstResponder];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (becomeFirstResponder)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "ToField tried to become first responder with success %@", buf, 0xCu);
      }
    }

    if (becomeFirstResponder)
    {
      return 1;
    }

    v16.receiver = self;
    v14 = &v16;
  }

  else
  {
    presentedViewController = [(CKComposeChatController *)self presentedViewController];
    v13 = (presentedViewController != 0) & v5;

    if (v13)
    {
      return 0;
    }

    selfCopy = self;
    v14 = &selfCopy;
  }

  v14->super_class = CKComposeChatController;
  return [(objc_super *)v14 becomeFirstResponder];
}

- (void)restoreInputAfterSearchPresentation
{
  v3 = +[CKUIBehavior sharedBehaviors];
  if ([v3 isEntryViewInputAccessory])
  {
  }

  else
  {
    targetFirstResponder = [(CKChatController *)self targetFirstResponder];

    if (!targetFirstResponder)
    {
      proposedRecipients = [(CKComposeChatController *)self proposedRecipients];
      v6 = [proposedRecipients count];

      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      [(CKChatController *)self setTargetFirstResponder:v7];
    }
  }

  [(CKComposeChatController *)self becomeFirstResponder];
}

- (void)sendAnimationManagerWillStartAnimation:(id)animation context:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CKComposeChatController;
  [(CKChatController *)&v17 sendAnimationManagerWillStartAnimation:animation context:contextCopy];
  if (![(CKComposeChatController *)self sendingViaCardUI]&& !CKIsRunningInMacCatalyst())
  {
    impactIdentifier = [contextCopy impactIdentifier];

    if (!impactIdentifier)
    {
      delegate = [(CKCoreChatController *)self delegate];
      v9 = [delegate composeChatControllerShouldShowBackButtonViewDuringSendAnimation:self];

      navbarManager = [(CKComposeChatController *)self navbarManager];
      conversation = [(CKCoreChatController *)self conversation];
      [navbarManager commitTransitionAnimationWithConversation:conversation shouldShowBackButtonView:v9];

      transcriptNavigationBarController = [(CKChatController *)self transcriptNavigationBarController];
      v13 = +[_TtC7ChatKit29TranscriptNavigationBarChange barButtonsChange];
      [transcriptNavigationBarController applyChange:v13];

      transcriptNavigationBarController2 = [(CKChatController *)self transcriptNavigationBarController];
      v15 = +[_TtC7ChatKit29TranscriptNavigationBarChange titleDisplayModeChange];
      [transcriptNavigationBarController2 applyChange:v15];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__CKComposeChatController_sendAnimationManagerWillStartAnimation_context___block_invoke;
      v16[3] = &unk_1E72EBA18;
      v16[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v16 animations:0.2];
    }
  }
}

void __74__CKComposeChatController_sendAnimationManagerWillStartAnimation_context___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) composeRecipientSelectionController];
  v2 = [v1 view];

  [v2 frame];
  [v2 setFrame:{v4.origin.x, -CGRectGetHeight(v4), v4.size.width, v4.size.height}];
}

- (void)recipientSelectionController:(id)controller didSelectConversation:(id)conversation isiMessagable:(BOOL)messagable
{
  messagableCopy = messagable;
  v76 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v75 = conversationCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "recipientSelectionController didSelectConversation: %@", buf, 0xCu);
    }
  }

  [(CKComposeChatController *)self setRecipientsListChanged:1];
  if (![(CKComposeChatController *)self newComposeCancelled])
  {
    v9 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
    [v9 startTimingForKey:@"didSelectConversation"];

    v10 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
    [v10 startTimingForKey:@"composeDelegateWork"];

    delegate = [(CKCoreChatController *)self delegate];
    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    if (collectionViewController)
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __92__CKComposeChatController_recipientSelectionController_didSelectConversation_isiMessagable___block_invoke;
      v69[3] = &unk_1E72EB880;
      v70 = delegate;
      selfCopy = self;
      v72 = conversationCopy;
      [collectionViewController updateTranscript:v69 animated:0 completion:0];
    }

    else
    {
      [delegate composeChatController:self didSelectNewConversation:conversationCopy];
    }

    navbarManager = [(CKComposeChatController *)self navbarManager];
    [navbarManager updateContentsForConversation:conversationCopy];

    v12 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
    [v12 stopTimingForKey:@"composeDelegateWork"];

    conversation = [(CKCoreChatController *)self conversation];
    chat = [conversation chat];
    v15 = chat == 0;

    if (!v15)
    {
      date = [MEMORY[0x1E695DF00] date];
      [CKPowerLog sendTranscriptVisibilityChangedEvent:date event:1 metadata:0];
    }

    [(CKChatController *)self setConversation:conversationCopy forceReload:1];
    collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
    [collectionViewController2 sizeFullTranscriptIfNecessary];

    composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
    [composeRecipientSelectionController updateScrollPocketInteractionsIfNeeded];

    expandedRecipients = [controllerCopy expandedRecipients];
    hasUnreachableEmergencyRecipient = [(CKComposeChatController *)self hasUnreachableEmergencyRecipient];
    if (hasUnreachableEmergencyRecipient)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v20 = expandedRecipients;
      v21 = [v20 countByEnumeratingWithState:&v65 objects:v73 count:16];
      if (v21)
      {
        v22 = *v66;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v66 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v65 + 1) + 8 * i);
            rawAddress = [v24 rawAddress];
            IsEmergencyPhoneNumber = IMStringIsEmergencyPhoneNumber();

            if (IsEmergencyPhoneNumber)
            {
              v27 = CKFrameworkBundle();
              v28 = [v27 localizedStringForKey:@"CANNOT_SEND_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

              rawAddress2 = [v24 rawAddress];
              v30 = IMNormalizedPhoneNumberForPhoneNumber();
              v31 = [rawAddress2 isEqualToIgnoringCase:v30];

              v32 = CKFrameworkBundle();
              v33 = v32;
              if (v31)
              {
                v34 = @"ERR_911_EMERGENCY_UNAVAILABLE_WITHOUT_SMS";
              }

              else
              {
                v34 = @"ERR_EMERGENCY_UNAVAILABLE_WITHOUT_SMS";
              }

              v35 = [v32 localizedStringForKey:v34 value:&stru_1F04268F8 table:@"ChatKit"];

              v36 = [CKAlertController alertControllerWithTitle:v28 message:v35 preferredStyle:1];
              v37 = CKFrameworkBundle();
              v38 = [v37 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
              v39 = [CKAlertAction actionWithTitle:v38 style:1 handler:0];

              [v36 addAction:v39];
              [v36 presentFromViewController:self animated:1 completion:0];

              goto LABEL_25;
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v65 objects:v73 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }

    conversation2 = [(CKCoreChatController *)self conversation];
    chat2 = [conversation2 chat];
    v42 = [chat2 chatStyle] == 45;

    if (v42 && [expandedRecipients count] == 1)
    {
      v43 = [expandedRecipients objectAtIndex:0];
      rawAddress3 = [v43 rawAddress];

      mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
      activeIMessageAccount = [mEMORY[0x1E69A5A80] activeIMessageAccount];

      conversation3 = [(CKCoreChatController *)self conversation];
      v59 = [expandedRecipients objectAtIndex:0];
      v47 = [(CKComposeChatController *)self shouldForceToSMSForConversation:conversation3 forRecipient:v59];
      if (v47 && !messagableCopy)
      {
        mEMORY[0x1E69A5A80]2 = [MEMORY[0x1E69A5A80] sharedInstance];
        smsService = [MEMORY[0x1E69A5C90] smsService];
        v50 = [mEMORY[0x1E69A5A80]2 accountsForService:smsService];
        firstObject = [v50 firstObject];

        activeIMessageAccount = firstObject;
      }

      if (v47 || messagableCopy)
      {
        v52 = [activeIMessageAccount imHandleWithID:rawAddress3];
        conversation4 = [(CKCoreChatController *)self conversation];

        chat3 = [conversation4 chat];
        [chat3 setRecipient:v52];
      }

      else
      {
        conversation4 = conversation3;
      }
    }

    entryView = [(CKChatController *)self entryView];
    [entryView setFailedRecipients:{-[CKComposeChatController hasFailedRecipients](self, "hasFailedRecipients")}];

    entryView2 = [(CKChatController *)self entryView];
    [entryView2 setUnreachableEmergencyRecipient:hasUnreachableEmergencyRecipient];

    v57 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
    [v57 stopTimingForKey:@"didSelectConversation"];

    [(CKComposeChatController *)self _invalidateBlackholeAlertView];
  }

  [(CKComposeChatController *)self stageSuggestedReplies];
}

- (void)recipientSelectionControllerShouldResignFirstResponder:(id)responder
{
  entryView = [(CKChatController *)self entryView];
  contentView = [entryView contentView];
  [contentView makeActive];
}

- (BOOL)shouldForceToSMSForConversation:(id)conversation forRecipient:(id)recipient
{
  v19 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  recipientCopy = recipient;
  v8 = [(CKComposeChatController *)self handleForRecipientNormalizedAddress:recipientCopy];
  if (!v8)
  {
    goto LABEL_7;
  }

  chat = [conversationCopy chat];

  if (chat)
  {
    chat2 = [conversationCopy chat];
    chat = [chat2 lastFinishedMessageItem];

    handle = [chat handle];
    v12 = [v8 ID];
    if (!chat || !handle || ([handle isEqualToString:v12] & 1) != 0)
    {

LABEL_7:
      LOBYTE(chat) = 0;
      goto LABEL_8;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412546;
        v16 = handle;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Should force conversation to SMS because lastHandleID:%@ != newHandleID:%@", &v15, 0x16u);
      }
    }

    LOBYTE(chat) = 1;
  }

LABEL_8:

  return chat;
}

- (id)handleForRecipientNormalizedAddress:(id)address
{
  v3 = MEMORY[0x1E69A5A80];
  addressCopy = address;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance __ck_bestAccountForAddresses:0];
  normalizedAddress = [addressCopy normalizedAddress];

  v8 = IMStripFormattingFromAddress();
  v9 = [v6 imHandleWithID:v8 alreadyCanonical:0];

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

- (id)associatedScrollViewForRecipientSelectionController:(id)controller
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];

  return collectionView;
}

- (BOOL)recipientSelectionIsGroup:(id)group
{
  groupCopy = group;
  prepopulatedRecipients = [(CKComposeChatController *)self prepopulatedRecipients];
  if ([prepopulatedRecipients count] > 1)
  {
    v7 = 1;
  }

  else
  {
    recipients = [groupCopy recipients];
    v7 = [recipients count] > 1;
  }

  return v7;
}

- (double)visibleInputAndEntryViewHeightToAvoidForRecipientSelectionController:(id)controller
{
  [(CKChatController *)self visibleInputViewHeight];
  v5 = v4;
  entryView = [(CKChatController *)self entryView];
  window = [entryView window];
  if (window)
  {
    entryView2 = [(CKChatController *)self entryView];
    heightConstraint = [entryView2 heightConstraint];
    [heightConstraint constant];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v5 + v11;
}

- (void)recipientSelectionControllerReturnPressed:(id)pressed
{
  entryView = [(CKChatController *)self entryView];
  contentView = [entryView contentView];
  [contentView makeActive];
}

- (void)recipientSelectionControllerTabPressed:(id)pressed
{
  [(CKChatController *)self setTargetFirstResponder:1];

  [(CKComposeChatController *)self becomeFirstResponder];
}

- (void)recipientSelectionControllerSearchListDidShowOrHide:(id)hide
{
  hideCopy = hide;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  [collectionView setScrollsToTop:{objc_msgSend(composeRecipientSelectionController, "isSearchResultsHidden")}];

  if (__CurrentTestName)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PPTSearchListDidShowOrHideNotification" object:self userInfo:0];
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  isEntryViewInputAccessory = [v8 isEntryViewInputAccessory];

  if ((isEntryViewInputAccessory & 1) == 0)
  {
    entryView = [(CKChatController *)self entryView];
    [entryView setHidden:{objc_msgSend(hideCopy, "isSearchResultsHidden") ^ 1}];
  }
}

- (void)recipientSelectionController:(id)controller textDidChange:(id)change
{
  v5 = [(CKChatController *)self entryView:controller];
  [v5 setComposingRecipient:{-[CKComposeChatController isComposingRecipient](self, "isComposingRecipient")}];
}

- (UIEdgeInsets)recipientSelectionAdditionalSearchListInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)recipientSelectionControllerShouldDisableTopFieldInsets:(id)insets
{
  v4 = +[CKUIBehavior sharedBehaviors];
  useMacToolbar = [v4 useMacToolbar];

  if (useMacToolbar)
  {
    return 0;
  }

  else
  {
    return ![(CKComposeChatController *)self shouldShowNavigationBar];
  }
}

- (void)recipientSelectionController:(id)controller didFinishAvailaiblityLookupForRecipient:(id)recipient
{
  v5 = [(CKChatController *)self entryView:controller];
  [v5 setFailedRecipients:{-[CKComposeChatController hasFailedRecipients](self, "hasFailedRecipients")}];
}

- (BOOL)isComposingRecipient
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  if (!composeRecipientSelectionController)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Has nil CKRecipientSelectionController. isComposingRecipient=false. Will return early.", v6, 2u);
      }
    }

    if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
    {
      [0 allowedByScreenTime];
    }

    goto LABEL_11;
  }

  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] && !objc_msgSend(composeRecipientSelectionController, "allowedByScreenTime"))
  {
LABEL_11:
    LOBYTE(v3) = 0;
    goto LABEL_12;
  }

  v3 = [composeRecipientSelectionController finishedComposingRecipients] ^ 1;
LABEL_12:

  return v3;
}

- (BOOL)hasUnreachableEmergencyRecipient
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  v3 = composeRecipientSelectionController;
  if (composeRecipientSelectionController)
  {
    hasUnreachableEmergencyRecipient = [composeRecipientSelectionController hasUnreachableEmergencyRecipient];
  }

  else
  {
    hasUnreachableEmergencyRecipient = 0;
  }

  return hasUnreachableEmergencyRecipient;
}

- (BOOL)hasFailedRecipients
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  v3 = composeRecipientSelectionController;
  if (composeRecipientSelectionController)
  {
    hasFailediMessageRecipients = [composeRecipientSelectionController hasFailediMessageRecipients];
  }

  else
  {
    hasFailediMessageRecipients = 0;
  }

  return hasFailediMessageRecipients;
}

- (void)showConversation:(id)conversation animate:(BOOL)animate
{
  animateCopy = animate;
  conversationCopy = conversation;
  delegate = [(CKCoreChatController *)self delegate];
  [delegate showConversation:conversationCopy animate:animateCopy];
}

- (void)_saveDraftState
{
  if ([(CKComposeChatController *)self newComposeCancelled]|| [(CKChatController *)self isAnimatingMessageSend])
  {
    v5 = +[CKDraftManager sharedInstance];
    [v5 clearDraftForPendingConversation];
  }

  else
  {
    inputController = [(CKCoreChatController *)self inputController];
    [inputController requestPhotoBrowserToPrepareForDraft];

    inputController2 = [(CKCoreChatController *)self inputController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__CKComposeChatController__saveDraftState__block_invoke;
    v6[3] = &unk_1E72ED6D8;
    v6[4] = self;
    [inputController2 requestPollPluginToPrepareForDraftWithCompletion:v6];
  }
}

void __42__CKComposeChatController__saveDraftState__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 composeRecipientSelectionController];
  v6 = [v5 proposedRecipients];
  v10 = [v6 composeRecipientAddresses];

  v7 = +[CKDraftManager sharedInstance];
  v8 = [*(a1 + 32) conversation];
  v9 = [v8 groupID];
  [v7 setDraftForPendingConversation:v4 withRecipients:v10 chatIdentifier:v9];
}

- (BOOL)_shouldRestoreDraftState
{
  composition = [(CKChatController *)self composition];
  if ([composition hasContent])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    prepopulatedComposition = [(CKComposeChatController *)self prepopulatedComposition];
    v4 = [prepopulatedComposition hasContent] ^ 1;
  }

  return v4;
}

- (void)prepareToDismissForSecondInstance
{
  effectPickerViewController = [(CKChatController *)self effectPickerViewController];

  if (effectPickerViewController)
  {
    [(CKChatController *)self requestDismissKeyboardSnapshotForEffectPickerIfNeeded];
  }

  v4.receiver = self;
  v4.super_class = CKComposeChatController;
  [(CKChatController *)&v4 prepareToDismissForSecondInstance];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  toField = [composeRecipientSelectionController toField];
  isFirstResponder = [toField isFirstResponder];

  if (isFirstResponder)
  {
    composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
    toField2 = [composeRecipientSelectionController2 toField];
    v12 = [toField2 canPerformAction:action withSender:senderCopy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CKComposeChatController;
    v12 = [(CKChatController *)&v14 canPerformAction:action withSender:senderCopy];
  }

  return v12;
}

- (int64_t)preferredStatusBarStyle
{
  if ([(CKComposeChatController *)self _isBusinessConversation])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    theme = [v3 theme];
    businessHandle = [(CKComposeChatController *)self businessHandle];
    v6 = [theme statusBarStyleForBusinessHandle:businessHandle];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKComposeChatController;
    return [(CKChatController *)&v8 preferredStatusBarStyle];
  }
}

- (void)_updateNavigationUI
{
  v5.receiver = self;
  v5.super_class = CKComposeChatController;
  [(CKChatController *)&v5 _updateNavigationUI];
  v3 = [(CKComposeChatController *)self shouldShowNavigationBar]^ 1;
  navigationItem = [(CKComposeChatController *)self navigationItem];
  [navigationItem _setPreferredNavigationBarVisibility:v3];
}

- (BOOL)shouldShowNavigationBar
{
  if ([(CKComposeChatController *)self _isBusinessConversation])
  {
    return 1;
  }

  traitCollection = [(CKComposeChatController *)self traitCollection];
  splitViewControllerLayoutEnvironment = [traitCollection splitViewControllerLayoutEnvironment];

  return splitViewControllerLayoutEnvironment != 1;
}

- (BOOL)shouldShowAvatarViewInTranscriptNavigationBar
{
  if ([(CKComposeChatController *)self hasStartedSendAnimation])
  {
    return 1;
  }

  return [(CKComposeChatController *)self _isBusinessConversation];
}

- (void)_reloadMentionsData
{
  entryView = [(CKChatController *)self entryView];
  contentView = [entryView contentView];
  textView = [contentView textView];
  [textView reloadMentionsData];
}

- (void)_triggerRecipientFinalization
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  toField = [composeRecipientSelectionController toField];
  textView = [toField textView];
  [textView resignFirstResponder];
}

- (void)_updateBlackholeAlertView
{
  conversation = [self conversation];
  senderIdentifier = [conversation senderIdentifier];

  conversation2 = [self conversation];
  recipient = [conversation2 recipient];
  iDSCanonicalAddress = [recipient IDSCanonicalAddress];

  objc_initWeak(&location, self);
  if ((a2 & 1) != 0 || !self[339])
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("CKComposeChatController Blackhole Status", v15);
    [(CKComposeChatController *)self setBlackholeAlertStatusQueue:v16];

    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_5;
  }

  if (a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = self[339];
LABEL_5:
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __52__CKComposeChatController__updateBlackholeAlertView__block_invoke;
  a3[3] = &unk_1E72EC128;
  a3[4] = senderIdentifier;
  a3[5] = iDSCanonicalAddress;
  v12 = iDSCanonicalAddress;
  v13 = senderIdentifier;
  v14 = v11;
  objc_copyWeak(a3 + 6, &location);
  dispatch_async(v14, a3);

  objc_destroyWeak(a3 + 6);
  objc_destroyWeak(&location);
}

void __52__CKComposeChatController__updateBlackholeAlertView__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A82A0] shouldShowSMSWarningForSender:*(a1 + 32) forRecipient:*(a1 + 40) withConversationHistory:0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__CKComposeChatController__updateBlackholeAlertView__block_invoke_2;
  v3[3] = &unk_1E72F3F80;
  objc_copyWeak(&v4, (a1 + 48));
  v5 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

- (void)_updateSendLaterCompositionIfNecessary
{
  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];
  v5 = [chat supportsCapabilities:0x80000];

  if ((v5 & 1) == 0)
  {
    composition = [(CKChatController *)self composition];
    sendLaterPluginInfo = [composition sendLaterPluginInfo];

    if (sendLaterPluginInfo)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Current conversation does not allow send later. Removing sendLaterPluginInfo", v10, 2u);
        }
      }

      entryView = [(CKChatController *)self entryView];
      [entryView setSendLaterPluginInfo:0 animated:0];
    }
  }
}

- (BOOL)_isBusinessConversation
{
  businessHandle = [(CKComposeChatController *)self businessHandle];
  if (businessHandle)
  {
    isBusinessConversation = 1;
  }

  else
  {
    conversation = [(CKCoreChatController *)self conversation];
    isBusinessConversation = [conversation isBusinessConversation];
  }

  return isBusinessConversation;
}

- (BOOL)_isNewBusinessConversation
{
  if (![(CKComposeChatController *)self _isBusinessConversation]|| [(CKComposeChatController *)self isSendingComposition])
  {
    return 0;
  }

  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];
  if (chat)
  {
    conversation2 = [(CKCoreChatController *)self conversation];
    chat2 = [conversation2 chat];
    v3 = [chat2 messageCount] == 0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_updateBizNavbarIfNecessary
{
  _isBusinessConversation = [(CKComposeChatController *)self _isBusinessConversation];
  navigationController = [(CKComposeChatController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  businessHandle = [(CKComposeChatController *)self businessHandle];
  [navigationBar enableBranding:_isBusinessConversation forBusinessHandle:businessHandle];

  navigationController2 = [(CKComposeChatController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setAccessibilityIgnoresInvertColors:_isBusinessConversation];

  [(CKComposeChatController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)setBusinessInfoViewInfoIfNecessary
{
  if (![(CKComposeChatController *)self _isBusinessConversation])
  {
    return;
  }

  conversation = [(CKCoreChatController *)self conversation];
  isChatBot = [conversation isChatBot];

  if (isChatBot)
  {
    return;
  }

  _isNewBusinessConversation = [(CKComposeChatController *)self _isNewBusinessConversation];
  businessInfoView = [(CKComposeChatController *)self businessInfoView];
  v7 = businessInfoView;
  if (_isNewBusinessConversation)
  {

    if (!v7)
    {
      v8 = [[CKBusinessInfoView alloc] initWithLayoutType:0];
      [(CKComposeChatController *)self setBusinessInfoView:v8];

      businessInfoView2 = [(CKComposeChatController *)self businessInfoView];
      [businessInfoView2 setDelegate:self];
    }

    entryView = [(CKChatController *)self entryView];

    if (entryView)
    {
      entryViewContainerView = [(CKChatController *)self entryViewContainerView];
      view = [(CKComposeChatController *)self view];
      businessInfoView3 = [(CKComposeChatController *)self businessInfoView];
      [view insertSubview:businessInfoView3 belowSubview:entryViewContainerView];
    }

    else
    {
      businessInfoView4 = [(CKComposeChatController *)self businessInfoView];
      superview = [businessInfoView4 superview];

      if (superview)
      {
LABEL_14:
        conversation2 = [(CKCoreChatController *)self conversation];
        recipients = [conversation2 recipients];
        v18 = [recipients count];

        if (!v18)
        {
          return;
        }

        conversation3 = [(CKCoreChatController *)self conversation];
        recipients2 = [conversation3 recipients];
        v21 = [recipients2 objectAtIndexedSubscript:0];
        defaultIMHandle = [v21 defaultIMHandle];

        brand = [defaultIMHandle brand];

        if (!brand)
        {
          goto LABEL_35;
        }

        mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
        if ([mEMORY[0x1E69A60F0] isInternalInstall])
        {
          bizIntent = [(CKComposeChatController *)self bizIntent];
          v25 = [bizIntent objectForKeyedSubscript:@"biz-greeting-txt"];

          if (v25)
          {
            businessInfoView5 = [(CKComposeChatController *)self businessInfoView];
            greetingText = [businessInfoView5 greetingText];
            bizIntent2 = [(CKComposeChatController *)self bizIntent];
            v29 = [bizIntent2 objectForKeyedSubscript:@"biz-greeting-txt"];
            v30 = [greetingText isEqualToString:v29];

            if (v30)
            {
LABEL_32:
              businessInfoView6 = [(CKComposeChatController *)self businessInfoView];
              descriptionText = [businessInfoView6 descriptionText];
              brand2 = [defaultIMHandle brand];
              localizedResponseTime = [brand2 localizedResponseTime];
              v62 = [descriptionText isEqualToString:localizedResponseTime];

              if ((v62 & 1) == 0)
              {
                brand3 = [defaultIMHandle brand];
                localizedResponseTime2 = [brand3 localizedResponseTime];
                businessInfoView7 = [(CKComposeChatController *)self businessInfoView];
                [businessInfoView7 setDescriptionText:localizedResponseTime2];
              }

              [(CKComposeChatController *)self layoutBusinessInfoViewIfNecessary];
LABEL_35:
              brand4 = [defaultIMHandle brand];
              name = [brand4 name];
              if (name)
              {
              }

              else
              {
                businessInfoView8 = [(CKComposeChatController *)self businessInfoView];
                greetingText2 = [businessInfoView8 greetingText];
                v70 = CKFrameworkBundle();
                v71 = [v70 localizedStringForKey:@"BUSINESS_GREETING_DEFAULT_NO_BRAND" value:&stru_1F04268F8 table:@"ChatKit"];
                v72 = [greetingText2 isEqualToString:v71];

                if ((v72 & 1) == 0)
                {
                  v73 = CKFrameworkBundle();
                  v74 = [v73 localizedStringForKey:@"BUSINESS_GREETING_DEFAULT_NO_BRAND" value:&stru_1F04268F8 table:@"ChatKit"];
                  businessInfoView9 = [(CKComposeChatController *)self businessInfoView];
                  [businessInfoView9 setGreetingText:v74];

                  [(CKComposeChatController *)self layoutBusinessInfoViewIfNecessary];
                }
              }

              return;
            }

            bizIntent3 = [(CKComposeChatController *)self bizIntent];
            businessInfoView12 = [bizIntent3 objectForKeyedSubscript:@"biz-greeting-txt"];
            businessInfoView10 = [(CKComposeChatController *)self businessInfoView];
            [businessInfoView10 setGreetingText:businessInfoView12];

            goto LABEL_30;
          }
        }

        else
        {
        }

        bizIntent3 = [defaultIMHandle brand];
        name2 = [bizIntent3 name];
        if (!name2)
        {
LABEL_31:

          goto LABEL_32;
        }

        v35 = name2;
        businessInfoView11 = [(CKComposeChatController *)self businessInfoView];
        greetingText3 = [businessInfoView11 greetingText];
        v38 = MEMORY[0x1E696AEC0];
        v39 = CKFrameworkBundle();
        v40 = [v39 localizedStringForKey:@"BUSINESS_GREETING_DEFAULT_BRAND" value:&stru_1F04268F8 table:@"ChatKit"];
        brand5 = [defaultIMHandle brand];
        name3 = [brand5 name];
        v43 = [v38 stringWithFormat:v40, name3];

        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection == 1)
        {
          v46 = @"\u200F";
        }

        else
        {
          v46 = @"\u200E";
        }

        v47 = [(__CFString *)v46 stringByAppendingString:v43];

        v48 = [greetingText3 isEqualToString:v47];
        if (v48)
        {
          goto LABEL_32;
        }

        v49 = MEMORY[0x1E696AEC0];
        v50 = CKFrameworkBundle();
        v51 = [v50 localizedStringForKey:@"BUSINESS_GREETING_DEFAULT_BRAND" value:&stru_1F04268F8 table:@"ChatKit"];
        brand6 = [defaultIMHandle brand];
        name4 = [brand6 name];
        v54 = [v49 stringWithFormat:v51, name4];

        mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection2 == 1)
        {
          v57 = @"\u200F";
        }

        else
        {
          v57 = @"\u200E";
        }

        bizIntent3 = [(__CFString *)v57 stringByAppendingString:v54];

        businessInfoView12 = [(CKComposeChatController *)self businessInfoView];
        [businessInfoView12 setGreetingText:bizIntent3];
LABEL_30:

        goto LABEL_31;
      }

      entryViewContainerView = [(CKComposeChatController *)self view];
      view = [(CKComposeChatController *)self businessInfoView];
      [entryViewContainerView addSubview:view];
    }

    goto LABEL_14;
  }

  [businessInfoView removeFromSuperview];

  [(CKComposeChatController *)self setBusinessInfoView:0];
}

- (void)layoutBusinessInfoViewIfNecessary
{
  businessInfoView = [(CKComposeChatController *)self businessInfoView];

  if (businessInfoView)
  {
    view = [(CKComposeChatController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    view2 = [(CKComposeChatController *)self view];
    [view2 safeAreaInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = v6 + v15;
    v19 = v10 - (v15 + v17);
    composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
    parentViewController = [composeRecipientSelectionController parentViewController];

    if (parentViewController)
    {
      composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
      fieldStackContainerView = [composeRecipientSelectionController2 fieldStackContainerView];
      [fieldStackContainerView frame];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v43.origin.x = v25;
      v43.origin.y = v27;
      v43.size.width = v29;
      v43.size.height = v31;
      MaxY = CGRectGetMaxY(v43);
    }

    else
    {
      v33 = +[CKUIBehavior sharedBehaviors];
      useMacToolbar = [v33 useMacToolbar];

      if (useMacToolbar)
      {
        MaxY = v8 + v13;
      }

      else
      {
        navigationController = [(CKComposeChatController *)self navigationController];
        navigationBar = [navigationController navigationBar];
        [navigationBar frame];
        MaxY = CGRectGetMaxY(v44);
      }
    }

    businessInfoView2 = [(CKComposeChatController *)self businessInfoView];
    [businessInfoView2 sizeThatFits:{v19, 1.79769313e308}];
    v39 = v38;

    businessInfoView3 = [(CKComposeChatController *)self businessInfoView];
    [businessInfoView3 setFrame:{v18, MaxY, v19, v39}];

    businessInfoView4 = [(CKComposeChatController *)self businessInfoView];
    [businessInfoView4 setNeedsLayout];
  }
}

- (void)businessInfoView:(id)view infoButtonTapped:(id)tapped
{
  v5 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:{@"com.apple.onboarding.businesschat", tapped}];
  [v5 setPresentingViewController:self];
  [v5 present];
}

- (void)handleAddressBookChange:(id)change
{
  view = [(CKComposeChatController *)self view];
  [view setNeedsLayout];
}

- (void)configureWithToolbarController:(id)controller
{
  v7.receiver = self;
  v7.super_class = CKComposeChatController;
  [(CKChatController *)&v7 configureWithToolbarController:controller];
  if ([(CKComposeChatController *)self _isBusinessConversation])
  {
    v4 = [CKBusinessMacToolbarViewController alloc];
    businessHandle = [(CKComposeChatController *)self businessHandle];
    v6 = [(CKBusinessMacToolbarViewController *)v4 initWithConversation:businessHandle showingInStandAloneWindow:[(CKCoreChatController *)self showingInStandAloneWindow]];
    [(CKChatController *)self setBusinessMacToolbarController:v6];
  }
}

- (void)providerWillBeRemovedFromToolbarController:(id)controller
{
  v7.receiver = self;
  v7.super_class = CKComposeChatController;
  [(CKChatController *)&v7 providerWillBeRemovedFromToolbarController:controller];
  composeRecipientSelectionController2 = +[CKUIBehavior sharedBehaviors];
  if ([composeRecipientSelectionController2 useMacToolbar])
  {
    composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];

    if (!composeRecipientSelectionController)
    {
      return;
    }

    composeRecipientSelectionController2 = [(CKComposeChatController *)self composeRecipientSelectionController];
    view = [composeRecipientSelectionController2 view];
    [view removeFromSuperview];
  }
}

- (BOOL)prefersBottomDividerHidden
{
  [(CKChatController *)self preferredMacToolbarHeight];
  v3 = v2;
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 macAppKitToolbarHeight];
  v6 = v3 > v5;

  return v6;
}

- (UIEdgeInsets)virtualToolbarContentInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)virtualView
{
  if ([(CKCoreChatController *)self isShowingLockoutView])
  {
    virtualToolbarItem = 0;
  }

  else
  {
    virtualToolbarItem = [(CKComposeChatController *)self virtualToolbarItem];
  }

  return virtualToolbarItem;
}

- (BOOL)canShowBusinessOnboarding
{
  businessHandle = [(CKComposeChatController *)self businessHandle];
  if (businessHandle)
  {
    v4 = businessHandle;
    businessHandle2 = [(CKComposeChatController *)self businessHandle];
    isMapKitBusiness = [businessHandle2 isMapKitBusiness];

    if (isMapKitBusiness)
    {
      return 1;
    }
  }

  conversation = [(CKCoreChatController *)self conversation];
  isMapKitBusinessConversation = [conversation isMapKitBusinessConversation];

  return isMapKitBusinessConversation;
}

- (void)didFinishShowingBusinessOnboarding
{
  [(CKChatController *)self setTargetFirstResponder:1];

  [(CKComposeChatController *)self becomeFirstResponder];
}

- (void)suggestionsController:(id)controller didSelectRecipient:(id)recipient
{
  recipientCopy = recipient;
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  [composeRecipientSelectionController addRecipient:recipientCopy];
}

- (void)suggestionsController:(id)controller didDeselectRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CKComposeChatController suggestionsController:recipientCopy didDeselectRecipient:v5];
  }
}

- (id)selectedRecipientsForSuggestionsController:(id)controller
{
  composeRecipientSelectionController = [(CKComposeChatController *)self composeRecipientSelectionController];
  recipients = [composeRecipientSelectionController recipients];
  v5 = recipients;
  if (recipients)
  {
    v6 = recipients;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (void)setBlackholeAlertStatusQueue:(uint64_t)queue
{
  if (queue)
  {
    objc_storeStrong((queue + 2712), a2);
  }
}

void __52__CKComposeChatController__updateBlackholeAlertView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = 1;
    if (*(a1 + 40))
    {
      v3 = 2;
    }

    WeakRetained[338] = v3;
  }

  v4 = WeakRetained;
  [WeakRetained _updateBlackholeAlertView];
}

- (void)_invalidateBlackholeAlertView
{
  if (self)
  {
    self->_blackholeAlertStatus = 0;
  }

  [(CKComposeChatController *)self _updateBlackholeAlertView];
}

- (uint64_t)_updateBlackholeAlertView
{
  blackholeAlertView = [self blackholeAlertView];
  [blackholeAlertView removeFromSuperview];

  return [self setBlackholeAlertView:0];
}

- (void)suggestionsController:(uint64_t)a1 didDeselectRecipient:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "suggestionsController asked to deselect a recipient: %@", &v2, 0xCu);
}

@end