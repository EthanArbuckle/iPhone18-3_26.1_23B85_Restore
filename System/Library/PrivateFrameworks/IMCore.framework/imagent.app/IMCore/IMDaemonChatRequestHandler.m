@interface IMDaemonChatRequestHandler
- (id)_chatDictionariesWithLastMessageRecordDateFromDictionaries:(id)a3;
- (id)_chatDictionariesWithLastUnreadMessageRecordDateFromDictionaries:(id)a3;
- (id)_chatsWithIsBlackholed:(BOOL)a3 inChats:(id)a4;
- (void)_loadChat:(id)a3 completionHandler:(id)a4;
- (void)_loadChats:(id)a3 completionHandler:(id)a4;
- (void)_loadChats:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)_updateMessage:(id)a3;
- (void)acceptChatContainingMessageWithGUID:(id)a3;
- (void)chat:(id)a3 updateDisplayName:(id)a4 messageID:(id)a5;
- (void)chat:(id)a3 updateIsFiltered:(int64_t)a4;
- (void)chat:(id)a3 updateLastAddressHandle:(id)a4;
- (void)chat:(id)a3 updateLastAddressedSIMID:(id)a4;
- (void)chat:(id)a3 updateProperties:(id)a4;
- (void)chatDidRecoverFromJunk:(id)a3;
- (void)closeSessionChatID:(id)a3 identifier:(id)a4 didDeleteConversation:(BOOL)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)dismissNotice:(id)a3;
- (void)fetchCollaborationNoticesForChatGUIDs:(id)a3 reply:(id)a4;
- (void)fetchCommonCapabilities:(id)a3 fromChatWithGUID:(id)a4 reply:(id)a5;
- (void)handleTrustKitDecisioningForItems:(id)a3 chat:(id)a4 reply:(id)a5;
- (void)loadAllChats;
- (void)loadAnyChatsContainingHandleIDsIn:(id)a3 reply:(id)a4;
- (void)loadChatWithChatIdentifier:(id)a3;
- (void)loadChatWithGUID:(id)a3 queryID:(id)a4;
- (void)loadChatWithGUID:(id)a3 reply:(id)a4;
- (void)loadChatsFilteredUsingPredicate:(id)a3 lastMessageOlderThan:(id)a4 limit:(int64_t)a5 queryID:(id)a6;
- (void)loadChatsFilteredUsingPredicate:(id)a3 lastMessageOlderThan:(id)a4 limit:(int64_t)a5 reply:(id)a6;
- (void)loadChatsFilteredUsingPredicate:(id)a3 queryID:(id)a4;
- (void)loadChatsFilteredUsingPredicate:(id)a3 reply:(id)a4;
- (void)loadChatsWithGroupID:(id)a3 queryID:(id)a4;
- (void)loadChatsWithGroupID:(id)a3 reply:(id)a4;
- (void)loadChatsWithIdentifier:(id)a3 queryID:(id)a4;
- (void)loadChatsWithIdentifier:(id)a3 reply:(id)a4;
- (void)loadChatsWithPinningIdentifier:(id)a3 reply:(id)a4;
- (void)loadLastMessageItemsForMergedChatsWithGUIDs:(id)a3 completionHandler:(id)a4;
- (void)loadUnreadChatsWithLastMessageOlderThan:(id)a3 predicate:(id)a4 limit:(int64_t)a5 reply:(id)a6;
- (void)markChatGUIDsAsReviewed:(id)a3;
- (void)markChatGUIDsAsReviewedAndReflectToPeers:(id)a3;
- (void)markMessageAsCorrupt:(id)a3 setCorrupt:(BOOL)a4;
- (void)markRepliedForMessageGUID:(id)a3;
- (void)queryTrustKitDecisioningIfNeededForChatGUID:(id)a3 items:(id)a4 reply:(id)a5;
- (void)relayPriorityMessageFor:(id)a3;
- (void)removeChat:(id)a3;
- (void)sendBalloonPayload:(id)a3 attachments:(id)a4 withMessageGUID:(id)a5 bundleID:(id)a6;
- (void)sendCommand:(id)a3 withProperties:(id)a4 toPerson:(id)a5 account:(id)a6;
- (void)sendCommand:(id)a3 withProperties:(id)a4 toPerson:(id)a5 account:(id)a6 toChatID:(id)a7 identifier:(id)a8 style:(unsigned __int8)a9;
- (void)sendPlayedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)sendReadReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)sendSavedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)sendStickerAtPath:(id)a3 toChatID:(id)a4 forNBubbleFromTheBottom:(int64_t)a5 atX:(id)a6 atY:(id)a7 scale:(id)a8 balloonWidth:(id)a9;
- (void)sendSyndicationAction:(id)a3 toChatsWithIdentifiers:(id)a4;
- (void)sendUpdatedCollaborationMetadata:(id)a3 toChatsWithIdentifiers:(id)a4 forMessageGUID:(id)a5;
- (void)setProperties:(id)a3 ofParticipant:(id)a4 inChatID:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8;
- (void)stopTranscriptSharingWithChat:(id)a3;
- (void)storeItem:(id)a3 inChatGUID:(id)a4;
- (void)unblackholeAndLoadChatWithHandleIDs:(id)a3 reply:(id)a4;
- (void)updateBalloonPayload:(id)a3 attachments:(id)a4 bundleID:(id)a5 forMessageGUID:(id)a6;
- (void)updateMessage:(id)a3;
- (void)updateMessage:(id)a3 withIndexesOfDeletedItems:(id)a4 withIndexToRangeMapOfDeletedItems:(id)a5 deleteDate:(id)a6;
- (void)updateNotice:(id)a3;
@end

@implementation IMDaemonChatRequestHandler

- (void)storeItem:(id)a3 inChatGUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = +[IMDClientRequestContext currentContext];
      v9 = [v8 listenerID];
      v11 = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Request from %@ to store item: %@  inChatGUID: %@", &v11, 0x20u);
    }
  }

  v10 = IMSingleObjectArray();
  sub_10001F524(v10, v6, 0);
}

