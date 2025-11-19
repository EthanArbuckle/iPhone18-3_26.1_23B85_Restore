@interface IMDLocationSharingController
+ (id)sharedInstance;
+ (void)_addLocationShareItemToMatchingChats:(id)a3 handleID:(id)a4 hasStoredItem:(BOOL)a5 broadcastChanges:(BOOL)a6;
+ (void)addLocationShareItemToMatchingChats:(id)a3;
- (IMDLocationSharingController)init;
- (void)_configureFindMyLocateSession;
- (void)_forwardMappingPacket:(id)a3 toID:(id)a4 account:(id)a5;
- (void)_generateLocationSharingItemWithHandleID:(id)a3 direction:(int64_t)a4 action:(int64_t)a5;
- (void)_initializeFindMySessionIfInAllowedProcess;
- (void)_postFMLFriendshipChangeForHandleID:(id)a3 handleType:(int64_t)a4 updateType:(int64_t)a5 isFromMessages:(BOOL)a6;
- (void)_setUpFindMyLocateSessionCallbacks;
- (void)_startFMLSessionMonitoring;
- (void)dealloc;
- (void)didFailToHandleMappingPacket:(id)a3 error:(id)a4;
- (void)didStartAbilityToGetLocationForHandle:(id)a3;
- (void)didStartSharingMyLocationWithHandle:(id)a3;
- (void)didStopAbilityToGetLocationForHandle:(id)a3;
- (void)didStopSharingMyLocationWithHandle:(id)a3;
- (void)receivedIncomingLocationSharePacket:(id)a3;
- (void)sendMappingPacket:(id)a3 toHandle:(id)a4 account:(id)a5;
@end

@implementation IMDLocationSharingController

+ (id)sharedInstance
{
  if (qword_281421198 != -1)
  {
    sub_22B7D7DF0();
  }

  return qword_281421018;
}

- (IMDLocationSharingController)init
{
  v5.receiver = self;
  v5.super_class = IMDLocationSharingController;
  v2 = [(IMDLocationSharingController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMDLocationSharingController *)v2 _initializeFindMySessionIfInAllowedProcess];
  }

  return v3;
}

- (void)_initializeFindMySessionIfInAllowedProcess
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D1A9A0] deviceIsLockedDown];
  v4 = [objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")];
  if (IMIsRunningInImagent())
  {
    v5 = 1;
    if (v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = IMIsRunningInMessagesUIProcess();
    if (v3)
    {
      goto LABEL_11;
    }
  }

  if ((v4 ^ 1 | v5))
  {
    if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")])
    {
      v6 = MEMORY[0x231897B40](@"FindMyLocateSession", @"FindMyLocateObjCWrapper");
      if (!v6)
      {
        goto LABEL_18;
      }

      self->_fmlSession = objc_alloc_init(v6);
      [(IMDLocationSharingController *)self _configureFindMyLocateSession];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_18;
      }

      v7 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      fmlSession = self->_fmlSession;
      v15 = 138412290;
      v16 = fmlSession;
      v9 = "Configured FindMyLocate Session: %@";
    }

    else
    {
      v11 = MEMORY[0x231897B40](@"FMFSession", @"FMF");
      if (!v11)
      {
        goto LABEL_18;
      }

      v12 = [[v11 alloc] initWithDelegate:self];
      self->_session = v12;
      -[FMFSession setDelegateQueue:](v12, "setDelegateQueue:", [MEMORY[0x277CCABD8] mainQueue]);
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_18;
      }

      v7 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      session = self->_session;
      v15 = 138412290;
      v16 = session;
      v9 = "Configured FMF Session: %@";
    }

    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, v9, &v15, 0xCu);
    goto LABEL_18;
  }

LABEL_11:
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D7E04(v10);
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_configureFindMyLocateSession
{
  [(IMDLocationSharingController *)self _setUpFindMyLocateSessionCallbacks];

  MEMORY[0x2821F9670](self, sel__startFMLSessionMonitoring);
}

- (void)_setUpFindMyLocateSessionCallbacks
{
  if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")])
  {
    objc_initWeak(&location, self);
    v3 = [(IMDLocationSharingController *)self fmlSession];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_22B646B78;
    v4[3] = &unk_278706D28;
    objc_copyWeak(&v5, &location);
    [(FindMyLocateSession *)v3 setFriendshipUpdateCallback:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_postFMLFriendshipChangeForHandleID:(id)a3 handleType:(int64_t)a4 updateType:(int64_t)a5 isFromMessages:(BOOL)a6
{
  if (a4 == 1)
  {
    if (a5 == 1 && !a6)
    {
      v6 = 1;
      goto LABEL_10;
    }
  }

  else if (!a4)
  {
    if (!a5)
    {
      v6 = 0;
      v7 = 1;
      goto LABEL_11;
    }

    if (a5 == 1 && !a6)
    {
      v6 = 0;
LABEL_10:
      v7 = 0;
LABEL_11:
      [(IMDLocationSharingController *)self _generateLocationSharingItemWithHandleID:a3 direction:v6 action:v7];
    }
  }
}

- (void)_startFMLSessionMonitoring
{
  if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "_startFMLSessionMonitoring: kicking off initial updates.", v4, 2u);
      }
    }

    [(FindMyLocateSession *)[(IMDLocationSharingController *)self fmlSession] startUpdatingFriendsWithInitialUpdates:0 completion:&unk_283F1A8E8];
  }
}

