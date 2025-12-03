@interface IMDaemonChatRequestHandler
- (id)_chatDictionariesWithLastMessageRecordDateFromDictionaries:(id)dictionaries;
- (id)_chatDictionariesWithLastUnreadMessageRecordDateFromDictionaries:(id)dictionaries;
- (id)_chatsWithIsBlackholed:(BOOL)blackholed inChats:(id)chats;
- (void)_loadChat:(id)chat completionHandler:(id)handler;
- (void)_loadChats:(id)chats completionHandler:(id)handler;
- (void)_loadChats:(id)chats context:(id)context completionHandler:(id)handler;
- (void)_updateMessage:(id)message;
- (void)acceptChatContainingMessageWithGUID:(id)d;
- (void)chat:(id)chat updateDisplayName:(id)name messageID:(id)d;
- (void)chat:(id)chat updateIsFiltered:(int64_t)filtered;
- (void)chat:(id)chat updateLastAddressHandle:(id)handle;
- (void)chat:(id)chat updateLastAddressedSIMID:(id)d;
- (void)chat:(id)chat updateProperties:(id)properties;
- (void)chatDidRecoverFromJunk:(id)junk;
- (void)closeSessionChatID:(id)d identifier:(id)identifier didDeleteConversation:(BOOL)conversation style:(unsigned __int8)style account:(id)account;
- (void)dismissNotice:(id)notice;
- (void)fetchCollaborationNoticesForChatGUIDs:(id)ds reply:(id)reply;
- (void)fetchCommonCapabilities:(id)capabilities fromChatWithGUID:(id)d reply:(id)reply;
- (void)handleTrustKitDecisioningForItems:(id)items chat:(id)chat reply:(id)reply;
- (void)loadAllChats;
- (void)loadAnyChatsContainingHandleIDsIn:(id)in reply:(id)reply;
- (void)loadChatWithChatIdentifier:(id)identifier;
- (void)loadChatWithGUID:(id)d queryID:(id)iD;
- (void)loadChatWithGUID:(id)d reply:(id)reply;
- (void)loadChatsFilteredUsingPredicate:(id)predicate lastMessageOlderThan:(id)than limit:(int64_t)limit queryID:(id)d;
- (void)loadChatsFilteredUsingPredicate:(id)predicate lastMessageOlderThan:(id)than limit:(int64_t)limit reply:(id)reply;
- (void)loadChatsFilteredUsingPredicate:(id)predicate queryID:(id)d;
- (void)loadChatsFilteredUsingPredicate:(id)predicate reply:(id)reply;
- (void)loadChatsWithGroupID:(id)d queryID:(id)iD;
- (void)loadChatsWithGroupID:(id)d reply:(id)reply;
- (void)loadChatsWithIdentifier:(id)identifier queryID:(id)d;
- (void)loadChatsWithIdentifier:(id)identifier reply:(id)reply;
- (void)loadChatsWithPinningIdentifier:(id)identifier reply:(id)reply;
- (void)loadLastMessageItemsForMergedChatsWithGUIDs:(id)ds completionHandler:(id)handler;
- (void)loadUnreadChatsWithLastMessageOlderThan:(id)than predicate:(id)predicate limit:(int64_t)limit reply:(id)reply;
- (void)markChatGUIDsAsReviewed:(id)reviewed;
- (void)markChatGUIDsAsReviewedAndReflectToPeers:(id)peers;
- (void)markMessageAsCorrupt:(id)corrupt setCorrupt:(BOOL)setCorrupt;
- (void)markRepliedForMessageGUID:(id)d;
- (void)queryTrustKitDecisioningIfNeededForChatGUID:(id)d items:(id)items reply:(id)reply;
- (void)relayPriorityMessageFor:(id)for;
- (void)removeChat:(id)chat;
- (void)sendBalloonPayload:(id)payload attachments:(id)attachments withMessageGUID:(id)d bundleID:(id)iD;
- (void)sendCommand:(id)command withProperties:(id)properties toPerson:(id)person account:(id)account;
- (void)sendCommand:(id)command withProperties:(id)properties toPerson:(id)person account:(id)account toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendStickerAtPath:(id)path toChatID:(id)d forNBubbleFromTheBottom:(int64_t)bottom atX:(id)x atY:(id)y scale:(id)scale balloonWidth:(id)width;
- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers;
- (void)sendUpdatedCollaborationMetadata:(id)metadata toChatsWithIdentifiers:(id)identifiers forMessageGUID:(id)d;
- (void)setProperties:(id)properties ofParticipant:(id)participant inChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)stopTranscriptSharingWithChat:(id)chat;
- (void)storeItem:(id)item inChatGUID:(id)d;
- (void)unblackholeAndLoadChatWithHandleIDs:(id)ds reply:(id)reply;
- (void)updateBalloonPayload:(id)payload attachments:(id)attachments bundleID:(id)d forMessageGUID:(id)iD;
- (void)updateMessage:(id)message;
- (void)updateMessage:(id)message withIndexesOfDeletedItems:(id)items withIndexToRangeMapOfDeletedItems:(id)deletedItems deleteDate:(id)date;
- (void)updateNotice:(id)notice;
@end

@implementation IMDaemonChatRequestHandler

- (void)storeItem:(id)item inChatGUID:(id)d
{
  itemCopy = item;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = +[IMDClientRequestContext currentContext];
      listenerID = [v8 listenerID];
      v11 = 138412802;
      v12 = listenerID;
      v13 = 2112;
      v14 = itemCopy;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Request from %@ to store item: %@  inChatGUID: %@", &v11, 0x20u);
    }
  }

  v10 = IMSingleObjectArray();
  sub_10001F524(v10, dCopy, 0);
}

