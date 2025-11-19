@interface CKComposeChatController
- (BOOL)_isAllowlistedBusinessRecipient;
- (BOOL)_isBusinessConversation;
- (BOOL)_isNewBusinessConversation;
- (BOOL)_shouldRestoreDraftState;
- (BOOL)_shouldSetToFieldAsFirstResponder;
- (BOOL)_shouldValidatePayloadBeforeSendingPayload:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canShowBusinessOnboarding;
- (BOOL)hasFailedRecipients;
- (BOOL)hasUnreachableEmergencyRecipient;
- (BOOL)isComposingRecipient;
- (BOOL)isReadOnly;
- (BOOL)isSafeToMarkAsRead;
- (BOOL)prefersBottomDividerHidden;
- (BOOL)recipientSelectionControllerShouldDisableTopFieldInsets:(id)a3;
- (BOOL)recipientSelectionIsGroup:(id)a3;
- (BOOL)reloadEntryViewForStagedPluginMessage;
- (BOOL)shouldForceToSMSForConversation:(id)a3 forRecipient:(id)a4;
- (BOOL)shouldShowAvatarViewInTranscriptNavigationBar;
- (BOOL)shouldShowEntryView;
- (BOOL)shouldShowNavigationBar;
- (CKComposeChatController)initWithRecipientAddresses:(id)a3 composition:(id)a4 chatIdentifier:(id)a5 bizIntent:(id)a6 simID:(id)a7;
- (NSArray)proposedRecipients;
- (NSString)unatomizedRecipientText;
- (UIBarButtonItem)composeCancelItem;
- (UIEdgeInsets)macToolbarInsets;
- (UIEdgeInsets)recipientSelectionAdditionalSearchListInsets;
- (UIEdgeInsets)virtualToolbarContentInsets;
- (double)_entryViewTopInsetPadding;
- (double)_maxEntryViewHeight;
- (double)topInsetPadding;
- (double)visibleInputAndEntryViewHeightToAvoidForRecipientSelectionController:(id)a3;
- (id)_anisetteData;
- (id)_updateSendingIdentity;
- (id)associatedScrollViewForRecipientSelectionController:(id)a3;
- (id)chatForIMHandle:(id)a3;
- (id)handleForRecipientNormalizedAddress:(id)a3;
- (id)inputAccessoryView;
- (id)inputAccessoryViewController;
- (id)outgoingComposeViewForSendAnimation;
- (id)preferredFocusEnvironments;
- (id)preferredNavigationBarTitleText;
- (id)selectedRecipientsForSuggestionsController:(id)a3;
- (id)textViewOnscreenWithEntryView;
- (id)virtualView;
- (int64_t)currentTranscriptNavigationBarMode;
- (int64_t)currentTranscriptNavigationBarTitleDisplayMode;
- (int64_t)preferredStatusBarStyle;
- (uint64_t)_updateBlackholeAlertView;
- (void)_determineSpamFilterHandshakeStateForAccount:(id)a3;
- (void)_invalidateBlackholeAlertView;
- (void)_passKitUIDismissed:(id)a3;
- (void)_prepareForSendFromCardIfNecessaryAndSend:(id)a3;
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
- (void)_updateTitleAnimated:(BOOL)a3;
- (void)_viewDidInitialLayoutSubviews;
- (void)addBizIntentToConversation:(id)a3;
- (void)businessInfoView:(id)a3 infoButtonTapped:(id)a4;
- (void)cancelCompose;
- (void)configureWithToolbarController:(id)a3;
- (void)conversationLeft;
- (void)dealloc;
- (void)didFinishShowingBusinessOnboarding;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleAddressBookChange:(id)a3;
- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)layoutBusinessInfoViewIfNecessary;
- (void)messageEntryViewDidChange:(id)a3 isTextChange:(BOOL)a4 isShelfChange:(BOOL)a5 isTranslationChange:(BOOL)a6;
- (void)messageEntryViewSendButtonHit:(id)a3;
- (void)messageEntryViewSendButtonHitWhileDisabled:(id)a3;
- (void)navbarManagerIsAnimatingNavbarTransition:(id)a3;
- (void)parentControllerDidResume:(BOOL)a3 animating:(BOOL)a4;
- (void)prepareForSuspend;
- (void)prepareToDismissForSecondInstance;
- (void)providerWillBeRemovedFromToolbarController:(id)a3;
- (void)recipientSelectionController:(id)a3 didFinishAvailaiblityLookupForRecipient:(id)a4;
- (void)recipientSelectionController:(id)a3 didSelectConversation:(id)a4 isiMessagable:(BOOL)a5;
- (void)recipientSelectionController:(id)a3 textDidChange:(id)a4;
- (void)recipientSelectionControllerReturnPressed:(id)a3;
- (void)recipientSelectionControllerSearchListDidShowOrHide:(id)a3;
- (void)recipientSelectionControllerShouldResignFirstResponder:(id)a3;
- (void)recipientSelectionControllerTabPressed:(id)a3;
- (void)reloadEntryViewIfNeeded;
- (void)restoreInputAfterSearchPresentation;
- (void)sendAnimationManagerWillStartAnimation:(id)a3 context:(id)a4;
- (void)sendComposition:(id)a3;
- (void)setBlackholeAlertStatusQueue:(uint64_t)a1;
- (void)setBusinessInfoViewInfoIfNecessary;
- (void)setPrepopulatedComposition:(id)a3;
- (void)setPrepopulatedRecipients:(id)a3;
- (void)setServiceId:(id)a3;
- (void)setSuggestedRepliesData:(id)a3;
- (void)showConversation:(id)a3 animate:(BOOL)a4;
- (void)stageSuggestedReplies;
- (void)suggestionsController:(id)a3 didDeselectRecipient:(id)a4;
- (void)suggestionsController:(id)a3 didSelectRecipient:(id)a4;
- (void)transcriptNavigationBar:(id)a3 didTapToPerformAction:(int64_t)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CKComposeChatController

- (void)dealloc
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 shouldSuppressRotationInNewCompose];

  if (v4)
  {
    [(CKChatController *)self endHoldingAutorotationForKey:@"CKAutorotationHoldNewCompose"];
  }

  v5 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v5 stopCheckingRecipientAvailabilityAndRemoveAllTimers];

  v6 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v6 invalidateOutstandingIDStatusRequests];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = CKComposeChatController;
  [(CKChatController *)&v8 dealloc];
}

- (CKComposeChatController)initWithRecipientAddresses:(id)a3 composition:(id)a4 chatIdentifier:(id)a5 bizIntent:(id)a6 simID:(id)a7
{
  v77 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[CKConversation newPendingConversation];
  v73.receiver = self;
  v73.super_class = CKComposeChatController;
  v18 = [(CKChatController *)&v73 initWithConversation:v17];

  if (v18)
  {
    if (v12 && [v12 count])
    {
      v58 = v16;
      v59 = v15;
      v61 = v14;
      v62 = v18;
      v60 = v13;
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v20 = v12;
      v21 = [v20 countByEnumeratingWithState:&v69 objects:v76 count:16];
      v63 = v19;
      if (v21)
      {
        v22 = v21;
        v64 = 0;
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
                if (!v64)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v28 = v27;
                    v29 = [v28 handle];
                    v30 = [v29 isBusiness];

                    if (v30)
                    {
                      v64 = [v28 handle];
                    }

                    else
                    {
                      v64 = 0;
                    }

                    v19 = v63;
                  }

                  else
                  {
                    v64 = 0;
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
        v64 = 0;
      }

      [(CKComposeChatController *)v62 setRecipientsListChanged:0];
      v31 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v14 = v61;
      v32 = [v31 existingChatWithChatIdentifier:v61];

      if (v32 && [v32 isGroupChat])
      {
        v56 = v32;
        v57 = v12;
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
              v41 = [MEMORY[0x1E69A5A80] sharedInstance];
              v42 = [v41 __ck_bestAccountForAddresses:v34];
              v43 = [v40 initWithAccount:v42 ID:v39 alreadyCanonical:1];

              [v33 addObject:v43];
            }

            v36 = [v34 countByEnumeratingWithState:&v65 objects:v75 count:16];
          }

          while (v36);
        }

        v44 = [CKIMGroupComposeRecipient alloc];
        v45 = [v56 guid];
        v46 = [v56 displayName];
        v47 = [(CKIMGroupComposeRecipient *)v44 initWithGUID:v45 displayString:v46 detailsString:0 handles:v33 lastMessageDate:0 searchTerm:0 matchingRecipient:0];

        v48 = MEMORY[0x1E695DF70];
        v74 = v47;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
        v19 = [v48 arrayWithArray:v49];

        v32 = v56;
        v12 = v57;
        v14 = v61;
      }

      v18 = v62;
      [(CKComposeChatController *)v62 setBusinessHandle:v64];
      v50 = v19;
      [(CKComposeChatController *)v62 setPrepopulatedRecipients:v19];
      v15 = v59;
      v13 = v60;
      v16 = v58;
      if (v58)
      {
        v51 = [v58 copy];
        prepopulatedSIMID = v62->_prepopulatedSIMID;
        v62->_prepopulatedSIMID = v51;
      }
    }

    [(CKComposeChatController *)v18 setPrepopulatedComposition:v13];
    [(CKComposeChatController *)v18 setBizIntent:v15];
    v53 = +[CKUIBehavior sharedBehaviors];
    v54 = [v53 shouldSuppressRotationInNewCompose];

    if (v54)
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
  v3 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v3 invalidateOutstandingIDStatusRequests];
}

