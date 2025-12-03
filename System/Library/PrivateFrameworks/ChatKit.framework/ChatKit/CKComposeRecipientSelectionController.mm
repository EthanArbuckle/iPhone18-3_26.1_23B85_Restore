@interface CKComposeRecipientSelectionController
- (BOOL)_hasExistingConversationWithAddedRecipient:(id)recipient;
- (BOOL)_updateBackfillForNewRecipients;
- (BOOL)hasBackfilledConversation;
- (BOOL)hasiMessageableContext;
- (BOOL)homogenizePreferredServiceForiMessage;
- (BOOL)recipientIsiMessagable:(id)messagable;
- (BOOL)shouldHideFromField;
- (BOOL)shouldInvalidateIDSRequests;
- (BOOL)shouldSuppressSearchResultsTable;
- (BOOL)textFieldShouldReturn:(id)return;
- (CKSenderIdentity)selectedSenderIdentity;
- (CTXPCServiceSubscriptionContext)selectedSubscriptionContext;
- (NSArray)expandedRecipients;
- (NSArray)proposedRecipients;
- (NSString)selectedLastAddressedOrDefaultHandle;
- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)rows;
- (double)fromFieldHeight;
- (double)glassPlatterCornerRadius;
- (double)selectionFieldsHeight;
- (id)_bestSenderIdentityForRecipient:(id)recipient;
- (id)_contactPreferredSenderIdentityForRecipient:(id)recipient;
- (id)_defaultSenderIdentity;
- (id)_defaultSubscriptionContext;
- (id)_defaultSubscriptionContextForiMessage;
- (id)_handlesForRecipients:(id)recipients;
- (id)_pendingConversationForExistingChatWithGUIDUsingRecipientLookupFallback:(id)fallback;
- (id)_preferrediMessageAccountName;
- (id)_subscriptionContextForSimID:(id)d phoneNumber:(id)number;
- (id)_validSenderIdentityForLastAddressedHandle;
- (id)autocompleteResultIdentifier:(id)identifier;
- (id)conversationGUIDForRecipient:(id)recipient;
- (id)menuForSubscriptionSelector;
- (id)recipients;
- (unint64_t)_fromFieldThemeForCurrentService;
- (void)CKComposeSubscriptionSelectorButtonWasTapped:(id)tapped;
- (void)_atomizeToConversationNameIfNecessary:(unint64_t)necessary;
- (void)_lastAddressedHandleChangedNotification:(id)notification;
- (void)_layoutFromFieldShouldHide:(BOOL)hide;
- (void)_legacyAddRecipient:(id)recipient;
- (void)_recoverConversationIfJunk:(id)junk;
- (void)_updateBackfillForNewRecipients;
- (void)_updateContentsOfFromField;
- (void)_updateFromFieldIfNeeded;
- (void)_updateSubscriptionContextForRecipient:(id)recipient preferredService:(id)service;
- (void)addRecipient:(id)recipient;
- (void)atomizeAndInvokeBlock:(id)block;
- (void)atomizeAndSendTimeoutHandler;
- (void)configureSubscriptionContextForRecipients:(id)recipients;
- (void)conversationPreferredServiceDidChange;
- (void)dealloc;
- (void)loadView;
- (void)presentAlertForSubscriptionContext;
- (void)presentContextSelectionAlertWithCompletion:(id)completion;
- (void)recipientSelectionControllerDidChange;
- (void)reset;
- (void)setSelectedSenderIdentity:(id)identity;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidDisappear:(BOOL)disappear;
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v5 viewDidDisappear:disappear];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_atomizeAndInvokeTimeoutHandler object:0];
  presentedViewController = [(CKComposeRecipientSelectionController *)self presentedViewController];

  if (!presentedViewController)
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
      toField = [(CKRecipientSelectionController *)self toField];
      recipients = [toField recipients];
      [(CKComposeRecipientSelectionController *)self configureSubscriptionContextForRecipients:recipients];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__lastAddressedHandleChangedNotification_ name:*MEMORY[0x1E69A5818] object:0];
}

