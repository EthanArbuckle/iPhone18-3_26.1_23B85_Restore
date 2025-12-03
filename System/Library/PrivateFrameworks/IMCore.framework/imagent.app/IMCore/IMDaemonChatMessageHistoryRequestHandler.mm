@interface IMDaemonChatMessageHistoryRequestHandler
- (id)_serializedFileTransfersForItems:(id)items;
- (void)_populateAssociatedMessagesIfNeeded:(id)needed;
- (void)_populateParentMessagesIfNeeded:(id)needed;
- (void)_updateLastMessageTimeStampForChat:(id)chat;
- (void)cleanupAttachments;
- (void)deleteMessageWithGUIDs:(id)ds queryID:(id)d;
- (void)fetchEarliestMessageDateForChatsWithGUIDs:(id)ds completion:(id)completion;
- (void)fetchIncomingPendingMessagesOverSatelliteForChatsWithIDs:(id)ds services:(id)services;
- (void)loadAttachmentsForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services reply:(id)reply;
- (void)loadFrequentRepliesForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services limit:(int64_t)limit reply:(id)reply;
- (void)loadHistoryForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services limit:(int64_t)limit beforeGUID:(id)iD afterGUID:(id)uID threadIdentifier:(id)self0 reply:(id)self1;
- (void)loadHistoryForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services limit:(int64_t)limit beforeGUID:(id)d afterGUID:(id)iD threadIdentifier:(id)identifier chatID:(id)self0 queryID:(id)self1;
- (void)loadMessageItemWithGUID:(id)d queryID:(id)iD;
- (void)loadMessageWithGUID:(id)d queryID:(id)iD;
- (void)loadPagedHistoryAroundMessageWithGUID:(id)d chatGUID:(id)iD chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services numberOfMessagesBefore:(int64_t)before numberOfMessagesAfter:(int64_t)after threadIdentifier:(id)self0 reply:(id)self1;
- (void)loadPagedHistoryForGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style onServices:(id)services numberOfMessagesBefore:(int64_t)before numberOfMessagesAfter:(int64_t)after threadIdentifier:(id)identifier chatID:(id)self0 queryID:(id)self1;
- (void)loadRecoverableMessagesMetadataWithQueryID:(id)d;
- (void)loadUncachedAttachmentCountForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services reply:(id)reply;
- (void)loadUnreadForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services limit:(int64_t)limit fallbackGUID:(id)d chatId:(id)id queryID:(id)iD;
- (void)loadUnreadHistoryForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services limit:(int64_t)limit fallbackMessageGUID:(id)iD reply:(id)reply;
- (void)moveMessagesInChatsWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date queryID:(id)d;
- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date queryID:(id)d;
- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds queryID:(id)d;
- (void)purgeAttachmentsForChatGUID:(id)d;
- (void)recoverMessagesWithChatGUIDs:(id)ds queryID:(id)d;
- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries;
- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority;
- (void)updatePluginMessageWithGUID:(id)d newPayloadData:(id)data completion:(id)completion;
- (void)updateUnformattedID:(id)d forBuddyID:(id)iD onService:(id)service;
@end

@implementation IMDaemonChatMessageHistoryRequestHandler

- (void)loadMessageWithGUID:(id)d queryID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = +[IMDClientRequestContext currentContext];
      listenerID = [v8 listenerID];
      v20 = 138412546;
      v21 = listenerID;
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Request from %@ to load message with guid: %@", &v20, 0x16u);
    }
  }

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 messageWithGUID:dCopy];

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 chatForMessageGUID:dCopy];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "   Resulting message: %@", &v20, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "      Resulting chat: %@", &v20, 0xCu);
    }
  }

  v16 = +[IMDClientRequestContext currentContext];
  replyProxy = [v16 replyProxy];
  guid = [v13 guid];
  v19 = IMSingleObjectArray();
  [replyProxy messageQuery:iDCopy finishedWithResult:v11 chatGUIDs:v19];
}

- (void)loadMessageItemWithGUID:(id)d queryID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = +[IMDClientRequestContext currentContext];
      listenerID = [v8 listenerID];
      v20 = 138412546;
      v21 = listenerID;
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Request from %@ to load message item with guid: %@", &v20, 0x16u);
    }
  }

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 messageWithGUID:dCopy];

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 chatForMessageGUID:dCopy];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "   Resulting message: %@", &v20, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "      Resulting chat: %@", &v20, 0xCu);
    }
  }

  v16 = +[IMDClientRequestContext currentContext];
  replyProxy = [v16 replyProxy];

  guid = [v13 guid];
  v19 = IMSingleObjectArray();
  [replyProxy messageItemQuery:iDCopy finishedWithResult:v11 chatGUIDs:v19];
}