- (void)parentControllerDidResume:(BOOL)a3 animating:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = CKComposeChatController;
  [CKCoreChatController parentControllerDidResume:sel_parentControllerDidResume_animating_ animating:?];
  v7 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v7 parentControllerDidResume:v5 animating:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKComposeChatController;
  [(CKChatController *)&v8 viewWillAppear:a3];
  [(CKChatController *)self setFrozenEntryViewHeightDuringDismissAnimation:0];
  [(CKComposeChatController *)self _updateBusinessInfoIfNecessary];
  [(CKComposeChatController *)self _updateNavigationUI];
  if (CKIsRunningInMacCatalyst())
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 useMacToolbar];

    if ((v5 & 1) == 0)
    {
      v6 = [(CKComposeChatController *)self catalystComposeNavigationController];
      [v6 setNavigationBarHidden:1 animated:0];
    }
  }

  v7 = +[CKBalloonPluginManager sharedInstance];
  [v7 invalidatePhotosViewController];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = CKComposeChatController;
  [(CKChatController *)&v16 viewWillDisappear:a3];
  if (CKIsRunningInMacCatalyst())
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 useMacToolbar];

    if ((v5 & 1) == 0)
    {
      v6 = [(CKComposeChatController *)self catalystComposeNavigationController];
      [v6 setNavigationBarHidden:0 animated:0];
    }
  }

  v7 = MEMORY[0x1E696AD98];
  [(CKComposeChatController *)self _maxEntryViewHeight];
  v8 = [v7 numberWithDouble:?];
  [(CKChatController *)self setFrozenEntryViewHeightDuringDismissAnimation:v8];

  objc_initWeak(&location, self);
  v9 = [(CKComposeChatController *)self transitionCoordinator];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __45__CKComposeChatController_viewWillDisappear___block_invoke;
  v13 = &unk_1E72F3630;
  objc_copyWeak(&v14, &location);
  [v9 notifyWhenInteractionChangesUsingBlock:&v10];

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

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKComposeChatController;
  [(CKChatController *)&v6 viewDidDisappear:a3];
  v4 = [(CKComposeChatController *)self navbarManager];
  v5 = [v4 customStatusBackgroundView];
  [v5 removeFromSuperview];
}

- (void)viewDidLoad
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CKComposeChatController;
  [(CKChatController *)&v24 viewDidLoad];
  v3 = [(CKComposeChatController *)self navbarManager];
  v4 = [v3 cancelButton];
  [v4 addTarget:self action:sel_cancelButtonTapped forEvents:64];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_handleAddressBookChange_ name:*MEMORY[0x1E69A6828] object:0];

  if (CKIsRunningInMacCatalyst())
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 useMacToolbar];

    v8 = [(CKComposeChatController *)self navigationController];
    v9 = v8;
    if (v7)
    {
      [v8 setNavigationBarHidden:1];
    }

    else
    {
      [(CKComposeChatController *)self setCatalystComposeNavigationController:v8];

      v10 = [(CKComposeChatController *)self catalystComposeNavigationController];
      v11 = [v10 navigationBar];
      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v9 = [(CKComposeChatController *)self catalystComposeNavigationController];
      v18 = [v9 navigationBar];
      v19 = +[CKUIBehavior sharedBehaviors];
      [v19 marzNavigationBarHeight];
      [v18 setFrame:{v13, v15, v17, v20}];
    }
  }

  v25[0] = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v22 = [(CKComposeChatController *)self registerForTraitChanges:v21 withHandler:&__block_literal_global_147];

  if (CKIsRunningInMessagesViewService())
  {
    v23 = [MEMORY[0x1E69A7F68] sharedInstance];
    [v23 resetCacheSubscriptionInfo];
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
  v3 = [(CKCoreChatController *)self initialLayoutComplete];
  v38.receiver = self;
  v38.super_class = CKComposeChatController;
  [(CKChatController *)&v38 viewDidLayoutSubviews];
  [(CKComposeChatController *)self _updateBusinessInfoIfNecessary];
  [(CKComposeChatController *)self layoutBusinessInfoViewIfNecessary];
  v4 = [(CKComposeChatController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [(CKComposeChatController *)self view];
  [v9 safeAreaInsets];
  v11 = v10;
  v13 = v12;

  v14 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v15 = [v14 view];

  [v15 setFrame:{v11, 0.0, v6 - (v11 + v13), v8}];
  v16 = [(CKComposeChatController *)self blackholeAlertView];

  if (v16)
  {
    v17 = [(CKComposeChatController *)self view];
    [v17 bounds];
    Width = CGRectGetWidth(v39);

    v19 = [(CKComposeChatController *)self blackholeAlertView];
    v20 = [v19 label];
    v21 = [v20 attributedText];
    [CKBlackholeChatItem sizeThatFits:v21 text:Width, 1.79769313e308];
    v23 = v22;

    v24 = *MEMORY[0x1E695F058];
    [(CKScrollViewController *)self navigationBarInsets];
    v26 = v25;
    v27 = [(CKComposeChatController *)self composeRecipientSelectionController];
    [v27 collapsedHeight];
    v29 = v26 + v28;

    v30 = [(CKComposeChatController *)self composeRecipientSelectionController];
    [v30 fromFieldHeight];
    v32 = v29 + v31;

    v33 = +[CKUIBehavior sharedBehaviors];
    [v33 topTranscriptSpace];
    v35 = v32 + v34;

    v36 = [(CKComposeChatController *)self blackholeAlertView];
    [v36 setFrame:{v24, v35, Width, v23}];
  }

  if (!v3)
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
  v3 = [(CKComposeChatController *)self view];
  v4 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v5 = [v4 view];
  [v3 bringSubviewToFront:v5];
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
    v7 = [(CKComposeChatController *)self navbarManager];
    v8 = [v7 contentView];
    [v8 setNeedsLayout];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v5 = [v4 toField];
  v6 = [v5 textView];

  if (v6)
  {
    v7 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v8 = [v7 toField];
    v9 = [v8 textView];
    [v3 addObject:v9];
  }

  v10 = [(CKChatController *)self entryView];
  v11 = [v10 contentView];
  v12 = [v11 textView];

  if (v12)
  {
    v13 = [(CKChatController *)self entryView];
    v14 = [v13 contentView];
    v15 = [v14 textView];
    [v3 addObject:v15];
  }

  return v3;
}

- (void)setPrepopulatedComposition:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"YES";
      if (!v4)
      {
        v6 = @"NO";
      }

      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Call made to pre-populate the composition. hasNonNilComposition={%@}", &v11, 0xCu);
    }
  }

  if (!v4 || ([(CKChatController *)self entryView], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == 0, v7, v8))
  {
    v10 = v4;
    prepopulatedComposition = self->_prepopulatedComposition;
    self->_prepopulatedComposition = v10;
  }

  else
  {
    [(CKChatController *)self setComposition:v4];
    prepopulatedComposition = self->_prepopulatedComposition;
    self->_prepopulatedComposition = 0;
  }
}

- (void)setPrepopulatedRecipients:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKComposeChatController *)self composeRecipientSelectionController];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Call made to pre-populate recipients (adding): %@", &v11, 0xCu);
      }
    }

    prepopulatedRecipients = [(CKComposeChatController *)self composeRecipientSelectionController];
    [prepopulatedRecipients addRecipients:v4];
    goto LABEL_13;
  }

  if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Call made to pre-populate recipients (not yet ready): %@", &v11, 0xCu);
    }
  }

  if (self->_prepopulatedRecipients != v4)
  {
    v10 = v4;
    prepopulatedRecipients = self->_prepopulatedRecipients;
    self->_prepopulatedRecipients = v10;
LABEL_13:
  }
}

- (void)setSuggestedRepliesData:(id)a3
{
  objc_storeStrong(&self->_suggestedRepliesData, a3);
  v4 = [(CKCoreChatController *)self conversation];
  [v4 setChatBot:MEMORY[0x1E695E118]];
}

- (void)setServiceId:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_serviceId, a3);
  if (v5)
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

    v7 = [(CKCoreChatController *)self conversation];
    [v7 setChatBot:MEMORY[0x1E695E118]];
  }
}

- (NSArray)proposedRecipients
{
  v3 = [(CKComposeChatController *)self composeRecipientSelectionController];

  if (v3)
  {
    v4 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v5 = [v4 expandedRecipients];
  }

  else
  {
    v5 = self->_prepopulatedRecipients;
  }

  return v5;
}

- (NSString)unatomizedRecipientText
{
  v2 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v3 = [v2 toField];
  v4 = [v3 text];

  return v4;
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

  v4 = [(CKChatController *)self composition];
  v5 = +[CKConversationList sharedConversationList];
  v6 = [v5 pendingConversationCreatingIfNecessary];
  [(CKChatController *)self setConversation:v6];

  if (![(CKCoreChatController *)self isSendingMessage])
  {
    v7 = [(CKChatController *)self entryView];
    [v7 setComposition:v4];
  }
}