- (void)configureSubscriptionContextForRecipients:(id)recipients
{
  v44 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
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

      if ([recipientsCopy count])
      {
        if (![(CKComposeRecipientSelectionController *)self hasUserSetContextPreference])
        {
          simID = [(CKComposeRecipientSelectionController *)self simID];

          if (simID && ([MEMORY[0x1E69A7F68] sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "ctSubscriptionInfo"), v7 = objc_claimAutoreleasedReturnValue(), -[CKComposeRecipientSelectionController simID](self, "simID"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "__im_subscriptionContextForForSimID:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v9))
          {
            v10 = [[CKSenderIdentity alloc] initWithSubscriptionContext:v9];
            if (IMOSLoggingEnabled())
            {
              v11 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                simID2 = [(CKComposeRecipientSelectionController *)self simID];
                *buf = 138412546;
                v38 = simID2;
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
            obj = recipientsCopy;
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
                  accountUUID = [(CKSenderIdentity *)v19 accountUUID];
                  accountUUID2 = [(CKSenderIdentity *)v9 accountUUID];
                  v23 = [accountUUID isEqual:accountUUID2];

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
                  ctSubscriptionInfo = [obj ctSubscriptionInfo];
                  v9 = [ctSubscriptionInfo __im_subscriptionContextForSenderIdentity:v10];

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
        _defaultSenderIdentity = [(CKComposeRecipientSelectionController *)self _defaultSenderIdentity];
        [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:_defaultSenderIdentity];
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEnhancedFromPickerEnabled = [mEMORY[0x1E69A8070] isEnhancedFromPickerEnabled];

  if (isEnhancedFromPickerEnabled)
  {
    conversation = [(CKRecipientSelectionController *)self conversation];
    chat = [conversation chat];
    lastAddressedHandleID = [chat lastAddressedHandleID];

    if (lastAddressedHandleID)
    {
      v8 = IMChatCanonicalIDSIDsForAddress();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
      operationalAccounts = [mEMORY[0x1E69A5A80] operationalAccounts];

      v28 = [operationalAccounts countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v28)
      {
        v11 = *v35;
        v29 = operationalAccounts;
        v27 = *v35;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(operationalAccounts);
            }

            v13 = *(*(&v34 + 1) + 8 * i);
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            aliases = [v13 aliases];
            v15 = [aliases countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                    objc_enumerationMutation(aliases);
                  }

                  v19 = IMChatCanonicalIDSIDsForAddress();
                  v20 = [v19 isEqualToString:v8];

                  if (v20)
                  {
                    v22 = [CKSenderIdentity alloc];
                    conversation2 = [(CKRecipientSelectionController *)self conversation];
                    chat2 = [conversation2 chat];
                    lastAddressedSIMID = [chat2 lastAddressedSIMID];
                    v21 = [(CKSenderIdentity *)v22 initWithHandle:lastAddressedHandleID simID:lastAddressedSIMID];

                    operationalAccounts = v29;
                    goto LABEL_23;
                  }
                }

                v16 = [aliases countByEnumeratingWithState:&v30 objects:v38 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            operationalAccounts = v29;
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
    mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
    phoneNumbersOfActiveSubscriptions = [ctSubscriptionInfo phoneNumbersOfActiveSubscriptions];

    conversation = [(CKRecipientSelectionController *)self conversation];
    chat = [conversation chat];
    lastAddressedHandleID = [chat lastAddressedHandleID];
    v9 = IMChatCanonicalIDSIDsForAddress();
    _stripFZIDPrefix = [v9 _stripFZIDPrefix];

    conversation2 = [(CKRecipientSelectionController *)self conversation];
    chat2 = [conversation2 chat];
    lastAddressedHandleID2 = [chat2 lastAddressedHandleID];
    if ((IMStringIsEmail() & 1) == 0 && [phoneNumbersOfActiveSubscriptions containsObject:_stripFZIDPrefix] && IMSharedHelperDeviceHasMultipleActiveSubscriptions() && -[CKComposeRecipientSelectionController hasBackfilledConversation](self, "hasBackfilledConversation"))
    {
      recipients = [(CKComposeRecipientSelectionController *)self recipients];
      v15 = [recipients count];

      if (v15)
      {
        mEMORY[0x1E69A7F68]2 = [MEMORY[0x1E69A7F68] sharedInstance];
        ctSubscriptionInfo2 = [mEMORY[0x1E69A7F68]2 ctSubscriptionInfo];
        conversation3 = [(CKRecipientSelectionController *)self conversation];
        chat3 = [conversation3 chat];
        lastAddressedSIMID = [chat3 lastAddressedSIMID];
        conversation4 = [(CKRecipientSelectionController *)self conversation];
        chat4 = [conversation4 chat];
        lastAddressedHandleID3 = [chat4 lastAddressedHandleID];
        v21 = [ctSubscriptionInfo2 __im_subscriptionContextForForSimID:lastAddressedSIMID phoneNumber:lastAddressedHandleID3];

        subscription = [(CKSenderIdentity *)self->_selectedSenderIdentity subscription];

        if (subscription != v21)
        {
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v44 = v21;
              conversation5 = [(CKRecipientSelectionController *)self conversation];
              chat5 = [conversation5 chat];
              lastAddressedHandleID4 = [chat5 lastAddressedHandleID];
              if ([(CKComposeRecipientSelectionController *)self hasBackfilledConversation])
              {
                v27 = @"YES";
              }

              else
              {
                v27 = @"NO";
              }

              recipients2 = [(CKComposeRecipientSelectionController *)self recipients];
              *buf = 138413058;
              v46 = lastAddressedHandleID4;
              v47 = 2112;
              v48 = v27;
              v49 = 2048;
              v50 = [recipients2 count];
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

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEnhancedFromPickerEnabled = [mEMORY[0x1E69A8070] isEnhancedFromPickerEnabled];

    if (isEnhancedFromPickerEnabled && !self->_selectedSenderIdentity)
    {
      _validSenderIdentityForLastAddressedHandle = [(CKComposeRecipientSelectionController *)self _validSenderIdentityForLastAddressedHandle];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:_validSenderIdentityForLastAddressedHandle];
    }

    selectedSenderIdentity = self->_selectedSenderIdentity;
    if (!selectedSenderIdentity)
    {
      _defaultSubscriptionContext = [(CKComposeRecipientSelectionController *)self _defaultSubscriptionContext];
      v35 = [[CKSenderIdentity alloc] initWithSubscriptionContext:_defaultSubscriptionContext];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v35];

      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          hasiMessageableContext = [(CKComposeRecipientSelectionController *)self hasiMessageableContext];
          v38 = @"NO";
          if (hasiMessageableContext)
          {
            v38 = @"YES";
          }

          *buf = 138412546;
          v46 = _defaultSubscriptionContext;
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
  selectedSenderIdentity = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
  subscription = [selectedSenderIdentity subscription];

  return subscription;
}

- (void)setSelectedSenderIdentity:(id)identity
{
  v38 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if (![(CKSenderIdentity *)self->_selectedSenderIdentity isEqual:identityCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        selectedSenderIdentity = self->_selectedSenderIdentity;
        v34 = 138412546;
        v35 = identityCopy;
        v36 = 2112;
        v37 = selectedSenderIdentity;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Updating selected sender identity to %@ from %@", &v34, 0x16u);
      }
    }

    objc_storeStrong(&self->_selectedSenderIdentity, identity);
    simID = [identityCopy simID];
    handle = [identityCopy handle];
    if (!identityCopy)
    {
      goto LABEL_20;
    }

    conversation = [(CKRecipientSelectionController *)self conversation];
    selectedLastAddressedHandle = [conversation selectedLastAddressedHandle];
    if (MEMORY[0x193AF6640](selectedLastAddressedHandle, handle))
    {
      conversation2 = [(CKRecipientSelectionController *)self conversation];
      selectedLastAddressedSIMID = [conversation2 selectedLastAddressedSIMID];
      v14 = MEMORY[0x193AF6640](selectedLastAddressedSIMID, simID);

      conversation3 = [(CKRecipientSelectionController *)self conversation];
      [conversation3 setSelectedLastAddressedHandle:handle];

      conversation4 = [(CKRecipientSelectionController *)self conversation];
      [conversation4 setSelectedLastAddressedSIMID:simID];

      if (v14)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {

      conversation5 = [(CKRecipientSelectionController *)self conversation];
      [conversation5 setSelectedLastAddressedHandle:handle];

      conversation6 = [(CKRecipientSelectionController *)self conversation];
      [conversation6 setSelectedLastAddressedSIMID:simID];
    }

    if ([(CKComposeRecipientSelectionController *)self hasBackfilledConversation]&& +[CKSenderIdentity fromPickerEnabled])
    {
      mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
      v20 = [mEMORY[0x1E69A5A80] iMessageAccountForLastAddressedHandle:handle simID:simID];

      if (v20)
      {
        serviceName = [v20 serviceName];
        v22 = [serviceName isEqualToString:*MEMORY[0x1E69A7AF0]];

        if (v22)
        {
          conversation7 = [(CKRecipientSelectionController *)self conversation];
          chat = [conversation7 chat];
          [chat forceCancelTypingIndicator];
        }
      }

      conversation8 = [(CKRecipientSelectionController *)self conversation];
      chat2 = [conversation8 chat];
      [chat2 setLastAddressedHandleID:handle];

      conversation9 = [(CKRecipientSelectionController *)self conversation];
      chat3 = [conversation9 chat];
      [chat3 setLastAddressedSIMID:simID];

      conversation10 = [(CKRecipientSelectionController *)self conversation];
      [conversation10 refreshServiceForSending];

      conversation11 = [(CKRecipientSelectionController *)self conversation];
      chat4 = [conversation11 chat];
      label = [identityCopy label];
      [chat4 updateLineSwitchedTo:label];
    }

    _canonicalRecipientAddresses = [(CKRecipientSelectionController *)self _canonicalRecipientAddresses];
    [(CKRecipientSelectionController *)self refreshComposeSendingServiceForAddresses:_canonicalRecipientAddresses withCompletionBlock:0];
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
  if (![(CKComposeRecipientSelectionController *)self hasiMessageableContext]|| ([(CKComposeRecipientSelectionController *)self _defaultSubscriptionContextForiMessage], (preferredOrDefaultSubscriptionContext = objc_claimAutoreleasedReturnValue()) == 0))
  {
    mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];

    preferredOrDefaultSubscriptionContext = [ctSubscriptionInfo preferredOrDefaultSubscriptionContext];
  }

  return preferredOrDefaultSubscriptionContext;
}

- (id)_defaultSenderIdentity
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEnhancedFromPickerEnabled = [mEMORY[0x1E69A8070] isEnhancedFromPickerEnabled];

  if (isEnhancedFromPickerEnabled)
  {
    mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
    activeIMessageAccount = [mEMORY[0x1E69A5A80] activeIMessageAccount];

    displayName = [activeIMessageAccount displayName];
    if (displayName)
    {
      v8 = displayName;
      v9 = [[CKSenderIdentity alloc] initWithHandle:displayName simID:0];

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
  _defaultSubscriptionContext = [(CKComposeRecipientSelectionController *)self _defaultSubscriptionContext];
  v9 = [(CKSenderIdentity *)v10 initWithSubscriptionContext:_defaultSubscriptionContext];

LABEL_7:

  return v9;
}

- (id)_preferrediMessageAccountName
{
  iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];
  v3 = IMPreferredAccountForService();
  displayName = [v3 displayName];

  return displayName;
}

- (id)_defaultSubscriptionContextForiMessage
{
  v12 = *MEMORY[0x1E69E9840];
  _preferrediMessageAccountName = [(CKComposeRecipientSelectionController *)self _preferrediMessageAccountName];
  mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
  v5 = [ctSubscriptionInfo __im_subscriptionContextForPhoneNumber:_preferrediMessageAccountName];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = _preferrediMessageAccountName;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Default subscription context for iMessage is %@ accountDisplayName: %@", &v8, 0x16u);
    }
  }

  return v5;
}

- (BOOL)hasiMessageableContext
{
  v25 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
  subscriptions = [ctSubscriptionInfo subscriptions];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = subscriptions;
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
        phoneNumber = [v9 phoneNumber];
        labelID = [v9 labelID];
        if ([MEMORY[0x1E69A5CA0] iMessageEnabledForSenderLastAddressedHandle:phoneNumber simID:labelID])
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v21 = phoneNumber;
              v22 = 2112;
              v23 = labelID;
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEnhancedFromPickerEnabled = [mEMORY[0x1E69A8070] isEnhancedFromPickerEnabled];

  if (isEnhancedFromPickerEnabled)
  {
    selectedSenderIdentity = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    handle = [selectedSenderIdentity handle];
  }

  else
  {
    hasiMessageableContext = [(CKComposeRecipientSelectionController *)self hasiMessageableContext];
    selectedSenderIdentity2 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    if (hasiMessageableContext && (-[CKRecipientSelectionController conversation](self, "conversation"), v9 = objc_claimAutoreleasedReturnValue(), [v9 sendingService], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69A5C90], "iMessageService"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v10 == v11))
    {
      _preferrediMessageAccountName = [(CKComposeRecipientSelectionController *)self _preferrediMessageAccountName];
      if ((IMStringIsEmail() & 1) != 0 || !selectedSenderIdentity2)
      {
        handle = _preferrediMessageAccountName;
      }

      else
      {
        handle = [selectedSenderIdentity2 handle];
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = 138412546;
            v18 = handle;
            v19 = 2112;
            v20 = _preferrediMessageAccountName;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Using selected subscription phone number %@ instead of %@", &v17, 0x16u);
          }
        }
      }
    }

    else
    {
      handle = 0;
    }

    if (!handle && selectedSenderIdentity2)
    {
      handle = [selectedSenderIdentity2 handle];
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        v17 = 138412802;
        v18 = handle;
        v19 = 2112;
        if (hasiMessageableContext)
        {
          v13 = @"YES";
        }

        v20 = v13;
        v21 = 2112;
        v22 = selectedSenderIdentity2;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "selectedLastAddressedHandle: %@ hasiMessageableContext: %@ selectedSenderIdentity: %@", &v17, 0x20u);
      }
    }
  }

  return handle;
}

- (void)_layoutFromFieldShouldHide:(BOOL)hide
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

  fieldStackContainerView = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView frame];
  v11 = v10;
  toFieldScrollingView = [(CKRecipientSelectionController *)self toFieldScrollingView];
  [toFieldScrollingView frame];
  v14 = v13;
  fieldStackContainerView2 = [(CKRecipientSelectionController *)self fieldStackContainerView];
  [fieldStackContainerView2 frame];
  v17 = v16;

  fromFieldContainerView = [(CKRecipientSelectionController *)self fromFieldContainerView];
  [fromFieldContainerView setFrame:{v11, v14, v17, v6}];

  if (!self->_simSelectionFieldView)
  {
    v19 = objc_alloc_init(CKSIMSelectionFieldView);
    [(CKSIMSelectionFieldView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    toField = [(CKRecipientSelectionController *)self toField];
    baseFont = [toField baseFont];
    [(CKSIMSelectionFieldView *)v19 setPreferredFont:baseFont];

    [(CKSIMSelectionFieldView *)v19 setSubscriptionButtonDelegate:self];
    fromFieldContainerView2 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    [fromFieldContainerView2 addSubview:v19];

    simSelectionFieldView = self->_simSelectionFieldView;
    self->_simSelectionFieldView = v19;
    v24 = v19;

    v43 = MEMORY[0x1E696ACD8];
    topAnchor = [(CKSIMSelectionFieldView *)v24 topAnchor];
    fromFieldContainerView3 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    topAnchor2 = [fromFieldContainerView3 topAnchor];
    v50 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v55[0] = v50;
    bottomAnchor = [(CKSIMSelectionFieldView *)v24 bottomAnchor];
    fromFieldContainerView4 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    bottomAnchor2 = [fromFieldContainerView4 bottomAnchor];
    v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v55[1] = v46;
    leadingAnchor = [(CKSIMSelectionFieldView *)v24 leadingAnchor];
    fromFieldContainerView5 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    leadingAnchor2 = [fromFieldContainerView5 leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v55[2] = v41;
    trailingAnchor = [(CKSIMSelectionFieldView *)v24 trailingAnchor];
    fromFieldContainerView6 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    trailingAnchor2 = [fromFieldContainerView6 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v55[3] = v25;
    viewForAlignment = [(CKSIMSelectionFieldView *)v24 viewForAlignment];
    leadingAnchor3 = [viewForAlignment leadingAnchor];
    toField2 = [(CKRecipientSelectionController *)self toField];
    [toField2 textView];
    v29 = v54 = hide;
    leadingAnchor4 = [v29 leadingAnchor];
    v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v55[4] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
    [v43 activateConstraints:v32];

    hide = v54;
  }

  menuForSubscriptionSelector = [(CKComposeRecipientSelectionController *)self menuForSubscriptionSelector];
  simSelectionFieldView = [(CKComposeRecipientSelectionController *)self simSelectionFieldView];
  [simSelectionFieldView setSubscriptionSelectionMenu:menuForSubscriptionSelector];

  v35 = hide || [(CKComposeRecipientSelectionController *)self shouldHideFromField];
  fromFieldContainerView7 = [(CKRecipientSelectionController *)self fromFieldContainerView];
  [fromFieldContainerView7 setHidden:v35];

  delegate = [(CKRecipientSelectionController *)self delegate];
  [delegate recipientSelectionControllerDidLoadFromField];
}

- (double)fromFieldHeight
{
  if ([(CKComposeRecipientSelectionController *)self shouldHideFromField])
  {
    return 0.0;
  }

  fromFieldContainerView = [(CKRecipientSelectionController *)self fromFieldContainerView];
  [fromFieldContainerView frame];
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
  selectedSenderIdentity = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CKComposeRecipientSelectionController_menuForSubscriptionSelector__block_invoke;
  v6[3] = &unk_1E72EF9F8;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v4 = [CKSenderIdentity identitySwitcherMenuWithSelectedIdentity:selectedSenderIdentity selectIdentity:v6];
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

- (void)CKComposeSubscriptionSelectorButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
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

    fromFieldContainerView = [(CKRecipientSelectionController *)self fromFieldContainerView];
    [fromFieldContainerView setHidden:1];

    [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:0];
  }
}

- (void)_lastAddressedHandleChangedNotification:(id)notification
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
  selectedSenderIdentity = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
  shouldHideFromField = [(CKComposeRecipientSelectionController *)self shouldHideFromField];
  fromFieldContainerView = [(CKRecipientSelectionController *)self fromFieldContainerView];
  if (shouldHideFromField | (([fromFieldContainerView isHidden] & 1) == 0))
  {
    fromFieldContainerView2 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    v7 = ([fromFieldContainerView2 isHidden] ^ 1) & shouldHideFromField;
  }

  else
  {
    v7 = 1;
  }

  simSelectionFieldView = [(CKComposeRecipientSelectionController *)self simSelectionFieldView];
  currentTheme = [simSelectionFieldView currentTheme];
  _fromFieldThemeForCurrentService = [(CKComposeRecipientSelectionController *)self _fromFieldThemeForCurrentService];

  if ((([(CKComposeRecipientSelectionController *)self fromFieldIdentityChanged]| v7) & 1) != 0 || currentTheme != _fromFieldThemeForCurrentService)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        if (shouldHideFromField)
        {
          v12 = @"YES";
        }

        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = selectedSenderIdentity;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Updating From field - hideFromField %@ selectedSenderIdentity %@", &v15, 0x16u);
      }
    }

    if (shouldHideFromField)
    {
      simSelectionFieldView2 = [(CKComposeRecipientSelectionController *)self simSelectionFieldView];
      [simSelectionFieldView2 dismissContextMenu];
    }

    else
    {
      [(CKComposeRecipientSelectionController *)self _updateContentsOfFromField];
    }

    fromFieldContainerView3 = [(CKRecipientSelectionController *)self fromFieldContainerView];
    [fromFieldContainerView3 setHidden:shouldHideFromField];

    [(CKComposeRecipientSelectionController *)self setFromFieldIdentityChanged:0];
  }
}

- (id)recipients
{
  toField = [(CKRecipientSelectionController *)self toField];
  recipients = [toField recipients];

  return recipients;
}

- (BOOL)hasBackfilledConversation
{
  conversation = [(CKRecipientSelectionController *)self conversation];
  groupID = [conversation groupID];
  v4 = groupID != 0;

  return v4;
}

- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)rows
{
  v4.receiver = self;
  v4.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v4 _fieldContainerHeightForNumberOfRows:([(CKComposeRecipientSelectionController *)self shouldHideFromField]^ 1) + rows];
  return result;
}