- (void)loadHistoryForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services limit:(int64_t)limit beforeGUID:(id)iD afterGUID:(id)uID threadIdentifier:(id)self0 reply:(id)self1
{
  styleCopy = style;
  dCopy = d;
  identifiersCopy = identifiers;
  servicesCopy = services;
  iDCopy = iD;
  uIDCopy = uID;
  identifierCopy = identifier;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = +[IMDClientRequestContext currentContext];
      listenerID = [v20 listenerID];
      *buf = 138413826;
      *v52 = listenerID;
      *&v52[8] = 2112;
      *&v52[10] = identifiersCopy;
      v53 = 2112;
      limitCopy2 = servicesCopy;
      v55 = 1024;
      limitCopy = limit;
      v57 = 2112;
      v58 = iDCopy;
      v59 = 2112;
      v60 = uIDCopy;
      v61 = 2112;
      v62 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Request from %@ to load messages with chat ID: %@  service: %@  limit: %d  beforeGUID: %@ aferGUID: %@ threadIdentifier: %@", buf, 0x44u);
    }
  }

  if ([identifiersCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v22 = +[IMDMessageStore sharedInstance];
    v23 = v22;
    if (styleCopy == 45)
    {
      [v22 itemsWithHandles:identifiersCopy onServices:servicesCopy messageGUID:iDCopy threadIdentifier:identifierCopy limit:limit];
    }

    else
    {
      [v22 itemsWithRoomNames:identifiersCopy onServices:servicesCopy messageGUID:iDCopy threadIdentifier:identifierCopy limit:limit];
    }
    v25 = ;

    if ([v25 count] == limit)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v26 = v25;
      v27 = 0;
      v28 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v28)
      {
        v29 = *v47;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v47 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v27 += [*(*(&v46 + 1) + 8 * i) isAssociatedMessageItem] ^ 1;
          }

          v28 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v28);
      }

      if (v27 >= limit / 2)
      {
        v25 = v26;
      }

      else
      {
        v31 = styleCopy == 45;
        v32 = +[IMDMessageStore sharedInstance];
        v33 = v32;
        if (v31)
        {
          [v32 itemsWithHandles:identifiersCopy onServices:servicesCopy messageGUID:iDCopy threadIdentifier:identifierCopy limit:2 * limit];
        }

        else
        {
          [v32 itemsWithRoomNames:identifiersCopy onServices:servicesCopy messageGUID:iDCopy threadIdentifier:identifierCopy limit:2 * limit];
        }
        v25 = ;

        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 134218496;
            *v52 = 2 * limit;
            *&v52[8] = 2048;
            *&v52[10] = v27;
            v53 = 2048;
            limitCopy2 = limit;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "   Requeried for %ld messages since we only loaded %ld of %ld top level messages", buf, 0x20u);
          }
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [v25 count];
        v37 = [v25 arrayByApplyingSelector:"guid"];
        *buf = 67109378;
        *v52 = v36;
        *&v52[4] = 2112;
        *&v52[6] = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "   Resulting messages (%d): %@", buf, 0x12u);
      }
    }

    v38 = +[IMDMessageStore sharedInstance];
    [v38 loadConsumedSessionPayloadsForItems:v25];

    v39 = IMCreateSerializedItemsFromArray();
    v40 = [(IMDaemonChatMessageHistoryRequestHandler *)self _serializedFileTransfersForItems:v25];
    replyCopy[2](replyCopy, v39, v40);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Request to load history with empty IDs and Services", buf, 2u);
      }
    }

    replyCopy[2](replyCopy, &__NSArray0__struct, &__NSArray0__struct);
  }
}

- (void)loadHistoryForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services limit:(int64_t)limit beforeGUID:(id)d afterGUID:(id)iD threadIdentifier:(id)identifier chatID:(id)self0 queryID:(id)self1
{
  styleCopy = style;
  dsCopy = ds;
  servicesCopy = services;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  chatIDCopy = chatID;
  queryIDCopy = queryID;
  v19 = +[IMDClientRequestContext currentContext];
  replyProxy = [v19 replyProxy];

  v21 = +[IMDClientRequestContext currentContext];
  listenerID = [v21 listenerID];

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = +[IMDClientRequestContext currentContext];
      listenerID2 = [v24 listenerID];
      *buf = 138414082;
      v44 = listenerID2;
      v45 = 2112;
      v46 = dsCopy;
      v47 = 2112;
      v48 = servicesCopy;
      v49 = 1024;
      limitCopy = limit;
      v51 = 2112;
      v52 = dCopy;
      v53 = 2112;
      v54 = iDCopy;
      v55 = 2112;
      v56 = identifierCopy;
      v57 = 2112;
      v58 = queryIDCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Legacy request from %@ to load messages with chat ID: %@  service: %@  limit: %d  beforeGUID: %@ aferGUID: %@ threadIdentifier: %@ queryID: %@", buf, 0x4Eu);
    }
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10002CD10;
  v36[3] = &unk_100082070;
  v37 = replyProxy;
  v38 = queryIDCopy;
  v39 = chatIDCopy;
  v40 = servicesCopy;
  v41 = listenerID;
  limitCopy2 = limit;
  v26 = listenerID;
  v27 = servicesCopy;
  v28 = chatIDCopy;
  v29 = queryIDCopy;
  v30 = replyProxy;
  [(IMDaemonChatMessageHistoryRequestHandler *)self loadHistoryForChatWithGUID:v28 chatIdentifiers:dsCopy style:styleCopy services:v27 limit:limit beforeGUID:dCopy afterGUID:iDCopy threadIdentifier:identifierCopy reply:v36];
}

