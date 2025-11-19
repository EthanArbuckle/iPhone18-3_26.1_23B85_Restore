@interface IMDRecentsController
+ (IMDRecentsController)sharedInstance;
- (BOOL)hasRecentMessageFrom:(id)a3;
- (BOOL)hasRecentlyMessaged:(id)a3;
- (void)__pruneTypingContexts;
- (void)_setTimerForPruningTypingContext;
- (void)noteRecentMessageForPeople:(id)a3;
- (void)noteRecentMessageFromChatID:(id)a3;
- (void)updateLatestActiveDestination:(id)a3 ForHandle:(id)a4 incomingType:(unsigned __int8)a5;
@end

@implementation IMDRecentsController

+ (IMDRecentsController)sharedInstance
{
  if (qword_2814211E0 != -1)
  {
    sub_22B7D9780();
  }

  v3 = qword_281421068;

  return v3;
}

- (void)_setTimerForPruningTypingContext
{
  if (!self->_typingContextTimer)
  {
    v4 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"typing-indicator-cleanup" name:0 shouldWake:self target:sel___pruneTypingContexts selector:0 userInfo:1500.0];
    typingContextTimer = self->_typingContextTimer;
    self->_typingContextTimer = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)__pruneTypingContexts
{
  [(IMTimer *)self->_typingContextTimer invalidate];
  typingContextTimer = self->_typingContextTimer;
  self->_typingContextTimer = 0;

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_22B4D7810;
  v20 = sub_22B4D7970;
  v21 = 0;
  typingContext = self->_typingContext;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B6BC488;
  v15[3] = &unk_2787081B0;
  v15[4] = &v16;
  [(NSMutableDictionary *)typingContext enumerateKeysAndObjectsUsingBlock:v15];
  if ([v17[5] count])
  {
    [(NSMutableDictionary *)self->_typingContext removeObjectsForKeys:v17[5]];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_22B4D7810;
  v13 = sub_22B4D7970;
  v14 = 0;
  incomingMessagesTypingContext = self->_incomingMessagesTypingContext;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6BC56C;
  v8[3] = &unk_2787081B0;
  v8[4] = &v9;
  [(NSMutableDictionary *)incomingMessagesTypingContext enumerateKeysAndObjectsUsingBlock:v8];
  if ([v10[5] count])
  {
    [(NSMutableDictionary *)self->_incomingMessagesTypingContext removeObjectsForKeys:v10[5]];
  }

  if (![(NSMutableDictionary *)self->_typingContext count])
  {
    v6 = self->_typingContext;
    self->_typingContext = 0;
  }

  if (![(NSMutableDictionary *)self->_incomingMessagesTypingContext count])
  {
    v7 = self->_incomingMessagesTypingContext;
    self->_incomingMessagesTypingContext = 0;
  }

  if ([(NSMutableDictionary *)self->_typingContext count]|| [(NSMutableDictionary *)self->_incomingMessagesTypingContext count])
  {
    [(IMDRecentsController *)self _setTimerForPruningTypingContext];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v16, 8);
}

- (BOOL)hasRecentMessageFrom:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)self->_incomingMessagesTypingContext objectForKey:?];
  v4 = v3;
  v5 = v3 && !sub_22B6BC520(v3);

  return v5;
}

- (void)noteRecentMessageFromChatID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if (!self->_incomingMessagesTypingContext)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      incomingMessagesTypingContext = self->_incomingMessagesTypingContext;
      self->_incomingMessagesTypingContext = Mutable;
    }

    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:300.0];
    if (v7)
    {
      [(NSMutableDictionary *)self->_incomingMessagesTypingContext setObject:v7 forKey:v8];
    }

    v4 = v8;
  }
}

- (BOOL)hasRecentlyMessaged:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(NSMutableDictionary *)self->_typingContext objectForKey:*(*(&v15 + 1) + 8 * i), v15];
          v11 = v10;
          if (v10 && !sub_22B6BC520(v10))
          {

            v12 = 1;
            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)noteRecentMessageForPeople:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    if (!self->_typingContext)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      typingContext = self->_typingContext;
      self->_typingContext = Mutable;
    }

    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:300.0];
    if (v7)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = v4;
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

            [(NSMutableDictionary *)self->_typingContext setObject:v7 forKey:*(*(&v14 + 1) + 8 * v12++), v14];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }
    }

    [(IMDRecentsController *)self _setTimerForPruningTypingContext];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateLatestActiveDestination:(id)a3 ForHandle:(id)a4 incomingType:(unsigned __int8)a5
{
  v5 = a5;
  v19 = a3;
  v8 = a4;
  if (v19 && v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    v10 = v9;
    if (v9)
    {
      if (v5 == 1)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v13 = [[IMDMessageActiveDevice alloc] initWithIDSDestination:v19 latestDate:v10 latestReadReceiptDate:v12 hasReceivedReadReceipt:v5 == 1];
      v14 = [(NSMutableDictionary *)self->_activeDeviceForHandle objectForKey:v8];
      v15 = v14;
      if (v14 && [v14 isEqual:v13])
      {
        [v15 setLatestActiveDate:v10];
        if (v5 == 1)
        {
          [v15 setHasReceivedReadReceipt:1];
          [v15 setLatestReadReceipt:v10];
        }
      }

      else
      {
        activeDeviceForHandle = self->_activeDeviceForHandle;
        if (!activeDeviceForHandle)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v18 = self->_activeDeviceForHandle;
          self->_activeDeviceForHandle = Mutable;

          activeDeviceForHandle = self->_activeDeviceForHandle;
        }

        [(NSMutableDictionary *)activeDeviceForHandle setObject:v13 forKey:v8];
      }
    }
  }
}

@end