- (BOOL)shouldHideFromField
{
  v25 = *MEMORY[0x1E69E9840];
  view = [(CKComposeRecipientSelectionController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v6 = [windowScene interfaceOrientation] - 3;

  if (v6 < 2)
  {
    return 1;
  }

  recipients = [(CKComposeRecipientSelectionController *)self recipients];
  v9 = [recipients count];

  isSearchResultsHidden = [(CKRecipientSelectionController *)self isSearchResultsHidden];
  HasMultipleActiveSubscriptions = IMSharedHelperDeviceHasMultipleActiveSubscriptions();
  hasBackfilledConversation = [(CKComposeRecipientSelectionController *)self hasBackfilledConversation];
  if (!+[CKSenderIdentity fromPickerEnabled]|| !v9 || !isSearchResultsHidden)
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
        if (hasBackfilledConversation)
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
        if (!isSearchResultsHidden)
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
  simSelectionFieldView = [(CKComposeRecipientSelectionController *)self simSelectionFieldView];
  selectedSenderIdentity = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
  if (simSelectionFieldView && selectedSenderIdentity)
  {
    label = [selectedSenderIdentity label];
    shortName = [selectedSenderIdentity shortName];
    [simSelectionFieldView updateContentsWithTitle:label badgeText:shortName theme:{-[CKComposeRecipientSelectionController _fromFieldThemeForCurrentService](self, "_fromFieldThemeForCurrentService")}];

    menuForSubscriptionSelector = [(CKComposeRecipientSelectionController *)self menuForSubscriptionSelector];
    [simSelectionFieldView setSubscriptionSelectionMenu:menuForSubscriptionSelector];
  }
}

- (unint64_t)_fromFieldThemeForCurrentService
{
  conversation = [(CKRecipientSelectionController *)self conversation];
  sendingService = [conversation sendingService];
  __ck_isMadrid = [sendingService __ck_isMadrid];

  if (__ck_isMadrid)
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
  toField = [(CKRecipientSelectionController *)self toField];
  recipients = [toField recipients];
  v6 = [v3 initWithCapacity:{objc_msgSend(recipients, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  toField2 = [(CKRecipientSelectionController *)self toField];
  recipients2 = [toField2 recipients];

  v9 = [recipients2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(recipients2);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isGroup])
        {
          children = [v13 children];
          [v6 addObjectsFromArray:children];
        }

        else
        {
          [v6 addObject:v13];
        }
      }

      v10 = [recipients2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v6;
}

- (NSArray)proposedRecipients
{
  recipients = [(CKComposeRecipientSelectionController *)self recipients];
  if (!recipients)
  {
    toField = [(CKRecipientSelectionController *)self toField];
    text = [toField text];

    if ([text length])
    {
      v6 = MEMORY[0x1E695DEC8];
      v7 = +[CKRecipientGenerator sharedRecipientGenerator];
      v8 = [v7 recipientWithAddress:text];
      recipients = [v6 arrayWithObject:v8];
    }

    else
    {
      recipients = 0;
    }
  }

  return recipients;
}

- (void)_atomizeToConversationNameIfNecessary:(unint64_t)necessary
{
  v32 = *MEMORY[0x1E69E9840];
  shouldAtomizeToConversationName = [(CKComposeRecipientSelectionController *)self shouldAtomizeToConversationName];
  if (necessary && shouldAtomizeToConversationName)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    toField = [(CKRecipientSelectionController *)self toField];
    recipients = [toField recipients];

    obj = recipients;
    v8 = [recipients countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            toField2 = [(CKRecipientSelectionController *)self toField];
            [toField2 removeRecipient:v12];

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
                  toField3 = [(CKRecipientSelectionController *)self toField];
                  [toField3 addRecipient:v19];
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

- (void)addRecipient:(id)recipient
{
  v42 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if (!+[CKSenderIdentity identityTrackingEnabled])
  {
    [(CKComposeRecipientSelectionController *)self _legacyAddRecipient:recipientCopy];
    goto LABEL_28;
  }

  if (![(CKComposeRecipientSelectionController *)self _hasExistingConversationWithAddedRecipient:recipientCopy])
  {
    v22 = [(CKComposeRecipientSelectionController *)self _bestSenderIdentityForRecipient:recipientCopy];
    toField = [(CKRecipientSelectionController *)self toField];
    recipients = [toField recipients];
    v7 = [recipients count];

    conversation = [(CKRecipientSelectionController *)self conversation];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__61;
    v33[4] = __Block_byref_object_dispose__61;
    v34 = 0;
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    iDSCanonicalAddress = [recipientCopy IDSCanonicalAddress];
    if (iDSCanonicalAddress)
    {
      [v8 addObject:iDSCanonicalAddress];
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__CKComposeRecipientSelectionController_addRecipient___block_invoke;
    v29[3] = &unk_1E72F6920;
    v32 = v7 == 0;
    v31 = v33;
    v29[4] = self;
    v10 = recipientCopy;
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

    selectedSubscriptionContext = [(CKComposeRecipientSelectionController *)self selectedSubscriptionContext];
    v12 = selectedSubscriptionContext == 0;

    if (v12)
    {
      if (conversation)
      {
        v13 = [CKSenderIdentity alloc];
        lastAddressedSIMID = [conversation lastAddressedSIMID];
        lastAddressedHandle = [conversation lastAddressedHandle];
        v16 = [(CKComposeRecipientSelectionController *)self _subscriptionContextForSimID:lastAddressedSIMID phoneNumber:lastAddressedHandle];
        v17 = [(CKSenderIdentity *)v13 initWithSubscriptionContext:v16];
        [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v17];
      }

      else
      {
        if (!v22)
        {
          goto LABEL_15;
        }

        lastAddressedSIMID = [[CKSenderIdentity alloc] initWithTUSenderIdentity:v22];
        [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:lastAddressedSIMID];
      }
    }

LABEL_15:
    [(CKComposeRecipientSelectionController *)self _atomizeToConversationNameIfNecessary:v7];
    presentedViewController = [(CKComposeRecipientSelectionController *)self presentedViewController];

    if (presentedViewController)
    {
      [(CKComposeRecipientSelectionController *)self setFirstAppear:1];
      v27.receiver = self;
      v27.super_class = CKComposeRecipientSelectionController;
      [(CKRecipientSelectionController *)&v27 addRecipient:v10];
      [(CKComposeRecipientSelectionController *)self performSelector:sel_presentAlertForSubscriptionContext withObject:0 afterDelay:0.5];
    }

    else
    {
      selectedSubscriptionContext2 = [(CKComposeRecipientSelectionController *)self selectedSubscriptionContext];
      v20 = selectedSubscriptionContext2;
      if (!v22 || selectedSubscriptionContext2 && [MEMORY[0x1E69A8230] isTUSenderIdentity:v22 equalToSubscriptionContext:selectedSubscriptionContext2])
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
  [(CKRecipientSelectionController *)&v35 addRecipient:recipientCopy];
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

- (void)_updateSubscriptionContextForRecipient:(id)recipient preferredService:(id)service
{
  recipientCopy = recipient;
  serviceCopy = service;
  v7 = MEMORY[0x1E69A7FD0];
  contact = [recipientCopy contact];
  LODWORD(v7) = [v7 isCNContactAKnownContact:contact];

  if (v7)
  {
    _defaultSenderIdentity2 = [(CKComposeRecipientSelectionController *)self _contactPreferredSenderIdentityForRecipient:recipientCopy];
    mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
    v12 = [ctSubscriptionInfo __im_subscriptionContextForSenderIdentity:_defaultSenderIdentity2];

    if (_defaultSenderIdentity2)
    {
      v13 = [[CKSenderIdentity alloc] initWithSubscriptionContext:v12];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v13];

      [(CKComposeRecipientSelectionController *)self setContactPreferredContextSelected:1];
    }

    else
    {
      iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];

      if (iMessageService == serviceCopy)
      {
        _defaultSenderIdentity = [(CKComposeRecipientSelectionController *)self _defaultSenderIdentity];
        [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:_defaultSenderIdentity];
      }
    }
  }

  else
  {
    iMessageService2 = [MEMORY[0x1E69A5CA0] iMessageService];

    if (iMessageService2 == serviceCopy)
    {
      _defaultSenderIdentity2 = [(CKComposeRecipientSelectionController *)self _defaultSenderIdentity];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:_defaultSenderIdentity2];
    }

    else
    {
      _defaultSenderIdentity2 = [(CKComposeRecipientSelectionController *)self _bestSenderIdentityForRecipient:recipientCopy];
      mEMORY[0x1E69A7F68]2 = [MEMORY[0x1E69A7F68] sharedInstance];
      ctSubscriptionInfo2 = [mEMORY[0x1E69A7F68]2 ctSubscriptionInfo];
      v17 = [ctSubscriptionInfo2 __im_subscriptionContextForSenderIdentity:_defaultSenderIdentity2];

      v18 = [[CKSenderIdentity alloc] initWithSubscriptionContext:v17];
      [(CKComposeRecipientSelectionController *)self setSelectedSenderIdentity:v18];
    }
  }
}

- (id)_subscriptionContextForSimID:(id)d phoneNumber:(id)number
{
  v5 = MEMORY[0x1E69A7F68];
  numberCopy = number;
  dCopy = d;
  sharedInstance = [v5 sharedInstance];
  ctSubscriptionInfo = [sharedInstance ctSubscriptionInfo];
  v10 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy phoneNumber:numberCopy];

  return v10;
}

- (void)_legacyAddRecipient:(id)recipient
{
  v36 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if ([(CKComposeRecipientSelectionController *)self shouldAtomizeToConversationName])
  {
    toField = [(CKRecipientSelectionController *)self toField];
    recipients = [toField recipients];
    v7 = [recipients count];

    if (v7)
    {
      v23 = recipientCopy;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      toField2 = [(CKRecipientSelectionController *)self toField];
      recipients2 = [toField2 recipients];

      obj = recipients2;
      v10 = [recipients2 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
              toField3 = [(CKRecipientSelectionController *)self toField];
              [toField3 removeRecipient:v14];

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
                    toField4 = [(CKRecipientSelectionController *)self toField];
                    [toField4 addRecipient:v21];
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

      recipientCopy = v23;
    }
  }

  v25.receiver = self;
  v25.super_class = CKComposeRecipientSelectionController;
  [(CKRecipientSelectionController *)&v25 addRecipient:recipientCopy];
}

- (void)atomizeAndInvokeBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  toField = [(CKRecipientSelectionController *)self toField];
  finishEnteringRecipient = [toField finishEnteringRecipient];

  toField2 = [(CKRecipientSelectionController *)self toField];
  recipients = [toField2 recipients];
  if ([recipients count] == 1)
  {
    toField3 = [(CKRecipientSelectionController *)self toField];
    recipients2 = [toField3 recipients];
    firstObject = [recipients2 firstObject];
    v12 = [firstObject isGroup] ^ 1;
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
      v35 = finishEnteringRecipient;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Calling atomizeAndInvokeBlock with deferSend = %d, addedRecipient = %d", buf, 0xEu);
    }
  }

  v15 = IMOSLoggingEnabled();
  if ((v13 | finishEnteringRecipient ^ 1))
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

    blockCopy[2](blockCopy);
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

    expandedRecipients = [(CKComposeRecipientSelectionController *)self expandedRecipients];
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(expandedRecipients, "count")}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = expandedRecipients;
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
            iDSCanonicalAddress = [v24 IDSCanonicalAddress];
            if (iDSCanonicalAddress)
            {
              [v19 addObject:iDSCanonicalAddress];
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
    [(CKComposeRecipientSelectionController *)self setSendBlock:blockCopy];
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
  sendBlock = [(CKComposeRecipientSelectionController *)self sendBlock];

  if (sendBlock)
  {
    sendBlock2 = [(CKComposeRecipientSelectionController *)self sendBlock];
    sendBlock2[2]();

    [(CKComposeRecipientSelectionController *)self setSendBlock:0];
  }
}

- (id)_bestSenderIdentityForRecipient:(id)recipient
{
  v3 = MEMORY[0x1E69A7FD0];
  recipientCopy = recipient;
  keysForCNContact = [v3 keysForCNContact];
  v6 = [recipientCopy contactWithKeysToFetch:keysForCNContact];

  mEMORY[0x1E69A8230] = [MEMORY[0x1E69A8230] sharedInstance];
  normalizedAddress = [recipientCopy normalizedAddress];

  v9 = [mEMORY[0x1E69A8230] bestSenderIdentityForHandleID:normalizedAddress contact:v6];

  return v9;
}

- (id)_contactPreferredSenderIdentityForRecipient:(id)recipient
{
  v3 = MEMORY[0x1E69A7FD0];
  recipientCopy = recipient;
  keysForCNContact = [v3 keysForCNContact];
  v6 = [recipientCopy contactWithKeysToFetch:keysForCNContact];

  mEMORY[0x1E69A8230] = [MEMORY[0x1E69A8230] sharedInstance];
  normalizedAddress = [recipientCopy normalizedAddress];

  v9 = [mEMORY[0x1E69A8230] contactPreferredSenderIdentityForHandleID:normalizedAddress contact:v6];

  return v9;
}

- (void)presentContextSelectionAlertWithCompletion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
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
          isiMessageEnabled = [v11 isiMessageEnabled];
          v13 = MEMORY[0x1E696AEC0];
          v14 = CKFrameworkBundle();
          v15 = v14;
          if (isiMessageEnabled)
          {
            v16 = @"COMPOSE_TO_MULTIPLE_RECIPIENTS_SELECT_SENDER_IDENTITY_%@";
          }

          else
          {
            v16 = @"COMPOSE_TO_MULTIPLE_RECIPIENTS_SELECT_SENDER_IDENTITY_TEXT_MESSAGE_%@";
          }

          v17 = [v14 localizedStringForKey:v16 value:&stru_1F04268F8 table:@"ChatKit"];
          label = [v11 label];
          v19 = [v13 stringWithFormat:v17, label];

          mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
          LODWORD(v17) = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

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
          v23 = completionCopy;
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
    v35 = completionCopy;
    v29 = [v26 actionWithTitle:v28 style:1 handler:v34];

    [v6 addAction:v29];
    [(CKComposeRecipientSelectionController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
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
  smsEnabled = [MEMORY[0x1E69A5CA0] smsEnabled];
  if (smsEnabled)
  {
    v3 = MEMORY[0x1E69A7F58];

    LOBYTE(smsEnabled) = [v3 isMessagesTheDefaultTextApp];
  }

  return smsEnabled;
}

- (BOOL)shouldSuppressSearchResultsTable
{
  toField = [(CKRecipientSelectionController *)self toField];
  text = [toField text];
  v4 = [text length] == 0;

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

- (BOOL)_hasExistingConversationWithAddedRecipient:(id)recipient
{
  recipientCopy = recipient;
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
  if (recipientCopy && v6)
  {
    toField = [(CKRecipientSelectionController *)self toField];
    recipients = [toField recipients];
    v10 = [recipients arrayByAddingObject:recipientCopy];

    if ([v10 count] == 1 && (objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[CKRecipientSelectionController _recipientIsGroup:](self, "_recipientIsGroup:", v11), v11, v12))
    {
      v7 = 1;
    }

    else
    {
      expandedRecipients = [(CKComposeRecipientSelectionController *)self expandedRecipients];
      v14 = [expandedRecipients arrayByAddingObject:recipientCopy];

      v15 = [(CKComposeRecipientSelectionController *)self _handlesForRecipients:v14];
      mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v17 = [mEMORY[0x1E69A5AF8] existingChatWithHandles:v15 allowAlternativeService:1 groupID:0 displayName:0 joinedChatsOnly:1];

      conversationList = [(CKComposeRecipientSelectionController *)self conversationList];
      v19 = [conversationList conversationForExistingChat:v17];

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
  toField = [(CKRecipientSelectionController *)self toField];
  recipients = [toField recipients];

  v4 = [recipients countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(recipients);
        }

        address = [*(*(&v11 + 1) + 8 * i) address];

        if (!address)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [recipients countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)autocompleteResultIdentifier:(id)identifier
{
  autocompleteResult = [identifier autocompleteResult];
  identifier = [autocompleteResult identifier];

  return identifier;
}

- (id)conversationGUIDForRecipient:(id)recipient
{
  recipientCopy = recipient;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    conversationGUID = [recipientCopy conversationGUID];
LABEL_5:
    v6 = conversationGUID;
    goto LABEL_7;
  }

  if ([recipientCopy isGroup])
  {
    conversationGUID = [(CKComposeRecipientSelectionController *)self autocompleteResultIdentifier:recipientCopy];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_pendingConversationForExistingChatWithGUIDUsingRecipientLookupFallback:(id)fallback
{
  v27 = *MEMORY[0x1E69E9840];
  fallbackCopy = fallback;
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

  toField = [(CKRecipientSelectionController *)self toField];
  recipients = [toField recipients];
  v8 = [recipients count];

  if (!fallbackCopy && !v8)
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
    copyForPendingConversation = 0;
    goto LABEL_24;
  }

  if (!fallbackCopy || (-[CKComposeRecipientSelectionController conversationList](self, "conversationList"), v10 = objc_claimAutoreleasedReturnValue(), [v10 conversationForExistingChatWithGUID:fallbackCopy], v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    expandedRecipients = [(CKComposeRecipientSelectionController *)self expandedRecipients];
    v13 = [(CKComposeRecipientSelectionController *)self _handlesForRecipients:expandedRecipients];
    if (CKHasBlackholeEnabledOrHasBlackholeChats())
    {
      mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v15 = [mEMORY[0x1E69A5AF8] unblackholeAndLoadChatWithIMHandles:v13];
    }

    mEMORY[0x1E69A5AF8]2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v17 = [mEMORY[0x1E69A5AF8]2 existingChatWithHandles:v13 allowAlternativeService:1 groupID:0 displayName:0 joinedChatsOnly:1 findMatchingNamedGroups:0];

    conversationList = [(CKComposeRecipientSelectionController *)self conversationList];
    v11 = [conversationList conversationForExistingChat:v17];

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = 138412802;
        v22 = fallbackCopy;
        v23 = 2112;
        v24 = v11;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Unable to find conversation for existing chat with GUID: %@. Using recipient lookup fallback and found conversation: %@ (handles: %@)", &v21, 0x20u);
      }
    }
  }

  [(CKComposeRecipientSelectionController *)self _recoverConversationIfJunk:v11];
  copyForPendingConversation = [v11 copyForPendingConversation];

LABEL_24:

  return copyForPendingConversation;
}

- (BOOL)_updateBackfillForNewRecipients
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKBackfillTimingKey"];
  [v3 startTimingForKey:@"_updateBackfillForNewRecipients"];

  toField = [(CKRecipientSelectionController *)self toField];
  [toField clearText];

  searchListController = [(CKRecipientSelectionController *)self searchListController];
  [searchListController cancelSearch];

  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  expandedRecipients = [(CKComposeRecipientSelectionController *)self expandedRecipients];
  [searchListController2 setEnteredRecipients:expandedRecipients];

  searchListController3 = [(CKRecipientSelectionController *)self searchListController];
  expandedRecipients2 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
  [searchListController3 setSuppressGroupSuggestions:{objc_msgSend(expandedRecipients2, "count") != 0}];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  toField2 = [(CKRecipientSelectionController *)self toField];
  recipients = [toField2 recipients];

  v12 = [recipients countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v12)
  {
    v13 = *v67;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v67 != v13)
      {
        objc_enumerationMutation(recipients);
      }

      v15 = [(CKComposeRecipientSelectionController *)self conversationGUIDForRecipient:*(*(&v66 + 1) + 8 * v14)];
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [recipients countByEnumeratingWithState:&v66 objects:v75 count:16];
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
        chat = [v61 chat];
        guid = [chat guid];
        *buf = 138412546;
        v72 = guid;
        v73 = 2112;
        v74 = v59;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Found backfill conversation %@ for conversationGUID: %@", buf, 0x16u);
      }
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    recipients2 = [(CKComposeRecipientSelectionController *)self recipients];
    v20 = [recipients2 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v20)
    {
      v21 = *v63;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v63 != v21)
          {
            objc_enumerationMutation(recipients2);
          }

          v23 = *(*(&v62 + 1) + 8 * i);
          toField3 = [(CKRecipientSelectionController *)self toField];
          v25 = [toField3 atomViewForRecipient:v23];

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

            toField4 = [(CKRecipientSelectionController *)self toField];
            [toField4 invalidateAtomPresentationOptionsForRecipient:v23];
          }
        }

        v20 = [recipients2 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v20);
    }

    v28 = v61;
  }

  else
  {
    v28 = +[CKConversation newPendingConversation];
    recipients2 = IMLogHandleForCategory();
    if (os_log_type_enabled(recipients2, OS_LOG_TYPE_ERROR))
    {
      [(CKComposeRecipientSelectionController *)v59 _updateBackfillForNewRecipients];
    }
  }

  if (+[CKSenderIdentity identityTrackingEnabled])
  {
    selectedSenderIdentity = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    handle = [selectedSenderIdentity handle];
    v31 = IMChatCanonicalIDSIDsForAddress();

    selectedSenderIdentity2 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    simID = [selectedSenderIdentity2 simID];

    [v28 setSelectedLastAddressedHandle:v31];
    [v28 setSelectedLastAddressedSIMID:simID];
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v72 = v31;
        v73 = 2112;
        v74 = simID;
        _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Update backfill for new recipients selectedLastAddressedHandle: %@ selectedLastAddressedSIMD: %@", buf, 0x16u);
      }
    }
  }

  conversation = [(CKRecipientSelectionController *)self conversation];
  sendingService = [conversation sendingService];
  [v28 setPreviousSendingService:sendingService];

  [v28 setForceMMS:{-[CKRecipientSelectionController forceMMS](self, "forceMMS")}];
  expandedRecipients3 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
  [v28 setPendingComposeRecipients:expandedRecipients3];

  expandedRecipients4 = [(CKComposeRecipientSelectionController *)self expandedRecipients];
  if ([expandedRecipients4 count] == 1)
  {
    v39 = [expandedRecipients4 objectAtIndex:0];
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
      chat2 = [v28 chat];
      guid2 = [chat2 guid];
      recipients3 = [v28 recipients];
      v45 = [recipients3 count];
      *buf = 138412546;
      v72 = guid2;
      v73 = 2048;
      v74 = v45;
      _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Selecting conversation guid={%@} recipientCount={%lu} after backfill attempt.", buf, 0x16u);
    }
  }

  delegate = [(CKRecipientSelectionController *)self delegate];
  [delegate recipientSelectionController:self didSelectConversation:v28 isiMessagable:v40];

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

    selectedSenderIdentity3 = [(CKComposeRecipientSelectionController *)self selectedSenderIdentity];
    [(CKComposeRecipientSelectionController *)self _updateFromFieldIfNeeded];
  }

  if (!-[CKComposeRecipientSelectionController contactPreferredContextSelected](self, "contactPreferredContextSelected") || (-[CKRecipientSelectionController conversation](self, "conversation"), v50 = objc_claimAutoreleasedReturnValue(), [v50 sendingService], v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69A5CA0], "smsService"), v52 = objc_claimAutoreleasedReturnValue(), v53 = v51 == v52, v52, v51, v50, !v53))
  {
    conversation2 = [(CKRecipientSelectionController *)self conversation];
    handles = [conversation2 handles];
    v56 = [handles __imArrayByApplyingBlock:&__block_literal_global_228];

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

- (void)_recoverConversationIfJunk:(id)junk
{
  v7[1] = *MEMORY[0x1E69E9840];
  junkCopy = junk;
  chat = [junkCopy chat];
  if ([chat isFiltered] != 2)
  {
    goto LABEL_4;
  }

  v5 = IMIsOscarEnabled();

  if (v5)
  {
    chat = +[CKConversationList sharedConversationList];
    v7[0] = junkCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [chat recoverJunkMessagesInConversations:v6];

LABEL_4:
  }
}

- (BOOL)recipientIsiMessagable:(id)messagable
{
  messagableCopy = messagable;
  normalizedAddress = [messagableCopy normalizedAddress];
  v6 = [messagableCopy IDSCanonicalAddressForAddress:normalizedAddress];

  searchListController = [(CKRecipientSelectionController *)self searchListController];
  v8 = [searchListController idsStatusForAddress:v6];

  return v8 == 1;
}

- (id)_handlesForRecipients:(id)recipients
{
  v40 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recipientsCopy, "count")}];
  if (CKIsRunningUITests())
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = recipientsCopy;
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

          rawAddress = [*(*(&v34 + 1) + 8 * i) rawAddress];
          if ([rawAddress _appearsToBePhoneNumber])
          {
            v13 = IMInternationalForPhoneNumberWithOptions();

            rawAddress = v13;
          }

          v14 = IMStripFormattingFromAddress();
          [array addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
    v16 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddresses:array];
  }

  else
  {
    conversation = [(CKRecipientSelectionController *)self conversation];
    array = [conversation sendingService];

    mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
    v16 = [mEMORY[0x1E69A5A80] __ck_defaultAccountForService:array];
  }

  v18 = v16;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = recipientsCopy;
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
          rawAddress2 = [v24 rawAddress];
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

- (BOOL)textFieldShouldReturn:(id)return
{
  delegate = [(CKRecipientSelectionController *)self delegate];
  [delegate recipientSelectionControllerReturnPressed:self];

  return 0;
}

- (void)_updateBackfillForNewRecipients
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed to find a conversation to backfill for conversationGUID: %@. Making empty new compose conversation", &v2, 0xCu);
}

@end