- (void)loadPagedHistoryAroundMessageWithGUID:(id)d chatGUID:(id)iD chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services numberOfMessagesBefore:(int64_t)before numberOfMessagesAfter:(int64_t)after threadIdentifier:(id)self0 reply:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  identifiersCopy = identifiers;
  servicesCopy = services;
  identifierCopy = identifier;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = +[IMDClientRequestContext currentContext];
      listenerID = [v21 listenerID];
      *buf = 138413570;
      v32 = listenerID;
      v33 = 2112;
      v34 = identifiersCopy;
      v35 = 2112;
      v36 = dCopy;
      v37 = 2112;
      v38 = servicesCopy;
      v39 = 1024;
      beforeCopy = before;
      v41 = 1024;
      afterCopy = after;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Request from %@ to load paged history with chat ID: %@  for messageGUID: %@ service: %@  numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x36u);
    }
  }

  if ([identifiersCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    buf[0] = 1;
    v30 = 1;
    v23 = +[IMDMessageStore sharedInstance];
    v24 = [v23 itemsWithHandles:identifiersCopy onServices:servicesCopy messageGUID:dCopy numberOfMessagesBefore:before numberOfMessagesAfter:after threadIdentifier:identifierCopy hasMessagesBefore:buf hasMessagesAfter:&v30];

    v25 = +[IMDMessageStore sharedInstance];
    [v25 loadConsumedSessionPayloadsForItems:v24];

    v26 = IMCreateSerializedItemsFromArray();
    v27 = [(IMDaemonChatMessageHistoryRequestHandler *)self _serializedFileTransfersForItems:v24];
    (*(replyCopy + 2))(replyCopy, v26, v27, buf[0], v30);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, &__NSArray0__struct, &__NSArray0__struct, 0, 0);
  }
}

- (void)loadPagedHistoryForGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style onServices:(id)services numberOfMessagesBefore:(int64_t)before numberOfMessagesAfter:(int64_t)after threadIdentifier:(id)identifier chatID:(id)self0 queryID:(id)self1
{
  styleCopy = style;
  dCopy = d;
  identifiersCopy = identifiers;
  servicesCopy = services;
  identifierCopy = identifier;
  iDCopy = iD;
  queryIDCopy = queryID;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = +[IMDClientRequestContext currentContext];
      listenerID = [v21 listenerID];
      *buf = 138413570;
      v40 = listenerID;
      v41 = 2112;
      v42 = identifiersCopy;
      v43 = 2112;
      v44 = dCopy;
      v45 = 2112;
      v46 = servicesCopy;
      v47 = 1024;
      beforeCopy = before;
      v49 = 1024;
      afterCopy = after;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Legacy request from %@ to load paged history with chat ID: %@  for messageGUID: %@ service: %@  numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x36u);
    }
  }

  v23 = +[IMDClientRequestContext currentContext];
  replyProxy = [v23 replyProxy];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10002D364;
  v32[3] = &unk_100082098;
  v33 = replyProxy;
  v34 = queryIDCopy;
  v35 = iDCopy;
  v36 = servicesCopy;
  beforeCopy2 = before;
  afterCopy2 = after;
  v25 = servicesCopy;
  v26 = iDCopy;
  v27 = queryIDCopy;
  v28 = replyProxy;
  [(IMDaemonChatMessageHistoryRequestHandler *)self loadPagedHistoryAroundMessageWithGUID:dCopy chatGUID:v26 chatIdentifiers:identifiersCopy style:styleCopy services:v25 numberOfMessagesBefore:before numberOfMessagesAfter:after threadIdentifier:identifierCopy reply:v32];
}

- (void)loadAttachmentsForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services reply:(id)reply
{
  styleCopy = style;
  dCopy = d;
  identifiersCopy = identifiers;
  servicesCopy = services;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = +[IMDClientRequestContext currentContext];
      listenerID = [v16 listenerID];
      v24 = 138412802;
      v25 = listenerID;
      v26 = 2112;
      v27 = identifiersCopy;
      v28 = 2112;
      v29 = servicesCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Request from %@ to load media attachment filenames with chat ID: %@  service: %@", &v24, 0x20u);
    }
  }

  if ([identifiersCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v18 = +[IMDMessageStore sharedInstance];
    v19 = v18;
    if (styleCopy == 45)
    {
      [v18 attachmentsWithHandles:identifiersCopy onServices:servicesCopy];
    }

    else
    {
      [v18 attachmentsWithRoomNames:identifiersCopy onServices:servicesCopy];
    }
    v21 = ;

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v21 count];
        v24 = 67109120;
        LODWORD(v25) = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "   Resulting attachments (%d)", &v24, 8u);
      }
    }

    replyCopy[2](replyCopy, v21);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v24 = 138412546;
        v25 = identifiersCopy;
        v26 = 2112;
        v27 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, " No IDs: %@ or serviceNames: %@, empty results being returned", &v24, 0x16u);
      }
    }

    replyCopy[2](replyCopy, &__NSArray0__struct);
  }
}

