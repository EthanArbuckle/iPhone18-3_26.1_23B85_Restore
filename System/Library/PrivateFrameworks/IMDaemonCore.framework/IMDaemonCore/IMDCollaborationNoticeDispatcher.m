@interface IMDCollaborationNoticeDispatcher
+ (Class)_SWCollaborationClearNoticeTransmissionMessageClass;
+ (Class)_SWCollaborationNoticeTransmissionMessageClass;
+ (id)unarchiveNoticeTransmissionEvent:(id)a3;
+ (unint64_t)noticeFanoutThreshold;
- (IMDCollaborationNoticeDispatcher)init;
- (IMDCollaborationNoticeDispatcherDelegate)delegate;
- (id)_handlesMinusSenderServiceAccountID:(id)a3;
- (id)_senderServiceAccountIDFrom:(id)a3;
- (id)senderLoginIDs;
- (void)dealloc;
- (void)handleIncomingNoticeProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)reflectDismissalForNoticeGUIDs:(id)a3;
- (void)sendClearNotice:(id)a3 toHandles:(id)a4;
- (void)sendNotice:(id)a3 toHandles:(id)a4 fromHandle:(id)a5;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation IMDCollaborationNoticeDispatcher

+ (Class)_SWCollaborationNoticeTransmissionMessageClass
{
  if (qword_27D8CFE70 != -1)
  {
    sub_22B7D2EC4();
  }

  v3 = qword_27D8CFE68;

  return v3;
}

+ (Class)_SWCollaborationClearNoticeTransmissionMessageClass
{
  if (qword_27D8CFE80 != -1)
  {
    sub_22B7D2ED8();
  }

  v3 = qword_27D8CFE78;

  return v3;
}

- (IMDCollaborationNoticeDispatcher)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = IMDCollaborationNoticeDispatcher;
  v2 = [(IMDCollaborationNoticeDispatcher *)&v13 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.gelato"];
    gelatoService = v2->_gelatoService;
    v2->_gelatoService = v3;

    [(IDSService *)v2->_gelatoService setProtobufAction:sel_handleIncomingNoticeProtobuf_service_account_fromID_context_ forIncomingRequestsOfType:1];
    [(IDSService *)v2->_gelatoService addDelegate:v2 queue:MEMORY[0x277D85CD0]];
    v5 = objc_alloc_init(IMDCollaborationNoticeRateLimiter);
    rateLimiter = v2->_rateLimiter;
    v2->_rateLimiter = v5;

    v7 = objc_alloc_init(IMDCollaborationClearNoticeRateLimiter);
    clearRateLimiter = v2->_clearRateLimiter;
    v2->_clearRateLimiter = v7;

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = v2->_gelatoService;
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Loaded notice dispatch service: %@", buf, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [(IDSService *)self->_gelatoService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = IMDCollaborationNoticeDispatcher;
  [(IMDCollaborationNoticeDispatcher *)&v3 dealloc];
}

