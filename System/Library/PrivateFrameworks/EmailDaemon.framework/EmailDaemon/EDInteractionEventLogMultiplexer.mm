@interface EDInteractionEventLogMultiplexer
- (EDInteractionEventLogMultiplexer)initWithLogs:(id)a3;
- (id)description;
- (void)persistEvent:(id)a3 dataFromMessage:(id)a4;
- (void)persistEvent:(id)a3 dataFromMessage:(id)a4 account:(id)a5;
- (void)persistEvent:(id)a3 date:(id)a4 conversationID:(int64_t)a5 data:(id)a6;
- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 data:(id)a6;
- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 mailbox:(id)a6;
- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 mailboxType:(int64_t)a6;
@end

@implementation EDInteractionEventLogMultiplexer

- (EDInteractionEventLogMultiplexer)initWithLogs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EDInteractionEventLogMultiplexer;
  v6 = [(EDInteractionEventLogMultiplexer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logs, a3);
  }

  return v7;
}

- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 data:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(EDInteractionEventLogMultiplexer *)self logs];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v17++) persistEvent:v10 date:v11 message:v12 data:v13];
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)a3 date:(id)a4 conversationID:(int64_t)a5 data:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(EDInteractionEventLogMultiplexer *)self logs];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v16++) persistEvent:v10 date:v11 conversationID:a5 data:v12];
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)a3 dataFromMessage:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(EDInteractionEventLogMultiplexer *)self logs];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v11++) persistEvent:v6 dataFromMessage:v7];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)a3 dataFromMessage:(id)a4 account:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(EDInteractionEventLogMultiplexer *)self logs];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v14++) persistEvent:v8 dataFromMessage:v9 account:v10];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 mailbox:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(EDInteractionEventLogMultiplexer *)self logs];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v17++) persistEvent:v10 date:v11 message:v12 mailbox:v13];
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 mailboxType:(int64_t)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(EDInteractionEventLogMultiplexer *)self logs];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v16++) persistEvent:v10 date:v11 message:v12 mailboxType:a6];
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(EDInteractionEventLogMultiplexer *)self logs];
  v6 = [v3 initWithFormat:@"<%@ %p: %@>", v4, self, v5];

  return v6;
}

@end