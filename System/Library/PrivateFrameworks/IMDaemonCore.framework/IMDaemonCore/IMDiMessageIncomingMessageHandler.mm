@interface IMDiMessageIncomingMessageHandler
- (void)handleAcceptChatCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleChatSessionCloseWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleCrossServiceAssociationCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleEditMessageCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleJunkChatCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleMarkAsReviewedCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleMessageDeliveredQuietlyReceiptWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleMessageDeliveryReceiptWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleMessageMarkUnreadRequestWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleMessagePlayedReceiptWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleMessageReadReceiptWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleMessageWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleNotifyRecipientCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handlePriorityMessageCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleRecoverJunkCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleRepositionStickerCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleScheduledMessageUpdateCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleSyndicatedActionWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
- (void)handleTranscriptBackgroundCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5;
@end

@implementation IMDiMessageIncomingMessageHandler

- (void)handleMessageDeliveryReceiptWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing delivery receipt processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B641648;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"delivery receipt" description:45.0];
}

- (void)handleChatSessionCloseWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing chat session close processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B641A64;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"chat session close" description:45.0];
}

- (void)handleMessageReadReceiptWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing read receipt processing", buf, 2u);
    }
  }

  if (([v9 isFromStorage] & 1) != 0 || objc_msgSend(v9, "isLastFromStorage"))
  {
    v12 = +[IMDMessageFromStorageController iMessageStorageController];
    [v12 incrementPendingReadReceiptFromStorageCount];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22B641EB4;
  v16[3] = &unk_278706C88;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v16 withTimeout:@"read receipt" description:45.0];
}

- (void)handleMessageMarkUnreadRequestWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing mark unread request processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B642300;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"mark unread request" description:45.0];
}

- (void)handleMessagePlayedReceiptWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing played receipt processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B64271C;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"played receipt" description:45.0];
}

- (void)handleMessageDeliveredQuietlyReceiptWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing delivered quietly receipt processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B642B38;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"delivered quietly receipt" description:45.0];
}

- (void)handleNotifyRecipientCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing notify recipient command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B642F54;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"notify recipient command" description:45.0];
}

- (void)handleEditMessageCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enqueuing edit message command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B643370;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"edit message command" description:45.0];
}

- (void)handleRecoverJunkCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing edit message command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B64378C;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"recover junk command" description:45.0];
}

- (void)handleRepositionStickerCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing reposition sticker command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B643BA8;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"reposition sticker command" description:45.0];
}

- (void)handleScheduledMessageUpdateCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enqueuing scheduled message update command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B643FC4;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"Scheduled Message update command" description:45.0];
}

- (void)handleCrossServiceAssociationCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enqueuing iml to im association command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B6443E0;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"IML to IM association command" description:45.0];
}

- (void)handleAcceptChatCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enqueuing accept chat command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B6447FC;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"accept chat command" description:45.0];
}

- (void)handleTranscriptBackgroundCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enqueuing transcript background command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B644C18;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"transcript background command" description:45.0];
}

- (void)handleJunkChatCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enqueuing junk chat command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B645014;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"junk chat command" description:45.0];
}

- (void)handlePriorityMessageCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enqueuing priority message command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B645430;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"priority message command" description:45.0];
}

- (void)handleMarkAsReviewedCommandWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enqueuing mark as reviewed command processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B64584C;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"mark as reviewed command" description:45.0];
}

- (void)handleMessageWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v9 GUID];
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing message processing (%@)", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = qos_class_self();
      *buf = 67109120;
      LODWORD(v29) = v14;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Enqueue message qos is (%u)", buf, 8u);
    }
  }

  v15 = IMLogHandleForCategory();
  v16 = os_signpost_id_generate(v15);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22B645D6C;
  v22[3] = &unk_278706CD8;
  v23 = v9;
  v24 = v15;
  v26 = v10;
  v27 = v16;
  v25 = v8;
  v17 = v10;
  v18 = v8;
  v19 = v15;
  v20 = v9;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v22 withTimeout:@"message" description:45.0];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleSyndicatedActionWithPipeline:(id)a3 input:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Enquing SyndicationAction processing", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B6464B0;
  v15[3] = &unk_278706C88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(IMDiMessageIncomingMessageHandler *)self _enqueueBlock:v15 withTimeout:@"syndication action" description:45.0];
}

@end