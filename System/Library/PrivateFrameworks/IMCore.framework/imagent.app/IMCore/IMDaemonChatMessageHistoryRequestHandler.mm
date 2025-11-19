@interface IMDaemonChatMessageHistoryRequestHandler
- (id)_serializedFileTransfersForItems:(id)a3;
- (void)_populateAssociatedMessagesIfNeeded:(id)a3;
- (void)_populateParentMessagesIfNeeded:(id)a3;
- (void)_updateLastMessageTimeStampForChat:(id)a3;
- (void)cleanupAttachments;
- (void)deleteMessageWithGUIDs:(id)a3 queryID:(id)a4;
- (void)fetchEarliestMessageDateForChatsWithGUIDs:(id)a3 completion:(id)a4;
- (void)fetchIncomingPendingMessagesOverSatelliteForChatsWithIDs:(id)a3 services:(id)a4;
- (void)loadAttachmentsForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 reply:(id)a7;
- (void)loadFrequentRepliesForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 limit:(int64_t)a7 reply:(id)a8;
- (void)loadHistoryForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 limit:(int64_t)a7 beforeGUID:(id)a8 afterGUID:(id)a9 threadIdentifier:(id)a10 reply:(id)a11;
- (void)loadHistoryForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 limit:(int64_t)a6 beforeGUID:(id)a7 afterGUID:(id)a8 threadIdentifier:(id)a9 chatID:(id)a10 queryID:(id)a11;
- (void)loadMessageItemWithGUID:(id)a3 queryID:(id)a4;
- (void)loadMessageWithGUID:(id)a3 queryID:(id)a4;
- (void)loadPagedHistoryAroundMessageWithGUID:(id)a3 chatGUID:(id)a4 chatIdentifiers:(id)a5 style:(unsigned __int8)a6 services:(id)a7 numberOfMessagesBefore:(int64_t)a8 numberOfMessagesAfter:(int64_t)a9 threadIdentifier:(id)a10 reply:(id)a11;
- (void)loadPagedHistoryForGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 onServices:(id)a6 numberOfMessagesBefore:(int64_t)a7 numberOfMessagesAfter:(int64_t)a8 threadIdentifier:(id)a9 chatID:(id)a10 queryID:(id)a11;
- (void)loadRecoverableMessagesMetadataWithQueryID:(id)a3;
- (void)loadUncachedAttachmentCountForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 reply:(id)a7;
- (void)loadUnreadForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 limit:(int64_t)a6 fallbackGUID:(id)a7 chatId:(id)a8 queryID:(id)a9;
- (void)loadUnreadHistoryForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 limit:(int64_t)a7 fallbackMessageGUID:(id)a8 reply:(id)a9;
- (void)moveMessagesInChatsWithGUIDsToRecentlyDeleted:(id)a3 deleteDate:(id)a4 queryID:(id)a5;
- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)a3 deleteDate:(id)a4 queryID:(id)a5;
- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 queryID:(id)a4;
- (void)purgeAttachmentsForChatGUID:(id)a3;
- (void)recoverMessagesWithChatGUIDs:(id)a3 queryID:(id)a4;
- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)a3;
- (void)updateChatsUsingMessageGUIDsWithPriority:(id)a3;
- (void)updatePluginMessageWithGUID:(id)a3 newPayloadData:(id)a4 completion:(id)a5;
- (void)updateUnformattedID:(id)a3 forBuddyID:(id)a4 onService:(id)a5;
@end

@implementation IMDaemonChatMessageHistoryRequestHandler

- (void)loadMessageWithGUID:(id)a3 queryID:(id)a4
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
      v20 = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Request from %@ to load message with guid: %@", &v20, 0x16u);
    }
  }

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 messageWithGUID:v5];

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 chatForMessageGUID:v5];

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
  v17 = [v16 replyProxy];
  v18 = [v13 guid];
  v19 = IMSingleObjectArray();
  [v17 messageQuery:v6 finishedWithResult:v11 chatGUIDs:v19];
}