- (void)_setConversationDeferredSetup
{
  v39.receiver = self;
  v39.super_class = CKComposeChatController;
  [(CKChatController *)&v39 _setConversationDeferredSetup];
  v3 = [(CKCoreChatController *)self conversation];
  v4 = [v3 chat];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [CKPowerLog sendTranscriptVisibilityChangedEvent:v5 event:0 metadata:0];
  }

  v6 = [(CKComposeChatController *)self composeRecipientSelectionController];

  if (!v6)
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
    v9 = [(CKCoreChatController *)self conversation];
    v10 = [(CKRecipientSelectionController *)v8 initWithConversation:v9];

    [(CKRecipientSelectionController *)v10 setDelegate:self];
    [(CKComposeChatController *)self setComposeRecipientSelectionController:v10];
    v11 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v12 = [v11 view];
    v13 = [(CKComposeChatController *)self view];
    [v13 bounds];
    [v12 setFrame:?];

    v14 = +[CKUIBehavior sharedBehaviors];
    LOBYTE(v12) = [v14 useMacToolbar];

    if (v12)
    {
      v15 = [(CKCoreChatController *)self macToolbarController];
      [v15 updateVirtualViewForProvider:self];
    }

    else
    {
      if ([(CKComposeChatController *)self _isBusinessConversation])
      {
        goto LABEL_13;
      }

      [(CKComposeChatController *)self addChildViewController:v10];
      v16 = [(CKComposeChatController *)self view];
      v17 = [(CKComposeChatController *)self composeRecipientSelectionController];
      v18 = [v17 view];
      [v16 addSubview:v18];

      v15 = [(CKComposeChatController *)self composeRecipientSelectionController];
      [v15 didMoveToParentViewController:self];
    }