- (void)markMessageAsCorrupt:(id)corrupt setCorrupt:(BOOL)setCorrupt
{
  setCorruptCopy = setCorrupt;
  corruptCopy = corrupt;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = +[IMDClientRequestContext currentContext];
      listenerID = [v7 listenerID];
      v9 = @"NO";
      *buf = 138412802;
      v24 = listenerID;
      v25 = 2112;
      if (setCorruptCopy)
      {
        v9 = @"YES";
      }

      v26 = corruptCopy;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request from %@ to mark message with IDs as corrupt: %@ setCorrupt: %@", buf, 0x20u);
    }
  }

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 messageWithGUID:corruptCopy registerAttachments:0];

  if (v11)
  {
    flags = [v11 flags];
    isCorrupt = [v11 isCorrupt];
    if (setCorruptCopy)
    {
      if ((isCorrupt & 1) == 0)
      {
        v14 = flags | 0x4000000;
LABEL_17:
        [v11 setFlags:v14];
        v16 = +[IMDMessageStore sharedInstance];
        LOBYTE(v22) = 0;
        v17 = [v16 storeMessage:v11 forceReplace:1 modifyError:0 modifyFlags:1 flagMask:0 updateMessageCache:0 calculateUnreadCount:v22];

        goto LABEL_27;
      }
    }

    else if (isCorrupt)
    {
      v14 = flags & 0xFFFFFFFFFBFFFFFFLL;
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        isCorrupt2 = [v11 isCorrupt];
        v20 = @"NO";
        if (isCorrupt2)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        if (setCorruptCopy)
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
      v24 = corruptCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "We didn't have a message to mark as corrupt for guid %@ ", buf, 0xCu);
    }
  }

LABEL_27:
}

- (void)removeChat:(id)chat
{
  chatCopy = chat;
  v4 = +[IMDChatRegistry sharedInstance];
  v5 = [v4 existingChatWithGUID:chatCopy];

  serviceName = [v5 serviceName];
  v7 = [serviceName isEqualToString:IMServiceNameSMS];

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
      v39 = chatCopy;
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

    serviceName2 = [v5 serviceName];
    v12 = [serviceName2 isEqualToString:IMServiceNameSMS];

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
      service = [v16 service];
      internalName = [service internalName];
      v19 = IMLegacyServiceGUIDFromChatGUID();
      v37[0] = v19;
      v36[1] = IMDCommandChatParticipantsKey;
      participantHandles = [v5 participantHandles];
      v37[1] = participantHandles;
      v36[2] = IMDChatWasReportedAsJunkKey;
      v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 wasReportedAsJunk]);
      v37[2] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
      v23 = [v22 mutableCopy];

      groupID = [v5 groupID];
      LOBYTE(internalName) = [groupID length] == 0;

      if (internalName)
      {
        groupID2 = IMLogHandleForCategory();
        if (os_log_type_enabled(groupID2, OS_LOG_TYPE_ERROR))
        {
          sub_1000539D4(v5, groupID2);
        }
      }

      else
      {
        groupID2 = [v5 groupID];
        [v23 setObject:groupID2 forKeyedSubscript:IMDCommandChatGroupIDKey];
      }

      v33 = v23;
      v34[0] = IMDPermanentDeleteCommandChatMetadataArrayKey;
      v28 = [NSArray arrayWithObjects:&v33 count:1];
      v34[1] = IMDDeleteCommandIsPermanentDeleteKey;
      v35[0] = v28;
      v35[1] = &__kCFBooleanTrue;
      v29 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];

      [v16 sendDeleteCommand:v29 forChatGUID:chatCopy];
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
    [v32 leftChat:chatCopy];
  }

  else if (v9)
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = chatCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "No chat found for GUID: %@", buf, 0xCu);
    }
  }
}

- (void)chat:(id)chat updateDisplayName:(id)name messageID:(id)d
{
  chatCopy = chat;
  nameCopy = name;
  dCopy = d;
  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatWithGUID:chatCopy];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v19 = chatCopy;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = nameCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Chat Identifier: %@  Chat: %@  Update display name: %@", buf, 0x20u);
    }
  }

  if (v11)
  {
    displayName = [v11 displayName];
    lastAddressedLocalHandle = [v11 lastAddressedLocalHandle];
    serviceSession = [v11 serviceSession];
    guid = [v11 guid];
    chatIdentifier = [v11 chatIdentifier];
    [serviceSession updateDisplayName:nameCopy fromDisplayName:displayName fromID:lastAddressedLocalHandle forChatID:guid identifier:chatIdentifier style:objc_msgSend(v11 messageID:{"style"), dCopy}];
  }
}

- (void)chat:(id)chat updateIsFiltered:(int64_t)filtered
{
  chatCopy = chat;
  v6 = +[IMDChatRegistry sharedInstance];
  v7 = [v6 existingChatWithGUID:chatCopy];

  if (v7)
  {
    unreadCount = [v7 unreadCount];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"YES";
        *v26 = 67109890;
        *&v26[4] = filtered;
        if (!unreadCount)
        {
          v10 = @"NO";
        }

        *&v26[8] = 2112;
        *&v26[10] = v10;
        v27 = 2112;
        v28 = chatCopy;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Updating isFiltered to %d (recalculate unread: %@) for chat: %@: %@", v26, 0x26u);
      }
    }

    [v7 updateIsFiltered:{filtered, *v26}];
    v11 = +[IMFeatureFlags sharedFeatureFlags];
    isTranscriptBackgroundsEnabled = [v11 isTranscriptBackgroundsEnabled];

    if (isTranscriptBackgroundsEnabled && ![v7 isFiltered])
    {
      v13 = +[IMDMessageStore sharedInstance];
      chatIdentifier = [v7 chatIdentifier];
      style = [v7 style];
      service = [v7 service];
      internalName = [service internalName];
      v18 = [v13 lastIncomingMessageForChatWithIdentifier:chatIdentifier chatStyle:style onService:internalName];

      if (v18)
      {
        sender = [v18 sender];
        _bestGuessURI = [sender _bestGuessURI];

        lastAddressedLocalHandle = [v7 lastAddressedLocalHandle];
        _bestGuessURI2 = [lastAddressedLocalHandle _bestGuessURI];

        serviceSession = [v7 serviceSession];
        [serviceSession requestTranscriptBackground:v7 toIdentifier:_bestGuessURI fromIdentifier:_bestGuessURI2 messageIsFromStorage:0];
      }
    }

    if (unreadCount)
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
      *&v26[4] = chatCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "No chat found for GUID: %@", v26, 0xCu);
    }
  }
}