- (void)markMessageAsCorrupt:(id)a3 setCorrupt:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = +[IMDClientRequestContext currentContext];
      v8 = [v7 listenerID];
      v9 = @"NO";
      *buf = 138412802;
      v24 = v8;
      v25 = 2112;
      if (v4)
      {
        v9 = @"YES";
      }

      v26 = v5;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request from %@ to mark message with IDs as corrupt: %@ setCorrupt: %@", buf, 0x20u);
    }
  }

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 messageWithGUID:v5 registerAttachments:0];

  if (v11)
  {
    v12 = [v11 flags];
    v13 = [v11 isCorrupt];
    if (v4)
    {
      if ((v13 & 1) == 0)
      {
        v14 = v12 | 0x4000000;
LABEL_17:
        [v11 setFlags:v14];
        v16 = +[IMDMessageStore sharedInstance];
        LOBYTE(v22) = 0;
        v17 = [v16 storeMessage:v11 forceReplace:1 modifyError:0 modifyFlags:1 flagMask:0 updateMessageCache:0 calculateUnreadCount:v22];

        goto LABEL_27;
      }
    }

    else if (v13)
    {
      v14 = v12 & 0xFFFFFFFFFBFFFFFFLL;
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v11 isCorrupt];
        v20 = @"NO";
        if (v19)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        if (v4)
        {
          v20 = @"YES";
        }

        *buf = 138412546;
        v24 = v21;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Tried to mark a message as corrupt whose value already matched what we wanted to set it to {[messageItem isCorrupt]: %@ value to set isCorrupt %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "We didn't have a message to mark as corrupt for guid %@ ", buf, 0xCu);
    }
  }

LABEL_27:
}

- (void)removeChat:(id)a3
{
  v3 = a3;
  v4 = +[IMDChatRegistry sharedInstance];
  v5 = [v4 existingChatWithGUID:v3];

  v6 = [v5 serviceName];
  v7 = [v6 isEqualToString:IMServiceNameSMS];

  if (v7)
  {
    IMGreenTeaMessageDeleteLog();
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v39 = v3;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Remove guid: %@  chat: %@", buf, 0x16u);
    }
  }

  v9 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Removing chat from registry: %@", buf, 0xCu);
      }
    }

    v11 = [v5 serviceName];
    v12 = [v11 isEqualToString:IMServiceNameSMS];

    v13 = +[IMDAccountController sharedInstance];
    v14 = v13;
    v15 = &IMServiceNameiMessage;
    if (v12)
    {
      v15 = &IMServiceNameSMS;
    }

    v16 = [v13 anySessionForServiceName:*v15];

    if (v16)
    {
      v36[0] = IMDCommandChatGUIDKey;
      v17 = [v16 service];
      v18 = [v17 internalName];
      v19 = IMLegacyServiceGUIDFromChatGUID();
      v37[0] = v19;
      v36[1] = IMDCommandChatParticipantsKey;
      v20 = [v5 participantHandles];
      v37[1] = v20;
      v36[2] = IMDChatWasReportedAsJunkKey;
      v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 wasReportedAsJunk]);
      v37[2] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
      v23 = [v22 mutableCopy];

      v24 = [v5 groupID];
      LOBYTE(v18) = [v24 length] == 0;

      if (v18)
      {
        v25 = IMLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1000539D4(v5, v25);
        }
      }

      else
      {
        v25 = [v5 groupID];
        [v23 setObject:v25 forKeyedSubscript:IMDCommandChatGroupIDKey];
      }

      v33 = v23;
      v34[0] = IMDPermanentDeleteCommandChatMetadataArrayKey;
      v28 = [NSArray arrayWithObjects:&v33 count:1];
      v34[1] = IMDDeleteCommandIsPermanentDeleteKey;
      v35[0] = v28;
      v35[1] = &__kCFBooleanTrue;
      v29 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];

      [v16 sendDeleteCommand:v29 forChatGUID:v3];
    }

    else if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Chat | IMDaemon_Chat skipping sendDeleteCommand: no session found.", buf, 2u);
      }
    }

    [v16 willRemoveChat:v5];
    v30 = +[IMDChatRegistry sharedInstance];
    [v30 removeChat:v5];

    v31 = +[IMDBroadcastController sharedProvider];
    v32 = [v31 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v5, "isBlackholed")}];
    [v32 leftChat:v3];
  }

  else if (v9)
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v3;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "No chat found for GUID: %@", buf, 0xCu);
    }
  }
}

- (void)chat:(id)a3 updateDisplayName:(id)a4 messageID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatWithGUID:v7];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Chat Identifier: %@  Chat: %@  Update display name: %@", buf, 0x20u);
    }
  }

  if (v11)
  {
    v13 = [v11 displayName];
    v14 = [v11 lastAddressedLocalHandle];
    v15 = [v11 serviceSession];
    v16 = [v11 guid];
    v17 = [v11 chatIdentifier];
    [v15 updateDisplayName:v8 fromDisplayName:v13 fromID:v14 forChatID:v16 identifier:v17 style:objc_msgSend(v11 messageID:{"style"), v9}];
  }
}

- (void)chat:(id)a3 updateIsFiltered:(int64_t)a4
{
  v5 = a3;
  v6 = +[IMDChatRegistry sharedInstance];
  v7 = [v6 existingChatWithGUID:v5];

  if (v7)
  {
    v8 = [v7 unreadCount];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"YES";
        *v26 = 67109890;
        *&v26[4] = a4;
        if (!v8)
        {
          v10 = @"NO";
        }

        *&v26[8] = 2112;
        *&v26[10] = v10;
        v27 = 2112;
        v28 = v5;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Updating isFiltered to %d (recalculate unread: %@) for chat: %@: %@", v26, 0x26u);
      }
    }

    [v7 updateIsFiltered:{a4, *v26}];
    v11 = +[IMFeatureFlags sharedFeatureFlags];
    v12 = [v11 isTranscriptBackgroundsEnabled];

    if (v12 && ![v7 isFiltered])
    {
      v13 = +[IMDMessageStore sharedInstance];
      v14 = [v7 chatIdentifier];
      v15 = [v7 style];
      v16 = [v7 service];
      v17 = [v16 internalName];
      v18 = [v13 lastIncomingMessageForChatWithIdentifier:v14 chatStyle:v15 onService:v17];

      if (v18)
      {
        v19 = [v18 sender];
        v20 = [v19 _bestGuessURI];

        v21 = [v7 lastAddressedLocalHandle];
        v22 = [v21 _bestGuessURI];

        v23 = [v7 serviceSession];
        [v23 requestTranscriptBackground:v7 toIdentifier:v20 fromIdentifier:v22 messageIsFromStorage:0];
      }
    }

    if (v8)
    {
      v24 = +[IMDChatRegistry sharedInstance];
      [v24 updateStateForChat:v7 forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v26 = 138412290;
      *&v26[4] = v5;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "No chat found for GUID: %@", v26, 0xCu);
    }
  }
}

