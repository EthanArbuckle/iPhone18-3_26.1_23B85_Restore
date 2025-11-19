@interface CKComposeRecipientSelectionController
- (BOOL)_hasExistingConversationWithAddedRecipient:(id)a3;
- (BOOL)_updateBackfillForNewRecipients;
- (BOOL)hasBackfilledConversation;
- (BOOL)hasiMessageableContext;
- (BOOL)homogenizePreferredServiceForiMessage;
- (BOOL)recipientIsiMessagable:(id)a3;
- (BOOL)shouldHideFromField;
- (BOOL)shouldInvalidateIDSRequests;
- (BOOL)shouldSuppressSearchResultsTable;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CKSenderIdentity)selectedSenderIdentity;
- (CTXPCServiceSubscriptionContext)selectedSubscriptionContext;
- (NSArray)expandedRecipients;
- (NSArray)proposedRecipients;
- (NSString)selectedLastAddressedOrDefaultHandle;
- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)a3;
- (double)fromFieldHeight;
- (double)glassPlatterCornerRadius;
- (double)selectionFieldsHeight;
- (id)_bestSenderIdentityForRecipient:(id)a3;
- (id)_contactPreferredSenderIdentityForRecipient:(id)a3;
- (id)_defaultSenderIdentity;
- (id)_defaultSubscriptionContext;
- (id)_defaultSubscriptionContextForiMessage;
- (id)_handlesForRecipients:(id)a3;
- (id)_pendingConversationForExistingChatWithGUIDUsingRecipientLookupFallback:(id)a3;
- (id)_preferrediMessageAccountName;
- (id)_subscriptionContextForSimID:(id)a3 phoneNumber:(id)a4;
- (id)_validSenderIdentityForLastAddressedHandle;
- (id)autocompleteResultIdentifier:(id)a3;
- (id)conversationGUIDForRecipient:(id)a3;
- (id)menuForSubscriptionSelector;
- (id)recipients;
- (unint64_t)_fromFieldThemeForCurrentService;
- (void)CKComposeSubscriptionSelectorButtonWasTapped:(id)a3;
- (void)_atomizeToConversationNameIfNecessary:(unint64_t)a3;
- (void)_lastAddressedHandleChangedNotification:(id)a3;
- (void)_layoutFromFieldShouldHide:(BOOL)a3;
- (void)_legacyAddRecipient:(id)a3;
- (void)_recoverConversationIfJunk:(id)a3;
- (void)_updateBackfillForNewRecipients;
- (void)_updateContentsOfFromField;
- (void)_updateFromFieldIfNeeded;
- (void)_updateSubscriptionContextForRecipient:(id)a3 preferredService:(id)a4;
- (void)addRecipient:(id)a3;
- (void)atomizeAndInvokeBlock:(id)a3;
- (void)atomizeAndSendTimeoutHandler;
- (void)configureSubscriptionContextForRecipients:(id)a3;
- (void)conversationPreferredServiceDidChange;
- (void)dealloc;
- (void)loadView;
- (void)presentAlertForSubscriptionContext;
- (void)presentContextSelectionAlertWithCompletion:(id)a3;
- (void)recipientSelectionControllerDidChange;
- (void)reset;
- (void)setSelectedSenderIdentity:(id)a3;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation CKComposeRecipientSelectionController

- (void)dealloc
{
  [(CKComposeRecipientSelectionController *)self setSendBlock:0];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_atomizeAndSendTimeoutHandler object:0];
  v3.receiver = self;
  v3.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v3 dealloc];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v5 viewDidDisappear:a3];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_atomizeAndInvokeTimeoutHandler object:0];
  v4 = [(CKComposeRecipientSelectionController *)self presentedViewController];

  if (!v4)
  {
    [(CKComposeRecipientSelectionController *)self setHasUserSetContextPreference:0];
  }
}

- (void)presentAlertForSubscriptionContext
{
  if ([(CKComposeRecipientSelectionController *)self isFirstAppear])
  {
    if (+[CKSenderIdentity identityTrackingEnabled])
    {
      v3 = [(CKRecipientSelectionController *)self toField];
      v4 = [v3 recipients];
      [(CKComposeRecipientSelectionController *)self configureSubscriptionContextForRecipients:v4];
    }

    [(CKComposeRecipientSelectionController *)self setFirstAppear:0];
  }
}

- (void)viewDidAppearDeferredSetup
{
  v3.receiver = self;
  v3.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v3 viewDidAppearDeferredSetup];
  [(CKComposeRecipientSelectionController *)self presentAlertForSubscriptionContext];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKComposeRecipientSelectionController;
  [(CKComposeRecipientSelectionController *)&v3 viewDidLayoutSubviews];
  if (+[CKSenderIdentity identityTrackingEnabled])
  {
    [(CKComposeRecipientSelectionController *)self _layoutFromFieldShouldHide:0];
    [(CKComposeRecipientSelectionController *)self _updateFromFieldIfNeeded];
  }
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v4 loadView];
  [(CKComposeRecipientSelectionController *)self setFirstAppear:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__lastAddressedHandleChangedNotification_ name:*MEMORY[0x1E69A5818] object:0];
}

- (void)configureSubscriptionContextForRecipients:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[CKSenderIdentity identityTrackingEnabled])
  {
    if ([(CKComposeRecipientSelectionController *)self hasBackfilledConversation])
    {
      [(CKComposeRecipientSelectionController *)self _updateFromFieldIfNeeded];
    }

    else
    {
      if (+[CKSenderIdentity fromPickerEnabled])
      {
        [(CKComposeRecipientSelectionController *)self _updateFromFieldIfNeeded];
      }

      if ([v4 count])
      {
        if (![(CKComposeRecipientSelectionController *)self hasUserSetContextPreference])
        {
          v5 = [(CKComposeRecipientSelectionController *)self simID];

          if (v5 && ([MEMORY[0x1E69A7F68] sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "ctSubscriptionInfo"), v7 = objc_claimAutoreleasedReturnValue(), -[CKComposeRecipientSelectionController simID](self, "simID"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "__im_subscriptionContextForForSimID:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v9))
          {
            v10 = [[CKSenderIdentity alloc] initWithSubscriptionContext:v9];
            if (IMOSLoggingEnabled())
            {
              v11 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = [(CKComposeRecipientSelectionController *)self simID];
                *buf = 138412546;
                v38 = v12;
                v39 = 2112;
                v40 = v10;
                _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "simID %@ is explicitly set on recipient selection controller, using %@ as sender identity", buf, 0x16u);
              }
            }

            [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v10];
          }

          else
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            obj = v4;
            v14 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
            v16 = v14 != 0;
            v10 = 0;
            if (v14)
            {
              v31 = *v34;
              *&v15 = 138412546;
              v29 = v15;
LABEL_18:
              v17 = 0;
              v9 = v10;
              while (1)
              {
                if (*v34 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v33 + 1) + 8 * v17);
                v19 = [(CKComposeRecipientSelectionController *)self _bestSenderIdentityForRecipient:v18, v29];
                v20 = v19;
                if (!v19)
                {
                  break;
                }

                if (v9)
                {
                  v21 = [(CKSenderIdentity *)v19 accountUUID];
                  v22 = [(CKSenderIdentity *)v9 accountUUID];
                  v23 = [v21 isEqual:v22];

                  if ((v23 & 1) == 0)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v26 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412802;
                        v38 = v18;
                        v39 = 2112;
                        v40 = v20;
                        v41 = 2112;
                        v42 = v9;
                        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "recipient %@ has best identity %@, but we have already chosen %@, we should present a selection alert", buf, 0x20u);
                      }
                    }

                    v16 = 1;
                    v10 = v9;
                    goto LABEL_43;
                  }
                }

                v10 = v20;

                if (IMOSLoggingEnabled())
                {
                  v24 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    *buf = v29;
                    v38 = v10;
                    v39 = 2112;
                    v40 = v18;
                    _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "selecting %@ as sender identity due to preference for recipient %@", buf, 0x16u);
                  }
                }

                ++v17;
                v9 = v10;
                if (v14 == v17)
                {
                  v14 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
                  if (v14)
                  {
                    goto LABEL_18;
                  }

                  v16 = 0;
LABEL_43:

LABEL_44:
                  obj = [MEMORY[0x1E69A7F68] sharedInstance];
                  v27 = [obj ctSubscriptionInfo];
                  v9 = [v27 __im_subscriptionContextForSenderIdentity:v10];

                  goto LABEL_45;
                }
              }

              if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v38 = v18;
                  _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "recipient %@ has no best identity, we should present a selection alert", buf, 0xCu);
                }
              }

              v16 = 1;
              if (v9)
              {
                v10 = v9;
                goto LABEL_44;
              }

              v10 = 0;
            }

            else
            {
              v9 = 0;
LABEL_45:
            }

            v28 = [[CKSenderIdentity alloc] initWithSubscriptionContext:v9];
            [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v28];

            if (v16)
            {
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __83__CKComposeRecipientSelectionController_configureSubscriptionContextForRecipients___block_invoke;
              v32[3] = &unk_1E72F68F8;
              v32[4] = self;
              [(CKComposeRecipientSelectionController *)self presentContextSelectionAlertWithCompletion:v32];
            }
          }
        }
      }

      else
      {
        v13 = [(CKComposeRecipientSelectionController *)self _defaultSenderIdentity];
        [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v13];
      }
    }
  }
}

