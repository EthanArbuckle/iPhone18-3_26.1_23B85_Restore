@interface CKGroupRecipientSelectionController
- (BOOL)_enableRecipientsAdditionBasedOnAvailability;
- (BOOL)alwaysShowSearchResultsTable;
- (BOOL)hasInvalidRecipientsForService:(id)a3;
- (BOOL)isBeingPresentedInMacDetailsView;
- (BOOL)recipientSelectionIsGroup:(id)a3;
- (BOOL)shouldAutorotate;
- (CKGroupRecipientSelectionController)initWithConversation:(id)a3;
- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)a3;
- (double)topInsetForNavBar;
- (id)_orderedMutableGroupServices;
- (id)_serviceForRecipientPresentationOptions;
- (id)handlesForScreenTimePolicyCheck;
- (void)_checkAvailabilityAndAddToken;
- (void)_frecencySearch;
- (void)_updateNavigationButton;
- (void)composeRecipientViewEscapePressed:(id)a3;
- (void)composeRecipientViewReturnPressed:(id)a3;
- (void)didAddRecipient:(id)a3;
- (void)handleAddingHandles:(id)a3 conversation:(id)a4 viewController:(id)a5 allRecipientAddresses:(id)a6 completion:(id)a7;
- (void)handleCancelAction:(id)a3 completion:(id)a4;
- (void)handleDoneActionForConversation:(id)a3 viewController:(id)a4 completion:(id)a5;
- (void)loadView;
- (void)recipientAvailabilitiesDidUpdate;
- (void)recipientSelectionController:(id)a3 textDidChange:(id)a4;
- (void)recipientSelectionControllerDidChange;
- (void)recipientSelectionControllerEscapePressed:(id)a3;
- (void)recipientSelectionControllerRequestDismissKeyboard:(id)a3;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKGroupRecipientSelectionController

- (CKGroupRecipientSelectionController)initWithConversation:(id)a3
{
  v12.receiver = self;
  v12.super_class = CKGroupRecipientSelectionController;
  v3 = [(CKRecipientSelectionController *)&v12 initWithConversation:a3];
  v4 = v3;
  if (v3)
  {
    [(CKRecipientSelectionController *)v3 setDelegate:v3];
  }

  v5 = [(CKRecipientSelectionController *)v4 conversation];
  v6 = [v5 chat];

  if (v6)
  {
    v7 = [(CKRecipientSelectionController *)v4 conversation];
    v8 = [v7 chat];
    v9 = [v8 participants];
    v10 = [v9 __imArrayByApplyingBlock:&__block_literal_global_259];

    [(CKRecipientSelectionController *)v4 refreshAvailabilityForRecipients:v10 context:0];
  }

  return v4;
}

id __60__CKGroupRecipientSelectionController_initWithConversation___block_invoke(uint64_t a1, void *a2)
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

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v9 loadView];
  v3 = [(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView];
  v4 = [(CKGroupRecipientSelectionController *)self view];
  if (v3)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] _ckSystemBackgroundColor];
  }
  v5 = ;
  [v4 setBackgroundColor:v5];

  v6 = [(CKRecipientSelectionController *)self toField];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ADD" value:&stru_1F04268F8 table:@"ChatKit"];
  [v6 setLabel:v8];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v6 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v3 configureWithDefaultBackground];
  v4 = [(CKGroupRecipientSelectionController *)self navigationItem];
  [v4 setStandardAppearance:v3];

  v5 = [(CKGroupRecipientSelectionController *)self navigationItem];
  [v5 setScrollEdgeAppearance:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v8 viewWillAppear:a3];
  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    [(CKGroupRecipientSelectionController *)self _checkAvailabilityAndAddToken];
  }

  else
  {
    [(CKGroupRecipientSelectionController *)self _updateNavigationButton];
  }

  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    v4 = [(CKRecipientSelectionController *)self toField];
    v5 = [v4 addButton];
    [v5 setHidden:1];

    v6 = [(CKRecipientSelectionController *)self toField];
    [v6 setShowsAddButtonWhenExpanded:0];
  }

  v7 = [(CKRecipientSelectionController *)self toField];
  [v7 becomeFirstResponder];
}

