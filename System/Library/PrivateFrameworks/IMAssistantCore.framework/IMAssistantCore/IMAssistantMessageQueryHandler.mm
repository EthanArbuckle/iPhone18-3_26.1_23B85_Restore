@interface IMAssistantMessageQueryHandler
+ (OS_dispatch_queue)IMAssistantIMSPIQueue;
- (BOOL)messageIsFromBlackholedChat:(id)a3;
- (BOOL)resolvePersons:(id)a3 forIntent:(id)a4 completionHandler:(id)a5;
- (id)allIMHandlesForHandle:(id)a3;
- (id)chatParticipantForSPIHandle:(id)a3;
- (id)chatParticipantsForSPIHandles:(id)a3;
- (id)chatsContainingRequiredParticipants:(id)a3;
- (id)chatsForChatNames:(id)a3;
- (id)chatsWithConversationIdentifiers:(id)a3;
- (id)messageContentsPredicate:(id)a3;
- (id)recipientsPredicate:(id)a3;
- (id)resolveDateTimeRange:(id)a3;
- (id)sendersPredicate:(id)a3;
- (id)spokenPhrasesForSpeakableStrings:(id)a3;
- (id)unifiedContactIdentifiersForPerson:(id)a3;
- (id)vocabularyIdentifiersFromSpeakableStrings:(id)a3;
- (void)SPIQueryMessagesForChats:(id)a3 onlyUnread:(BOOL)a4 limit:(int64_t)a5 completion:(id)a6;
- (void)SPIQueryMessagesForChatsWithIdentifiers:(id)a3 services:(id)a4 onlyUnread:(BOOL)a5 limit:(int64_t)a6 completion:(id)a7;
- (void)SPIQueryMessagesForSenders:(id)a3 onlyUnread:(BOOL)a4 limit:(int64_t)a5 completion:(id)a6;
- (void)SPIQueryMessagesWithGUIDs:(id)a3 completion:(id)a4;
- (void)SPIQueryMessagesWithRowIDs:(id)a3 completion:(id)a4;
- (void)SPIQueryUnreadMessages:(int64_t)a3 completion:(id)a4;
- (void)handlesAndServicesForChatGuids:(id)a3 handles:(id *)a4 services:(id *)a5;
- (void)handlesAndServicesForPersons:(id)a3 handles:(id *)a4 services:(id *)a5;
- (void)messagesMatchingMessageIdentifiers:(id)a3 completion:(id)a4;
- (void)searchMessagesWithContents:(id)a3 messageIdentifiers:(id)a4 notificationIdentifiers:(id)a5 chatNames:(id)a6 conversationIdentifiers:(id)a7 recipients:(id)a8 senders:(id)a9 dateTimeRange:(id)a10 attributes:(unint64_t)a11 completion:(id)a12;
@end

@implementation IMAssistantMessageQueryHandler

+ (OS_dispatch_queue)IMAssistantIMSPIQueue
{
  if (qword_28118F698 != -1)
  {
    sub_25479FA04();
  }

  v3 = qword_28118F690;

  return v3;
}