- (void)loadMessageItemWithGUID:(id)a3 queryID:(id)a4
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
      v20 = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Request from %@ to load message item with guid: %@", &v20, 0x16u);
    }
  }

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 messageWithGUID:v5];

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 chatForMessageGUID:v5];

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
  v17 = [v16 replyProxy];

  v18 = [v13 guid];
  v19 = IMSingleObjectArray();
  [v17 messageItemQuery:v6 finishedWithResult:v11 chatGUIDs:v19];
}

- (void)loadHistoryForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 limit:(int64_t)a7 beforeGUID:(id)a8 afterGUID:(id)a9 threadIdentifier:(id)a10 reply:(id)a11
{
  v14 = a5;
  v42 = a3;
  v16 = a4;
  v17 = a6;
  v44 = a8;
  v43 = a9;
  v45 = a10;
  v18 = a11;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = +[IMDClientRequestContext currentContext];
      v21 = [v20 listenerID];
      *buf = 138413826;
      *v52 = v21;
      *&v52[8] = 2112;
      *&v52[10] = v16;
      v53 = 2112;
      v54 = v17;
      v55 = 1024;
      v56 = a7;
      v57 = 2112;
      v58 = v44;
      v59 = 2112;
      v60 = v43;
      v61 = 2112;
      v62 = v45;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Request from %@ to load messages with chat ID: %@  service: %@  limit: %d  beforeGUID: %@ aferGUID: %@ threadIdentifier: %@", buf, 0x44u);
    }
  }

  if ([v16 count] && objc_msgSend(v17, "count"))
  {
    v22 = +[IMDMessageStore sharedInstance];
    v23 = v22;
    if (v14 == 45)
    {
      [v22 itemsWithHandles:v16 onServices:v17 messageGUID:v44 threadIdentifier:v45 limit:a7];
    }

    else
    {
      [v22 itemsWithRoomNames:v16 onServices:v17 messageGUID:v44 threadIdentifier:v45 limit:a7];
    }
    v25 = ;

    if ([v25 count] == a7)
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

      if (v27 >= a7 / 2)
      {
        v25 = v26;
      }

      else
      {
        v31 = v14 == 45;
        v32 = +[IMDMessageStore sharedInstance];
        v33 = v32;
        if (v31)
        {
          [v32 itemsWithHandles:v16 onServices:v17 messageGUID:v44 threadIdentifier:v45 limit:2 * a7];
        }

        else
        {
          [v32 itemsWithRoomNames:v16 onServices:v17 messageGUID:v44 threadIdentifier:v45 limit:2 * a7];
        }
        v25 = ;

        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 134218496;
            *v52 = 2 * a7;
            *&v52[8] = 2048;
            *&v52[10] = v27;
            v53 = 2048;
            v54 = a7;
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
    v18[2](v18, v39, v40);
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

    v18[2](v18, &__NSArray0__struct, &__NSArray0__struct);
  }
}

- (void)loadHistoryForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 limit:(int64_t)a6 beforeGUID:(id)a7 afterGUID:(id)a8 threadIdentifier:(id)a9 chatID:(id)a10 queryID:(id)a11
{
  v32 = a4;
  v33 = a3;
  v15 = a5;
  v34 = a7;
  v35 = a8;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = +[IMDClientRequestContext currentContext];
  v20 = [v19 replyProxy];

  v21 = +[IMDClientRequestContext currentContext];
  v22 = [v21 listenerID];

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = +[IMDClientRequestContext currentContext];
      v25 = [v24 listenerID];
      *buf = 138414082;
      v44 = v25;
      v45 = 2112;
      v46 = v33;
      v47 = 2112;
      v48 = v15;
      v49 = 1024;
      v50 = a6;
      v51 = 2112;
      v52 = v34;
      v53 = 2112;
      v54 = v35;
      v55 = 2112;
      v56 = v16;
      v57 = 2112;
      v58 = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Legacy request from %@ to load messages with chat ID: %@  service: %@  limit: %d  beforeGUID: %@ aferGUID: %@ threadIdentifier: %@ queryID: %@", buf, 0x4Eu);
    }
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10002CD10;
  v36[3] = &unk_100082070;
  v37 = v20;
  v38 = v18;
  v39 = v17;
  v40 = v15;
  v41 = v22;
  v42 = a6;
  v26 = v22;
  v27 = v15;
  v28 = v17;
  v29 = v18;
  v30 = v20;
  [(IMDaemonChatMessageHistoryRequestHandler *)self loadHistoryForChatWithGUID:v28 chatIdentifiers:v33 style:v32 services:v27 limit:a6 beforeGUID:v34 afterGUID:v35 threadIdentifier:v16 reply:v36];
}

