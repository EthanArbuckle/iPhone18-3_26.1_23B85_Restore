@interface FTMessageQueue
- (BOOL)addMessage:(id)message;
- (BOOL)addMessageAtHeadOfQueue:(id)queue;
- (BOOL)removeMessage:(id)message;
- (FTMessageQueue)init;
- (FTMessageQueueDelegate)delegate;
- (IDSBaseMessage)topMessage;
- (id)dequeueTopMessage;
- (id)messageForUniqueID:(unint64_t)d;
- (void)_setTimeout;
- (void)_timeoutHit;
- (void)removeAllMessages;
@end

@implementation FTMessageQueue

- (void)_setTimeout
{
  v18 = *MEMORY[0x1E69E9840];
  [(FTMessageQueue *)self _clearTimeout];
  topMessage = [(FTMessageQueue *)self topMessage];
  if (topMessage)
  {
    delegate = [(FTMessageQueue *)self delegate];

    if (delegate)
    {
      v5 = [(NSMutableArray *)self->_addDates objectAtIndex:0];
      [v5 timeIntervalSinceNow];
      v7 = fabs(v6);
      [topMessage timeout];
      v9 = v8 - v7;
      if (v9 <= 0.0)
      {
        v10 = 0.1;
      }

      else
      {
        v10 = v9;
      }

      [(CUTDeferredTaskQueue *)self->_timeoutTask enqueueExecutionWithTarget:self afterDelay:v10];
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        topMessage2 = [(FTMessageQueue *)self topMessage];
        v14 = 134218242;
        v15 = v10;
        v16 = 2112;
        v17 = topMessage2;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting timeout for %f seconds from now  (Message: %@)", &v14, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (IDSBaseMessage)topMessage
{
  v3 = [(NSMutableArray *)self->_queue count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_queue objectAtIndex:0];
  }

  return v3;
}

- (FTMessageQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dequeueTopMessage
{
  if ([(NSMutableArray *)self->_queue count])
  {
    v3 = [(NSMutableArray *)self->_queue objectAtIndex:0];
    objc_storeStrong(&self->_currentMessage, v3);
    [(FTMessageQueue *)self _clearTimeout];
    [(NSMutableArray *)self->_queue removeObjectAtIndex:0];
    [(NSMutableArray *)self->_addDates removeObjectAtIndex:0];
    if ([(NSMutableArray *)self->_queue count])
    {
      [(FTMessageQueue *)self _setTimeout];
    }

    if (![(NSMutableArray *)self->_queue count])
    {
      queue = self->_queue;
      self->_queue = 0;
    }

    if (![(NSMutableArray *)self->_addDates count])
    {
      addDates = self->_addDates;
      self->_addDates = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTMessageQueue)init
{
  v8.receiver = self;
  v8.super_class = FTMessageQueue;
  v2 = [(FTMessageQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69956C8]);
    v4 = im_primary_queue();
    v5 = [v3 initWithCapacity:1 queue:v4 block:&unk_1F09C6D08];
    timeoutTask = v2->_timeoutTask;
    v2->_timeoutTask = v5;
  }

  return v2;
}

- (void)_timeoutHit
{
  v10 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    topMessage = [(FTMessageQueue *)self topMessage];
    v8 = 138412290;
    v9 = topMessage;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Queue timeout hit for message: %@", &v8, 0xCu);
  }

  delegate = [(FTMessageQueue *)self delegate];
  topMessage2 = [(FTMessageQueue *)self topMessage];
  [delegate queue:self hitTimeoutForMessage:topMessage2];

  if ([(NSMutableArray *)self->_queue count])
  {
    [(FTMessageQueue *)self _setTimeout];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeAllMessages
{
  [(FTMessageQueue *)self _clearTimeout];
  [(NSMutableArray *)self->_addDates removeAllObjects];
  [(NSMutableArray *)self->_queue removeAllObjects];
  currentMessage = self->_currentMessage;
  self->_currentMessage = 0;

  if (![(NSMutableArray *)self->_queue count])
  {
    queue = self->_queue;
    self->_queue = 0;
  }

  if (![(NSMutableArray *)self->_addDates count])
  {
    addDates = self->_addDates;
    self->_addDates = 0;
  }
}

- (id)messageForUniqueID:(unint64_t)d
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(IDSBaseMessage *)self->_currentMessage uniqueID]== d)
  {
    v5 = self->_currentMessage;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(NSMutableArray *)self->_queue copy];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 uniqueID] == d)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)addMessage:(id)message
{
  messageCopy = message;
  if (!self->_queue)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    queue = self->_queue;
    self->_queue = v5;
  }

  if (!self->_addDates)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    addDates = self->_addDates;
    self->_addDates = v7;
  }

  [(NSMutableArray *)self->_queue addObject:messageCopy];
  v9 = self->_addDates;
  date = [MEMORY[0x1E695DF00] date];
  [(NSMutableArray *)v9 addObject:date];

  if ([(NSMutableArray *)self->_queue count]== 1)
  {
    [(FTMessageQueue *)self _setTimeout];
  }

  return 1;
}

- (BOOL)addMessageAtHeadOfQueue:(id)queue
{
  queueCopy = queue;
  if (!self->_queue)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    queue = self->_queue;
    self->_queue = v5;
  }

  if (!self->_addDates)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    addDates = self->_addDates;
    self->_addDates = v7;
  }

  [(NSMutableArray *)self->_queue insertObject:queueCopy atIndex:0];
  v9 = self->_addDates;
  date = [MEMORY[0x1E695DF00] date];
  [(NSMutableArray *)v9 insertObject:date atIndex:0];

  if ([(NSMutableArray *)self->_queue count]== 1)
  {
    [(FTMessageQueue *)self _setTimeout];
  }

  return 1;
}

- (BOOL)removeMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    currentMessage = self->_currentMessage;
    if (currentMessage == messageCopy)
    {
      self->_currentMessage = 0;
    }

    v7 = [(NSMutableArray *)self->_queue count];
    if (v7 - 1 < 0)
    {
      v9 = 0;
    }

    else
    {
      v8 = v7;
      v9 = 0;
      do
      {
        v10 = [(NSMutableArray *)self->_queue objectAtIndex:--v8];

        if (v10 == v5)
        {
          [(NSMutableArray *)self->_queue removeObjectAtIndex:v8];
          [(NSMutableArray *)self->_addDates removeObjectAtIndex:v8];
          v9 = 1;
        }
      }

      while (v8 > 0);
    }

    if (![(NSMutableArray *)self->_queue count])
    {
      queue = self->_queue;
      self->_queue = 0;
    }

    if (![(NSMutableArray *)self->_addDates count])
    {
      addDates = self->_addDates;
      self->_addDates = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

@end