- (void)chatDidRecoverFromJunk:(id)a3
{
  v3 = a3;
  v4 = +[IMDChatRegistry sharedInstance];
  v5 = [v4 existingChatWithGUID:v3];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Chat did recover from junk. chat: %@: %@", &v12, 0x16u);
      }
    }

    v8 = +[IMDSpamFilteringHelper sharedHelper];
    v9 = [v5 spamDetectionSource];
    v10 = [v5 serviceName];
    [v8 recordNotJunkMetricsForSpamDetectionSource:v9 service:v10];
  }

  else if (v6)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No chat found for GUID: %@", &v12, 0xCu);
    }
  }
}

- (void)markChatGUIDsAsReviewed:(id)a3
{
  v3 = a3;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 updatePendingReviewForChatsWithGUIDs:v3 pendingReview:0];
}

- (void)markChatGUIDsAsReviewedAndReflectToPeers:(id)a3
{
  v3 = a3;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 updatePendingReviewForChatsWithGUIDs:v3 pendingReview:0];

  v5 = +[IMDAccountController sharedInstance];
  v6 = [v5 anySessionForServiceName:IMServiceNameiMessage];

  if (v6)
  {
    [v6 reflectMarkAsReviewedToPeerDevicesForChatGUIDs:v3];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No session for serviceName iMessage -- can't reflect mark as reviewed chats", v8, 2u);
    }
  }
}

- (void)chat:(id)a3 updateProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:v5];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Chat Identifier: %@  Chat: %@  Update properties: %@", &v13, 0x20u);
    }
  }

  if (v8 && [v6 count])
  {
    [v8 updateProperties:v6];
    v10 = +[IMDBroadcastController sharedProvider];
    v11 = [v10 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v8, "isBlackholed")}];
    v12 = [v8 properties];
    [v11 chat:v5 propertiesUpdated:v12];
  }
}

- (void)chat:(id)a3 updateLastAddressHandle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:v5];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Chat Identifier: %@  Chat: %@  Update last addressed handle: %@", &v12, 0x20u);
    }
  }

  if (v8)
  {
    [v8 updateLastAddressedHandle:v6];
    v10 = +[IMDBroadcastController sharedProvider];
    v11 = [v10 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v8, "isBlackholed")}];
    [v11 chat:v5 lastAddressedHandleUpdated:v6];
  }
}

- (void)chat:(id)a3 updateLastAddressedSIMID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:v5];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Chat Identifier: %@  Chat: %@  Update last addressed unique ID: %@", &v12, 0x20u);
    }
  }

  if (v8)
  {
    [v8 updateLastAddressedSIMID:v6];
    v10 = +[IMDBroadcastController sharedProvider];
    v11 = [v10 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v8, "isBlackholed")}];
    [v11 chat:v5 lastAddressedSIMIDUpdated:v6];
  }
}

- (void)updateMessage:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[IMDClientRequestContext currentContext];
      v7 = [v6 listenerID];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Request from %@ to update messages: %@", &v8, 0x16u);
    }
  }

  [(IMDaemonChatRequestHandler *)self _updateMessage:v4];
}

- (void)_updateMessage:(id)a3
{
  v3 = a3;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v3 guid];
  v6 = [v4 messageWithGUID:v5];

  v7 = +[IMDMessageStore sharedInstance];
  v8 = [v3 guid];
  v9 = [v7 chatForMessageGUID:v8];

  v10 = [v9 serviceName];
  LODWORD(v8) = [v10 isEqualToString:IMServiceNameSMS];

  if (v8)
  {
    IMGreenTeaMessageDeleteLog();
  }

  if (v6)
  {
    v11 = +[IMDMessageStore sharedInstance];
    LOBYTE(v19) = 1;
    v12 = [v11 storeMessage:v3 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:1638400 updateMessageCache:1 calculateUnreadCount:v19];

    v13 = [v12 isEqual:v3];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = @"YES";
        if (v13)
        {
          v15 = @"NO";
        }

        *buf = 138412546;
        v21 = v12;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "   updated message: %@   changed? %@", buf, 0x16u);
      }
    }

    if ((v13 & 1) == 0)
    {
      v16 = +[IMDBroadcastController sharedProvider];
      v17 = [v16 broadcasterForChatListeners];
      v18 = [v12 accountID];
      [v17 account:v18 chat:0 style:0 messageUpdated:v12];
    }
  }
}