- (void)dealloc
{
  [(FMFSession *)self->_session setDelegate:0];

  v3.receiver = self;
  v3.super_class = IMDLocationSharingController;
  [(IMDLocationSharingController *)&v3 dealloc];
}

+ (void)addLocationShareItemToMatchingChats:(id)a3
{
  if ([objc_msgSend(a3 "sender")])
  {
    v4 = [a3 sender];
  }

  else
  {
    v4 = [a3 otherHandle];
  }

  v5 = v4;
  v6 = objc_opt_class();

  [v6 _addLocationShareItemToMatchingChats:a3 handleID:v5 hasStoredItem:1 broadcastChanges:0];
}

+ (void)_addLocationShareItemToMatchingChats:(id)a3 handleID:(id)a4 hasStoredItem:(BOOL)a5 broadcastChanges:(BOOL)a6
{
  v45 = a6;
  v6 = a5;
  v69[2] = *MEMORY[0x277D85DE8];
  v8 = IMLocationLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v65 = a3;
    v66 = 2112;
    v67 = a4;
    v68 = 1024;
    LODWORD(v69[0]) = v6;
    WORD2(v69[0]) = 1024;
    *(v69 + 6) = v45;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Going to add location item: %@ to the corresponding chats with handleID: %@ hasStoredItem: %{BOOL}d broadcastChanges: %{BOOL}d", buf, 0x22u);
  }

  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v57 = 0u;
  v9 = [+[IMDChatRegistry sharedInstance](IMDChatRegistry chats];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v57 objects:v63 count:16];
  v49 = v6;
  if (v10)
  {
    v12 = v10;
    v13 = a3;
    if (!v6)
    {
      v13 = 0;
    }

    v50 = v13;
    v14 = MEMORY[0x277D1A620];
    v15 = *v58;
    v44 = *MEMORY[0x277D19F88];
    *&v11 = 138412802;
    v43 = v11;
    v48 = *v58;
    do
    {
      v16 = 0;
      v47 = v12;
      do
      {
        if (*v58 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v57 + 1) + 8 * v16);
        if ([v17 style] != 45)
        {
          v26 = IMLocationLogHandle();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          v27 = [v17 guid];
          *buf = 138412290;
          v65 = v27;
          v28 = v26;
          v29 = "Not sharing location group chat %@";
LABEL_25:
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
          goto LABEL_38;
        }

        if (([objc_msgSend(v17 "serviceName")] & 1) == 0)
        {
          v30 = IMLocationLogHandle();
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          v31 = [v17 guid];
          *buf = 138412290;
          v65 = v31;
          v28 = v30;
          v29 = "Not sharing location with non-iMessage chat %@";
          goto LABEL_25;
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v18 = [v17 participants];
        v19 = [v18 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = v14;
          v22 = v9;
          v23 = *v54;
LABEL_14:
          v24 = 0;
          while (1)
          {
            if (*v54 != v23)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v53 + 1) + 8 * v24);
            if ([objc_msgSend(v25 "ID")])
            {
              break;
            }

            if (v20 == ++v24)
            {
              v20 = [v18 countByEnumeratingWithState:&v53 objects:v62 count:16];
              if (v20)
              {
                goto LABEL_14;
              }

              v9 = v22;
              v14 = v21;
              v12 = v47;
              goto LABEL_36;
            }
          }

          v32 = IMLocationLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v43;
            v65 = a4;
            v66 = 2112;
            v67 = v25;
            v68 = 2112;
            v69[0] = v17;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, "Found matching participant: %@<=>%@ in chat: %@", buf, 0x20u);
          }

          v9 = v22;
          v14 = v21;
          v12 = v47;
          v15 = v48;
          if ((v49 & 1) == 0)
          {
            v33 = IMLocationLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = [a3 guid];
              *buf = 138412290;
              v65 = v34;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_DEFAULT, "Storing location item with guid %@", buf, 0xCu);
            }

            v50 = [+[IMDMessageStore sharedInstance](IMDMessageStore storeItem:"storeItem:forceReplace:" forceReplace:a3, 1];
          }

          if (v50)
          {
            v35 = IMLocationLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v50 guid];
              *buf = 138412290;
              v65 = v36;
              _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_DEFAULT, "Associating location item with guid %@ to chat.", buf, 0xCu);
            }

            v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v44 ascending:0];
            v38 = [MEMORY[0x277D18EB0] synchronousDatabase];
            v39 = [v17 guid];
            v61 = v37;
            v49 = 1;
            v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = sub_22B6475B4;
            v51[3] = &unk_278706D50;
            v51[4] = v50;
            v51[5] = v17;
            v52 = v45;
            [v38 fetchMessageRecordsForChatRecordWithGUID:v39 filteredUsingPredicate:0 sortedUsingDescriptors:v40 limit:20 completionHandler:v51];