- (id)_serializedFileTransfersForItems:(id)items
{
  itemsCopy = items;
  v4 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = +[IMDFileTransferCenter sharedInstance];
        v12 = [v10 copyFileTransferDictionaryRepresentationsFromCenter:v11];

        [v4 addObjectsFromArray:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (void)deleteMessageWithGUIDs:(id)ds queryID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = +[IMDClientRequestContext currentContext];
      listenerID = [v8 listenerID];
      *buf = 138412546;
      v30 = listenerID;
      v31 = 2112;
      v32 = dsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Request from %@ to delete messages with guids: %@", buf, 0x16u);
    }
  }

  v10 = +[IMDMessageStore sharedInstance];
  firstObject = [dsCopy firstObject];
  v12 = [v10 chatForMessageGUID:firstObject];

  serviceName = [v12 serviceName];
  LODWORD(firstObject) = [serviceName isEqualToString:IMServiceNameSMS];

  if (firstObject)
  {
    IMGreenTeaMessageDeleteLog();
  }

  v14 = +[IMDMessageStore sharedInstance];
  v15 = [v14 deleteMessageGUIDs:dsCopy];

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "   deleted messages: %@", buf, 0xCu);
    }
  }

  if ([v15 count])
  {
    serviceName2 = [v12 serviceName];
    v18 = [serviceName2 isEqualToString:IMServiceNameSMS];

    v19 = +[IMDAccountController sharedInstance];
    v20 = v19;
    v21 = &IMServiceNameiMessage;
    if (v18)
    {
      v21 = &IMServiceNameSMS;
    }

    v22 = [v19 anySessionForServiceName:*v21];

    v27 = @"message";
    v28 = dsCopy;
    v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    guid = [v12 guid];
    [v22 sendDeleteCommand:v23 forChatGUID:guid];

    v25 = +[IMDBroadcastController sharedProvider];
    v26 = [v25 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v12, "isBlackholed")}];
    [v26 historicalMessageGUIDsDeleted:v15 chatGUIDs:0 queryID:dCopy];
  }
}

- (void)cleanupAttachments
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[IMDClientRequestContext currentContext];
    listenerID = [v3 listenerID];
    v6 = 138412290;
    v7 = listenerID;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request from %@ to clean up attachments", &v6, 0xCu);
  }

  v5 = +[IMDMessageStore sharedInstance];
  [v5 cleanseAttachments];
}

- (void)loadFrequentRepliesForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services limit:(int64_t)limit reply:(id)reply
{
  dCopy = d;
  identifiersCopy = identifiers;
  servicesCopy = services;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = +[IMDClientRequestContext currentContext];
      listenerID = [v17 listenerID];
      v24 = 138413058;
      *v25 = listenerID;
      *&v25[8] = 2112;
      *&v25[10] = identifiersCopy;
      v26 = 2112;
      v27 = servicesCopy;
      v28 = 1024;
      limitCopy = limit;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Request from %@ to find frequent replies with chat ID: %@  service: %@  limit: %d", &v24, 0x26u);
    }
  }

  if ([identifiersCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v19 = +[IMDMessageStore sharedInstance];
    v20 = [v19 frequentRepliesForForChatIdentifiers:identifiersCopy onServices:servicesCopy limit:limit];

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v20 count];
        v24 = 67109378;
        *v25 = v22;
        *&v25[4] = 2112;
        *&v25[6] = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "   Resulting frequent replies (%d): %@", &v24, 0x12u);
      }
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = &__NSArray0__struct;
    }

    replyCopy[2](replyCopy, v23);
  }
}