- (void)updateMessage:(id)a3 withIndexesOfDeletedItems:(id)a4 withIndexToRangeMapOfDeletedItems:(id)a5 deleteDate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = +[IMDClientRequestContext currentContext];
      v15 = [v14 listenerID];
      *buf = 138412546;
      v48 = v15;
      v49 = 2112;
      v50 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Request from %@ to update messages: %@", buf, 0x16u);
    }
  }

  v16 = +[IMDMessageStore sharedInstance];
  v17 = [(__CFString *)v9 guid];
  v18 = [v16 messageWithGUID:v17];

  v19 = +[IMDMessageStore sharedInstance];
  v20 = [(__CFString *)v9 guid];
  v21 = [v19 chatForMessageGUID:v20];

  v22 = [v21 serviceName];
  LODWORD(v20) = [v22 isEqualToString:IMServiceNameSMS];

  if (v20)
  {
    IMGreenTeaMessageDeleteLog();
  }

  if (v18)
  {
    v23 = +[IMDMessageStore sharedInstance];
    LOBYTE(v42) = 1;
    v24 = [v23 storeMessage:v9 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:1638400 updateMessageCache:1 calculateUnreadCount:v42];

    v25 = [v24 isEqual:v9];
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = @"YES";
        if (v25)
        {
          v27 = @"NO";
        }

        *buf = 138412546;
        v48 = v24;
        v49 = 2112;
        v50 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "   updated message: %@   hasChanged? %@", buf, 0x16u);
      }
    }

    if ((v25 & 1) == 0)
    {
      v28 = +[IMDBroadcastController sharedProvider];
      v29 = [v28 broadcasterForChatListeners];
      v30 = [v24 accountID];
      [v29 account:v30 chat:0 style:0 messageUpdated:v24];

      if (v10)
      {
        if ([v10 count])
        {
          if (v12)
          {
            if (IMOSLoggingEnabled())
            {
              v31 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v48 = v11;
                v49 = 2112;
                v50 = v18;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Recently Deleted | Recoverably deleting indexes %@ from message: %@", buf, 0x16u);
              }
            }

            v32 = [(__CFString *)v18 body];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_10000BF60;
            v43[3] = &unk_100081850;
            v44 = v10;
            v45 = v18;
            v46 = v12;
            [v32 __im_visitMessageParts:v43];
          }

          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v48 = v21;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Sending delete-parts command to other devices: %@", buf, 0xCu);
            }
          }

          v34 = [(__CFString *)v9 guid];
          v35 = [IMDDeletePartsHelper _makeDeletePartsDictFor:v34 withIndexes:v10 withIndexToRangeMap:v11 deleteDate:v12];

          v36 = [v21 serviceName];
          LODWORD(v34) = [v36 isEqualToString:IMServiceNameSMS];

          v37 = +[IMDAccountController sharedInstance];
          v38 = v37;
          v39 = &IMServiceNameiMessage;
          if (v34)
          {
            v39 = &IMServiceNameSMS;
          }

          v40 = [v37 anySessionForServiceName:*v39];

          v41 = [v21 guid];
          [v40 sendDeleteCommand:v35 forChatGUID:v41];
        }
      }
    }
  }
}

- (void)markRepliedForMessageGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[IMDClientRequestContext currentContext];
      v6 = [v5 listenerID];
      *buf = 138412546;
      v36 = v6;
      v37 = 2112;
      v38 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request from %@ to mark message as replied with GUID: %@", buf, 0x16u);
    }
  }

  if ([v3 length])
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 chatsForMessageGUID:v3];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v10)
    {
      v12 = *v32;
      v30 = IMChipListCharacterString;
      *&v11 = 138412802;
      v28 = v11;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [v14 serviceName];
          if (v15)
          {
            v16 = [v14 chatIdentifier];
            v17 = v16 == 0;

            if (!v17)
            {
              v18 = +[IMDMessageStore sharedInstance];
              v19 = [v18 messageWithGUID:v3];

              if (v19)
              {
                v20 = [v19 body];
                v21 = [v20 string];
                v22 = [v21 substringFromIndex:{objc_msgSend(v20, "length") - 1}];
                v23 = [v22 isEqualToString:v30];

                if (v23)
                {
                  v24 = [v19 copyAsReplied];
                  [(IMDaemonChatRequestHandler *)self updateMessage:v24];
                }
              }

              else if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  v26 = [v14 chatIdentifier];
                  v27 = [v14 serviceName];
                  *buf = v28;
                  v36 = v14;
                  v37 = 2112;
                  v38 = v26;
                  v39 = 2112;
                  v40 = v27;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Empty ID or service for chat: %@ (ID: %@  Service: %@)", buf, 0x20u);
                }
              }
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v10);
    }
  }
}

- (id)_chatsWithIsBlackholed:(BOOL)a3 inChats:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isBlackholed] == v4)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v8);
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 count];
      v14 = [v6 count];
      v15 = @"NO";
      *buf = 134218498;
      v22 = v13;
      if (v4)
      {
        v15 = @"YES";
      }

      v23 = 2048;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Filtered %llu chats to %llu with isBlackholed: %@", buf, 0x20u);
    }
  }

  return v6;
}

- (void)_loadChat:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v8 = a4;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [(IMDaemonChatRequestHandler *)self _loadChats:v9 completionHandler:v8, v10];
  }

  else
  {
    v9 = a4;
    [(IMDaemonChatRequestHandler *)self _loadChats:&__NSArray0__struct completionHandler:v9];
  }
}

- (void)_loadChats:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IMDClientRequestContext currentContext];
  [(IMDaemonChatRequestHandler *)self _loadChats:v7 context:v8 completionHandler:v6];
}

- (void)_loadChats:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 capabilities];
  v12 = v11;
  v13 = [(IMDaemonChatRequestHandler *)self _chatsWithIsBlackholed:(v11 >> 26) & 1 inChats:v8];
  v14 = +[IMDChatRegistry sharedInstance];
  v15 = [v14 _chatInfoForChats:v13];

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v13 count];
      v18 = @"NO";
      if ((v12 & 0x4000000) != 0)
      {
        v18 = @"YES";
      }

      v19 = 134218242;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Prepared %llu loaded chats (blackholed: %@)", &v19, 0x16u);
    }
  }

  if (v10)
  {
    v10[2](v10, v15);
  }
}

- (void)loadChatWithChatIdentifier:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request to load chat with identifier %@", buf, 0xCu);
    }
  }

  if (v3 && [v3 length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = +[IMDClientRequestContext currentContext];
        v7 = [v6 listenerID];
        *buf = 138412290;
        v27 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Request from listener %@", buf, 0xCu);
      }
    }

    v8 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = +[IMDChatRegistry sharedInstance];
    v10 = [v9 chats];

    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 chatIdentifier];
          if ([v15 isEqualToIgnoringCase:v3])
          {
            v16 = [v14 dictionaryRepresentationIncludingLastMessage];
            if (v16)
            {
              v17 = v8 != 0;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              CFArrayAppendValue(v8, v16);
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v18 = +[IMDClientRequestContext currentContext];
    v19 = [v18 replyProxy];
    [v19 chatLoadedWithChatIdentifier:v3 chats:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Invalid chat identifier. Bailing!", buf, 2u);
    }
  }
}