- (BOOL)resolvePersons:(id)a3 forIntent:(id)a4 completionHandler:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v36 = a4;
  v8 = a5;
  if ([v7 count])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v46 = v7;
      v47 = 2112;
      v48 = v36;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Resolving persons: %@ for intent: %@", buf, 0x16u);
    }

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = v7;
    v39 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v39)
    {
      v34 = v8;
      v35 = v7;
      v13 = *v41;
      v37 = 1;
      v38 = v11;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          v16 = IMLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v46 = v15;
            _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "Resolving person: %@", buf, 0xCu);
          }

          v17 = [v15 __im_assistant_allContactIdentifiers];
          if ([v17 count])
          {
            v18 = IMLogHandleForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [v17 count];
              *buf = 134218242;
              v46 = v19;
              v47 = 2112;
              v48 = v17;
              _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Successfully resolved person to %ld contact identifiers: %@", buf, 0x16u);
            }

            [v11 addObject:v15];
            v20 = [MEMORY[0x277CD3EA0] successWithResolvedPerson:v15];
          }

          else
          {
            v21 = v13;
            v22 = [v15 personHandle];
            v23 = [v22 value];
            v24 = [v23 length];

            v25 = IMLogHandleForCategory();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
            if (v24)
            {
              if (v26)
              {
                v27 = [v15 personHandle];
                v28 = [v27 value];
                *buf = 138412290;
                v46 = v28;
                _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Successfully resolved person to handle: %@", buf, 0xCu);
              }

              v11 = v38;
              [v38 addObject:v15];
              v20 = [MEMORY[0x277CD3EA0] successWithResolvedPerson:v15];
              v13 = v21;
            }

            else
            {
              v13 = v21;
              if (v26)
              {
                v29 = [v15 displayName];
                *buf = 138412546;
                v46 = v29;
                v47 = 2112;
                v48 = v36;
                _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Could not resolve person %@ for intent %@", buf, 0x16u);
              }

              v20 = [MEMORY[0x277CD3EA0] unsupported];
              v37 = 0;
              v11 = v38;
            }
          }

          [v10 addObject:{v20, v34}];
        }

        v39 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v39);

      v8 = v34;
      if ((v37 & 1) == 0)
      {
        v34[2](v34, v10, 0);
        v30 = 0;
        v7 = v35;
        goto LABEL_30;
      }

      v7 = v35;
    }

    else
    {
    }

    v31 = [v11 copy];
    v8[2](v8, v10, v31);

    v30 = 1;
LABEL_30:

    goto LABEL_31;
  }

  v8[2](v8, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  v30 = 0;
LABEL_31:

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)resolveDateTimeRange:(id)a3
{
  if (a3)
  {
    [MEMORY[0x277CD3B70] successWithResolvedDateComponentsRange:?];
  }

  else
  {
    [MEMORY[0x277CD3B70] notRequired];
  }
  v3 = ;

  return v3;
}

- (id)allIMHandlesForHandle:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [MEMORY[0x277D18D28] sharedInstance];
  v6 = [v5 accounts];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) imHandleWithID:v3];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v4 array];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)SPIQueryMessagesForChats:(id)a3 onlyUnread:(BOOL)a4 limit:(int64_t)a5 completion:(id)a6
{
  v29 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v31 = a6;
  v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
        v17 = [v16 chatDataSource];
        v18 = [v17 allGUIDsForChat:v15];

        if (v18)
        {
          v19 = IMLogHandleForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [v18 count];
            *buf = 134218498;
            v39 = v20;
            v40 = 2112;
            v41 = v18;
            v42 = 2112;
            v43 = v15;
            _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Found %ld chat guids: %@, matching chat: %@", buf, 0x20u);
          }

          [v9 addObjectsFromArray:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = [v9 array];
  v32 = v22;
  v33 = v21;
  [(IMAssistantMessageQueryHandler *)self handlesAndServicesForChatGuids:v23 handles:&v33 services:&v32];
  v24 = v33;

  v25 = v32;
  v26 = [v24 copy];
  v27 = [v25 copy];

  [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesForChatsWithIdentifiers:v26 services:v27 onlyUnread:v29 limit:a5 completion:v31];
  v28 = *MEMORY[0x277D85DE8];
}

- (void)SPIQueryMessagesForChatsWithIdentifiers:(id)a3 services:(id)a4 onlyUnread:(BOOL)a5 limit:(int64_t)a6 completion:(id)a7
{
  v9 = a5;
  v41 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v15 = os_signpost_id_generate(v14);

  v16 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "queryMessagesWithChatIdentifiers", &unk_2547CAD0B, buf, 2u);
  }

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = sub_2547C37BC;
  v30 = &unk_279786380;
  v32 = v15;
  v18 = v13;
  v31 = v18;
  v19 = MEMORY[0x259C19590](&v27);
  v20 = IMLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v34 = v12;
    v35 = 2112;
    v36 = v11;
    v37 = 1024;
    v38 = v9;
    v39 = 2048;
    v40 = a6;
    _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, "Calling IMSPIQueryMessagesWithChatIdentifiers services: %@, chatIdentifiers: %@, onlyUnread: %d, limit: %ld", buf, 0x26u);
  }

  v21 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v27];
  v22 = IMSPIQueryMessagesWithChatIdentifiersAndQOS();

  if ((v22 & 1) == 0)
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "IMSPIQueryMessagesWithChatIdentifiers failed", buf, 2u);
    }

    v24 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
    v25 = v24;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v25, OS_SIGNPOST_INTERVAL_END, v15, "queryMessagesWithChatIdentifiers", &unk_2547CAD0B, buf, 2u);
    }

    (*(v18 + 2))(v18, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handlesAndServicesForPersons:(id)a3 handles:(id *)a4 services:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2547C3B60;
  v42[3] = &unk_279786BE8;
  v26 = v7;
  v43 = v26;
  v8 = MEMORY[0x259C19590](v42);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    v29 = *v39;
    do
    {
      v12 = 0;
      v30 = v10;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        v14 = [v13 __im_assistant_allContactIdentifiers];
        v15 = [v13 personHandle];
        v16 = [v15 value];

        if ([v14 count])
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v17 = v14;
          v18 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v18)
          {
            v19 = v18;
            v32 = v16;
            v33 = v14;
            v20 = *v35;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v35 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [(IMAssistantMessageHandler *)self contactWithIdentifier:*(*(&v34 + 1) + 8 * i)];
                v23 = [v22 __im_assistant_allIMHandles];
                (v8)[2](v8, v23);
              }

              v19 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
            }

            while (v19);
            v11 = v29;
            v10 = v30;
            v16 = v32;
            v14 = v33;
          }
        }

        else
        {
          if (![v16 length])
          {
            goto LABEL_18;
          }

          v17 = [(IMAssistantMessageQueryHandler *)self allIMHandlesForHandle:v16];
          (v8)[2](v8, v17);
        }

