@interface IMDMessageSortOrderAssigner
- (id)copyOfMessagesWithReplyToGUID:(id)a3;
- (id)messageWithGUID:(id)a3;
- (void)assignAndPersistSortIDForIncomingMessage:(id)a3 onChat:(id)a4;
- (void)assignSortIDToIncomingMessage:(id)a3 onChat:(id)a4;
- (void)assignSortIDToIncomingMessageWithNoExistingMessagesWithSameReplyToGUID:(id)a3 onChat:(id)a4;
- (void)compareMessageToOtherMessagesWithSameReplyToGUIDAndAssignSortID:(id)a3 existingMessagesWithSameReplyToGUID:(id)a4;
- (void)persistMessage:(id)a3;
@end

@implementation IMDMessageSortOrderAssigner

- (id)messageWithGUID:(id)a3
{
  v4 = +[IMDMessageStore sharedInstance];

  return [(IMDMessageStore *)v4 itemWithGUID:a3];
}

- (id)copyOfMessagesWithReplyToGUID:(id)a3
{
  v3 = +[IMDMessageStore sharedInstance];

  return MEMORY[0x2821F9670](v3, sel_messagesWithReplyToGUID_);
}

- (void)compareMessageToOtherMessagesWithSameReplyToGUIDAndAssignSortID:(id)a3 existingMessagesWithSameReplyToGUID:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = 0;
  v7 = [a4 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = 0;
  v9 = *v23;
  do
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(a4);
      }

      v12 = *(*(&v22 + 1) + 8 * v10);
      if ([v12 isOlderThanItem:a3])
      {
        v8 = v12;
        if (v11)
        {
          if ([v11 isOlderThanItem:v12])
          {
            v8 = v12;
          }

          else
          {
            v8 = v11;
          }
        }
      }

      else if ([objc_msgSend(v12 "time")])
      {
        v8 = v11;
      }

      else if (![a3 messageID] || (v13 = objc_msgSend(v12, "messageID"), v8 = v11, v13 < objc_msgSend(a3, "messageID")))
      {
        v8 = v12;
      }

      if (!v6 || [v12 isOlderThanItem:v6])
      {
        v6 = v12;
      }

      ++v10;
      v11 = v8;
    }

    while (v7 != v10);
    v7 = [a4 countByEnumeratingWithState:&v22 objects:v32 count:16];
  }

  while (v7);
  if (v8)
  {
    v14 = [v8 sortID];
  }

  else
  {
LABEL_23:
    v15 = -[IMDMessageSortOrderAssigner messageWithGUID:](self, "messageWithGUID:", [a3 replyToGUID]);
    if (!v15)
    {
      v16 = [v6 sortID] - 50;
      goto LABEL_27;
    }

    v14 = [v15 sortID];
  }

  v16 = v14 + 50;
LABEL_27:
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [a3 guid];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
      *buf = 136315650;
      v27 = "[IMDMessageSortOrderAssigner compareMessageToOtherMessagesWithSameReplyToGUIDAndAssignSortID:existingMessagesWithSameReplyToGUID:]";
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "%s assigning %@ sortID %@", buf, 0x20u);
    }
  }

  [a3 setSortID:v16];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)assignSortIDToIncomingMessageWithNoExistingMessagesWithSameReplyToGUID:(id)a3 onChat:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = -[IMDMessageSortOrderAssigner messageWithGUID:](self, "messageWithGUID:", [a3 replyToGUID]);
  v8 = -[IMDMessageSortOrderAssigner copyOfMessagesWithReplyToGUID:](self, "copyOfMessagesWithReplyToGUID:", [a3 guid]);
  if (![v8 count] || (v23 = 0u, v24 = 0u, v21 = 0u, v22 = 0u, (v9 = objc_msgSend(v8, "countByEnumeratingWithState:objects:count:", &v21, v31, 16)) == 0))
  {
    if (!v7)
    {
LABEL_22:
      v15 = [objc_msgSend(a4 "lastMessage")];
      goto LABEL_23;
    }

LABEL_21:
    v15 = [v7 sortID];
LABEL_23:
    v16 = v15 + 100;
    goto LABEL_24;
  }

  v10 = 0;
  v11 = *v22;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      if (!v10 || [*(*(&v21 + 1) + 8 * i) isOlderThanItem:v10])
      {
        v10 = v13;
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
  }

  while (v9);
  if (v10)
  {
    v14 = v7 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (!v7)
    {
      if (v10)
      {
        v16 = [v10 sortID] - 50;
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = [v7 sortID] + 50;
LABEL_24:
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [a3 guid];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
      *buf = 136315650;
      v26 = "[IMDMessageSortOrderAssigner assignSortIDToIncomingMessageWithNoExistingMessagesWithSameReplyToGUID:onChat:]";
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "%s assigning %@ sortID %@", buf, 0x20u);
    }
  }

  [a3 setSortID:v16];
  if (v8)
  {
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)persistMessage:(id)a3
{
  v4 = +[IMDMessageStore sharedInstance];

  [(IMDMessageStore *)v4 storeItem:a3 forceReplace:0];
}

- (void)assignSortIDToIncomingMessage:(id)a3 onChat:(id)a4
{
  v7 = -[IMDMessageSortOrderAssigner copyOfMessagesWithReplyToGUID:](self, "copyOfMessagesWithReplyToGUID:", [a3 replyToGUID]);
  if ([v7 count])
  {
    [(IMDMessageSortOrderAssigner *)self compareMessageToOtherMessagesWithSameReplyToGUIDAndAssignSortID:a3 existingMessagesWithSameReplyToGUID:v7];
  }

  else
  {
    [(IMDMessageSortOrderAssigner *)self assignSortIDToIncomingMessageWithNoExistingMessagesWithSameReplyToGUID:a3 onChat:a4];
  }

  if (v7)
  {
  }
}

- (void)assignAndPersistSortIDForIncomingMessage:(id)a3 onChat:(id)a4
{
  [(IMDMessageSortOrderAssigner *)self assignSortIDToIncomingMessage:a3 onChat:a4];

  MEMORY[0x2821F9670](self, sel_persistMessage_);
}

@end