@interface MFNanoServerFullMessageLoaderBatchRequest
- (BOOL)enqueueMessageId:(id)a3;
- (BOOL)enqueueMessageIds:(id)a3;
- (MFNanoServerFullMessageLoaderBatchRequest)initWithMessageIds:(id)a3 completion:(id)a4;
- (id)dequeueAllMessageIds;
- (id)dequeueMessageId;
- (void)addResult:(id)a3 isProtectedMessage:(BOOL)a4;
- (void)cancelRequestForMessageId:(id)a3;
- (void)cancelRequestForMessageIds:(id)a3;
@end

@implementation MFNanoServerFullMessageLoaderBatchRequest

- (MFNanoServerFullMessageLoaderBatchRequest)initWithMessageIds:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = MFNanoServerFullMessageLoaderBatchRequest;
  v8 = [(MFNanoServerFullMessageLoaderBatchRequest *)&v18 init];
  if (v8)
  {
    v9 = [[NSMutableOrderedSet alloc] initWithArray:v6];
    outstandingMessageIdRequests = v8->_outstandingMessageIdRequests;
    v8->_outstandingMessageIdRequests = v9;

    v11 = [[NSMutableSet alloc] initWithArray:v6];
    pendingMessageIdRequests = v8->_pendingMessageIdRequests;
    v8->_pendingMessageIdRequests = v11;

    v13 = [v7 copy];
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v13;

    v15 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    resultedMessagesById = v8->_resultedMessagesById;
    v8->_resultedMessagesById = v15;

    v8->_resultIncludesProtectedMessages = 0;
  }

  return v8;
}

- (id)dequeueAllMessageIds
{
  v3 = [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests array];
  v4 = [v3 copy];

  if ([v4 count])
  {
    [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests removeAllObjects];
  }

  return v4;
}

- (id)dequeueMessageId
{
  v3 = [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests firstObject];
  if (v3)
  {
    [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests removeObject:v3];
  }

  return v3;
}

- (BOOL)enqueueMessageIds:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v5 |= [(MFNanoServerFullMessageLoaderBatchRequest *)self enqueueMessageId:*(*(&v10 + 1) + 8 * v8), v10];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v5 & 1;
}

- (BOOL)enqueueMessageId:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableSet *)self->_pendingMessageIdRequests containsObject:v4];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests addObject:v4];
  }

  return v5;
}

- (void)cancelRequestForMessageId:(id)a3
{
  v4 = a3;
  [(NSMutableOrderedSet *)self->_outstandingMessageIdRequests removeObject:?];
  [(NSMutableSet *)self->_pendingMessageIdRequests removeObject:v4];
  [(NSMutableDictionary *)self->_resultedMessagesById removeObjectForKey:v4];
}

- (void)cancelRequestForMessageIds:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MFNanoServerFullMessageLoaderBatchRequest *)self cancelRequestForMessageId:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)addResult:(id)a3 isProtectedMessage:(BOOL)a4
{
  v6 = a3;
  pendingMessageIdRequests = self->_pendingMessageIdRequests;
  v13 = v6;
  v8 = [v6 messageId];
  LODWORD(pendingMessageIdRequests) = [(NSMutableSet *)pendingMessageIdRequests containsObject:v8];

  if (pendingMessageIdRequests)
  {
    v9 = self->_pendingMessageIdRequests;
    v10 = [v13 messageId];
    [(NSMutableSet *)v9 removeObject:v10];

    resultedMessagesById = self->_resultedMessagesById;
    v12 = [v13 messageId];
    [(NSMutableDictionary *)resultedMessagesById setObject:v13 forKeyedSubscript:v12];

    self->_resultIncludesProtectedMessages |= a4;
  }
}

@end