LABEL_18:
        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v10);
  }

  v24 = [v26 array];
  [(IMAssistantMessageQueryHandler *)self handlesAndServicesForChatGuids:v24 handles:a4 services:a5];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handlesAndServicesForChatGuids:(id)a3 handles:(id *)a4 services:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        IMComponentsFromChatGUID();
        v13 = 0;
        v14 = 0;
        if ([v13 length] && objc_msgSend(v14, "length"))
        {
          [v19 addObject:v13];
          [v6 addObject:v14];
        }

        else
        {
          v15 = IMLogHandleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Could not parse identifier or service from chat GUID: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  if (a4)
  {
    *a4 = [v19 copy];
  }

  if (a5)
  {
    *a5 = [v6 copy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)SPIQueryMessagesForSenders:(id)a3 onlyUnread:(BOOL)a4 limit:(int64_t)a5 completion:(id)a6
{
  v7 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v30 = 0;
  v31 = 0;
  [(IMAssistantMessageQueryHandler *)self handlesAndServicesForPersons:a3 handles:&v31 services:&v30];
  v11 = v31;
  v12 = v30;
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v33 = v11;
    v34 = 2112;
    v35 = v12;
    v36 = 1024;
    v37 = v7;
    v38 = 2048;
    v39 = a5;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Performing query for messages from handles: %@ services: %@ onlyUnread: %d, limit: %ld", buf, 0x26u);
  }

  v14 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v15 = os_signpost_id_generate(v14);

  v16 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "queryMessagesWithIDs", &unk_2547CAD0B, buf, 2u);
  }

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_2547C42AC;
  v27 = &unk_279786380;
  v29 = v15;
  v18 = v10;
  v28 = v18;
  v19 = MEMORY[0x259C19590](&v24);
  v20 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v24];
  v21 = IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS();

  if ((v21 & 1) == 0)
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "IMSPIQueryMessagesWithIDsWithOnlyUnread failed", buf, 2u);
    }

    v19[2](v19, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)SPIQueryUnreadMessages:(int64_t)a3 completion:(id)a4
{
  v4 = a4;
  v5 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "queryUnreadMessages", &unk_2547CAD0B, buf, 2u);
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_2547C4510;
  v17 = &unk_279786380;
  v19 = v6;
  v9 = v4;
  v18 = v9;
  v10 = MEMORY[0x259C19590](&v14);
  v11 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v14];
  v12 = IMSPIQueryUnreadMessagesWithQOS();

  if ((v12 & 1) == 0)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "IMSPIQueryUnreadMessages failed", buf, 2u);
    }

    v10[2](v10, 0);
  }
}