LABEL_13:
    v19 = [(CKCoreChatController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [(CKCoreChatController *)self delegate];
      v22 = [v21 composeChatControllerCanEditRecipients];

      v23 = [(CKComposeChatController *)self composeRecipientSelectionController];
      [v23 setEditable:v22];

      if (CKIsRunningInMessagesViewService())
      {
        if (v22)
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

    v24 = [(CKComposeChatController *)self prepopulatedRecipients];

    if (v24)
    {
      v25 = [(CKComposeChatController *)self composeRecipientSelectionController];
      v26 = [(CKComposeChatController *)self prepopulatedRecipients];
      [v25 addRecipients:v26];

      v27 = [(CKComposeChatController *)self prepopulatedSIMID];
      v28 = [(CKComposeChatController *)self composeRecipientSelectionController];
      [v28 setSimID:v27];
    }

    v29 = [(CKComposeChatController *)self prepopulatedComposition];

    if (v29)
    {
      v30 = [(CKChatController *)self entryView];
      v31 = [v30 composition];
      if ([v31 hasContent])
      {
        [v31 compositionByAppendingComposition:self->_prepopulatedComposition];
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
  v34 = [v33 useMacToolbar];

  if ((v34 & 1) == 0)
  {
    v35 = [(CKComposeChatController *)self view];
    v36 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v37 = [v36 view];
    [v35 bringSubviewToFront:v37];
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
  v3 = [(CKComposeChatController *)self composeRecipientSelectionController];
  if ([v3 isEditable])
  {
    v4 = [(CKComposeChatController *)self proposedRecipients];
    v5 = [v4 count] == 0;
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
  v3 = [(CKCoreChatController *)self conversation];
  v4 = [v3 sendingService];

  v5 = [MEMORY[0x1E69A5A80] sharedInstance];
  v6 = [v5 __ck_defaultAccountForService:v4];

  v7 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v8 = [v7 selectedLastAddressedOrDefaultHandle];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v4 name];
      v30 = 138412802;
      v31 = v8;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "_updateSendingIdentity selectedLastAddressedHandle: %@, perferredService: %@, account: %@", &v30, 0x20u);
    }
  }

  if ([(CKComposeChatController *)self _deviceHasMultipleActiveSubscriptions])
  {
    v11 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v12 = [v11 selectedSubscriptionContext];
    v13 = [v12 labelID];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v30 = 138412290;
        v31 = v13;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Sending composition with simID: %@", &v30, 0xCu);
      }
    }

    [(CKComposeChatController *)self setLastAddressedSIMID:v13];
    if (v8 && (IMStringIsEmail() & 1) != 0 || ([v6 serviceName], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", *MEMORY[0x1E69A7AF0]), v15, (v16 & 1) != 0))
    {
      v17 = [(CKComposeChatController *)self composeRecipientSelectionController];
      v18 = [v17 hasiMessageableContext];

      if (v18)
      {
        [(CKComposeChatController *)self setLastAddressedHandle:v8];
        v19 = [MEMORY[0x1E69A5A80] sharedInstance];
        v20 = [(CKComposeChatController *)self lastAddressedHandle];
        v21 = [(CKComposeChatController *)self lastAddressedSIMID];
        v22 = [v19 iMessageAccountForLastAddressedHandle:v20 simID:v21];

        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [(CKComposeChatController *)self lastAddressedHandle];
            v25 = [(CKComposeChatController *)self lastAddressedSIMID];
            v30 = 138412802;
            v31 = v8;
            v32 = 2112;
            v33 = v24;
            v34 = 2112;
            v35 = v25;
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
      [(CKComposeChatController *)self setLastAddressedHandle:v8];
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = [(CKComposeChatController *)self lastAddressedHandle];
          v30 = 138412290;
          v31 = v28;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Sending SMS composition with last addressed handle %@", &v30, 0xCu);
        }
      }
    }
  }

  return v6;
}

- (void)sendComposition:(id)a3
{
  v96 = *MEMORY[0x1E69E9840];
  v72 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Sending composition from compose controller.", buf, 2u);
    }
  }

  v73 = self;
  v5 = [(CKCoreChatController *)self conversation];
  v6 = [v5 recipientCount] == 0;

  if (!v6)
  {
    v7 = [(CKComposeChatController *)v73 composeRecipientSelectionController];
    [v7 stopCheckingRecipientAvailabilityAndRemoveAllTimers];

    v8 = [(CKComposeChatController *)v73 composeRecipientSelectionController];
    [v8 setSearchResultsHidden:1];

    v9 = [(CKComposeChatController *)v73 _updateSendingIdentity];
    if (!v9)
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

    v10 = [(CKComposeChatController *)v73 composeRecipientSelectionController];
    v71 = [v10 selectedSubscriptionContext];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(CKComposeChatController *)v73 lastAddressedHandle];
        v13 = [(CKComposeChatController *)v73 lastAddressedSIMID];
        v14 = [(CKCoreChatController *)v73 conversation];
        *buf = 138413314;
        v87 = v9;
        v88 = 2112;
        v89 = v12;
        v90 = 2112;
        v91 = v13;
        v92 = 2112;
        v93 = v71;
        v94 = 2112;
        v95 = v14;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Sending composition with account: %@ lastAddressedHandle: %@ lastAddressedSIMID: %@ subscription: %@ conversation: %@", buf, 0x34u);
      }
    }

    v15 = [(CKComposeChatController *)v73 ignoreEmailsWhenSending];
    v16 = [(CKCoreChatController *)v73 conversation];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = [(CKCoreChatController *)v73 conversation];
      v19 = [v18 pendingChat];
    }

    else
    {
      v19 = 0;
    }

    v23 = [(CKComposeChatController *)v73 composeRecipientSelectionController];
    v24 = [v23 gameCenterPickerBlock];

    if ((v24 != 0) | (v15 | v19) & 1 || (-[CKCoreChatController conversation](v73, "conversation"), v25 = objc_claimAutoreleasedReturnValue(), [v25 chat], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v25, v27))
    {
      v28 = [(CKComposeChatController *)v73 composeRecipientSelectionController];
      v29 = [v28 expandedRecipients];

      v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v29, "count")}];
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v31 = v29;
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
            if ([v35 kind] != 5 || v24 == 0)
            {
              v37 = [v35 rawAddress];
              v38 = IMStripFormattingFromAddress();

              if (v38 && (!v15 || (IMStringIsEmail() & 1) == 0))
              {
                v39 = [v9 imHandleWithID:v38 alreadyCanonical:0];
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
      v40 = [(CKCoreChatController *)v73 conversation];
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();

      if (v41)
      {
        v42 = [(CKCoreChatController *)v73 conversation];
        v43 = [v42 isSendingServiceEncrypted];
      }

      else
      {
        v43 = 0;
      }

      v44 = +[CKConversationList sharedConversationList];
      v45 = [(CKComposeChatController *)v73 lastAddressedHandle];
      v46 = [(CKComposeChatController *)v73 lastAddressedSIMID];
      LOBYTE(v69) = 1;
      v47 = [v44 conversationForHandles:v30 displayName:0 lastAddressedHandle:v45 lastAddressedSIMID:v46 joinedChatsOnly:1 findMatchingNamedGroups:0 create:v69];

      [(CKChatController *)v73 setConversation:v47];
      v48 = [v47 chat];
      [v48 setSupportsEncryption:v43];

      v49 = [(CKCoreChatController *)v73 delegate];
      [v49 composeChatController:v73 didSelectNewConversation:v47];
    }

    else
    {
      v70 = 1;
    }

    v50 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v51 = [v50 isIntroductionsEnabled];

    if (v51)
    {
      v52 = [(CKCoreChatController *)v73 conversation];
      v53 = [v52 chat];

      if (v53)
      {
        if ([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled])
        {
          v54 = [(CKCoreChatController *)v73 conversation];
          v55 = [v54 chat];
          v56 = [v55 isFiltered] == 0;

          if (!v56)
          {
            v57 = [(CKCoreChatController *)v73 conversation];
            v58 = [v57 chat];
            [v58 markAsKnownAndSaveInContacts:0 completion:0];
          }
        }
      }
    }

    if (!v24 || ([(CKCoreChatController *)v73 conversation], v59 = objc_claimAutoreleasedReturnValue(), v60 = v59 == 0, v59, !v60))
    {
      v61 = [(CKCoreChatController *)v73 inputController];
      [v61 requestPhotoBrowserToPrepareForDraftClearingPhotoShelfViewController:0];

      if ([(CKChatController *)v73 showSendAlertIfNecessaryForComposition:v72])
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
      v77 = v72;
      v78 = v73;
      v80 = v70;
      v79 = v9;
      v63 = _Block_copy(aBlock);
      v64 = v63;
      if (v15)
      {
        v65 = [(CKCoreChatController *)v73 conversation];
        [v65 refreshServiceForSending];

        v66 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__CKComposeChatController_sendComposition___block_invoke_334;
        block[3] = &unk_1E72ED1C8;
        block[4] = v73;
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
      v21 = [(CKCoreChatController *)v73 conversation];
      *buf = 138412290;
      v87 = v21;
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

- (void)_determineSpamFilterHandshakeStateForAccount:(id)a3
{
  v18 = a3;
  if ([MEMORY[0x1E69A82A0] isInternationalSpamFilteringEnabled])
  {
    v4 = [(CKCoreChatController *)self conversation];
    v5 = [v4 chat];
    v6 = [v5 repliedToChat];

    v7 = [(CKCoreChatController *)self conversation];
    v8 = [v7 chat];
    v9 = [v8 receivedResponseForChat];

    if ((v6 & 1) == 0 && (v9 & 1) == 0)
    {
      v10 = [v18 serviceName];
      v11 = [v10 isEqualToString:*MEMORY[0x1E69A7AE0]];

      if (v11)
      {
        v12 = [(CKCoreChatController *)self conversation];
        v13 = [v12 chat];
        v14 = [v13 participants];
        v15 = [v14 __imArrayByApplyingBlock:&__block_literal_global_339_0];

        [MEMORY[0x1E69A82A0] participantsAreiMessagable:v15 completionBlock:&__block_literal_global_342];
      }

      else
      {
        v16 = [MEMORY[0x1E69A8168] sharedInstance];
        [v16 trackSpamEvent:1];

        v15 = [(CKCoreChatController *)self conversation];
        v17 = [v15 chat];
        [v17 setValue:&unk_1F04E7EC0 forChatProperty:*MEMORY[0x1E69A5D38]];
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

- (void)_prepareForSendFromCardIfNecessaryAndSend:(id)a3
{
  v4 = a3;
  [(CKChatController *)self dismissEffectPickerAnimated:1];
  [(CKComposeChatController *)self setHasStartedSendAnimation:1];
  v5 = [(CKChatController *)self _currentPresentationController];
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

    if (v4)
    {
      v4[2](v4);
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

    v7 = [(CKCoreChatController *)self collectionViewController];
    [v7 setTransitioningFromComposing:1];

    [(CKComposeChatController *)self setSendingViaCardUI:1];
    v8 = [(CKChatController *)self transcriptNavigationBarController];
    v9 = +[_TtC7ChatKit29TranscriptNavigationBarChange barButtonsChange];
    [v8 applyChange:v9];

    v10 = [(CKChatController *)self transcriptNavigationBarController];
    v11 = +[_TtC7ChatKit29TranscriptNavigationBarChange titleDisplayModeChange];
    [v10 applyChange:v11];

    v12 = v5;
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 sendAnimationDuration];
    v15 = v14;

    v16 = [v12 containerView];
    _UISheetMinimumTopInset();
    v18 = v17;

    v19 = [(CKChatController *)self collectionView];
    [v19 beginDisablingTranscriptDynamicsForReason:7];
    v20 = [(CKChatController *)self collectionView];
    [v20 contentOffset];
    v22 = v21;
    v24 = v23;

    v25 = [v12 containerView];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v34 = [(CKChatController *)self collectionView];
    [v34 setAutoresizingMask:0];

    v35 = [(CKChatController *)self collectionView];
    [v35 setFrame:{v27, v29 - v18, v31, v33}];

    v36 = [(CKChatController *)self collectionView];
    [v36 setContentOffset:{v22, v24 - v18}];

    v37 = [(CKChatController *)self collectionView];
    [v37 layoutIfNeeded];

    v38 = MEMORY[0x1E69DD250];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __69__CKComposeChatController__prepareForSendFromCardIfNecessaryAndSend___block_invoke;
    v49[3] = &unk_1E72EB8D0;
    v39 = v12;
    v50 = v39;
    v51 = self;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __69__CKComposeChatController__prepareForSendFromCardIfNecessaryAndSend___block_invoke_2;
    v47[3] = &unk_1E72EB9C8;
    v40 = v19;
    v48 = v40;
    [v38 animateWithDuration:v49 animations:v47 completion:v15];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __69__CKComposeChatController__prepareForSendFromCardIfNecessaryAndSend___block_invoke_3;
    v46[3] = &unk_1E72EBA18;
    v46[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v46 animations:v15 * 0.5];
    v41 = [(CKCoreChatController *)self delegate];
    v42 = [v41 composeChatControllerShouldShowBackButtonViewDuringSendAnimation:self];

    v43 = [(CKComposeChatController *)self navbarManager];
    v44 = [(CKCoreChatController *)self conversation];
    [v43 commitTransitionAnimationWithConversation:v44 shouldShowBackButtonView:v42];

    if (v4)
    {
      v4[2](v4);
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

- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(CKComposeChatController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v20 = [(CKCoreChatController *)self collectionViewController];
    [v20 balloonMaxWidth];
    v9 = v8;
    [v20 marginInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(CKComposeChatController *)self traitCollection];
    [v20 transcriptBackgroundLuminance];
    [v20 invalidateChatItemLayoutWithNewBalloonMaxWidth:v18 marginInsets:v9 traitCollection:v11 transcriptBackgroundLuminance:{v13, v15, v17, v19}];
  }
}

- (void)addBizIntentToConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKComposeChatController *)self bizIntent];

  if (v5)
  {
    [(CKComposeChatController *)self _processBizIntentIfNeeded];
    v6 = [(CKComposeChatController *)self bizIntent];
    v7 = [v4 chat];
    [v7 setBizIntent:v6];

    [(CKComposeChatController *)self setBizIntent:0];
  }
}

- (void)_processBizIntentIfNeeded
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = [(CKComposeChatController *)self bizIntent];
  if (v3)
  {
    v4 = [(CKComposeChatController *)self _isAllowlistedBusinessRecipient];

    if (v4)
    {
      v5 = [(CKComposeChatController *)self bizIntent];
      v6 = [v5 objectForKeyedSubscript:@"biz-intent-id"];
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
              v12 = [(CKComposeChatController *)self bizIntent];
              *buf = 138412546;
              v48 = v12;
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
                  v20 = [(CKComposeChatController *)self bizIntent];
                  v21 = [v20 objectForKeyedSubscript:@"authBag"];
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
              v23 = [(CKComposeChatController *)self _anisetteData];
              v24 = v23;
              if (v23)
              {
                v25 = [v23 oneTimePassword];
                [v18 setObject:v25 forKeyedSubscript:@"X-Apple-I-MD"];
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
                  v29 = [(CKComposeChatController *)self bizIntent];
                  v30 = [v29 objectForKeyedSubscript:@"biz-group-id"];
                  v45[1] = @"biz-intent-id";
                  v46[0] = v30;
                  v46[1] = v37;
                  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

                  v31 = [(CKComposeChatController *)self bizIntent];
                  v32 = [v31 objectForKeyedSubscript:@"biz-greeting-txt"];

                  if (v32)
                  {
                    v33 = [v36 mutableCopy];
                    v34 = [(CKComposeChatController *)self bizIntent];
                    v35 = [v34 objectForKeyedSubscript:@"biz-greeting-txt"];
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
          v14 = [(CKComposeChatController *)self bizIntent];
          *buf = 138412290;
          v48 = v14;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Fail to decode biz-intent-id from [%@]", buf, 0xCu);
        }
      }
    }
  }
}

- (BOOL)_isAllowlistedBusinessRecipient
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(CKComposeChatController *)self prepopulatedRecipients];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(CKComposeChatController *)self prepopulatedRecipients];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 address];
          v11 = [v9 handle];
          v12 = [v11 isBusiness];

          if (v12)
          {
            v13 = IMSharedHelperBusinessAllowlist();
            v14 = [v13 containsObject:v10];

            if (v14)
            {

              LOBYTE(v6) = 1;
              goto LABEL_14;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v3 = [(CKComposeChatController *)self suggestedRepliesData];

  if (!v3)
  {
    return;
  }

  v4 = [(CKCoreChatController *)self conversation];
  v5 = [v4 chat];

  if (!v5)
  {
    v17 = [(CKComposeChatController *)self _updateSendingIdentity];
    v6 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v7 = [v6 expandedRecipients];

    if ([v7 count] != 1)
    {

      goto LABEL_11;
    }

    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 rawAddress];
    v10 = IMStripFormattingFromAddress();

    if (v10)
    {
      v11 = [v17 imHandleWithID:v10 alreadyCanonical:0];
      v12 = [CKPendingConversation pendingConversationForHandle:v11];
      [(CKChatController *)self setConversation:v12];
      v13 = [(CKCoreChatController *)self delegate];
      [v13 composeChatController:self didSelectNewConversation:v12];
    }
  }

  v14 = [(CKCoreChatController *)self conversation];
  v17 = [v14 chat];

  v15 = v17;
  if (v17)
  {
    v16 = [(CKComposeChatController *)self suggestedRepliesData];
    [v17 setSuggestedRepliesData:v16];

    [v17 reloadChatItemsForSuggestedRepliesChange];
    [(CKComposeChatController *)self setSuggestedRepliesData:0];
LABEL_11:
    v15 = v17;
  }
}

- (id)outgoingComposeViewForSendAnimation
{
  v2 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v3 = [v2 fieldStackContainerView];

  return v3;
}

- (BOOL)isSafeToMarkAsRead
{
  v7.receiver = self;
  v7.super_class = CKComposeChatController;
  v3 = [(CKChatController *)&v7 isSafeToMarkAsRead];
  v4 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v5 = [v4 isSearchResultsHidden];

  return v3 & v5;
}

- (double)topInsetPadding
{
  v3 = [(CKComposeChatController *)self composeRecipientSelectionController];

  v4 = 0.0;
  if (![(CKChatController *)self isAnimatingMessageSend]&& v3 && !CKIsRunningInMacCatalyst())
  {
    v5 = [(CKComposeChatController *)self composeRecipientSelectionController];
    [v5 collapsedHeight];
    v7 = v6;

    v8 = [(CKComposeChatController *)self composeRecipientSelectionController];
    [v8 fromFieldHeight];
    v4 = v7 + v9;
  }

  return v4;
}

- (void)keyboardWillHide:(id)a3
{
  v4 = a3;
  if (![(CKComposeChatController *)self ignoreKeyboardNotifications])
  {
    v5.receiver = self;
    v5.super_class = CKComposeChatController;
    [(CKChatController *)&v5 keyboardWillHide:v4];
  }
}

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  if (![(CKComposeChatController *)self ignoreKeyboardNotifications])
  {
    v6.receiver = self;
    v6.super_class = CKComposeChatController;
    [(CKChatController *)&v6 keyboardWillShow:v4];
    v5 = [(CKChatController *)self entryView];
    [v5 setNeedsLayout];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CKCoreChatController *)self inputController];
  [v7 setPreventResignFirstResponder:1];

  v8.receiver = self;
  v8.super_class = CKComposeChatController;
  [(CKChatController *)&v8 dismissViewControllerAnimated:v4 completion:v6];
}