void __83__CKComposeRecipientSelectionController_configureSubscriptionContextForRecipients___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (v5 && a2)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 32) selectedSenderIdentity];
        v14 = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Selected new subscription info is now %@ from %@", &v14, 0x16u);
      }
    }

    [*(a1 + 32) setHasUserSetContextPreference:1];
  }

  else
  {
    if (v6)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "No subscription info found (or user cancelled action). Setting to default context", &v14, 2u);
      }
    }

    v10 = [*(a1 + 32) selectedSenderIdentity];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [*(a1 + 32) _defaultSenderIdentity];
    }

    v13 = v12;

    v5 = v13;
  }

  [*(a1 + 32) setSelectedSenderIdentity:v5];
  [*(a1 + 32) _updateFromFieldIfNeeded];
}

- (id)_validSenderIdentityForLastAddressedHandle
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEnhancedFromPickerEnabled];

  if (v4)
  {
    v5 = [(CKRecipientSelectionController *)self conversation];
    v6 = [v5 chat];
    v7 = [v6 lastAddressedHandleID];

    if (v7)
    {
      v8 = IMChatCanonicalIDSIDsForAddress();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v9 = [MEMORY[0x1E69A5A80] sharedInstance];
      v10 = [v9 operationalAccounts];

      v28 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v28)
      {
        v11 = *v35;
        v29 = v10;
        v27 = *v35;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(v10);
            }

            v13 = *(*(&v34 + 1) + 8 * i);
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v14 = [v13 aliases];
            v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v31;
              while (2)
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v31 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = IMChatCanonicalIDSIDsForAddress();
                  v20 = [v19 isEqualToString:v8];

                  if (v20)
                  {
                    v22 = [CKSenderIdentity alloc];
                    v23 = [(CKRecipientSelectionController *)self conversation];
                    v24 = [v23 chat];
                    v25 = [v24 lastAddressedSIMID];
                    v21 = [(CKSenderIdentity *)v22 initWithHandle:v7 simID:v25];

                    v10 = v29;
                    goto LABEL_23;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            v10 = v29;
            v11 = v27;
          }

          v21 = 0;
          v28 = [v29 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v28);
      }

      else
      {
        v21 = 0;
      }

LABEL_23:
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (CKSenderIdentity)selectedSenderIdentity
{
  v53 = *MEMORY[0x1E69E9840];
  if (+[CKSenderIdentity identityTrackingEnabled]|| IMIsRunningInUnitTesting())
  {
    v3 = [MEMORY[0x1E69A7F68] sharedInstance];
    v4 = [v3 ctSubscriptionInfo];
    v5 = [v4 phoneNumbersOfActiveSubscriptions];

    v6 = [(CKRecipientSelectionController *)self conversation];
    v7 = [v6 chat];
    v8 = [v7 lastAddressedHandleID];
    v9 = IMChatCanonicalIDSIDsForAddress();
    v10 = [v9 _stripFZIDPrefix];

    v11 = [(CKRecipientSelectionController *)self conversation];
    v12 = [v11 chat];
    v13 = [v12 lastAddressedHandleID];
    if ((IMStringIsEmail() & 1) == 0 && [v5 containsObject:v10] && IMSharedHelperDeviceHasMultipleActiveSubscriptions() && -[CKComposeRecipientSelectionController hasBackfilledConversation](self, "hasBackfilledConversation"))
    {
      v14 = [(CKComposeRecipientSelectionController *)self recipients];
      v15 = [v14 count];

      if (v15)
      {
        v43 = [MEMORY[0x1E69A7F68] sharedInstance];
        v41 = [v43 ctSubscriptionInfo];
        v42 = [(CKRecipientSelectionController *)self conversation];
        v16 = [v42 chat];
        v17 = [v16 lastAddressedSIMID];
        v18 = [(CKRecipientSelectionController *)self conversation];
        v19 = [v18 chat];
        v20 = [v19 lastAddressedHandleID];
        v21 = [v41 __im_subscriptionContextForForSimID:v17 phoneNumber:v20];

        v22 = [(CKSenderIdentity *)self->_selectedSenderIdentity subscription];

        if (v22 != v21)
        {
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v44 = v21;
              v24 = [(CKRecipientSelectionController *)self conversation];
              v25 = [v24 chat];
              v26 = [v25 lastAddressedHandleID];
              if ([(CKComposeRecipientSelectionController *)self hasBackfilledConversation])
              {
                v27 = @"YES";
              }

              else
              {
                v27 = @"NO";
              }

              v28 = [(CKComposeRecipientSelectionController *)self recipients];
              *buf = 138413058;
              v46 = v26;
              v47 = 2112;
              v48 = v27;
              v49 = 2048;
              v50 = [v28 count];
              v51 = 2112;
              v21 = v44;
              v52 = v44;
              _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Updating subscriptionContext for lastAddressedHandleID = %@, hasBackfilledConversation = %@, recipientCount = %lu to: %@", buf, 0x2Au);
            }
          }

          v29 = [[CKSenderIdentity alloc] initWithSubscriptionContext:v21];
          [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v29];
        }
      }
    }

    else
    {
    }

    v30 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v31 = [v30 isEnhancedFromPickerEnabled];

    if (v31 && !self->_selectedSenderIdentity)
    {
      v32 = [(CKComposeRecipientSelectionController *)self _validSenderIdentityForLastAddressedHandle];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v32];
    }

    selectedSenderIdentity = self->_selectedSenderIdentity;
    if (!selectedSenderIdentity)
    {
      v34 = [(CKComposeRecipientSelectionController *)self _defaultSubscriptionContext];
      v35 = [[CKSenderIdentity alloc] initWithSubscriptionContext:v34];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v35];

      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [(CKComposeRecipientSelectionController *)self hasiMessageableContext];
          v38 = @"NO";
          if (v37)
          {
            v38 = @"YES";
          }

          *buf = 138412546;
          v46 = v34;
          v47 = 2112;
          v48 = v38;
          _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "selectedSubscriptionContext was nil, default context is %@ hasiMessageableContext: %@", buf, 0x16u);
        }
      }

      selectedSenderIdentity = self->_selectedSenderIdentity;
    }

    v39 = selectedSenderIdentity;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (CTXPCServiceSubscriptionContext)selectedSubscriptionContext
{
  v2 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
  v3 = [v2 subscription];

  return v3;
}

