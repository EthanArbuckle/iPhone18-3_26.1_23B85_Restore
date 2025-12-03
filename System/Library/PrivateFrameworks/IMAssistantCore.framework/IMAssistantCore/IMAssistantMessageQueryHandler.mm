@interface IMAssistantMessageQueryHandler
+ (OS_dispatch_queue)IMAssistantIMSPIQueue;
- (BOOL)messageIsFromBlackholedChat:(id)chat;
- (BOOL)resolvePersons:(id)persons forIntent:(id)intent completionHandler:(id)handler;
- (id)allIMHandlesForHandle:(id)handle;
- (id)chatParticipantForSPIHandle:(id)handle;
- (id)chatParticipantsForSPIHandles:(id)handles;
- (id)chatsContainingRequiredParticipants:(id)participants;
- (id)chatsForChatNames:(id)names;
- (id)chatsWithConversationIdentifiers:(id)identifiers;
- (id)messageContentsPredicate:(id)predicate;
- (id)recipientsPredicate:(id)predicate;
- (id)resolveDateTimeRange:(id)range;
- (id)sendersPredicate:(id)predicate;
- (id)spokenPhrasesForSpeakableStrings:(id)strings;
- (id)unifiedContactIdentifiersForPerson:(id)person;
- (id)vocabularyIdentifiersFromSpeakableStrings:(id)strings;
- (void)SPIQueryMessagesForChats:(id)chats onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion;
- (void)SPIQueryMessagesForChatsWithIdentifiers:(id)identifiers services:(id)services onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion;
- (void)SPIQueryMessagesForSenders:(id)senders onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion;
- (void)SPIQueryMessagesWithGUIDs:(id)ds completion:(id)completion;
- (void)SPIQueryMessagesWithRowIDs:(id)ds completion:(id)completion;
- (void)SPIQueryUnreadMessages:(int64_t)messages completion:(id)completion;
- (void)handlesAndServicesForChatGuids:(id)guids handles:(id *)handles services:(id *)services;
- (void)handlesAndServicesForPersons:(id)persons handles:(id *)handles services:(id *)services;
- (void)messagesMatchingMessageIdentifiers:(id)identifiers completion:(id)completion;
- (void)searchMessagesWithContents:(id)contents messageIdentifiers:(id)identifiers notificationIdentifiers:(id)notificationIdentifiers chatNames:(id)names conversationIdentifiers:(id)conversationIdentifiers recipients:(id)recipients senders:(id)senders dateTimeRange:(id)self0 attributes:(unint64_t)self1 completion:(id)self2;
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

- (BOOL)resolvePersons:(id)persons forIntent:(id)intent completionHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  intentCopy = intent;
  handlerCopy = handler;
  if ([personsCopy count])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v46 = personsCopy;
      v47 = 2112;
      v48 = intentCopy;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Resolving persons: %@ for intent: %@", buf, 0x16u);
    }

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(personsCopy, "count")}];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = personsCopy;
    v39 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v39)
    {
      v34 = handlerCopy;
      v35 = personsCopy;
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

          __im_assistant_allContactIdentifiers = [v15 __im_assistant_allContactIdentifiers];
          if ([__im_assistant_allContactIdentifiers count])
          {
            v18 = IMLogHandleForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [__im_assistant_allContactIdentifiers count];
              *buf = 134218242;
              v46 = v19;
              v47 = 2112;
              v48 = __im_assistant_allContactIdentifiers;
              _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Successfully resolved person to %ld contact identifiers: %@", buf, 0x16u);
            }

            [v11 addObject:v15];
            unsupported = [MEMORY[0x277CD3EA0] successWithResolvedPerson:v15];
          }

          else
          {
            v21 = v13;
            personHandle = [v15 personHandle];
            value = [personHandle value];
            v24 = [value length];

            v25 = IMLogHandleForCategory();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
            if (v24)
            {
              if (v26)
              {
                personHandle2 = [v15 personHandle];
                value2 = [personHandle2 value];
                *buf = 138412290;
                v46 = value2;
                _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Successfully resolved person to handle: %@", buf, 0xCu);
              }

              v11 = v38;
              [v38 addObject:v15];
              unsupported = [MEMORY[0x277CD3EA0] successWithResolvedPerson:v15];
              v13 = v21;
            }

            else
            {
              v13 = v21;
              if (v26)
              {
                displayName = [v15 displayName];
                *buf = 138412546;
                v46 = displayName;
                v47 = 2112;
                v48 = intentCopy;
                _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Could not resolve person %@ for intent %@", buf, 0x16u);
              }

              unsupported = [MEMORY[0x277CD3EA0] unsupported];
              v37 = 0;
              v11 = v38;
            }
          }

          [v10 addObject:{unsupported, v34}];
        }

        v39 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v39);

      handlerCopy = v34;
      if ((v37 & 1) == 0)
      {
        v34[2](v34, v10, 0);
        v30 = 0;
        personsCopy = v35;
        goto LABEL_30;
      }

      personsCopy = v35;
    }

    else
    {
    }

    v31 = [v11 copy];
    handlerCopy[2](handlerCopy, v10, v31);

    v30 = 1;