- (UIEdgeInsets)macToolbarInsets
{
  v3 = MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 useMacToolbar];

  if (v8)
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
    v5 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v6 = [v5 expandedRecipients];

    v7 = [(CKChatController *)self entryView];
    v8 = [v7 composition];

    v9 = [v8 mediaObjects];
    v10 = [v8 subject];
    v11 = [v10 string];

    if (![v6 count] || (-[CKCoreChatController conversation](self, "conversation"), v12 = objc_claimAutoreleasedReturnValue(), -[CKCoreChatController conversation](self, "conversation"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "sendingService"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "_headerTitleForPendingMediaObjects:subject:onService:", v9, v11, v14), v3 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, !v3))
    {
      v15 = CKFrameworkBundle();
      v3 = [v15 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    }
  }

  return v3;
}

- (void)_updateTitleAnimated:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKComposeChatController;
  [(CKChatController *)&v3 _updateTitleAnimated:a3];
}

- (void)navbarManagerIsAnimatingNavbarTransition:(id)a3
{
  v4 = [(CKComposeChatController *)self navigationItem];
  v5 = [v4 titleView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(CKComposeChatController *)self navigationItem];
    v16 = [v6 titleView];
  }

  else
  {
    v16 = 0;
  }

  v7 = [(CKComposeChatController *)self navbarManager];
  v8 = [v7 contentView];

  [v8 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [v16 setHeight:v9];
  v10 = [(CKComposeChatController *)self navigationController];
  v11 = [v10 navigationBar];
  v12 = [v11 superview];
  [v12 setNeedsLayout];

  v13 = [(CKComposeChatController *)self navigationController];
  v14 = [v13 navigationBar];
  v15 = [v14 superview];
  [v15 layoutIfNeeded];
}

- (void)transcriptNavigationBar:(id)a3 didTapToPerformAction:(int64_t)a4
{
  if (a4 == 6)
  {
    [(CKComposeChatController *)self cancelButtonTapped];
  }
}

- (void)_updateNavigationButtons
{
  v3 = [(CKChatController *)self transcriptNavigationBarController];
  v2 = +[_TtC7ChatKit29TranscriptNavigationBarChange barButtonsChange];
  [v3 applyChange:v2];
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
  v3 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v3 stopCheckingRecipientAvailabilityAndRemoveAllTimers];

  v4 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v4 setSearchResultsHidden:1];

  [(CKChatController *)self setTargetFirstResponder:0];
  v5 = [(CKChatController *)self splitViewController];
  if (!v5 || (v6 = v5, -[CKChatController splitViewController](self, "splitViewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isCollapsed], v7, v6, v8))
  {
    [(CKChatController *)self dismissKeyboard];
    [(CKComposeChatController *)self reloadInputViews];
  }

  v9 = [(CKCoreChatController *)self inputController];
  [v9 requestPhotoBrowserToUnstageAllImages];

  v10 = [(CKCoreChatController *)self delegate];
  [v10 composeChatControllerDidCancelComposition:self];
}

- (BOOL)isReadOnly
{
  v2 = [(CKCoreChatController *)self chat];
  v3 = [v2 isReadOnly];

  return v3;
}

- (BOOL)shouldShowEntryView
{
  v10.receiver = self;
  v10.super_class = CKComposeChatController;
  if ([(CKChatController *)&v10 shouldShowEntryView])
  {
    if (![(CKComposeChatController *)self newComposeCancelled])
    {
      v6 = [(CKComposeChatController *)self composeRecipientSelectionController];
      v7 = [v6 isSearchResultsHidden];

      if (v7)
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
    v3 = [(CKChatController *)&v5 inputAccessoryViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)inputAccessoryView
{
  if (CKInputAccessoryViewControllerEnabled() || ![(CKComposeChatController *)self shouldShowEntryView])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKComposeChatController;
    v3 = [(CKChatController *)&v5 inputAccessoryView];
  }

  return v3;
}

- (double)_entryViewTopInsetPadding
{
  v3 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v3 collapsedHeight];
  v5 = v4;

  v6 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v6 glassPlatterLayoutMargins];
  v8 = v7;
  v10 = v9;

  v11 = v5 + v8 + v10;
  v12 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v13 = [v12 shouldHideFromField];

  if ((v13 & 1) == 0)
  {
    v14 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v15 = [v14 fromFieldContainerView];
    [v15 frame];
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
  v5 = [(CKChatController *)self entryView];
  v6 = [v5 contentView];
  v7 = [v6 textView];
  v8 = [(CKCoreChatController *)self conversation];
  v9 = [(CKMentionsController *)v4 initWithEntryTextView:v7 conversation:v8];
  [(CKChatController *)self setMentionsController:v9];

  [(CKComposeChatController *)self _reloadMentionsData];
  v10 = [(CKChatController *)self entryView];
  if (v10)
  {
    [v10 setComposingRecipient:{-[CKComposeChatController isComposingRecipient](self, "isComposingRecipient")}];
    [v10 setFailedRecipients:{-[CKComposeChatController hasFailedRecipients](self, "hasFailedRecipients")}];
    [v10 setUnreachableEmergencyRecipient:{-[CKComposeChatController hasUnreachableEmergencyRecipient](self, "hasUnreachableEmergencyRecipient")}];
  }
}

- (BOOL)reloadEntryViewForStagedPluginMessage
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CKChatController *)self entryView];
  v4 = [v3 composition];
  v5 = [v4 shelfPluginPayload];
  v6 = [v5 pluginBundleID];

  if (![v6 length])
  {
    goto LABEL_12;
  }

  v7 = IMBalloonExtensionIDWithSuffix();
  if (([v6 isEqualToString:v7] & 1) == 0)
  {

    goto LABEL_12;
  }

  v8 = [(CKComposeChatController *)self recipientsListChanged];

  if (!v8)
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
      v10 = [(CKComposeChatController *)self recipientsListChanged];
      v11 = "NO";
      if (v10)
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

- (BOOL)_shouldValidatePayloadBeforeSendingPayload:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 requiresValidation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)messageEntryViewDidChange:(id)a3 isTextChange:(BOOL)a4 isShelfChange:(BOOL)a5 isTranslationChange:(BOOL)a6
{
  v10.receiver = self;
  v10.super_class = CKComposeChatController;
  [(CKChatController *)&v10 messageEntryViewDidChange:a3 isTextChange:a4 isShelfChange:a5 isTranslationChange:a6];
  [(CKComposeChatController *)self _updateTitleAnimated:1];
  v7 = [(CKChatController *)self _currentPresentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(CKChatController *)self composition];
    -[CKComposeChatController setModalInPresentation:](self, "setModalInPresentation:", [v9 hasContent]);
  }
}