- (void)loadUnreadHistoryForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services limit:(int64_t)limit fallbackMessageGUID:(id)iD reply:(id)reply
{
  styleCopy = style;
  dCopy = d;
  identifiersCopy = identifiers;
  servicesCopy = services;
  iDCopy = iD;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = +[IMDClientRequestContext currentContext];
      listenerID = [v20 listenerID];
      *buf = 138413058;
      v35 = listenerID;
      v36 = 2112;
      v37 = identifiersCopy;
      v38 = 2112;
      v39 = servicesCopy;
      v40 = 1024;
      limitCopy = limit;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Request from %@ to load latest unread messages with chat ID: %@  services: %@  limit: %d", buf, 0x26u);
    }
  }

  if ([identifiersCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v22 = styleCopy == 45;
    v23 = +[IMDMessageStore sharedInstance];
    v24 = v23;
    if (v22)
    {
      [v23 unreadMessagesWithHandles:identifiersCopy onServices:servicesCopy limit:limit fallbackGUID:iDCopy];
    }

    else
    {
      [v23 unreadMessagesWithRoomNames:identifiersCopy onServices:servicesCopy limit:limit fallbackGUID:iDCopy];
    }
    v25 = ;
    v26 = [v25 mutableCopy];

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v26 count];
        *buf = 67109120;
        LODWORD(v35) = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "  Unread query Resulting messages (%d)", buf, 8u);
      }
    }

    [(IMDaemonChatMessageHistoryRequestHandler *)self _populateParentMessagesIfNeeded:v26];
    [(IMDaemonChatMessageHistoryRequestHandler *)self _populateAssociatedMessagesIfNeeded:v26];
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v26 count];
        *buf = 67109120;
        LODWORD(v35) = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "   Resulting messages (%d)", buf, 8u);
      }
    }

    v31 = IMCreateSerializedItemsFromArray();
    v32 = [(IMDaemonChatMessageHistoryRequestHandler *)self _serializedFileTransfersForItems:v26];
    replyCopy[2](replyCopy, v31, v32);
  }

  else
  {
    replyCopy[2](replyCopy, &__NSArray0__struct, &__NSArray0__struct);
  }
}

- (void)loadUnreadForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services limit:(int64_t)limit fallbackGUID:(id)d chatId:(id)id queryID:(id)iD
{
  styleCopy = style;
  servicesCopy = services;
  idCopy = id;
  iDCopy = iD;
  dCopy = d;
  dsCopy = ds;
  v19 = +[IMDClientRequestContext currentContext];
  replyProxy = [v19 replyProxy];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002F634;
  v26[3] = &unk_100082138;
  v27 = replyProxy;
  v28 = iDCopy;
  v29 = idCopy;
  v30 = servicesCopy;
  limitCopy = limit;
  v21 = servicesCopy;
  v22 = idCopy;
  v23 = iDCopy;
  v24 = replyProxy;
  [(IMDaemonChatMessageHistoryRequestHandler *)self loadUnreadHistoryForChatWithGUID:v22 chatIdentifiers:dsCopy style:styleCopy services:v21 limit:limit fallbackMessageGUID:dCopy reply:v26];
}

- (void)_populateParentMessagesIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = [neededCopy __imArrayByApplyingBlock:&stru_100082178];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "allUnreadGUIDs %@", buf, 0xCu);
    }
  }

  v6 = [neededCopy __imArrayByFilteringWithBlock:&stru_1000821B8];
  if ([v6 count] && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 arrayByApplyingSelector:"guid"];
      *buf = 138412290;
      v43 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Resulting ack or ack sticker guids %@", buf, 0xCu);
    }
  }

  v9 = objc_alloc_init(NSMutableSet);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v11)
  {
    v13 = *v38;
    *&v12 = 138412546;
    v32 = v12;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        associatedMessageGUID = [v15 associatedMessageGUID];
        v17 = IMAssociatedMessageDecodeGUID();

        if (v17)
        {
          v18 = [v4 containsObject:v17];
          v19 = IMOSLoggingEnabled();
          if (v18)
          {
            if (!v19)
            {
              goto LABEL_30;
            }

            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              guid = [v15 guid];
              *buf = v32;
              v43 = v17;
              v44 = 2112;
              v45 = guid;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "associateMessageGUID %@ for message guid %@ is already in unread list. Not adding again", buf, 0x16u);
            }

            goto LABEL_20;
          }

          if (v19)
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v43 = v17;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Adding associateMessageGUID %@", buf, 0xCu);
            }
          }

          [v9 addObject:v17];
        }

        else if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            associatedMessageGUID2 = [v15 associatedMessageGUID];
            *buf = 138412290;
            v43 = associatedMessageGUID2;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "History [item associatedMessageGUID] is nil %@ ", buf, 0xCu);
          }

LABEL_20:
        }

LABEL_30:
      }

      v11 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v11);
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v9;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Parent GUID set %@", buf, 0xCu);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = v9;
  v26 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v26)
  {
    v27 = *v34;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v33 + 1) + 8 * j);
        v30 = +[IMDMessageStore sharedInstance];
        v31 = [v30 messageWithGUID:v29 registerAttachments:1];

        if (v31)
        {
          [neededCopy insertObject:v31 atIndex:0];
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v26);
  }
}

