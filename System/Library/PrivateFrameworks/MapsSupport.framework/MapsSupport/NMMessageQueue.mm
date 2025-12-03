@interface NMMessageQueue
- (BOOL)shouldSendNewPayload;
- (NMMessageQueue)init;
- (unint64_t)count;
- (void)_trimPendingMessagesIfNeeded;
- (void)dequeueMessageIfPossible:(id)possible orReply:(id)reply;
- (void)didSendPayloadWithSize:(unint64_t)size;
- (void)enqueueMessage:(id)message options:(id)options reply:(id)reply;
- (void)enqueueReply:(id)reply forMessage:(id)message options:(id)options;
- (void)removeAllMessages;
- (void)removeMessage:(id)message;
- (void)removeReply:(id)reply;
- (void)willSendPayloadWithSize:(unint64_t)size;
@end

@implementation NMMessageQueue

- (BOOL)shouldSendNewPayload
{
  if (self->_maximumInFlightMessagesCount == -1 && self->_maximumInFlightMessagesSize == -1)
  {
    return 1;
  }

  [(NSLock *)self->_queueLock lock];
  if (self->_inFlightPayloadsSize >= self->_maximumInFlightMessagesSize)
  {
    [(NSLock *)self->_queueLock unlock];
    goto LABEL_9;
  }

  inFlightPayloadsCount = self->_inFlightPayloadsCount;
  maximumInFlightMessagesCount = self->_maximumInFlightMessagesCount;
  [(NSLock *)self->_queueLock unlock];
  if (inFlightPayloadsCount >= maximumInFlightMessagesCount)
  {
LABEL_9:
    v5 = sub_100001B24();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = self->_inFlightPayloadsCount;
      inFlightPayloadsSize = self->_inFlightPayloadsSize;
      v11 = self->_maximumInFlightMessagesCount;
      maximumInFlightMessagesSize = self->_maximumInFlightMessagesSize;
      v14 = 134218752;
      v15 = v9;
      v16 = 2048;
      v17 = v11;
      v18 = 2048;
      v19 = inFlightPayloadsSize;
      v20 = 2048;
      v21 = maximumInFlightMessagesSize;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Delaying message/reply send due to too many/too large in-flight payloads (%lu in-flight payloads (%lu max), %lu total bytes (%lu max))", &v14, 0x2Au);
    }

    v8 = 0;
    goto LABEL_12;
  }

  v5 = sub_100001B24();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_inFlightPayloadsCount;
    v7 = self->_inFlightPayloadsSize;
    v14 = 134218240;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Allowing message/reply to send immediately (%lu in-flight payloads, %lu total bytes)", &v14, 0x16u);
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (NMMessageQueue)init
{
  v10.receiver = self;
  v10.super_class = NMMessageQueue;
  v2 = [(NMMessageQueue *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_maximumPendingMessagesCount = -1;
    v2->_maximumInFlightMessagesCount = -1;
    v2->_maximumInFlightMessagesSize = -1;
    v4 = objc_alloc_init(NSMutableArray);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = objc_alloc_init(NSLock);
    queueLock = v3->_queueLock;
    v3->_queueLock = v6;

    v8 = v3;
  }

  return v3;
}

- (unint64_t)count
{
  [(NSLock *)self->_queueLock lock];
  v3 = [(NSMutableArray *)self->_queue count];
  [(NSLock *)self->_queueLock unlock];
  return v3;
}

- (void)enqueueMessage:(id)message options:(id)options reply:(id)reply
{
  if (message)
  {
    replyCopy = reply;
    optionsCopy = options;
    messageCopy = message;
    v12 = objc_alloc_init(_NMEnqueuedMessage);
    [(_NMEnqueuedMessage *)v12 setMessage:messageCopy];
    [(_NMEnqueuedMessage *)v12 setOptions:optionsCopy];

    [(_NMEnqueuedMessage *)v12 setReplyBlock:replyCopy];
    [(_NMEnqueuedMessage *)v12 setEnqueuedTime:CFAbsoluteTimeGetCurrent()];
    [(NSLock *)self->_queueLock lock];
    [(NSMutableArray *)self->_queue addObject:v12];
    [(NSLock *)self->_queueLock unlock];
    [(NMMessageQueue *)self _trimPendingMessagesIfNeeded];
    type = [messageCopy type];

    [(NMMessageQueue *)self _trimPendingMessagesIfNeededOfType:type];
  }
}

- (void)enqueueReply:(id)reply forMessage:(id)message options:(id)options
{
  if (reply)
  {
    optionsCopy = options;
    messageCopy = message;
    replyCopy = reply;
    v11 = objc_alloc_init(_NMEnqueuedMessage);
    [(_NMEnqueuedMessage *)v11 setReply:replyCopy];

    [(_NMEnqueuedMessage *)v11 setMessage:messageCopy];
    [(_NMEnqueuedMessage *)v11 setOptions:optionsCopy];

    [(_NMEnqueuedMessage *)v11 setEnqueuedTime:CFAbsoluteTimeGetCurrent()];
    [(NSLock *)self->_queueLock lock];
    [(NSMutableArray *)self->_queue addObject:v11];
    [(NSLock *)self->_queueLock unlock];
  }
}

- (void)_trimPendingMessagesIfNeeded
{
  [(NSLock *)self->_queueLock lock];
  v3 = sub_1000282B8(self->_queue, &stru_1000851F8);
  if ([v3 count] && objc_msgSend(v3, "count") > self->_maximumPendingMessagesCount)
  {
    v4 = [v3 count] - self->_maximumPendingMessagesCount;
    v5 = sub_100001B24();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3 count];
      maximumPendingMessagesCount = self->_maximumPendingMessagesCount;
      v10 = 134218496;
      v11 = v6;
      v12 = 2048;
      v13 = maximumPendingMessagesCount;
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Too many enqueued messages (current:%lu, max:%lu), dropping %lu oldest", &v10, 0x20u);
    }

    queue = self->_queue;
    v9 = [v3 subarrayWithRange:{0, v4}];
    [(NSMutableArray *)queue removeObjectsInArray:v9];
  }

  [(NSLock *)self->_queueLock unlock];
}

