@interface CKDetailsContactsManager
- (BOOL)_hasLinkedTelephoneNumbersForEntity:(id)a3;
- (BOOL)_isHandleActiveParticipantInTUConversation:(id)a3;
- (BOOL)_preferredRoutesDisabledViaServerBag;
- (BOOL)_showMessageButtonForEntity:(id)a3;
- (BOOL)_showPhoneButtonForEntity:(id)a3;
- (BOOL)hasPreferredCallServiceForEntity:(id)a3;
- (BOOL)isFaceTimeAudioAvailableForEntity:(id)a3;
- (BOOL)isFaceTimeVideoAvailableForEntity:(id)a3;
- (BOOL)isTelephonyCallAvailableForEntity:(id)a3;
- (BOOL)shouldAlwaysShowCallMenuForEntity:(id)a3;
- (BOOL)showScreenSharingButtonForEntity:(id)a3;
- (CKDetailsContactsManager)initWithConversation:(id)a3 delegate:(id)a4;
- (CKDetailsContactsManagerDelegate)delegate;
- (NSArray)contacts;
- (id)_preferredCallServiceToIDMap;
- (id)callActionsForEntity:(id)a3;
- (id)callMenuForEntity:(id)a3;
- (id)contextMenuForEntity:(id)a3 atom:(id)a4;
- (id)conversationContextMenuConfigForEntity:(id)a3 allowConversationRemoval:(BOOL)a4;
- (id)conversationContextMenuForUnknownEntity:(id)a3 allowConversationRemoval:(BOOL)a4 showUnknownContactActionInPopover:(BOOL)a5 unknownContactActionHandler:(id)a6;
- (id)recipientsSortedByIsContact:(BOOL)a3 alphabetically:(BOOL)a4;
- (id)viewModelsSortedByIsContact:(BOOL)a3 alphabetically:(BOOL)a4;
- (int64_t)_facetimeAudioIDStatusForEntity:(id)a3;
- (int64_t)_facetimeIDStatusForEntity:(id)a3;
- (int64_t)_screenSharingStatusForEntity:(id)a3;
- (unint64_t)preferredCallServiceForID:(id)a3;
- (void)_callButtonPressedWithVideoEnabled:(BOOL)a3;
- (void)_handleLocationChanged:(id)a3;
- (void)_performUpdateViewModels;
- (void)_refreshIDSStatusWithCompletion:(id)a3;
- (void)_setPreferredCallServiceToIDMap:(id)a3;
- (void)_startCallWithEntity:(id)a3 phoneAddress:(id)a4;
- (void)_startCommunicationForEntity:(id)a3 usePreferredRouteIfAvailable:(BOOL)a4;
- (void)_startFacetimeCommunicationForEntity:(id)a3 audioOnly:(BOOL)a4;
- (void)_startMessageWithEntity:(id)a3;
- (void)_updateViewModelsWithDelay:(BOOL)a3;
- (void)beginFacetimeCallWithVideo:(BOOL)a3;
- (void)callableAddressesForEntity:(id)a3 withResult:(id)a4;
- (void)dealloc;
- (void)inviteEntityToShareTheirScreen:(id)a3;
- (void)sendEmail;
- (void)setPreferredCallService:(unint64_t)a3 forID:(id)a4;
- (void)shareMyScreenWithEntity:(id)a3;
- (void)startAudioCommunicationUsingPreferredRouteIfAvailable:(BOOL)a3;
- (void)startCommunicationForEntity:(id)a3 action:(unint64_t)a4 address:(id)a5 usePreferredRouteIfAvailable:(BOOL)a6;
- (void)startCommunicationForViewModel:(id)a3 action:(unint64_t)a4 address:(id)a5;
@end

@implementation CKDetailsContactsManager

- (CKDetailsContactsManager)initWithConversation:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKDetailsContactsManager *)self init];
  v9 = v8;
  if (v8)
  {
    [(CKDetailsContactsManager *)v8 setConversation:v6];
    v10 = [MEMORY[0x1E696AEC0] stringGUIDForObject:v9];
    [(CKDetailsContactsManager *)v9 setServiceAvailabilityKey:v10];

    [(CKDetailsContactsManager *)v9 setDelegate:v7];
    v11 = [MEMORY[0x1E699BE68] sharedInstance];
    v12 = [(CKDetailsContactsManager *)v9 serviceAvailabilityKey];
    [v11 addListenerID:v12 forService:0];

    v13 = [(CKDetailsContactsManager *)v9 serviceAvailabilityKey];
    [v11 addListenerID:v13 forService:2];

    v14 = [MEMORY[0x1E69A4878] sharedInstance];
    v15 = [(CKDetailsContactsManager *)v9 serviceAvailabilityKey];
    [v14 addListenerID:v15 forService:*MEMORY[0x1E69A47F0]];

    v16 = [MEMORY[0x1E69A4878] sharedInstance];
    v17 = [(CKDetailsContactsManager *)v9 serviceAvailabilityKey];
    [v16 addListenerID:v17 forService:*MEMORY[0x1E69A47E8]];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v9 selector:sel__handleConversationRecipientsDidChange_ name:@"CKConversationParticipantsDidChangeNotification" object:v6];

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v9 selector:sel__handleConversationRecipientsDidChange_ name:@"CKConversationJoinStateDidChangeNotification" object:v6];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v9 selector:sel__handleAddressBookChange_ name:*MEMORY[0x1E69A6828] object:0];

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v9 selector:sel__handleLocationChanged_ name:*MEMORY[0x1E69A5988] object:0];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v9 selector:sel__handleConversationPendingRecipientsDidChange_ name:@"CKConversationPendingRecipientsUpdatedNotification" object:v6];

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v9 selector:sel__handleMultiwayStateChanged_ name:*MEMORY[0x1E69A5840] object:0];

    [(CKDetailsContactsManager *)v9 _updateViewModelsWithDelay:0];
    objc_initWeak(&location, v9);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__CKDetailsContactsManager_initWithConversation_delegate___block_invoke;
    v25[3] = &unk_1E72EC460;
    objc_copyWeak(&v26, &location);
    [(CKDetailsContactsManager *)v9 _refreshIDSStatusWithCompletion:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __58__CKDetailsContactsManager_initWithConversation_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateViewModelsWithDelay:1];
}