- (void)_populateAssociatedMessagesIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableSet);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = neededCopy;
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        if ([v11 isAssociatedMessageItem])
        {
          guid = [v11 guid];
          [v5 addObject:guid];
        }

        else
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v4;
  v30 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v30)
  {
    v29 = *v44;
    do
    {
      v13 = 0;
      do
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v13;
        v14 = *(*(&v43 + 1) + 8 * v13);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        messagePartGUIDs = [v14 messagePartGUIDs];
        v34 = [messagePartGUIDs countByEnumeratingWithState:&v39 objects:v52 count:16];
        if (v34)
        {
          v33 = *v40;
          do
          {
            for (j = 0; j != v34; j = j + 1)
            {
              if (*v40 != v33)
              {
                objc_enumerationMutation(messagePartGUIDs);
              }

              v16 = *(*(&v39 + 1) + 8 * j);
              v17 = +[IMDMessageStore sharedInstance];
              v18 = [v17 messagesWithAssociatedGUID:v16 shouldLoadAttachments:1];

              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v19 = v18;
              v20 = [v19 countByEnumeratingWithState:&v35 objects:v51 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v36;
                do
                {
                  for (k = 0; k != v21; k = k + 1)
                  {
                    if (*v36 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v35 + 1) + 8 * k);
                    guid2 = [v24 guid];
                    v26 = [v5 containsObject:guid2];

                    if ((v26 & 1) == 0)
                    {
                      [v6 addObject:v24];
                      guid3 = [v24 guid];
                      [v5 addObject:guid3];
                    }
                  }

                  v21 = [v19 countByEnumeratingWithState:&v35 objects:v51 count:16];
                }

                while (v21);
              }
            }

            v34 = [messagePartGUIDs countByEnumeratingWithState:&v39 objects:v52 count:16];
          }

          while (v34);
        }

        v13 = v31 + 1;
      }

      while ((v31 + 1) != v30);
      v30 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v30);
  }
}

- (void)loadUncachedAttachmentCountForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services reply:(id)reply
{
  dCopy = d;
  identifiersCopy = identifiers;
  servicesCopy = services;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = +[IMDClientRequestContext currentContext];
      listenerID = [v15 listenerID];
      v22 = 138412802;
      v23 = listenerID;
      v24 = 2112;
      v25 = identifiersCopy;
      v26 = 2112;
      v27 = servicesCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Request from %@ to load uncached media attachment count with chat ID: %@  service: %@", &v22, 0x20u);
    }
  }

  if (![identifiersCopy count] || !objc_msgSend(servicesCopy, "count"))
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = identifiersCopy;
        v24 = 2112;
        v25 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, " No IDs: %@ or serviceNames: %@, empty results being returned", &v22, 0x16u);
      }
    }

    goto LABEL_18;
  }

  v17 = +[IMDCKUtilities sharedInstance];
  cloudKitSyncingEnabled = [v17 cloudKitSyncingEnabled];

  if (!cloudKitSyncingEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, " Service does not support a database OR MIC disabled, empty results being returned", &v22, 2u);
      }
    }

LABEL_18:
    replyCopy[2](replyCopy, 0);
    goto LABEL_19;
  }

  v19 = +[IMDCKAttachmentSyncController sharedInstance];
  (replyCopy)[2](replyCopy, [v19 purgedAttachmentsCountForChatsWithChatIdentifiers:identifiersCopy services:servicesCopy]);

LABEL_19:
}

- (void)purgeAttachmentsForChatGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Purging attachments for chat: %@", &v5, 0xCu);
    }
  }

  IMDChatRecordPurgeAttachments();
}

- (void)updateUnformattedID:(id)d forBuddyID:(id)iD onService:(id)service
{
  dCopy = d;
  iDCopy = iD;
  serviceCopy = service;
  if (([iDCopy hasPrefix:@"+"] & 1) != 0 || objc_msgSend(iDCopy, "hasPrefix:", @"P:"))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412802;
        v14 = dCopy;
        v15 = 2112;
        v16 = iDCopy;
        v17 = 2112;
        v18 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Ignoring request from client to update unformatted ID %@->%@  on service: %@", &v13, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412802;
        v14 = dCopy;
        v15 = 2112;
        v16 = iDCopy;
        v17 = 2112;
        v18 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Request from client to update unformatted ID %@->%@  on service: %@", &v13, 0x20u);
      }
    }

    v12 = +[IMDMessageStore sharedInstance];
    [v12 updateUnformattedID:dCopy forBuddyID:iDCopy onService:serviceCopy];
  }
}

- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date queryID:(id)d
{
  deletedCopy = deleted;
  dateCopy = date;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = deletedCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Recently Deleted | Will move messages to recently deleted: %@", buf, 0xCu);
    }
  }

  v12 = +[IMDMessageStore sharedInstance];
  firstObject = [deletedCopy firstObject];
  v14 = [v12 chatForMessageGUID:firstObject];

  if (+[IMGenerativeModelsAvailabilityProvider messageSummarizationEnabled])
  {
    v37 = IMChatPropertyChatSummaryDictionary;
    v15 = +[NSNull null];
    v38 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v14 updateProperties:v16];
  }

  v17 = +[IMDChatRegistry sharedInstance];
  [v17 moveMessagesWithGUIDsToRecentlyDeleted:deletedCopy deleteDate:dateCopy];

  v18 = +[IMDMessageStore sharedInstance];
  guid = [v14 guid];
  [v18 updateStampForGUID:guid];

  v20 = +[IMINInteractionUtilities sharedInstance];
  [v20 deleteInteractionsWithMessageGUIDs:deletedCopy];

  [(IMDaemonChatMessageHistoryRequestHandler *)self _updateLastMessageTimeStampForChat:v14];
  serviceName = [v14 serviceName];
  v22 = [serviceName isEqualToString:IMServiceNameSMS];
  v23 = &IMServiceNameiMessage;
  if (v22)
  {
    v23 = &IMServiceNameSMS;
  }

  v24 = *v23;

  v25 = +[IMDAccountController sharedInstance];
  v26 = [v25 anySessionForServiceName:v24];

  v35[0] = IMDDeleteCommandMessageGUIDArrayKey;
  v35[1] = IMDDeleteCommandIsPermanentDeleteKey;
  v36[0] = deletedCopy;
  v36[1] = &__kCFBooleanFalse;
  v35[2] = IMDDeleteCommandRecoverableDeleteDateKey;
  v36[2] = dateCopy;
  v27 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
  guid2 = [v14 guid];
  [v26 sendDeleteCommand:v27 forChatGUID:guid2];

  v29 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatListeners = [v29 broadcasterForChatListeners];

  guid3 = [v14 guid];
  [broadcasterForChatListeners movedMessageGUIDsToRecentlyDeleted:deletedCopy forChatWithGUID:guid3 queryID:dCopy deletionDate:dateCopy];

  v32 = +[IMDMessageStore sharedInstance];
  [v32 retractPostedNotificationsForMessageGUIDs:deletedCopy];

  v33 = +[IMDChatRegistry sharedInstance];
  [v33 updateStateForChat:v14 hintMessage:0 shouldRebuildFailedMessageDate:1 shouldCalculateUnreadCount:1];

  if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = deletedCopy;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Recently Deleted | Finished moving messages to recently deleted: %@", buf, 0xCu);
    }
  }
}

- (void)moveMessagesInChatsWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date queryID:(id)d
{
  deletedCopy = deleted;
  dateCopy = date;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = deletedCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Recently Deleted | Will move messages to recently deleted for chatGUIDs: %@", buf, 0xCu);
    }
  }

  v12 = +[IMDChatRegistry sharedInstance];
  [v12 moveMessagesInChatsWithGUIDsToRecentlyDeleted:deletedCopy deleteDate:dateCopy];

  v13 = +[IMDMessageStore sharedInstance];
  [v13 updateStampForGUIDs:deletedCopy];

  v14 = +[IMINInteractionUtilities sharedInstance];
  [v14 deleteInteractionsWithChatGUIDs:deletedCopy];

  v15 = +[IMDAccountController sharedInstance];
  v16 = [v15 anySessionForServiceName:IMServiceNameSMS];

  v17 = +[IMDAccountController sharedInstance];
  v18 = [v17 anySessionForServiceName:IMServiceNameiMessage];

  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100030EFC;
  v29 = &unk_100082208;
  selfCopy = self;
  v19 = v16;
  v31 = v19;
  v20 = v18;
  v32 = v20;
  v21 = dateCopy;
  v33 = v21;
  [deletedCopy enumerateObjectsUsingBlock:&v26];
  v22 = [IMDBroadcastController sharedProvider:v26];
  broadcasterForChatListeners = [v22 broadcasterForChatListeners];

  [broadcasterForChatListeners movedMessagesToRecentlyDeletedForChatsWithGUIDs:deletedCopy queryID:dCopy deletionDate:v21];
  v24 = +[IMDMessageStore sharedInstance];
  [v24 retractPostedNotificationsForMessagesMatchingChatGUIDs:deletedCopy];

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = deletedCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Recently Deleted | Finished moving messages to recently deleted for chatGUIDs: %@", buf, 0xCu);
    }
  }
}

- (void)recoverMessagesWithChatGUIDs:(id)ds queryID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = dsCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Recently Deleted | Will recover messages for chatGUIDs: %@", buf, 0xCu);
    }
  }

  v9 = +[IMDChatRegistry sharedInstance];
  [v9 recoverMessagesWithChatGUIDs:dsCopy];

  v10 = +[IMDMessageStore sharedInstance];
  [v10 updateStampForGUIDs:dsCopy];

  v11 = +[IMDAccountController sharedInstance];
  v12 = [v11 anySessionForServiceName:IMServiceNameSMS];

  v13 = +[IMDAccountController sharedInstance];
  v14 = [v13 anySessionForServiceName:IMServiceNameiMessage];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100031874;
  v20[3] = &unk_100082230;
  v20[4] = self;
  v15 = v12;
  v21 = v15;
  v16 = v14;
  v22 = v16;
  [dsCopy enumerateObjectsUsingBlock:v20];
  v17 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatListeners = [v17 broadcasterForChatListeners];

  [broadcasterForChatListeners recoveredMessagesWithChatGUIDs:dsCopy queryID:dCopy];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = dsCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Recently Deleted | Finished recovering messages for chatGUIDs: %@", buf, 0xCu);
    }
  }
}