- (void)messageEntryViewSendButtonHit:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "messageEntryViewSendButtonHit:", buf, 2u);
    }
  }

  v6 = [(CKChatController *)self effectPickerWindow];

  if (v6)
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
    v9 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v10 = [v9 allowedByScreenTime];

    if (v10)
    {
      v11 = +[CKAdaptivePresentationController sharedInstance];
      [v11 dismissViewControllerAnimated:1 completion:0];

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 addObserver:self selector:sel__passKitUIDismissed_ name:@"CKPluginExtensionStateObserverPassKitUIDismissed" object:0];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__CKComposeChatController_messageEntryViewSendButtonHit___block_invoke;
      v14[3] = &unk_1E72ED6D8;
      v14[4] = self;
      [v4 compositionWithAcceptedAutocorrection:v14];
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

- (void)_passKitUIDismissed:(id)a3
{
  v4 = [(CKComposeChatController *)self deferredSendAnimationBlock];
  if (v4)
  {
    v5 = v4;
    v6 = +[CKPluginExtensionStateObserver sharedInstance];
    v7 = [v6 passKitUIPresented];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:@"CKPluginExtensionStateObserverPassKitUIDismissed" object:0];

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

- (void)messageEntryViewSendButtonHitWhileDisabled:(id)a3
{
  v4 = a3;
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
  [(CKChatController *)&v10 messageEntryViewSendButtonHitWhileDisabled:v4];
  v6 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v7 = [v6 toFieldIsFirstResponder];

  if (v7)
  {
    v8 = [(CKChatController *)self entryView];
    v9 = [v8 contentView];
    [v9 makeActive];
  }
}

- (id)textViewOnscreenWithEntryView
{
  v2 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v3 = [v2 toField];
  v4 = [v3 textView];

  return v4;
}

- (BOOL)becomeFirstResponder
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CKChatController *)self funCameraViewController];
  if (v3)
  {
    v4 = [(CKChatController *)self funCameraViewController];
    v5 = [v4 isDismissing] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  if ([(CKChatController *)self targetFirstResponder]== 2)
  {
    v6 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v7 = [v6 toField];
    v8 = [v7 becomeFirstResponder];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (v8)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "ToField tried to become first responder with success %@", buf, 0xCu);
      }
    }

    if (v8)
    {
      return 1;
    }

    v16.receiver = self;
    v14 = &v16;
  }

  else
  {
    v12 = [(CKComposeChatController *)self presentedViewController];
    v13 = (v12 != 0) & v5;

    if (v13)
    {
      return 0;
    }

    v15 = self;
    v14 = &v15;
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
    v4 = [(CKChatController *)self targetFirstResponder];

    if (!v4)
    {
      v5 = [(CKComposeChatController *)self proposedRecipients];
      v6 = [v5 count];

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

- (void)sendAnimationManagerWillStartAnimation:(id)a3 context:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = CKComposeChatController;
  [(CKChatController *)&v17 sendAnimationManagerWillStartAnimation:a3 context:v6];
  if (![(CKComposeChatController *)self sendingViaCardUI]&& !CKIsRunningInMacCatalyst())
  {
    v7 = [v6 impactIdentifier];

    if (!v7)
    {
      v8 = [(CKCoreChatController *)self delegate];
      v9 = [v8 composeChatControllerShouldShowBackButtonViewDuringSendAnimation:self];

      v10 = [(CKComposeChatController *)self navbarManager];
      v11 = [(CKCoreChatController *)self conversation];
      [v10 commitTransitionAnimationWithConversation:v11 shouldShowBackButtonView:v9];

      v12 = [(CKChatController *)self transcriptNavigationBarController];
      v13 = +[_TtC7ChatKit29TranscriptNavigationBarChange barButtonsChange];
      [v12 applyChange:v13];

      v14 = [(CKChatController *)self transcriptNavigationBarController];
      v15 = +[_TtC7ChatKit29TranscriptNavigationBarChange titleDisplayModeChange];
      [v14 applyChange:v15];

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

- (void)recipientSelectionController:(id)a3 didSelectConversation:(id)a4 isiMessagable:(BOOL)a5
{
  v60 = a5;
  v76 = *MEMORY[0x1E69E9840];
  v64 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v75 = v7;
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

    v63 = [(CKCoreChatController *)self delegate];
    v62 = [(CKCoreChatController *)self collectionViewController];
    if (v62)
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __92__CKComposeChatController_recipientSelectionController_didSelectConversation_isiMessagable___block_invoke;
      v69[3] = &unk_1E72EB880;
      v70 = v63;
      v71 = self;
      v72 = v7;
      [v62 updateTranscript:v69 animated:0 completion:0];
    }

    else
    {
      [v63 composeChatController:self didSelectNewConversation:v7];
    }

    v11 = [(CKComposeChatController *)self navbarManager];
    [v11 updateContentsForConversation:v7];

    v12 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
    [v12 stopTimingForKey:@"composeDelegateWork"];

    v13 = [(CKCoreChatController *)self conversation];
    v14 = [v13 chat];
    v15 = v14 == 0;

    if (!v15)
    {
      v16 = [MEMORY[0x1E695DF00] date];
      [CKPowerLog sendTranscriptVisibilityChangedEvent:v16 event:1 metadata:0];
    }

    [(CKChatController *)self setConversation:v7 forceReload:1];
    v17 = [(CKCoreChatController *)self collectionViewController];
    [v17 sizeFullTranscriptIfNecessary];

    v18 = [(CKComposeChatController *)self composeRecipientSelectionController];
    [v18 updateScrollPocketInteractionsIfNeeded];

    v19 = [v64 expandedRecipients];
    v61 = [(CKComposeChatController *)self hasUnreachableEmergencyRecipient];
    if (v61)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v20 = v19;
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
            v25 = [v24 rawAddress];
            IsEmergencyPhoneNumber = IMStringIsEmergencyPhoneNumber();

            if (IsEmergencyPhoneNumber)
            {
              v27 = CKFrameworkBundle();
              v28 = [v27 localizedStringForKey:@"CANNOT_SEND_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

              v29 = [v24 rawAddress];
              v30 = IMNormalizedPhoneNumberForPhoneNumber();
              v31 = [v29 isEqualToIgnoringCase:v30];

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

    v40 = [(CKCoreChatController *)self conversation];
    v41 = [v40 chat];
    v42 = [v41 chatStyle] == 45;

    if (v42 && [v19 count] == 1)
    {
      v43 = [v19 objectAtIndex:0];
      v58 = [v43 rawAddress];

      v44 = [MEMORY[0x1E69A5A80] sharedInstance];
      v45 = [v44 activeIMessageAccount];

      v46 = [(CKCoreChatController *)self conversation];
      v59 = [v19 objectAtIndex:0];
      v47 = [(CKComposeChatController *)self shouldForceToSMSForConversation:v46 forRecipient:v59];
      if (v47 && !v60)
      {
        v48 = [MEMORY[0x1E69A5A80] sharedInstance];
        v49 = [MEMORY[0x1E69A5C90] smsService];
        v50 = [v48 accountsForService:v49];
        v51 = [v50 firstObject];

        v45 = v51;
      }

      if (v47 || v60)
      {
        v52 = [v45 imHandleWithID:v58];
        v53 = [(CKCoreChatController *)self conversation];

        v54 = [v53 chat];
        [v54 setRecipient:v52];
      }

      else
      {
        v53 = v46;
      }
    }

    v55 = [(CKChatController *)self entryView];
    [v55 setFailedRecipients:{-[CKComposeChatController hasFailedRecipients](self, "hasFailedRecipients")}];

    v56 = [(CKChatController *)self entryView];
    [v56 setUnreachableEmergencyRecipient:v61];

    v57 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
    [v57 stopTimingForKey:@"didSelectConversation"];

    [(CKComposeChatController *)self _invalidateBlackholeAlertView];
  }

  [(CKComposeChatController *)self stageSuggestedReplies];
}

- (void)recipientSelectionControllerShouldResignFirstResponder:(id)a3
{
  v4 = [(CKChatController *)self entryView];
  v3 = [v4 contentView];
  [v3 makeActive];
}

- (BOOL)shouldForceToSMSForConversation:(id)a3 forRecipient:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKComposeChatController *)self handleForRecipientNormalizedAddress:v7];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v6 chat];

  if (v9)
  {
    v10 = [v6 chat];
    v9 = [v10 lastFinishedMessageItem];

    v11 = [v9 handle];
    v12 = [v8 ID];
    if (!v9 || !v11 || ([v11 isEqualToString:v12] & 1) != 0)
    {

LABEL_7:
      LOBYTE(v9) = 0;
      goto LABEL_8;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412546;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Should force conversation to SMS because lastHandleID:%@ != newHandleID:%@", &v15, 0x16u);
      }
    }

    LOBYTE(v9) = 1;
  }

LABEL_8:

  return v9;
}

- (id)handleForRecipientNormalizedAddress:(id)a3
{
  v3 = MEMORY[0x1E69A5A80];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 __ck_bestAccountForAddresses:0];
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

- (id)associatedScrollViewForRecipientSelectionController:(id)a3
{
  v3 = [(CKCoreChatController *)self collectionViewController];
  v4 = [v3 collectionView];

  return v4;
}

- (BOOL)recipientSelectionIsGroup:(id)a3
{
  v4 = a3;
  v5 = [(CKComposeChatController *)self prepopulatedRecipients];
  if ([v5 count] > 1)
  {
    v7 = 1;
  }

  else
  {
    v6 = [v4 recipients];
    v7 = [v6 count] > 1;
  }

  return v7;
}

