@interface _MBLCullOldMessagesJob
- (id)initForMBLMailbox:(id)a3;
- (void)run;
- (void)setMessages:(id)a3;
@end

@implementation _MBLCullOldMessagesJob

- (void)setMessages:(id)a3
{
  v4 = a3;
  if (self->_messages != v4)
  {
    v7 = v4;
    v5 = [(NSMutableArray *)v4 mutableCopy];
    messages = self->_messages;
    self->_messages = v5;

    v4 = v7;
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
        v11 = [v10 mailbox];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
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

- (id)initForMBLMailbox:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MBLCullOldMessagesJob;
  v5 = [(_MBLCullOldMessagesJob *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_messageBodyLoader, v4);
  }

  return v6;
}

@end