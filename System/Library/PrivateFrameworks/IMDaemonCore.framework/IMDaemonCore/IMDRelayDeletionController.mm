@interface IMDRelayDeletionController
- (BOOL)_doClearChats:(id)a3;
- (BOOL)deleteChatsForCommandDictionary:(id)a3;
- (BOOL)deleteMessagePartsForCommandDictionary:(id)a3;
- (BOOL)deleteMessagesForCommandDictionary:(id)a3;
- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)a3;
- (IMDRelayDeletionController)init;
- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)a3;
- (id)_groupChatsByService:(id)a3;
- (id)broadcasterForChatListenersForService:(id)a3;
- (id)broadcasterForChatListenersForService:(id)a3 withBlackholeStatus:(BOOL)a4;
- (id)deleteCommandDictionaryWithIncomingDictionary:(id)a3 inferredRecoverableDeleteForLegacyCommandsWithDate:(id)a4;
- (void)_enqueueBlock:(id)a3 withTimeout:(double)a4;
- (void)_handleDeleteCommandWithMessageDictionary:(id)a3;
- (void)_updateLastMessageTimeStampForChat:(id)a3 broadcaster:(id)a4;
- (void)handler:(id)a3 deleteCommand:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 fromIDSID:(id)a8 timeStamp:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12;
- (void)handler:(id)a3 recoverCommand:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 fromIDSID:(id)a8 timeStamp:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12;
- (void)recoverChatsForCommandDictionary:(id)a3;
@end

@implementation IMDRelayDeletionController

- (IMDRelayDeletionController)init
{
  v9.receiver = self;
  v9.super_class = IMDRelayDeletionController;
  v2 = [(IMDRelayDeletionController *)&v9 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting up deletion controller", v8, 2u);
      }
    }

    v4 = +[IMDRelayPushHandler sharedInstance];
    [v4 addListener:v2];

    v5 = +[IMDRelayPushHandler sharedInstance];
    [v5 setRegistered:1];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Deletion controller created", v8, 2u);
      }
    }
  }

  return v2;
}

- (void)handler:(id)a3 deleteCommand:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 fromIDSID:(id)a8 timeStamp:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12
{
  v55 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v18 = a4;
  v39 = a5;
  v40 = a6;
  v19 = a7;
  v20 = a8;
  v44 = a9;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v21 = [(IMDRelayDeletionController *)self relayController];
  v22 = [v21 idsDeviceFromPushToken:v19];

  if (v22 || (-[IMDRelayDeletionController relayController](self, "relayController"), v23 = objc_claimAutoreleasedReturnValue(), [v23 idsDeviceForFromID:v20], v22 = objc_claimAutoreleasedReturnValue(), v23, v22))
  {
    v24 = [v22 isActive];
    v25 = [v18 objectForKey:@"chat"];
    v26 = [v25 objectAtIndex:0];
    v27 = [v26 objectForKey:@"wasReportedAsJunk"];
    v28 = [v27 BOOLValue];

    v29 = +[IMDCKUtilities sharedInstance];
    v30 = [v29 cloudKitSyncingEnabled];

    v31 = IMOSLoggingEnabled();
    if (((v24 | v30) | v28))
    {
      if (v31)
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v48 = v18;
          v49 = 1024;
          v50 = v30 & 1;
          v51 = 1024;
          v52 = v28;
          v53 = 1024;
          v54 = v24;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Handling delete command: %@ (cloudKitSyncEnabled: %d, wasReportedJunk: %d, senderIsPairedWatch: %d)", buf, 0x1Eu);
        }
      }

      if ([(IMDRelayDeletionController *)self shouldInferRecoverableDeleteForCommandDictionary:v18])
      {
        v33 = [MEMORY[0x277CBEAA8] __im_iMessageDateFromTimeStamp:v44];
        v34 = [(IMDRelayDeletionController *)self deleteCommandDictionaryWithIncomingDictionary:v18 inferredRecoverableDeleteForLegacyCommandsWithDate:v33];

        v18 = v34;
      }

      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = sub_22B5003B0;
      v45[3] = &unk_278703040;
      v45[4] = self;
      v18 = v18;
      v46 = v18;
      [(IMDRelayDeletionController *)self _enqueueBlock:v45 withTimeout:45.0];
    }

    else if (v31)
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = v18;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "iCloudSync not enabled and not reported as junk, dropping delete command: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = v19;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Received a delete command, but it was not from one of our own devices From: %@", buf, 0xCu);
      }
    }

    v22 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 recoverCommand:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 fromIDSID:(id)a8 timeStamp:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v18 = a4;
  v35 = a5;
  v36 = a6;
  v19 = a7;
  v20 = a8;
  v37 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = [(IMDRelayDeletionController *)self relayController];
  v25 = [v24 idsDeviceFromPushToken:v19];

  if (v25 || (-[IMDRelayDeletionController relayController](self, "relayController", v34, v35, v36, v37), v26 = objc_claimAutoreleasedReturnValue(), [v26 idsDeviceForFromID:v20], v25 = objc_claimAutoreleasedReturnValue(), v26, v25))
  {
    v27 = +[IMDCKUtilities sharedInstance];
    v28 = [v27 cloudKitSyncingEnabled];

    v29 = IMOSLoggingEnabled();
    if (v28)
    {
      if (v29)
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = v18;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Handling recover command: %@ (cloudKitSyncEnabled: YES)", buf, 0xCu);
        }
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_22B500774;
      v38[3] = &unk_278703040;
      v38[4] = self;
      v39 = v18;
      [(IMDRelayDeletionController *)self _enqueueBlock:v38 withTimeout:45.0];
    }

    else if (v29)
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v18;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "iCloudSync not enabled, dropping recover command: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v19;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Received a recover command, but it was not from one of our own devices From: %@", buf, 0xCu);
      }
    }

    v25 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)broadcasterForChatListenersForService:(id)a3
{
  v3 = a3;
  v4 = +[IMDBroadcastController sharedProvider];
  v5 = [v4 broadcasterForChatListenersSupportingService:v3];

  return v5;
}

