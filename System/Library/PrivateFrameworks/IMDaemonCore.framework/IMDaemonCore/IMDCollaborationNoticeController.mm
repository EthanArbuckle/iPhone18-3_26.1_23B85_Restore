@interface IMDCollaborationNoticeController
+ (id)sharedController;
- (BOOL)_hasAdministrativePrivilegesForHighlight:(id)highlight chatGUID:(id)d;
- (BOOL)_highlightEligibleForSuggestAddingUser:(id)user;
- (IMDCollaborationNoticeController)init;
- (NSDictionary)highlightURLsForChatGUID;
- (id)noticesForChatGUIDs:(id)ds;
- (void)_chatGUIDsForNotice:(id)notice completionBlock:(id)block;
- (void)_chatGUIDsForNoticeURL:(id)l completionBlock:(id)block;
- (void)_generateParticipantChangeNoticesForChat:(id)chat highlight:(id)highlight participant:(id)participant noticeType:(int64_t)type checkedPrivileges:(BOOL)privileges messageGUID:(id)d;
- (void)_generateParticipantChangeNoticesForChat:(id)chat highlights:(id)highlights participants:(id)participants noticeType:(int64_t)type;
- (void)_handleChatParticipantsDidChange:(id)change;
- (void)_isShareBearURL:(id)l completionHandler:(id)handler;
- (void)_mapChatGUIDsToHighlight:(id)highlight completionBlock:(id)block;
- (void)_processNotice:(id)notice;
- (void)_shouldPostParticipantChangeNoticesForChat:(id)chat withParticipants:(id)participants forNoticeType:(int64_t)type;
- (void)_updateMappingHighlightsToChats;
- (void)broadcastNoticesDidChangeForChatGUIDs:(id)ds;
- (void)dismissNotice:(id)notice notify:(BOOL)notify;
- (void)dispatcher:(id)dispatcher didReceiveDismissalReflectionForNoticeGUIDs:(id)ds;
- (void)dispatcher:(id)dispatcher didReceiveDismissalRequest:(id)request fromID:(id)d;
- (void)dispatcher:(id)dispatcher didReceiveNotice:(id)notice fromID:(id)d;
- (void)highlightCenterHighlightsDidChange:(id)change;
- (void)receiveHighlightEvent:(id)event fromSender:(id)sender guidString:(id)string date:(id)date;
- (void)setHighlightURLsForChatGUID:(id)d;
- (void)updateNotice:(id)notice;
@end

@implementation IMDCollaborationNoticeController

+ (id)sharedController
{
  if (qword_281421230 != -1)
  {
    sub_22B7D9104();
  }

  v3 = qword_281421218;

  return v3;
}

- (IMDCollaborationNoticeController)init
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = IMDCollaborationNoticeController;
  v2 = [(IMDCollaborationNoticeController *)&v24 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "[IMDCollaborationNoticeController init]";
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
      }
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.IMDaemonCore.IMDCollaborationNoticeController.NoticeArrayQueue", v4);
    noticeDataQueue = v2->_noticeDataQueue;
    v2->_noticeDataQueue = v5;

    v7 = dispatch_queue_create("com.apple.IMDaemonCore.IMDCollaborationNoticeController.MappingHighlightsToChatsQueue", 0);
    mappingChatsToHighlightsQueue = v2->_mappingChatsToHighlightsQueue;
    v2->_mappingChatsToHighlightsQueue = v7;

    v9 = dispatch_queue_create("com.apple.IMDaemonCore.IMDCollaborationNoticeController.CollaborationNoticeDispatcherQueue", 0);
    collaborationNoticeDispatcherQueue = v2->_collaborationNoticeDispatcherQueue;
    v2->_collaborationNoticeDispatcherQueue = v9;

    if ([MEMORY[0x277D1A9A0] supportsSharedWithYou])
    {
      v11 = objc_alloc_init(MEMORY[0x231897B40](@"SWHighlightCenter", @"SharedWithYou"));
      highlightCenter = v2->_highlightCenter;
      v2->_highlightCenter = v11;

      [(SWHighlightCenter *)v2->_highlightCenter setDelegate:v2];
      v13 = objc_alloc_init(IMDCollaborationNoticeDispatcher);
      noticeDispatcher = v2->_noticeDispatcher;
      v2->_noticeDispatcher = v13;

      [(IMDCollaborationNoticeDispatcher *)v2->_noticeDispatcher setDelegate:v2];
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
      highlightURLsForChatGUID = v2->_highlightURLsForChatGUID;
      v2->_highlightURLsForChatGUID = dictionary;

      v17 = [MEMORY[0x277CBEB98] set];
      highlightURLs = v2->_highlightURLs;
      v2->_highlightURLs = v17;

      v2->_hasPopulatedHighlightTracking = 0;
      v19 = objc_alloc_init(IMDCollaborationNoticeStore);
      noticeStore = v2->_noticeStore;
      v2->_noticeStore = v19;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel__handleChatParticipantsDidChange_ name:@"__kIMDChatParticipantsDidChangeNotification" object:0];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v2;
}