- (void)_updateViewModelsWithDelay:(BOOL)a3
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__performUpdateViewModels object:0];

  [(CKDetailsContactsManager *)self performSelector:sel__performUpdateViewModels withObject:0 afterDelay:0.0];
}

- (void)_performUpdateViewModels
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__83;
  v12 = __Block_byref_object_dispose__83;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(CKDetailsContactsManager *)self recipientsSortedByIsContact:1 alphabetically:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CKDetailsContactsManager__performUpdateViewModels__block_invoke;
  v7[3] = &unk_1E72F1440;
  v7[4] = self;
  v7[5] = &v8;
  [v3 enumerateObjectsUsingBlock:v7];

  [(CKDetailsContactsManager *)self setContactsViewModels:v9[5]];
  v4 = [(CKDetailsContactsManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKDetailsContactsManager *)self delegate];
    [v6 contactsManagerViewModelsDidChange:self];
  }

  _Block_object_dispose(&v8, 8);
}

void __52__CKDetailsContactsManager__performUpdateViewModels__block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v53 = a2;
  v2 = [MEMORY[0x1E69A5B70] sharedInstance];
  v3 = [v53 defaultIMHandle];
  v4 = [v2 findMyLocationForHandleOrSibling:v3];
  v51 = [v4 fmfLocation];

  if (v51)
  {
    v50 = [v51 locationShortAddressWithAgeIncludeLocating];
  }

  else
  {
    v50 = 0;
  }

  if ([MEMORY[0x1E69A6180] isEngramEnabled])
  {
    v5 = [*(a1 + 32) conversation];
    v6 = [v5 pendingRecipients];

    if (v6)
    {
      v7 = [*(a1 + 32) conversation];
      v8 = [v7 pendingRecipients];
      v9 = [v53 defaultIMHandle];
      v10 = [v8 containsObject:v9];
    }

    else
    {
      v10 = 0;
    }

    v49 = v10;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        if (v10)
        {
          v12 = @"YES";
        }

        *buf = 138412290;
        v55 = v12;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "isPendingRecipient: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v49 = 0;
  }

  v13 = [*(a1 + 32) conversation];
  v14 = [v13 chat];
  v15 = [v14 conversation];

  if (v15)
  {
    v16 = *(a1 + 32);
    v17 = [v53 rawAddress];
    v48 = [v16 _isHandleActiveParticipantInTUConversation:v17];
  }

  else
  {
    v48 = 0;
  }

  v18 = MEMORY[0x1E69A5B78];
  v19 = [*(a1 + 32) conversation];
  v20 = [v19 chat];
  v21 = [v20 conversation];
  LOBYTE(v18) = [v18 activeTUConversationHasActivitySession:v21];

  if (v18)
  {
    v22 = 3;
  }

  else
  {
    v23 = [*(a1 + 32) conversation];
    v24 = [v23 chat];
    v25 = [v24 conversation];
    v26 = [v25 isVideo];

    if (v26)
    {
      v22 = 2;
    }

    else
    {
      v27 = [*(a1 + 32) conversation];
      v28 = [v27 chat];
      v29 = [v28 conversation];
      v30 = [v29 isVideo];

      v22 = v30 ^ 1u;
    }
  }

  v47 = v22;
  v46 = v15 != 0;
  v31 = [CKDetailsContactsViewModel alloc];
  if (v50)
  {
    v32 = v51 != 0;
  }

  else
  {
    v32 = 0;
  }

  v45 = v32;
  v33 = [*(a1 + 32) _showMessageButtonForEntity:v53];
  v34 = [*(a1 + 32) _showFaceTimeVideoButtonForEntity:v53];
  v35 = [*(a1 + 32) _showPhoneButtonForEntity:v53];
  v36 = [*(a1 + 32) showScreenSharingButtonForEntity:v53];
  v37 = +[CKDetailsContactsViewModel descriptorForContactRequiredKeys];
  v38 = [v53 cnContactWithKeys:v37];
  v39 = [*(a1 + 32) conversation];
  v40 = [v39 hasVerifiedBusiness];
  v41 = [*(a1 + 32) conversation];
  BYTE3(v44) = v46;
  BYTE2(v44) = [v41 isStewieConversation];
  BYTE1(v44) = v40;
  LOBYTE(v44) = v49;
  BYTE2(v43) = v36;
  BYTE1(v43) = v35;
  LOBYTE(v43) = v34;
  v42 = [CKDetailsContactsViewModel initWithEntity:v31 locationString:"initWithEntity:locationString:tuConversationStatusIsActive:callType:showsLocation:showsMessageButton:showsFaceTimeVideoButton:showsPhoneButton:showsScreenSharingButton:contact:isPendingRecipient:verified:isSatellite:showsTUConversationStatus:" tuConversationStatusIsActive:v53 callType:v50 showsLocation:v48 showsMessageButton:v47 showsFaceTimeVideoButton:v45 showsPhoneButton:v33 showsScreenSharingButton:v43 contact:v38 isPendingRecipient:v44 verified:? isSatellite:? showsTUConversationStatus:?];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v42];
}