- (void)viewDidAppearDeferredSetup
{
  v17.receiver = self;
  v17.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v17 viewDidAppearDeferredSetup];
  v3 = [(CKRecipientSelectionController *)self searchListController];
  [v3 setSuppressGroupSuggestions:1];

  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [(CKRecipientSelectionController *)self conversation];
  v6 = [v5 recipients];
  v7 = [v4 initWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [(CKRecipientSelectionController *)self conversation];
  v9 = [v8 recipients];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__CKGroupRecipientSelectionController_viewDidAppearDeferredSetup__block_invoke;
  v15[3] = &unk_1E72F67A0;
  v10 = v7;
  v16 = v10;
  [v9 enumerateObjectsUsingBlock:v15];

  v11 = [(CKRecipientSelectionController *)self searchListController];
  [v11 setPrefilteredRecipients:v10];

  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    v12 = [(CKRecipientSelectionController *)self searchListController];
    v13 = [v12 view];
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [v13 setBackgroundColor:v14];
  }

  [(CKGroupRecipientSelectionController *)self _frecencySearch];
}

void __65__CKGroupRecipientSelectionController_viewDidAppearDeferredSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKIMComposeRecipient alloc];
  v5 = [v3 defaultIMHandle];

  v6 = [(CKIMComposeRecipient *)v4 initWithHandle:v5];
  [*(a1 + 32) addObject:v6];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CKGroupRecipientSelectionController;
  [(CKGroupRecipientSelectionController *)&v2 viewDidLayoutSubviews];
}

- (BOOL)shouldAutorotate
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 shouldSuppressRotationInNewCompose];

  return v3 ^ 1;
}

- (void)recipientSelectionControllerDidChange
{
  v3.receiver = self;
  v3.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v3 recipientSelectionControllerDidChange];
  if (![(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    [(CKGroupRecipientSelectionController *)self _updateNavigationButton];
  }

  [(CKGroupRecipientSelectionController *)self _frecencySearch];
}

- (void)recipientAvailabilitiesDidUpdate
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v20 recipientAvailabilitiesDidUpdate];
  v3 = CKGroupRecipientSelectionLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Recipient availabilities updated.", buf, 2u);
  }

  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    [(CKGroupRecipientSelectionController *)self _checkAvailabilityAndAddToken];
  }

  else
  {
    [(CKGroupRecipientSelectionController *)self _updateNavigationButton];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(CKRecipientSelectionController *)self toField];
    v5 = [v4 recipients];

    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
          v12 = [v10 IDSCanonicalAddress];
          v13 = [v11 hasResultsForRecipient:v12];

          if (v13)
          {
            v14 = [(CKRecipientSelectionController *)self toField];
            [v14 invalidateAtomPresentationOptionsForRecipient:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)alwaysShowSearchResultsTable
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isRedesignedDetailsViewEnabled];

  return v3 ^ 1;
}

- (BOOL)isBeingPresentedInMacDetailsView
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isRedesignedDetailsViewEnabled];

  return (v3 & 1) == 0 && CKIsRunningInMacCatalyst() != 0;
}

- (void)didAddRecipient:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v18 didAddRecipient:v4];
  v5 = [(CKRecipientSelectionController *)self conversation];
  v6 = [v5 sendingService];
  v7 = [MEMORY[0x1E69A5CA0] iMessageService];
  v8 = v6 == v7;

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = [MEMORY[0x1E69A5CA0] iMessageService];
    v11 = [v10 internalName];
    v12 = [MEMORY[0x1E69A5CA0] rcsService];
    v13 = [v12 internalName];
    v14 = [v9 setWithObjects:{v11, v13, 0}];
  }

  v15 = objc_alloc_init(CKPendingConversationStatusRefreshContext);
  [(CKPendingConversationStatusRefreshContext *)v15 setPreconditionsIgnoredForServices:v14];
  [(CKPendingConversationStatusRefreshContext *)v15 setIsForPendingConversation:1];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Added recipientURI %@, will refresh availability for it.", buf, 0xCu);
    }
  }

  v19 = v4;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  [(CKRecipientSelectionController *)self refreshAvailabilityForRecipients:v17 context:v15];
}

- (BOOL)recipientSelectionIsGroup:(id)a3
{
  v4 = a3;
  v5 = [(CKRecipientSelectionController *)self recipients];
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

- (void)recipientSelectionControllerEscapePressed:(id)a3
{
  v6 = [(CKGroupRecipientSelectionController *)self cancelButton];
  v4 = [v6 target];
  v5 = [(CKGroupRecipientSelectionController *)self cancelButton];
  [v4 performSelectorOnMainThread:objc_msgSend(v5 withObject:"action") waitUntilDone:{0, 0}];
}

- (void)recipientSelectionController:(id)a3 textDidChange:(id)a4
{
  v5 = [(CKRecipientSelectionController *)self toField:a3];
  v6 = [v5 text];
  v7 = [v6 length];

  if (!v7)
  {

    [(CKGroupRecipientSelectionController *)self _frecencySearch];
  }
}

- (void)recipientSelectionControllerRequestDismissKeyboard:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self toField];
  v3 = [v4 textView];
  [v3 resignFirstResponder];
}

- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)a3
{
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  [(CKGroupRecipientSelectionController *)self topInsetForNavBar];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (double)topInsetForNavBar
{
  v3 = [(CKGroupRecipientSelectionController *)self navigationController];
  v4 = [v3 navigationBar];

  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v5 statusBar];

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v8 = [v7 isStatusBarHidden];

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 shouldInsetForStatusBar];

  if (v10)
  {
    v11 = 0.0;
    if ((v8 & 1) == 0)
    {
      [v6 currentHeight];
      v11 = v12;
    }
  }

  else
  {
    v11 = 0.0;
    if ([v4 isTranslucent])
    {
      v13 = [(CKGroupRecipientSelectionController *)self view];
      [v13 safeAreaInsets];
      v11 = v14;
    }
  }

  return v11;
}

- (void)_updateNavigationButton
{
  v3 = [(CKRecipientSelectionController *)self recipients];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CKGroupRecipientSelectionController *)self _enableRecipientsAdditionBasedOnAvailability];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CKGroupRecipientSelectionController *)self doneButton];
  [v6 setEnabled:v5];
}

- (void)_checkAvailabilityAndAddToken
{
  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView]&& [(CKGroupRecipientSelectionController *)self _enableRecipientsAdditionBasedOnAvailability])
  {
    v3 = [(CKRecipientSelectionController *)self delegate];
    [v3 recipientSelectionControllerReturnPressed:self];
  }
}

- (BOOL)_enableRecipientsAdditionBasedOnAvailability
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CKRecipientSelectionController *)self recipients];
  v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [v7 IDSCanonicalAddress];
        v9 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v10 = [v9 hasResultsForRecipient:v8];

        v11 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v12 = MEMORY[0x1E69A7940];
        v13 = [v11 hasIDStatus:1 forRecipient:v8 forServicesWithCapability:*MEMORY[0x1E69A7940]];

        v14 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        LOBYTE(v12) = [v14 hasIDStatus:2 forRecipient:v8 forServicesWithCapability:*v12];

        v15 = v10 & (v13 | v12);
        if (v15)
        {
          goto LABEL_17;
        }

        if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
        {
          if (![(CKRecipientSelectionController *)self allowedByScreenTime])
          {
            v16 = [v7 normalizedAddress];

            if (v16)
            {
              v17 = [(CKRecipientSelectionController *)self currentConversationContext];
              v18 = [v17 allowedByContactsHandle];
              v19 = [v7 normalizedAddress];
              v20 = [v18 objectForKey:v19];

              if (v20 && ![v20 BOOLValue])
              {

LABEL_17:
                goto LABEL_18;
              }
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (void)_frecencySearch
{
  v3 = [(CKRecipientSelectionController *)self searchListController];
  [v3 searchWithText:0];

  v5 = [(CKRecipientSelectionController *)self searchListController];
  v4 = [v5 tableView];
  [v4 __ck_scrollToTop:0];
}

- (id)handlesForScreenTimePolicyCheck
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    v14.receiver = self;
    v14.super_class = CKGroupRecipientSelectionController;
    v3 = [(CKRecipientSelectionController *)&v14 handlesForScreenTimePolicyCheck];
    v4 = [v3 mutableCopy];

    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    v5 = [(CKRecipientSelectionController *)self conversation];
    v6 = [v5 chat];

    if (v6)
    {
      v7 = [(CKRecipientSelectionController *)self conversation];
      v8 = [v7 chat];
      v9 = [v8 participants];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__CKGroupRecipientSelectionController_handlesForScreenTimePolicyCheck__block_invoke;
      v12[3] = &unk_1E72F7A68;
      v13 = v4;
      [v9 __imForEach:v12];
    }

    v10 = [v4 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __70__CKGroupRecipientSelectionController_handlesForScreenTimePolicyCheck__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ID];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 ID];
    [v4 addObject:v5];
  }
}