LABEL_30:

    goto LABEL_31;
  }

  handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  v30 = 0;
LABEL_31:

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)resolveDateTimeRange:(id)range
{
  if (range)
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

- (id)allIMHandlesForHandle:(id)handle
{
  v20 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  accounts = [mEMORY[0x277D18D28] accounts];

  v7 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(accounts);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) imHandleWithID:handleCopy];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  array = [v4 array];

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)SPIQueryMessagesForChats:(id)chats onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion
{
  unreadCopy = unread;
  v45 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  completionCopy = completion;
  v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = chatsCopy;
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
        messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
        chatDataSource = [messageHandlerDataSource chatDataSource];
        v18 = [chatDataSource allGUIDsForChat:v15];

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
  array = [v9 array];
  v32 = v22;
  v33 = v21;
  [(IMAssistantMessageQueryHandler *)self handlesAndServicesForChatGuids:array handles:&v33 services:&v32];
  v24 = v33;

  v25 = v32;
  v26 = [v24 copy];
  v27 = [v25 copy];

  [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesForChatsWithIdentifiers:v26 services:v27 onlyUnread:unreadCopy limit:limit completion:completionCopy];
  v28 = *MEMORY[0x277D85DE8];
}

- (void)SPIQueryMessagesForChatsWithIdentifiers:(id)identifiers services:(id)services onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion
{
  unreadCopy = unread;
  v41 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  completionCopy = completion;
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
  v18 = completionCopy;
  v31 = v18;
  v19 = MEMORY[0x259C19590](&v27);
  v20 = IMLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v34 = servicesCopy;
    v35 = 2112;
    v36 = identifiersCopy;
    v37 = 1024;
    v38 = unreadCopy;
    v39 = 2048;
    limitCopy = limit;
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

- (void)handlesAndServicesForPersons:(id)persons handles:(id *)handles services:(id *)services
{
  v46 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
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
  obj = personsCopy;
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
        __im_assistant_allContactIdentifiers = [v13 __im_assistant_allContactIdentifiers];
        personHandle = [v13 personHandle];
        value = [personHandle value];

        if ([__im_assistant_allContactIdentifiers count])
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v17 = __im_assistant_allContactIdentifiers;
          v18 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v18)
          {
            v19 = v18;
            v32 = value;
            v33 = __im_assistant_allContactIdentifiers;
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
                __im_assistant_allIMHandles = [v22 __im_assistant_allIMHandles];
                (v8)[2](v8, __im_assistant_allIMHandles);
              }

              v19 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
            }

            while (v19);
            v11 = v29;
            v10 = v30;
            value = v32;
            __im_assistant_allContactIdentifiers = v33;
          }
        }

        else
        {
          if (![value length])
          {
            goto LABEL_18;
          }

          v17 = [(IMAssistantMessageQueryHandler *)self allIMHandlesForHandle:value];
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

  array = [v26 array];
  [(IMAssistantMessageQueryHandler *)self handlesAndServicesForChatGuids:array handles:handles services:services];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handlesAndServicesForChatGuids:(id)guids handles:(id *)handles services:(id *)services
{
  v27 = *MEMORY[0x277D85DE8];
  guidsCopy = guids;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = guidsCopy;
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

  if (handles)
  {
    *handles = [v19 copy];
  }

  if (services)
  {
    *services = [v6 copy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)SPIQueryMessagesForSenders:(id)senders onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion
{
  unreadCopy = unread;
  v40 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v30 = 0;
  v31 = 0;
  [(IMAssistantMessageQueryHandler *)self handlesAndServicesForPersons:senders handles:&v31 services:&v30];
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
    v37 = unreadCopy;
    v38 = 2048;
    limitCopy = limit;
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
  v18 = completionCopy;
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

- (void)SPIQueryUnreadMessages:(int64_t)messages completion:(id)completion
{
  completionCopy = completion;
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
  v9 = completionCopy;
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

- (void)SPIQueryMessagesWithGUIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
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
  v11 = completionCopy;
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

- (void)SPIQueryMessagesWithRowIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
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
  v11 = completionCopy;
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

- (id)recipientsPredicate:(id)predicate
{
  v26 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if ([predicateCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = predicateCopy;
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

- (id)sendersPredicate:(id)predicate
{
  v26 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if ([predicateCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = predicateCopy;
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

- (id)spokenPhrasesForSpeakableStrings:(id)strings
{
  v23 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = stringsCopy;
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
        spokenPhrase = [v11 spokenPhrase];
        if ([spokenPhrase length])
        {
          [v5 addObject:spokenPhrase];
        }

        alternativeSpeakableMatches = [v11 alternativeSpeakableMatches];
        if ([alternativeSpeakableMatches count])
        {
          v14 = [(IMAssistantMessageQueryHandler *)self spokenPhrasesForSpeakableStrings:alternativeSpeakableMatches];
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  array = [v5 array];

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)vocabularyIdentifiersFromSpeakableStrings:(id)strings
{
  v23 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = stringsCopy;
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
        vocabularyIdentifier = [v11 vocabularyIdentifier];
        if ([vocabularyIdentifier length])
        {
          [v5 addObject:vocabularyIdentifier];
        }

        alternativeSpeakableMatches = [v11 alternativeSpeakableMatches];
        if ([alternativeSpeakableMatches count])
        {
          v14 = [(IMAssistantMessageQueryHandler *)self vocabularyIdentifiersFromSpeakableStrings:alternativeSpeakableMatches];
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  array = [v5 array];

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)messageContentsPredicate:(id)predicate
{
  predicateCopy = predicate;
  if ([predicateCopy count])
  {
    string = [MEMORY[0x277CCAB68] string];
    array = [MEMORY[0x277CBEB18] array];
    if ([predicateCopy count])
    {
      v6 = 0;
      do
      {
        if (v6)
        {
          [string appendString:@" AND "];
        }

        [string appendString:@"self LIKE[cd] %@"];
        v7 = MEMORY[0x277CCACA8];
        v8 = [predicateCopy objectAtIndexedSubscript:v6];
        v9 = [v7 stringWithFormat:@"*%@*", v8];
        [array addObject:v9];

        ++v6;
      }

      while (v6 < [predicateCopy count]);
    }

    v10 = MEMORY[0x277CCAC30];
    v11 = [string copy];
    v12 = [v10 predicateWithFormat:v11 argumentArray:array];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)chatParticipantForSPIHandle:(id)handle
{
  handleCopy = handle;
  v5 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingSPIHandle:handleCopy];
  v6 = [IMAssistantMessageSearchChatParticipant alloc];
  address = [handleCopy address];
  isMe = [handleCopy isMe];

  v9 = [(IMAssistantMessageSearchChatParticipant *)v6 initWithHandle:address contactIdentifiers:v5 isMe:isMe];

  return v9;
}

- (id)chatParticipantsForSPIHandles:(id)handles
{
  v20 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = handlesCopy;
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

- (id)unifiedContactIdentifiersForPerson:(id)person
{
  v20 = *MEMORY[0x277D85DE8];
  __im_assistant_allContactIdentifiers = [person __im_assistant_allContactIdentifiers];
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = __im_assistant_allContactIdentifiers;
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

  array = [v5 array];

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)chatsContainingRequiredParticipants:(id)participants
{
  v89 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  chatDataSource = [messageHandlerDataSource chatDataSource];
  allExistingChats = [chatDataSource allExistingChats];

  array = [MEMORY[0x277CBEB18] array];
  v58 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(participantsCopy, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = participantsCopy;
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
        v13 = [(IMAssistantMessageQueryHandler *)self unifiedContactIdentifiersForPerson:v12, array];
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
  v49 = allExistingChats;
  v52 = [v49 countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v52)
  {
    v50 = *v73;
    selfCopy = self;
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
        v16 = [(IMAssistantMessageHandler *)self contactIdentifiersForParticipantsInChat:v15, array];
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

                personHandle = [v28 personHandle];
                value = [personHandle value];
                v37 = [value length];

                if (!v37)
                {
                  goto LABEL_51;
                }

                personHandle2 = [v28 personHandle];
                value2 = [personHandle2 value];
                if (MEMORY[0x259C19130]() || IMStringIsEmail())
                {
                  v40 = IMCanonicalizeFormattedString();
                }

                else
                {
                  if (!MEMORY[0x259C19110](value2))
                  {
                    v41 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v81 = value2;
                      _os_log_impl(&dword_25479E000, v41, OS_LOG_TYPE_INFO, "Could not canonicalize handle %@ because it is neither a phone number nor an email address.", buf, 0xCu);
                    }
                  }

                  v40 = value2;
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

        [array addObject:v53];
LABEL_52:

        v14 = v55 + 1;
        self = selfCopy;
      }

      while (v55 + 1 != v52);
      v52 = [v49 countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v52);
  }

  v44 = IMLogHandleForCategory();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = [array count];
    *buf = 134218242;
    v81 = v45;
    v82 = 2112;
    v83 = array;
    _os_log_impl(&dword_25479E000, v44, OS_LOG_TYPE_INFO, "Found %ld chats matching participants. Chats: %@", buf, 0x16u);
  }

  v46 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)chatsWithConversationIdentifiers:(id)identifiers
{
  v30 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  chatDataSource = [messageHandlerDataSource chatDataSource];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = identifiersCopy;
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
        v14 = [chatDataSource existingChatWithChatIdentifier:v13];
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

- (id)chatsForChatNames:(id)names
{
  v39 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  if ([namesCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v24 = [(IMAssistantMessageQueryHandler *)self vocabularyIdentifiersFromSpeakableStrings:namesCopy];
    v6 = [v24 __imArrayByApplyingBlock:&unk_2866931F8];
    v25 = namesCopy;
    v7 = [(IMAssistantMessageQueryHandler *)self spokenPhrasesForSpeakableStrings:namesCopy];
    messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    chatDataSource = [messageHandlerDataSource chatDataSource];
    allExistingChats = [chatDataSource allExistingChats];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = allExistingChats;
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
          chatIdentifier = [v16 chatIdentifier];
          displayName = [v16 displayName];
          if ([chatIdentifier length] && (objc_msgSend(v6, "containsObject:", chatIdentifier) & 1) != 0 || objc_msgSend(displayName, "length") && objc_msgSend(v7, "containsObject:", displayName))
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

    array = [v5 array];

    namesCopy = v25;
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v22 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)searchMessagesWithContents:(id)contents messageIdentifiers:(id)identifiers notificationIdentifiers:(id)notificationIdentifiers chatNames:(id)names conversationIdentifiers:(id)conversationIdentifiers recipients:(id)recipients senders:(id)senders dateTimeRange:(id)self0 attributes:(unint64_t)self1 completion:(id)self2
{
  v99 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  identifiersCopy = identifiers;
  notificationIdentifiersCopy = notificationIdentifiers;
  namesCopy = names;
  conversationIdentifiersCopy = conversationIdentifiers;
  recipientsCopy = recipients;
  sendersCopy = senders;
  completionCopy = completion;
  rangeCopy = range;
  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = @"NO";
    if ((((attributes & 1) == 0) & (attributes >> 1)) != 0)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    if ((attributes & ((attributes & 2) == 0)) != 0)
    {
      v22 = @"YES";
    }

    *buf = 138412546;
    v96 = v23;
    v97 = 2112;
    v98 = v22;
    _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Searching for messages with attributes onlyUnreadMessages: %@ | onlyReadMessages %@", buf, 0x16u);
  }

  v77 = ((attributes & 1) == 0) & (attributes >> 1);

  startDateComponents = [rangeCopy startDateComponents];
  date = [startDateComponents date];

  endDateComponents = [rangeCopy endDateComponents];

  date2 = [endDateComponents date];

  if (!(date | date2))
  {
    v28 = 0;
    v70 = 0;
    v71 = 0;
    goto LABEL_22;
  }

  if (!date)
  {
    date = [MEMORY[0x277CBEAA8] distantPast];
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v29, OS_LOG_TYPE_INFO, "No start date specified for date filtering, using open ended start date.", buf, 2u);
    }

    if (date2)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!date2)
  {
LABEL_16:
    date2 = [MEMORY[0x277CBEAA8] distantFuture];
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "No end date specified for date filtering, using open ended end date.", buf, 2u);
    }
  }

LABEL_19:
  v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:date endDate:date2];
  v31 = IMLogHandleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v96 = date;
    v97 = 2112;
    v98 = date2;
    _os_log_impl(&dword_25479E000, v31, OS_LOG_TYPE_INFO, "Filtering the search results to date time interval: [%@, %@]", buf, 0x16u);
  }

  v70 = date2;
  v71 = date;

LABEL_22:
  v32 = [(IMAssistantMessageQueryHandler *)self messageContentsPredicate:contentsCopy];
  v76 = recipientsCopy;
  v33 = [(IMAssistantMessageQueryHandler *)self recipientsPredicate:recipientsCopy];
  v34 = [(IMAssistantMessageQueryHandler *)self sendersPredicate:sendersCopy];
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v75 = sendersCopy;
  if ([messageHandlerDataSource isInternationalSpamFilteringEnabled])
  {
    messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    chatDataSource = [messageHandlerDataSource2 chatDataSource];
    blackholedChatsExist = [chatDataSource blackholedChatsExist];
  }

  else
  {
    blackholedChatsExist = 0;
  }

  v39 = notificationIdentifiersCopy;

  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = sub_2547C7168;
  v87[3] = &unk_279786CA0;
  v92 = blackholedChatsExist;
  v87[4] = self;
  v69 = v28;
  v88 = v69;
  v93 = ((attributes & 1) == 0) & (attributes >> 1);
  v94 = attributes & ((attributes & 2) == 0);
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
  v46 = completionCopy;
  v85 = v46;
  v47 = MEMORY[0x259C19590](v82);
  if (identifiersCopy)
  {
    v48 = IMLogHandleForCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v48, OS_LOG_TYPE_INFO, "Performing search via message identifiers search, then filter.", buf, 2u);
    }

    selfCopy2 = self;
    v50 = identifiersCopy;
LABEL_33:
    [(IMAssistantMessageQueryHandler *)selfCopy2 messagesMatchingMessageIdentifiers:v50 completion:v47];
    goto LABEL_34;
  }

  if ([notificationIdentifiersCopy count])
  {
    v51 = IMLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v51, OS_LOG_TYPE_INFO, "Performing search for messages matching the notification identifiers, then filter.", buf, 2u);
    }

    selfCopy2 = self;
    v50 = notificationIdentifiersCopy;
    goto LABEL_33;
  }

  if ([namesCopy count])
  {
    v53 = IMLogHandleForCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v53, OS_LOG_TYPE_INFO, "Performing search via chat name search, then filter.", buf, 2u);
    }

    v54 = [(IMAssistantMessageQueryHandler *)self chatsForChatNames:namesCopy];
    if (![v54 count])
    {
      v55 = IMLogHandleForCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = namesCopy;
        v56 = "Failed to find any chats matching chatNames: %@";
LABEL_53:
        _os_log_impl(&dword_25479E000, v55, OS_LOG_TYPE_INFO, v56, buf, 0xCu);
        goto LABEL_54;
      }

      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if ([conversationIdentifiersCopy count])
  {
    v57 = IMLogHandleForCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v57, OS_LOG_TYPE_INFO, "Performing search via chat search, then filter.", buf, 2u);
    }

    v54 = [(IMAssistantMessageQueryHandler *)self chatsWithConversationIdentifiers:conversationIdentifiersCopy];
    if (![v54 count])
    {
      v55 = IMLogHandleForCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = conversationIdentifiersCopy;
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

      messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      chatDataSource2 = [messageHandlerDataSource3 chatDataSource];
      allExistingChats = [chatDataSource2 allExistingChats];

      [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesForChats:allExistingChats onlyUnread:0 limit:10 completion:v47];
      v39 = notificationIdentifiersCopy;
    }
  }

LABEL_34:

  v52 = *MEMORY[0x277D85DE8];
}

- (BOOL)messageIsFromBlackholedChat:(id)chat
{
  v23 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  chatIdentifier = [chatCopy chatIdentifier];
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  chatDataSource = [messageHandlerDataSource chatDataSource];
  v8 = [chatDataSource existingChatWithChatIdentifier:chatIdentifier];

  if (v8)
  {
    LOBYTE(isBlackholed) = 0;
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = chatIdentifier;
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Could not find chatIdentifier %@ in chat registry, looking up IMSPIChat to determine blackhole status.", &v17, 0xCu);
    }

    v11 = [chatCopy spiChatWithQOS:25];
    isBlackholed = [v11 isBlackholed];
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      guid2 = [v11 guid];
      v17 = 138412802;
      v18 = guid;
      v19 = 2112;
      v20 = guid2;
      v21 = 1024;
      v22 = isBlackholed;
      _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Determined message %@ from chat %@ isBlackholed=%d", &v17, 0x1Cu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return isBlackholed;
}

- (void)messagesMatchingMessageIdentifiers:(id)identifiers completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  firstObject = [identifiersCopy firstObject];
  v9 = [firstObject hasPrefix:@"x-apple-sms:guid="];

  v10 = IMLogHandleForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v14 = 134217984;
      v15 = [identifiersCopy count];
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Looking up %ld messages with IMSPIQueryMessagesWithRowIDs", &v14, 0xCu);
    }

    v12 = [identifiersCopy __imArrayByApplyingBlock:&unk_286693218];
    [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesWithRowIDs:v12 completion:completionCopy];

    completionCopy = v12;
  }

  else
  {
    if (v11)
    {
      v14 = 134217984;
      v15 = [identifiersCopy count];
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Looking up %ld messages with IMSPIQueryMessagesWithGUIDs", &v14, 0xCu);
    }

    [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesWithGUIDs:identifiersCopy completion:completionCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end