- (void)loadLastMessageItemsForMergedChatsWithGUIDs:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CD8C;
  v10 = v9[3] = &unk_100081878;
  v7 = v10;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  v8 = [v7 copy];
  v5[2](v5, v8);
}

- (void)loadAllChats
{
  v2 = +[IMDChatRegistry sharedInstance];
  v5 = [v2 _allChatInfo];

  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [v3 broadcasterForChatListeners];
  [v4 loadedChats:v5];
}

- (void)loadChatWithGUID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request to load chat with guid: %@", &v11, 0xCu);
    }
  }

  v9 = +[IMDChatRegistry sharedInstance];
  v10 = [v9 existingChatWithGUID:v6];

  [(IMDaemonChatRequestHandler *)self _loadChat:v10 completionHandler:v7];
}

- (void)loadChatWithGUID:(id)a3 queryID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IMDClientRequestContext currentContext];
  v9 = [v8 replyProxy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D1F4;
  v12[3] = &unk_1000818A0;
  v13 = v9;
  v14 = v6;
  v10 = v6;
  v11 = v9;
  [(IMDaemonChatRequestHandler *)self loadChatWithGUID:v7 reply:v12];
}

- (void)loadChatsFilteredUsingPredicate:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"YES";
      if (!v6)
      {
        v9 = @"NO";
      }

      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request to load chats with predicate: %@", &v12, 0xCu);
    }
  }

  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatsFilteredUsingPredicate:v6];

  [(IMDaemonChatRequestHandler *)self _loadChats:v11 completionHandler:v7];
}

- (void)loadChatsFilteredUsingPredicate:(id)a3 queryID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IMDClientRequestContext currentContext];
  v9 = [v8 replyProxy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D448;
  v12[3] = &unk_1000818A0;
  v13 = v9;
  v14 = v6;
  v10 = v6;
  v11 = v9;
  [(IMDaemonChatRequestHandler *)self loadChatsFilteredUsingPredicate:v7 reply:v12];
}

- (void)loadChatsFilteredUsingPredicate:(id)a3 lastMessageOlderThan:(id)a4 limit:(int64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"YES";
      *buf = 138412802;
      if (!v10)
      {
        v14 = @"NO";
      }

      v21 = v14;
      v22 = 2112;
      v23 = v11;
      v24 = 2048;
      v25 = a5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Request to load chats with predicate: %@ older than: %@ limit: %llu", buf, 0x20u);
    }
  }

  v15 = +[IMDChatRegistry sharedInstance];
  v16 = [v15 existingChatsFilteredUsingPredicate:v10 sortedUsingLastMessageDateAscending:0 olderThan:v11 limit:a5];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D634;
  v18[3] = &unk_1000818C8;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [(IMDaemonChatRequestHandler *)self _loadChats:v16 completionHandler:v18];
}

- (void)loadUnreadChatsWithLastMessageOlderThan:(id)a3 predicate:(id)a4 limit:(int64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = v10;
      v23 = 2048;
      v24 = a5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Request to load unread chats older than: %@ limit: %llu", buf, 0x16u);
    }
  }

  v14 = +[IMDClientRequestContext currentContext];
  v15 = +[IMDChatRegistry sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D86C;
  v18[3] = &unk_1000818F0;
  v18[4] = self;
  v19 = v14;
  v20 = v12;
  v16 = v12;
  v17 = v14;
  [v15 fetchExistingUnreadChatsOlderThan:v10 predicate:v11 limit:a5 completionHandler:v18];
}

- (id)_chatDictionariesWithLastUnreadMessageRecordDateFromDictionaries:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    v23 = IMMessagePropertyDate;
    v22 = IMMessagePropertyIsRead;
    v21 = IMMessagePropertyIsFinished;
    v20 = IMMessagePropertyIsFromMe;
    v19 = IMMessagePropertyItemType;
    v18 = IMMessagePropertyIsSystemMessage;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 mutableCopy];
        v11 = [v9 objectForKeyedSubscript:@"guid"];
        if ([v11 length])
        {
          v12 = [NSSortDescriptor sortDescriptorWithKey:v23 ascending:0];
          v13 = +[IMDDatabase synchronousDatabase];
          v14 = [NSPredicate predicateWithFormat:@"%K == 0 AND %K == 1 AND %K == 0 AND %K == 0 AND %K == 0", v22, v21, v20, v19, v18];
          v30 = v12;
          v15 = [NSArray arrayWithObjects:&v30 count:1];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10000DC68;
          v24[3] = &unk_100081918;
          v25 = v10;
          [v13 fetchMessageRecordsForChatRecordWithGUID:v11 filteredUsingPredicate:v14 sortedUsingDescriptors:v15 limit:1 completionHandler:v24];
        }

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_chatDictionariesWithLastMessageRecordDateFromDictionaries:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v17 = IMMessagePropertyDate;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 mutableCopy];
        v11 = [v9 objectForKeyedSubscript:@"guid"];
        if ([v11 length])
        {
          v12 = [NSSortDescriptor sortDescriptorWithKey:v17 ascending:0];
          v13 = +[IMDDatabase synchronousDatabase];
          v24 = v12;
          v14 = [NSArray arrayWithObjects:&v24 count:1];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10000DF44;
          v18[3] = &unk_100081918;
          v19 = v10;
          [v13 fetchMessageRecordsForChatRecordWithGUID:v11 filteredUsingPredicate:0 sortedUsingDescriptors:v14 limit:1 completionHandler:v18];
        }

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)loadChatsFilteredUsingPredicate:(id)a3 lastMessageOlderThan:(id)a4 limit:(int64_t)a5 queryID:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = +[IMDClientRequestContext currentContext];
  v14 = [v13 replyProxy];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000E0D4;
  v17[3] = &unk_1000818A0;
  v18 = v14;
  v19 = v10;
  v15 = v10;
  v16 = v14;
  [(IMDaemonChatRequestHandler *)self loadChatsFilteredUsingPredicate:v12 lastMessageOlderThan:v11 limit:a5 reply:v17];
}

