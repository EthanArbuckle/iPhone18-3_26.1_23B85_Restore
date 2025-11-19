@interface _MFBatchedMessageConsumer
- (BOOL)shouldCancel;
- (_MFBatchedMessageConsumer)initWithBatchSize:(unint64_t)a3 messageStore:(id)a4 filter:(id)a5;
- (void)newMessagesAvailable:(id)a3;
@end

@implementation _MFBatchedMessageConsumer

- (_MFBatchedMessageConsumer)initWithBatchSize:(unint64_t)a3 messageStore:(id)a4 filter:(id)a5
{
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = _MFBatchedMessageConsumer;
  v11 = [(_MFBatchedMessageConsumer *)&v17 init];
  if (v11)
  {
    v12 = objc_alloc_init(NSMutableArray);
    messagesAccumulator = v11->_messagesAccumulator;
    v11->_messagesAccumulator = v12;

    v11->_batchSize = a3;
    v14 = objc_retainBlock(v10);
    filter = v11->_filter;
    v11->_filter = v14;

    objc_storeStrong(&v11->_messageStore, a4);
  }

  return v11;
}

- (void)newMessagesAvailable:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v16 + 1) + 8 * v6);
      v8 = objc_autoreleasePoolPush();
      v9 = [(_MFBatchedMessageConsumer *)self shouldCancel];
      if ((v9 & 1) == 0)
      {
        v10 = [(_MFBatchedMessageConsumer *)self filter];
        if (!v10 || ([(_MFBatchedMessageConsumer *)self filter], v11 = objc_claimAutoreleasedReturnValue(), v12 = (v11)[2](v11, v7), v11, v10, v12))
        {
          v13 = [(_MFBatchedMessageConsumer *)self messageStore];
          [v7 setMessageStore:v13];

          v14 = [(_MFBatchedMessageConsumer *)self messagesAccumulator];
          [v14 addObject:v7];
        }
      }

      objc_autoreleasePoolPop(v8);
      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)shouldCancel
{
  v2 = self;
  v3 = [(_MFBatchedMessageConsumer *)self messagesAccumulator];
  v4 = [v3 count];
  LOBYTE(v2) = v4 >= [(_MFBatchedMessageConsumer *)v2 batchSize];

  return v2;
}

@end