- (BOOL)_isHandleActiveParticipantInTUConversation:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKDetailsContactsManager *)self conversation];
  v6 = [v5 chat];
  v7 = [v6 activeParticipantsForTUConversation];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) handle];
        v13 = [v12 value];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (NSArray)contacts
{
  v2 = [(CKDetailsContactsManager *)self conversation];
  v3 = [v2 recipients];

  return v3;
}

- (id)viewModelsSortedByIsContact:(BOOL)a3 alphabetically:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"entity.defaultIMHandle.isContact" ascending:0];
    [v7 addObject:v8];
  }

  if (v4)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"entity.fullName" ascending:1 selector:sel_caseInsensitiveCompare_];
    [v7 addObject:v9];
  }

  v10 = [(CKDetailsContactsManager *)self contactsViewModels];
  v11 = [v10 sortedArrayUsingDescriptors:v7];

  return v11;
}

- (id)recipientsSortedByIsContact:(BOOL)a3 alphabetically:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(CKDetailsContactsManager *)self conversation];
  v7 = [v6 recipientsSortedByIsContact:v5 alphabetically:v4];

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E699BE68] sharedInstance];
  v4 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
  [v3 removeListenerID:v4 forService:0];

  v5 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
  [v3 removeListenerID:v5 forService:2];

  v6 = [MEMORY[0x1E69A4878] sharedInstance];
  v7 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
  [v6 removeListenerID:v7 forService:*MEMORY[0x1E69A47F0]];

  v8 = [MEMORY[0x1E69A4878] sharedInstance];
  v9 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
  [v8 removeListenerID:v9 forService:*MEMORY[0x1E69A47E8]];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 removeObserver:self];

  v11.receiver = self;
  v11.super_class = CKDetailsContactsManager;
  [(CKDetailsContactsManager *)&v11 dealloc];
}

- (void)_handleLocationChanged:(id)a3
{
  v9 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v9 fmfHandle];
    if (v4)
    {
      v5 = [(CKDetailsContactsManager *)self conversation];
      v6 = [v5 chat];
      v7 = [v6 allSiblingFMFHandles];
      v8 = [v7 containsObject:v4];

      if (v8)
      {
        [(CKDetailsContactsManager *)self _updateViewModelsWithDelay:1];
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (id)conversationContextMenuConfigForEntity:(id)a3 allowConversationRemoval:(BOOL)a4
{
  v4 = [(CKDetailsContactsManager *)self conversationContextMenuForEntity:a3 allowConversationRemoval:a4];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E69DC8D8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __92__CKDetailsContactsManager_conversationContextMenuConfigForEntity_allowConversationRemoval___block_invoke;
    v9[3] = &unk_1E72EC178;
    v10 = v4;
    v7 = [v6 configurationWithIdentifier:0 previewProvider:0 actionProvider:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)conversationContextMenuForUnknownEntity:(id)a3 allowConversationRemoval:(BOOL)a4 showUnknownContactActionInPopover:(BOOL)a5 unknownContactActionHandler:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [v9 defaultIMHandle];
  v12 = [CKContextMenuGenerator recipientSubmenuForHandle:v11];
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [(CKDetailsContactsManager *)self conversation];
  v14 = [CKContextMenuGenerator submenuForIndividualParticipantWithHandle:v11 forConversation:v13 includeAddToContactsAction:!v6 includeRemoveAction:v7];

  if (v14)
  {
    [v10 addObject:v14];
  }

  if ([(CKDetailsContactsManager *)self showScreenSharingButtonForEntity:v9])
  {
    v15 = [(CKDetailsContactsManager *)self conversation];
    v16 = [CKContextMenuGenerator subMenuForScreenSharingOptionsWithHandle:v11 conversation:v15 andContactsManager:self];

    if (v16)
    {
      [v10 addObject:v16];
    }
  }

  v17 = objc_opt_new();
  if ([(CKDetailsContactsManager *)self _showFaceTimeVideoButtonForEntity:v9])
  {
    v18 = [CKContextMenuGenerator menuActionToInitiateFaceTimeVideoWithHandle:v11 andContactsManager:self];
    v19 = [CKContextMenuGenerator menuActionToInitiateFaceTimeAudioWithHandle:v11 andContactsManager:self];
    if (v18)
    {
      [v17 addObject:v18];
    }

    if (v19)
    {
      [v17 addObject:v19];
    }
  }

  v20 = [CKContextMenuGenerator menuActionsToInitiateRelayPhoneCallWithHandle:v11];
  if ([v20 count])
  {
    [v17 addObjectsFromArray:v20];
  }

  if ([v17 count])
  {
    v21 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v17];
    [v10 addObject:v21];
  }

  if ([v10 count])
  {
    v22 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v10];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)contextMenuForEntity:(id)a3 atom:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 defaultIMHandle];
  v9 = [v8 isContact];

  if (v9)
  {
    [(CKDetailsContactsManager *)self conversationContextMenuForEntity:v7 allowConversationRemoval:0];
  }

  else
  {
    [(CKDetailsContactsManager *)self contextMenuForUnknownRecipient:v7 atom:v6];
  }
  v10 = ;

  return v10;
}

