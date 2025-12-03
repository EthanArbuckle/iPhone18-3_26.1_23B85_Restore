@interface CKFindMySessionCoordinator
- (BOOL)findMyNavBarEnabled;
- (CKFindMySessionCoordinator)initWithConversation:(id)conversation observesNotifications:(BOOL)notifications statusUpdateChangeProvider:(id)provider;
- (id)_targetFindMyHandleFromNotification:(id)notification;
- (void)_setupNotificationObservers;
- (void)_updateLocationLabel;
- (void)dealloc;
- (void)fmfSessionChatLocationReceived:(id)received;
- (void)fmfSessionChatLocationRefreshed:(id)refreshed;
- (void)fmfSessionRelationshipDidChange:(id)change;
- (void)refreshFMFLocationIfNecessary;
- (void)setLocationToDisplay:(id)display;
- (void)updateLocationToDisplayWithHandle:(id)handle;
@end

@implementation CKFindMySessionCoordinator

- (CKFindMySessionCoordinator)initWithConversation:(id)conversation observesNotifications:(BOOL)notifications statusUpdateChangeProvider:(id)provider
{
  notificationsCopy = notifications;
  v27 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = CKFindMySessionCoordinator;
  v11 = [(CKFindMySessionCoordinator *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_conversation, conversation);
    v13 = _Block_copy(providerCopy);
    statusUpdateProvider = v12->_statusUpdateProvider;
    v12->_statusUpdateProvider = v13;

    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      if (notificationsCopy)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      findMyNavBarEnabled = [(CKFindMySessionCoordinator *)v12 findMyNavBarEnabled];
      *buf = 138412802;
      if (findMyNavBarEnabled)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v22 = conversationCopy;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Initializing for conversation={%@} observesNotifications={%@} isFindMyNavBarEnabled={%@}.", buf, 0x20u);
    }

    if (notificationsCopy)
    {
      [(CKFindMySessionCoordinator *)v12 _setupNotificationObservers];
    }

    [(CKFindMySessionCoordinator *)v12 refreshFMFLocationIfNecessary];
  }

  return v12;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    conversation = [(CKFindMySessionCoordinator *)self conversation];
    *buf = 138412290;
    v7 = conversation;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Deallocating FMF coordinator for conversation={%@}", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CKFindMySessionCoordinator;
  [(CKFindMySessionCoordinator *)&v5 dealloc];
}

- (BOOL)findMyNavBarEnabled
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyNavBarEnabled = [mEMORY[0x1E69A8070] isFindMyNavBarEnabled];

  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  disableLocationSharing = [mEMORY[0x1E69A5B70] disableLocationSharing];

  conversation = [(CKFindMySessionCoordinator *)self conversation];
  if (conversation)
  {
    conversation2 = [(CKFindMySessionCoordinator *)self conversation];
    v9 = [conversation2 isGroupConversation] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return isFindMyNavBarEnabled & v9 & (disableLocationSharing ^ 1);
}

- (void)_setupNotificationObservers
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CKFindMySessionCoordinator *)self findMyNavBarEnabled])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_fmfSessionRelationshipDidChange_ name:*MEMORY[0x1E69A5990] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E69A5980];
    conversation = [(CKFindMySessionCoordinator *)self conversation];
    chat = [conversation chat];
    [defaultCenter2 addObserver:self selector:sel_fmfSessionChatLocationRefreshed_ name:v5 object:chat];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_fmfSessionChatLocationReceived_ name:*MEMORY[0x1E69A5988] object:0];

    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      conversation2 = [(CKFindMySessionCoordinator *)self conversation];
      v12 = 134217984;
      v13 = conversation2;
      v11 = "Registered notification observers for FindMy in conversation {%p}.";
LABEL_6:
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, v11, &v12, 0xCu);
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      conversation2 = [(CKFindMySessionCoordinator *)self conversation];
      v12 = 134217984;
      v13 = conversation2;
      v11 = "Location support in this chat is not available. No need to observe for this conversation {%p}.";
      goto LABEL_6;
    }
  }
}

- (id)_targetFindMyHandleFromNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [notificationCopy object];
  }

  else
  {
    object2 = 0;
  }

  return object2;
}

- (void)fmfSessionChatLocationRefreshed:(id)refreshed
{
  v21 = *MEMORY[0x1E69E9840];
  refreshedCopy = refreshed;
  object = [refreshedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [refreshedCopy object];
  }

  else
  {
    object2 = 0;
  }

  conversation = [(CKFindMySessionCoordinator *)self conversation];
  chat = [conversation chat];
  v9 = [object2 isEqual:chat];

  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      conversation2 = [(CKFindMySessionCoordinator *)self conversation];
      recipient = [conversation2 recipient];
      defaultIMHandle = [recipient defaultIMHandle];
      v17 = 136315394;
      v18 = "[CKFindMySessionCoordinator fmfSessionChatLocationRefreshed:]";
      v19 = 2112;
      v20 = defaultIMHandle;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%s handle: %@", &v17, 0x16u);
    }

    conversation3 = [(CKFindMySessionCoordinator *)self conversation];
    recipient2 = [conversation3 recipient];
    defaultIMHandle2 = [recipient2 defaultIMHandle];
    [(CKFindMySessionCoordinator *)self updateLocationToDisplayWithHandle:defaultIMHandle2];
  }
}