- (NSDictionary)highlightURLsForChatGUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_22B4D7800;
  v11 = sub_22B4D7968;
  v12 = 0;
  noticeDataQueue = [(IMDCollaborationNoticeController *)self noticeDataQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B6B6068;
  v6[3] = &unk_278707ED0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(noticeDataQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setHighlightURLsForChatGUID:(id)d
{
  dCopy = d;
  highlightURLsForChatGUID = [(IMDCollaborationNoticeController *)self highlightURLsForChatGUID];
  v6 = [dCopy isEqualToDictionary:highlightURLsForChatGUID];

  if ((v6 & 1) == 0)
  {
    noticeDataQueue = [(IMDCollaborationNoticeController *)self noticeDataQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B6B619C;
    v8[3] = &unk_278702FA0;
    v8[4] = self;
    v9 = dCopy;
    dispatch_barrier_sync(noticeDataQueue, v8);
  }
}

- (id)noticesForChatGUIDs:(id)ds
{
  v57 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v40 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
    highlightURLsForChatGUID = [(IMDCollaborationNoticeController *)self highlightURLsForChatGUID];
    v6 = [MEMORY[0x277CBEB58] set];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_22B6B6884;
    v47[3] = &unk_278704928;
    v7 = v6;
    v48 = v7;
    v8 = highlightURLsForChatGUID;
    v49 = v8;
    [dsCopy enumerateObjectsUsingBlock:v47];
    if ([v7 count])
    {
      noticeStore = [(IMDCollaborationNoticeController *)self noticeStore];
      allObjects = [v7 allObjects];
      v39 = [noticeStore noticesForURLs:allObjects];

      v11 = MEMORY[0x277CCAC30];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = sub_22B6B690C;
      v45[3] = &unk_278707EF8;
      v46 = v40;
      v38 = [v11 predicateWithBlock:v45];
      v12 = [v39 filteredArrayUsingPredicate:v38];
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
          *buf = 138412546;
          v51 = v14;
          v52 = 2112;
          v53 = dsCopy;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found %@ notices for chatGUIDs: %@ before deduplication", buf, 0x16u);
        }
      }

      v15 = v12;
      v16 = v15;
      if ([v15 count] >= 2)
      {
        v17 = [MEMORY[0x277D1A938] deduplicateNotices:v15];
        duplicateNotices = [v17 duplicateNotices];
        v19 = [duplicateNotices count] == 0;

        if (!v19)
        {
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = MEMORY[0x277CCABB0];
              duplicateNotices2 = [v17 duplicateNotices];
              v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(duplicateNotices2, "count")}];
              *buf = 138412546;
              v51 = v23;
              v52 = 2112;
              v53 = dsCopy;
              _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Dismissing %@ duplicate notices for chatGUIDs: %@.", buf, 0x16u);
            }
          }

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          duplicateNotices3 = [v17 duplicateNotices];
          v25 = [duplicateNotices3 countByEnumeratingWithState:&v41 objects:v56 count:16];
          if (v25)
          {
            v26 = *v42;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v42 != v26)
                {
                  objc_enumerationMutation(duplicateNotices3);
                }

                [(IMDCollaborationNoticeController *)self dismissNotice:*(*(&v41 + 1) + 8 * i) notify:0];
              }

              v25 = [duplicateNotices3 countByEnumeratingWithState:&v41 objects:v56 count:16];
            }

            while (v25);
          }
        }

        deduplicatedNotices = [v17 deduplicatedNotices];
        v29 = deduplicatedNotices;
        if (deduplicatedNotices)
        {
          v30 = deduplicatedNotices;
        }

        else
        {
          v30 = v15;
        }

        v16 = v30;
      }

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
          *buf = 138412802;
          v51 = v32;
          v52 = 2112;
          v53 = v33;
          v54 = 2112;
          v55 = dsCopy;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Returning %@ deduplicated notices out of %@ total notices found for chatGUIDs: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = dsCopy;
          _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "No URLs found for chatGUIDs: %@", buf, 0xCu);
        }
      }

      v16 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "No chatGUIDs provided, returning empty array", buf, 2u);
      }
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)broadcastNoticesDidChangeForChatGUIDs:(id)ds
{
  v14 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v4 = dsCopy;
  if (dsCopy && [dsCopy count])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 136315394;
        v11 = "[IMDCollaborationNoticeController broadcastNoticesDidChangeForChatGUIDs:]";
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%s guids: %@.", &v10, 0x16u);
      }
    }

    v6 = +[IMDBroadcastController sharedProvider];
    broadcasterForChatListeners = [v6 broadcasterForChatListeners];
    [broadcasterForChatListeners collaborationNoticesDidChangeForChatGUIDs:v4];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[IMDCollaborationNoticeController broadcastNoticesDidChangeForChatGUIDs:]";
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%s No chatGUIDs provided, aborting broadcast.", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dismissNotice:(id)notice notify:(BOOL)notify
{
  notifyCopy = notify;
  v21 = *MEMORY[0x277D85DE8];
  noticeCopy = notice;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v16 = "[IMDCollaborationNoticeController dismissNotice:notify:]";
      v17 = 2112;
      v18 = noticeCopy;
      v19 = 1024;
      v20 = notifyCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "%s for notice: %@, notify: %{BOOL}d", buf, 0x1Cu);
    }
  }

  noticeStore = [(IMDCollaborationNoticeController *)self noticeStore];
  v9 = [noticeStore deleteNotice:noticeCopy];

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B6B6D10;
    v12[3] = &unk_278707C28;
    v14 = notifyCopy;
    v12[4] = self;
    v13 = noticeCopy;
    [(IMDCollaborationNoticeController *)self _chatGUIDsForNotice:v13 completionBlock:v12];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9118(noticeCopy);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)highlightCenterHighlightsDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  highlightCenter = [(IMDCollaborationNoticeController *)self highlightCenter];

  if (highlightCenter == changeCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "[IMDCollaborationNoticeController highlightCenterHighlightsDidChange:]";
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%s updating mapping of highlights to chats", &v8, 0xCu);
      }
    }

    [(IMDCollaborationNoticeController *)self _updateMappingHighlightsToChats];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)receiveHighlightEvent:(id)event fromSender:(id)sender guidString:(id)string date:(id)date
{
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  senderCopy = sender;
  stringCopy = string;
  dateCopy = date;
  v13 = +[IMDCollaborationNoticeTypeGenerator sharedGenerator];
  v14 = [v13 typeForHighlightEvent:eventCopy];

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      *buf = 138412802;
      v35 = eventCopy;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = senderCopy;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "highlightEvent: %@ (type: %@) from sender: %@", buf, 0x20u);
    }
  }

  if (v14 == -1)
  {
    mEMORY[0x277D1AC40] = IMLogHandleForCategory();
    if (os_log_type_enabled(mEMORY[0x277D1AC40], OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9210();
    }
  }

  else
  {
    mEMORY[0x277D1AC40] = [MEMORY[0x277D1AC40] sharedManager];
    highlightURL = [eventCopy highlightURL];
    v19 = [mEMORY[0x277D1AC40] urlMinusFragment:highlightURL onlyCKURL:1];

    if (v19)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = v19;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "\tnoticeURL: %@", buf, 0xCu);
        }
      }

      highlightURLs = [(IMDCollaborationNoticeController *)self highlightURLs];
      v22 = [highlightURLs containsObject:v19];

      if (v22)
      {
        highlightCenter = [(IMDCollaborationNoticeController *)self highlightCenter];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = sub_22B6B7344;
        v27[3] = &unk_278707F48;
        v28 = v19;
        v33 = v14;
        v29 = stringCopy;
        v30 = senderCopy;
        v31 = dateCopy;
        selfCopy = self;
        [highlightCenter getCollaborationHighlightForURL:v28 completionHandler:v27];

        v24 = v28;
      }

      else
      {
        v24 = IMLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D91A8();
        }
      }
    }

    else
    {
      v24 = IMLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D91DC();
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_processNotice:(id)notice
{
  noticeCopy = notice;
  noticeStore = [(IMDCollaborationNoticeController *)self noticeStore];
  [noticeStore saveNotice:noticeCopy];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B6B78E8;
  v6[3] = &unk_2787042B8;
  v6[4] = self;
  [(IMDCollaborationNoticeController *)self _chatGUIDsForNotice:noticeCopy completionBlock:v6];
}

- (void)updateNotice:(id)notice
{
  noticeCopy = notice;
  noticeStore = [(IMDCollaborationNoticeController *)self noticeStore];
  v6 = [noticeStore deleteNotice:noticeCopy];

  noticeStore2 = [(IMDCollaborationNoticeController *)self noticeStore];
  [noticeStore2 saveNotice:noticeCopy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6B7A64;
  v8[3] = &unk_2787042B8;
  v8[4] = self;
  [(IMDCollaborationNoticeController *)self _chatGUIDsForNotice:noticeCopy completionBlock:v8];
}

- (void)_updateMappingHighlightsToChats
{
  v30 = *MEMORY[0x277D85DE8];
  v16 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  highlightCenter = [(IMDCollaborationNoticeController *)self highlightCenter];
  highlights = [highlightCenter highlights];

  v7 = [highlights countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(highlights);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 URL];
        if (v12)
        {
          dispatch_group_enter(v4);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = sub_22B6B7DA8;
          v20[3] = &unk_278707F70;
          v20[4] = self;
          v21 = v16;
          v22 = v12;
          v23 = dictionary;
          v24 = v4;
          [(IMDCollaborationNoticeController *)self _mapChatGUIDsToHighlight:v11 completionBlock:v20];
        }
      }

      v8 = [highlights countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B8018;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v18 = v16;
  v19 = dictionary;
  v13 = dictionary;
  v14 = v16;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dispatcher:(id)dispatcher didReceiveNotice:(id)notice fromID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  noticeCopy = notice;
  dCopy = d;
  v11 = [IMDCollaborationNoticeDispatcher unarchiveNoticeTransmissionEvent:noticeCopy];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Received notice: %@ from %@", &v16, 0x16u);
    }
  }

  guidString = [noticeCopy guidString];
  date = [noticeCopy date];
  [(IMDCollaborationNoticeController *)self receiveHighlightEvent:v11 fromSender:dCopy guidString:guidString date:date];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dispatcher:(id)dispatcher didReceiveDismissalReflectionForNoticeGUIDs:(id)ds
{
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = dsCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        noticeStore = [(IMDCollaborationNoticeController *)self noticeStore];
        v14 = [noticeStore deleteNoticeWithGUIDString:v12];

        dispatch_group_enter(v7);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_22B6B8594;
        v20[3] = &unk_278707C78;
        v20[4] = self;
        v21 = v6;
        v22 = v7;
        [(IMDCollaborationNoticeController *)self _chatGUIDsForNoticeURL:v14 completionBlock:v20];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B86B8;
  block[3] = &unk_278702FA0;
  block[4] = self;
  v19 = v6;
  v15 = v6;
  dispatch_group_notify(v7, MEMORY[0x277D85CD0], block);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dispatcher:(id)dispatcher didReceiveDismissalRequest:(id)request fromID:(id)d
{
  v38[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  highlightCenter = [(IMDCollaborationNoticeController *)self highlightCenter];
  collaborationId = [requestCopy collaborationId];
  v36 = 0;
  v9 = [highlightCenter collaborationHighlightForIdentifier:collaborationId error:&v36];
  v10 = v36;

  if (v10)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D93A4(requestCopy);
    }
  }

  else if (v9 && ([v9 URL], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    array = [MEMORY[0x277CBEB18] array];
    noticeStore = [(IMDCollaborationNoticeController *)self noticeStore];
    v15 = [v9 URL];
    v38[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v17 = [noticeStore noticesForURLs:v16];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v17;
    v18 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        v21 = 0;
        do
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v11);
          }

          guidString = [*(*(&v32 + 1) + 8 * v21) guidString];
          [array addObject:guidString];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v19);
    }

    noticeStore2 = [(IMDCollaborationNoticeController *)self noticeStore];
    collaborationId2 = [requestCopy collaborationId];
    v25 = [noticeStore2 deleteAllNoticesWithCollaborationIdentifier:collaborationId2];

    noticeDispatcher = [(IMDCollaborationNoticeController *)self noticeDispatcher];
    [(IMDCollaborationNoticeController *)self dispatcher:noticeDispatcher didReceiveDismissalReflectionForNoticeGUIDs:array];

    v27 = [v9 URL];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_22B6B8A64;
    v30[3] = &unk_278703068;
    v30[4] = self;
    v31 = array;
    v28 = array;
    [(IMDCollaborationNoticeController *)self _chatGUIDsForNoticeURL:v27 completionBlock:v30];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9448(requestCopy);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_mapChatGUIDsToHighlight:(id)highlight completionBlock:(id)block
{
  highlightCopy = highlight;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x277D1AC78]);
  highlightCenter = [(IMDCollaborationNoticeController *)self highlightCenter];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B6B8BB4;
  v12[3] = &unk_278707F98;
  v13 = highlightCopy;
  v14 = blockCopy;
  v10 = highlightCopy;
  v11 = blockCopy;
  [v8 fetchAttributionsForHighlight:highlightCenter highlight:v10 completionBlock:v12];
}