- (void)chatDidRecoverFromJunk:(id)junk
{
  junkCopy = junk;
  v4 = +[IMDChatRegistry sharedInstance];
  v5 = [v4 existingChatWithGUID:junkCopy];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = junkCopy;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Chat did recover from junk. chat: %@: %@", &v12, 0x16u);
      }
    }

    v8 = +[IMDSpamFilteringHelper sharedHelper];
    spamDetectionSource = [v5 spamDetectionSource];
    serviceName = [v5 serviceName];
    [v8 recordNotJunkMetricsForSpamDetectionSource:spamDetectionSource service:serviceName];
  }

  else if (v6)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = junkCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No chat found for GUID: %@", &v12, 0xCu);
    }
  }
}

- (void)markChatGUIDsAsReviewed:(id)reviewed
{
  reviewedCopy = reviewed;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 updatePendingReviewForChatsWithGUIDs:reviewedCopy pendingReview:0];
}

- (void)markChatGUIDsAsReviewedAndReflectToPeers:(id)peers
{
  peersCopy = peers;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 updatePendingReviewForChatsWithGUIDs:peersCopy pendingReview:0];

  v5 = +[IMDAccountController sharedInstance];
  v6 = [v5 anySessionForServiceName:IMServiceNameiMessage];

  if (v6)
  {
    [v6 reflectMarkAsReviewedToPeerDevicesForChatGUIDs:peersCopy];
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

- (void)chat:(id)chat updateProperties:(id)properties
{
  chatCopy = chat;
  propertiesCopy = properties;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:chatCopy];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412802;
      v14 = chatCopy;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = propertiesCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Chat Identifier: %@  Chat: %@  Update properties: %@", &v13, 0x20u);
    }
  }

  if (v8 && [propertiesCopy count])
  {
    [v8 updateProperties:propertiesCopy];
    v10 = +[IMDBroadcastController sharedProvider];
    v11 = [v10 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v8, "isBlackholed")}];
    properties = [v8 properties];
    [v11 chat:chatCopy propertiesUpdated:properties];
  }
}

- (void)chat:(id)chat updateLastAddressHandle:(id)handle
{
  chatCopy = chat;
  handleCopy = handle;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:chatCopy];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = chatCopy;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = handleCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Chat Identifier: %@  Chat: %@  Update last addressed handle: %@", &v12, 0x20u);
    }
  }

  if (v8)
  {
    [v8 updateLastAddressedHandle:handleCopy];
    v10 = +[IMDBroadcastController sharedProvider];
    v11 = [v10 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v8, "isBlackholed")}];
    [v11 chat:chatCopy lastAddressedHandleUpdated:handleCopy];
  }
}

- (void)chat:(id)chat updateLastAddressedSIMID:(id)d
{
  chatCopy = chat;
  dCopy = d;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:chatCopy];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = chatCopy;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Chat Identifier: %@  Chat: %@  Update last addressed unique ID: %@", &v12, 0x20u);
    }
  }

  if (v8)
  {
    [v8 updateLastAddressedSIMID:dCopy];
    v10 = +[IMDBroadcastController sharedProvider];
    v11 = [v10 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v8, "isBlackholed")}];
    [v11 chat:chatCopy lastAddressedSIMIDUpdated:dCopy];
  }
}

- (void)updateMessage:(id)message
{
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[IMDClientRequestContext currentContext];
      listenerID = [v6 listenerID];
      v8 = 138412546;
      v9 = listenerID;
      v10 = 2112;
      v11 = messageCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Request from %@ to update messages: %@", &v8, 0x16u);
    }
  }

  [(IMDaemonChatRequestHandler *)self _updateMessage:messageCopy];
}

- (void)_updateMessage:(id)message
{
  messageCopy = message;
  v4 = +[IMDMessageStore sharedInstance];
  guid = [messageCopy guid];
  v6 = [v4 messageWithGUID:guid];

  v7 = +[IMDMessageStore sharedInstance];
  guid2 = [messageCopy guid];
  v9 = [v7 chatForMessageGUID:guid2];

  serviceName = [v9 serviceName];
  LODWORD(guid2) = [serviceName isEqualToString:IMServiceNameSMS];

  if (guid2)
  {
    IMGreenTeaMessageDeleteLog();
  }

  if (v6)
  {
    v11 = +[IMDMessageStore sharedInstance];
    LOBYTE(v19) = 1;
    v12 = [v11 storeMessage:messageCopy forceReplace:0 modifyError:1 modifyFlags:1 flagMask:1638400 updateMessageCache:1 calculateUnreadCount:v19];

    v13 = [v12 isEqual:messageCopy];
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
      broadcasterForChatListeners = [v16 broadcasterForChatListeners];
      accountID = [v12 accountID];
      [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v12];
    }
  }
}