- (id)broadcasterForChatListenersForService:(id)a3 withBlackholeStatus:(BOOL)a4
{
  if (a4)
  {
    v4 = a3;
    v5 = +[IMDBroadcastController sharedProvider];
    v6 = [v5 broadcasterForBlackholeChatListenersSupportingService:v4];
  }

  else
  {
    v5 = a3;
    v6 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:v5];
  }

  return v6;
}

- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"isPermanentDelete"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"recoverableDeleteDate"];
    v6 = v7 == 0;
  }

  return v6;
}

- (id)deleteCommandDictionaryWithIncomingDictionary:(id)a3 inferredRecoverableDeleteForLegacyCommandsWithDate:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v7 = [v6 objectForKeyedSubscript:@"permanentDeleteChatMetadataArray"];
  [v6 removeObjectForKey:@"permanentDeleteChatMetadataArray"];
  [v6 setObject:v7 forKeyedSubscript:@"chat"];
  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isPermanentDelete"];
  [v6 setObject:v5 forKeyedSubscript:@"recoverableDeleteDate"];

  v8 = [v6 copy];

  return v8;
}

- (BOOL)deleteChatsForCommandDictionary:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v4 = [v30 objectForKeyedSubscript:@"isPermanentDelete"];
  v5 = [v4 BOOLValue];

  v38 = v5;
  if (v5)
  {
    v6 = [v30 objectForKeyedSubscript:@"permanentDeleteChatMetadataArray"];
    v37 = 0;
  }

  else
  {
    v6 = [v30 objectForKeyedSubscript:@"chat"];
    v37 = [v30 objectForKeyedSubscript:@"recoverableDeleteDate"];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v6;
  v33 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v33)
  {
    v7 = 0;
    v32 = *v47;
    if (v38)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v35 = v8;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v32)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v34 = v9;
        v11 = *(*(&v46 + 1) + 8 * v9);
        [(IMDRelayDeletionController *)self _blocklistIfNeededForChatDict:v11];
        v12 = [(IMDRelayDeletionController *)self _chatsForDeleteAndRecoveryChatMetadataDictionary:v11];
        v13 = [v11 objectForKeyedSubscript:@"deleteIncomingMessages"];
        v14 = [v13 BOOLValue];

        if (![v12 count] && IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v54 = v11;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "IMDRelayDeletionController | Deletion: did not find any chats for chat metadata %@", buf, 0xCu);
          }
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v36 = v12;
        v16 = [v36 countByEnumeratingWithState:&v42 objects:v57 count:16];
        if (v16)
        {
          v17 = *v43;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v43 != v17)
              {
                objc_enumerationMutation(v36);
              }

              v19 = *(*(&v42 + 1) + 8 * i);
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v54 = v19;
                  v55 = 2112;
                  v56 = v35;
                  _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "removing chat: %@, permanently: %@", buf, 0x16u);
                }
              }

              v21 = [v19 guid];
              v22 = [v19 service];
              v23 = -[IMDRelayDeletionController broadcasterForChatListenersForService:withBlackholeStatus:](self, "broadcasterForChatListenersForService:withBlackholeStatus:", v22, [v19 isBlackholed]);

              v24 = [(IMDRelayDeletionController *)self chatRegistry];
              if (v38)
              {
                v52 = v21;
                v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
                v39[0] = MEMORY[0x277D85DD0];
                v39[1] = 3221225472;
                v39[2] = sub_22B500FF8;
                v39[3] = &unk_278703068;
                v40 = v23;
                v41 = v21;
                [v24 permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:v25 completionHandler:v39];

                v26 = v40;
              }

              else
              {
                v51 = v21;
                v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
                [v24 moveMessagesInChatsWithGUIDsToRecentlyDeleted:v27 deleteDate:v37];

                [(IMDRelayDeletionController *)self _updateLastMessageTimeStampForChat:v19 broadcaster:v23];
                v50 = v21;
                v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
                [v23 movedMessagesToRecentlyDeletedForChatsWithGUIDs:v26 queryID:0 deletionDate:v37];
              }

              [v19 setDeletingIncomingMessages:v14];
            }

            v16 = [v36 countByEnumeratingWithState:&v42 objects:v57 count:16];
          }

          while (v16);
          v7 = 1;
        }

        v9 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v33);
  }

  else
  {
    v7 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (BOOL)deleteMessagesForCommandDictionary:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"message"];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v27 = 138412290;
      v28 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Deleting %@: messages", &v27, 0xCu);
    }
  }

  v8 = [v4 objectForKeyedSubscript:@"isPermanentDelete"];
  v9 = [v8 BOOLValue];

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v5 firstObject];
  v12 = [v10 chatForMessageGUID:v11];

  v13 = [v12 service];
  v14 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:v13 withBlackholeStatus:0];

  v15 = [v12 service];
  v16 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:v15 withBlackholeStatus:1];

  v17 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v17)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v5;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Permanently deleting messages with GUID %@: ", &v27, 0xCu);
      }
    }

    v19 = +[IMDMessageStore sharedInstance];
    v20 = [v19 deleteMessageGUIDs:v5];
  }

  else
  {
    if (v17)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v5;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Recoverably deleting messages with GUID %@: ", &v27, 0xCu);
      }
    }

    v19 = [v4 objectForKeyedSubscript:@"recoverableDeleteDate"];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v19;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Recently Deleted | messages delete date: %@", &v27, 0xCu);
      }
    }

    v23 = [(IMDRelayDeletionController *)self chatRegistry];
    [v23 moveMessagesWithGUIDsToRecentlyDeleted:v5 deleteDate:v19];
  }

  [(IMDRelayDeletionController *)self _updateLastMessageTimeStampForChat:v12 broadcaster:v14];
  [v14 historicalMessageGUIDsDeleted:v5 chatGUIDs:0 queryID:0];
  [v16 historicalMessageGUIDsDeleted:v5 chatGUIDs:0 queryID:0];
  v24 = [v5 count] != 0;

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)deleteMessagePartsForCommandDictionary:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v33 = [v32 objectForKeyedSubscript:@"parts"];
  if (![v33 count])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "IMDRelayDeletionController: Recently Deleted | Received empty parts-mardid command", buf, 2u);
      }

      goto LABEL_10;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_40;
  }

  v3 = [v32 objectForKeyedSubscript:@"isPermanentDelete"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "IMDRelayDeletionController: Recently Deleted | Received permanent delete command. This is unsupported", buf, 2u);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v34 = [v32 objectForKeyedSubscript:@"recoverableDeleteDate"];
  *buf = 0;
  v50 = buf;
  v51 = 0x2020000000;
  v52 = 0;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v33 count];
      v9 = [v33 objectAtIndexedSubscript:0];
      *v54 = 134218242;
      v55 = v8;
      v56 = 2112;
      v57 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Recently Deleted | Deleting message parts from %lu messages: %@", v54, 0x16u);
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v33;
  v10 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v10)
  {
    v37 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"messageGuid"];
        v14 = [v12 objectForKeyedSubscript:@"deleteSubject"];
        v15 = [v14 BOOLValue];

        v16 = +[IMDMessageStore sharedInstance];
        v17 = [v16 messageWithGUID:v13];

        if (v17)
        {
          v43 = 0;
          v44 = 0;
          [IMDDeletePartsHelper _convertDeletedPartsDict:v12 toIndexSet:&v44 toMap:&v43];
          v18 = v44;
          v19 = v43;
          if ([v18 count])
          {
            v20 = [MEMORY[0x277D1AA70] _messageItemWithIndexesDeleted:v18 subRangesToDeleteMapping:v19 deleteSubject:v15 deleteTransferCallback:0 createItemCallback:0 fromMessageItem:v17];
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *v54 = 138412546;
                v55 = v17;
                v56 = 2112;
                v57 = v20;
                _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Recently Deleted | Removed parts from old item %@, got new item: %@", v54, 0x16u);
              }
            }

            v22 = [v17 body];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = sub_22B501C2C;
            v38[3] = &unk_278703090;
            v39 = v18;
            v40 = v17;
            v41 = v34;
            v42 = buf;
            [v22 __im_visitMessageParts:v38];

            v23 = +[IMDMessageStore sharedInstance];
            v24 = [v23 chatForMessageGUID:v13];

            v25 = [v24 service];
            v26 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:v25];

            [(IMDRelayDeletionController *)self _updateLastMessageTimeStampForChat:v24 broadcaster:v26];
            v27 = [v20 accountID];
            [v26 account:v27 chat:0 style:0 messageUpdated:v20];
          }

          else if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *v54 = 138412290;
              v55 = v13;
              _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "IMDRelayDeletionController: Recently Deleted | did not find indexes to delete at for GUID: %@", v54, 0xCu);
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *v54 = 138412290;
            v55 = v13;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "IMDRelayDeletionController: Recently Deleted | could not find messageItem for GUID: %@", v54, 0xCu);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v10);
  }

  v6 = v50[24];
  _Block_object_dispose(buf, 8);