- (void)loadPagedHistoryAroundMessageWithGUID:(id)a3 chatGUID:(id)a4 chatIdentifiers:(id)a5 style:(unsigned __int8)a6 services:(id)a7 numberOfMessagesBefore:(int64_t)a8 numberOfMessagesAfter:(int64_t)a9 threadIdentifier:(id)a10 reply:(id)a11
{
  v15 = a3;
  v29 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a10;
  v19 = a11;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = +[IMDClientRequestContext currentContext];
      v22 = [v21 listenerID];
      *buf = 138413570;
      v32 = v22;
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v15;
      v37 = 2112;
      v38 = v17;
      v39 = 1024;
      v40 = a8;
      v41 = 1024;
      v42 = a9;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Request from %@ to load paged history with chat ID: %@  for messageGUID: %@ service: %@  numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x36u);
    }
  }

  if ([v16 count] && objc_msgSend(v17, "count"))
  {
    buf[0] = 1;
    v30 = 1;
    v23 = +[IMDMessageStore sharedInstance];
    v24 = [v23 itemsWithHandles:v16 onServices:v17 messageGUID:v15 numberOfMessagesBefore:a8 numberOfMessagesAfter:a9 threadIdentifier:v18 hasMessagesBefore:buf hasMessagesAfter:&v30];

    v25 = +[IMDMessageStore sharedInstance];
    [v25 loadConsumedSessionPayloadsForItems:v24];

    v26 = IMCreateSerializedItemsFromArray();
    v27 = [(IMDaemonChatMessageHistoryRequestHandler *)self _serializedFileTransfersForItems:v24];
    (*(v19 + 2))(v19, v26, v27, buf[0], v30);
  }

  else
  {
    (*(v19 + 2))(v19, &__NSArray0__struct, &__NSArray0__struct, 0, 0);
  }
}

- (void)loadPagedHistoryForGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 onServices:(id)a6 numberOfMessagesBefore:(int64_t)a7 numberOfMessagesAfter:(int64_t)a8 threadIdentifier:(id)a9 chatID:(id)a10 queryID:(id)a11
{
  v30 = a5;
  v31 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a9;
  v18 = a10;
  v19 = a11;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = +[IMDClientRequestContext currentContext];
      v22 = [v21 listenerID];
      *buf = 138413570;
      v40 = v22;
      v41 = 2112;
      v42 = v15;
      v43 = 2112;
      v44 = v31;
      v45 = 2112;
      v46 = v16;
      v47 = 1024;
      v48 = a7;
      v49 = 1024;
      v50 = a8;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Legacy request from %@ to load paged history with chat ID: %@  for messageGUID: %@ service: %@  numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x36u);
    }
  }

  v23 = +[IMDClientRequestContext currentContext];
  v24 = [v23 replyProxy];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10002D364;
  v32[3] = &unk_100082098;
  v33 = v24;
  v34 = v19;
  v35 = v18;
  v36 = v16;
  v37 = a7;
  v38 = a8;
  v25 = v16;
  v26 = v18;
  v27 = v19;
  v28 = v24;
  [(IMDaemonChatMessageHistoryRequestHandler *)self loadPagedHistoryAroundMessageWithGUID:v31 chatGUID:v26 chatIdentifiers:v15 style:v30 services:v25 numberOfMessagesBefore:a7 numberOfMessagesAfter:a8 threadIdentifier:v17 reply:v32];
}

- (void)loadAttachmentsForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 reply:(id)a7
{
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = +[IMDClientRequestContext currentContext];
      v17 = [v16 listenerID];
      v24 = 138412802;
      v25 = v17;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Request from %@ to load media attachment filenames with chat ID: %@  service: %@", &v24, 0x20u);
    }
  }

  if ([v12 count] && objc_msgSend(v13, "count"))
  {
    v18 = +[IMDMessageStore sharedInstance];
    v19 = v18;
    if (v9 == 45)
    {
      [v18 attachmentsWithHandles:v12 onServices:v13];
    }

    else
    {
      [v18 attachmentsWithRoomNames:v12 onServices:v13];
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

    v14[2](v14, v21);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v24 = 138412546;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, " No IDs: %@ or serviceNames: %@, empty results being returned", &v24, 0x16u);
      }
    }

    v14[2](v14, &__NSArray0__struct);
  }
}