- (void)loadChatsWithIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request to load chats with identifier: %@", &v11, 0xCu);
    }
  }

  v9 = +[IMDChatRegistry sharedInstance];
  v10 = [v9 allExistingChatsWithIdentifier:v6];

  [(IMDaemonChatRequestHandler *)self _loadChats:v10 completionHandler:v7];
}

- (void)loadChatsWithIdentifier:(id)a3 queryID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IMDClientRequestContext currentContext];
  v9 = [v8 replyProxy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E310;
  v12[3] = &unk_1000818A0;
  v13 = v9;
  v14 = v6;
  v10 = v6;
  v11 = v9;
  [(IMDaemonChatRequestHandler *)self loadChatsWithIdentifier:v7 reply:v12];
}

- (void)loadChatsWithGroupID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request to load chats with groupID: %@", &v11, 0xCu);
    }
  }

  v9 = +[IMDChatRegistry sharedInstance];
  v10 = [v9 existingChatsWithGroupID:v6];

  [(IMDaemonChatRequestHandler *)self _loadChats:v10 completionHandler:v7];
}

- (void)loadChatsWithGroupID:(id)a3 queryID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IMDClientRequestContext currentContext];
  v9 = [v8 replyProxy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E54C;
  v12[3] = &unk_1000818A0;
  v13 = v9;
  v14 = v6;
  v10 = v6;
  v11 = v9;
  [(IMDaemonChatRequestHandler *)self loadChatsWithGroupID:v7 reply:v12];
}

- (void)unblackholeAndLoadChatWithHandleIDs:(id)a3 reply:(id)a4
{
  v35 = a3;
  v34 = a4;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v35 count];
      v7 = +[IMDClientRequestContext currentContext];
      v8 = [v7 listenerID];
      *buf = 138412802;
      v47 = v35;
      v48 = 2048;
      v49 = v6;
      v50 = 2112;
      v51 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Request to load chat with handleIDs array %@ of count %lu from %@", buf, 0x20u);
    }
  }

  if (v35 && [v35 count])
  {
    v37 = [[NSSet alloc] initWithArray:v35];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = +[IMDChatRegistry sharedInstance];
    obj = [v9 blackholedChats];

    v10 = 0;
    v11 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v11)
    {
      v13 = *v41;
      *&v12 = 138412290;
      v33 = v12;
LABEL_9:
      v14 = 0;
      while (1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        v16 = [v15 participants];
        v17 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10000ED4C;
        v38[3] = &unk_100081940;
        v18 = v17;
        v39 = v18;
        [v16 enumerateObjectsUsingBlock:v38];
        v19 = [v18 isEqualToSet:v37];
        v20 = v19;
        if (v19)
        {
          v21 = [v15 dictionaryRepresentationIncludingLastMessage];

          [v15 updateIsBlackholed:0];
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = [v15 chatIdentifier];
              *buf = v33;
              v47 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Concluded search. Found existing chat (%@) with target participant list.", buf, 0xCu);
            }
          }

          v24 = [v15 participants];
          v25 = [v24 count] == 1;

          v26 = +[IMMetricsCollector sharedInstance];
          v27 = v26;
          if (v25)
          {
            v28 = 22;
          }

          else
          {
            v28 = 23;
          }

          [v26 trackSpamEvent:v28];

          v10 = v21;
        }

        if (v20)
        {
          break;
        }

        if (v11 == ++v14)
        {
          v11 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v11)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    v29 = +[IMDBroadcastController sharedProvider];
    v30 = [v29 broadcasterForChatListeners];
    [v30 previouslyBlackholedChatLoadedWithHandleIDs:v35 chat:v10];

    if (v10)
    {
      v44 = v10;
      v31 = [NSArray arrayWithObjects:&v44 count:1];
      v34[2](v34, v31);
    }

    else
    {
      (v34[2])();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Invalid handleIDs array. Bailing!", buf, 2u);
      }
    }

    v34[2](v34, &__NSArray0__struct);
  }
}

