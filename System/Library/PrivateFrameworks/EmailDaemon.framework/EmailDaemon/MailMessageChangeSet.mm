@interface MailMessageChangeSet
- (BOOL)commit;
- (MailMessageChangeSet)initWithMessages:(id)messages operation:(id)operation;
- (MailMessageChangeSet)initWithMessages:(id)messages unreadMessages:(id)unreadMessages readMessages:(id)readMessages flaggedMessages:(id)flaggedMessages unflaggedMessages:(id)unflaggedMessages operation:(id)operation;
- (id)accounts;
- (id)applyPendingChangeToObjects:(id)objects;
- (id)localizedErrorDescription;
- (id)localizedErrorTitle;
- (id)stores;
- (void)_populateMessageSets;
- (void)_setMessages:(id)messages;
@end

@implementation MailMessageChangeSet

- (MailMessageChangeSet)initWithMessages:(id)messages operation:(id)operation
{
  messagesCopy = messages;
  operationCopy = operation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MailMessageChangeSet initWithMessages:operation:]", "MailMessageChangeSet.m", 29, "[messages isKindOfClass:[NSSet class]]");
  }

  v11.receiver = self;
  v11.super_class = MailMessageChangeSet;
  v8 = [(MailMessageChangeSet *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MailMessageChangeSet *)v8 _setMessages:messagesCopy];
    objc_storeStrong(&v9->_operation, operation);
    [(MailMessageChangeSet *)v9 _populateMessageSets];
    *(&v9->super + 16) |= 1u;
  }

  return v9;
}

- (MailMessageChangeSet)initWithMessages:(id)messages unreadMessages:(id)unreadMessages readMessages:(id)readMessages flaggedMessages:(id)flaggedMessages unflaggedMessages:(id)unflaggedMessages operation:(id)operation
{
  messagesCopy = messages;
  unreadMessagesCopy = unreadMessages;
  readMessagesCopy = readMessages;
  flaggedMessagesCopy = flaggedMessages;
  unflaggedMessagesCopy = unflaggedMessages;
  operationCopy = operation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MailMessageChangeSet initWithMessages:unreadMessages:readMessages:flaggedMessages:unflaggedMessages:operation:]", "MailMessageChangeSet.m", 44, "[messages isKindOfClass:[NSSet class]]");
  }

  v31.receiver = self;
  v31.super_class = MailMessageChangeSet;
  v20 = [(MailMessageChangeSet *)&v31 init];
  v21 = v20;
  if (v20)
  {
    [(MailMessageChangeSet *)v20 _setMessages:messagesCopy];
    objc_storeStrong(&v21->_operation, operation);
    v22 = [unreadMessagesCopy copy];
    messagesMarkedUnread = v21->_messagesMarkedUnread;
    v21->_messagesMarkedUnread = v22;

    v24 = [readMessagesCopy copy];
    messagesMarkedRead = v21->_messagesMarkedRead;
    v21->_messagesMarkedRead = v24;

    v26 = [flaggedMessagesCopy copy];
    messagesFlagged = v21->_messagesFlagged;
    v21->_messagesFlagged = v26;

    v28 = [unflaggedMessagesCopy copy];
    messagesUnflagged = v21->_messagesUnflagged;
    v21->_messagesUnflagged = v28;

    *(&v21->super + 16) |= 1u;
  }

  return v21;
}

- (void)_setMessages:(id)messages
{
  messagesCopy = messages;
  v5 = messagesCopy;
  if (self->_messagesSet != messagesCopy)
  {
    v6 = [(NSSet *)messagesCopy copy];
    messagesSet = self->_messagesSet;
    self->_messagesSet = v6;

    v8 = objc_alloc_init(MessageToMailboxUidCache);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v5;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 canBeTriaged])
          {
            v14 = [(MessageToMailboxUidCache *)v8 mailboxForMessage:v13];
            store = [v14 store];
            [v13 setMessageStore:store];
          }
        }

        v10 = [(NSSet *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

- (id)localizedErrorDescription
{
  operation = self->_operation;
  v3 = [(NSSet *)self->_messagesSet count];

  return [(MCSMessageOperation *)operation localizedErrorDescriptionForMessageCount:v3];
}

- (id)localizedErrorTitle
{
  operation = self->_operation;
  v3 = [(NSSet *)self->_messagesSet count];

  return [(MCSMessageOperation *)operation localizedErrorTitleForMessageCount:v3];
}

- (void)_populateMessageSets
{
  messagesMarkedRead = self->_messagesMarkedRead;
  self->_messagesMarkedRead = 0;

  messagesMarkedUnread = self->_messagesMarkedUnread;
  self->_messagesMarkedUnread = 0;

  if ([(MCSMessageOperation *)self->_operation willMarkRead])
  {
    v5 = objc_alloc_init(NSMutableSet);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v6 = self->_messagesSet;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v7)
    {
      v8 = *v46;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v46 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v45 + 1) + 8 * i);
          if (([v10 messageFlags] & 1) == 0)
          {
            [(NSSet *)v5 addObject:v10];
          }
        }

        v7 = [(NSSet *)v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v7);
    }

    v11 = self->_messagesMarkedRead;
    self->_messagesMarkedRead = v5;
  }

  else
  {
    if (![(MCSMessageOperation *)self->_operation willMarkUnread])
    {
      goto LABEL_24;
    }

    v12 = objc_alloc_init(NSMutableSet);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = self->_messagesSet;
    v14 = [(NSSet *)v13 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v14)
    {
      v15 = *v42;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v41 + 1) + 8 * j);
          if ([v17 messageFlags])
          {
            [(NSSet *)v12 addObject:v17];
          }
        }

        v14 = [(NSSet *)v13 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v14);
    }

    v11 = self->_messagesMarkedUnread;
    self->_messagesMarkedUnread = v12;
  }