LABEL_40:
  v30 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (void)_handleDeleteCommandWithMessageDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDRelayDeletionController *)self deleteChatsForCommandDictionary:v4];
  [v4 objectForKeyedSubscript:@"chat-clear"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(IMDRelayDeletionController *)self _chatsForDeleteAndRecoveryChatMetadataDictionary:*(*(&v19 + 1) + 8 * i)];
        if ([v10 count])
        {
          v11 = MEMORY[0x277CBEB98];
          v12 = [v10 arrayByApplyingSelector:sel_guid];
          v13 = [v11 setWithArray:v12];

          v5 |= [(IMDRelayDeletionController *)self _doClearChats:v13];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = [v4 objectForKeyedSubscript:@"message"];
  if (v14)
  {
    v5 |= [(IMDRelayDeletionController *)self deleteMessagesForCommandDictionary:v4];
  }

  v15 = [v4 objectForKeyedSubscript:@"parts"];
  if (![v15 count])
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v5 | [(IMDRelayDeletionController *)self deleteMessagePartsForCommandDictionary:v4]))
  {
LABEL_14:
    v16 = +[IMDMessageStore sharedInstance];
    [v16 rebuildUnreadMessageCount];
  }

LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)recoverChatsForCommandDictionary:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v18 = a3;
  [v18 objectForKeyedSubscript:@"recoverChatMetadataArray"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v21)
  {
    v20 = *v29;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        v6 = [(IMDRelayDeletionController *)self _chatsForDeleteAndRecoveryChatMetadataDictionary:v5];
        if ([v6 count])
        {
          v22 = [v6 arrayByApplyingSelector:sel_guid];
          v7 = [(IMDRelayDeletionController *)self chatRegistry];
          [v7 recoverMessagesWithChatGUIDs:v22];

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v9)
          {
            v10 = *v25;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v25 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v24 + 1) + 8 * j);
                v13 = [v12 service];
                v14 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:v13 withBlackholeStatus:0];

                [(IMDRelayDeletionController *)self _updateLastMessageTimeStampForChat:v12 broadcaster:v14];
                [v12 setDeletingIncomingMessages:0];
              }

              v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v9);
          }

          v15 = [(IMDRelayDeletionController *)self _groupChatsByService:v8];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = sub_22B502318;
          v23[3] = &unk_2787030B8;
          v23[4] = self;
          [v15 enumerateKeysAndObjectsUsingBlock:v23];
        }

        else if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v5;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "IMDRelayDeletionController | Recovery: did not find any chats for chat metadata %@", buf, 0xCu);
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v21);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v45 = [v46 objectForKeyedSubscript:@"guid"];
  v43 = [v46 objectForKeyedSubscript:@"groupID"];
  v47 = [v46 objectForKeyedSubscript:@"ptcpts"];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v54 = v45;
      v55 = 2112;
      v56 = v43;
      v57 = 2112;
      v58 = v47;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finding chats for delete or recovery using guid %@ groupID %@ participants %@", buf, 0x20u);
    }
  }

  v6 = [(IMDRelayDeletionController *)self chatRegistry];
  v7 = [v6 existingChatWithGUID:v45];

  v44 = [v7 service];
  if (v7)
  {
    v8 = [v7 service];
    if (v8)
    {
      v9 = [v7 service];
      if ([v9 groupsMergeDisplayNames])
      {
      }

      else
      {
        v10 = [v7 displayName];
        v11 = [v10 length] == 0;

        if (!v11)
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v54 = v45;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Ignoring chatGUID %@, as it has a display name and service does not merge display names", buf, 0xCu);
            }
          }

          v13 = 0;
LABEL_16:
          if ([v7 hasMatchingParticipantHandles:v47])
          {
            if (v13)
            {
              if (IMOSLoggingEnabled())
              {
                v14 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                {
                  v15 = [v7 guid];
                  *buf = 138412290;
                  v54 = v15;
                  _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found chat with specific guid %@ for chat metadata", buf, 0xCu);
                }
              }

              v16 = [v7 guid];
              [v4 addObject:v16];
              goto LABEL_28;
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [v7 participants];
              v19 = [v18 count];
              v20 = [v47 count];
              *buf = 138412802;
              v54 = v45;
              v55 = 2048;
              v56 = v19;
              v57 = 2048;
              v58 = v20;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Ignoring chatGUID %@, due to mismatching participants chat %ld received %ld", buf, 0x20u);
            }
          }

          v16 = v44;
          v44 = 0;
LABEL_28:

          goto LABEL_29;
        }
      }
    }

    v13 = 1;
    goto LABEL_16;
  }