- (id)_serializedFileTransfersForItems:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

- (void)deleteMessageWithGUIDs:(id)a3 queryID:(id)a4
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
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Request from %@ to delete messages with guids: %@", buf, 0x16u);
    }
  }

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v5 firstObject];
  v12 = [v10 chatForMessageGUID:v11];

  v13 = [v12 serviceName];
  LODWORD(v11) = [v13 isEqualToString:IMServiceNameSMS];

  if (v11)
  {
    IMGreenTeaMessageDeleteLog();
  }

  v14 = +[IMDMessageStore sharedInstance];
  v15 = [v14 deleteMessageGUIDs:v5];

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
    v17 = [v12 serviceName];
    v18 = [v17 isEqualToString:IMServiceNameSMS];

    v19 = +[IMDAccountController sharedInstance];
    v20 = v19;
    v21 = &IMServiceNameiMessage;
    if (v18)
    {
      v21 = &IMServiceNameSMS;
    }

    v22 = [v19 anySessionForServiceName:*v21];

    v27 = @"message";
    v28 = v5;
    v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v24 = [v12 guid];
    [v22 sendDeleteCommand:v23 forChatGUID:v24];

    v25 = +[IMDBroadcastController sharedProvider];
    v26 = [v25 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v12, "isBlackholed")}];
    [v26 historicalMessageGUIDsDeleted:v15 chatGUIDs:0 queryID:v6];
  }
}

- (void)cleanupAttachments
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[IMDClientRequestContext currentContext];
    v4 = [v3 listenerID];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request from %@ to clean up attachments", &v6, 0xCu);
  }

  v5 = +[IMDMessageStore sharedInstance];
  [v5 cleanseAttachments];
}

- (void)loadFrequentRepliesForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 limit:(int64_t)a7 reply:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a8;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = +[IMDClientRequestContext currentContext];
      v18 = [v17 listenerID];
      v24 = 138413058;
      *v25 = v18;
      *&v25[8] = 2112;
      *&v25[10] = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 1024;
      v29 = a7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Request from %@ to find frequent replies with chat ID: %@  service: %@  limit: %d", &v24, 0x26u);
    }
  }

  if ([v13 count] && objc_msgSend(v14, "count"))
  {
    v19 = +[IMDMessageStore sharedInstance];
    v20 = [v19 frequentRepliesForForChatIdentifiers:v13 onServices:v14 limit:a7];

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

    v15[2](v15, v23);
  }
}

- (void)loadUnreadHistoryForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 limit:(int64_t)a7 fallbackMessageGUID:(id)a8 reply:(id)a9
{
  v12 = a5;
  v33 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = +[IMDClientRequestContext currentContext];
      v21 = [v20 listenerID];
      *buf = 138413058;
      v35 = v21;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v16;
      v40 = 1024;
      v41 = a7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Request from %@ to load latest unread messages with chat ID: %@  services: %@  limit: %d", buf, 0x26u);
    }
  }

  if ([v15 count] && objc_msgSend(v16, "count"))
  {
    v22 = v12 == 45;
    v23 = +[IMDMessageStore sharedInstance];
    v24 = v23;
    if (v22)
    {
      [v23 unreadMessagesWithHandles:v15 onServices:v16 limit:a7 fallbackGUID:v17];
    }

    else
    {
      [v23 unreadMessagesWithRoomNames:v15 onServices:v16 limit:a7 fallbackGUID:v17];
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
    v18[2](v18, v31, v32);
  }

  else
  {
    v18[2](v18, &__NSArray0__struct, &__NSArray0__struct);
  }
}

