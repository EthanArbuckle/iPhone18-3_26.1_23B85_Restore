@interface IMDCollaborationNoticeController
+ (id)sharedController;
- (BOOL)_hasAdministrativePrivilegesForHighlight:(id)a3 chatGUID:(id)a4;
- (BOOL)_highlightEligibleForSuggestAddingUser:(id)a3;
- (IMDCollaborationNoticeController)init;
- (NSDictionary)highlightURLsForChatGUID;
- (id)noticesForChatGUIDs:(id)a3;
- (void)_chatGUIDsForNotice:(id)a3 completionBlock:(id)a4;
- (void)_chatGUIDsForNoticeURL:(id)a3 completionBlock:(id)a4;
- (void)_generateParticipantChangeNoticesForChat:(id)a3 highlight:(id)a4 participant:(id)a5 noticeType:(int64_t)a6 checkedPrivileges:(BOOL)a7 messageGUID:(id)a8;
- (void)_generateParticipantChangeNoticesForChat:(id)a3 highlights:(id)a4 participants:(id)a5 noticeType:(int64_t)a6;
- (void)_handleChatParticipantsDidChange:(id)a3;
- (void)_isShareBearURL:(id)a3 completionHandler:(id)a4;
- (void)_mapChatGUIDsToHighlight:(id)a3 completionBlock:(id)a4;
- (void)_processNotice:(id)a3;
- (void)_shouldPostParticipantChangeNoticesForChat:(id)a3 withParticipants:(id)a4 forNoticeType:(int64_t)a5;
- (void)_updateMappingHighlightsToChats;
- (void)broadcastNoticesDidChangeForChatGUIDs:(id)a3;
- (void)dismissNotice:(id)a3 notify:(BOOL)a4;
- (void)dispatcher:(id)a3 didReceiveDismissalReflectionForNoticeGUIDs:(id)a4;
- (void)dispatcher:(id)a3 didReceiveDismissalRequest:(id)a4 fromID:(id)a5;
- (void)dispatcher:(id)a3 didReceiveNotice:(id)a4 fromID:(id)a5;
- (void)highlightCenterHighlightsDidChange:(id)a3;
- (void)receiveHighlightEvent:(id)a3 fromSender:(id)a4 guidString:(id)a5 date:(id)a6;
- (void)setHighlightURLsForChatGUID:(id)a3;
- (void)updateNotice:(id)a3;
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
      v15 = [MEMORY[0x277CBEAC0] dictionary];
      highlightURLsForChatGUID = v2->_highlightURLsForChatGUID;
      v2->_highlightURLsForChatGUID = v15;

      v17 = [MEMORY[0x277CBEB98] set];
      highlightURLs = v2->_highlightURLs;
      v2->_highlightURLs = v17;

      v2->_hasPopulatedHighlightTracking = 0;
      v19 = objc_alloc_init(IMDCollaborationNoticeStore);
      noticeStore = v2->_noticeStore;
      v2->_noticeStore = v19;

      v21 = [MEMORY[0x277CCAB98] defaultCenter];
      [v21 addObserver:v2 selector:sel__handleChatParticipantsDidChange_ name:@"__kIMDChatParticipantsDidChangeNotification" object:0];
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
  v3 = [(IMDCollaborationNoticeController *)self noticeDataQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B6B6068;
  v6[3] = &unk_278707ED0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setHighlightURLsForChatGUID:(id)a3
{
  v4 = a3;
  v5 = [(IMDCollaborationNoticeController *)self highlightURLsForChatGUID];
  v6 = [v4 isEqualToDictionary:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(IMDCollaborationNoticeController *)self noticeDataQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B6B619C;
    v8[3] = &unk_278702FA0;
    v8[4] = self;
    v9 = v4;
    dispatch_barrier_sync(v7, v8);
  }
}

- (id)noticesForChatGUIDs:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v40 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v5 = [(IMDCollaborationNoticeController *)self highlightURLsForChatGUID];
    v6 = [MEMORY[0x277CBEB58] set];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_22B6B6884;
    v47[3] = &unk_278704928;
    v7 = v6;
    v48 = v7;
    v8 = v5;
    v49 = v8;
    [v4 enumerateObjectsUsingBlock:v47];
    if ([v7 count])
    {
      v9 = [(IMDCollaborationNoticeController *)self noticeStore];
      v10 = [v7 allObjects];
      v39 = [v9 noticesForURLs:v10];

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
          v53 = v4;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found %@ notices for chatGUIDs: %@ before deduplication", buf, 0x16u);
        }
      }

      v15 = v12;
      v16 = v15;
      if ([v15 count] >= 2)
      {
        v17 = [MEMORY[0x277D1A938] deduplicateNotices:v15];
        v18 = [v17 duplicateNotices];
        v19 = [v18 count] == 0;

        if (!v19)
        {
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = MEMORY[0x277CCABB0];
              v22 = [v17 duplicateNotices];
              v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
              *buf = 138412546;
              v51 = v23;
              v52 = 2112;
              v53 = v4;
              _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Dismissing %@ duplicate notices for chatGUIDs: %@.", buf, 0x16u);
            }
          }

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v24 = [v17 duplicateNotices];
          v25 = [v24 countByEnumeratingWithState:&v41 objects:v56 count:16];
          if (v25)
          {
            v26 = *v42;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v42 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                [(IMDCollaborationNoticeController *)self dismissNotice:*(*(&v41 + 1) + 8 * i) notify:0];
              }

              v25 = [v24 countByEnumeratingWithState:&v41 objects:v56 count:16];
            }

            while (v25);
          }
        }

        v28 = [v17 deduplicatedNotices];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
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
          v55 = v4;
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
          v51 = v4;
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