- (void)sendEmail
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKDetailsContactsManager *)self conversation];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CEF0]);
    v5 = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
    v21[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

    v7 = [(CKDetailsContactsManager *)self conversation];
    v8 = [v7 chat];
    v9 = [v8 participants];
    v10 = [v9 count];

    v11 = [(CKDetailsContactsManager *)self conversation];
    v12 = [v11 conversationVisualIdentityWithKeys:v6 requestedNumberOfContactsToFetch:v10];

    v13 = [v12 contacts];
    v14 = [v4 mailUrlForContacts:v13];

    v15 = [MEMORY[0x1E69DC668] sharedApplication];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __37__CKDetailsContactsManager_sendEmail__block_invoke;
    v19[3] = &unk_1E72EB9C8;
    v20 = v14;
    v16 = v14;
    [v15 openURL:v16 options:MEMORY[0x1E695E0F8] completionHandler:v19];
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Cannot send email because no conversation", &v18, 2u);
    }
  }
}

void __37__CKDetailsContactsManager_sendEmail__block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      v6 = *(a1 + 32);
      if (a2)
      {
        v5 = @"YES";
      }

      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Opened URL: %@ successfully: %@", &v7, 0x16u);
    }
  }
}

- (void)callableAddressesForEntity:(id)a3 withResult:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v5 defaultIMHandle];
  v10 = [v9 cnContactWithKeys:MEMORY[0x1E695E0F0]];

  v11 = [v10 phoneNumbers];
  if ([v11 count])
  {
    v25 = v10;
    v26 = v5;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v11;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 value];
          v18 = [v17 stringValue];

          [v7 addObject:v18];
          v19 = [v16 label];
          v20 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v19];
          if (![(__CFString *)v20 length])
          {
            v21 = v19;

            v20 = v21;
          }

          if (![(__CFString *)v20 length])
          {

            v20 = &stru_1F04268F8;
          }

          [v8 addObject:v20];
        }

        v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v5 = v26;
    v11 = v24;
    v10 = v25;
  }

  v22 = [v7 copy];
  v23 = [v8 copy];
  v6[2](v6, v22, v23);
}

- (BOOL)hasPreferredCallServiceForEntity:(id)a3
{
  v4 = [a3 rawAddress];
  v5 = [(CKDetailsContactsManager *)self preferredCallServiceForID:v4];

  return v5 != 0;
}

- (BOOL)shouldAlwaysShowCallMenuForEntity:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsContactsManager *)self isFaceTimeAudioAvailableForEntity:v4];
  v6 = [v4 propertyType];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CKDetailsContactsManager_shouldAlwaysShowCallMenuForEntity___block_invoke;
  v10[3] = &unk_1E72F8950;
  v10[4] = &v11;
  [(CKDetailsContactsManager *)self callableAddressesForEntity:v4 withResult:v10];
  v7 = [(CKDetailsContactsManager *)self hasPreferredCallServiceForEntity:v4];
  if (v6 == *MEMORY[0x1E695C330])
  {
    v8 = v5 && !v7;
  }

  else
  {
    v8 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);

  return v8 & 1;
}

void __62__CKDetailsContactsManager_shouldAlwaysShowCallMenuForEntity___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (MEMORY[0x193AF5D40](*(*(&v8 + 1) + 8 * i)))
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)callMenuForEntity:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsContactsManager *)self callActionsForEntity:v4];
  if ([v5 count])
  {
    v6 = [v4 propertyType];
    v7 = *MEMORY[0x1E695C330];

    if (v6 == v7)
    {
      v10 = [v4 defaultIMHandle];
      v8 = [v10 displayID];
    }

    else
    {
      v8 = 0;
    }

    v11 = MEMORY[0x1E69DCC60];
    v12 = [v5 copy];
    v9 = [v11 menuWithTitle:v8 children:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)callActionsForEntity:(id)a3
{
  v4 = a3;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__83;
  v43 = __Block_byref_object_dispose__83;
  v44 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__83;
  v37[4] = __Block_byref_object_dispose__83;
  v38 = 0;
  objc_initWeak(&location, self);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __49__CKDetailsContactsManager_callActionsForEntity___block_invoke;
  v35[3] = &unk_1E72F8978;
  v35[4] = &v39;
  v35[5] = v37;
  [(CKDetailsContactsManager *)self callableAddressesForEntity:v4 withResult:v35];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 propertyType];

  if ([(CKDetailsContactsManager *)self isFaceTimeAudioAvailableForEntity:v4])
  {
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"FACE_TIME_AUDIO" value:&stru_1F04268F8 table:@"ChatKit"];

    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone"];
    v10 = MEMORY[0x1E69DC628];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_2;
    v31[3] = &unk_1E72F89A0;
    v32 = v4;
    objc_copyWeak(&v34, &location);
    v33 = &v39;
    v11 = [v10 actionWithTitle:v8 image:v9 identifier:v8 handler:v31];
    [v5 addObject:v11];

    objc_destroyWeak(&v34);
  }

  if (v6 == *MEMORY[0x1E695C330])
  {
    v13 = CKFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"VOICE_CALL" value:&stru_1F04268F8 table:@"ChatKit"];

    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone"];
    v16 = MEMORY[0x1E69DC628];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_3;
    v28[3] = &unk_1E72F4F58;
    v29 = v4;
    objc_copyWeak(&v30, &location);
    v17 = [v16 actionWithTitle:v14 image:v15 identifier:v14 handler:v28];
    [v5 addObject:v17];

    objc_destroyWeak(&v30);
  }

  else
  {
    v12 = v40[5];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_4;
    v23 = &unk_1E72F89C8;
    v26 = v37;
    objc_copyWeak(&v27, &location);
    v24 = v4;
    v25 = v5;
    [v12 enumerateObjectsUsingBlock:&v20];

    objc_destroyWeak(&v27);
  }

  v18 = [v5 copy];

  objc_destroyWeak(&location);
  _Block_object_dispose(v37, 8);

  _Block_object_dispose(&v39, 8);

  return v18;
}