- (void)fmfSessionChatLocationReceived:(id)received
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(CKFindMySessionCoordinator *)self _targetFindMyHandleFromNotification:received];
  conversation = [(CKFindMySessionCoordinator *)self conversation];
  chat = [conversation chat];

  recipient = [chat recipient];
  identifier = [v4 identifier];
  if ([recipient isEqual:identifier])
  {
  }

  else
  {
    allSiblingFindMyHandles = [chat allSiblingFindMyHandles];
    v10 = [allSiblingFindMyHandles containsObject:v4];

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[CKFindMySessionCoordinator fmfSessionChatLocationReceived:]";
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%s handle: %@", &v15, 0x16u);
  }

  conversation2 = [(CKFindMySessionCoordinator *)self conversation];
  recipient2 = [conversation2 recipient];
  defaultIMHandle = [recipient2 defaultIMHandle];
  [(CKFindMySessionCoordinator *)self updateLocationToDisplayWithHandle:defaultIMHandle];

LABEL_7:
}

- (void)fmfSessionRelationshipDidChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(CKFindMySessionCoordinator *)self _targetFindMyHandleFromNotification:change];
  if (v4)
  {
    conversation = [(CKFindMySessionCoordinator *)self conversation];
    chat = [conversation chat];
    allSiblingFindMyHandles = [chat allSiblingFindMyHandles];
    v8 = [allSiblingFindMyHandles containsObject:v4];

    if (v8)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 136315394;
        v11 = "[CKFindMySessionCoordinator fmfSessionRelationshipDidChange:]";
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%s handle: %@", &v10, 0x16u);
      }

      [(CKFindMySessionCoordinator *)self refreshFMFLocationIfNecessary];
    }
  }
}

- (void)updateLocationToDisplayWithHandle:(id)handle
{
  handleCopy = handle;
  findMyNavBarEnabled = [(CKFindMySessionCoordinator *)self findMyNavBarEnabled];
  if (handleCopy)
  {
    if (findMyNavBarEnabled)
    {
      conversation = [(CKFindMySessionCoordinator *)self conversation];
      chat = [conversation chat];
      allSiblingFindMyHandles = [chat allSiblingFindMyHandles];
      findMyHandle = [handleCopy findMyHandle];
      v9 = [allSiblingFindMyHandles containsObject:findMyHandle];

      if (v9)
      {
        mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
        conversation2 = [(CKFindMySessionCoordinator *)self conversation];
        recipient = [conversation2 recipient];
        defaultIMHandle = [recipient defaultIMHandle];
        v14 = [mEMORY[0x1E69A5B70] findMyLocationForHandleOrSibling:defaultIMHandle];

        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        [(CKFindMySessionCoordinator *)self setLocationToDisplay:v15];
      }
    }
  }
}

- (void)refreshFMFLocationIfNecessary
{
  if ([(CKFindMySessionCoordinator *)self findMyNavBarEnabled])
  {
    conversation = [(CKFindMySessionCoordinator *)self conversation];
    recipient = [conversation recipient];
    defaultIMHandle = [recipient defaultIMHandle];

    mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
    v6 = [mEMORY[0x1E69A5B70] findMyLocationForHandleOrSibling:defaultIMHandle];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    [(CKFindMySessionCoordinator *)self setLocationToDisplay:v7];
  }
}

- (void)setLocationToDisplay:(id)display
{
  displayCopy = display;
  if (-[CKFindMySessionCoordinator findMyNavBarEnabled](self, "findMyNavBarEnabled") && ([displayCopy isEqual:self->_locationToDisplay] & 1) == 0)
  {
    objc_storeStrong(&self->_locationToDisplay, display);
    [(CKFindMySessionCoordinator *)self _updateLocationLabel];
  }
}

- (void)_updateLocationLabel
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(CKFindMySessionCoordinator *)self findMyNavBarEnabled])
  {
    locationToDisplay = [(CKFindMySessionCoordinator *)self locationToDisplay];
    shortAddress = [locationToDisplay shortAddress];

    if (shortAddress)
    {
      v5 = [CKFindMySessionStatusUpdate statusUpdateWithLocationText:shortAddress isLocationAvailableForDisplay:1];
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[CKFindMySessionCoordinator _updateLocationLabel]";
        v7 = "%s shortAddress is non-nil. Posting latest shortAddress for UI update consideration.";
LABEL_7:
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, v7, &v9, 0xCu);
      }
    }

    else
    {
      v5 = [CKFindMySessionStatusUpdate statusUpdateWithLocationText:0 isLocationAvailableForDisplay:0];
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[CKFindMySessionCoordinator _updateLocationLabel]";
        v7 = "%s current location is nil or does not have a short address to display. Posting empty address update for UI update consideration.";
        goto LABEL_7;
      }
    }

    statusUpdateProvider = [(CKFindMySessionCoordinator *)self statusUpdateProvider];
    (statusUpdateProvider)[2](statusUpdateProvider, v5);
  }
}

@end