- (void)SPIQueryMessagesWithGUIDs:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v8 = os_signpost_id_generate(v7);

  v9 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "queryMessagesWithGUIDs", &unk_2547CAD0B, buf, 2u);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2547C4784;
  v19 = &unk_279786380;
  v21 = v8;
  v11 = v5;
  v20 = v11;
  v12 = MEMORY[0x259C19590](&v16);
  v13 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v16];
  v14 = IMSPIQueryMessagesWithGUIDsAndQOS();

  if ((v14 & 1) == 0)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "IMSPIQueryMessagesWithGUIDs failed", buf, 2u);
    }

    v12[2](v12, 0);
  }
}

- (void)SPIQueryMessagesWithRowIDs:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v8 = os_signpost_id_generate(v7);

  v9 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "queryMessagesWithRowIDs", &unk_2547CAD0B, buf, 2u);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2547C49F8;
  v19 = &unk_279786380;
  v21 = v8;
  v11 = v5;
  v20 = v11;
  v12 = MEMORY[0x259C19590](&v16);
  v13 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v16];
  v14 = IMSPIQueryMessagesWithRowIDsAndQOS();

  if ((v14 & 1) == 0)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "IMSPIQueryMessagesWithRowIDs failed", buf, 2u);
    }

    v12[2](v12, 0);
  }
}

- (id)recipientsPredicate:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [(IMAssistantMessageQueryHandler *)self unifiedContactIdentifiersForPerson:v11];
          [v5 setObject:v12 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v13 = MEMORY[0x277CCAC30];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2547C4C8C;
    v18[3] = &unk_279786C10;
    v19 = v6;
    v20 = v5;
    v14 = v5;
    v15 = [v13 predicateWithBlock:v18];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)sendersPredicate:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [(IMAssistantMessageQueryHandler *)self unifiedContactIdentifiersForPerson:v11];
          [v5 setObject:v12 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v13 = MEMORY[0x277CCAC30];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2547C5054;
    v18[3] = &unk_279786C38;
    v19 = v6;
    v20 = v5;
    v14 = v5;
    v15 = [v13 predicateWithBlock:v18];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)spokenPhrasesForSpeakableStrings:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 spokenPhrase];
        if ([v12 length])
        {
          [v5 addObject:v12];
        }

        v13 = [v11 alternativeSpeakableMatches];
        if ([v13 count])
        {
          v14 = [(IMAssistantMessageQueryHandler *)self spokenPhrasesForSpeakableStrings:v13];
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 array];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)vocabularyIdentifiersFromSpeakableStrings:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 vocabularyIdentifier];
        if ([v12 length])
        {
          [v5 addObject:v12];
        }

        v13 = [v11 alternativeSpeakableMatches];
        if ([v13 count])
        {
          v14 = [(IMAssistantMessageQueryHandler *)self vocabularyIdentifiersFromSpeakableStrings:v13];
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 array];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)messageContentsPredicate:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CCAB68] string];
    v5 = [MEMORY[0x277CBEB18] array];
    if ([v3 count])
    {
      v6 = 0;
      do
      {
        if (v6)
        {
          [v4 appendString:@" AND "];
        }

        [v4 appendString:@"self LIKE[cd] %@"];
        v7 = MEMORY[0x277CCACA8];
        v8 = [v3 objectAtIndexedSubscript:v6];
        v9 = [v7 stringWithFormat:@"*%@*", v8];
        [v5 addObject:v9];

        ++v6;
      }

      while (v6 < [v3 count]);
    }

    v10 = MEMORY[0x277CCAC30];
    v11 = [v4 copy];
    v12 = [v10 predicateWithFormat:v11 argumentArray:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)chatParticipantForSPIHandle:(id)a3
{
  v4 = a3;
  v5 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingSPIHandle:v4];
  v6 = [IMAssistantMessageSearchChatParticipant alloc];
  v7 = [v4 address];
  v8 = [v4 isMe];

  v9 = [(IMAssistantMessageSearchChatParticipant *)v6 initWithHandle:v7 contactIdentifiers:v5 isMe:v8];

  return v9;
}