void __49__CKDetailsContactsManager_callActionsForEntity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) rawAddress];

  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [*(a1 + 32) rawAddress];
    [WeakRetained setPreferredCallService:2 forID:v4];
  }

  v7 = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 32);
  v6 = [*(*(*(a1 + 40) + 8) + 40) firstObject];
  [v7 startCommunicationForEntity:v5 action:1 address:v6];
}

void __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) rawAddress];

  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [*(a1 + 32) rawAddress];
    [WeakRetained setPreferredCallService:1 forID:v4];
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = [v5 originalAddress];
  [v7 startCommunicationForEntity:v5 action:3 address:v6];
}

void __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndex:a3];
  if (MEMORY[0x193AF5D40](v5))
  {
    v7 = @"phone";
LABEL_5:
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
    goto LABEL_7;
  }

  if (IMStringIsEmail())
  {
    v7 = @"envelope";
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:
  v9 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_5;
  v12[3] = &unk_1E72EC038;
  objc_copyWeak(&v15, (a1 + 56));
  v13 = *(a1 + 32);
  v10 = v5;
  v14 = v10;
  v11 = [v9 actionWithTitle:v10 image:v8 identifier:v10 handler:v12];
  [v11 setDiscoverabilityTitle:v6];
  if (MEMORY[0x193AF5D40](v10))
  {
    [*(a1 + 40) addObject:v11];
  }

  objc_destroyWeak(&v15);
}

void __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained startCommunicationForEntity:*(a1 + 32) action:3 address:*(a1 + 40)];
}

- (void)startCommunicationForEntity:(id)a3 action:(unint64_t)a4 address:(id)a5 usePreferredRouteIfAvailable:(BOOL)a6
{
  v6 = a6;
  v14 = a3;
  v10 = a5;
  if (a4 > 2)
  {
    if (a4 > 4)
    {
      if (a4 == 5)
      {
        [(CKDetailsContactsManager *)self shareMyScreenWithEntity:v14];
      }

      else if (a4 == 6)
      {
        [(CKDetailsContactsManager *)self inviteEntityToShareTheirScreen:v14];
      }
    }

    else if (a4 == 3)
    {
      [(CKDetailsContactsManager *)self _startCallWithEntity:v14 phoneAddress:v10];
    }

    else
    {
      [(CKDetailsContactsManager *)self _startMessageWithEntity:v14];
    }

    goto LABEL_17;
  }

  switch(a4)
  {
    case 0uLL:
      v11 = self;
      v12 = v14;
      v13 = 0;
LABEL_16:
      [(CKDetailsContactsManager *)v11 _startFacetimeCommunicationForEntity:v12 audioOnly:v13];
      break;
    case 1uLL:
      v11 = self;
      v12 = v14;
      v13 = 1;
      goto LABEL_16;
    case 2uLL:
      [(CKDetailsContactsManager *)self _startCommunicationForEntity:v14 usePreferredRouteIfAvailable:v6];
      break;
  }

LABEL_17:
}

- (void)startCommunicationForViewModel:(id)a3 action:(unint64_t)a4 address:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = [v11 entity];

  if (v9)
  {
    v10 = [v11 entity];
    [(CKDetailsContactsManager *)self startCommunicationForEntity:v10 action:a4 address:v8];
  }
}

- (void)_startMessageWithEntity:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 defaultIMHandle];
  v5 = [v4 ID];
  v7 = [v3 stringWithFormat:@"messages://open?addresses=%@", v5];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  [*MEMORY[0x1E69DDA98] openURL:v6];
}