- (void)composeRecipientViewReturnPressed:(id)a3
{
  if ([(CKGroupRecipientSelectionController *)self _enableRecipientsAdditionBasedOnAvailability])
  {
    v4 = [(CKRecipientSelectionController *)self delegate];
    [v4 recipientSelectionControllerReturnPressed:self];
  }
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

- (void)handleCancelAction:(id)a3 completion:(id)a4
{
  v5 = a4;
  [(CKRecipientSelectionController *)self stopCheckingRecipientAvailabilityAndRemoveAllTimers];
  [(CKRecipientSelectionController *)self invalidateOutstandingIDStatusRequests];
  [(CKGroupRecipientSelectionController *)self dismissViewControllerAnimated:1 completion:0];
  (*(v5 + 2))(v5, 0, 0, 0, 0);
}

- (void)handleDoneActionForConversation:(id)a3 viewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = CKGroupRecipientSelectionLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "User pressed done button to add new participants to the group.", buf, 2u);
  }

  v12 = [(CKRecipientSelectionController *)self toField];
  v13 = [v12 recipients];

  v14 = [MEMORY[0x1E695DF70] array];
  v15 = MEMORY[0x1E695DF70];
  v16 = [v8 recipientStrings];
  v17 = [v15 arrayWithArray:v16];

  v18 = CKGroupRecipientSelectionLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "===== Current conversation recipients =====", buf, 2u);
  }

  [v17 enumerateObjectsUsingBlock:&__block_literal_global_122_0];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke_123;
  v30[3] = &unk_1E72EC398;
  v31 = v17;
  v32 = v14;
  v19 = v14;
  v20 = v17;
  [v13 enumerateObjectsUsingBlock:v30];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke_125;
  v27 = &unk_1E72F3B28;
  v28 = v8;
  v29 = v21;
  v22 = v21;
  v23 = v8;
  [v19 enumerateObjectsUsingBlock:&v24];
  [(CKGroupRecipientSelectionController *)self handleAddingHandles:v22 conversation:v23 viewController:v10 allRecipientAddresses:v20 completion:v9, v24, v25, v26, v27];
}

void __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CKGroupRecipientSelectionLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Recipient string: %@", &v4, 0xCu);
  }
}

void __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke_123(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 rawAddress];
  if (!v4)
  {
    v5 = [v3 address];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
      [*(a1 + 40) addObject:v5];
      v6 = CKGroupRecipientSelectionLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v5;
        v7 = "rawAddress was nil, adding address to allRecipients %@";
LABEL_9:
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, v7, &v8, 0xCu);
      }
    }

    else
    {
      v6 = CKGroupRecipientSelectionLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v3;
        v7 = "Both rawAddress and address for recipient %@ were nil. Not adding recipient to group.";
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  [*(a1 + 32) addObject:v4];
  [*(a1 + 40) addObject:v4];
  v5 = CKGroupRecipientSelectionLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Added rawAddress to allRecipients %@", &v8, 0xCu);
  }

LABEL_11:
}

void __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke_125(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chat];
  v6 = [v5 account];
  v7 = [v6 imHandleWithID:v4 alreadyCanonical:0];

  [*(a1 + 40) addObject:v7];
}

- (id)_orderedMutableGroupServices
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5CA0] servicesWithCapabilityName:*MEMORY[0x1E69A79C0]];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_128_0];

  v4 = CKGroupRecipientSelectionLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Ranked service names for details view add resolution: %@", &v6, 0xCu);
  }

  return v3;
}

uint64_t __67__CKGroupRecipientSelectionController__orderedMutableGroupServices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 serviceForSendingPriority];
  if (v6 <= [v5 serviceForSendingPriority])
  {
    v8 = [v4 serviceForSendingPriority];
    v7 = v8 < [v5 serviceForSendingPriority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)handleAddingHandles:(id)a3 conversation:(id)a4 viewController:(id)a5 allRecipientAddresses:(id)a6 completion:(id)a7
{
  v71 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v55 = a4;
  v52 = a5;
  v51 = a6;
  v50 = a7;
  v53 = [(CKGroupRecipientSelectionController *)self _orderedMutableGroupServices];
  v13 = CKGroupRecipientSelectionLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v55 chat];
    v15 = [v14 guid];
    *buf = 138412546;
    v68 = v12;
    v69 = 2112;
    v70 = v15;
    _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Trying to add recipients %@ to chat with guid %@", buf, 0x16u);
  }

  v64 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v12;
  v16 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v61;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v61 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v60 + 1) + 8 * i);
        v21 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v22 = [v20 ID];
        v23 = [v22 IDSFormattedDestinationID];
        v24 = [v55 sendingService];
        v25 = [v24 name];
        v26 = [v21 reachabilityForRecipient:v23 service:v25 isFinal:&v64];

        if ((v64 & 1) == 0)
        {
          v40 = CKGroupRecipientSelectionLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v68 = v20;
            _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "Requested reachability for %@ was not final, bailing early. Waiting for final response.", buf, 0xCu);
          }

          v41 = obj;
          v38 = v51;
          v37 = v52;
          v39 = v50;
          goto LABEL_30;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v27 = [(CKRecipientSelectionController *)self conversation];
  v28 = [v27 supportsMutatingGroupMembers];

  if (!v28)
  {
    v29 = CKGroupRecipientSelectionLogHandle();
    v38 = v51;
    v37 = v52;
    v39 = v50;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Group does not support mutation, not adding handles.", buf, 2u);
    }