- (void)setSelectedSenderIdentity:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(CKSenderIdentity *)self->_selectedSenderIdentity isEqual:v5])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        selectedSenderIdentity = self->_selectedSenderIdentity;
        v34 = 138412546;
        v35 = v5;
        v36 = 2112;
        v37 = selectedSenderIdentity;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Updating selected sender identity to %@ from %@", &v34, 0x16u);
      }
    }

    objc_storeStrong(&self->_selectedSenderIdentity, a3);
    v8 = [v5 simID];
    v9 = [v5 handle];
    if (!v5)
    {
      goto LABEL_20;
    }

    v10 = [(CKRecipientSelectionController *)self conversation];
    v11 = [v10 selectedLastAddressedHandle];
    if (MEMORY[0x193AF6640](v11, v9))
    {
      v12 = [(CKRecipientSelectionController *)self conversation];
      v13 = [v12 selectedLastAddressedSIMID];
      v14 = MEMORY[0x193AF6640](v13, v8);

      v15 = [(CKRecipientSelectionController *)self conversation];
      [v15 setSelectedLastAddressedHandle:v9];

      v16 = [(CKRecipientSelectionController *)self conversation];
      [v16 setSelectedLastAddressedSIMID:v8];

      if (v14)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {

      v17 = [(CKRecipientSelectionController *)self conversation];
      [v17 setSelectedLastAddressedHandle:v9];

      v18 = [(CKRecipientSelectionController *)self conversation];
      [v18 setSelectedLastAddressedSIMID:v8];
    }

    if ([(CKComposeRecipientSelectionController *)self hasBackfilledConversation]&& +[CKSenderIdentity fromPickerEnabled])
    {
      v19 = [MEMORY[0x1E69A5A80] sharedInstance];
      v20 = [v19 iMessageAccountForLastAddressedHandle:v9 simID:v8];

      if (v20)
      {
        v21 = [v20 serviceName];
        v22 = [v21 isEqualToString:*MEMORY[0x1E69A7AF0]];

        if (v22)
        {
          v23 = [(CKRecipientSelectionController *)self conversation];
          v24 = [v23 chat];
          [v24 forceCancelTypingIndicator];
        }
      }

      v25 = [(CKRecipientSelectionController *)self conversation];
      v26 = [v25 chat];
      [v26 setLastAddressedHandleID:v9];

      v27 = [(CKRecipientSelectionController *)self conversation];
      v28 = [v27 chat];
      [v28 setLastAddressedSIMID:v8];

      v29 = [(CKRecipientSelectionController *)self conversation];
      [v29 refreshServiceForSending];

      v30 = [(CKRecipientSelectionController *)self conversation];
      v31 = [v30 chat];
      v32 = [v5 label];
      [v31 updateLineSwitchedTo:v32];
    }

    v33 = [(CKRecipientSelectionController *)self _canonicalRecipientAddresses];
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:v33 withCompletionBlock:0];
    if (![(CKComposeRecipientSelectionController *)self fromFieldIdentityChanged])
    {
      [(CKComposeRecipientSelectionController *)self setFromFieldIdentityChanged:1];
      [(CKComposeRecipientSelectionController *)self _updateFromFieldIfNeeded];
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (id)_defaultSubscriptionContext
{
  if (![(CKComposeRecipientSelectionController *)self hasiMessageableContext]|| ([(CKComposeRecipientSelectionController *)self _defaultSubscriptionContextForiMessage], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [MEMORY[0x1E69A7F68] sharedInstance];
    v5 = [v4 ctSubscriptionInfo];

    v3 = [v5 preferredOrDefaultSubscriptionContext];
  }

  return v3;
}

- (id)_defaultSenderIdentity
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEnhancedFromPickerEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5A80] sharedInstance];
    v6 = [v5 activeIMessageAccount];

    v7 = [v6 displayName];
    if (v7)
    {
      v8 = v7;
      v9 = [[CKSenderIdentity alloc] initWithHandle:v7 simID:0];

      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10 = [CKSenderIdentity alloc];
  v11 = [(CKComposeRecipientSelectionController *)self _defaultSubscriptionContext];
  v9 = [(CKSenderIdentity *)v10 initWithSubscriptionContext:v11];

LABEL_7:

  return v9;
}

- (id)_preferrediMessageAccountName
{
  v2 = [MEMORY[0x1E69A5CA0] iMessageService];
  v3 = IMPreferredAccountForService();
  v4 = [v3 displayName];

  return v4;
}

- (id)_defaultSubscriptionContextForiMessage
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(CKComposeRecipientSelectionController *)self _preferrediMessageAccountName];
  v3 = [MEMORY[0x1E69A7F68] sharedInstance];
  v4 = [v3 ctSubscriptionInfo];
  v5 = [v4 __im_subscriptionContextForPhoneNumber:v2];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Default subscription context for iMessage is %@ accountDisplayName: %@", &v8, 0x16u);
    }
  }

  return v5;
}

- (BOOL)hasiMessageableContext
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A7F68] sharedInstance];
  v3 = [v2 ctSubscriptionInfo];
  v4 = [v3 subscriptions];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
        v10 = [v9 phoneNumber];
        v11 = [v9 labelID];
        if ([MEMORY[0x1E69A5CA0] iMessageEnabledForSenderLastAddressedHandle:v10 simID:v11])
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v21 = v10;
              v22 = 2112;
              v23 = v11;
              _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "At least one subscription is iMessage-capable with phoneNumber: %@ simID: %@", buf, 0x16u);
            }
          }

          v13 = 1;
          goto LABEL_19;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "No subscription is iMessage-capable", buf, 2u);
    }
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (NSString)selectedLastAddressedOrDefaultHandle
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEnhancedFromPickerEnabled];

  if (v4)
  {
    v5 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    v6 = [v5 handle];
  }

  else
  {
    v7 = [(CKComposeRecipientSelectionController *)self hasiMessageableContext];
    v8 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    if (v7 && (-[CKRecipientSelectionController conversation](self, "conversation"), v9 = objc_claimAutoreleasedReturnValue(), [v9 sendingService], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69A5C90], "iMessageService"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v10 == v11))
    {
      v15 = [(CKComposeRecipientSelectionController *)self _preferrediMessageAccountName];
      if ((IMStringIsEmail() & 1) != 0 || !v8)
      {
        v6 = v15;
      }

      else
      {
        v6 = [v8 handle];
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = 138412546;
            v18 = v6;
            v19 = 2112;
            v20 = v15;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Using selected subscription phone number %@ instead of %@", &v17, 0x16u);
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }

    if (!v6 && v8)
    {
      v6 = [v8 handle];
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        v17 = 138412802;
        v18 = v6;
        v19 = 2112;
        if (v7)
        {
          v13 = @"YES";
        }

        v20 = v13;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "selectedLastAddressedHandle: %@ hasiMessageableContext: %@ selectedSenderIdentity: %@", &v17, 0x20u);
      }
    }
  }

  return v6;
}