- (void)sendNotice:(id)a3 toHandles:(id)a4 fromHandle:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(IMDCollaborationNoticeDispatcher *)self _handlesMinusSenderServiceAccountID:a4];
  if ([v10 count])
  {
    v11 = +[IMDCollaborationNoticeDispatcher noticeFanoutThreshold];
    if ([v10 count] <= v11)
    {
      v14 = [(IMDCollaborationNoticeDispatcher *)self rateLimiter];
      v15 = [v14 shouldSendNotice:v8];

      if (v15)
      {
        v16 = objc_alloc_init(+[IMDCollaborationNoticeDispatcher _SWCollaborationNoticeTransmissionMessageClass]);
        if (v16)
        {
          if (objc_opt_respondsToSelector())
          {
            [v16 setVersion:1];
          }

          if (objc_opt_respondsToSelector())
          {
            v17 = [v8 guidString];
            [v16 setGuidString:v17];
          }

          if (objc_opt_respondsToSelector())
          {
            v18 = [v8 eventData];
            [v16 setHighlightChangeEvent:v18];
          }

          if (objc_opt_respondsToSelector())
          {
            [v16 setHighlightChangeEventType:{objc_msgSend(v8, "eventType")}];
          }

          if (objc_opt_respondsToSelector())
          {
            v19 = [v8 date];
            [v19 timeIntervalSince1970];
            [v16 setDateAsTimeIntervalSince1970:?];
          }

          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v37 = &unk_283F4E630;
              v38 = 2112;
              v39 = v8;
              v40 = 2112;
              v41 = v10;
              v42 = 2112;
              v43 = v16;
              _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Sending notice (command: %@) %@ to %@, message: %@", buf, 0x2Au);
            }
          }

          v21 = objc_alloc(MEMORY[0x277D189F0]);
          v22 = [v16 data];
          v23 = [v21 initWithProtobufData:v22 type:1 isResponse:0];

          v24 = [MEMORY[0x277CBEB38] dictionary];
          v25 = v24;
          if (v9)
          {
            [v24 setObject:v9 forKey:*MEMORY[0x277D185E0]];
          }

          gelatoService = self->_gelatoService;
          v27 = [v25 copy];
          v34 = 0;
          v35 = 0;
          [(IDSService *)gelatoService sendProtobuf:v23 toDestinations:v10 priority:300 options:v27 identifier:&v35 error:&v34];
          v28 = v35;
          v29 = v34;

          if (v29)
          {
            v30 = IMLogHandleForCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_22B7D2EEC();
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v32 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v37 = "[IMDCollaborationNoticeDispatcher sendNotice:toHandles:fromHandle:]";
                v38 = 2112;
                v39 = v28;
                v40 = 2112;
                v41 = v10;
                _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "%s Successfully sent Collaboration Notice (guid: %@) to handles: %@", buf, 0x20u);
              }
            }

            v30 = [(IMDCollaborationNoticeDispatcher *)self rateLimiter];
            [v30 didSendNotice:v8];
          }
        }

        else
        {
          v23 = IMLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D2F60();
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v37 = "[IMDCollaborationNoticeDispatcher sendNotice:toHandles:fromHandle:]";
          v38 = 2112;
          v39 = v8;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "%s: Bailing due to rate limiting for notice: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D2FA0(v10, v11);
      }
    }
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D3074();
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)sendClearNotice:(id)a3 toHandles:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDCollaborationNoticeDispatcher *)self _senderServiceAccountIDFrom:v7];
  if ([v7 count])
  {
    v9 = +[IMDCollaborationNoticeDispatcher noticeFanoutThreshold];
    if ([v7 count] <= v9)
    {
      v12 = [(IMDCollaborationNoticeDispatcher *)self clearRateLimiter];
      v13 = [v12 shouldSendWithNotice:v6];

      if (v13)
      {
        v14 = objc_alloc_init(+[IMDCollaborationNoticeDispatcher _SWCollaborationClearNoticeTransmissionMessageClass]);
        if (v14)
        {
          if (objc_opt_respondsToSelector())
          {
            [v14 setVersion:2];
          }

          if (objc_opt_respondsToSelector())
          {
            v15 = [v6 guidString];
            [v14 setGuidString:v15];
          }

          if (objc_opt_respondsToSelector())
          {
            v16 = [v6 collaborationId];
            [v14 setCollaborationId:v16];
          }

          if (objc_opt_respondsToSelector())
          {
            v17 = [v6 date];
            [v17 timeIntervalSince1970];
            [v14 setDateAsTimeIntervalSince1970:?];
          }

          if (IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v33 = &unk_283F4E648;
              v34 = 2112;
              v35 = v6;
              v36 = 2112;
              v37 = v7;
              v38 = 2112;
              v39 = v14;
              _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Sending notice (command: %@) %@ to %@, message: %@", buf, 0x2Au);
            }
          }

          v19 = objc_alloc(MEMORY[0x277D189F0]);
          v20 = [v14 data];
          v21 = [v19 initWithProtobufData:v20 type:2 isResponse:0];

          v22 = [v21 data];
          if ([v22 length])
          {
            v23 = MEMORY[0x277CCACA8];
            v24 = [MEMORY[0x277CCACA8] stringGUID];
            v25 = [v23 stringWithFormat:@"%@-%@.data", @"ClearCollaborationNotice", v24];

            [MEMORY[0x277D1AA18] writeDataPayloadToDisk:v22 fileName:v25];
          }

          v26 = [MEMORY[0x277D1AB80] contextWithKnownSender:1];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = sub_22B584EE8;
          v29[3] = &unk_278704FB8;
          v30 = v8;
          v31 = self;
          [IMBlastdoor sendClearNoticeData:v22 senderContext:v26 withCompletionBlock:v29];
        }

        else
        {
          v21 = IMLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D30F4();
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v33 = "[IMDCollaborationNoticeDispatcher sendClearNotice:toHandles:]";
          v34 = 2112;
          v35 = v6;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "%s: Bailing due to rate limiting for notice: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D3134(v7, v9);
      }
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D3208();
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)reflectDismissalForNoticeGUIDs:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[IMDCollaborationNoticeDispatcher reflectDismissalForNoticeGUIDs:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%s: Handling request to reflect notice dismissal for guids: %@", buf, 0x16u);
    }
  }

  v17[0] = @"at";
  v17[1] = @"g";
  v18[0] = &unk_283F4E660;
  v18[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15 = *MEMORY[0x277D18570];
  v16 = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v8 = MEMORY[0x277D1AA08];
  gelatoService = self->_gelatoService;
  v10 = [(IMDCollaborationNoticeDispatcher *)self senderLoginIDs];
  v13 = 0;
  v14 = 0;
  [v8 service:gelatoService sendMessage:v6 toDestinations:v10 priority:300 options:v7 identifier:&v14 error:&v13];
  v11 = v14;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingNoticeProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v28 = a4;
  v29 = a5;
  v13 = a6;
  v14 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v34 = "[IMDCollaborationNoticeDispatcher handleIncomingNoticeProtobuf:service:account:fromID:context:]";
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "%s: Handling incoming Collaboration Notice from: %@", buf, 0x16u);
    }
  }

  v16 = IDSCopyAddressDestinationForDestination();
  v17 = IDSCopyRawAddressForDestination();

  if ([v17 length])
  {
    v18 = [MEMORY[0x277CBEB98] setWithObject:v17];
    v19 = [(IMDCollaborationNoticeDispatcher *)self _handlesMinusSenderServiceAccountID:v18];

    if ([v19 count])
    {
      v20 = [v12 data];
      if ([v20 length])
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = [MEMORY[0x277CCACA8] stringGUID];
        v23 = [v21 stringWithFormat:@"%@-%@.data", @"CollaborationNotice", v22, v28, v29];

        [MEMORY[0x277D1AA18] writeDataPayloadToDisk:v20 fileName:v23];
      }

      v24 = +[IMDChatRegistry sharedInstance];
      v25 = [v24 hasKnownSenderChatWithChatIdentifier:v17];

      if (v25)
      {
        v26 = [MEMORY[0x277D1AB80] contextWithKnownSender:1];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = sub_22B5857A0;
        v30[3] = &unk_278704FE0;
        v31 = v17;
        v32 = self;
        [IMBlastdoor sendCollaborationNoticeData:v20 senderContext:v26 withCompletionBlock:v30];
      }

      else
      {
        v26 = IMLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D33C4();
        }
      }
    }

    else
    {
      v20 = IMLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D3444();
      }
    }
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D34C0();
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "[IMDCollaborationNoticeDispatcher service:account:incomingMessage:fromID:context:]";
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "%s fromID: %@, message: %@", buf, 0x20u);
    }
  }

  v18 = IDSCopyAddressDestinationForDestination();
  v19 = IDSCopyRawAddressForDestination();

  if ([v19 length])
  {
    v20 = +[IMDChatRegistry sharedInstance];
    v21 = [v20 hasKnownSenderChatWithChatIdentifier:v19];

    v22 = [MEMORY[0x277D1AB80] contextWithKnownSender:v21];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22B585D60;
    v24[3] = &unk_278705008;
    v24[4] = self;
    [IMBlastdoor sendCollaborationNoticeActionDictionary:v14 senderContext:v22 withCompletionBlock:v24];
  }

  else
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D367C();
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)noticeFanoutThreshold
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"notice-fanout-threshold"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (id)_handlesMinusSenderServiceAccountID:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [(IMDCollaborationNoticeDispatcher *)self senderLoginIDs];
  [v4 minusSet:v5];

  v6 = [v4 copy];

  return v6;
}