- (void)broadcastNoticesDidChangeForChatGUIDs:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
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
    v7 = [v6 broadcasterForChatListeners];
    [v7 collaborationNoticesDidChangeForChatGUIDs:v4];
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

- (void)dismissNotice:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v16 = "[IMDCollaborationNoticeController dismissNotice:notify:]";
      v17 = 2112;
      v18 = v6;
      v19 = 1024;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "%s for notice: %@, notify: %{BOOL}d", buf, 0x1Cu);
    }
  }

  v8 = [(IMDCollaborationNoticeController *)self noticeStore];
  v9 = [v8 deleteNotice:v6];

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B6B6D10;
    v12[3] = &unk_278707C28;
    v14 = v4;
    v12[4] = self;
    v13 = v6;
    [(IMDCollaborationNoticeController *)self _chatGUIDsForNotice:v13 completionBlock:v12];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9118(v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)highlightCenterHighlightsDidChange:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCollaborationNoticeController *)self highlightCenter];

  if (v5 == v4)
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

- (void)receiveHighlightEvent:(id)a3 fromSender:(id)a4 guidString:(id)a5 date:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v26 = a5;
  v12 = a6;
  v13 = +[IMDCollaborationNoticeTypeGenerator sharedGenerator];
  v14 = [v13 typeForHighlightEvent:v10];

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      *buf = 138412802;
      v35 = v10;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "highlightEvent: %@ (type: %@) from sender: %@", buf, 0x20u);
    }
  }

  if (v14 == -1)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9210();
    }
  }

  else
  {
    v17 = [MEMORY[0x277D1AC40] sharedManager];
    v18 = [v10 highlightURL];
    v19 = [v17 urlMinusFragment:v18 onlyCKURL:1];

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

      v21 = [(IMDCollaborationNoticeController *)self highlightURLs];
      v22 = [v21 containsObject:v19];

      if (v22)
      {
        v23 = [(IMDCollaborationNoticeController *)self highlightCenter];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = sub_22B6B7344;
        v27[3] = &unk_278707F48;
        v28 = v19;
        v33 = v14;
        v29 = v26;
        v30 = v11;
        v31 = v12;
        v32 = self;
        [v23 getCollaborationHighlightForURL:v28 completionHandler:v27];

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

- (void)_processNotice:(id)a3
{
  v4 = a3;
  v5 = [(IMDCollaborationNoticeController *)self noticeStore];
  [v5 saveNotice:v4];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B6B78E8;
  v6[3] = &unk_2787042B8;
  v6[4] = self;
  [(IMDCollaborationNoticeController *)self _chatGUIDsForNotice:v4 completionBlock:v6];
}

- (void)updateNotice:(id)a3
{
  v4 = a3;
  v5 = [(IMDCollaborationNoticeController *)self noticeStore];
  v6 = [v5 deleteNotice:v4];

  v7 = [(IMDCollaborationNoticeController *)self noticeStore];
  [v7 saveNotice:v4];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6B7A64;
  v8[3] = &unk_2787042B8;
  v8[4] = self;
  [(IMDCollaborationNoticeController *)self _chatGUIDsForNotice:v4 completionBlock:v8];
}

- (void)_updateMappingHighlightsToChats
{
  v30 = *MEMORY[0x277D85DE8];
  v16 = [MEMORY[0x277CBEB58] set];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(IMDCollaborationNoticeController *)self highlightCenter];
  v6 = [v5 highlights];

  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v6);
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
          v23 = v3;
          v24 = v4;
          [(IMDCollaborationNoticeController *)self _mapChatGUIDsToHighlight:v11 completionBlock:v20];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B8018;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v18 = v16;
  v19 = v3;
  v13 = v3;
  v14 = v16;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dispatcher:(id)a3 didReceiveNotice:(id)a4 fromID:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [IMDCollaborationNoticeDispatcher unarchiveNoticeTransmissionEvent:v9];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Received notice: %@ from %@", &v16, 0x16u);
    }
  }

  v13 = [v9 guidString];
  v14 = [v9 date];
  [(IMDCollaborationNoticeController *)self receiveHighlightEvent:v11 fromSender:v10 guidString:v13 date:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dispatcher:(id)a3 didReceiveDismissalReflectionForNoticeGUIDs:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
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
        v13 = [(IMDCollaborationNoticeController *)self noticeStore];
        v14 = [v13 deleteNoticeWithGUIDString:v12];

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

- (void)dispatcher:(id)a3 didReceiveDismissalRequest:(id)a4 fromID:(id)a5
{
  v38[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(IMDCollaborationNoticeController *)self highlightCenter];
  v8 = [v6 collaborationId];
  v36 = 0;
  v9 = [v7 collaborationHighlightForIdentifier:v8 error:&v36];
  v10 = v36;

  if (v10)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D93A4(v6);
    }
  }

  else if (v9 && ([v9 URL], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [MEMORY[0x277CBEB18] array];
    v14 = [(IMDCollaborationNoticeController *)self noticeStore];
    v15 = [v9 URL];
    v38[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v17 = [v14 noticesForURLs:v16];

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

          v22 = [*(*(&v32 + 1) + 8 * v21) guidString];
          [v13 addObject:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v19);
    }

    v23 = [(IMDCollaborationNoticeController *)self noticeStore];
    v24 = [v6 collaborationId];
    v25 = [v23 deleteAllNoticesWithCollaborationIdentifier:v24];

    v26 = [(IMDCollaborationNoticeController *)self noticeDispatcher];
    [(IMDCollaborationNoticeController *)self dispatcher:v26 didReceiveDismissalReflectionForNoticeGUIDs:v13];

    v27 = [v9 URL];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_22B6B8A64;
    v30[3] = &unk_278703068;
    v30[4] = self;
    v31 = v13;
    v28 = v13;
    [(IMDCollaborationNoticeController *)self _chatGUIDsForNoticeURL:v27 completionBlock:v30];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9448(v6);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_mapChatGUIDsToHighlight:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D1AC78]);
  v9 = [(IMDCollaborationNoticeController *)self highlightCenter];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B6B8BB4;
  v12[3] = &unk_278707F98;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v8 fetchAttributionsForHighlight:v9 highlight:v10 completionBlock:v12];
}

