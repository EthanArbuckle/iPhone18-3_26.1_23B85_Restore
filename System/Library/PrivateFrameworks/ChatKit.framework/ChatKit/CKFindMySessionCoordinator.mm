@interface CKFindMySessionCoordinator
- (BOOL)findMyNavBarEnabled;
- (CKFindMySessionCoordinator)initWithConversation:(id)a3 observesNotifications:(BOOL)a4 statusUpdateChangeProvider:(id)a5;
- (id)_targetFindMyHandleFromNotification:(id)a3;
- (void)_setupNotificationObservers;
- (void)_updateLocationLabel;
- (void)dealloc;
- (void)fmfSessionChatLocationReceived:(id)a3;
- (void)fmfSessionChatLocationRefreshed:(id)a3;
- (void)fmfSessionRelationshipDidChange:(id)a3;
- (void)refreshFMFLocationIfNecessary;
- (void)setLocationToDisplay:(id)a3;
- (void)updateLocationToDisplayWithHandle:(id)a3;
@end

@implementation CKFindMySessionCoordinator

- (CKFindMySessionCoordinator)initWithConversation:(id)a3 observesNotifications:(BOOL)a4 statusUpdateChangeProvider:(id)a5
{
  v6 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CKFindMySessionCoordinator;
  v11 = [(CKFindMySessionCoordinator *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_conversation, a3);
    v13 = _Block_copy(v10);
    statusUpdateProvider = v12->_statusUpdateProvider;
    v12->_statusUpdateProvider = v13;

    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = [(CKFindMySessionCoordinator *)v12 findMyNavBarEnabled];
      *buf = 138412802;
      if (v17)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v22 = v9;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Initializing for conversation={%@} observesNotifications={%@} isFindMyNavBarEnabled={%@}.", buf, 0x20u);
    }

    if (v6)
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
    v4 = [(CKFindMySessionCoordinator *)self conversation];
    *buf = 138412290;
    v7 = v4;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Deallocating FMF coordinator for conversation={%@}", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CKFindMySessionCoordinator;
  [(CKFindMySessionCoordinator *)&v5 dealloc];
}

- (BOOL)findMyNavBarEnabled
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isFindMyNavBarEnabled];

  v5 = [MEMORY[0x1E69A5B70] sharedInstance];
  v6 = [v5 disableLocationSharing];

  v7 = [(CKFindMySessionCoordinator *)self conversation];
  if (v7)
  {
    v8 = [(CKFindMySessionCoordinator *)self conversation];
    v9 = [v8 isGroupConversation] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v4 & v9 & (v6 ^ 1);
}

- (void)_setupNotificationObservers
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CKFindMySessionCoordinator *)self findMyNavBarEnabled])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel_fmfSessionRelationshipDidChange_ name:*MEMORY[0x1E69A5990] object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E69A5980];
    v6 = [(CKFindMySessionCoordinator *)self conversation];
    v7 = [v6 chat];
    [v4 addObserver:self selector:sel_fmfSessionChatLocationRefreshed_ name:v5 object:v7];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:self selector:sel_fmfSessionChatLocationReceived_ name:*MEMORY[0x1E69A5988] object:0];

    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(CKFindMySessionCoordinator *)self conversation];
      v12 = 134217984;
      v13 = v10;
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
      v10 = [(CKFindMySessionCoordinator *)self conversation];
      v12 = 134217984;
      v13 = v10;
      v11 = "Location support in this chat is not available. No need to observe for this conversation {%p}.";
      goto LABEL_6;
    }
  }
}

- (id)_targetFindMyHandleFromNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fmfSessionChatLocationRefreshed:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 object];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CKFindMySessionCoordinator *)self conversation];
  v8 = [v7 chat];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(CKFindMySessionCoordinator *)self conversation];
      v12 = [v11 recipient];
      v13 = [v12 defaultIMHandle];
      v17 = 136315394;
      v18 = "[CKFindMySessionCoordinator fmfSessionChatLocationRefreshed:]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%s handle: %@", &v17, 0x16u);
    }

    v14 = [(CKFindMySessionCoordinator *)self conversation];
    v15 = [v14 recipient];
    v16 = [v15 defaultIMHandle];
    [(CKFindMySessionCoordinator *)self updateLocationToDisplayWithHandle:v16];
  }
}

- (void)fmfSessionChatLocationReceived:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(CKFindMySessionCoordinator *)self _targetFindMyHandleFromNotification:a3];
  v5 = [(CKFindMySessionCoordinator *)self conversation];
  v6 = [v5 chat];

  v7 = [v6 recipient];
  v8 = [v4 identifier];
  if ([v7 isEqual:v8])
  {
  }

  else
  {
    v9 = [v6 allSiblingFindMyHandles];
    v10 = [v9 containsObject:v4];

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

  v12 = [(CKFindMySessionCoordinator *)self conversation];
  v13 = [v12 recipient];
  v14 = [v13 defaultIMHandle];
  [(CKFindMySessionCoordinator *)self updateLocationToDisplayWithHandle:v14];

LABEL_7:
}

- (void)fmfSessionRelationshipDidChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(CKFindMySessionCoordinator *)self _targetFindMyHandleFromNotification:a3];
  if (v4)
  {
    v5 = [(CKFindMySessionCoordinator *)self conversation];
    v6 = [v5 chat];
    v7 = [v6 allSiblingFindMyHandles];
    v8 = [v7 containsObject:v4];

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

- (void)updateLocationToDisplayWithHandle:(id)a3
{
  v16 = a3;
  v4 = [(CKFindMySessionCoordinator *)self findMyNavBarEnabled];
  if (v16)
  {
    if (v4)
    {
      v5 = [(CKFindMySessionCoordinator *)self conversation];
      v6 = [v5 chat];
      v7 = [v6 allSiblingFindMyHandles];
      v8 = [v16 findMyHandle];
      v9 = [v7 containsObject:v8];

      if (v9)
      {
        v10 = [MEMORY[0x1E69A5B70] sharedInstance];
        v11 = [(CKFindMySessionCoordinator *)self conversation];
        v12 = [v11 recipient];
        v13 = [v12 defaultIMHandle];
        v14 = [v10 findMyLocationForHandleOrSibling:v13];

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
    v3 = [(CKFindMySessionCoordinator *)self conversation];
    v4 = [v3 recipient];
    v8 = [v4 defaultIMHandle];

    v5 = [MEMORY[0x1E69A5B70] sharedInstance];
    v6 = [v5 findMyLocationForHandleOrSibling:v8];

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

- (void)setLocationToDisplay:(id)a3
{
  v5 = a3;
  if (-[CKFindMySessionCoordinator findMyNavBarEnabled](self, "findMyNavBarEnabled") && ([v5 isEqual:self->_locationToDisplay] & 1) == 0)
  {
    objc_storeStrong(&self->_locationToDisplay, a3);
    [(CKFindMySessionCoordinator *)self _updateLocationLabel];
  }
}

- (void)_updateLocationLabel
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(CKFindMySessionCoordinator *)self findMyNavBarEnabled])
  {
    v3 = [(CKFindMySessionCoordinator *)self locationToDisplay];
    v4 = [v3 shortAddress];

    if (v4)
    {
      v5 = [CKFindMySessionStatusUpdate statusUpdateWithLocationText:v4 isLocationAvailableForDisplay:1];
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

    v8 = [(CKFindMySessionCoordinator *)self statusUpdateProvider];
    (v8)[2](v8, v5);
  }
}

@end