- (id)_senderServiceAccountIDFrom:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [(IMDCollaborationNoticeDispatcher *)self senderLoginIDs];
  [v4 intersectSet:v5];

  v6 = [v4 allObjects];
  v7 = [v6 firstObject];
  v8 = [v7 mutableCopy];

  return v8;
}

- (id)senderLoginIDs
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(IMDCollaborationNoticeDispatcher *)self gelatoService];
  v5 = [v4 accounts];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 loginID];

        if (v11)
        {
          v12 = [v10 loginID];
          v13 = IDSCopyBestGuessIDForID();

          v14 = MEMORY[0x231897A70](v13);
          [v3 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)unarchiveNoticeTransmissionEvent:(id)a3
{
  v16[7] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([sub_22B58647C() eventClassForType:{objc_msgSend(v3, "eventType")}])
  {
    v4 = [sub_22B58647C() allowedClasses];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v16[5] = objc_opt_class();
    v16[6] = objc_opt_class();
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:7];
    v6 = [v4 setByAddingObjectsFromArray:v5];

    v7 = MEMORY[0x277CCAAC8];
    v8 = [v3 eventData];
    v15 = 0;
    v9 = [v7 _strictlyUnarchivedObjectOfClasses:v6 fromData:v8 error:&v15];
    v10 = v15;

    if (v10 || !v9)
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D3818();
      }

      v11 = 0;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D38A4(v3);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (IMDCollaborationNoticeDispatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end