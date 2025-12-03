@interface CKDetailsContactsManager
- (BOOL)_hasLinkedTelephoneNumbersForEntity:(id)entity;
- (BOOL)_isHandleActiveParticipantInTUConversation:(id)conversation;
- (BOOL)_preferredRoutesDisabledViaServerBag;
- (BOOL)_showMessageButtonForEntity:(id)entity;
- (BOOL)_showPhoneButtonForEntity:(id)entity;
- (BOOL)hasPreferredCallServiceForEntity:(id)entity;
- (BOOL)isFaceTimeAudioAvailableForEntity:(id)entity;
- (BOOL)isFaceTimeVideoAvailableForEntity:(id)entity;
- (BOOL)isTelephonyCallAvailableForEntity:(id)entity;
- (BOOL)shouldAlwaysShowCallMenuForEntity:(id)entity;
- (BOOL)showScreenSharingButtonForEntity:(id)entity;
- (CKDetailsContactsManager)initWithConversation:(id)conversation delegate:(id)delegate;
- (CKDetailsContactsManagerDelegate)delegate;
- (NSArray)contacts;
- (id)_preferredCallServiceToIDMap;
- (id)callActionsForEntity:(id)entity;
- (id)callMenuForEntity:(id)entity;
- (id)contextMenuForEntity:(id)entity atom:(id)atom;
- (id)conversationContextMenuConfigForEntity:(id)entity allowConversationRemoval:(BOOL)removal;
- (id)conversationContextMenuForUnknownEntity:(id)entity allowConversationRemoval:(BOOL)removal showUnknownContactActionInPopover:(BOOL)popover unknownContactActionHandler:(id)handler;
- (id)recipientsSortedByIsContact:(BOOL)contact alphabetically:(BOOL)alphabetically;
- (id)viewModelsSortedByIsContact:(BOOL)contact alphabetically:(BOOL)alphabetically;
- (int64_t)_facetimeAudioIDStatusForEntity:(id)entity;
- (int64_t)_facetimeIDStatusForEntity:(id)entity;
- (int64_t)_screenSharingStatusForEntity:(id)entity;
- (unint64_t)preferredCallServiceForID:(id)d;
- (void)_callButtonPressedWithVideoEnabled:(BOOL)enabled;
- (void)_handleLocationChanged:(id)changed;
- (void)_performUpdateViewModels;
- (void)_refreshIDSStatusWithCompletion:(id)completion;
- (void)_setPreferredCallServiceToIDMap:(id)map;
- (void)_startCallWithEntity:(id)entity phoneAddress:(id)address;
- (void)_startCommunicationForEntity:(id)entity usePreferredRouteIfAvailable:(BOOL)available;
- (void)_startFacetimeCommunicationForEntity:(id)entity audioOnly:(BOOL)only;
- (void)_startMessageWithEntity:(id)entity;
- (void)_updateViewModelsWithDelay:(BOOL)delay;
- (void)beginFacetimeCallWithVideo:(BOOL)video;
- (void)callableAddressesForEntity:(id)entity withResult:(id)result;
- (void)dealloc;
- (void)inviteEntityToShareTheirScreen:(id)screen;
- (void)sendEmail;
- (void)setPreferredCallService:(unint64_t)service forID:(id)d;
- (void)shareMyScreenWithEntity:(id)entity;
- (void)startAudioCommunicationUsingPreferredRouteIfAvailable:(BOOL)available;
- (void)startCommunicationForEntity:(id)entity action:(unint64_t)action address:(id)address usePreferredRouteIfAvailable:(BOOL)available;
- (void)startCommunicationForViewModel:(id)model action:(unint64_t)action address:(id)address;
@end

@implementation CKDetailsContactsManager