- (void)_layoutFromFieldShouldHide:(BOOL)a3
{
  v55[5] = *MEMORY[0x1E69E9840];
  if (CKIsRunningInMacCatalyst())
  {
    [MEMORY[0x1E6996398] defaultHeight];
    v6 = v5;
  }

  else
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 toFieldPreferredHeight];
    v6 = v8;
  }

  v9 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v9 frame];
  v11 = v10;
  v12 = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [v12 frame];
  v14 = v13;
  v15 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [v15 frame];
  v17 = v16;

  v18 = [(CKRecipientSelectionController *)self fromFieldContainerView];
  [v18 setFrame:{v11, v14, v17, v6}];

  if (!self->_simSelectionFieldView)
  {
    v19 = objc_alloc_init(CKSIMSelectionFieldView);
    [(CKSIMSelectionFieldView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(CKRecipientSelectionController *)self toField];
    v21 = [v20 baseFont];
    [(CKSIMSelectionFieldView *)v19 setPreferredFont:v21];

    [(CKSIMSelectionFieldView *)v19 setSubscriptionButtonDelegate:self];
    v22 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    [v22 addSubview:v19];

    simSelectionFieldView = self->_simSelectionFieldView;
    self->_simSelectionFieldView = v19;
    v24 = v19;

    v43 = MEMORY[0x1E696ACD8];
    v52 = [(CKSIMSelectionFieldView *)v24 topAnchor];
    v53 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    v51 = [v53 topAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v55[0] = v50;
    v48 = [(CKSIMSelectionFieldView *)v24 bottomAnchor];
    v49 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    v47 = [v49 bottomAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v55[1] = v46;
    v44 = [(CKSIMSelectionFieldView *)v24 leadingAnchor];
    v45 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    v42 = [v45 leadingAnchor];
    v41 = [v44 constraintEqualToAnchor:v42];
    v55[2] = v41;
    v39 = [(CKSIMSelectionFieldView *)v24 trailingAnchor];
    v40 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    v38 = [v40 trailingAnchor];
    v25 = [v39 constraintEqualToAnchor:v38];
    v55[3] = v25;
    v26 = [(CKSIMSelectionFieldView *)v24 viewForAlignment];
    v27 = [v26 leadingAnchor];
    v28 = [(CKRecipientSelectionController *)self toField];
    [v28 textView];
    v29 = v54 = a3;
    v30 = [v29 leadingAnchor];
    v31 = [v27 constraintEqualToAnchor:v30];
    v55[4] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
    [v43 activateConstraints:v32];

    a3 = v54;
  }

  v33 = [(CKComposeRecipientSelectionController *)self menuForSubscriptionSelector];
  v34 = [(CKComposeRecipientSelectionController *)self simSelectionFieldView];
  [v34 setSubscriptionSelectionMenu:v33];

  v35 = a3 || [(CKComposeRecipientSelectionController *)self shouldHideFromField];
  v36 = [(CKRecipientSelectionController *)self fromFieldContainerView];
  [v36 setHidden:v35];

  v37 = [(CKRecipientSelectionController *)self delegate];
  [v37 recipientSelectionControllerDidLoadFromField];
}

- (double)fromFieldHeight
{
  if ([(CKComposeRecipientSelectionController *)self shouldHideFromField])
  {
    return 0.0;
  }

  v3 = [(CKRecipientSelectionController *)self fromFieldContainerView];
  [v3 frame];
  v5 = v4;

  if (v5 <= 0.0)
  {
    return 0.0;
  }

  return v5;
}

- (double)selectionFieldsHeight
{
  v7.receiver = self;
  v7.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v7 selectionFieldsHeight];
  v4 = v3;
  [(CKComposeRecipientSelectionController *)self fromFieldHeight];
  return v4 + v5;
}

- (double)glassPlatterCornerRadius
{
  if ([(CKComposeRecipientSelectionController *)self shouldHideFromField]|| ![(CKRecipientSelectionController *)self isSearchResultsHidden])
  {
    v7.receiver = self;
    v7.super_class = CKComposeRecipientSelectionController;
    [(CKRecipientSelectionController *)&v7 glassPlatterCornerRadius];
  }

  else
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 newComposeRoundedRectPlatterCornerRadius];
    v5 = v4;

    return v5;
  }

  return result;
}

- (id)menuForSubscriptionSelector
{
  objc_initWeak(&location, self);
  v3 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CKComposeRecipientSelectionController_menuForSubscriptionSelector__block_invoke;
  v6[3] = &unk_1E72EF9F8;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v4 = [CKSenderIdentity identitySwitcherMenuWithSelectedIdentity:v3 selectIdentity:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

void __68__CKComposeRecipientSelectionController_menuForSubscriptionSelector__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) selectedSenderIdentity];
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Selected new subscription info is now %@ from %@", &v8, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSelectedSenderIdentity:v3];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setHasUserSetContextPreference:1];
}

- (void)CKComposeSubscriptionSelectorButtonWasTapped:(id)a3
{
  v4 = a3;
  v5 = +[CKSenderIdentity senderIdentitiesForFromPicker];
  if (![v5 count])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "No subscription info found, hiding container view", v8, 2u);
      }
    }

    v7 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    [v7 setHidden:1];

    [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:0];
  }
}

- (void)_lastAddressedHandleChangedNotification:(id)a3
{
  if (+[CKSenderIdentity fromPickerEnabled])
  {
    [(CKComposeRecipientSelectionController *)self setFromFieldIdentityChanged:1];

    [(CKComposeRecipientSelectionController *)self _updateContentsOfFromField];
  }
}

- (void)_updateFromFieldIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
  v4 = [(CKComposeRecipientSelectionController *)self shouldHideFromField];
  v5 = [(CKRecipientSelectionController *)self fromFieldContainerView];
  if (v4 | (([v5 isHidden] & 1) == 0))
  {
    v6 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    v7 = ([v6 isHidden] ^ 1) & v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(CKComposeRecipientSelectionController *)self simSelectionFieldView];
  v9 = [v8 currentTheme];
  v10 = [(CKComposeRecipientSelectionController *)self _fromFieldThemeForCurrentService];

  if ((([(CKComposeRecipientSelectionController *)self fromFieldIdentityChanged]| v7) & 1) != 0 || v9 != v10)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        if (v4)
        {
          v12 = @"YES";
        }

        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Updating From field - hideFromField %@ selectedSenderIdentity %@", &v15, 0x16u);
      }
    }

    if (v4)
    {
      v13 = [(CKComposeRecipientSelectionController *)self simSelectionFieldView];
      [v13 dismissContextMenu];
    }

    else
    {
      [(CKComposeRecipientSelectionController *)self _updateContentsOfFromField];
    }

    v14 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    [v14 setHidden:v4];

    [(CKComposeRecipientSelectionController *)self setFromFieldIdentityChanged:0];
  }
}

- (id)recipients
{
  v2 = [(CKRecipientSelectionController *)self toField];
  v3 = [v2 recipients];

  return v3;
}

- (BOOL)hasBackfilledConversation
{
  v2 = [(CKRecipientSelectionController *)self conversation];
  v3 = [v2 groupID];
  v4 = v3 != 0;

  return v4;
}

- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v4 _fieldContainerHeightForNumberOfRows:([(CKComposeRecipientSelectionController *)self shouldHideFromField]^ 1) + a3];
  return result;
}

- (BOOL)shouldHideFromField
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(CKComposeRecipientSelectionController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 interfaceOrientation] - 3;

  if (v6 < 2)
  {
    return 1;
  }

  v8 = [(CKComposeRecipientSelectionController *)self recipients];
  v9 = [v8 count];

  v10 = [(CKRecipientSelectionController *)self isSearchResultsHidden];
  HasMultipleActiveSubscriptions = IMSharedHelperDeviceHasMultipleActiveSubscriptions();
  v12 = [(CKComposeRecipientSelectionController *)self hasBackfilledConversation];
  if (!+[CKSenderIdentity fromPickerEnabled]|| !v9 || !v10)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = @"NO";
        if (HasMultipleActiveSubscriptions)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v17 = 138413058;
        v18 = v15;
        if (v12)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        v19 = 2112;
        v20 = v16;
        v21 = 2048;
        if (!v10)
        {
          v14 = @"YES";
        }

        v22 = v9;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Should hide fromField, hasMultipleActiveSubscriptions = %@, hasBackfilledConversation = %@, recipientCount = %lu, isSearchActive = %@", &v17, 0x2Au);
      }
    }

    return 1;
  }

  return 0;
}