LABEL_29:
  v21 = [(IMDRelayDeletionController *)self chatRegistry];
  v22 = [v21 existingChatsWithGroupID:v43];

  if ([v22 count])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v22 count];
        *buf = 134218498;
        v54 = v24;
        v55 = 2112;
        v56 = v43;
        v57 = 2112;
        v58 = v22;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found %llu chats with specific group ID %@ for chat metadata: %@", buf, 0x20u);
      }
    }

    v25 = [v22 arrayByApplyingSelector:sel_guid];
    [v4 addObjectsFromArray:v25];
  }

  if ([v47 count] >= 2)
  {
    v26 = [(IMDRelayDeletionController *)self chatRegistry];
    v27 = [v26 existingChatsForIDs:v47 onService:v44 style:43];

    v28 = [v27 __imArrayByFilteringWithBlock:&unk_283F19628];

    if ([v28 count])
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v28 count];
          *buf = 134218498;
          v54 = v30;
          v55 = 2112;
          v56 = v47;
          v57 = 2112;
          v58 = v28;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Found %llu chats with handles: %@ chats: %@", buf, 0x20u);
        }
      }

      v31 = [v28 arrayByApplyingSelector:sel_guid];
      [v4 addObjectsFromArray:v31];
    }
  }

  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v33 = v4;
  v34 = [v33 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v34)
  {
    v35 = *v49;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v48 + 1) + 8 * i);
        v38 = [(IMDRelayDeletionController *)self chatRegistry];
        v39 = [v38 existingChatWithGUID:v37];

        if (v39)
        {
          [v32 addObject:v39];
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v34);
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v54 = v32;
      v55 = 2112;
      v56 = v45;
      _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Found %llu chats for delete command with guid %@", buf, 0x16u);
    }
  }

  v41 = *MEMORY[0x277D85DE8];

  return v32;
}