LABEL_24:
  messagesUnflagged = self->_messagesUnflagged;
  self->_messagesUnflagged = 0;

  messagesFlagged = self->_messagesFlagged;
  self->_messagesFlagged = 0;

  if ([(MCSMessageOperation *)self->_operation willUnflag])
  {
    v20 = objc_alloc_init(NSMutableSet);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = self->_messagesSet;
    v22 = [(NSSet *)v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v22)
    {
      v23 = *v38;
      do
      {
        for (k = 0; k != v22; k = k + 1)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v37 + 1) + 8 * k);
          if (([v25 messageFlags] & 0x10) != 0)
          {
            [(NSSet *)v20 addObject:v25];
          }
        }

        v22 = [(NSSet *)v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v22);
    }

    v26 = self->_messagesUnflagged;
    self->_messagesUnflagged = v20;
  }

  else
  {
    if (![(MCSMessageOperation *)self->_operation willFlag])
    {
      return;
    }

    v27 = objc_alloc_init(NSMutableSet);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = self->_messagesSet;
    v29 = [(NSSet *)v28 countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v29)
    {
      v30 = *v34;
      do
      {
        for (m = 0; m != v29; m = m + 1)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v33 + 1) + 8 * m);
          if (([v32 messageFlags] & 0x10) == 0)
          {
            [(NSSet *)v27 addObject:v32];
          }
        }

        v29 = [(NSSet *)v28 countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v29);
    }

    v26 = self->_messagesFlagged;
    self->_messagesFlagged = v27;
  }
}

- (id)applyPendingChangeToObjects:(id)objects
{
  objectsCopy = objects;
  if (![(MCSChange *)self isFinalized])
  {
    __assert_rtn("[MailMessageChangeSet applyPendingChangeToObjects:]", "MailMessageChangeSet.m", 136, "[self isFinalized]");
  }

  v5 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(NSSet *)self->_messagesSet containsObject:v10, v13])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(MCSOperation *)self->_operation applyPendingChangeToObjects:v5];

  return v11;
}

- (BOOL)commit
{
  if (![(MCSChange *)self isFinalized])
  {
    sub_1000D36A8();
  }

  v3 = objc_alloc_init(NSMutableSet);
  v4 = objc_alloc_init(NSMutableSet);
  v5 = [(MCSMessageOperation *)self->_operation commitToMessages:self->_messagesSet failures:v3 newMessages:v4];
  if ([v4 count])
  {
    [(MailMessageChangeSet *)self _setMessages:v4];
  }

  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412802;
    selfCopy = self;
    v10 = 1024;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#ChangeSetActions Committed %@ with result %d (%@)", &v8, 0x1Cu);
  }

  return v5;
}

- (id)stores
{
  if (![(MCSChange *)self isFinalized])
  {
    sub_1000D36D4();
  }

  v3 = objc_alloc_init(NSMutableSet);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_messagesSet;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        messageStore = [*(*(&v10 + 1) + 8 * i) messageStore];
        if (messageStore)
        {
          [v3 addObject:messageStore];
        }
      }

      v5 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)accounts
{
  if (![(MCSChange *)self isFinalized])
  {
    sub_1000D3700();
  }

  v3 = +[NSMutableSet set];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  stores = [(MailMessageChangeSet *)self stores];
  v5 = [stores countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(stores);
        }

        account = [*(*(&v10 + 1) + 8 * i) account];
        if (account)
        {
          [v3 addObject:account];
        }
      }

      v5 = [stores countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

@end