- (void)_updateContentsOfFromField
{
  v7 = [(CKComposeRecipientSelectionController *)self simSelectionFieldView];
  v3 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
  if (v7 && v3)
  {
    v4 = [v3 label];
    v5 = [v3 shortName];
    [v7 updateContentsWithTitle:v4 badgeText:v5 theme:{-[CKComposeRecipientSelectionController _fromFieldThemeForCurrentService](self, "_fromFieldThemeForCurrentService")}];

    v6 = [(CKComposeRecipientSelectionController *)self menuForSubscriptionSelector];
    [v7 setSubscriptionSelectionMenu:v6];
  }
}

- (unint64_t)_fromFieldThemeForCurrentService
{
  v2 = [(CKRecipientSelectionController *)self conversation];
  v3 = [v2 sendingService];
  v4 = [v3 __ck_isMadrid];

  if (v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (NSArray)expandedRecipients
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(CKRecipientSelectionController *)self toField];
  v5 = [v4 recipients];
  v6 = [v3 initWithCapacity:{objc_msgSend(v5, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(CKRecipientSelectionController *)self toField];
  v8 = [v7 recipients];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isGroup])
        {
          v14 = [v13 children];
          [v6 addObjectsFromArray:v14];
        }

        else
        {
          [v6 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v6;
}

- (NSArray)proposedRecipients
{
  v3 = [(CKComposeRecipientSelectionController *)self recipients];
  if (!v3)
  {
    v4 = [(CKRecipientSelectionController *)self toField];
    v5 = [v4 text];

    if ([v5 length])
    {
      v6 = MEMORY[0x1E695DEC8];
      v7 = +[CKRecipientGenerator sharedRecipientGenerator];
      v8 = [v7 recipientWithAddress:v5];
      v3 = [v6 arrayWithObject:v8];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_atomizeToConversationNameIfNecessary:(unint64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(CKComposeRecipientSelectionController *)self shouldAtomizeToConversationName];
  if (a3 && v5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [(CKRecipientSelectionController *)self toField];
    v7 = [v6 recipients];

    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if ([(CKRecipientSelectionController *)self _recipientIsGroup:v12])
          {
            v13 = [(CKRecipientSelectionController *)self toField];
            [v13 removeRecipient:v12];

            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v14 = [(CKRecipientSelectionController *)self _expandedRecipientsForGroupRecipient:v12];
            v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v23;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v23 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v22 + 1) + 8 * j);
                  v20 = [(CKRecipientSelectionController *)self toField];
                  [v20 addRecipient:v19];
                }

                v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v16);
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }
  }
}

- (void)addRecipient:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!+[CKSenderIdentity identityTrackingEnabled])
  {
    [(CKComposeRecipientSelectionController *)self _legacyAddRecipient:v4];
    goto LABEL_28;
  }

  if (![(CKComposeRecipientSelectionController *)self _hasExistingConversationWithAddedRecipient:v4])
  {
    v22 = [(CKComposeRecipientSelectionController *)self _bestSenderIdentityForRecipient:v4];
    v5 = [(CKRecipientSelectionController *)self toField];
    v6 = [v5 recipients];
    v7 = [v6 count];

    v23 = [(CKRecipientSelectionController *)self conversation];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__61;
    v33[4] = __Block_byref_object_dispose__61;
    v34 = 0;
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v9 = [v4 IDSCanonicalAddress];
    if (v9)
    {
      [v8 addObject:v9];
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__CKComposeRecipientSelectionController_addRecipient___block_invoke;
    v29[3] = &unk_1E72F6920;
    v32 = v7 == 0;
    v31 = v33;
    v29[4] = self;
    v10 = v4;
    v30 = v10;
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:v8 withCompletionBlock:v29];
    if (!v7)
    {
      v28.receiver = self;
      v28.super_class = CKComposeRecipientSelectionController;
      [(CKRecipientSelectionController *)&v28 addRecipient:v10];
LABEL_27:

      _Block_object_dispose(v33, 8);
      goto LABEL_28;
    }

    v11 = [(CKComposeRecipientSelectionController *)self selectedSubscriptionContext];
    v12 = v11 == 0;

    if (v12)
    {
      if (v23)
      {
        v13 = [CKSenderIdentity alloc];
        v14 = [v23 lastAddressedSIMID];
        v15 = [v23 lastAddressedHandle];
        v16 = [(CKComposeRecipientSelectionController *)self _subscriptionContextForSimID:v14 phoneNumber:v15];
        v17 = [(CKSenderIdentity *)v13 initWithSubscriptionContext:v16];
        [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v17];
      }

      else
      {
        if (!v22)
        {
          goto LABEL_15;
        }

        v14 = [[CKSenderIdentity alloc] initWithTUSenderIdentity:v22];
        [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v14];
      }
    }

LABEL_15:
    [(CKComposeRecipientSelectionController *)self _atomizeToConversationNameIfNecessary:v7];
    v18 = [(CKComposeRecipientSelectionController *)self presentedViewController];

    if (v18)
    {
      [(CKComposeRecipientSelectionController *)self setFirstAppear:1];
      v27.receiver = self;
      v27.super_class = CKComposeRecipientSelectionController;
      [(CKRecipientSelectionController *)&v27 addRecipient:v10];
      [(CKComposeRecipientSelectionController *)self performSelector:sel_presentAlertForSubscriptionContext withObject:0 afterDelay:0.5];
    }

    else
    {
      v19 = [(CKComposeRecipientSelectionController *)self selectedSubscriptionContext];
      v20 = v19;
      if (!v22 || v19 && [MEMORY[0x1E69A8230] isTUSenderIdentity:v22 equalToSubscriptionContext:v19])
      {
        v26.receiver = self;
        v26.super_class = CKComposeRecipientSelectionController;
        [(CKRecipientSelectionController *)&v26 addRecipient:v10];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v37 = v10;
            v38 = 2112;
            v39 = v22;
            v40 = 2112;
            v41 = v20;
            _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Presenting context selection alert. Best identity for recipient %@ is %@. Current context is %@", buf, 0x20u);
          }
        }

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __54__CKComposeRecipientSelectionController_addRecipient___block_invoke_164;
        v24[3] = &unk_1E72F6948;
        v24[4] = self;
        v25 = v10;
        [(CKComposeRecipientSelectionController *)self presentContextSelectionAlertWithCompletion:v24];
      }
    }

    goto LABEL_27;
  }

  v35.receiver = self;
  v35.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v35 addRecipient:v4];
LABEL_28:
}

void __54__CKComposeRecipientSelectionController_addRecipient___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _updateSubscriptionContextForRecipient:*(a1 + 40) preferredService:*(*(*(a1 + 48) + 8) + 40)];
  }

  [*(a1 + 32) _updateFromFieldIfNeeded];
}

void __54__CKComposeRecipientSelectionController_addRecipient___block_invoke_164(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = IMOSLoggingEnabled();
    if (v5)
    {
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [*(a1 + 32) selectedSenderIdentity];
          *buf = 138412546;
          v13 = v5;
          v14 = 2112;
          v15 = v8;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Selected new subscription info is now %@ from %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) setSelectedSenderIdentity:v5];
      [*(a1 + 32) setHasUserSetContextPreference:1];
    }

    else
    {
      if (v6)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "No subscription info found", buf, 2u);
        }
      }

      [*(a1 + 32) setSelectedSenderIdentity:0];
    }

    v10 = *(a1 + 40);
    v11.receiver = *(a1 + 32);
    v11.super_class = CKComposeRecipientSelectionController;
    objc_msgSendSuper2(&v11, sel_addRecipient_, v10);
  }
}