- (void)_chatGUIDsForNotice:(id)notice completionBlock:(id)block
{
  blockCopy = block;
  noticeCopy = notice;
  metadata = [noticeCopy metadata];
  targetChatGUIDs = [metadata targetChatGUIDs];
  v10 = [targetChatGUIDs count];

  [noticeCopy metadata];
  if (v10)
    v11 = {;

    targetChatGUIDs2 = [v11 targetChatGUIDs];
    allObjects = [targetChatGUIDs2 allObjects];
    blockCopy[2](blockCopy, allObjects);
  }

  else
    v14 = {;

    contentURL = [v14 contentURL];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B6B8EE0;
    v16[3] = &unk_278707FC0;
    v17 = blockCopy;
    [(IMDCollaborationNoticeController *)self _chatGUIDsForNoticeURL:contentURL completionBlock:v16];
  }
}

- (void)_chatGUIDsForNoticeURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  if (lCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    highlightCenter = [(IMDCollaborationNoticeController *)self highlightCenter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B6B9048;
    v12[3] = &unk_278708010;
    v13 = lCopy;
    v15 = array;
    v16 = blockCopy;
    selfCopy = self;
    v10 = array;
    [highlightCenter getCollaborationHighlightForURL:v13 completionHandler:v12];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9574();
    }

    (*(blockCopy + 2))(blockCopy, 0);
  }
}