- (id)chatParticipantsForSPIHandles:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IMAssistantMessageQueryHandler *)self chatParticipantForSPIHandle:*(*(&v15 + 1) + 8 * i), v15];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)unifiedContactIdentifiersForPerson:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 __im_assistant_allContactIdentifiers];
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IMAssistantMessageHandler *)self unifiedContactIdentifierForContactIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 array];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)chatsContainingRequiredParticipants:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v6 = [v5 chatDataSource];
  v7 = [v6 allExistingChats];

  v48 = [MEMORY[0x277CBEB18] array];
  v58 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(v4, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v77;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v77 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v76 + 1) + 8 * i);
        v13 = [(IMAssistantMessageQueryHandler *)self unifiedContactIdentifiersForPerson:v12, v48];
        [v58 setObject:v13 forKey:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v9);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v49 = v7;
  v52 = [v49 countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v52)
  {
    v50 = *v73;
    v51 = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v73 != v50)
        {
          objc_enumerationMutation(v49);
        }

        v55 = v14;
        v15 = *(*(&v72 + 1) + 8 * v14);
        v16 = [(IMAssistantMessageHandler *)self contactIdentifiersForParticipantsInChat:v15, v48];
        v53 = v15;
        v17 = [v15 participantsWithState:16];
        v57 = [v17 __imArrayByApplyingBlock:&unk_2866931D8];

        v18 = objc_alloc_init(MEMORY[0x277CBEB40]);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v19 = v16;
        v20 = [v19 countByEnumeratingWithState:&v68 objects:v86 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v69;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v69 != v22)
              {
                objc_enumerationMutation(v19);
              }

              [v18 addObjectsFromArray:*(*(&v68 + 1) + 8 * j)];
            }

            v21 = [v19 countByEnumeratingWithState:&v68 objects:v86 count:16];
          }

          while (v21);
        }

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v59 = obj;
        v24 = [v59 countByEnumeratingWithState:&v64 objects:v85 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v65;
          while (2)
          {
            v27 = 0;
            v56 = v25;
            do
            {
              if (*v65 != v26)
              {
                objc_enumerationMutation(v59);
              }

              v28 = *(*(&v64 + 1) + 8 * v27);
              if (([v28 isMe] & 1) == 0)
              {
                v29 = [v58 objectForKey:v28];
                if ([v29 count])
                {
                  v62 = 0u;
                  v63 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v30 = v29;
                  v31 = [v30 countByEnumeratingWithState:&v60 objects:v84 count:16];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = *v61;
                    while (2)
                    {
                      for (k = 0; k != v32; ++k)
                      {
                        if (*v61 != v33)
                        {
                          objc_enumerationMutation(v30);
                        }

                        if ([v18 containsObject:*(*(&v60 + 1) + 8 * k)])
                        {

                          v25 = v56;
                          goto LABEL_48;
                        }
                      }

                      v32 = [v30 countByEnumeratingWithState:&v60 objects:v84 count:16];
                      if (v32)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v25 = v56;
                }

                v35 = [v28 personHandle];
                v36 = [v35 value];
                v37 = [v36 length];

                if (!v37)
                {
                  goto LABEL_51;
                }

                v38 = [v28 personHandle];
                v39 = [v38 value];
                if (MEMORY[0x259C19130]() || IMStringIsEmail())
                {
                  v40 = IMCanonicalizeFormattedString();
                }

                else
                {
                  if (!MEMORY[0x259C19110](v39))
                  {
                    v41 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v81 = v39;
                      _os_log_impl(&dword_25479E000, v41, OS_LOG_TYPE_INFO, "Could not canonicalize handle %@ because it is neither a phone number nor an email address.", buf, 0xCu);
                    }
                  }

                  v40 = v39;
                }

                v42 = v40;

                v43 = [v57 containsObject:v42];
                if ((v43 & 1) == 0)
                {
LABEL_51:

                  goto LABEL_52;
                }
              }

LABEL_48:
              ++v27;
            }

            while (v27 != v25);
            v25 = [v59 countByEnumeratingWithState:&v64 objects:v85 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        [v48 addObject:v53];
LABEL_52:

        v14 = v55 + 1;
        self = v51;
      }

      while (v55 + 1 != v52);
      v52 = [v49 countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v52);
  }

  v44 = IMLogHandleForCategory();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = [v48 count];
    *buf = 134218242;
    v81 = v45;
    v82 = 2112;
    v83 = v48;
    _os_log_impl(&dword_25479E000, v44, OS_LOG_TYPE_INFO, "Found %ld chats matching participants. Chats: %@", buf, 0x16u);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)chatsWithConversationIdentifiers:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v6 = [v5 chatDataSource];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = IMAssistantChatIdentifierFromConversationIdentifier(v12);
        v14 = [v6 existingChatWithChatIdentifier:v13];
        v15 = IMLogHandleForCategory();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
        if (v14)
        {
          if (v16)
          {
            *buf = 138412546;
            v26 = v12;
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Found exsting chat matching conversationIdentifier: %@ chatIdentifier: %@", buf, 0x16u);
          }

          [v20 addObject:v14];
        }

        else
        {
          if (v16)
          {
            *buf = 138412546;
            v26 = v12;
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Could not find chat matching conversationIdentifier: %@ chatIdentifier: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }

  v17 = [v20 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)chatsForChatNames:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v24 = [(IMAssistantMessageQueryHandler *)self vocabularyIdentifiersFromSpeakableStrings:v4];
    v6 = [v24 __imArrayByApplyingBlock:&unk_2866931F8];
    v25 = v4;
    v7 = [(IMAssistantMessageQueryHandler *)self spokenPhrasesForSpeakableStrings:v4];
    v8 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    v9 = [v8 chatDataSource];
    v10 = [v9 allExistingChats];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v16 chatIdentifier];
          v18 = [v16 displayName];
          if ([v17 length] && (objc_msgSend(v6, "containsObject:", v17) & 1) != 0 || objc_msgSend(v18, "length") && objc_msgSend(v7, "containsObject:", v18))
          {
            [v5 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v13);
    }

    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v5 count];
      *buf = 134218754;
      v31 = v20;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Found %ld chats matching chat names:%@ vocabularyIdentifiers:%@ chats:%@", buf, 0x2Au);
    }

    v21 = [v5 array];

    v4 = v25;
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)searchMessagesWithContents:(id)a3 messageIdentifiers:(id)a4 notificationIdentifiers:(id)a5 chatNames:(id)a6 conversationIdentifiers:(id)a7 recipients:(id)a8 senders:(id)a9 dateTimeRange:(id)a10 attributes:(unint64_t)a11 completion:(id)a12
{
  v99 = *MEMORY[0x277D85DE8];
  v81 = a3;
  v72 = a4;
  v73 = a5;
  v80 = a6;
  v79 = a7;
  v18 = a8;
  v19 = a9;
  v66 = a12;
  v20 = a10;
  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = @"NO";
    if ((((a11 & 1) == 0) & (a11 >> 1)) != 0)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    if ((a11 & ((a11 & 2) == 0)) != 0)
    {
      v22 = @"YES";
    }

    *buf = 138412546;
    v96 = v23;
    v97 = 2112;
    v98 = v22;
    _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Searching for messages with attributes onlyUnreadMessages: %@ | onlyReadMessages %@", buf, 0x16u);
  }

  v77 = ((a11 & 1) == 0) & (a11 >> 1);

  v24 = [v20 startDateComponents];
  v25 = [v24 date];

  v26 = [v20 endDateComponents];

  v27 = [v26 date];

  if (!(v25 | v27))
  {
    v28 = 0;
    v70 = 0;
    v71 = 0;
    goto LABEL_22;
  }

  if (!v25)
  {
    v25 = [MEMORY[0x277CBEAA8] distantPast];
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v29, OS_LOG_TYPE_INFO, "No start date specified for date filtering, using open ended start date.", buf, 2u);
    }

    if (v27)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v27)
  {
LABEL_16:
    v27 = [MEMORY[0x277CBEAA8] distantFuture];
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "No end date specified for date filtering, using open ended end date.", buf, 2u);
    }
  }