- (void)_updateSubscriptionContextForRecipient:(id)a3 preferredService:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69A7FD0];
  v8 = [v21 contact];
  LODWORD(v7) = [v7 isCNContactAKnownContact:v8];

  if (v7)
  {
    v9 = [(CKComposeRecipientSelectionController *)self _contactPreferredSenderIdentityForRecipient:v21];
    v10 = [MEMORY[0x1E69A7F68] sharedInstance];
    v11 = [v10 ctSubscriptionInfo];
    v12 = [v11 __im_subscriptionContextForSenderIdentity:v9];

    if (v9)
    {
      v13 = [[CKSenderIdentity alloc] initWithSubscriptionContext:v12];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v13];

      [(CKComposeRecipientSelectionController *)self setContactPreferredContextSelected:1];
    }

    else
    {
      v19 = [MEMORY[0x1E69A5CA0] iMessageService];

      if (v19 == v6)
      {
        v20 = [(CKComposeRecipientSelectionController *)self _defaultSenderIdentity];
        [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v20];
      }
    }
  }

  else
  {
    v14 = [MEMORY[0x1E69A5CA0] iMessageService];

    if (v14 == v6)
    {
      v9 = [(CKComposeRecipientSelectionController *)self _defaultSenderIdentity];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v9];
    }

    else
    {
      v9 = [(CKComposeRecipientSelectionController *)self _bestSenderIdentityForRecipient:v21];
      v15 = [MEMORY[0x1E69A7F68] sharedInstance];
      v16 = [v15 ctSubscriptionInfo];
      v17 = [v16 __im_subscriptionContextForSenderIdentity:v9];

      v18 = [[CKSenderIdentity alloc] initWithSubscriptionContext:v17];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v18];
    }
  }
}

- (id)_subscriptionContextForSimID:(id)a3 phoneNumber:(id)a4
{
  v5 = MEMORY[0x1E69A7F68];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstance];
  v9 = [v8 ctSubscriptionInfo];
  v10 = [v9 __im_subscriptionContextForForSimID:v7 phoneNumber:v6];

  return v10;
}

- (void)_legacyAddRecipient:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKComposeRecipientSelectionController *)self shouldAtomizeToConversationName])
  {
    v5 = [(CKRecipientSelectionController *)self toField];
    v6 = [v5 recipients];
    v7 = [v6 count];

    if (v7)
    {
      v23 = v4;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = [(CKRecipientSelectionController *)self toField];
      v9 = [v8 recipients];

      obj = v9;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v30 + 1) + 8 * i);
            if ([(CKRecipientSelectionController *)self _recipientIsGroup:v14])
            {
              v15 = [(CKRecipientSelectionController *)self toField];
              [v15 removeRecipient:v14];

              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              v16 = [(CKRecipientSelectionController *)self _expandedRecipientsForGroupRecipient:v14];
              v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v27;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v27 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = *(*(&v26 + 1) + 8 * j);
                    v22 = [(CKRecipientSelectionController *)self toField];
                    [v22 addRecipient:v21];
                  }

                  v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
                }

                while (v18);
              }
            }
          }

          v11 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v11);
      }

      v4 = v23;
    }
  }

  v25.receiver = self;
  v25.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v25 addRecipient:v4];
}

- (void)atomizeAndInvokeBlock:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKRecipientSelectionController *)self toField];
  v6 = [v5 finishEnteringRecipient];

  v7 = [(CKRecipientSelectionController *)self toField];
  v8 = [v7 recipients];
  if ([v8 count] == 1)
  {
    v9 = [(CKRecipientSelectionController *)self toField];
    v10 = [v9 recipients];
    v11 = [v10 firstObject];
    v12 = [v11 isGroup] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = ![(CKComposeRecipientSelectionController *)self homogenizePreferredServiceForiMessage]& v12;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v33 = v13;
      v34 = 1024;
      v35 = v6;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Calling atomizeAndInvokeBlock with deferSend = %d, addedRecipient = %d", buf, 0xEu);
    }
  }

  v15 = IMOSLoggingEnabled();
  if ((v13 | v6 ^ 1))
  {
    if (v15)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Perform block.", buf, 2u);
      }
    }

    v4[2](v4);
  }

  else
  {
    if (v15)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Added recipient and send not deferred", buf, 2u);
      }
    }

    v18 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = *v28;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v27 + 1) + 8 * i);
          if (![(CKRecipientSelectionController *)self isGameCenterRecipient:v24])
          {
            v25 = [v24 IDSCanonicalAddress];
            if (v25)
            {
              [v19 addObject:v25];
            }
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63__CKComposeRecipientSelectionController_atomizeAndInvokeBlock___block_invoke;
    v26[3] = &unk_1E72F6970;
    v26[4] = self;
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:v19 withCompletionBlock:v26];
    [(CKComposeRecipientSelectionController *)self setSendBlock:v4];
    [(CKComposeRecipientSelectionController *)self performSelector:sel_atomizeAndSendTimeoutHandler withObject:0 afterDelay:0.5];
  }
}

uint64_t __63__CKComposeRecipientSelectionController_atomizeAndInvokeBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = result;
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(result + 32) selector:sel_atomizeAndSendTimeoutHandler object:0];
    v5 = *(v4 + 32);

    return [v5 atomizeAndSendTimeoutHandler];
  }

  return result;
}

- (void)atomizeAndSendTimeoutHandler
{
  v3 = [(CKComposeRecipientSelectionController *)self sendBlock];

  if (v3)
  {
    v4 = [(CKComposeRecipientSelectionController *)self sendBlock];
    v4[2]();

    [(CKComposeRecipientSelectionController *)self setSendBlock:0];
  }
}

- (id)_bestSenderIdentityForRecipient:(id)a3
{
  v3 = MEMORY[0x1E69A7FD0];
  v4 = a3;
  v5 = [v3 keysForCNContact];
  v6 = [v4 contactWithKeysToFetch:v5];

  v7 = [MEMORY[0x1E69A8230] sharedInstance];
  v8 = [v4 normalizedAddress];

  v9 = [v7 bestSenderIdentityForHandleID:v8 contact:v6];

  return v9;
}

- (id)_contactPreferredSenderIdentityForRecipient:(id)a3
{
  v3 = MEMORY[0x1E69A7FD0];
  v4 = a3;
  v5 = [v3 keysForCNContact];
  v6 = [v4 contactWithKeysToFetch:v5];

  v7 = [MEMORY[0x1E69A8230] sharedInstance];
  v8 = [v4 normalizedAddress];

  v9 = [v7 contactPreferredSenderIdentityForHandleID:v8 contact:v6];

  return v9;
}