- (void)_chatGUIDsForNotice:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 metadata];
  v9 = [v8 targetChatGUIDs];
  v10 = [v9 count];

  [v7 metadata];
  if (v10)
    v11 = {;

    v12 = [v11 targetChatGUIDs];
    v13 = [v12 allObjects];
    v6[2](v6, v13);
  }

  else
    v14 = {;

    v15 = [v14 contentURL];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B6B8EE0;
    v16[3] = &unk_278707FC0;
    v17 = v6;
    [(IMDCollaborationNoticeController *)self _chatGUIDsForNoticeURL:v15 completionBlock:v16];
  }
}

- (void)_chatGUIDsForNoticeURL:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [(IMDCollaborationNoticeController *)self highlightCenter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B6B9048;
    v12[3] = &unk_278708010;
    v13 = v6;
    v15 = v8;
    v16 = v7;
    v14 = self;
    v10 = v8;
    [v9 getCollaborationHighlightForURL:v13 completionHandler:v12];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9574();
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)_handleChatParticipantsDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Participants changed in [%@]", &v15, 0xCu);
    }
  }

  if (v5)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:@"__kIMDChatParticipantsDidChangeAddedParticipantsKey"];

    v9 = [v4 userInfo];
    v10 = [v9 objectForKey:@"__kIMDChatParticipantsDidChangeRemovedParticipantsKey"];

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

      [(IMDCollaborationNoticeController *)self _shouldPostParticipantChangeNoticesForChat:v5 withParticipants:v12 forNoticeType:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_shouldPostParticipantChangeNoticesForChat:(id)a3 withParticipants:(id)a4 forNoticeType:(int64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = 134218242;
      v17 = a5;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Notice type: %ld with participants: %@", &v16, 0x16u);
    }
  }

  v11 = [(IMDCollaborationNoticeController *)self highlightURLsForChatGUID];
  v12 = [v8 guid];
  v13 = [v11 objectForKey:v12];

  if ([v13 count])
  {
    [(IMDCollaborationNoticeController *)self _generateParticipantChangeNoticesForChat:v8 highlights:v13 participants:v9 noticeType:a5];
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

- (void)_generateParticipantChangeNoticesForChat:(id)a3 highlights:(id)a4 participants:(id)a5 noticeType:(int64_t)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v22 = a4;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a5;
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
        v12 = v22;
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
              v18 = [(IMDCollaborationNoticeController *)self highlightCenter];
              v26[0] = MEMORY[0x277D85DD0];
              v26[1] = 3221225472;
              v26[2] = sub_22B6B99E0;
              v26[3] = &unk_2787080B0;
              v26[4] = self;
              v27 = v9;
              v28 = v17;
              v29 = v11;
              v30 = a6;
              [v18 getCollaborationHighlightForURL:v17 completionHandler:v26];

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

- (void)_generateParticipantChangeNoticesForChat:(id)a3 highlight:(id)a4 participant:(id)a5 noticeType:(int64_t)a6 checkedPrivileges:(BOOL)a7 messageGUID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (a7 || ([v14 guid], v18 = objc_claimAutoreleasedReturnValue(), v19 = -[IMDCollaborationNoticeController _hasAdministrativePrivilegesForHighlight:chatGUID:](self, "_hasAdministrativePrivilegesForHighlight:chatGUID:", v15, v18), v18, v19))
  {
    v20 = MEMORY[0x277CC1E48];
    v21 = [v15 URL];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22B6BA660;
    v23[3] = &unk_2787080D8;
    v24 = v15;
    v25 = v14;
    v29 = a6;
    v26 = v17;
    v27 = v16;
    v28 = self;
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

- (BOOL)_hasAdministrativePrivilegesForHighlight:(id)a3 chatGUID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDCollaborationNoticeController *)self highlightCenter];
  v9 = [v8 originalSenderForCollaborationHighlight:v6];

  v10 = [v9 handle];
  if ([v10 length] && (+[IMDAccountController sharedInstance](IMDAccountController, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "accountAssociatedWithHandle:", v10), v11, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v6 URL];
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

- (BOOL)_highlightEligibleForSuggestAddingUser:(id)a3
{
  v4 = a3;
  v5 = [(IMDCollaborationNoticeController *)self noticeDispatcher];
  v6 = [v5 rateLimiter];
  v7 = [v4 URL];
  v8 = [v6 dateLastUpdatedForURL:v7];

  if (!v8)
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

    v8 = [v4 creationDate];
  }

  [v8 timeIntervalSinceNow];
  v11 = (v10 / -86400.0) < 90;

  return v11;
}

- (void)_isShareBearURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CC1E48];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B6BAF58;
  v10[3] = &unk_278708100;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 getAppLinkWithURL:v9 completionHandler:v10];
}

@end