- (void)loadUnreadForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 limit:(int64_t)a6 fallbackGUID:(id)a7 chatId:(id)a8 queryID:(id)a9
{
  v25 = a4;
  v14 = a5;
  v15 = a8;
  v16 = a9;
  v17 = a7;
  v18 = a3;
  v19 = +[IMDClientRequestContext currentContext];
  v20 = [v19 replyProxy];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002F634;
  v26[3] = &unk_100082138;
  v27 = v20;
  v28 = v16;
  v29 = v15;
  v30 = v14;
  v31 = a6;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v20;
  [(IMDaemonChatMessageHistoryRequestHandler *)self loadUnreadHistoryForChatWithGUID:v22 chatIdentifiers:v18 style:v25 services:v21 limit:a6 fallbackMessageGUID:v17 reply:v26];
}

- (void)_populateParentMessagesIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [v3 __imArrayByApplyingBlock:&stru_100082178];
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

  v6 = [v3 __imArrayByFilteringWithBlock:&stru_1000821B8];
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
        v16 = [v15 associatedMessageGUID];
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
              v21 = [v15 guid];
              *buf = v32;
              v43 = v17;
              v44 = 2112;
              v45 = v21;
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
            v22 = [v15 associatedMessageGUID];
            *buf = 138412290;
            v43 = v22;
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
          [v3 insertObject:v31 atIndex:0];
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v26);
  }
}

- (void)_populateAssociatedMessagesIfNeeded:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableSet);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = v3;
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
          v12 = [v11 guid];
          [v5 addObject:v12];
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
        v32 = [v14 messagePartGUIDs];
        v34 = [v32 countByEnumeratingWithState:&v39 objects:v52 count:16];
        if (v34)
        {
          v33 = *v40;
          do
          {
            for (j = 0; j != v34; j = j + 1)
            {
              if (*v40 != v33)
              {
                objc_enumerationMutation(v32);
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
                    v25 = [v24 guid];
                    v26 = [v5 containsObject:v25];

                    if ((v26 & 1) == 0)
                    {
                      [v6 addObject:v24];
                      v27 = [v24 guid];
                      [v5 addObject:v27];
                    }
                  }

                  v21 = [v19 countByEnumeratingWithState:&v35 objects:v51 count:16];
                }

                while (v21);
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v39 objects:v52 count:16];
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

- (void)loadUncachedAttachmentCountForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 reply:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = +[IMDClientRequestContext currentContext];
      v16 = [v15 listenerID];
      v22 = 138412802;
      v23 = v16;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Request from %@ to load uncached media attachment count with chat ID: %@  service: %@", &v22, 0x20u);
    }
  }

  if (![v11 count] || !objc_msgSend(v12, "count"))
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, " No IDs: %@ or serviceNames: %@, empty results being returned", &v22, 0x16u);
      }
    }

    goto LABEL_18;
  }

  v17 = +[IMDCKUtilities sharedInstance];
  v18 = [v17 cloudKitSyncingEnabled];

  if (!v18)
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
    v13[2](v13, 0);
    goto LABEL_19;
  }

  v19 = +[IMDCKAttachmentSyncController sharedInstance];
  (v13)[2](v13, [v19 purgedAttachmentsCountForChatsWithChatIdentifiers:v11 services:v12]);

LABEL_19:
}

- (void)purgeAttachmentsForChatGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Purging attachments for chat: %@", &v5, 0xCu);
    }
  }

  IMDChatRecordPurgeAttachments();
}

- (void)updateUnformattedID:(id)a3 forBuddyID:(id)a4 onService:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v8 hasPrefix:@"+"] & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"P:"))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412802;
        v14 = v7;
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
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
        v14 = v7;
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Request from client to update unformatted ID %@->%@  on service: %@", &v13, 0x20u);
      }
    }

    v12 = +[IMDMessageStore sharedInstance];
    [v12 updateUnformattedID:v7 forBuddyID:v8 onService:v9];
  }
}

- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)a3 deleteDate:(id)a4 queryID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Recently Deleted | Will move messages to recently deleted: %@", buf, 0xCu);
    }
  }

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v8 firstObject];
  v14 = [v12 chatForMessageGUID:v13];

  if (+[IMGenerativeModelsAvailabilityProvider messageSummarizationEnabled])
  {
    v37 = IMChatPropertyChatSummaryDictionary;
    v15 = +[NSNull null];
    v38 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v14 updateProperties:v16];
  }

  v17 = +[IMDChatRegistry sharedInstance];
  [v17 moveMessagesWithGUIDsToRecentlyDeleted:v8 deleteDate:v9];

  v18 = +[IMDMessageStore sharedInstance];
  v19 = [v14 guid];
  [v18 updateStampForGUID:v19];

  v20 = +[IMINInteractionUtilities sharedInstance];
  [v20 deleteInteractionsWithMessageGUIDs:v8];

  [(IMDaemonChatMessageHistoryRequestHandler *)self _updateLastMessageTimeStampForChat:v14];
  v21 = [v14 serviceName];
  v22 = [v21 isEqualToString:IMServiceNameSMS];
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
  v36[0] = v8;
  v36[1] = &__kCFBooleanFalse;
  v35[2] = IMDDeleteCommandRecoverableDeleteDateKey;
  v36[2] = v9;
  v27 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
  v28 = [v14 guid];
  [v26 sendDeleteCommand:v27 forChatGUID:v28];

  v29 = +[IMDBroadcastController sharedProvider];
  v30 = [v29 broadcasterForChatListeners];

  v31 = [v14 guid];
  [v30 movedMessageGUIDsToRecentlyDeleted:v8 forChatWithGUID:v31 queryID:v10 deletionDate:v9];

  v32 = +[IMDMessageStore sharedInstance];
  [v32 retractPostedNotificationsForMessageGUIDs:v8];

  v33 = +[IMDChatRegistry sharedInstance];
  [v33 updateStateForChat:v14 hintMessage:0 shouldRebuildFailedMessageDate:1 shouldCalculateUnreadCount:1];

  if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Recently Deleted | Finished moving messages to recently deleted: %@", buf, 0xCu);
    }
  }
}

- (void)moveMessagesInChatsWithGUIDsToRecentlyDeleted:(id)a3 deleteDate:(id)a4 queryID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Recently Deleted | Will move messages to recently deleted for chatGUIDs: %@", buf, 0xCu);
    }
  }

  v12 = +[IMDChatRegistry sharedInstance];
  [v12 moveMessagesInChatsWithGUIDsToRecentlyDeleted:v8 deleteDate:v9];

  v13 = +[IMDMessageStore sharedInstance];
  [v13 updateStampForGUIDs:v8];

  v14 = +[IMINInteractionUtilities sharedInstance];
  [v14 deleteInteractionsWithChatGUIDs:v8];

  v15 = +[IMDAccountController sharedInstance];
  v16 = [v15 anySessionForServiceName:IMServiceNameSMS];

  v17 = +[IMDAccountController sharedInstance];
  v18 = [v17 anySessionForServiceName:IMServiceNameiMessage];

  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100030EFC;
  v29 = &unk_100082208;
  v30 = self;
  v19 = v16;
  v31 = v19;
  v20 = v18;
  v32 = v20;
  v21 = v9;
  v33 = v21;
  [v8 enumerateObjectsUsingBlock:&v26];
  v22 = [IMDBroadcastController sharedProvider:v26];
  v23 = [v22 broadcasterForChatListeners];

  [v23 movedMessagesToRecentlyDeletedForChatsWithGUIDs:v8 queryID:v10 deletionDate:v21];
  v24 = +[IMDMessageStore sharedInstance];
  [v24 retractPostedNotificationsForMessagesMatchingChatGUIDs:v8];

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Recently Deleted | Finished moving messages to recently deleted for chatGUIDs: %@", buf, 0xCu);
    }
  }
}

- (void)recoverMessagesWithChatGUIDs:(id)a3 queryID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Recently Deleted | Will recover messages for chatGUIDs: %@", buf, 0xCu);
    }
  }

  v9 = +[IMDChatRegistry sharedInstance];
  [v9 recoverMessagesWithChatGUIDs:v6];

  v10 = +[IMDMessageStore sharedInstance];
  [v10 updateStampForGUIDs:v6];

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
  [v6 enumerateObjectsUsingBlock:v20];
  v17 = +[IMDBroadcastController sharedProvider];
  v18 = [v17 broadcasterForChatListeners];

  [v18 recoveredMessagesWithChatGUIDs:v6 queryID:v7];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Recently Deleted | Finished recovering messages for chatGUIDs: %@", buf, 0xCu);
    }
  }
}