- (void)presentContextSelectionAlertWithCompletion:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v31 = +[CKSenderIdentity senderIdentitiesForFromPicker];
  if (+[CKSenderIdentity conflictResolutionEnabled](CKSenderIdentity, "conflictResolutionEnabled") && [v31 count])
  {
    v3 = MEMORY[0x1E69DC650];
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"COMPOSE_TO_MULTIPLE_RECIPIENTS_DIFFERENT_SENDER_IDENTITIES_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v6 = [v3 alertControllerWithTitle:v5 message:0 preferredStyle:0];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = v31;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Identities for disambiguation: %@", buf, 0xCu);
      }
    }

    v41 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    obj = v31;
    v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v8)
    {
      v9 = *v39;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          v12 = [v11 isiMessageEnabled];
          v13 = MEMORY[0x1E696AEC0];
          v14 = CKFrameworkBundle();
          v15 = v14;
          if (v12)
          {
            v16 = @"COMPOSE_TO_MULTIPLE_RECIPIENTS_SELECT_SENDER_IDENTITY_%@";
          }

          else
          {
            v16 = @"COMPOSE_TO_MULTIPLE_RECIPIENTS_SELECT_SENDER_IDENTITY_TEXT_MESSAGE_%@";
          }

          v17 = [v14 localizedStringForKey:v16 value:&stru_1F04268F8 table:@"ChatKit"];
          v18 = [v11 label];
          v19 = [v13 stringWithFormat:v17, v18];

          v20 = [MEMORY[0x1E69DC668] sharedApplication];
          LODWORD(v17) = [v20 userInterfaceLayoutDirection] == 1;

          if (v17)
          {
            v21 = @"\u200F";
          }

          else
          {
            v21 = @"\u200E";
          }

          v22 = [(__CFString *)v21 stringByAppendingString:v19];

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __84__CKComposeRecipientSelectionController_presentContextSelectionAlertWithCompletion___block_invoke;
          aBlock[3] = &unk_1E72F35C8;
          v23 = v33;
          aBlock[4] = v11;
          v37 = v23;
          v24 = _Block_copy(aBlock);
          v25 = [MEMORY[0x1E69DC648] actionWithTitle:v22 style:0 handler:v24];
          [v6 addAction:v25];
        }

        v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v8);
    }

    v26 = MEMORY[0x1E69DC648];
    v27 = CKFrameworkBundle();
    v28 = [v27 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __84__CKComposeRecipientSelectionController_presentContextSelectionAlertWithCompletion___block_invoke_2;
    v34[3] = &unk_1E72EC218;
    v35 = v33;
    v29 = [v26 actionWithTitle:v28 style:1 handler:v34];

    [v6 addAction:v29];
    [(CKComposeRecipientSelectionController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    (*(v33 + 2))(v33, 1, 0);
  }
}

- (void)reset
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "resetting", buf, 2u);
    }
  }

  v5.receiver = self;
  v5.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v5 reset];
  v4 = +[CKConversation newPendingConversation];
  [(CKRecipientSelectionController *)self setConversation:v4];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_atomizeAndInvokeTimeoutHandler object:0];
  [(CKComposeRecipientSelectionController *)self setSendBlock:0];
}

- (void)recipientSelectionControllerDidChange
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "recipientSelectionControllerDidChange", buf, 2u);
    }
  }

  [(CKComposeRecipientSelectionController *)self _updateBackfillForNewRecipients];
  [(CKComposeRecipientSelectionController *)self _updateFromFieldIfNeeded];
  v4.receiver = self;
  v4.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v4 recipientSelectionControllerDidChange];
}

- (BOOL)homogenizePreferredServiceForiMessage
{
  v2 = [MEMORY[0x1E69A5CA0] smsEnabled];
  if (v2)
  {
    v3 = MEMORY[0x1E69A7F58];

    LOBYTE(v2) = [v3 isMessagesTheDefaultTextApp];
  }

  return v2;
}

- (BOOL)shouldSuppressSearchResultsTable
{
  v2 = [(CKRecipientSelectionController *)self toField];
  v3 = [v2 text];
  v4 = [v3 length] == 0;

  return v4;
}

- (void)conversationPreferredServiceDidChange
{
  if (+[CKSenderIdentity fromPickerEnabled])
  {
    [(CKComposeRecipientSelectionController *)self setFromFieldIdentityChanged:1];

    [(CKComposeRecipientSelectionController *)self _updateFromFieldIfNeeded];
  }
}

- (BOOL)_hasExistingConversationWithAddedRecipient:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
  [v5 startTimingForKey:@"_hasExistingConversationWithAddedRecipient"];

  if (CKIsRunningInMessagesViewService())
  {
    v6 = !CKIsScreenLocked();
  }

  else
  {
    v6 = 1;
  }

  v7 = 0;
  if (v4 && v6)
  {
    v8 = [(CKRecipientSelectionController *)self toField];
    v9 = [v8 recipients];
    v10 = [v9 arrayByAddingObject:v4];

    if ([v10 count] == 1 && (objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[CKRecipientSelectionController _recipientIsGroup:](self, "_recipientIsGroup:", v11), v11, v12))
    {
      v7 = 1;
    }

    else
    {
      v13 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
      v14 = [v13 arrayByAddingObject:v4];

      v15 = [(CKComposeRecipientSelectionController *)self _handlesForRecipients:v14];
      v16 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v17 = [v16 existingChatWithHandles:v15 allowAlternativeService:1 groupID:0 displayName:0 joinedChatsOnly:1];

      v18 = [(CKComposeRecipientSelectionController *)self conversationList];
      v19 = [v18 conversationForExistingChat:v17];

      v7 = v19 != 0;
      v10 = v14;
    }
  }

  v20 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
  [v20 stopTimingForKey:@"_hasExistingConversationWithAddedRecipient"];

  return v7;
}

- (BOOL)shouldInvalidateIDSRequests
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CKRecipientSelectionController *)self toField];
  v3 = [v2 recipients];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) address];

        if (!v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (id)autocompleteResultIdentifier:(id)a3
{
  v3 = [a3 autocompleteResult];
  v4 = [v3 identifier];

  return v4;
}

- (id)conversationGUIDForRecipient:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 conversationGUID];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isGroup])
  {
    v5 = [(CKComposeRecipientSelectionController *)self autocompleteResultIdentifier:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_pendingConversationForExistingChatWithGUIDUsingRecipientLookupFallback:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (CKIsRunningInMessagesViewService() && CKIsScreenLocked())
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Not looking up conversations for backfill while device is passcode locked", &v21, 2u);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v6 = [(CKRecipientSelectionController *)self toField];
  v7 = [v6 recipients];
  v8 = [v7 count];

  if (!v4 && !v8)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Conversation look up will fail with no recipients and no conversation guid. Early returning.", &v21, 2u);
      }

      goto LABEL_12;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_24;
  }

  if (!v4 || (-[CKComposeRecipientSelectionController conversationList](self, "conversationList"), v10 = objc_claimAutoreleasedReturnValue(), [v10 conversationForExistingChatWithGUID:v4], v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v12 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
    v13 = [(CKComposeRecipientSelectionController *)self _handlesForRecipients:v12];
    if (CKHasBlackholeEnabledOrHasBlackholeChats())
    {
      v14 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v15 = [v14 unblackholeAndLoadChatWithIMHandles:v13];
    }

    v16 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v17 = [v16 existingChatWithHandles:v13 allowAlternativeService:1 groupID:0 displayName:0 joinedChatsOnly:1 findMatchingNamedGroups:0];

    v18 = [(CKComposeRecipientSelectionController *)self conversationList];
    v11 = [v18 conversationForExistingChat:v17];

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = 138412802;
        v22 = v4;
        v23 = 2112;
        v24 = v11;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Unable to find conversation for existing chat with GUID: %@. Using recipient lookup fallback and found conversation: %@ (handles: %@)", &v21, 0x20u);
      }
    }
  }

  [(CKComposeRecipientSelectionController *)self _recoverConversationIfJunk:v11];
  v9 = [v11 copyForPendingConversation];

LABEL_24:

  return v9;
}

