@interface EDInteractionEventLogMultiplexer
- (EDInteractionEventLogMultiplexer)initWithLogs:(id)logs;
- (id)description;
- (void)persistEvent:(id)event dataFromMessage:(id)message;
- (void)persistEvent:(id)event dataFromMessage:(id)message account:(id)account;
- (void)persistEvent:(id)event date:(id)date conversationID:(int64_t)d data:(id)data;
- (void)persistEvent:(id)event date:(id)date message:(id)message data:(id)data;
- (void)persistEvent:(id)event date:(id)date message:(id)message mailbox:(id)mailbox;
- (void)persistEvent:(id)event date:(id)date message:(id)message mailboxType:(int64_t)type;
@end

@implementation EDInteractionEventLogMultiplexer

- (EDInteractionEventLogMultiplexer)initWithLogs:(id)logs
{
  logsCopy = logs;
  v9.receiver = self;
  v9.super_class = EDInteractionEventLogMultiplexer;
  v6 = [(EDInteractionEventLogMultiplexer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logs, logs);
  }

  return v7;
}

- (void)persistEvent:(id)event date:(id)date message:(id)message data:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  messageCopy = message;
  dataCopy = data;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v15 = [logs countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v19 + 1) + 8 * v17++) persistEvent:eventCopy date:dateCopy message:messageCopy data:dataCopy];
      }

      while (v15 != v17);
      v15 = [logs countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)event date:(id)date conversationID:(int64_t)d data:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  dataCopy = data;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v14 = [logs countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v18 + 1) + 8 * v16++) persistEvent:eventCopy date:dateCopy conversationID:d data:dataCopy];
      }

      while (v14 != v16);
      v14 = [logs countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)event dataFromMessage:(id)message
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  messageCopy = message;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v9 = [logs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v13 + 1) + 8 * v11++) persistEvent:eventCopy dataFromMessage:messageCopy];
      }

      while (v9 != v11);
      v9 = [logs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)event dataFromMessage:(id)message account:(id)account
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  messageCopy = message;
  accountCopy = account;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v12 = [logs countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v16 + 1) + 8 * v14++) persistEvent:eventCopy dataFromMessage:messageCopy account:accountCopy];
      }

      while (v12 != v14);
      v12 = [logs countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)event date:(id)date message:(id)message mailbox:(id)mailbox
{
  v24 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  messageCopy = message;
  mailboxCopy = mailbox;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v15 = [logs countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v19 + 1) + 8 * v17++) persistEvent:eventCopy date:dateCopy message:messageCopy mailbox:mailboxCopy];
      }

      while (v15 != v17);
      v15 = [logs countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)event date:(id)date message:(id)message mailboxType:(int64_t)type
{
  v23 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  messageCopy = message;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v14 = [logs countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v18 + 1) + 8 * v16++) persistEvent:eventCopy date:dateCopy message:messageCopy mailboxType:type];
      }

      while (v14 != v16);
      v14 = [logs countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v6 = [v3 initWithFormat:@"<%@ %p: %@>", v4, self, logs];

  return v6;
}

@end