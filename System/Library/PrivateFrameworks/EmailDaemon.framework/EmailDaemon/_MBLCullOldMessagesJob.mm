@interface _MBLCullOldMessagesJob
- (id)initForMBLMailbox:(id)mailbox;
- (void)run;
- (void)setMessages:(id)messages;
@end

@implementation _MBLCullOldMessagesJob

- (void)setMessages:(id)messages
{
  messagesCopy = messages;
  if (self->_messages != messagesCopy)
  {
    v7 = messagesCopy;
    v5 = [(NSMutableArray *)messagesCopy mutableCopy];
    messages = self->_messages;
    self->_messages = v5;

    messagesCopy = v7;
  }
}

- (void)run
{
  v2 = +[NSMutableArray array];
  context = 256;
  v3 = MFComparatorFunctionForSortOrder();
  messages = self->_messages;
  v23.length = [(NSMutableArray *)messages count];
  v23.location = 0;
  CFArraySortValues(messages, v23, v3, &context);
  v5 = +[NSCountedSet set];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_messages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        mailbox = [v10 mailbox];
        v12 = mailbox;
        if (mailbox)
        {
          v13 = mailbox;
        }

        else
        {
          v13 = +[NSNull null];
        }

        v14 = v13;

        [v5 addObject:v14];
        if ([v5 countForObject:v14] >= 0xC9)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageBodyLoader);
  [WeakRetained _removeNewMessages:v2];
}

- (id)initForMBLMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v8.receiver = self;
  v8.super_class = _MBLCullOldMessagesJob;
  v5 = [(_MBLCullOldMessagesJob *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_messageBodyLoader, mailboxCopy);
  }

  return v6;
}

@end