LABEL_36:
            v15 = v48;
            goto LABEL_38;
          }

          v49 = 1;
          v50 = 0;
        }

LABEL_38:
        ++v16;
      }

      while (v16 != v12);
      v12 = [(NSArray *)v9 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v12);
  }

  if ((v49 & 1) == 0)
  {
    v41 = IMLocationLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_DEFAULT, "No matching chat found, ignoring", buf, 2u);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_generateLocationSharingItemWithHandleID:(id)a3 direction:(int64_t)a4 action:(int64_t)a5
{
  v8 = [objc_alloc(MEMORY[0x277D1AA38]) initWithSender:0 time:0 guid:0 type:4];
  [v8 setStatus:a5];
  [v8 setDirection:a4];
  [v8 setService:*MEMORY[0x277D1A620]];
  if (a4)
  {
    [v8 setSender:a3];
  }

  else
  {
    [v8 setOtherHandle:a3];
  }

  [objc_opt_class() _addLocationShareItemToMatchingChats:v8 handleID:a3 hasStoredItem:0 broadcastChanges:1];
}

- (void)didStartSharingMyLocationWithHandle:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a3 identifier];
  v6 = IMLocationLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Started location sharing to: %@ (%@)", &v8, 0x16u);
  }

  [(IMDLocationSharingController *)self _generateLocationSharingItemWithHandleID:v5 direction:0 action:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)didStopSharingMyLocationWithHandle:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a3 identifier];
  v6 = IMLocationLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Stopped location sharing to: %@ (%@)", &v8, 0x16u);
  }

  [(IMDLocationSharingController *)self _generateLocationSharingItemWithHandleID:v5 direction:0 action:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)didStartAbilityToGetLocationForHandle:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a3 identifier];
  v6 = IMLocationLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Received location sharing from: %@ (%@)", &v8, 0x16u);
  }

  [(IMDLocationSharingController *)self _generateLocationSharingItemWithHandleID:v5 direction:1 action:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)didStopAbilityToGetLocationForHandle:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a3 identifier];
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Stopped location sharing from: %@ (%@)", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendMappingPacket:(id)a3 toHandle:(id)a4 account:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = IMLocationLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(v25) = 0;
    v17 = "sendMappingPacket: packet is nil, bailing.";
    v18 = v16;
    v19 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  v9 = +[IMDServiceController sharedController];
  v10 = [(IMDServiceController *)v9 serviceWithName:*MEMORY[0x277D1A620]];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"1", @"fV", a3, @"offer-request", 0}];
  if (!v10)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_15;
    }

    v20 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    LOWORD(v25) = 0;
    v17 = "Missing iMessage service, cannot send Mapping packet";
    v18 = v20;
    v19 = OS_LOG_TYPE_INFO;
LABEL_10:
    v21 = 2;
LABEL_11:
    _os_log_impl(&dword_22B4CC000, v18, v19, v17, &v25, v21);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [+[IMDAccountController sharedInstance](IMDAccountController accountForAccountID:"accountForAccountID:", a5];
  if (v13)
  {
    v14 = [v13 session];
    v15 = [a4 identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22B647DB8;
    v24[3] = &unk_278706D78;
    v24[4] = v12;
    v24[5] = a4;
    v24[6] = self;
    v24[7] = a3;
    [v14 sendLocationSharingInfo:v12 toID:v15 completionBlock:v24];
    goto LABEL_15;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = a4;
      v17 = "No active session found for mapping packet to handle: %@, bailing";
      v18 = v22;
      v19 = OS_LOG_TYPE_INFO;
      v21 = 12;
      goto LABEL_11;
    }
  }

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)didFailToHandleMappingPacket:(id)a3 error:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = IMLocationLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a3;
    v10 = 2112;
    v11 = a4;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Failed to handle mapping packet %@ with error %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)receivedIncomingLocationSharePacket:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Received location share packet: %@", &v9, 0xCu);
  }

  v6 = [a3 objectForKey:@"offer-request"];
  if (v6)
  {
    [(FMFSession *)self->_session receivedMappingPacket:v6 completion:&unk_283F1A908];
  }

  else
  {
    v7 = IMLocationLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Missing mapping packet...", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_forwardMappingPacket:(id)a3 toID:(id)a4 account:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = IMLocationLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = a4;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Forwarding mapping packet to ID: %@", &v12, 0xCu);
  }

  v10 = MEMORY[0x231897B40](@"FMFHandle", @"FMF");
  if (v10)
  {
    -[IMDLocationSharingController sendMappingPacket:toHandle:account:](self, "sendMappingPacket:toHandle:account:", a3, [v10 handleWithId:a4], a5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end