- (void)loadRecoverableMessagesMetadataWithQueryID:(id)a3
{
  v3 = a3;
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
  v6 = [v5 recoverableMessagesMetadata];

  v7 = +[IMDClientRequestContext currentContext];
  v8 = [v7 replyProxy];

  [v8 loadedRecoverableMessagesMetadata:v6 queryID:v3];
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

- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 queryID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Recently Deleted | Will permanently delete recently deleted messages for chatGUIDS: %@", buf, 0xCu);
    }
  }

  [v5 enumerateObjectsUsingBlock:&stru_100082270];
  v8 = +[IMDChatRegistry sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000323A4;
  v10[3] = &unk_100081918;
  v11 = v6;
  v9 = v6;
  [v8 permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:v5 completionHandler:v10];
}

- (void)_updateLastMessageTimeStampForChat:(id)a3
{
  v3 = a3;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 lastMessageForChatWithRowID:{objc_msgSend(v3, "rowID")}];
  [v3 setLastMessage:v5];

  v6 = [v3 lastMessage];

  if (v6)
  {
    v7 = [v3 lastMessage];
    v8 = [v7 time];
    [v8 timeIntervalSinceReferenceDate];
    [v3 setLastMessageTimeStampOnLoad:v9];
  }

  else
  {
    [v3 setLastMessageTimeStampOnLoad:0];
  }

  v10 = +[IMFeatureFlags sharedFeatureFlags];
  v11 = [v10 isAVLessSharePlayEnabled];

  if (v11)
  {
    v12 = +[IMDMessageStore sharedInstance];
    v13 = [v12 lastTUConversationItemForChat:v3];

    if (v13)
    {
      v14 = [v13 time];

      if (v14)
      {
        v15 = [v13 time];
        [v3 setLastTUConversationCreatedDate:v15];
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
      [v3 setLastTUConversationCreatedDate:0];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v3 guid];
      v19 = [v3 lastMessage];
      v20 = [v19 time];
      [v20 timeIntervalSinceReferenceDate];
      v21 = [NSNumber numberWithDouble:?];
      v22 = [v3 lastTUConversationCreatedDate];
      v23 = [v3 lastScheduledMessageCreatedDate];
      v27 = 138413058;
      v28 = v18;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Recently Deleted | IMChat: %@, updating last message timestamp on load: %@ lastTUConversationCreatedDate %@ lastScheduledMessageCreatedDate: %@", &v27, 0x2Au);
    }
  }

  v24 = +[IMDBroadcastController sharedProvider];
  v25 = [v24 broadcasterForChatListeners];

  v26 = [v3 guid];
  [v25 chat:v26 lastMessageTimeStampOnLoadUpdated:{objc_msgSend(v3, "lastMessageTimeStampOnLoad")}];
}

- (void)fetchEarliestMessageDateForChatsWithGUIDs:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1000541B4();
  _Block_copy(v5);
  v7 = self;
  sub_100051EB8(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)updatePluginMessageWithGUID:(id)a3 newPayloadData:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_100054164();
  v10 = v9;
  v11 = a4;
  v12 = self;
  v13 = sub_100053E14();
  v15 = v14;

  _Block_copy(v7);
  sub_100052478(v8, v10, v13, v15, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_100053798(v13, v15);
}

- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)a3
{
  sub_10003AA94(0, &qword_10008B640, NSAttributedString_ptr);
  sub_100054134();
  v3 = [objc_opt_self() sharedInstance];
  isa = sub_100054114().super.isa;

  [v3 updateChatsUsingMessageGUIDsAndSummaries:isa];
}

- (void)updateChatsUsingMessageGUIDsWithPriority:(id)a3
{
  v4 = objc_opt_self();
  v6 = a3;
  v5 = [v4 sharedInstance];
  [v5 updateChatsUsingMessageGUIDsWithPriority:v6];
}

- (void)fetchIncomingPendingMessagesOverSatelliteForChatsWithIDs:(id)a3 services:(id)a4
{
  v5 = sub_1000541B4();
  v6 = sub_1000541B4();
  v7 = self;
  _sSo40IMDaemonChatMessageHistoryRequestHandlerC7imagentE49fetchIncomingPendingMessagesOverSatelliteForChats7withIDs8servicesySaySSG_AGtF_0(v5, v6);
}

@end