LABEL_28:

LABEL_29:
    v41 = obj;
    (v39)[2](v39, 1, obj, v38, self);
    goto LABEL_30;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v29 = v53;
  v30 = [v29 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (!v30)
  {
LABEL_22:
    v38 = v51;
    v37 = v52;
    v39 = v50;
    goto LABEL_28;
  }

  v31 = v30;
  v32 = *v57;
LABEL_14:
  v33 = 0;
  while (1)
  {
    if (*v57 != v32)
    {
      objc_enumerationMutation(v29);
    }

    v34 = *(*(&v56 + 1) + 8 * v33);
    v35 = [(CKGroupRecipientSelectionController *)self hasInvalidRecipientsForService:v34];
    v36 = CKGroupRecipientSelectionLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v68 = v34;
      v69 = 1024;
      LODWORD(v70) = v35;
      _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "hasInvalidRecipientsForService: %@, %d", buf, 0x12u);
    }

    if (!v35)
    {
      break;
    }

    if (v31 == ++v33)
    {
      v31 = [v29 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v31)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  v42 = v34;

  v38 = v51;
  v37 = v52;
  v39 = v50;
  if (!v42)
  {
    goto LABEL_29;
  }

  v43 = [(CKRecipientSelectionController *)self conversation];
  v41 = obj;
  [v43 addRecipientHandles:obj];

  v44 = [(CKRecipientSelectionController *)self conversation];
  v45 = [v44 sendingService];

  if (v42 != v45)
  {
    v46 = CKGroupRecipientSelectionLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = [(CKRecipientSelectionController *)self conversation];
      v48 = [v47 sendingService];
      *buf = 138412546;
      v68 = v48;
      v69 = 2112;
      v70 = v42;
      _os_log_impl(&dword_19020E000, v46, OS_LOG_TYPE_INFO, "Current service %@, new participant(s) supported service %@. Refreshing service for sending...", buf, 0x16u);
    }

    v49 = [(CKRecipientSelectionController *)self conversation];
    [v49 refreshServiceForSending];
  }

  [(CKGroupRecipientSelectionController *)self handleCancelAction:v52 completion:v50];

LABEL_30:
}

- (BOOL)hasInvalidRecipientsForService:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = [(CKRecipientSelectionController *)self recipients];
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v6)
  {
    v7 = *v41;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v40 + 1) + 8 * i) IDSCanonicalAddress];
        v10 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v11 = [v4 name];
        v12 = [v10 idStatusForRecipient:v9 service:v11];

        if (v12 != 1)
        {
          v34 = 1;
          goto LABEL_28;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v4 name];
  v14 = [MEMORY[0x1E69A5CA0] iMessageService];
  v15 = [v14 name];
  v35 = [v13 isEqualToString:v15];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = [(CKRecipientSelectionController *)self conversation];
  v17 = [v16 chat];
  v5 = [v17 participants];

  v18 = [v5 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v18)
  {
    v34 = 0;
    v20 = *v37;
    *&v19 = 138412546;
    v33 = v19;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v5);
        }

        v22 = *(*(&v36 + 1) + 8 * j);
        v23 = [v22 ID];
        v24 = IMChatCanonicalIDSIDsForAddress();

        if (v35)
        {
          v25 = [v22 ID];
          v26 = [v25 _appearsToBeEmail];

          if (v26)
          {

            goto LABEL_27;
          }
        }

        v27 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v28 = [v4 name];
        v29 = [v27 idStatusForRecipient:v24 service:v28];

        if (v29 != 1)
        {
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = [v4 name];
              *buf = v33;
              v45 = v24;
              v46 = 2112;
              v47 = v31;
              _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Existing handle %@ was not reachable on service %@, cannot add.", buf, 0x16u);
            }
          }

          v34 = 1;
        }
      }

      v18 = [v5 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_27:
    v34 = 0;
  }

LABEL_28:

  return v34 & 1;
}

- (id)_serviceForRecipientPresentationOptions
{
  v3 = [(CKRecipientSelectionController *)self conversation];
  v4 = [v3 sendingService];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKGroupRecipientSelectionController;
    v6 = [(CKRecipientSelectionController *)&v9 _serviceForRecipientPresentationOptions];
  }

  v7 = v6;

  return v7;
}

@end