- (void)sendStickerAtPath:(id)a3 toChatID:(id)a4 forNBubbleFromTheBottom:(int64_t)a5 atX:(id)a6 atY:(id)a7 scale:(id)a8 balloonWidth:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v64 = a7;
  v63 = a8;
  v62 = a9;
  v17 = +[IMDAccountController sharedAccountController];
  v58 = [v17 anySessionForServiceName:IMServiceNameiMessage];

  v18 = +[IMDChatRegistry sharedInstance];
  v60 = v15;
  v19 = [v18 existingChatWithGUID:v15];

  v20 = +[NSMutableArray array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v57 = v19;
  v21 = [v19 participants];
  v22 = [v21 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v66;
    do
    {
      v25 = 0;
      do
      {
        if (*v66 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v65 + 1) + 8 * v25) ID];
        [v20 addObject:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v23);
  }

  v27 = +[IMDMessageStore sharedInstance];
  v73 = IMServiceNameiMessage;
  v28 = [NSArray arrayWithObjects:&v73 count:1];
  v29 = [v27 itemsWithHandles:v20 onServices:v28 messageGUID:0 limit:20];

  v30 = [v29 __imArrayByFilteringWithBlock:&stru_100081980];

  v56 = v30;
  if ([v30 count] <= a5)
  {
    [v30 lastObject];
  }

  else
  {
    [v30 objectAtIndex:{objc_msgSend(v30, "count") - a5}];
  }
  v31 = ;
  v61 = v14;
  v32 = [NSURL fileURLWithPath:v14];
  v33 = +[IMDFileTransferCenter sharedInstance];
  v34 = [v33 createNewOutgoingTransferWithLocalFileURL:v32];

  v35 = +[IMDFileTransferCenter sharedInstance];
  v36 = [v35 transferForGUID:v34];

  v37 = [v32 path];
  v38 = IMSharedHelperMD5HashOfFileAtPath();

  v52 = v38;
  v72[0] = v38;
  v71[0] = IMStickerUserInfoStickerHashKey;
  v71[1] = IMStickerUserInfoStickerGUIDKey;
  v54 = v32;
  v39 = [v32 lastPathComponent];
  v72[1] = v39;
  v72[2] = @"0";
  v71[2] = IMStickerUserInfoAssociatedLayoutIntentKey;
  v71[3] = IMStickerUserInfoLayoutIntentKey;
  v72[3] = @"0";
  v72[4] = v62;
  v71[4] = IMStickerUserInfoParentPreviewWidthKey;
  v71[5] = IMStickerUserInfoRotationKey;
  v72[5] = @"0.0";
  v72[6] = v63;
  v71[6] = IMStickerUserInfoScaleKey;
  v71[7] = IMStickerUserInfoXScalarKey;
  v71[8] = IMStickerUserInfoYScalarKey;
  v72[7] = v16;
  v72[8] = v64;
  v40 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:9];
  [v36 setStickerUserInfo:v40];

  v53 = v36;
  [v36 setIsSticker:1];
  v70 = v34;
  v41 = [NSArray arrayWithObjects:&v70 count:1];
  v42 = [NSAttributedString __im_attributedStringWithFileTransfers:v41];

  v43 = [v42 __im_attributedStringByAssigningMessagePartNumbers];
  v44 = [IMAssociatedMessageItem alloc];
  v45 = +[NSDate date];
  v59 = v16;
  if (v34)
  {
    v69 = v34;
    v46 = [NSArray arrayWithObjects:&v69 count:1];
  }

  else
  {
    v46 = 0;
  }

  v47 = +[NSString stringGUID];
  v48 = [v31 guid];
  v55 = v31;
  v49 = [v31 threadIdentifier];
  v50 = [v44 initWithSender:0 time:v45 body:v43 attributes:0 fileTransferGUIDs:v46 flags:5 error:0 guid:v47 associatedMessageGUID:v48 associatedMessageType:1000 associatedMessageRange:0 messageSummaryInfo:0x7FFFFFFFFFFFFFFFLL threadIdentifier:{0, v49}];

  if (v34)
  {
  }

  v51 = [v57 chatIdentifier];
  [v58 sendMessage:v50 toChatID:v60 identifier:v51 style:{objc_msgSend(v57, "style")}];
}

- (void)sendReadReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v23 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:v13];

  if (v15)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:v13];
  v20 = [v19 service];
  v21 = [v20 internalName];
  v15 = [v17 anySessionForServiceName:v21];

  if (v15)
  {
LABEL_7:
    [v15 sendReadReceiptForMessage:v10 toChatID:v11 identifier:v12 style:v23];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendPlayedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v23 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:v13];

  if (v15)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:v13];
  v20 = [v19 service];
  v21 = [v20 internalName];
  v15 = [v17 anySessionForServiceName:v21];

  if (v15)
  {
LABEL_7:
    [v15 sendPlayedReceiptForMessage:v10 toChatID:v11 identifier:v12 style:v23];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendSavedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v23 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:v13];

  if (v15)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:v13];
  v20 = [v19 service];
  v21 = [v20 internalName];
  v15 = [v17 anySessionForServiceName:v21];

  if (v15)
  {
LABEL_7:
    [v15 sendSavedReceiptForMessage:v10 toChatID:v11 identifier:v12 style:v23];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendSyndicationAction:(id)a3 toChatsWithIdentifiers:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 anySessionForServiceName:IMServiceNameiMessage];

  [v8 sendSyndicationAction:v6 toChatsWithIdentifiers:v5];
}

- (void)sendUpdatedCollaborationMetadata:(id)a3 toChatsWithIdentifiers:(id)a4 forMessageGUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 anySessionForServiceName:IMServiceNameiMessage];

  [v11 sendUpdatedCollaborationMetadata:v9 toChatsWithIdentifiers:v8 forMessageGUID:v7];
}

- (void)sendBalloonPayload:(id)a3 attachments:(id)a4 withMessageGUID:(id)a5 bundleID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 anySessionForServiceName:IMServiceNameiMessage];

  [v14 sendBalloonPayload:v12 attachments:v11 withMessageGUID:v10 bundleID:v9];
}

- (void)updateBalloonPayload:(id)a3 attachments:(id)a4 bundleID:(id)a5 forMessageGUID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[IMDMessageStore sharedInstance];
  v17 = [v13 messageWithGUID:v9];

  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v17 service];
  v16 = [v14 anySessionForServiceName:v15];

  [v16 updateBalloonPayload:v12 attachments:v11 bundleID:v10 forMessage:v17];
}

- (void)setProperties:(id)a3 ofParticipant:(id)a4 inChatID:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8
{
  v25 = a7;
  v26 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = +[IMDAccountController sharedAccountController];
  v17 = [v16 sessionForAccount:v15];

  if (v17)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v19 = +[IMDAccountController sharedAccountController];
  v20 = +[IMDAccountController sharedAccountController];
  v21 = [v20 accountForAccountID:v15];
  v22 = [v21 service];
  v23 = [v22 internalName];
  v17 = [v19 anySessionForServiceName:v23];

  if (v17)
  {
LABEL_7:
    [v17 setProperties:v26 ofParticipant:v12 inChatID:v13 identifier:v14 style:v25];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendCommand:(id)a3 withProperties:(id)a4 toPerson:(id)a5 account:(id)a6 toChatID:(id)a7 identifier:(id)a8 style:(unsigned __int8)a9
{
  v27 = a3;
  v28 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 sessionForAccount:v15];

  if (v19)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v21 = +[IMDAccountController sharedAccountController];
  v22 = +[IMDAccountController sharedAccountController];
  v23 = [v22 accountForAccountID:v15];
  v24 = [v23 service];
  v25 = [v24 internalName];
  v19 = [v21 anySessionForServiceName:v25];

  if (v19)
  {
LABEL_7:
    [v19 sendCommand:v27 withProperties:v28 toPerson:v14 toChatID:v16 identifier:v17 style:{a9, v27}];
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendCommand:(id)a3 withProperties:(id)a4 toPerson:(id)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:v12];

  if (v14)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:v12];
  v19 = [v18 service];
  v20 = [v19 internalName];
  v14 = [v16 anySessionForServiceName:v20];

  if (v14)
  {
LABEL_7:
    [v14 sendCommand:v9 withProperties:v10 toPerson:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)stopTranscriptSharingWithChat:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[IMDaemonChatRequestHandler stopTranscriptSharingWithChat:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Stop transcript sharing for %s", &v9, 0xCu);
    }
  }

  v5 = +[IMDChatRegistry sharedInstance];
  v6 = [v5 allExistingChatsWithIdentifier:v3];

  v7 = +[IMDChorosController sharedController];
  v8 = [v6 firstObject];
  [v7 stopTranscriptSharingWithChat:v8];
}