- (void)updateMessage:(id)message withIndexesOfDeletedItems:(id)items withIndexToRangeMapOfDeletedItems:(id)deletedItems deleteDate:(id)date
{
  messageCopy = message;
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = +[IMDClientRequestContext currentContext];
      listenerID = [v14 listenerID];
      *buf = 138412546;
      v48 = listenerID;
      v49 = 2112;
      v50 = messageCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Request from %@ to update messages: %@", buf, 0x16u);
    }
  }

  v16 = +[IMDMessageStore sharedInstance];
  guid = [(__CFString *)messageCopy guid];
  v18 = [v16 messageWithGUID:guid];

  v19 = +[IMDMessageStore sharedInstance];
  guid2 = [(__CFString *)messageCopy guid];
  v21 = [v19 chatForMessageGUID:guid2];

  serviceName = [v21 serviceName];
  LODWORD(guid2) = [serviceName isEqualToString:IMServiceNameSMS];

  if (guid2)
  {
    IMGreenTeaMessageDeleteLog();
  }

  if (v18)
  {
    v23 = +[IMDMessageStore sharedInstance];
    LOBYTE(v42) = 1;
    v24 = [v23 storeMessage:messageCopy forceReplace:0 modifyError:1 modifyFlags:1 flagMask:1638400 updateMessageCache:1 calculateUnreadCount:v42];

    v25 = [v24 isEqual:messageCopy];
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
      broadcasterForChatListeners = [v28 broadcasterForChatListeners];
      accountID = [v24 accountID];
      [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v24];

      if (itemsCopy)
      {
        if ([itemsCopy count])
        {
          if (dateCopy)
          {
            if (IMOSLoggingEnabled())
            {
              v31 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v48 = deletedItemsCopy;
                v49 = 2112;
                v50 = v18;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Recently Deleted | Recoverably deleting indexes %@ from message: %@", buf, 0x16u);
              }
            }

            body = [(__CFString *)v18 body];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_10000BF60;
            v43[3] = &unk_100081850;
            v44 = itemsCopy;
            v45 = v18;
            v46 = dateCopy;
            [body __im_visitMessageParts:v43];
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

          guid3 = [(__CFString *)messageCopy guid];
          v35 = [IMDDeletePartsHelper _makeDeletePartsDictFor:guid3 withIndexes:itemsCopy withIndexToRangeMap:deletedItemsCopy deleteDate:dateCopy];

          serviceName2 = [v21 serviceName];
          LODWORD(guid3) = [serviceName2 isEqualToString:IMServiceNameSMS];

          v37 = +[IMDAccountController sharedInstance];
          v38 = v37;
          v39 = &IMServiceNameiMessage;
          if (guid3)
          {
            v39 = &IMServiceNameSMS;
          }

          v40 = [v37 anySessionForServiceName:*v39];

          guid4 = [v21 guid];
          [v40 sendDeleteCommand:v35 forChatGUID:guid4];
        }
      }
    }
  }
}

- (void)markRepliedForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[IMDClientRequestContext currentContext];
      listenerID = [v5 listenerID];
      *buf = 138412546;
      v36 = listenerID;
      v37 = 2112;
      v38 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request from %@ to mark message as replied with GUID: %@", buf, 0x16u);
    }
  }

  if ([dCopy length])
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 chatsForMessageGUID:dCopy];

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
          serviceName = [v14 serviceName];
          if (serviceName)
          {
            chatIdentifier = [v14 chatIdentifier];
            v17 = chatIdentifier == 0;

            if (!v17)
            {
              v18 = +[IMDMessageStore sharedInstance];
              v19 = [v18 messageWithGUID:dCopy];

              if (v19)
              {
                body = [v19 body];
                string = [body string];
                v22 = [string substringFromIndex:{objc_msgSend(body, "length") - 1}];
                v23 = [v22 isEqualToString:v30];

                if (v23)
                {
                  copyAsReplied = [v19 copyAsReplied];
                  [(IMDaemonChatRequestHandler *)self updateMessage:copyAsReplied];
                }
              }

              else if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  chatIdentifier2 = [v14 chatIdentifier];
                  serviceName2 = [v14 serviceName];
                  *buf = v28;
                  v36 = v14;
                  v37 = 2112;
                  v38 = chatIdentifier2;
                  v39 = 2112;
                  v40 = serviceName2;
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

- (id)_chatsWithIsBlackholed:(BOOL)blackholed inChats:(id)chats
{
  blackholedCopy = blackholed;
  chatsCopy = chats;
  v6 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = chatsCopy;
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
        if ([v11 isBlackholed] == blackholedCopy)
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
      if (blackholedCopy)
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

- (void)_loadChat:(id)chat completionHandler:(id)handler
{
  chatCopy = chat;
  v7 = chatCopy;
  if (chatCopy)
  {
    v10 = chatCopy;
    handlerCopy = handler;
    handlerCopy2 = [NSArray arrayWithObjects:&v10 count:1];
    [(IMDaemonChatRequestHandler *)self _loadChats:handlerCopy2 completionHandler:handlerCopy, v10];
  }

  else
  {
    handlerCopy2 = handler;
    [(IMDaemonChatRequestHandler *)self _loadChats:&__NSArray0__struct completionHandler:handlerCopy2];
  }
}

- (void)_loadChats:(id)chats completionHandler:(id)handler
{
  handlerCopy = handler;
  chatsCopy = chats;
  v8 = +[IMDClientRequestContext currentContext];
  [(IMDaemonChatRequestHandler *)self _loadChats:chatsCopy context:v8 completionHandler:handlerCopy];
}

- (void)_loadChats:(id)chats context:(id)context completionHandler:(id)handler
{
  chatsCopy = chats;
  contextCopy = context;
  handlerCopy = handler;
  capabilities = [contextCopy capabilities];
  v12 = capabilities;
  v13 = [(IMDaemonChatRequestHandler *)self _chatsWithIsBlackholed:(capabilities >> 26) & 1 inChats:chatsCopy];
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v15);
  }
}

- (void)loadChatWithChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request to load chat with identifier %@", buf, 0xCu);
    }
  }

  if (identifierCopy && [identifierCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = +[IMDClientRequestContext currentContext];
        listenerID = [v6 listenerID];
        *buf = 138412290;
        v27 = listenerID;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Request from listener %@", buf, 0xCu);
      }
    }

    v8 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = +[IMDChatRegistry sharedInstance];
    chats = [v9 chats];

    v11 = [chats countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(chats);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          chatIdentifier = [v14 chatIdentifier];
          if ([chatIdentifier isEqualToIgnoringCase:identifierCopy])
          {
            dictionaryRepresentationIncludingLastMessage = [v14 dictionaryRepresentationIncludingLastMessage];
            if (dictionaryRepresentationIncludingLastMessage)
            {
              v17 = v8 != 0;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              CFArrayAppendValue(v8, dictionaryRepresentationIncludingLastMessage);
            }
          }
        }

        v11 = [chats countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v18 = +[IMDClientRequestContext currentContext];
    replyProxy = [v18 replyProxy];
    [replyProxy chatLoadedWithChatIdentifier:identifierCopy chats:v8];
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

- (void)loadLastMessageItemsForMergedChatsWithGUIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dsCopy count]);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CD8C;
  v10 = v9[3] = &unk_100081878;
  v7 = v10;
  [dsCopy enumerateKeysAndObjectsUsingBlock:v9];

  v8 = [v7 copy];
  handlerCopy[2](handlerCopy, v8);
}

