@interface MFNanoServerFullMessageLoaderBatchRequest
- (BOOL)enqueueMessageId:(id)id;
- (BOOL)enqueueMessageIds:(id)ids;
- (MFNanoServerFullMessageLoaderBatchRequest)initWithMessageIds:(id)ids completion:(id)completion;
- (id)dequeueAllMessageIds;
- (id)dequeueMessageId;
- (void)addResult:(id)result isProtectedMessage:(BOOL)message;
- (void)cancelRequestForMessageId:(id)id;
- (void)cancelRequestForMessageIds:(id)ids;
@end

@implementation MFNanoServerFullMessageLoaderBatchRequest

- (MFNanoServerFullMessageLoaderBatchRequest)initWithMessageIds:(id)ids completion:(id)completion
{
  idsCopy = ids;
  completionCopy = completion;
  v18.receiver = self;
  v18.super_class = MFNanoServerFullMessageLoaderBatchRequest;
  v8 = [(MFNanoServerFullMessageLoaderBatchRequest *)&v18 init];
  if (v8)
  {
    v9 = [[NSMutableOrderedSet alloc] initWithArray:idsCopy];
    outstandingMessageIdRequests = v8->_outstandingMessageIdRequests;
    v8->_outstandingMessageIdRequests = v9;

    v11 = [[NSMutableSet alloc] initWithArray:idsCopy];
    pendingMessageIdRequests = v8->_pendingMessageIdRequests;
    v8->_pendingMessageIdRequests = v11;

    v13 = [completionCopy copy];
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v13;

    v15 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(idsCopy, "count")}];
    resultedMessagesById = v8->_resultedMessagesById;
    v8->_resultedMessagesById = v15;

    v8->_resultIncludesProtectedMessages = 0;
  }

  return v8;
}

- (id)dequeueAllMessageIds
{
  array = [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests array];
  v4 = [array copy];

  if ([v4 count])
  {
    [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests removeAllObjects];
  }

  return v4;
}

- (id)dequeueMessageId
{
  firstObject = [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests firstObject];
  if (firstObject)
  {
    [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests removeObject:firstObject];
  }

  return firstObject;
}

- (BOOL)enqueueMessageIds:(id)ids
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  idsCopy = ids;
  v5 = 0;
  v6 = [idsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(idsCopy);
        }

        v5 |= [(MFNanoServerFullMessageLoaderBatchRequest *)self enqueueMessageId:*(*(&v10 + 1) + 8 * v8), v10];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [idsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v5 & 1;
}

- (BOOL)enqueueMessageId:(id)id
{
  idCopy = id;
  v5 = [(NSMutableSet *)self->_pendingMessageIdRequests containsObject:idCopy];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests addObject:idCopy];
  }

  return v5;
}

- (void)cancelRequestForMessageId:(id)id
{
  idCopy = id;
  [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests removeObject:?];
  [(NSMutableSet *)self->_pendingMessageIdRequests removeObject:idCopy];
  [(NSMutableDictionary *)self->_resultedMessagesById removeObjectForKey:idCopy];
}

- (void)cancelRequestForMessageIds:(id)ids
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  idsCopy = ids;
  v5 = [idsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(idsCopy);
        }

        [(MFNanoServerFullMessageLoaderBatchRequest *)self cancelRequestForMessageId:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [idsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)addResult:(id)result isProtectedMessage:(BOOL)message
{
  resultCopy = result;
  pendingMessageIdRequests = self->_pendingMessageIdRequests;
  v13 = resultCopy;
  messageId = [resultCopy messageId];
  LODWORD(pendingMessageIdRequests) = [(NSMutableSet *)pendingMessageIdRequests containsObject:messageId];

  if (pendingMessageIdRequests)
  {
    v9 = self->_pendingMessageIdRequests;
    messageId2 = [v13 messageId];
    [(NSMutableSet *)v9 removeObject:messageId2];

    resultedMessagesById = self->_resultedMessagesById;
    messageId3 = [v13 messageId];
    [(NSMutableDictionary *)resultedMessagesById setObject:v13 forKeyedSubscript:messageId3];

    self->_resultIncludesProtectedMessages |= message;
  }
}

@end