- (double)visibleInputAndEntryViewHeightToAvoidForRecipientSelectionController:(id)a3
{
  [(CKChatController *)self visibleInputViewHeight];
  v5 = v4;
  v6 = [(CKChatController *)self entryView];
  v7 = [v6 window];
  if (v7)
  {
    v8 = [(CKChatController *)self entryView];
    v9 = [v8 heightConstraint];
    [v9 constant];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v5 + v11;
}

- (void)recipientSelectionControllerReturnPressed:(id)a3
{
  v4 = [(CKChatController *)self entryView];
  v3 = [v4 contentView];
  [v3 makeActive];
}

- (void)recipientSelectionControllerTabPressed:(id)a3
{
  [(CKChatController *)self setTargetFirstResponder:1];

  [(CKComposeChatController *)self becomeFirstResponder];
}

- (void)recipientSelectionControllerSearchListDidShowOrHide:(id)a3
{
  v11 = a3;
  v4 = [(CKCoreChatController *)self collectionViewController];
  v5 = [v4 collectionView];
  v6 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v5 setScrollsToTop:{objc_msgSend(v6, "isSearchResultsHidden")}];

  if (__CurrentTestName)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"PPTSearchListDidShowOrHideNotification" object:self userInfo:0];
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 isEntryViewInputAccessory];

  if ((v9 & 1) == 0)
  {
    v10 = [(CKChatController *)self entryView];
    [v10 setHidden:{objc_msgSend(v11, "isSearchResultsHidden") ^ 1}];
  }
}

- (void)recipientSelectionController:(id)a3 textDidChange:(id)a4
{
  v5 = [(CKChatController *)self entryView:a3];
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

- (BOOL)recipientSelectionControllerShouldDisableTopFieldInsets:(id)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 useMacToolbar];

  if (v5)
  {
    return 0;
  }

  else
  {
    return ![(CKComposeChatController *)self shouldShowNavigationBar];
  }
}

- (void)recipientSelectionController:(id)a3 didFinishAvailaiblityLookupForRecipient:(id)a4
{
  v5 = [(CKChatController *)self entryView:a3];
  [v5 setFailedRecipients:{-[CKComposeChatController hasFailedRecipients](self, "hasFailedRecipients")}];
}

- (BOOL)isComposingRecipient
{
  v2 = [(CKComposeChatController *)self composeRecipientSelectionController];
  if (!v2)
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

  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] && !objc_msgSend(v2, "allowedByScreenTime"))
  {
LABEL_11:
    LOBYTE(v3) = 0;
    goto LABEL_12;
  }

  v3 = [v2 finishedComposingRecipients] ^ 1;
LABEL_12:

  return v3;
}

- (BOOL)hasUnreachableEmergencyRecipient
{
  v2 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hasUnreachableEmergencyRecipient];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasFailedRecipients
{
  v2 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hasFailediMessageRecipients];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)showConversation:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKCoreChatController *)self delegate];
  [v7 showConversation:v6 animate:v4];
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
    v3 = [(CKCoreChatController *)self inputController];
    [v3 requestPhotoBrowserToPrepareForDraft];

    v4 = [(CKCoreChatController *)self inputController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__CKComposeChatController__saveDraftState__block_invoke;
    v6[3] = &unk_1E72ED6D8;
    v6[4] = self;
    [v4 requestPollPluginToPrepareForDraftWithCompletion:v6];
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
  v3 = [(CKChatController *)self composition];
  if ([v3 hasContent])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(CKComposeChatController *)self prepopulatedComposition];
    v4 = [v5 hasContent] ^ 1;
  }

  return v4;
}

- (void)prepareToDismissForSecondInstance
{
  v3 = [(CKChatController *)self effectPickerViewController];

  if (v3)
  {
    [(CKChatController *)self requestDismissKeyboardSnapshotForEffectPickerIfNeeded];
  }

  v4.receiver = self;
  v4.super_class = CKComposeChatController;
  [(CKChatController *)&v4 prepareToDismissForSecondInstance];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v8 = [v7 toField];
  v9 = [v8 isFirstResponder];

  if (v9)
  {
    v10 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v11 = [v10 toField];
    v12 = [v11 canPerformAction:a3 withSender:v6];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CKComposeChatController;
    v12 = [(CKChatController *)&v14 canPerformAction:a3 withSender:v6];
  }

  return v12;
}

- (int64_t)preferredStatusBarStyle
{
  if ([(CKComposeChatController *)self _isBusinessConversation])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 theme];
    v5 = [(CKComposeChatController *)self businessHandle];
    v6 = [v4 statusBarStyleForBusinessHandle:v5];

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
  v4 = [(CKComposeChatController *)self navigationItem];
  [v4 _setPreferredNavigationBarVisibility:v3];
}

- (BOOL)shouldShowNavigationBar
{
  if ([(CKComposeChatController *)self _isBusinessConversation])
  {
    return 1;
  }

  v4 = [(CKComposeChatController *)self traitCollection];
  v5 = [v4 splitViewControllerLayoutEnvironment];

  return v5 != 1;
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
  v4 = [(CKChatController *)self entryView];
  v2 = [v4 contentView];
  v3 = [v2 textView];
  [v3 reloadMentionsData];
}

- (void)_triggerRecipientFinalization
{
  v4 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v2 = [v4 toField];
  v3 = [v2 textView];
  [v3 resignFirstResponder];
}

- (void)_updateBlackholeAlertView
{
  v6 = [a1 conversation];
  v7 = [v6 senderIdentifier];

  v8 = [a1 conversation];
  v9 = [v8 recipient];
  v10 = [v9 IDSCanonicalAddress];

  objc_initWeak(&location, a1);
  if ((a2 & 1) != 0 || !a1[339])
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("CKComposeChatController Blackhole Status", v15);
    [(CKComposeChatController *)a1 setBlackholeAlertStatusQueue:v16];

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
  v11 = a1[339];
LABEL_5:
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __52__CKComposeChatController__updateBlackholeAlertView__block_invoke;
  a3[3] = &unk_1E72EC128;
  a3[4] = v7;
  a3[5] = v10;
  v12 = v10;
  v13 = v7;
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
  v3 = [(CKCoreChatController *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 supportsCapabilities:0x80000];

  if ((v5 & 1) == 0)
  {
    v6 = [(CKChatController *)self composition];
    v7 = [v6 sendLaterPluginInfo];

    if (v7)
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

      v9 = [(CKChatController *)self entryView];
      [v9 setSendLaterPluginInfo:0 animated:0];
    }
  }
}

- (BOOL)_isBusinessConversation
{
  v3 = [(CKComposeChatController *)self businessHandle];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CKCoreChatController *)self conversation];
    v4 = [v5 isBusinessConversation];
  }

  return v4;
}