- (CKDetailsContactsManager)initWithConversation:(id)conversation delegate:(id)delegate
{
  conversationCopy = conversation;
  delegateCopy = delegate;
  v8 = [(CKDetailsContactsManager *)self init];
  v9 = v8;
  if (v8)
  {
    [(CKDetailsContactsManager *)v8 setConversation:conversationCopy];
    v10 = [MEMORY[0x1E696AEC0] stringGUIDForObject:v9];
    [(CKDetailsContactsManager *)v9 setServiceAvailabilityKey:v10];

    [(CKDetailsContactsManager *)v9 setDelegate:delegateCopy];
    mEMORY[0x1E699BE68] = [MEMORY[0x1E699BE68] sharedInstance];
    serviceAvailabilityKey = [(CKDetailsContactsManager *)v9 serviceAvailabilityKey];
    [mEMORY[0x1E699BE68] addListenerID:serviceAvailabilityKey forService:0];

    serviceAvailabilityKey2 = [(CKDetailsContactsManager *)v9 serviceAvailabilityKey];
    [mEMORY[0x1E699BE68] addListenerID:serviceAvailabilityKey2 forService:2];

    mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
    serviceAvailabilityKey3 = [(CKDetailsContactsManager *)v9 serviceAvailabilityKey];
    [mEMORY[0x1E69A4878] addListenerID:serviceAvailabilityKey3 forService:*MEMORY[0x1E69A47F0]];

    mEMORY[0x1E69A4878]2 = [MEMORY[0x1E69A4878] sharedInstance];
    serviceAvailabilityKey4 = [(CKDetailsContactsManager *)v9 serviceAvailabilityKey];
    [mEMORY[0x1E69A4878]2 addListenerID:serviceAvailabilityKey4 forService:*MEMORY[0x1E69A47E8]];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__handleConversationRecipientsDidChange_ name:@"CKConversationParticipantsDidChangeNotification" object:conversationCopy];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__handleConversationRecipientsDidChange_ name:@"CKConversationJoinStateDidChangeNotification" object:conversationCopy];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v9 selector:sel__handleAddressBookChange_ name:*MEMORY[0x1E69A6828] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v9 selector:sel__handleLocationChanged_ name:*MEMORY[0x1E69A5988] object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v9 selector:sel__handleConversationPendingRecipientsDidChange_ name:@"CKConversationPendingRecipientsUpdatedNotification" object:conversationCopy];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v9 selector:sel__handleMultiwayStateChanged_ name:*MEMORY[0x1E69A5840] object:0];

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

- (void)_updateViewModelsWithDelay:(BOOL)delay
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
  delegate = [(CKDetailsContactsManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKDetailsContactsManager *)self delegate];
    [delegate2 contactsManagerViewModelsDidChange:self];
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

- (BOOL)_isHandleActiveParticipantInTUConversation:(id)conversation
{
  v21 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  conversation = [(CKDetailsContactsManager *)self conversation];
  chat = [conversation chat];
  activeParticipantsForTUConversation = [chat activeParticipantsForTUConversation];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = activeParticipantsForTUConversation;
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

        handle = [*(*(&v16 + 1) + 8 * i) handle];
        value = [handle value];
        v14 = [value isEqualToString:conversationCopy];

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
  conversation = [(CKDetailsContactsManager *)self conversation];
  recipients = [conversation recipients];

  return recipients;
}

- (id)viewModelsSortedByIsContact:(BOOL)contact alphabetically:(BOOL)alphabetically
{
  alphabeticallyCopy = alphabetically;
  contactCopy = contact;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (contactCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"entity.defaultIMHandle.isContact" ascending:0];
    [v7 addObject:v8];
  }

  if (alphabeticallyCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"entity.fullName" ascending:1 selector:sel_caseInsensitiveCompare_];
    [v7 addObject:v9];
  }

  contactsViewModels = [(CKDetailsContactsManager *)self contactsViewModels];
  v11 = [contactsViewModels sortedArrayUsingDescriptors:v7];

  return v11;
}

- (id)recipientsSortedByIsContact:(BOOL)contact alphabetically:(BOOL)alphabetically
{
  alphabeticallyCopy = alphabetically;
  contactCopy = contact;
  conversation = [(CKDetailsContactsManager *)self conversation];
  v7 = [conversation recipientsSortedByIsContact:contactCopy alphabetically:alphabeticallyCopy];

  return v7;
}

- (void)dealloc
{
  mEMORY[0x1E699BE68] = [MEMORY[0x1E699BE68] sharedInstance];
  serviceAvailabilityKey = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
  [mEMORY[0x1E699BE68] removeListenerID:serviceAvailabilityKey forService:0];

  serviceAvailabilityKey2 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
  [mEMORY[0x1E699BE68] removeListenerID:serviceAvailabilityKey2 forService:2];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  serviceAvailabilityKey3 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
  [mEMORY[0x1E69A4878] removeListenerID:serviceAvailabilityKey3 forService:*MEMORY[0x1E69A47F0]];

  mEMORY[0x1E69A4878]2 = [MEMORY[0x1E69A4878] sharedInstance];
  serviceAvailabilityKey4 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
  [mEMORY[0x1E69A4878]2 removeListenerID:serviceAvailabilityKey4 forService:*MEMORY[0x1E69A47E8]];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v11.receiver = self;
  v11.super_class = CKDetailsContactsManager;
  [(CKDetailsContactsManager *)&v11 dealloc];
}