- (void)fetchCommonCapabilities:(id)a3 fromChatWithGUID:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatWithGUID:v9];

  if (v11)
  {
    v12 = [v11 participants];
    v13 = [v12 arrayByApplyingSelector:"ID"];

    v14 = [v11 lastAddressedLocalHandle];
    if ([v14 length])
    {
      v15 = [v13 arrayByAddingObject:v14];

      v13 = v15;
    }

    v16 = [v13 _URIsFromIDs];

    v17 = [v16 __im_canonicalIDSIDsFromAddresses];
    v18 = IMServiceNameForCanonicalIDSAddresses();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100010F54;
    v19[3] = &unk_1000819A8;
    v20 = v8;
    [IMIDSUtilities findCommonCapabilitiesAcrossRecipients:v16 serviceName:v18 capsToCheck:v7 completion:v19];
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0);
  }
}

- (void)handleTrustKitDecisioningForItems:(id)a3 chat:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMFeatureFlags sharedFeatureFlags];
  v12 = [v11 isTrustKitRCSSpamReportingEnabled];

  if ((v12 & 1) != 0 && [v8 count])
  {
    v13 = [v8 mutableCopy];
    v14 = [v13 firstObject];
    v24 = +[IMDTrustKitDecisioningManager sharedManager];
    v23 = [v14 sender];
    v22 = [v9 serviceName];
    v21 = [v14 rcsAdvisedAction];
    v15 = [v14 body];
    v16 = [v14 countryCode];
    v17 = [v14 messageContainsOneTimeCode];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100011198;
    v25[3] = &unk_1000819F8;
    v26 = v14;
    v27 = v9;
    v29 = self;
    v30 = v10;
    v28 = v13;
    v20 = v13;
    v18 = v14;
    LOBYTE(v19) = v17;
    [v24 requestDecisionForSender:v23 service:v22 trustIndicator:v21 messageBody:v15 countryCode:v16 requestReason:1 containsOneTimeCode:v19 completionHandler:v25];
  }

  else
  {
    (*(v10 + 2))(v10, 1);
  }
}

- (void)queryTrustKitDecisioningIfNeededForChatGUID:(id)a3 items:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMFeatureFlags sharedFeatureFlags];
  v12 = [v11 isTrustKitRCSSpamReportingEnabled];

  if (v12)
  {
    v13 = +[IMDTrustKitDecisioningManager sharedManager];
    v14 = +[IMDChatRegistry sharedInstance];
    v15 = [v14 existingChatWithGUID:v8];

    v16 = [v15 lastMessage];
    v17 = [v16 sender];
    if ([v13 shouldSkipTrustKitDecisioningForChat:v15 sender:v17])
    {
    }

    else
    {
      v18 = [v9 count];

      if (v18)
      {
        v19 = +[IMDMessageStore sharedInstance];
        v20 = [v19 messagesWithGUIDs:v9];

        [(IMDaemonChatRequestHandler *)self handleTrustKitDecisioningForItems:v20 chat:v15 reply:v10];
LABEL_18:

        goto LABEL_19;
      }
    }

    v21 = [v13 isJunkFilteringEnabled];
    v22 = IMOSLoggingEnabled();
    if (v21)
    {
      if (v22)
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25[0] = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Chat already processed by TK Junk filtering or has 3+ replies", v25, 2u);
        }
      }

      v10[2](v10, [v15 isFiltered]);
    }

    else
    {
      if (v22)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "TK Junk filtering disabled", buf, 2u);
        }
      }

      v10[2](v10, 1);
    }

    goto LABEL_18;
  }

  v10[2](v10, 1);
LABEL_19:
}

- (void)relayPriorityMessageFor:(id)a3
{
  v4 = sub_1000541B4();
  v5 = self;
  _sSo26IMDaemonChatRequestHandlerC7imagentE20relayPriorityMessage3forySaySSG_tF_0(v4);
}

- (void)fetchCollaborationNoticesForChatGUIDs:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1000541B4();
  _Block_copy(v5);
  v7 = self;
  sub_10003E83C(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)dismissNotice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003EAD0(v4, "Handling CollaborationNotice dismiss request for notice: %@", &selRef_dismissNotice_);
}

- (void)updateNotice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003EAD0(v4, "Updating CollaborationNotice: %@", &selRef_updateNotice_);
}

- (void)loadChatsWithPinningIdentifier:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_100054164();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_100047110(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)loadAnyChatsContainingHandleIDsIn:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1000541B4();
  _Block_copy(v5);
  v7 = self;
  sub_1000473A8(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)closeSessionChatID:(id)a3 identifier:(id)a4 didDeleteConversation:(BOOL)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v7 = a6;
  v8 = a5;
  v10 = sub_100054164();
  v12 = v11;
  v13 = sub_100054164();
  v15 = v14;
  v16 = sub_100054164();
  v18 = v17;
  v19 = self;
  _sSo26IMDaemonChatRequestHandlerC7imagentE012closeSessionB2ID_10identifier21didDeleteConversation5style7accountySS_SSSbSo11IMChatStyleVSStF_0(v10, v12, v13, v15, v8, v7, v16, v18);
}

- (void)acceptChatContainingMessageWithGUID:(id)a3
{
  v4 = sub_100054164();
  v6 = v5;
  v7 = self;
  _sSo26IMDaemonChatRequestHandlerC7imagentE06acceptB17ContainingMessage8withGUIDySS_tF_0(v4, v6);
}

@end