- (void)_startCommunicationForEntity:(id)a3 usePreferredRouteIfAvailable:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[CKFaceTimeUtilities isTelephonyAvailable];
  v8 = [(CKDetailsContactsManager *)self isFaceTimeAudioAvailableForEntity:v6];
  v9 = [v6 propertyType];
  v10 = *MEMORY[0x1E695C330];

  if (v8)
  {
    if (!v7 || v9 != v10)
    {
      goto LABEL_4;
    }

    if (v4)
    {
      v13 = [v6 rawAddress];
      v14 = [(CKDetailsContactsManager *)self preferredCallServiceForID:v13];

      if (v14 == 2)
      {
LABEL_4:
        [(CKDetailsContactsManager *)self _startFacetimeCommunicationForEntity:v6 audioOnly:1];
        goto LABEL_21;
      }

      if (v14 == 1)
      {
LABEL_10:
        v12 = [v6 originalAddress];
        [(CKDetailsContactsManager *)self _startCallWithEntity:v6 phoneAddress:v12];

        goto LABEL_21;
      }
    }

    else
    {
      v14 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 134217984;
        v18 = v14;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Tried to start a call via the transcript header call button, but preferredCallServiceType (%lu) wan't explicitly accounted for. Defaulting to the number attached to the transcript since this is a phone transcript.", &v17, 0xCu);
      }
    }

    v16 = [v6 originalAddress];
    [(CKDetailsContactsManager *)self _startCallWithEntity:v6 phoneAddress:v16];
  }

  else
  {
    if (v9 == v10)
    {
      goto LABEL_10;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Tried to start a call via the transcript header call button, but this is a non-phone transcript and FT audio is unavailable. Unable to initiate a call.", &v17, 2u);
      }
    }
  }

LABEL_21:
}

- (void)_startCallWithEntity:(id)a3 phoneAddress:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69D8A58] sharedInstance];
  v9 = [v8 providerManager];
  v10 = [v9 telephonyProvider];

  v11 = [objc_alloc(MEMORY[0x1E69D8BD0]) initWithProvider:v10];
  v12 = [objc_alloc(MEMORY[0x1E69D8C00]) initWithType:2 value:v7];
  [v11 setHandle:v12];

  v13 = [v6 cnContactWithKeys:MEMORY[0x1E695E0F0]];
  v14 = [v13 identifier];
  [v11 setContactIdentifier:v14];

  [v11 setPerformDialAssist:1];
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v30 = v7;
    v31 = v6;
    v15 = [(CKDetailsContactsManager *)self conversation];
    v16 = [v15 chat];
    v17 = [v16 lastAddressedSIMID];

    v29 = v17;
    v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v17];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [v10 prioritizedSenderIdentities];
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          v25 = [v24 accountUUID];
          v26 = [v25 isEqual:v18];

          if (v26)
          {
            v27 = [v24 UUID];
            [v11 setLocalSenderIdentityUUID:v27];

            goto LABEL_12;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v7 = v30;
    v6 = v31;
  }

  v28 = [MEMORY[0x1E69D8A58] sharedInstance];
  [v28 launchAppForDialRequest:v11 completion:&__block_literal_global_298];
}

void __62__CKDetailsContactsManager__startCallWithEntity_phoneAddress___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Error making telephony call: %@", &v4, 0xCu);
    }
  }
}

- (void)_startFacetimeCommunicationForEntity:(id)a3 audioOnly:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 defaultIMHandle];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x1E69A5B78];
    v15 = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v11 = [(CKDetailsContactsManager *)self conversation];
    v12 = [v11 chat];
    v13 = [v12 lastAddressedHandleID];
    [v9 initiateTUConversationForParticipants:v10 senderAddress:v13 videoEnabled:!v4 groupID:0 displayName:0 screenShareType:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "No handle found for %@. FaceTime could not be initiated.", buf, 0xCu);
    }
  }
}

- (void)shareMyScreenWithEntity:(id)a3
{
  v12 = a3;
  v4 = [(CKDetailsContactsManager *)self modernScreenSharingCapabilities];
  v5 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:v12 capabilities:v4];

  if (v5)
  {
    v6 = [(CKDetailsContactsManager *)self conversation];
    v7 = [v6 chat];
    [v7 initiateTUConversationWithScreenShareType:1];
  }

  else
  {
    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_9;
    }

    v8 = [v12 defaultIMHandle];
    v6 = [v8 cnContactWithKeys:MEMORY[0x1E695E0F0]];

    v9 = [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v6];
    if (v9)
    {
      [v6 identifier];
    }

    else
    {
      [v12 rawAddress];
    }
    v7 = ;
    v10 = [MEMORY[0x1E69A5B50] sharedController];
    v11 = [v10 remoteDaemon];
    [v11 inviteHandleIDToShareMyScreen:v7 isContact:v9];
  }

LABEL_9:
}

- (void)inviteEntityToShareTheirScreen:(id)a3
{
  v12 = a3;
  v4 = [(CKDetailsContactsManager *)self modernScreenSharingCapabilities];
  v5 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:v12 capabilities:v4];

  if (v5)
  {
    v6 = [(CKDetailsContactsManager *)self conversation];
    v7 = [v6 chat];
    [v7 initiateTUConversationWithScreenShareType:2];
  }

  else
  {
    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_9;
    }

    v8 = [v12 defaultIMHandle];
    v6 = [v8 cnContactWithKeys:MEMORY[0x1E695E0F0]];

    v9 = [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v6];
    if (v9)
    {
      [v6 identifier];
    }

    else
    {
      [v12 rawAddress];
    }
    v7 = ;
    v10 = [MEMORY[0x1E69A5B50] sharedController];
    v11 = [v10 remoteDaemon];
    [v11 askHandleIDToShareTheirScreen:v7 isContact:v9];
  }

LABEL_9:
}

