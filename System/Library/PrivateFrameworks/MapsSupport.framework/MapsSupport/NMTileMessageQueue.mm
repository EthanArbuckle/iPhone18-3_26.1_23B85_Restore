@interface NMTileMessageQueue
- (BOOL)removeAllForRequestIdentifier:(id)identifier;
- (BOOL)removeMessageForRequestIdentifier:(id)identifier;
- (BOOL)removeReplyForRequestIdentifier:(id)identifier;
- (NMTileMessageQueue)init;
- (void)dequeueMessageIfPossible:(id)possible orReply:(id)reply;
- (void)enqueueMessage:(id)message options:(id)options reply:(id)reply;
- (void)enqueueReply:(id)reply forMessage:(id)message options:(id)options;
@end

@implementation NMTileMessageQueue

- (NMTileMessageQueue)init
{
  v11.receiver = self;
  v11.super_class = NMTileMessageQueue;
  v2 = [(NMMessageQueue *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    v4 = *(v2 + 89);
    *(v2 + 89) = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = *(v2 + 73);
    *(v2 + 73) = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(v2 + 81);
    *(v2 + 81) = v7;

    v9 = v2;
  }

  return v2;
}

- (void)enqueueMessage:(id)message options:(id)options reply:(id)reply
{
  messageCopy = message;
  optionsCopy = options;
  replyCopy = reply;
  v11 = sub_1000118A0(messageCopy);
  if (v11)
  {
    [*(&self->_requestIdentifierToReply + 1) lock];
    v12 = [*(&self->super._paused + 1) objectForKeyedSubscript:v11];

    if (!v12)
    {
      v13 = +[NSMutableArray array];
      [*(&self->super._paused + 1) setObject:v13 forKeyedSubscript:v11];
    }

    v14 = [*(&self->super._paused + 1) objectForKeyedSubscript:v11];
    [v14 addObject:messageCopy];

    [*(&self->_requestIdentifierToReply + 1) unlock];
  }

  v15.receiver = self;
  v15.super_class = NMTileMessageQueue;
  [(NMMessageQueue *)&v15 enqueueMessage:messageCopy options:optionsCopy reply:replyCopy];
}

- (void)enqueueReply:(id)reply forMessage:(id)message options:(id)options
{
  replyCopy = reply;
  messageCopy = message;
  optionsCopy = options;
  v11 = sub_1000118A0(messageCopy);
  if (v11)
  {
    [*(&self->_requestIdentifierToReply + 1) lock];
    [*(&self->_requestIdentifierToMessages + 1) setObject:replyCopy forKeyedSubscript:v11];
    [*(&self->_requestIdentifierToReply + 1) unlock];
  }

  v12.receiver = self;
  v12.super_class = NMTileMessageQueue;
  [(NMMessageQueue *)&v12 enqueueReply:replyCopy forMessage:messageCopy options:optionsCopy];
}

- (void)dequeueMessageIfPossible:(id)possible orReply:(id)reply
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100011ADC;
  v10[3] = &unk_1000854F8;
  selfCopy = self;
  possibleCopy = possible;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011C24;
  v8[3] = &unk_100085520;
  v8[4] = selfCopy;
  replyCopy = reply;
  v7.receiver = selfCopy;
  v7.super_class = NMTileMessageQueue;
  v5 = replyCopy;
  v6 = possibleCopy;
  [(NMMessageQueue *)&v7 dequeueMessageIfPossible:v10 orReply:v8];
}

- (BOOL)removeMessageForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [*(&self->_requestIdentifierToReply + 1) lock];
  v5 = [*(&self->super._paused + 1) objectForKey:identifierCopy];
  [*(&self->super._paused + 1) removeObjectForKey:identifierCopy];
  [*(&self->_requestIdentifierToReply + 1) unlock];
  if (v5)
  {
    v6 = sub_100001B24();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Removing enqueued message for request identifier: %{private}@", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(NMMessageQueue *)self removeMessage:*(*(&v13 + 1) + 8 * v11), v13];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  return v5 != 0;
}

- (BOOL)removeReplyForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [*(&self->_requestIdentifierToReply + 1) lock];
  v5 = [*(&self->_requestIdentifierToMessages + 1) objectForKey:identifierCopy];
  [*(&self->_requestIdentifierToMessages + 1) removeObjectForKey:identifierCopy];
  [*(&self->_requestIdentifierToReply + 1) unlock];
  if (v5)
  {
    v6 = sub_100001B24();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138477827;
      v9 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Removing enqueued reply for request identifier: %{private}@", &v8, 0xCu);
    }

    [(NMMessageQueue *)self removeReply:v5];
  }

  return v5 != 0;
}

- (BOOL)removeAllForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [*(&self->_requestIdentifierToReply + 1) lock];
  v5 = [*(&self->super._paused + 1) objectForKey:identifierCopy];
  v6 = [*(&self->_requestIdentifierToMessages + 1) objectForKey:identifierCopy];
  [*(&self->super._paused + 1) removeObjectForKey:identifierCopy];
  [*(&self->_requestIdentifierToMessages + 1) removeObjectForKey:identifierCopy];
  [*(&self->_requestIdentifierToReply + 1) unlock];
  if (v5 | v6)
  {
    v7 = sub_100001B24();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v20 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Removing enqueued messages/reply for request identifier: %{private}@", buf, 0xCu);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(NMMessageQueue *)self removeMessage:*(*(&v14 + 1) + 8 * v12), v14];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [(NMMessageQueue *)self removeReply:v6];
  }

  return (v5 | v6) != 0;
}

@end