LABEL_19:
  v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v25 endDate:v27];
  v31 = IMLogHandleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v96 = v25;
    v97 = 2112;
    v98 = v27;
    _os_log_impl(&dword_25479E000, v31, OS_LOG_TYPE_INFO, "Filtering the search results to date time interval: [%@, %@]", buf, 0x16u);
  }

  v70 = v27;
  v71 = v25;

LABEL_22:
  v32 = [(IMAssistantMessageQueryHandler *)self messageContentsPredicate:v81];
  v76 = v18;
  v33 = [(IMAssistantMessageQueryHandler *)self recipientsPredicate:v18];
  v34 = [(IMAssistantMessageQueryHandler *)self sendersPredicate:v19];
  v35 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v75 = v19;
  if ([v35 isInternationalSpamFilteringEnabled])
  {
    v36 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    v37 = [v36 chatDataSource];
    v38 = [v37 blackholedChatsExist];
  }

  else
  {
    v38 = 0;
  }

  v39 = v73;

  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = sub_2547C7168;
  v87[3] = &unk_279786CA0;
  v92 = v38;
  v87[4] = self;
  v69 = v28;
  v88 = v69;
  v93 = ((a11 & 1) == 0) & (a11 >> 1);
  v94 = a11 & ((a11 & 2) == 0);
  v68 = v32;
  v89 = v68;
  v40 = v34;
  v90 = v40;
  v41 = v33;
  v91 = v41;
  v42 = MEMORY[0x259C19590](v87);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_2547C7D8C;
  v86[3] = &unk_279786CC8;
  v86[4] = self;
  v43 = MEMORY[0x259C19590](v86);
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_2547C8080;
  v82[3] = &unk_279786CF0;
  v44 = v42;
  v83 = v44;
  v45 = v43;
  v84 = v45;
  v46 = v66;
  v85 = v46;
  v47 = MEMORY[0x259C19590](v82);
  if (v72)
  {
    v48 = IMLogHandleForCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v48, OS_LOG_TYPE_INFO, "Performing search via message identifiers search, then filter.", buf, 2u);
    }

    v49 = self;
    v50 = v72;