- (BOOL)_showPhoneButtonForEntity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CKDetailsContactsManager *)self isTelephonyCallAvailableForEntity:v4]|| [(CKDetailsContactsManager *)self isFaceTimeAudioAvailableForEntity:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isTelephonyCallAvailableForEntity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[CKFaceTimeUtilities isTelephonyAvailable];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 phoneIsAllowlisted];

    v8 = [v4 propertyType];
    v9 = *MEMORY[0x1E695C330];

    v10 = v5 & v7;
    if (v10 == 1 && v8 != v9)
    {
      LOBYTE(v10) = [(CKDetailsContactsManager *)self _hasLinkedTelephoneNumbersForEntity:v4];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)isFaceTimeVideoAvailableForEntity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [(CKDetailsContactsManager *)self conversation];
  if (![CKFaceTimeUtilities isFaceTimeVideoAvailable:v5])
  {

    goto LABEL_6;
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 faceTimeVideoIsAllowlisted];

  if (!v7)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [(CKDetailsContactsManager *)self _facetimeIDStatusForEntity:v4]== 1;
LABEL_7:

  return v8;
}

- (BOOL)isFaceTimeAudioAvailableForEntity:(id)a3
{
  v4 = a3;
  if ([CKFaceTimeUtilities isFaceTimeAudioAvailable:self->_conversation])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 faceTimeAudioIsAllowlisted];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 IDSCanonicalAddress];
  v8 = [(CKDetailsContactsManager *)self facetimeAudioIDStatuses];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v10 = [(CKDetailsContactsManager *)self facetimeAudioIDStatuses];
    v11 = [v10 objectForKey:v7];
    v12 = [v11 integerValue];

    v13 = v12 == 1;
  }

  else
  {
    v13 = 0;
  }

  return v6 & v13;
}

- (BOOL)showScreenSharingButtonForEntity:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsContactsManager *)self modernScreenSharingCapabilities];
  v6 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:v4 capabilities:v5];

  if (v6)
  {
    v7 = 1;
  }

  else if (CKIsRunningInMacCatalyst())
  {
    v7 = [(CKDetailsContactsManager *)self _screenSharingStatusForEntity:v4]== 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_showMessageButtonForEntity:(id)a3
{
  v3 = [(CKConversation *)self->_conversation recipients];
  v4 = [v3 count] >= 2 && CKIsRunningInMacCatalyst() == 0;

  return v4;
}

- (BOOL)_hasLinkedTelephoneNumbersForEntity:(id)a3
{
  v3 = MEMORY[0x1E69A7FD0];
  v4 = [a3 defaultIMHandle];
  v5 = [v4 cnContactWithKeys:MEMORY[0x1E695E0F0]];
  v6 = [v3 phoneNumbersForCNContact:v5];

  LOBYTE(v4) = [v6 count] != 0;
  return v4;
}

- (int64_t)_facetimeIDStatusForEntity:(id)a3
{
  v4 = [a3 IDSCanonicalAddress];
  v5 = [(CKDetailsContactsManager *)self facetimeIDStatuses];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(CKDetailsContactsManager *)self facetimeIDStatuses];
    v8 = [v7 objectForKey:v4];
    v9 = [v8 integerValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_facetimeAudioIDStatusForEntity:(id)a3
{
  v4 = [a3 IDSCanonicalAddress];
  v5 = [(CKDetailsContactsManager *)self facetimeAudioIDStatuses];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(CKDetailsContactsManager *)self facetimeAudioIDStatuses];
    v8 = [v7 objectForKey:v4];
    v9 = [v8 integerValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_screenSharingStatusForEntity:(id)a3
{
  v4 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v5 = [v4 IDSCanonicalAddress];
    v6 = [(CKDetailsContactsManager *)self screenSharingIDSStatuses];
    v7 = [v6 objectForKey:v5];

    if (v7)
    {
      v8 = [(CKDetailsContactsManager *)self screenSharingIDSStatuses];
      v9 = [v8 objectForKey:v5];
      v10 = [v9 integerValue];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_refreshIDSStatusWithCompletion:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKDetailsContactsManager *)self conversation];
  v6 = [v5 recipients];
  v7 = [v6 __imArrayByApplyingBlock:&__block_literal_global_128_1];

  if ([v7 count])
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v9 = MEMORY[0x1E69A80B0];
    v10 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
    v11 = *MEMORY[0x1E69A47F0];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_130;
    v36[3] = &unk_1E72EEB58;
    v36[4] = self;
    v12 = v8;
    v37 = v12;
    LOBYTE(v9) = [v9 refreshIDStatusForDestinations:v7 service:v11 listenerID:v10 queue:MEMORY[0x1E69E96A0] completionBlock:v36];

    if ((v9 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v39 = "[CKDetailsContactsManager _refreshIDSStatusWithCompletion:]";
          v40 = 2112;
          v41 = @"NO";
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%s leaving dispatch_group because executedRefreshForFaceTime: %@", buf, 0x16u);
        }
      }

      dispatch_group_leave(v12);
    }

    dispatch_group_enter(v12);
    v14 = MEMORY[0x1E69A80B0];
    v15 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
    v16 = *MEMORY[0x1E69A47E8];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_132;
    v34[3] = &unk_1E72EEB58;
    v34[4] = self;
    v17 = v12;
    v35 = v17;
    LOBYTE(v14) = [v14 refreshIDStatusForDestinations:v7 service:v16 listenerID:v15 queue:MEMORY[0x1E69E96A0] completionBlock:v34];

    if ((v14 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v39 = "[CKDetailsContactsManager _refreshIDSStatusWithCompletion:]";
          v40 = 2112;
          v41 = @"NO";
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "%s leaving dispatch_group because executedRefreshForCalling: %@", buf, 0x16u);
        }
      }

      dispatch_group_leave(v17);
    }

    v19 = [(CKDetailsContactsManager *)self conversation];
    v20 = [CKFaceTimeUtilities isModernScreenSharingAvailable:v19];

    if (v20)
    {
      dispatch_group_enter(v17);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_133;
      v32[3] = &unk_1E72EEB58;
      v32[4] = self;
      v33 = v17;
      [CKFaceTimeUtilities queryModernScreenSharingCapabilities:v7 completion:v32];
    }

    if (CKIsRunningInMacCatalyst())
    {
      dispatch_group_enter(v17);
      v21 = MEMORY[0x1E69A80B0];
      v22 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
      v23 = *MEMORY[0x1E69A4810];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_2;
      v30[3] = &unk_1E72EEB58;
      v30[4] = self;
      v24 = v17;
      v31 = v24;
      LOBYTE(v21) = [v21 refreshIDStatusForDestinations:v7 service:v23 listenerID:v22 queue:MEMORY[0x1E69E96A0] completionBlock:v30];

      if ((v21 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v39 = "[CKDetailsContactsManager _refreshIDSStatusWithCompletion:]";
            v40 = 2112;
            v41 = @"NO";
            _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "%s leaving dispatch_group because executedRefreshForScreenSharing: %@", buf, 0x16u);
          }
        }

        dispatch_group_leave(v24);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_134;
    block[3] = &unk_1E72EBDB8;
    v29 = v4;
    v26 = MEMORY[0x1E69E96A0];
    dispatch_group_notify(v17, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v39 = "[CKDetailsContactsManager _refreshIDSStatusWithCompletion:]";
        v40 = 2048;
        v41 = [v7 count];
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "%s executing completion block and early returning for addresses.count: %lu", buf, 0x16u);
      }
    }

    v4[2](v4);
  }
}

