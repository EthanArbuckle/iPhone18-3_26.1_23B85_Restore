@interface IMDMessageSortOrderAssigner
- (id)copyOfMessagesWithReplyToGUID:(id)d;
- (id)messageWithGUID:(id)d;
- (void)assignAndPersistSortIDForIncomingMessage:(id)message onChat:(id)chat;
- (void)assignSortIDToIncomingMessage:(id)message onChat:(id)chat;
- (void)assignSortIDToIncomingMessageWithNoExistingMessagesWithSameReplyToGUID:(id)d onChat:(id)chat;
- (void)compareMessageToOtherMessagesWithSameReplyToGUIDAndAssignSortID:(id)d existingMessagesWithSameReplyToGUID:(id)iD;
- (void)persistMessage:(id)message;
@end

@implementation IMDMessageSortOrderAssigner

- (id)messageWithGUID:(id)d
{
  v4 = +[IMDMessageStore sharedInstance];

  return [(IMDMessageStore *)v4 itemWithGUID:d];
}

- (id)copyOfMessagesWithReplyToGUID:(id)d
{
  v3 = +[IMDMessageStore sharedInstance];

  return MEMORY[0x2821F9670](v3, sel_messagesWithReplyToGUID_);
}

- (void)compareMessageToOtherMessagesWithSameReplyToGUIDAndAssignSortID:(id)d existingMessagesWithSameReplyToGUID:(id)iD
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = 0;
  v7 = [iD countByEnumeratingWithState:&v22 objects:v32 count:16];
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
        objc_enumerationMutation(iD);
      }

      v12 = *(*(&v22 + 1) + 8 * v10);
      if ([v12 isOlderThanItem:d])
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

      else if (![d messageID] || (v13 = objc_msgSend(v12, "messageID"), v8 = v11, v13 < objc_msgSend(d, "messageID")))
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
    v7 = [iD countByEnumeratingWithState:&v22 objects:v32 count:16];
  }

  while (v7);
  if (v8)
  {
    sortID = [v8 sortID];
  }

  else
  {
LABEL_23:
    v15 = -[IMDMessageSortOrderAssigner messageWithGUID:](self, "messageWithGUID:", [d replyToGUID]);
    if (!v15)
    {
      v16 = [v6 sortID] - 50;
      goto LABEL_27;
    }

    sortID = [v15 sortID];
  }

  v16 = sortID + 50;
LABEL_27:
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      guid = [d guid];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
      *buf = 136315650;
      v27 = "[IMDMessageSortOrderAssigner compareMessageToOtherMessagesWithSameReplyToGUIDAndAssignSortID:existingMessagesWithSameReplyToGUID:]";
      v28 = 2112;
      v29 = guid;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "%s assigning %@ sortID %@", buf, 0x20u);
    }
  }

  [d setSortID:v16];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)assignSortIDToIncomingMessageWithNoExistingMessagesWithSameReplyToGUID:(id)d onChat:(id)chat
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = -[IMDMessageSortOrderAssigner messageWithGUID:](self, "messageWithGUID:", [d replyToGUID]);
  v8 = -[IMDMessageSortOrderAssigner copyOfMessagesWithReplyToGUID:](self, "copyOfMessagesWithReplyToGUID:", [d guid]);
  if (![v8 count] || (v23 = 0u, v24 = 0u, v21 = 0u, v22 = 0u, (v9 = objc_msgSend(v8, "countByEnumeratingWithState:objects:count:", &v21, v31, 16)) == 0))
  {
    if (!v7)
    {
LABEL_22:
      sortID = [objc_msgSend(chat "lastMessage")];
      goto LABEL_23;
    }

LABEL_21:
    sortID = [v7 sortID];
LABEL_23:
    v16 = sortID + 100;
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
      guid = [d guid];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
      *buf = 136315650;
      v26 = "[IMDMessageSortOrderAssigner assignSortIDToIncomingMessageWithNoExistingMessagesWithSameReplyToGUID:onChat:]";
      v27 = 2112;
      v28 = guid;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "%s assigning %@ sortID %@", buf, 0x20u);
    }
  }

  [d setSortID:v16];
  if (v8)
  {
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)persistMessage:(id)message
{
  v4 = +[IMDMessageStore sharedInstance];

  [(IMDMessageStore *)v4 storeItem:message forceReplace:0];
}

- (void)assignSortIDToIncomingMessage:(id)message onChat:(id)chat
{
  v7 = -[IMDMessageSortOrderAssigner copyOfMessagesWithReplyToGUID:](self, "copyOfMessagesWithReplyToGUID:", [message replyToGUID]);
  if ([v7 count])
  {
    [(IMDMessageSortOrderAssigner *)self compareMessageToOtherMessagesWithSameReplyToGUIDAndAssignSortID:message existingMessagesWithSameReplyToGUID:v7];
  }

  else
  {
    [(IMDMessageSortOrderAssigner *)self assignSortIDToIncomingMessageWithNoExistingMessagesWithSameReplyToGUID:message onChat:chat];
  }

  if (v7)
  {
  }
}

- (void)assignAndPersistSortIDForIncomingMessage:(id)message onChat:(id)chat
{
  [(IMDMessageSortOrderAssigner *)self assignSortIDToIncomingMessage:message onChat:chat];

  MEMORY[0x2821F9670](self, sel_persistMessage_);
}

@end