- (void)dequeueMessageIfPossible:(id)possible orReply:(id)reply
{
  possibleCopy = possible;
  replyCopy = reply;
  if (![(NMMessageQueue *)self isPaused])
  {
    [(NSLock *)self->_queueLock lock];
    firstObject = [(NSMutableArray *)self->_queue firstObject];
    if (!firstObject)
    {
      [(NSLock *)self->_queueLock unlock];
      goto LABEL_14;
    }

    [(NSMutableArray *)self->_queue removeObjectAtIndex:0];
    v9 = sub_100001B24();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      message = [firstObject message];
      shortDebugDescription = [message shortDebugDescription];
      v12 = [(NSMutableArray *)self->_queue count];
      v23 = 138412546;
      v24 = shortDebugDescription;
      v25 = 2048;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Dequeued message: %@, %lu remaining in queue", &v23, 0x16u);
    }

    [(NSLock *)self->_queueLock unlock];
    reply = [firstObject reply];

    if (reply)
    {
      if (!replyCopy)
      {
        goto LABEL_14;
      }

      reply2 = [firstObject reply];
      message2 = [firstObject message];
      options = [firstObject options];
      Current = CFAbsoluteTimeGetCurrent();
      [firstObject enqueuedTime];
      v19.n128_f64[0] = Current - v18;
      replyCopy[2](replyCopy, reply2, message2, options, v19);
    }

    else
    {
      if (!possibleCopy)
      {
        goto LABEL_14;
      }

      reply2 = [firstObject message];
      message2 = [firstObject options];
      options = [firstObject replyBlock];
      v20 = CFAbsoluteTimeGetCurrent();
      [firstObject enqueuedTime];
      v22.n128_f64[0] = v20 - v21;
      possibleCopy[2](possibleCopy, reply2, message2, options, v22);
    }

    goto LABEL_14;
  }

  firstObject = sub_100001B24();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_INFO, "Will not dequeue message, currently paused", &v23, 2u);
  }

LABEL_14:
}

- (void)willSendPayloadWithSize:(unint64_t)size
{
  [(NSLock *)self->_queueLock lock];
  v5.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v5.i64[1] = size;
  *&self->_inFlightPayloadsCount = vaddq_s64(*&self->_inFlightPayloadsCount, v5);
  queueLock = self->_queueLock;

  [(NSLock *)queueLock unlock];
}

- (void)didSendPayloadWithSize:(unint64_t)size
{
  [(NSLock *)self->_queueLock lock];
  inFlightPayloadsCount = self->_inFlightPayloadsCount;
  if (inFlightPayloadsCount)
  {
    self->_inFlightPayloadsCount = inFlightPayloadsCount - 1;
  }

  else
  {
    v6 = sub_100001B24();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Trying to decrement message queue in-flight count, but would underflow! Ignoring...", buf, 2u);
    }
  }

  inFlightPayloadsSize = self->_inFlightPayloadsSize;
  v8 = inFlightPayloadsSize >= size;
  v9 = inFlightPayloadsSize - size;
  if (v8)
  {
    self->_inFlightPayloadsSize = v9;
  }

  else
  {
    v10 = sub_100001B24();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Trying to decrement message queue in-flight size, but would underflow! Ignoring...", v11, 2u);
    }
  }

  [(NSLock *)self->_queueLock unlock];
}

- (void)removeMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    v5 = sub_100001B24();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      shortDebugDescription = [messageCopy shortDebugDescription];
      *buf = 138412290;
      v23 = shortDebugDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing message: %@", buf, 0xCu);
    }

    [(NSLock *)self->_queueLock lock];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_queue;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        message = [v12 message];

        if (message == messageCopy)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v14 = v12;

      if (!v14)
      {
        goto LABEL_17;
      }

      [(NSMutableArray *)self->_queue removeObject:v14];
      [(NSLock *)self->_queueLock unlock];
      v15 = sub_100001B24();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription2 = [messageCopy shortDebugDescription];
        *buf = 138412290;
        v23 = shortDebugDescription2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Found and removed enqueued message: %@", buf, 0xCu);
      }
    }

    else
    {
LABEL_12:

LABEL_17:
      [(NSLock *)self->_queueLock unlock];
    }
  }
}

- (void)removeReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(NSLock *)self->_queueLock lock];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_queue;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          reply = [v10 reply];

          if (reply == replyCopy)
          {
            v12 = v10;

            if (v12)
            {
              [(NSMutableArray *)self->_queue removeObject:v12];
            }

            goto LABEL_13;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:
    [(NSLock *)self->_queueLock unlock];
  }
}

- (void)removeAllMessages
{
  [(NSLock *)self->_queueLock lock];
  [(NSMutableArray *)self->_queue removeAllObjects];
  queueLock = self->_queueLock;

  [(NSLock *)queueLock unlock];
}

@end