- (void)loadRecoverableMessagesMetadataWithQueryID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Recently Deleted | Will retrieve recoverable message count", buf, 2u);
    }
  }

  v5 = +[IMDChatRegistry sharedInstance];
  recoverableMessagesMetadata = [v5 recoverableMessagesMetadata];

  v7 = +[IMDClientRequestContext currentContext];
  replyProxy = [v7 replyProxy];

  [replyProxy loadedRecoverableMessagesMetadata:recoverableMessagesMetadata queryID:dCopy];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Recently Deleted | Finished retrieving recoverable message count", v10, 2u);
    }
  }
}

- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds queryID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = dsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Recently Deleted | Will permanently delete recently deleted messages for chatGUIDS: %@", buf, 0xCu);
    }
  }

  [dsCopy enumerateObjectsUsingBlock:&stru_100082270];
  v8 = +[IMDChatRegistry sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000323A4;
  v10[3] = &unk_100081918;
  v11 = dCopy;
  v9 = dCopy;
  [v8 permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:dsCopy completionHandler:v10];
}

- (void)_updateLastMessageTimeStampForChat:(id)chat
{
  chatCopy = chat;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 lastMessageForChatWithRowID:{objc_msgSend(chatCopy, "rowID")}];
  [chatCopy setLastMessage:v5];

  lastMessage = [chatCopy lastMessage];

  if (lastMessage)
  {
    lastMessage2 = [chatCopy lastMessage];
    time = [lastMessage2 time];
    [time timeIntervalSinceReferenceDate];
    [chatCopy setLastMessageTimeStampOnLoad:v9];
  }

  else
  {
    [chatCopy setLastMessageTimeStampOnLoad:0];
  }

  v10 = +[IMFeatureFlags sharedFeatureFlags];
  isAVLessSharePlayEnabled = [v10 isAVLessSharePlayEnabled];

  if (isAVLessSharePlayEnabled)
  {
    v12 = +[IMDMessageStore sharedInstance];
    v13 = [v12 lastTUConversationItemForChat:chatCopy];

    if (v13)
    {
      time2 = [v13 time];

      if (time2)
      {
        time3 = [v13 time];
        [chatCopy setLastTUConversationCreatedDate:time3];
      }

      else
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100053D2C();
        }
      }
    }

    else
    {
      [chatCopy setLastTUConversationCreatedDate:0];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      lastMessage3 = [chatCopy lastMessage];
      time4 = [lastMessage3 time];
      [time4 timeIntervalSinceReferenceDate];
      v21 = [NSNumber numberWithDouble:?];
      lastTUConversationCreatedDate = [chatCopy lastTUConversationCreatedDate];
      lastScheduledMessageCreatedDate = [chatCopy lastScheduledMessageCreatedDate];
      v27 = 138413058;
      v28 = guid;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = lastTUConversationCreatedDate;
      v33 = 2112;
      v34 = lastScheduledMessageCreatedDate;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Recently Deleted | IMChat: %@, updating last message timestamp on load: %@ lastTUConversationCreatedDate %@ lastScheduledMessageCreatedDate: %@", &v27, 0x2Au);
    }
  }

  v24 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatListeners = [v24 broadcasterForChatListeners];

  guid2 = [chatCopy guid];
  [broadcasterForChatListeners chat:guid2 lastMessageTimeStampOnLoadUpdated:{objc_msgSend(chatCopy, "lastMessageTimeStampOnLoad")}];
}

- (void)fetchEarliestMessageDateForChatsWithGUIDs:(id)ds completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1000541B4();
  _Block_copy(v5);
  selfCopy = self;
  sub_100051EB8(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)updatePluginMessageWithGUID:(id)d newPayloadData:(id)data completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_100054164();
  v10 = v9;
  dataCopy = data;
  selfCopy = self;
  v13 = sub_100053E14();
  v15 = v14;

  _Block_copy(v7);
  sub_100052478(v8, v10, v13, v15, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_100053798(v13, v15);
}

- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries
{
  sub_10003AA94(0, &qword_10008B640, NSAttributedString_ptr);
  sub_100054134();
  sharedInstance = [objc_opt_self() sharedInstance];
  isa = sub_100054114().super.isa;

  [sharedInstance updateChatsUsingMessageGUIDsAndSummaries:isa];
}

- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority
{
  v4 = objc_opt_self();
  priorityCopy = priority;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance updateChatsUsingMessageGUIDsWithPriority:priorityCopy];
}

- (void)fetchIncomingPendingMessagesOverSatelliteForChatsWithIDs:(id)ds services:(id)services
{
  v5 = sub_1000541B4();
  v6 = sub_1000541B4();
  selfCopy = self;
  _sSo40IMDaemonChatMessageHistoryRequestHandlerC7imagentE49fetchIncomingPendingMessagesOverSatelliteForChats7withIDs8servicesySaySSG_AGtF_0(v5, v6);
}

@end