- (void)_handleLocationChanged:(id)changed
{
  object = [changed object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fmfHandle = [object fmfHandle];
    if (fmfHandle)
    {
      conversation = [(CKDetailsContactsManager *)self conversation];
      chat = [conversation chat];
      allSiblingFMFHandles = [chat allSiblingFMFHandles];
      v8 = [allSiblingFMFHandles containsObject:fmfHandle];

      if (v8)
      {
        [(CKDetailsContactsManager *)self _updateViewModelsWithDelay:1];
      }
    }
  }

  else
  {
    fmfHandle = 0;
  }
}

- (id)conversationContextMenuConfigForEntity:(id)entity allowConversationRemoval:(BOOL)removal
{
  v4 = [(CKDetailsContactsManager *)self conversationContextMenuForEntity:entity allowConversationRemoval:removal];
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

- (id)conversationContextMenuForUnknownEntity:(id)entity allowConversationRemoval:(BOOL)removal showUnknownContactActionInPopover:(BOOL)popover unknownContactActionHandler:(id)handler
{
  popoverCopy = popover;
  removalCopy = removal;
  entityCopy = entity;
  v10 = objc_opt_new();
  defaultIMHandle = [entityCopy defaultIMHandle];
  v12 = [CKContextMenuGenerator recipientSubmenuForHandle:defaultIMHandle];
  if (v12)
  {
    [v10 addObject:v12];
  }

  conversation = [(CKDetailsContactsManager *)self conversation];
  v14 = [CKContextMenuGenerator submenuForIndividualParticipantWithHandle:defaultIMHandle forConversation:conversation includeAddToContactsAction:!popoverCopy includeRemoveAction:removalCopy];

  if (v14)
  {
    [v10 addObject:v14];
  }

  if ([(CKDetailsContactsManager *)self showScreenSharingButtonForEntity:entityCopy])
  {
    conversation2 = [(CKDetailsContactsManager *)self conversation];
    v16 = [CKContextMenuGenerator subMenuForScreenSharingOptionsWithHandle:defaultIMHandle conversation:conversation2 andContactsManager:self];

    if (v16)
    {
      [v10 addObject:v16];
    }
  }

  v17 = objc_opt_new();
  if ([(CKDetailsContactsManager *)self _showFaceTimeVideoButtonForEntity:entityCopy])
  {
    v18 = [CKContextMenuGenerator menuActionToInitiateFaceTimeVideoWithHandle:defaultIMHandle andContactsManager:self];
    v19 = [CKContextMenuGenerator menuActionToInitiateFaceTimeAudioWithHandle:defaultIMHandle andContactsManager:self];
    if (v18)
    {
      [v17 addObject:v18];
    }

    if (v19)
    {
      [v17 addObject:v19];
    }
  }

  v20 = [CKContextMenuGenerator menuActionsToInitiateRelayPhoneCallWithHandle:defaultIMHandle];
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

- (id)contextMenuForEntity:(id)entity atom:(id)atom
{
  atomCopy = atom;
  entityCopy = entity;
  defaultIMHandle = [entityCopy defaultIMHandle];
  isContact = [defaultIMHandle isContact];

  if (isContact)
  {
    [(CKDetailsContactsManager *)self conversationContextMenuForEntity:entityCopy allowConversationRemoval:0];
  }

  else
  {
    [(CKDetailsContactsManager *)self contextMenuForUnknownRecipient:entityCopy atom:atomCopy];
  }
  v10 = ;

  return v10;
}

- (void)sendEmail
{
  v21[1] = *MEMORY[0x1E69E9840];
  conversation = [(CKDetailsContactsManager *)self conversation];

  if (conversation)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CEF0]);
    descriptorForRequiredKeys = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
    v21[0] = descriptorForRequiredKeys;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

    conversation2 = [(CKDetailsContactsManager *)self conversation];
    chat = [conversation2 chat];
    participants = [chat participants];
    v10 = [participants count];

    conversation3 = [(CKDetailsContactsManager *)self conversation];
    v12 = [conversation3 conversationVisualIdentityWithKeys:v6 requestedNumberOfContactsToFetch:v10];

    contacts = [v12 contacts];
    v14 = [v4 mailUrlForContacts:contacts];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __37__CKDetailsContactsManager_sendEmail__block_invoke;
    v19[3] = &unk_1E72EB9C8;
    v20 = v14;
    v16 = v14;
    [mEMORY[0x1E69DC668] openURL:v16 options:MEMORY[0x1E695E0F8] completionHandler:v19];
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

- (void)callableAddressesForEntity:(id)entity withResult:(id)result
{
  v33 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  resultCopy = result;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  defaultIMHandle = [entityCopy defaultIMHandle];
  v10 = [defaultIMHandle cnContactWithKeys:MEMORY[0x1E695E0F0]];

  phoneNumbers = [v10 phoneNumbers];
  if ([phoneNumbers count])
  {
    v25 = v10;
    v26 = entityCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = phoneNumbers;
    obj = phoneNumbers;
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
          value = [v16 value];
          stringValue = [value stringValue];

          [v7 addObject:stringValue];
          label = [v16 label];
          v20 = [MEMORY[0x1E695CEE0] localizedStringForLabel:label];
          if (![(__CFString *)v20 length])
          {
            v21 = label;

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

    entityCopy = v26;
    phoneNumbers = v24;
    v10 = v25;
  }

  v22 = [v7 copy];
  v23 = [v8 copy];
  resultCopy[2](resultCopy, v22, v23);
}

- (BOOL)hasPreferredCallServiceForEntity:(id)entity
{
  rawAddress = [entity rawAddress];
  v5 = [(CKDetailsContactsManager *)self preferredCallServiceForID:rawAddress];

  return v5 != 0;
}

- (BOOL)shouldAlwaysShowCallMenuForEntity:(id)entity
{
  entityCopy = entity;
  v5 = [(CKDetailsContactsManager *)self isFaceTimeAudioAvailableForEntity:entityCopy];
  propertyType = [entityCopy propertyType];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CKDetailsContactsManager_shouldAlwaysShowCallMenuForEntity___block_invoke;
  v10[3] = &unk_1E72F8950;
  v10[4] = &v11;
  [(CKDetailsContactsManager *)self callableAddressesForEntity:entityCopy withResult:v10];
  v7 = [(CKDetailsContactsManager *)self hasPreferredCallServiceForEntity:entityCopy];
  if (propertyType == *MEMORY[0x1E695C330])
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

- (id)callMenuForEntity:(id)entity
{
  entityCopy = entity;
  v5 = [(CKDetailsContactsManager *)self callActionsForEntity:entityCopy];
  if ([v5 count])
  {
    propertyType = [entityCopy propertyType];
    v7 = *MEMORY[0x1E695C330];

    if (propertyType == v7)
    {
      defaultIMHandle = [entityCopy defaultIMHandle];
      displayID = [defaultIMHandle displayID];
    }

    else
    {
      displayID = 0;
    }

    v11 = MEMORY[0x1E69DCC60];
    v12 = [v5 copy];
    v9 = [v11 menuWithTitle:displayID children:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)callActionsForEntity:(id)entity
{
  entityCopy = entity;
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
  [(CKDetailsContactsManager *)self callableAddressesForEntity:entityCopy withResult:v35];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  propertyType = [entityCopy propertyType];

  if ([(CKDetailsContactsManager *)self isFaceTimeAudioAvailableForEntity:entityCopy])
  {
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"FACE_TIME_AUDIO" value:&stru_1F04268F8 table:@"ChatKit"];

    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone"];
    v10 = MEMORY[0x1E69DC628];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_2;
    v31[3] = &unk_1E72F89A0;
    v32 = entityCopy;
    objc_copyWeak(&v34, &location);
    v33 = &v39;
    v11 = [v10 actionWithTitle:v8 image:v9 identifier:v8 handler:v31];
    [v5 addObject:v11];

    objc_destroyWeak(&v34);
  }

  if (propertyType == *MEMORY[0x1E695C330])
  {
    v13 = CKFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"VOICE_CALL" value:&stru_1F04268F8 table:@"ChatKit"];

    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone"];
    v16 = MEMORY[0x1E69DC628];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __49__CKDetailsContactsManager_callActionsForEntity___block_invoke_3;
    v28[3] = &unk_1E72F4F58;
    v29 = entityCopy;
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
    v24 = entityCopy;
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

- (void)startCommunicationForEntity:(id)entity action:(unint64_t)action address:(id)address usePreferredRouteIfAvailable:(BOOL)available
{
  availableCopy = available;
  entityCopy = entity;
  addressCopy = address;
  if (action > 2)
  {
    if (action > 4)
    {
      if (action == 5)
      {
        [(CKDetailsContactsManager *)self shareMyScreenWithEntity:entityCopy];
      }

      else if (action == 6)
      {
        [(CKDetailsContactsManager *)self inviteEntityToShareTheirScreen:entityCopy];
      }
    }

    else if (action == 3)
    {
      [(CKDetailsContactsManager *)self _startCallWithEntity:entityCopy phoneAddress:addressCopy];
    }

    else
    {
      [(CKDetailsContactsManager *)self _startMessageWithEntity:entityCopy];
    }

    goto LABEL_17;
  }

  switch(action)
  {
    case 0uLL:
      selfCopy2 = self;
      v12 = entityCopy;
      v13 = 0;
LABEL_16:
      [(CKDetailsContactsManager *)selfCopy2 _startFacetimeCommunicationForEntity:v12 audioOnly:v13];
      break;
    case 1uLL:
      selfCopy2 = self;
      v12 = entityCopy;
      v13 = 1;
      goto LABEL_16;
    case 2uLL:
      [(CKDetailsContactsManager *)self _startCommunicationForEntity:entityCopy usePreferredRouteIfAvailable:availableCopy];
      break;
  }

LABEL_17:
}

- (void)startCommunicationForViewModel:(id)model action:(unint64_t)action address:(id)address
{
  modelCopy = model;
  addressCopy = address;
  entity = [modelCopy entity];

  if (entity)
  {
    entity2 = [modelCopy entity];
    [(CKDetailsContactsManager *)self startCommunicationForEntity:entity2 action:action address:addressCopy];
  }
}

- (void)_startMessageWithEntity:(id)entity
{
  v3 = MEMORY[0x1E696AEC0];
  defaultIMHandle = [entity defaultIMHandle];
  v5 = [defaultIMHandle ID];
  v7 = [v3 stringWithFormat:@"messages://open?addresses=%@", v5];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  [*MEMORY[0x1E69DDA98] openURL:v6];
}

- (void)_startCommunicationForEntity:(id)entity usePreferredRouteIfAvailable:(BOOL)available
{
  availableCopy = available;
  v19 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  v7 = +[CKFaceTimeUtilities isTelephonyAvailable];
  v8 = [(CKDetailsContactsManager *)self isFaceTimeAudioAvailableForEntity:entityCopy];
  propertyType = [entityCopy propertyType];
  v10 = *MEMORY[0x1E695C330];

  if (v8)
  {
    if (!v7 || propertyType != v10)
    {
      goto LABEL_4;
    }

    if (availableCopy)
    {
      rawAddress = [entityCopy rawAddress];
      v14 = [(CKDetailsContactsManager *)self preferredCallServiceForID:rawAddress];

      if (v14 == 2)
      {
LABEL_4:
        [(CKDetailsContactsManager *)self _startFacetimeCommunicationForEntity:entityCopy audioOnly:1];
        goto LABEL_21;
      }

      if (v14 == 1)
      {
LABEL_10:
        originalAddress = [entityCopy originalAddress];
        [(CKDetailsContactsManager *)self _startCallWithEntity:entityCopy phoneAddress:originalAddress];

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

    originalAddress2 = [entityCopy originalAddress];
    [(CKDetailsContactsManager *)self _startCallWithEntity:entityCopy phoneAddress:originalAddress2];
  }

  else
  {
    if (propertyType == v10)
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

- (void)_startCallWithEntity:(id)entity phoneAddress:(id)address
{
  v37 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  addressCopy = address;
  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  providerManager = [mEMORY[0x1E69D8A58] providerManager];
  telephonyProvider = [providerManager telephonyProvider];

  v11 = [objc_alloc(MEMORY[0x1E69D8BD0]) initWithProvider:telephonyProvider];
  v12 = [objc_alloc(MEMORY[0x1E69D8C00]) initWithType:2 value:addressCopy];
  [v11 setHandle:v12];

  v13 = [entityCopy cnContactWithKeys:MEMORY[0x1E695E0F0]];
  identifier = [v13 identifier];
  [v11 setContactIdentifier:identifier];

  [v11 setPerformDialAssist:1];
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v30 = addressCopy;
    v31 = entityCopy;
    conversation = [(CKDetailsContactsManager *)self conversation];
    chat = [conversation chat];
    lastAddressedSIMID = [chat lastAddressedSIMID];

    v29 = lastAddressedSIMID;
    v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:lastAddressedSIMID];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
    v20 = [prioritizedSenderIdentities countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(prioritizedSenderIdentities);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          accountUUID = [v24 accountUUID];
          v26 = [accountUUID isEqual:v18];

          if (v26)
          {
            uUID = [v24 UUID];
            [v11 setLocalSenderIdentityUUID:uUID];

            goto LABEL_12;
          }
        }

        v21 = [prioritizedSenderIdentities countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    addressCopy = v30;
    entityCopy = v31;
  }

  mEMORY[0x1E69D8A58]2 = [MEMORY[0x1E69D8A58] sharedInstance];
  [mEMORY[0x1E69D8A58]2 launchAppForDialRequest:v11 completion:&__block_literal_global_298];
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

- (void)_startFacetimeCommunicationForEntity:(id)entity audioOnly:(BOOL)only
{
  onlyCopy = only;
  v18 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  defaultIMHandle = [entityCopy defaultIMHandle];
  v8 = defaultIMHandle;
  if (defaultIMHandle)
  {
    v9 = MEMORY[0x1E69A5B78];
    v15 = defaultIMHandle;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    conversation = [(CKDetailsContactsManager *)self conversation];
    chat = [conversation chat];
    lastAddressedHandleID = [chat lastAddressedHandleID];
    [v9 initiateTUConversationForParticipants:v10 senderAddress:lastAddressedHandleID videoEnabled:!onlyCopy groupID:0 displayName:0 screenShareType:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = entityCopy;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "No handle found for %@. FaceTime could not be initiated.", buf, 0xCu);
    }
  }
}

- (void)shareMyScreenWithEntity:(id)entity
{
  entityCopy = entity;
  modernScreenSharingCapabilities = [(CKDetailsContactsManager *)self modernScreenSharingCapabilities];
  v5 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:entityCopy capabilities:modernScreenSharingCapabilities];

  if (v5)
  {
    conversation = [(CKDetailsContactsManager *)self conversation];
    chat = [conversation chat];
    [chat initiateTUConversationWithScreenShareType:1];
  }

  else
  {
    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_9;
    }

    defaultIMHandle = [entityCopy defaultIMHandle];
    conversation = [defaultIMHandle cnContactWithKeys:MEMORY[0x1E695E0F0]];

    v9 = [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:conversation];
    if (v9)
    {
      [conversation identifier];
    }

    else
    {
      [entityCopy rawAddress];
    }
    chat = ;
    mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
    remoteDaemon = [mEMORY[0x1E69A5B50] remoteDaemon];
    [remoteDaemon inviteHandleIDToShareMyScreen:chat isContact:v9];
  }

LABEL_9:
}

- (void)inviteEntityToShareTheirScreen:(id)screen
{
  screenCopy = screen;
  modernScreenSharingCapabilities = [(CKDetailsContactsManager *)self modernScreenSharingCapabilities];
  v5 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:screenCopy capabilities:modernScreenSharingCapabilities];

  if (v5)
  {
    conversation = [(CKDetailsContactsManager *)self conversation];
    chat = [conversation chat];
    [chat initiateTUConversationWithScreenShareType:2];
  }

  else
  {
    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_9;
    }

    defaultIMHandle = [screenCopy defaultIMHandle];
    conversation = [defaultIMHandle cnContactWithKeys:MEMORY[0x1E695E0F0]];

    v9 = [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:conversation];
    if (v9)
    {
      [conversation identifier];
    }

    else
    {
      [screenCopy rawAddress];
    }
    chat = ;
    mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
    remoteDaemon = [mEMORY[0x1E69A5B50] remoteDaemon];
    [remoteDaemon askHandleIDToShareTheirScreen:chat isContact:v9];
  }

LABEL_9:
}

- (BOOL)_showPhoneButtonForEntity:(id)entity
{
  entityCopy = entity;
  if (entityCopy)
  {
    v5 = [(CKDetailsContactsManager *)self isTelephonyCallAvailableForEntity:entityCopy]|| [(CKDetailsContactsManager *)self isFaceTimeAudioAvailableForEntity:entityCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isTelephonyCallAvailableForEntity:(id)entity
{
  entityCopy = entity;
  if (entityCopy)
  {
    v5 = +[CKFaceTimeUtilities isTelephonyAvailable];
    v6 = +[CKUIBehavior sharedBehaviors];
    phoneIsAllowlisted = [v6 phoneIsAllowlisted];

    propertyType = [entityCopy propertyType];
    v9 = *MEMORY[0x1E695C330];

    v10 = v5 & phoneIsAllowlisted;
    if (v10 == 1 && propertyType != v9)
    {
      LOBYTE(v10) = [(CKDetailsContactsManager *)self _hasLinkedTelephoneNumbersForEntity:entityCopy];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)isFaceTimeVideoAvailableForEntity:(id)entity
{
  entityCopy = entity;
  if (!entityCopy)
  {
    goto LABEL_6;
  }

  conversation = [(CKDetailsContactsManager *)self conversation];
  if (![CKFaceTimeUtilities isFaceTimeVideoAvailable:conversation])
  {

    goto LABEL_6;
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  faceTimeVideoIsAllowlisted = [v6 faceTimeVideoIsAllowlisted];

  if (!faceTimeVideoIsAllowlisted)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [(CKDetailsContactsManager *)self _facetimeIDStatusForEntity:entityCopy]== 1;
LABEL_7:

  return v8;
}

- (BOOL)isFaceTimeAudioAvailableForEntity:(id)entity
{
  entityCopy = entity;
  if ([CKFaceTimeUtilities isFaceTimeAudioAvailable:self->_conversation])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    faceTimeAudioIsAllowlisted = [v5 faceTimeAudioIsAllowlisted];
  }

  else
  {
    faceTimeAudioIsAllowlisted = 0;
  }

  iDSCanonicalAddress = [entityCopy IDSCanonicalAddress];
  facetimeAudioIDStatuses = [(CKDetailsContactsManager *)self facetimeAudioIDStatuses];
  v9 = [facetimeAudioIDStatuses objectForKey:iDSCanonicalAddress];

  if (v9)
  {
    facetimeAudioIDStatuses2 = [(CKDetailsContactsManager *)self facetimeAudioIDStatuses];
    v11 = [facetimeAudioIDStatuses2 objectForKey:iDSCanonicalAddress];
    integerValue = [v11 integerValue];

    v13 = integerValue == 1;
  }

  else
  {
    v13 = 0;
  }

  return faceTimeAudioIsAllowlisted & v13;
}

- (BOOL)showScreenSharingButtonForEntity:(id)entity
{
  entityCopy = entity;
  modernScreenSharingCapabilities = [(CKDetailsContactsManager *)self modernScreenSharingCapabilities];
  v6 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:entityCopy capabilities:modernScreenSharingCapabilities];

  if (v6)
  {
    v7 = 1;
  }

  else if (CKIsRunningInMacCatalyst())
  {
    v7 = [(CKDetailsContactsManager *)self _screenSharingStatusForEntity:entityCopy]== 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_showMessageButtonForEntity:(id)entity
{
  recipients = [(CKConversation *)self->_conversation recipients];
  v4 = [recipients count] >= 2 && CKIsRunningInMacCatalyst() == 0;

  return v4;
}

- (BOOL)_hasLinkedTelephoneNumbersForEntity:(id)entity
{
  v3 = MEMORY[0x1E69A7FD0];
  defaultIMHandle = [entity defaultIMHandle];
  v5 = [defaultIMHandle cnContactWithKeys:MEMORY[0x1E695E0F0]];
  v6 = [v3 phoneNumbersForCNContact:v5];

  LOBYTE(defaultIMHandle) = [v6 count] != 0;
  return defaultIMHandle;
}

- (int64_t)_facetimeIDStatusForEntity:(id)entity
{
  iDSCanonicalAddress = [entity IDSCanonicalAddress];
  facetimeIDStatuses = [(CKDetailsContactsManager *)self facetimeIDStatuses];
  v6 = [facetimeIDStatuses objectForKey:iDSCanonicalAddress];

  if (v6)
  {
    facetimeIDStatuses2 = [(CKDetailsContactsManager *)self facetimeIDStatuses];
    v8 = [facetimeIDStatuses2 objectForKey:iDSCanonicalAddress];
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)_facetimeAudioIDStatusForEntity:(id)entity
{
  iDSCanonicalAddress = [entity IDSCanonicalAddress];
  facetimeAudioIDStatuses = [(CKDetailsContactsManager *)self facetimeAudioIDStatuses];
  v6 = [facetimeAudioIDStatuses objectForKey:iDSCanonicalAddress];

  if (v6)
  {
    facetimeAudioIDStatuses2 = [(CKDetailsContactsManager *)self facetimeAudioIDStatuses];
    v8 = [facetimeAudioIDStatuses2 objectForKey:iDSCanonicalAddress];
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)_screenSharingStatusForEntity:(id)entity
{
  entityCopy = entity;
  if (CKIsRunningInMacCatalyst())
  {
    iDSCanonicalAddress = [entityCopy IDSCanonicalAddress];
    screenSharingIDSStatuses = [(CKDetailsContactsManager *)self screenSharingIDSStatuses];
    v7 = [screenSharingIDSStatuses objectForKey:iDSCanonicalAddress];

    if (v7)
    {
      screenSharingIDSStatuses2 = [(CKDetailsContactsManager *)self screenSharingIDSStatuses];
      v9 = [screenSharingIDSStatuses2 objectForKey:iDSCanonicalAddress];
      integerValue = [v9 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)_refreshIDSStatusWithCompletion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  conversation = [(CKDetailsContactsManager *)self conversation];
  recipients = [conversation recipients];
  v7 = [recipients __imArrayByApplyingBlock:&__block_literal_global_128_1];

  if ([v7 count])
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v9 = MEMORY[0x1E69A80B0];
    serviceAvailabilityKey = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
    v11 = *MEMORY[0x1E69A47F0];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_130;
    v36[3] = &unk_1E72EEB58;
    v36[4] = self;
    v12 = v8;
    v37 = v12;
    LOBYTE(v9) = [v9 refreshIDStatusForDestinations:v7 service:v11 listenerID:serviceAvailabilityKey queue:MEMORY[0x1E69E96A0] completionBlock:v36];

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
    serviceAvailabilityKey2 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
    v16 = *MEMORY[0x1E69A47E8];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_132;
    v34[3] = &unk_1E72EEB58;
    v34[4] = self;
    v17 = v12;
    v35 = v17;
    LOBYTE(v14) = [v14 refreshIDStatusForDestinations:v7 service:v16 listenerID:serviceAvailabilityKey2 queue:MEMORY[0x1E69E96A0] completionBlock:v34];

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

    conversation2 = [(CKDetailsContactsManager *)self conversation];
    v20 = [CKFaceTimeUtilities isModernScreenSharingAvailable:conversation2];

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
      serviceAvailabilityKey3 = [(CKDetailsContactsManager *)self serviceAvailabilityKey];
      v23 = *MEMORY[0x1E69A4810];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __60__CKDetailsContactsManager__refreshIDSStatusWithCompletion___block_invoke_2;
      v30[3] = &unk_1E72EEB58;
      v30[4] = self;
      v24 = v17;
      v31 = v24;
      LOBYTE(v21) = [v21 refreshIDStatusForDestinations:v7 service:v23 listenerID:serviceAvailabilityKey3 queue:MEMORY[0x1E69E96A0] completionBlock:v30];

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
    v29 = completionCopy;
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

    completionCopy[2](completionCopy);
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

- (unint64_t)preferredCallServiceForID:(id)d
{
  dCopy = d;
  if (dCopy && ![(CKDetailsContactsManager *)self _preferredRoutesDisabledViaServerBag])
  {
    _preferredCallServiceToIDMap = [(CKDetailsContactsManager *)self _preferredCallServiceToIDMap];
    v7 = [_preferredCallServiceToIDMap objectForKey:dCopy];
    v8 = v7;
    if (v7)
    {
      unsignedIntegerValue = [v7 unsignedIntegerValue];
      if (unsignedIntegerValue <= 2)
      {
        v5 = unsignedIntegerValue;
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

- (void)setPreferredCallService:(unint64_t)service forID:(id)d
{
  dCopy = d;
  v7 = dCopy;
  if (service <= 2)
  {
    if (dCopy)
    {
      v13 = dCopy;
      _preferredRoutesDisabledViaServerBag = [(CKDetailsContactsManager *)self _preferredRoutesDisabledViaServerBag];
      v7 = v13;
      if (!_preferredRoutesDisabledViaServerBag)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:service];
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        v11 = [standardUserDefaults objectForKey:@"CKCallPreferredServiceToIDMap"];
        v12 = [v11 mutableCopy];

        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        if (service)
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
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_preferredCallServiceToIDMap
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"CKCallPreferredServiceToIDMap"];

  return v3;
}

- (void)_setPreferredCallServiceToIDMap:(id)map
{
  v3 = MEMORY[0x1E695E000];
  mapCopy = map;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:mapCopy forKey:@"CKCallPreferredServiceToIDMap"];
}

- (void)beginFacetimeCallWithVideo:(BOOL)video
{
  selfCopy = self;
  if (video)
  {
    v4 = 1;
LABEL_5:

    [(CKDetailsContactsManager *)self _callButtonPressedWithVideoEnabled:v4];
    return;
  }

  conversation = [(CKDetailsContactsManager *)self conversation];
  recipients = [conversation recipients];
  v7 = [recipients count];

  self = selfCopy;
  if (v7 >= 2)
  {
    v4 = 0;
    goto LABEL_5;
  }

  [(CKDetailsContactsManager *)selfCopy startAudioCommunicationUsingPreferredRouteIfAvailable:1];
}

- (void)startAudioCommunicationUsingPreferredRouteIfAvailable:(BOOL)available
{
  availableCopy = available;
  conversation = [(CKDetailsContactsManager *)self conversation];
  recipient = [conversation recipient];

  v6 = recipient;
  if (recipient)
  {
    [(CKDetailsContactsManager *)self startCommunicationForEntity:recipient action:2 address:0 usePreferredRouteIfAvailable:availableCopy];
    v6 = recipient;
  }
}

- (void)_callButtonPressedWithVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  conversation = [(CKDetailsContactsManager *)self conversation];
  chat = [conversation chat];
  conversation2 = [chat conversation];

  if (conversation2)
  {
    if ([conversation2 state])
    {
      [CKFaceTimeUtilities showCallControlsForConversation:conversation2];
    }

    else
    {
      conversation3 = [(CKDetailsContactsManager *)self conversation];
      chat2 = [conversation3 chat];
      [chat2 joinExistingTUConversation];
    }
  }

  else
  {
    conversation4 = [(CKDetailsContactsManager *)self conversation];
    chat3 = [conversation4 chat];
    [chat3 initiateTUConversationWithVideoEnabled:enabledCopy];
  }
}

- (CKDetailsContactsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end