LABEL_33:
    [(IMAssistantMessageQueryHandler *)v49 messagesMatchingMessageIdentifiers:v50 completion:v47];
    goto LABEL_34;
  }

  if ([v73 count])
  {
    v51 = IMLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v51, OS_LOG_TYPE_INFO, "Performing search for messages matching the notification identifiers, then filter.", buf, 2u);
    }

    v49 = self;
    v50 = v73;
    goto LABEL_33;
  }

  if ([v80 count])
  {
    v53 = IMLogHandleForCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v53, OS_LOG_TYPE_INFO, "Performing search via chat name search, then filter.", buf, 2u);
    }

    v54 = [(IMAssistantMessageQueryHandler *)self chatsForChatNames:v80];
    if (![v54 count])
    {
      v55 = IMLogHandleForCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = v80;
        v56 = "Failed to find any chats matching chatNames: %@";
LABEL_53:
        _os_log_impl(&dword_25479E000, v55, OS_LOG_TYPE_INFO, v56, buf, 0xCu);
        goto LABEL_54;
      }

      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if ([v79 count])
  {
    v57 = IMLogHandleForCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v57, OS_LOG_TYPE_INFO, "Performing search via chat search, then filter.", buf, 2u);
    }

    v54 = [(IMAssistantMessageQueryHandler *)self chatsWithConversationIdentifiers:v79];
    if (![v54 count])
    {
      v55 = IMLogHandleForCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = v79;
        v56 = "Failed to find any chats matching conversation identifiers: %@";
        goto LABEL_53;
      }