- (void)loadAllChats
{
  v2 = +[IMDChatRegistry sharedInstance];
  _allChatInfo = [v2 _allChatInfo];

  v3 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatListeners = [v3 broadcasterForChatListeners];
  [broadcasterForChatListeners loadedChats:_allChatInfo];
}

- (void)loadChatWithGUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request to load chat with guid: %@", &v11, 0xCu);
    }
  }

  v9 = +[IMDChatRegistry sharedInstance];
  v10 = [v9 existingChatWithGUID:dCopy];

  [(IMDaemonChatRequestHandler *)self _loadChat:v10 completionHandler:replyCopy];
}

- (void)loadChatWithGUID:(id)d queryID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = +[IMDClientRequestContext currentContext];
  replyProxy = [v8 replyProxy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D1F4;
  v12[3] = &unk_1000818A0;
  v13 = replyProxy;
  v14 = iDCopy;
  v10 = iDCopy;
  v11 = replyProxy;
  [(IMDaemonChatRequestHandler *)self loadChatWithGUID:dCopy reply:v12];
}

- (void)loadChatsFilteredUsingPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"YES";
      if (!predicateCopy)
      {
        v9 = @"NO";
      }

      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request to load chats with predicate: %@", &v12, 0xCu);
    }
  }

  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatsFilteredUsingPredicate:predicateCopy];

  [(IMDaemonChatRequestHandler *)self _loadChats:v11 completionHandler:replyCopy];
}

- (void)loadChatsFilteredUsingPredicate:(id)predicate queryID:(id)d
{
  dCopy = d;
  predicateCopy = predicate;
  v8 = +[IMDClientRequestContext currentContext];
  replyProxy = [v8 replyProxy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D448;
  v12[3] = &unk_1000818A0;
  v13 = replyProxy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = replyProxy;
  [(IMDaemonChatRequestHandler *)self loadChatsFilteredUsingPredicate:predicateCopy reply:v12];
}

- (void)loadChatsFilteredUsingPredicate:(id)predicate lastMessageOlderThan:(id)than limit:(int64_t)limit reply:(id)reply
{
  predicateCopy = predicate;
  thanCopy = than;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"YES";
      *buf = 138412802;
      if (!predicateCopy)
      {
        v14 = @"NO";
      }

      v21 = v14;
      v22 = 2112;
      v23 = thanCopy;
      v24 = 2048;
      limitCopy = limit;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Request to load chats with predicate: %@ older than: %@ limit: %llu", buf, 0x20u);
    }
  }

  v15 = +[IMDChatRegistry sharedInstance];
  v16 = [v15 existingChatsFilteredUsingPredicate:predicateCopy sortedUsingLastMessageDateAscending:0 olderThan:thanCopy limit:limit];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D634;
  v18[3] = &unk_1000818C8;
  v18[4] = self;
  v19 = replyCopy;
  v17 = replyCopy;
  [(IMDaemonChatRequestHandler *)self _loadChats:v16 completionHandler:v18];
}

- (void)loadUnreadChatsWithLastMessageOlderThan:(id)than predicate:(id)predicate limit:(int64_t)limit reply:(id)reply
{
  thanCopy = than;
  predicateCopy = predicate;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = thanCopy;
      v23 = 2048;
      limitCopy = limit;
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
  v20 = replyCopy;
  v16 = replyCopy;
  v17 = v14;
  [v15 fetchExistingUnreadChatsOlderThan:thanCopy predicate:predicateCopy limit:limit completionHandler:v18];
}

- (id)_chatDictionariesWithLastUnreadMessageRecordDateFromDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dictionariesCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = dictionariesCopy;
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

- (id)_chatDictionariesWithLastMessageRecordDateFromDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dictionariesCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = dictionariesCopy;
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

- (void)loadChatsFilteredUsingPredicate:(id)predicate lastMessageOlderThan:(id)than limit:(int64_t)limit queryID:(id)d
{
  dCopy = d;
  thanCopy = than;
  predicateCopy = predicate;
  v13 = +[IMDClientRequestContext currentContext];
  replyProxy = [v13 replyProxy];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000E0D4;
  v17[3] = &unk_1000818A0;
  v18 = replyProxy;
  v19 = dCopy;
  v15 = dCopy;
  v16 = replyProxy;
  [(IMDaemonChatRequestHandler *)self loadChatsFilteredUsingPredicate:predicateCopy lastMessageOlderThan:thanCopy limit:limit reply:v17];
}

- (void)loadChatsWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request to load chats with identifier: %@", &v11, 0xCu);
    }
  }

  v9 = +[IMDChatRegistry sharedInstance];
  v10 = [v9 allExistingChatsWithIdentifier:identifierCopy];

  [(IMDaemonChatRequestHandler *)self _loadChats:v10 completionHandler:replyCopy];
}

- (void)loadChatsWithIdentifier:(id)identifier queryID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = +[IMDClientRequestContext currentContext];
  replyProxy = [v8 replyProxy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E310;
  v12[3] = &unk_1000818A0;
  v13 = replyProxy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = replyProxy;
  [(IMDaemonChatRequestHandler *)self loadChatsWithIdentifier:identifierCopy reply:v12];
}

- (void)loadChatsWithGroupID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request to load chats with groupID: %@", &v11, 0xCu);
    }
  }

  v9 = +[IMDChatRegistry sharedInstance];
  v10 = [v9 existingChatsWithGroupID:dCopy];

  [(IMDaemonChatRequestHandler *)self _loadChats:v10 completionHandler:replyCopy];
}