- (void)_handleChatParticipantsDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  object = [changeCopy object];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = object;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Participants changed in [%@]", &v15, 0xCu);
    }
  }

  if (object)
  {
    userInfo = [changeCopy userInfo];
    v8 = [userInfo objectForKey:@"__kIMDChatParticipantsDidChangeAddedParticipantsKey"];

    userInfo2 = [changeCopy userInfo];
    v10 = [userInfo2 objectForKey:@"__kIMDChatParticipantsDidChangeRemovedParticipantsKey"];

    if ([v8 count] || objc_msgSend(v10, "count"))
    {
      v11 = [v8 count];
      if (v11)
      {
        v12 = v8;
      }

      else
      {
        v12 = v10;
      }

      if (v11)
      {
        v13 = 8;
      }

      else
      {
        v13 = 9;
      }

      [(IMDCollaborationNoticeController *)self _shouldPostParticipantChangeNoticesForChat:object withParticipants:v12 forNoticeType:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_shouldPostParticipantChangeNoticesForChat:(id)chat withParticipants:(id)participants forNoticeType:(int64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  participantsCopy = participants;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = 134218242;
      typeCopy = type;
      v18 = 2112;
      v19 = participantsCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Notice type: %ld with participants: %@", &v16, 0x16u);
    }
  }

  highlightURLsForChatGUID = [(IMDCollaborationNoticeController *)self highlightURLsForChatGUID];
  guid = [chatCopy guid];
  v13 = [highlightURLsForChatGUID objectForKey:guid];

  if ([v13 count])
  {
    [(IMDCollaborationNoticeController *)self _generateParticipantChangeNoticesForChat:chatCopy highlights:v13 participants:participantsCopy noticeType:type];
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "No highlight found", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_generateParticipantChangeNoticesForChat:(id)chat highlights:(id)highlights participants:(id)participants noticeType:(int64_t)type
{
  v41 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  highlightsCopy = highlights;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = participants;
  v23 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v23)
  {
    v21 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v10;
        v11 = *(*(&v35 + 1) + 8 * v10);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v12 = highlightsCopy;
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v32;
          do
          {
            v16 = 0;
            do
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v31 + 1) + 8 * v16);
              highlightCenter = [(IMDCollaborationNoticeController *)self highlightCenter];
              v26[0] = MEMORY[0x277D85DD0];
              v26[1] = 3221225472;
              v26[2] = sub_22B6B99E0;
              v26[3] = &unk_2787080B0;
              v26[4] = self;
              v27 = chatCopy;
              v28 = v17;
              v29 = v11;
              typeCopy = type;
              [highlightCenter getCollaborationHighlightForURL:v17 completionHandler:v26];

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v14);
        }

        v10 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v23);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_generateParticipantChangeNoticesForChat:(id)chat highlight:(id)highlight participant:(id)participant noticeType:(int64_t)type checkedPrivileges:(BOOL)privileges messageGUID:(id)d
{
  chatCopy = chat;
  highlightCopy = highlight;
  participantCopy = participant;
  dCopy = d;
  if (privileges || ([chatCopy guid], v18 = objc_claimAutoreleasedReturnValue(), v19 = -[IMDCollaborationNoticeController _hasAdministrativePrivilegesForHighlight:chatGUID:](self, "_hasAdministrativePrivilegesForHighlight:chatGUID:", highlightCopy, v18), v18, v19))
  {
    v20 = MEMORY[0x277CC1E48];
    v21 = [highlightCopy URL];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22B6BA660;
    v23[3] = &unk_2787080D8;
    v24 = highlightCopy;
    v25 = chatCopy;
    typeCopy = type;
    v26 = dCopy;
    v27 = participantCopy;
    selfCopy = self;
    [v20 getAppLinkWithURL:v21 completionHandler:v23];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "No admin privileges, not showing group collaboration banner", buf, 2u);
    }
  }
}