LABEL_54:

      (*(v46 + 2))(v46, 0);
      goto LABEL_55;
    }

LABEL_45:
    -[IMAssistantMessageQueryHandler SPIQueryMessagesForChats:onlyUnread:limit:completion:](self, "SPIQueryMessagesForChats:onlyUnread:limit:completion:", v54, v77, 10 * [v54 count], v47);
LABEL_55:

    goto LABEL_34;
  }

  if ([v76 count])
  {
    v58 = IMLogHandleForCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v58, OS_LOG_TYPE_INFO, "Performing search via recipients search, then filter.", buf, 2u);
    }

    v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v59 addObjectsFromArray:v76];
    [v59 addObjectsFromArray:v75];
    v74 = v59;
    v60 = [(IMAssistantMessageQueryHandler *)self chatsContainingRequiredParticipants:v59];
    if ([v60 count])
    {
      -[IMAssistantMessageQueryHandler SPIQueryMessagesForChats:onlyUnread:limit:completion:](self, "SPIQueryMessagesForChats:onlyUnread:limit:completion:", v60, v77, 10 * [v60 count], v47);
    }

    else
    {
      v63 = IMLogHandleForCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = v74;
        _os_log_impl(&dword_25479E000, v63, OS_LOG_TYPE_INFO, "Failed to find chats containing all specified persons (recipients + senders) during search: %@", buf, 0xCu);
      }

      (*(v46 + 2))(v46, 0);
    }
  }

  else
  {
    v67 = [v75 count];
    v61 = IMLogHandleForCategory();
    v62 = os_log_type_enabled(v61, OS_LOG_TYPE_INFO);
    if (v67)
    {
      if (v62)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v61, OS_LOG_TYPE_INFO, "Performing search via senders search, then filter.", buf, 2u);
      }

      -[IMAssistantMessageQueryHandler SPIQueryMessagesForSenders:onlyUnread:limit:completion:](self, "SPIQueryMessagesForSenders:onlyUnread:limit:completion:", v75, v77, 10 * [v75 count], v47);
    }

    else if (v77)
    {
      if (v62)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v61, OS_LOG_TYPE_INFO, "Performing search via unread search, then filter.", buf, 2u);
      }

      [(IMAssistantMessageQueryHandler *)self SPIQueryUnreadMessages:50 completion:v47];
    }

    else
    {
      if (v62)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v61, OS_LOG_TYPE_INFO, "Performing search via examining all chats, then filter.", buf, 2u);
      }

      v64 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      v65 = [v64 chatDataSource];
      v78 = [v65 allExistingChats];

      [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesForChats:v78 onlyUnread:0 limit:10 completion:v47];
      v39 = v73;
    }
  }

LABEL_34:

  v52 = *MEMORY[0x277D85DE8];
}

- (BOOL)messageIsFromBlackholedChat:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 chatIdentifier];
  v6 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v7 = [v6 chatDataSource];
  v8 = [v7 existingChatWithChatIdentifier:v5];

  if (v8)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Could not find chatIdentifier %@ in chat registry, looking up IMSPIChat to determine blackhole status.", &v17, 0xCu);
    }

    v11 = [v4 spiChatWithQOS:25];
    v9 = [v11 isBlackholed];
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v4 guid];
      v14 = [v11 guid];
      v17 = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Determined message %@ from chat %@ isBlackholed=%d", &v17, 0x1Cu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)messagesMatchingMessageIdentifiers:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  v9 = [v8 hasPrefix:@"x-apple-sms:guid="];

  v10 = IMLogHandleForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v14 = 134217984;
      v15 = [v6 count];
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Looking up %ld messages with IMSPIQueryMessagesWithRowIDs", &v14, 0xCu);
    }

    v12 = [v6 __imArrayByApplyingBlock:&unk_286693218];
    [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesWithRowIDs:v12 completion:v7];

    v7 = v12;
  }

  else
  {
    if (v11)
    {
      v14 = 134217984;
      v15 = [v6 count];
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Looking up %ld messages with IMSPIQueryMessagesWithGUIDs", &v14, 0xCu);
    }

    [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesWithGUIDs:v6 completion:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end