- (void)loadChatsWithGroupID:(id)d queryID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = +[IMDClientRequestContext currentContext];
  replyProxy = [v8 replyProxy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E54C;
  v12[3] = &unk_1000818A0;
  v13 = replyProxy;
  v14 = iDCopy;
  v10 = iDCopy;
  v11 = replyProxy;
  [(IMDaemonChatRequestHandler *)self loadChatsWithGroupID:dCopy reply:v12];
}

- (void)unblackholeAndLoadChatWithHandleIDs:(id)ds reply:(id)reply
{
  dsCopy = ds;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [dsCopy count];
      v7 = +[IMDClientRequestContext currentContext];
      listenerID = [v7 listenerID];
      *buf = 138412802;
      v47 = dsCopy;
      v48 = 2048;
      v49 = v6;
      v50 = 2112;
      v51 = listenerID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Request to load chat with handleIDs array %@ of count %lu from %@", buf, 0x20u);
    }
  }

  if (dsCopy && [dsCopy count])
  {
    v37 = [[NSSet alloc] initWithArray:dsCopy];
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
        participants = [v15 participants];
        v17 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(participants, "count")}];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10000ED4C;
        v38[3] = &unk_100081940;
        v18 = v17;
        v39 = v18;
        [participants enumerateObjectsUsingBlock:v38];
        v19 = [v18 isEqualToSet:v37];
        v20 = v19;
        if (v19)
        {
          dictionaryRepresentationIncludingLastMessage = [v15 dictionaryRepresentationIncludingLastMessage];

          [v15 updateIsBlackholed:0];
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              chatIdentifier = [v15 chatIdentifier];
              *buf = v33;
              v47 = chatIdentifier;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Concluded search. Found existing chat (%@) with target participant list.", buf, 0xCu);
            }
          }

          participants2 = [v15 participants];
          v25 = [participants2 count] == 1;

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

          v10 = dictionaryRepresentationIncludingLastMessage;
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
    broadcasterForChatListeners = [v29 broadcasterForChatListeners];
    [broadcasterForChatListeners previouslyBlackholedChatLoadedWithHandleIDs:dsCopy chat:v10];

    if (v10)
    {
      v44 = v10;
      v31 = [NSArray arrayWithObjects:&v44 count:1];
      replyCopy[2](replyCopy, v31);
    }

    else
    {
      (replyCopy[2])();
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

    replyCopy[2](replyCopy, &__NSArray0__struct);
  }
}

- (void)sendStickerAtPath:(id)path toChatID:(id)d forNBubbleFromTheBottom:(int64_t)bottom atX:(id)x atY:(id)y scale:(id)scale balloonWidth:(id)width
{
  pathCopy = path;
  dCopy = d;
  xCopy = x;
  yCopy = y;
  scaleCopy = scale;
  widthCopy = width;
  v17 = +[IMDAccountController sharedAccountController];
  v58 = [v17 anySessionForServiceName:IMServiceNameiMessage];

  v18 = +[IMDChatRegistry sharedInstance];
  v60 = dCopy;
  v19 = [v18 existingChatWithGUID:dCopy];

  v20 = +[NSMutableArray array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v57 = v19;
  participants = [v19 participants];
  v22 = [participants countByEnumeratingWithState:&v65 objects:v74 count:16];
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
          objc_enumerationMutation(participants);
        }

        v26 = [*(*(&v65 + 1) + 8 * v25) ID];
        [v20 addObject:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [participants countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v23);
  }

  v27 = +[IMDMessageStore sharedInstance];
  v73 = IMServiceNameiMessage;
  v28 = [NSArray arrayWithObjects:&v73 count:1];
  v29 = [v27 itemsWithHandles:v20 onServices:v28 messageGUID:0 limit:20];

  v30 = [v29 __imArrayByFilteringWithBlock:&stru_100081980];

  v56 = v30;
  if ([v30 count] <= bottom)
  {
    [v30 lastObject];
  }

  else
  {
    [v30 objectAtIndex:{objc_msgSend(v30, "count") - bottom}];
  }
  v31 = ;
  v61 = pathCopy;
  v32 = [NSURL fileURLWithPath:pathCopy];
  v33 = +[IMDFileTransferCenter sharedInstance];
  v34 = [v33 createNewOutgoingTransferWithLocalFileURL:v32];

  v35 = +[IMDFileTransferCenter sharedInstance];
  v36 = [v35 transferForGUID:v34];

  path = [v32 path];
  v38 = IMSharedHelperMD5HashOfFileAtPath();

  v52 = v38;
  v72[0] = v38;
  v71[0] = IMStickerUserInfoStickerHashKey;
  v71[1] = IMStickerUserInfoStickerGUIDKey;
  v54 = v32;
  lastPathComponent = [v32 lastPathComponent];
  v72[1] = lastPathComponent;
  v72[2] = @"0";
  v71[2] = IMStickerUserInfoAssociatedLayoutIntentKey;
  v71[3] = IMStickerUserInfoLayoutIntentKey;
  v72[3] = @"0";
  v72[4] = widthCopy;
  v71[4] = IMStickerUserInfoParentPreviewWidthKey;
  v71[5] = IMStickerUserInfoRotationKey;
  v72[5] = @"0.0";
  v72[6] = scaleCopy;
  v71[6] = IMStickerUserInfoScaleKey;
  v71[7] = IMStickerUserInfoXScalarKey;
  v71[8] = IMStickerUserInfoYScalarKey;
  v72[7] = xCopy;
  v72[8] = yCopy;
  v40 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:9];
  [v36 setStickerUserInfo:v40];

  v53 = v36;
  [v36 setIsSticker:1];
  v70 = v34;
  v41 = [NSArray arrayWithObjects:&v70 count:1];
  v42 = [NSAttributedString __im_attributedStringWithFileTransfers:v41];

  __im_attributedStringByAssigningMessagePartNumbers = [v42 __im_attributedStringByAssigningMessagePartNumbers];
  v44 = [IMAssociatedMessageItem alloc];
  v45 = +[NSDate date];
  v59 = xCopy;
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
  guid = [v31 guid];
  v55 = v31;
  threadIdentifier = [v31 threadIdentifier];
  v50 = [v44 initWithSender:0 time:v45 body:__im_attributedStringByAssigningMessagePartNumbers attributes:0 fileTransferGUIDs:v46 flags:5 error:0 guid:v47 associatedMessageGUID:guid associatedMessageType:1000 associatedMessageRange:0 messageSummaryInfo:0x7FFFFFFFFFFFFFFFLL threadIdentifier:{0, threadIdentifier}];

  if (v34)
  {
  }

  chatIdentifier = [v57 chatIdentifier];
  [v58 sendMessage:v50 toChatID:v60 identifier:chatIdentifier style:{objc_msgSend(v57, "style")}];
}

- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:accountCopy];

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
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:accountCopy];
  service = [v19 service];
  internalName = [service internalName];
  v15 = [v17 anySessionForServiceName:internalName];

  if (v15)
  {
LABEL_7:
    [v15 sendReadReceiptForMessage:messageCopy toChatID:dCopy identifier:identifierCopy style:styleCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:accountCopy];

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
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:accountCopy];
  service = [v19 service];
  internalName = [service internalName];
  v15 = [v17 anySessionForServiceName:internalName];

  if (v15)
  {
LABEL_7:
    [v15 sendPlayedReceiptForMessage:messageCopy toChatID:dCopy identifier:identifierCopy style:styleCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:accountCopy];

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
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:accountCopy];
  service = [v19 service];
  internalName = [service internalName];
  v15 = [v17 anySessionForServiceName:internalName];

  if (v15)
  {
LABEL_7:
    [v15 sendSavedReceiptForMessage:messageCopy toChatID:dCopy identifier:identifierCopy style:styleCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  actionCopy = action;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 anySessionForServiceName:IMServiceNameiMessage];

  [v8 sendSyndicationAction:actionCopy toChatsWithIdentifiers:identifiersCopy];
}

- (void)sendUpdatedCollaborationMetadata:(id)metadata toChatsWithIdentifiers:(id)identifiers forMessageGUID:(id)d
{
  dCopy = d;
  identifiersCopy = identifiers;
  metadataCopy = metadata;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 anySessionForServiceName:IMServiceNameiMessage];

  [v11 sendUpdatedCollaborationMetadata:metadataCopy toChatsWithIdentifiers:identifiersCopy forMessageGUID:dCopy];
}

- (void)sendBalloonPayload:(id)payload attachments:(id)attachments withMessageGUID:(id)d bundleID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  attachmentsCopy = attachments;
  payloadCopy = payload;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 anySessionForServiceName:IMServiceNameiMessage];

  [v14 sendBalloonPayload:payloadCopy attachments:attachmentsCopy withMessageGUID:dCopy bundleID:iDCopy];
}

- (void)updateBalloonPayload:(id)payload attachments:(id)attachments bundleID:(id)d forMessageGUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  attachmentsCopy = attachments;
  payloadCopy = payload;
  v13 = +[IMDMessageStore sharedInstance];
  v17 = [v13 messageWithGUID:iDCopy];

  v14 = +[IMDAccountController sharedAccountController];
  service = [v17 service];
  v16 = [v14 anySessionForServiceName:service];

  [v16 updateBalloonPayload:payloadCopy attachments:attachmentsCopy bundleID:dCopy forMessage:v17];
}

- (void)setProperties:(id)properties ofParticipant:(id)participant inChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  propertiesCopy = properties;
  participantCopy = participant;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  v16 = +[IMDAccountController sharedAccountController];
  v17 = [v16 sessionForAccount:accountCopy];

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
      v28 = accountCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v19 = +[IMDAccountController sharedAccountController];
  v20 = +[IMDAccountController sharedAccountController];
  v21 = [v20 accountForAccountID:accountCopy];
  service = [v21 service];
  internalName = [service internalName];
  v17 = [v19 anySessionForServiceName:internalName];

  if (v17)
  {
LABEL_7:
    [v17 setProperties:propertiesCopy ofParticipant:participantCopy inChatID:dCopy identifier:identifierCopy style:styleCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = accountCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendCommand:(id)command withProperties:(id)properties toPerson:(id)person account:(id)account toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  commandCopy = command;
  propertiesCopy = properties;
  personCopy = person;
  accountCopy = account;
  dCopy = d;
  identifierCopy = identifier;
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 sessionForAccount:accountCopy];

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
      v30 = accountCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v21 = +[IMDAccountController sharedAccountController];
  v22 = +[IMDAccountController sharedAccountController];
  v23 = [v22 accountForAccountID:accountCopy];
  service = [v23 service];
  internalName = [service internalName];
  v19 = [v21 anySessionForServiceName:internalName];

  if (v19)
  {
LABEL_7:
    [v19 sendCommand:commandCopy withProperties:propertiesCopy toPerson:personCopy toChatID:dCopy identifier:identifierCopy style:{style, commandCopy}];
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = accountCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendCommand:(id)command withProperties:(id)properties toPerson:(id)person account:(id)account
{
  commandCopy = command;
  propertiesCopy = properties;
  personCopy = person;
  accountCopy = account;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:accountCopy];

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
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:accountCopy];
  service = [v18 service];
  internalName = [service internalName];
  v14 = [v16 anySessionForServiceName:internalName];

  if (v14)
  {
LABEL_7:
    [v14 sendCommand:commandCopy withProperties:propertiesCopy toPerson:personCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)stopTranscriptSharingWithChat:(id)chat
{
  chatCopy = chat;
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
  v6 = [v5 allExistingChatsWithIdentifier:chatCopy];

  v7 = +[IMDChorosController sharedController];
  firstObject = [v6 firstObject];
  [v7 stopTranscriptSharingWithChat:firstObject];
}

- (void)fetchCommonCapabilities:(id)capabilities fromChatWithGUID:(id)d reply:(id)reply
{
  capabilitiesCopy = capabilities;
  replyCopy = reply;
  dCopy = d;
  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatWithGUID:dCopy];

  if (v11)
  {
    participants = [v11 participants];
    v13 = [participants arrayByApplyingSelector:"ID"];

    lastAddressedLocalHandle = [v11 lastAddressedLocalHandle];
    if ([lastAddressedLocalHandle length])
    {
      v15 = [v13 arrayByAddingObject:lastAddressedLocalHandle];

      v13 = v15;
    }

    _URIsFromIDs = [v13 _URIsFromIDs];

    __im_canonicalIDSIDsFromAddresses = [_URIsFromIDs __im_canonicalIDSIDsFromAddresses];
    v18 = IMServiceNameForCanonicalIDSAddresses();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100010F54;
    v19[3] = &unk_1000819A8;
    v20 = replyCopy;
    [IMIDSUtilities findCommonCapabilitiesAcrossRecipients:_URIsFromIDs serviceName:v18 capsToCheck:capabilitiesCopy completion:v19];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }
}

- (void)handleTrustKitDecisioningForItems:(id)items chat:(id)chat reply:(id)reply
{
  itemsCopy = items;
  chatCopy = chat;
  replyCopy = reply;
  v11 = +[IMFeatureFlags sharedFeatureFlags];
  isTrustKitRCSSpamReportingEnabled = [v11 isTrustKitRCSSpamReportingEnabled];

  if ((isTrustKitRCSSpamReportingEnabled & 1) != 0 && [itemsCopy count])
  {
    v13 = [itemsCopy mutableCopy];
    firstObject = [v13 firstObject];
    v24 = +[IMDTrustKitDecisioningManager sharedManager];
    sender = [firstObject sender];
    serviceName = [chatCopy serviceName];
    rcsAdvisedAction = [firstObject rcsAdvisedAction];
    body = [firstObject body];
    countryCode = [firstObject countryCode];
    messageContainsOneTimeCode = [firstObject messageContainsOneTimeCode];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100011198;
    v25[3] = &unk_1000819F8;
    v26 = firstObject;
    v27 = chatCopy;
    selfCopy = self;
    v30 = replyCopy;
    v28 = v13;
    v20 = v13;
    v18 = firstObject;
    LOBYTE(v19) = messageContainsOneTimeCode;
    [v24 requestDecisionForSender:sender service:serviceName trustIndicator:rcsAdvisedAction messageBody:body countryCode:countryCode requestReason:1 containsOneTimeCode:v19 completionHandler:v25];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 1);
  }
}

