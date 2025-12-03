@interface _MFBatchedMessageConsumer
- (BOOL)shouldCancel;
- (_MFBatchedMessageConsumer)initWithBatchSize:(unint64_t)size messageStore:(id)store filter:(id)filter;
- (void)newMessagesAvailable:(id)available;
@end

@implementation _MFBatchedMessageConsumer

- (_MFBatchedMessageConsumer)initWithBatchSize:(unint64_t)size messageStore:(id)store filter:(id)filter
{
  storeCopy = store;
  filterCopy = filter;
  v17.receiver = self;
  v17.super_class = _MFBatchedMessageConsumer;
  v11 = [(_MFBatchedMessageConsumer *)&v17 init];
  if (v11)
  {
    v12 = objc_alloc_init(NSMutableArray);
    messagesAccumulator = v11->_messagesAccumulator;
    v11->_messagesAccumulator = v12;

    v11->_batchSize = size;
    v14 = objc_retainBlock(filterCopy);
    filter = v11->_filter;
    v11->_filter = v14;

    objc_storeStrong(&v11->_messageStore, store);
  }

  return v11;
}

- (void)newMessagesAvailable:(id)available
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = available;
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
      shouldCancel = [(_MFBatchedMessageConsumer *)self shouldCancel];
      if ((shouldCancel & 1) == 0)
      {
        filter = [(_MFBatchedMessageConsumer *)self filter];
        if (!filter || ([(_MFBatchedMessageConsumer *)self filter], v11 = objc_claimAutoreleasedReturnValue(), v12 = (v11)[2](v11, v7), v11, filter, v12))
        {
          messageStore = [(_MFBatchedMessageConsumer *)self messageStore];
          [v7 setMessageStore:messageStore];

          messagesAccumulator = [(_MFBatchedMessageConsumer *)self messagesAccumulator];
          [messagesAccumulator addObject:v7];
        }
      }

      objc_autoreleasePoolPop(v8);
      if (shouldCancel)
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
  selfCopy = self;
  messagesAccumulator = [(_MFBatchedMessageConsumer *)self messagesAccumulator];
  v4 = [messagesAccumulator count];
  LOBYTE(selfCopy) = v4 >= [(_MFBatchedMessageConsumer *)selfCopy batchSize];

  return selfCopy;
}

@end