- (BOOL)_updateBackfillForNewRecipients
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
  [v3 startTimingForKey:@"_updateBackfillForNewRecipients"];

  v4 = [(CKRecipientSelectionController *)self toField];
  [v4 clearText];

  v5 = [(CKRecipientSelectionController *)self searchListController];
  [v5 cancelSearch];

  v6 = [(CKRecipientSelectionController *)self searchListController];
  v7 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
  [v6 setEnteredRecipients:v7];

  v8 = [(CKRecipientSelectionController *)self searchListController];
  v9 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
  [v8 setSuppressGroupSuggestions:{objc_msgSend(v9, "count") != 0}];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v10 = [(CKRecipientSelectionController *)self toField];
  v11 = [v10 recipients];

  v12 = [v11 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v12)
  {
    v13 = *v67;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v67 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = [(CKComposeRecipientSelectionController *)self conversationGUIDForRecipient:*(*(&v66 + 1) + 8 * v14)];
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v15 = 0;
  }

  v59 = v15;

  v61 = [(CKComposeRecipientSelectionController *)self _pendingConversationForExistingChatWithGUIDUsingRecipientLookupFallback:v59];
  if (v61)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v61 chat];
        v18 = [v17 guid];
        *buf = 138412546;
        v72 = v18;
        v73 = 2112;
        v74 = v59;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Found backfill conversation %@ for conversationGUID: %@", buf, 0x16u);
      }
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v19 = [(CKComposeRecipientSelectionController *)self recipients];
    v20 = [v19 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v20)
    {
      v21 = *v63;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v63 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v62 + 1) + 8 * i);
          v24 = [(CKRecipientSelectionController *)self toField];
          v25 = [v24 atomViewForRecipient:v23];

          if (v25 && [v25 presentationOptions] == 4)
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v72 = v23;
                _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "invalidating previously set pending presentation option for recipient: %@)", buf, 0xCu);
              }
            }

            v27 = [(CKRecipientSelectionController *)self toField];
            [v27 invalidateAtomPresentationOptionsForRecipient:v23];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v20);
    }

    v28 = v61;
  }

  else
  {
    v28 = +[CKConversation newPendingConversation];
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CKComposeRecipientSelectionController *)v59 _updateBackfillForNewRecipients];
    }
  }

  if (+[CKSenderIdentity identityTrackingEnabled])
  {
    v29 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    v30 = [v29 handle];
    v31 = IMChatCanonicalIDSIDsForAddress();

    v32 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    v33 = [v32 simID];

    [v28 setSelectedLastAddressedHandle:v31];
    [v28 setSelectedLastAddressedSIMID:v33];
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v72 = v31;
        v73 = 2112;
        v74 = v33;
        _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Update backfill for new recipients selectedLastAddressedHandle: %@ selectedLastAddressedSIMD: %@", buf, 0x16u);
      }
    }
  }

  v35 = [(CKRecipientSelectionController *)self conversation];
  v36 = [v35 sendingService];
  [v28 setPreviousSendingService:v36];

  [v28 setForceMMS:{-[CKRecipientSelectionController forceMMS](self, "forceMMS")}];
  v37 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
  [v28 setPendingComposeRecipients:v37];

  v38 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
  if ([v38 count] == 1)
  {
    v39 = [v38 objectAtIndex:0];
    v40 = [(CKComposeRecipientSelectionController *)self recipientIsiMessagable:v39];
  }

  else
  {
    v40 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [v28 chat];
      v43 = [v42 guid];
      v44 = [v28 recipients];
      v45 = [v44 count];
      *buf = 138412546;
      v72 = v43;
      v73 = 2048;
      v74 = v45;
      _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Selecting conversation guid={%@} recipientCount={%lu} after backfill attempt.", buf, 0x16u);
    }
  }

  v46 = [(CKRecipientSelectionController *)self delegate];
  [v46 recipientSelectionController:self didSelectConversation:v28 isiMessagable:v40];

  if ([(CKComposeRecipientSelectionController *)self shouldInvalidateIDSRequests])
  {
    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v47, OS_LOG_TYPE_INFO, "Invalidate IDS results since we have resolved all the requests for recipients in to field.", buf, 2u);
      }
    }

    [(CKRecipientSelectionController *)self invalidateOutstandingIDStatusRequests];
  }

  [(CKRecipientSelectionController *)self setConversation:v28];
  if (![(CKComposeRecipientSelectionController *)self hasUserSetContextPreference])
  {
    selectedSenderIdentity = self->_selectedSenderIdentity;
    self->_selectedSenderIdentity = 0;

    v49 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    [(CKComposeRecipientSelectionController *)self _updateFromFieldIfNeeded];
  }

  if (!-[CKComposeRecipientSelectionController contactPreferredContextSelected](self, "contactPreferredContextSelected") || (-[CKRecipientSelectionController conversation](self, "conversation"), v50 = objc_claimAutoreleasedReturnValue(), [v50 sendingService], v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69A5CA0], "smsService"), v52 = objc_claimAutoreleasedReturnValue(), v53 = v51 == v52, v52, v51, v50, !v53))
  {
    v54 = [(CKRecipientSelectionController *)self conversation];
    v55 = [v54 handles];
    v56 = [v55 __imArrayByApplyingBlock:&__block_literal_global_228];

    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:v56 withCompletionBlock:0];
  }

  v57 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
  [v57 stopTimingForKey:@"_updateBackfillForNewRecipients"];

  [MEMORY[0x1E69A6170] logTimingCollectionForKey:@"CKBackfillTimingKey"];
  [MEMORY[0x1E69A6170] invalidateGlobalTimingCollectionForKey:@"CKBackfillTimingKey"];

  return v61 != 0;
}

id __72__CKComposeRecipientSelectionController__updateBackfillForNewRecipients__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  v3 = IMChatCanonicalIDSIDsForAddress();

  return v3;
}

- (void)_recoverConversationIfJunk:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 chat];
  if ([v4 isFiltered] != 2)
  {
    goto LABEL_4;
  }

  v5 = IMIsOscarEnabled();

  if (v5)
  {
    v4 = +[CKConversationList sharedConversationList];
    v7[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v4 recoverJunkMessagesInConversations:v6];

LABEL_4:
  }
}

- (BOOL)recipientIsiMessagable:(id)a3
{
  v4 = a3;
  v5 = [v4 normalizedAddress];
  v6 = [v4 IDSCanonicalAddressForAddress:v5];

  v7 = [(CKRecipientSelectionController *)self searchListController];
  v8 = [v7 idsStatusForAddress:v6];

  return v8 == 1;
}

- (id)_handlesForRecipients:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  if (CKIsRunningUITests())
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v34 + 1) + 8 * i) rawAddress];
          if ([v12 _appearsToBePhoneNumber])
          {
            v13 = IMInternationalForPhoneNumberWithOptions();

            v12 = v13;
          }

          v14 = IMStripFormattingFromAddress();
          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    v15 = [MEMORY[0x1E69A5A80] sharedInstance];
    v16 = [v15 __ck_bestAccountForAddresses:v6];
  }

  else
  {
    v17 = [(CKRecipientSelectionController *)self conversation];
    v6 = [v17 sendingService];

    v15 = [MEMORY[0x1E69A5A80] sharedInstance];
    v16 = [v15 __ck_defaultAccountForService:v6];
  }

  v18 = v16;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v4;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * j);
        if (![(CKRecipientSelectionController *)self isGameCenterRecipient:v24, v30])
        {
          v25 = [v24 rawAddress];
          v26 = IMStripFormattingFromAddress();

          if (v26)
          {
            v27 = [v18 imHandleWithID:v26 alreadyCanonical:0];
            if (v27)
            {
              [v5 addObject:v27];
            }
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  v28 = [v5 copy];

  return v28;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [(CKRecipientSelectionController *)self delegate];
  [v4 recipientSelectionControllerReturnPressed:self];

  return 0;
}

- (void)_updateBackfillForNewRecipients
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed to find a conversation to backfill for conversationGUID: %@. Making empty new compose conversation", &v2, 0xCu);
}

@end