- (BOOL)_isNewBusinessConversation
{
  if (![(CKComposeChatController *)self _isBusinessConversation]|| [(CKComposeChatController *)self isSendingComposition])
  {
    return 0;
  }

  v4 = [(CKCoreChatController *)self conversation];
  v5 = [v4 chat];
  if (v5)
  {
    v6 = [(CKCoreChatController *)self conversation];
    v7 = [v6 chat];
    v3 = [v7 messageCount] == 0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_updateBizNavbarIfNecessary
{
  v3 = [(CKComposeChatController *)self _isBusinessConversation];
  v4 = [(CKComposeChatController *)self navigationController];
  v5 = [v4 navigationBar];
  v6 = [(CKComposeChatController *)self businessHandle];
  [v5 enableBranding:v3 forBusinessHandle:v6];

  v7 = [(CKComposeChatController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 setAccessibilityIgnoresInvertColors:v3];

  [(CKComposeChatController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)setBusinessInfoViewInfoIfNecessary
{
  if (![(CKComposeChatController *)self _isBusinessConversation])
  {
    return;
  }

  v3 = [(CKCoreChatController *)self conversation];
  v4 = [v3 isChatBot];

  if (v4)
  {
    return;
  }

  v5 = [(CKComposeChatController *)self _isNewBusinessConversation];
  v6 = [(CKComposeChatController *)self businessInfoView];
  v7 = v6;
  if (v5)
  {

    if (!v7)
    {
      v8 = [[CKBusinessInfoView alloc] initWithLayoutType:0];
      [(CKComposeChatController *)self setBusinessInfoView:v8];

      v9 = [(CKComposeChatController *)self businessInfoView];
      [v9 setDelegate:self];
    }

    v10 = [(CKChatController *)self entryView];

    if (v10)
    {
      v11 = [(CKChatController *)self entryViewContainerView];
      v12 = [(CKComposeChatController *)self view];
      v13 = [(CKComposeChatController *)self businessInfoView];
      [v12 insertSubview:v13 belowSubview:v11];
    }

    else
    {
      v14 = [(CKComposeChatController *)self businessInfoView];
      v15 = [v14 superview];

      if (v15)
      {
LABEL_14:
        v16 = [(CKCoreChatController *)self conversation];
        v17 = [v16 recipients];
        v18 = [v17 count];

        if (!v18)
        {
          return;
        }

        v19 = [(CKCoreChatController *)self conversation];
        v20 = [v19 recipients];
        v21 = [v20 objectAtIndexedSubscript:0];
        v76 = [v21 defaultIMHandle];

        v22 = [v76 brand];

        if (!v22)
        {
          goto LABEL_35;
        }

        v23 = [MEMORY[0x1E69A60F0] sharedInstance];
        if ([v23 isInternalInstall])
        {
          v24 = [(CKComposeChatController *)self bizIntent];
          v25 = [v24 objectForKeyedSubscript:@"biz-greeting-txt"];

          if (v25)
          {
            v26 = [(CKComposeChatController *)self businessInfoView];
            v27 = [v26 greetingText];
            v28 = [(CKComposeChatController *)self bizIntent];
            v29 = [v28 objectForKeyedSubscript:@"biz-greeting-txt"];
            v30 = [v27 isEqualToString:v29];

            if (v30)
            {
LABEL_32:
              v58 = [(CKComposeChatController *)self businessInfoView];
              v59 = [v58 descriptionText];
              v60 = [v76 brand];
              v61 = [v60 localizedResponseTime];
              v62 = [v59 isEqualToString:v61];

              if ((v62 & 1) == 0)
              {
                v63 = [v76 brand];
                v64 = [v63 localizedResponseTime];
                v65 = [(CKComposeChatController *)self businessInfoView];
                [v65 setDescriptionText:v64];
              }

              [(CKComposeChatController *)self layoutBusinessInfoViewIfNecessary];
LABEL_35:
              v66 = [v76 brand];
              v67 = [v66 name];
              if (v67)
              {
              }

              else
              {
                v68 = [(CKComposeChatController *)self businessInfoView];
                v69 = [v68 greetingText];
                v70 = CKFrameworkBundle();
                v71 = [v70 localizedStringForKey:@"BUSINESS_GREETING_DEFAULT_NO_BRAND" value:&stru_1F04268F8 table:@"ChatKit"];
                v72 = [v69 isEqualToString:v71];

                if ((v72 & 1) == 0)
                {
                  v73 = CKFrameworkBundle();
                  v74 = [v73 localizedStringForKey:@"BUSINESS_GREETING_DEFAULT_NO_BRAND" value:&stru_1F04268F8 table:@"ChatKit"];
                  v75 = [(CKComposeChatController *)self businessInfoView];
                  [v75 setGreetingText:v74];

                  [(CKComposeChatController *)self layoutBusinessInfoViewIfNecessary];
                }
              }

              return;
            }

            v31 = [(CKComposeChatController *)self bizIntent];
            v32 = [v31 objectForKeyedSubscript:@"biz-greeting-txt"];
            v33 = [(CKComposeChatController *)self businessInfoView];
            [v33 setGreetingText:v32];

            goto LABEL_30;
          }
        }

        else
        {
        }

        v31 = [v76 brand];
        v34 = [v31 name];
        if (!v34)
        {
LABEL_31:

          goto LABEL_32;
        }

        v35 = v34;
        v36 = [(CKComposeChatController *)self businessInfoView];
        v37 = [v36 greetingText];
        v38 = MEMORY[0x1E696AEC0];
        v39 = CKFrameworkBundle();
        v40 = [v39 localizedStringForKey:@"BUSINESS_GREETING_DEFAULT_BRAND" value:&stru_1F04268F8 table:@"ChatKit"];
        v41 = [v76 brand];
        v42 = [v41 name];
        v43 = [v38 stringWithFormat:v40, v42];

        v44 = [MEMORY[0x1E69DC668] sharedApplication];
        v45 = [v44 userInterfaceLayoutDirection];

        if (v45 == 1)
        {
          v46 = @"\u200F";
        }

        else
        {
          v46 = @"\u200E";
        }

        v47 = [(__CFString *)v46 stringByAppendingString:v43];

        v48 = [v37 isEqualToString:v47];
        if (v48)
        {
          goto LABEL_32;
        }

        v49 = MEMORY[0x1E696AEC0];
        v50 = CKFrameworkBundle();
        v51 = [v50 localizedStringForKey:@"BUSINESS_GREETING_DEFAULT_BRAND" value:&stru_1F04268F8 table:@"ChatKit"];
        v52 = [v76 brand];
        v53 = [v52 name];
        v54 = [v49 stringWithFormat:v51, v53];

        v55 = [MEMORY[0x1E69DC668] sharedApplication];
        v56 = [v55 userInterfaceLayoutDirection];

        if (v56 == 1)
        {
          v57 = @"\u200F";
        }

        else
        {
          v57 = @"\u200E";
        }

        v31 = [(__CFString *)v57 stringByAppendingString:v54];

        v32 = [(CKComposeChatController *)self businessInfoView];
        [v32 setGreetingText:v31];
LABEL_30:

        goto LABEL_31;
      }

      v11 = [(CKComposeChatController *)self view];
      v12 = [(CKComposeChatController *)self businessInfoView];
      [v11 addSubview:v12];
    }

    goto LABEL_14;
  }

  [v6 removeFromSuperview];

  [(CKComposeChatController *)self setBusinessInfoView:0];
}

- (void)layoutBusinessInfoViewIfNecessary
{
  v3 = [(CKComposeChatController *)self businessInfoView];

  if (v3)
  {
    v4 = [(CKComposeChatController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [(CKComposeChatController *)self view];
    [v11 safeAreaInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = v6 + v15;
    v19 = v10 - (v15 + v17);
    v20 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v21 = [v20 parentViewController];

    if (v21)
    {
      v22 = [(CKComposeChatController *)self composeRecipientSelectionController];
      v23 = [v22 fieldStackContainerView];
      [v23 frame];
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
      v34 = [v33 useMacToolbar];

      if (v34)
      {
        MaxY = v8 + v13;
      }

      else
      {
        v35 = [(CKComposeChatController *)self navigationController];
        v36 = [v35 navigationBar];
        [v36 frame];
        MaxY = CGRectGetMaxY(v44);
      }
    }

    v37 = [(CKComposeChatController *)self businessInfoView];
    [v37 sizeThatFits:{v19, 1.79769313e308}];
    v39 = v38;

    v40 = [(CKComposeChatController *)self businessInfoView];
    [v40 setFrame:{v18, MaxY, v19, v39}];

    v41 = [(CKComposeChatController *)self businessInfoView];
    [v41 setNeedsLayout];
  }
}

- (void)businessInfoView:(id)a3 infoButtonTapped:(id)a4
{
  v5 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:{@"com.apple.onboarding.businesschat", a4}];
  [v5 setPresentingViewController:self];
  [v5 present];
}

- (void)handleAddressBookChange:(id)a3
{
  v3 = [(CKComposeChatController *)self view];
  [v3 setNeedsLayout];
}

- (void)configureWithToolbarController:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKComposeChatController;
  [(CKChatController *)&v7 configureWithToolbarController:a3];
  if ([(CKComposeChatController *)self _isBusinessConversation])
  {
    v4 = [CKBusinessMacToolbarViewController alloc];
    v5 = [(CKComposeChatController *)self businessHandle];
    v6 = [(CKBusinessMacToolbarViewController *)v4 initWithConversation:v5 showingInStandAloneWindow:[(CKCoreChatController *)self showingInStandAloneWindow]];
    [(CKChatController *)self setBusinessMacToolbarController:v6];
  }
}

- (void)providerWillBeRemovedFromToolbarController:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKComposeChatController;
  [(CKChatController *)&v7 providerWillBeRemovedFromToolbarController:a3];
  v4 = +[CKUIBehavior sharedBehaviors];
  if ([v4 useMacToolbar])
  {
    v5 = [(CKComposeChatController *)self composeRecipientSelectionController];

    if (!v5)
    {
      return;
    }

    v4 = [(CKComposeChatController *)self composeRecipientSelectionController];
    v6 = [v4 view];
    [v6 removeFromSuperview];
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
    v3 = 0;
  }

  else
  {
    v3 = [(CKComposeChatController *)self virtualToolbarItem];
  }

  return v3;
}

- (BOOL)canShowBusinessOnboarding
{
  v3 = [(CKComposeChatController *)self businessHandle];
  if (v3)
  {
    v4 = v3;
    v5 = [(CKComposeChatController *)self businessHandle];
    v6 = [v5 isMapKitBusiness];

    if (v6)
    {
      return 1;
    }
  }

  v8 = [(CKCoreChatController *)self conversation];
  v9 = [v8 isMapKitBusinessConversation];

  return v9;
}

- (void)didFinishShowingBusinessOnboarding
{
  [(CKChatController *)self setTargetFirstResponder:1];

  [(CKComposeChatController *)self becomeFirstResponder];
}

- (void)suggestionsController:(id)a3 didSelectRecipient:(id)a4
{
  v5 = a4;
  v6 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v6 addRecipient:v5];
}

- (void)suggestionsController:(id)a3 didDeselectRecipient:(id)a4
{
  v4 = a4;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CKComposeChatController suggestionsController:v4 didDeselectRecipient:v5];
  }
}

- (id)selectedRecipientsForSuggestionsController:(id)a3
{
  v3 = [(CKComposeChatController *)self composeRecipientSelectionController];
  v4 = [v3 recipients];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (void)setBlackholeAlertStatusQueue:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 2712), a2);
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
  v2 = [a1 blackholeAlertView];
  [v2 removeFromSuperview];

  return [a1 setBlackholeAlertView:0];
}

- (void)suggestionsController:(uint64_t)a1 didDeselectRecipient:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "suggestionsController asked to deselect a recipient: %@", &v2, 0xCu);
}

@end