void __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_130(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setFacetimeIDStatuses:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_132(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setFacetimeAudioIDStatuses:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_133(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setModernScreenSharingCapabilities:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setScreenSharingIDSStatuses:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (unint64_t)preferredCallServiceForID:(id)a3
{
  v4 = a3;
  if (v4 && ![(CKDetailsContactsManager *)self _preferredRoutesDisabledViaServerBag])
  {
    v6 = [(CKDetailsContactsManager *)self _preferredCallServiceToIDMap];
    v7 = [v6 objectForKey:v4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 unsignedIntegerValue];
      if (v9 <= 2)
      {
        v5 = v9;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPreferredCallService:(unint64_t)a3 forID:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 <= 2)
  {
    if (v6)
    {
      v13 = v6;
      v8 = [(CKDetailsContactsManager *)self _preferredRoutesDisabledViaServerBag];
      v7 = v13;
      if (!v8)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        v10 = [MEMORY[0x1E695E000] standardUserDefaults];
        v11 = [v10 objectForKey:@"CKCallPreferredServiceToIDMap"];
        v12 = [v11 mutableCopy];

        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        if (a3)
        {
          [v12 setObject:v9 forKey:v13];
        }

        else
        {
          [v12 removeObjectForKey:v13];
        }

        [(CKDetailsContactsManager *)self _setPreferredCallServiceToIDMap:v12];

        v7 = v13;
      }
    }
  }
}

- (BOOL)_preferredRoutesDisabledViaServerBag
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"madrid-disable-preferred-call-service"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_preferredCallServiceToIDMap
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"CKCallPreferredServiceToIDMap"];

  return v3;
}

- (void)_setPreferredCallServiceToIDMap:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  [v5 setObject:v4 forKey:@"CKCallPreferredServiceToIDMap"];
}

- (void)beginFacetimeCallWithVideo:(BOOL)a3
{
  v3 = self;
  if (a3)
  {
    v4 = 1;
LABEL_5:

    [(CKDetailsContactsManager *)self _callButtonPressedWithVideoEnabled:v4];
    return;
  }

  v5 = [(CKDetailsContactsManager *)self conversation];
  v6 = [v5 recipients];
  v7 = [v6 count];

  self = v3;
  if (v7 >= 2)
  {
    v4 = 0;
    goto LABEL_5;
  }

  [(CKDetailsContactsManager *)v3 startAudioCommunicationUsingPreferredRouteIfAvailable:1];
}

- (void)startAudioCommunicationUsingPreferredRouteIfAvailable:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKDetailsContactsManager *)self conversation];
  v7 = [v5 recipient];

  v6 = v7;
  if (v7)
  {
    [(CKDetailsContactsManager *)self startCommunicationForEntity:v7 action:2 address:0 usePreferredRouteIfAvailable:v3];
    v6 = v7;
  }
}

- (void)_callButtonPressedWithVideoEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKDetailsContactsManager *)self conversation];
  v6 = [v5 chat];
  v11 = [v6 conversation];

  if (v11)
  {
    if ([v11 state])
    {
      [CKFaceTimeUtilities showCallControlsForConversation:v11];
    }

    else
    {
      v9 = [(CKDetailsContactsManager *)self conversation];
      v10 = [v9 chat];
      [v10 joinExistingTUConversation];
    }
  }

  else
  {
    v7 = [(CKDetailsContactsManager *)self conversation];
    v8 = [v7 chat];
    [v8 initiateTUConversationWithVideoEnabled:v3];
  }
}

- (CKDetailsContactsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end