- (BOOL)_hasAdministrativePrivilegesForHighlight:(id)highlight chatGUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  dCopy = d;
  highlightCenter = [(IMDCollaborationNoticeController *)self highlightCenter];
  v9 = [highlightCenter originalSenderForCollaborationHighlight:highlightCopy];

  handle = [v9 handle];
  if ([handle length] && (+[IMDAccountController sharedInstance](IMDAccountController, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "accountAssociatedWithHandle:", handle), v11, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [highlightCopy URL];
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Has privileges to change membership for URL: %@", &v18, 0xCu);
      }
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_highlightEligibleForSuggestAddingUser:(id)user
{
  userCopy = user;
  noticeDispatcher = [(IMDCollaborationNoticeController *)self noticeDispatcher];
  rateLimiter = [noticeDispatcher rateLimiter];
  v7 = [userCopy URL];
  creationDate = [rateLimiter dateLastUpdatedForURL:v7];

  if (!creationDate)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Could not get last updated date from rate limiter", v13, 2u);
      }
    }

    creationDate = [userCopy creationDate];
  }

  [creationDate timeIntervalSinceNow];
  v11 = (v10 / -86400.0) < 90;

  return v11;
}

- (void)_isShareBearURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = MEMORY[0x277CC1E48];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B6BAF58;
  v10[3] = &unk_278708100;
  v11 = lCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = lCopy;
  [v7 getAppLinkWithURL:v9 completionHandler:v10];
}

@end