- (BOOL)_doClearChats:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v7)
  {
    v9 = *v34;
    v10 = 45;
    *&v8 = 138412290;
    v27 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [(IMDRelayDeletionController *)self chatRegistry];
        v14 = [v13 existingChatWithGUID:v12];

        if (v14)
        {
          v15 = [v14 chatIdentifier];
          [v29 addObject:v15];

          v16 = [v14 serviceName];
          [v5 addObject:v16];

          v10 = [v14 style];
          [v6 addObject:v14];
        }

        else if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v27;
            v38 = v12;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Handling chat-clear, could not find chat by GUID: %@", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v7);
  }

  else
  {
    v10 = 45;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v38 = v29;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "clearing messages for chat IDS:%@ on services:%@", buf, 0x16u);
    }
  }

  v19 = +[IMDMessageStore sharedInstance];
  v20 = [v19 deleteMessagesWithChatIdentifiers:v29 style:v10 onServices:v5];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B503118;
  v31[3] = &unk_278703100;
  v32 = v20;
  v21 = v20;
  v22 = [v6 __imArrayByFilteringWithBlock:v31];
  v23 = [(IMDRelayDeletionController *)self _groupChatsByService:v22];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22B503160;
  v30[3] = &unk_2787030B8;
  v30[4] = self;
  [v23 enumerateKeysAndObjectsUsingBlock:v30];

  v24 = [v21 count] != 0;
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)_groupChatsByService:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 serviceName];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 guid];

          if (v13)
          {
            v14 = [v10 serviceName];
            v15 = [v4 objectForKeyedSubscript:v14];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v18 = v17;

            v19 = [v10 guid];
            [v18 addObject:v19];

            v20 = [v10 serviceName];
            [v4 setObject:v18 forKeyedSubscript:v20];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_updateLastMessageTimeStampForChat:(id)a3 broadcaster:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 lastMessageForChatWithRowID:{objc_msgSend(v5, "rowID")}];
    [v5 setLastMessage:v8];

    v9 = [v5 lastMessage];

    if (v9)
    {
      v10 = [v5 lastMessage];
      v11 = [v10 time];
      [v11 timeIntervalSinceReferenceDate];
      [v5 setLastMessageTimeStampOnLoad:v12];
    }

    else
    {
      [v5 setLastMessageTimeStampOnLoad:0];
    }

    v14 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v15 = [v14 isAVLessSharePlayEnabled];

    if (v15)
    {
      v16 = +[IMDMessageStore sharedInstance];
      v17 = [v16 lastTUConversationItemForChat:v5];

      if (v17)
      {
        v18 = [v17 time];

        if (v18)
        {
          v19 = [v17 time];
          [v5 setLastTUConversationCreatedDate:v19];
        }

        else
        {
          v20 = IMLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_22B7CFDFC(v17, v20);
          }
        }
      }

      else
      {
        [v5 setLastTUConversationCreatedDate:0];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v5 guid];
        v23 = MEMORY[0x277CCABB0];
        v24 = [v5 lastMessage];
        v25 = [v24 time];
        [v25 timeIntervalSinceReferenceDate];
        v26 = [v23 numberWithDouble:?];
        v29 = 138412546;
        v30 = v22;
        v31 = 2112;
        v32 = v26;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Recently Deleted | IMDChat: %@, updating last message timestamp on load: %@", &v29, 0x16u);
      }
    }

    v27 = [v5 guid];
    [v6 chat:v27 lastMessageTimeStampOnLoadUpdated:{objc_msgSend(v5, "lastMessageTimeStampOnLoad")}];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | _updateLastMessageTimeStampForChat received nil chat", &v29, 2u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueBlock:(id)a3 withTimeout:(double)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = @"IMDRelayDeletionController";
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, " Enqueued item for key: %@    timeout: %f", &v13, 0x16u);
    }
  }

  incomingMessageMultiQueue = self->_incomingMessageMultiQueue;
  if (!incomingMessageMultiQueue)
  {
    v9 = objc_alloc_init(MEMORY[0x277D19278]);
    v11 = self->_incomingMessageMultiQueue;
    p_incomingMessageMultiQueue = &self->_incomingMessageMultiQueue;
    *p_incomingMessageMultiQueue = v9;

    incomingMessageMultiQueue = *p_incomingMessageMultiQueue;
  }

  [(IMMultiQueue *)incomingMessageMultiQueue addBlock:v6 withTimeout:@"IMDRelayDeletionController" forKey:0 description:a4];

  v12 = *MEMORY[0x277D85DE8];
}

@end