- (void)queryTrustKitDecisioningIfNeededForChatGUID:(id)d items:(id)items reply:(id)reply
{
  dCopy = d;
  itemsCopy = items;
  replyCopy = reply;
  v11 = +[IMFeatureFlags sharedFeatureFlags];
  isTrustKitRCSSpamReportingEnabled = [v11 isTrustKitRCSSpamReportingEnabled];

  if (isTrustKitRCSSpamReportingEnabled)
  {
    v13 = +[IMDTrustKitDecisioningManager sharedManager];
    v14 = +[IMDChatRegistry sharedInstance];
    v15 = [v14 existingChatWithGUID:dCopy];

    lastMessage = [v15 lastMessage];
    sender = [lastMessage sender];
    if ([v13 shouldSkipTrustKitDecisioningForChat:v15 sender:sender])
    {
    }

    else
    {
      v18 = [itemsCopy count];

      if (v18)
      {
        v19 = +[IMDMessageStore sharedInstance];
        v20 = [v19 messagesWithGUIDs:itemsCopy];

        [(IMDaemonChatRequestHandler *)self handleTrustKitDecisioningForItems:v20 chat:v15 reply:replyCopy];
LABEL_18:

        goto LABEL_19;
      }
    }

    isJunkFilteringEnabled = [v13 isJunkFilteringEnabled];
    v22 = IMOSLoggingEnabled();
    if (isJunkFilteringEnabled)
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

      replyCopy[2](replyCopy, [v15 isFiltered]);
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

      replyCopy[2](replyCopy, 1);
    }

    goto LABEL_18;
  }

  replyCopy[2](replyCopy, 1);
LABEL_19:
}

- (void)relayPriorityMessageFor:(id)for
{
  v4 = sub_1000541B4();
  selfCopy = self;
  _sSo26IMDaemonChatRequestHandlerC7imagentE20relayPriorityMessage3forySaySSG_tF_0(v4);
}

- (void)fetchCollaborationNoticesForChatGUIDs:(id)ds reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_1000541B4();
  _Block_copy(v5);
  selfCopy = self;
  sub_10003E83C(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)dismissNotice:(id)notice
{
  noticeCopy = notice;
  selfCopy = self;
  sub_10003EAD0(noticeCopy, "Handling CollaborationNotice dismiss request for notice: %@", &selRef_dismissNotice_);
}

- (void)updateNotice:(id)notice
{
  noticeCopy = notice;
  selfCopy = self;
  sub_10003EAD0(noticeCopy, "Updating CollaborationNotice: %@", &selRef_updateNotice_);
}

- (void)loadChatsWithPinningIdentifier:(id)identifier reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_100054164();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_100047110(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)loadAnyChatsContainingHandleIDsIn:(id)in reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_1000541B4();
  _Block_copy(v5);
  selfCopy = self;
  sub_1000473A8(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)closeSessionChatID:(id)d identifier:(id)identifier didDeleteConversation:(BOOL)conversation style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  conversationCopy = conversation;
  v10 = sub_100054164();
  v12 = v11;
  v13 = sub_100054164();
  v15 = v14;
  v16 = sub_100054164();
  v18 = v17;
  selfCopy = self;
  _sSo26IMDaemonChatRequestHandlerC7imagentE012closeSessionB2ID_10identifier21didDeleteConversation5style7accountySS_SSSbSo11IMChatStyleVSStF_0(v10, v12, v13, v15, conversationCopy, styleCopy, v16, v18);
}

- (void)acceptChatContainingMessageWithGUID:(id)d
{
  v4 = sub_100054164();
  v6 = v5;
  selfCopy = self;
  _sSo26IMDaemonChatRequestHandlerC7imagentE06acceptB17ContainingMessage8withGUIDySS_tF_0(v4, v6);
}

@end