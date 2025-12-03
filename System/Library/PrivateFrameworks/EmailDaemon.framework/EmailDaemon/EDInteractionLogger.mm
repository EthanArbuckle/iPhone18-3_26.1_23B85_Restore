@interface EDInteractionLogger
- (EDInteractionLogger)initWithMessagePersistence:(id)persistence mailboxPersistence:(id)mailboxPersistence eventLogs:(id)logs;
- (_NSRange)_messageListVisibleRows;
- (id)_range:(_NSRange)_range minusRange:(_NSRange)range;
- (id)_stateForMessage:(id)message extra:(id)extra container:(id)container;
- (void)_composeStartedForMessage:(id)message eventName:(id)name;
- (void)_conversationFlagsChanged:(id)changed;
- (void)_logMessageListDisplayEndedForState:(id)state now:(id)now;
- (void)_logMessageListDisplayStartedMessage:(id)message now:(id)now type:(id)type row:(int64_t)row cellStyle:(id)style;
- (void)_viewingEndedForAllMessages;
- (void)applicationLaunched;
- (void)applicationWillResume;
- (void)applicationWillSuspend;
- (void)clickedLinkInMessage:(id)message scheme:(id)scheme;
- (void)copiedMessages:(id)messages toMailbox:(id)mailbox;
- (void)deliveredMessage:(id)message account:(id)account;
- (void)logEvent:(id)event date:(id)date data:(id)data;
- (void)logEvent:(id)event date:(id)date messageID:(id)d data:(id)data;
- (void)messageListDisplayEndedForAllMessages;
- (void)messageListDisplayEndedForMessage:(id)message cellStyle:(id)style;
- (void)messageListDisplayStartedForMessage:(id)message messageListType:(id)type row:(int64_t)row cellStyle:(id)style;
- (void)messageListDisplayVisibleRowsChanged:(_NSRange)changed;
- (void)movedMessages:(id)messages toMailbox:(id)mailbox;
- (void)movedMessages:(id)messages toMailboxType:(int64_t)type;
- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window;
- (void)persistenceWillChangeFlags:(id)flags messages:(id)messages;
- (void)persistenceWillTransferMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated;
- (void)scrolledToEndOfMessage:(id)message;
- (void)test_tearDown;
- (void)viewingEndedForMessage:(id)message;
- (void)viewingStartedForMessage:(id)message;
- (void)waitForPendingStateChanges;
@end

@implementation EDInteractionLogger

- (EDInteractionLogger)initWithMessagePersistence:(id)persistence mailboxPersistence:(id)mailboxPersistence eventLogs:(id)logs
{
  persistenceCopy = persistence;
  mailboxPersistenceCopy = mailboxPersistence;
  logsCopy = logs;
  v29.receiver = self;
  v29.super_class = EDInteractionLogger;
  v12 = [(EDInteractionLogger *)&v29 init];
  v13 = v12;
  v14 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messagePersistence, persistence);
    objc_storeStrong(&v13->_mailboxPersistence, mailboxPersistence);
    if ([logsCopy count] == 1)
    {
      firstObject = [logsCopy firstObject];
    }

    else
    {
      firstObject = [[EDInteractionEventLogMultiplexer alloc] initWithLogs:logsCopy];
    }

    eventLog = v14->_eventLog;
    v14->_eventLog = firstObject;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    viewedMessages = v14->_viewedMessages;
    v14->_viewedMessages = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    messageListMessages = v14->_messageListMessages;
    v14->_messageListMessages = v19;

    v14->_messageListVisibleRows = kMaxRange;
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_UTILITY, 0);

    v23 = dispatch_queue_create("com.apple.mail.EDInteractionLoggerStateTracking", v22);
    stateTrackingQueue = v14->_stateTrackingQueue;
    v14->_stateTrackingQueue = v23;

    v25 = dispatch_queue_create("com.apple.email.EDInteractionLoggerProcessing", v22);
    processingQueue = v14->_processingQueue;
    v14->_processingQueue = v25;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__conversationFlagsChanged_ name:EDConversationFlagsChanged object:0];
  }

  return v14;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDInteractionLogger.m" lineNumber:86 description:{@"%s can only be called from unit tests", "-[EDInteractionLogger test_tearDown]"}];
  }

  processingQueue = [(EDInteractionLogger *)self processingQueue];
  dispatch_sync(processingQueue, &__block_literal_global_36);
}

- (void)logEvent:(id)event date:(id)date messageID:(id)d data:(id)data
{
  eventCopy = event;
  dateCopy = date;
  dCopy = d;
  dataCopy = data;
  processingQueue = [(EDInteractionLogger *)self processingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EDInteractionLogger_logEvent_date_messageID_data___block_invoke;
  block[3] = &unk_1E8252D78;
  block[4] = self;
  v20 = dCopy;
  v21 = eventCopy;
  v22 = dateCopy;
  v23 = dataCopy;
  v15 = dataCopy;
  v16 = dateCopy;
  v17 = eventCopy;
  v18 = dCopy;
  dispatch_async(processingQueue, block);
}

void __52__EDInteractionLogger_logEvent_date_messageID_data___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) messagePersistence];
  v17[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v4 = [v2 persistedMessagesForMessageObjectIDs:v3 requireProtectedData:0 temporarilyUnavailableMessageObjectIDs:0];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [*(a1 + 32) _eventLog];
        [v10 persistEvent:*(a1 + 48) date:*(a1 + 56) message:v9 data:*(a1 + 64)];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)logEvent:(id)event date:(id)date data:(id)data
{
  eventCopy = event;
  dateCopy = date;
  dataCopy = data;
  processingQueue = [(EDInteractionLogger *)self processingQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__EDInteractionLogger_logEvent_date_data___block_invoke;
  v15[3] = &unk_1E8250AB8;
  v15[4] = self;
  v16 = eventCopy;
  v17 = dateCopy;
  v18 = dataCopy;
  v12 = dataCopy;
  v13 = dateCopy;
  v14 = eventCopy;
  dispatch_async(processingQueue, v15);
}

void __42__EDInteractionLogger_logEvent_date_data___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _eventLog];
  [v2 persistEvent:*(a1 + 40) date:*(a1 + 48) message:0 data:*(a1 + 56)];
}

- (void)_composeStartedForMessage:(id)message eventName:(id)name
{
  messageCopy = message;
  nameCopy = name;
  date = [MEMORY[0x1E695DF00] date];
  _eventLog = [(EDInteractionLogger *)self _eventLog];
  [_eventLog persistEvent:nameCopy date:date message:messageCopy data:MEMORY[0x1E695E0F8]];
}

- (void)scrolledToEndOfMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    _stateTrackingQueue = [(EDInteractionLogger *)self _stateTrackingQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__EDInteractionLogger_scrolledToEndOfMessage___block_invoke;
    v6[3] = &unk_1E8250128;
    v6[4] = self;
    v7 = messageCopy;
    dispatch_async(_stateTrackingQueue, v6);
  }
}

void __46__EDInteractionLogger_scrolledToEndOfMessage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 _viewedMessages];
  v4 = [v1 _stateForMessage:v2 extra:&stru_1F45B4608 container:v3];

  [v4 setScrolledToEnd:1];
}

- (void)viewingStartedForMessage:(id)message
{
  messageCopy = message;
  date = [MEMORY[0x1E695DF00] date];
  _stateTrackingQueue = [(EDInteractionLogger *)self _stateTrackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EDInteractionLogger_viewingStartedForMessage___block_invoke;
  block[3] = &unk_1E8250720;
  block[4] = self;
  v10 = messageCopy;
  v11 = date;
  v7 = date;
  v8 = messageCopy;
  dispatch_async(_stateTrackingQueue, block);
}

void __48__EDInteractionLogger_viewingStartedForMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 _viewedMessages];
  v8 = [v2 _stateForMessage:v3 extra:&stru_1F45B4608 container:v4];

  v5 = v8;
  if (v8)
  {
    v6 = [v8 viewingStarted];

    v5 = v8;
    if (!v6)
    {
      [v8 setViewingStarted:*(a1 + 48)];
      v7 = [*(a1 + 32) _eventLog];
      [v7 persistEvent:@"message_view_start" date:*(a1 + 48) message:*(a1 + 40) data:MEMORY[0x1E695E0F8]];

      v5 = v8;
    }
  }
}

- (void)viewingEndedForMessage:(id)message
{
  messageCopy = message;
  date = [MEMORY[0x1E695DF00] date];
  _stateTrackingQueue = [(EDInteractionLogger *)self _stateTrackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EDInteractionLogger_viewingEndedForMessage___block_invoke;
  block[3] = &unk_1E8250720;
  block[4] = self;
  v10 = messageCopy;
  v11 = date;
  v7 = date;
  v8 = messageCopy;
  dispatch_async(_stateTrackingQueue, block);
}

void __46__EDInteractionLogger_viewingEndedForMessage___block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 _viewedMessages];
  v5 = [v2 _stateForMessage:v3 extra:&stru_1F45B4608 container:v4];

  if (v5)
  {
    v6 = [v5 viewingStarted];

    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = [v5 viewingStarted];
      [v7 timeIntervalSinceDate:v8];
      v10 = v9;

      v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "scrolledToEnd")}];
      v12 = [*(a1 + 32) _eventLog];
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      v22[0] = @"duration";
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v22[1] = @"scrolled_to_end";
      v23[0] = v15;
      v23[1] = v11;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [v12 persistEvent:@"message_view_end" date:v13 message:v14 data:v16];

      v17 = [*(a1 + 32) _viewedMessages];
      v18 = [v5 key];
      [v17 removeObjectForKey:v18];
    }

    else
    {
      v19 = [*(a1 + 32) _viewedMessages];
      v20 = [v5 key];
      [v19 removeObjectForKey:v20];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_logMessageListDisplayStartedMessage:(id)message now:(id)now type:(id)type row:(int64_t)row cellStyle:(id)style
{
  v24[3] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  nowCopy = now;
  typeCopy = type;
  styleCopy = style;
  _eventLog = [(EDInteractionLogger *)self _eventLog];
  if (typeCopy)
  {
    v17 = typeCopy;
  }

  else
  {
    v17 = &stru_1F45B4608;
  }

  v24[0] = v17;
  v23[0] = @"message_list_type";
  v23[1] = @"position";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:row];
  v19 = v18;
  v23[2] = @"cell_style";
  if (styleCopy)
  {
    v20 = styleCopy;
  }

  else
  {
    v20 = &stru_1F45B4608;
  }

  v24[1] = v18;
  v24[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  [_eventLog persistEvent:@"message_list_display_started" date:nowCopy message:messageCopy data:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_logMessageListDisplayEndedForState:(id)state now:(id)now
{
  v21[2] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  nowCopy = now;
  viewingStarted = [stateCopy viewingStarted];

  if (viewingStarted)
  {
    viewingStarted2 = [stateCopy viewingStarted];
    [nowCopy timeIntervalSinceDate:viewingStarted2];
    v11 = v10;

    _eventLog = [(EDInteractionLogger *)self _eventLog];
    message = [stateCopy message];
    v20[0] = @"duration";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v20[1] = @"cell_style";
    v21[0] = v14;
    cellStyle = [stateCopy cellStyle];
    v16 = cellStyle;
    v17 = &stru_1F45B4608;
    if (cellStyle)
    {
      v17 = cellStyle;
    }

    v21[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [_eventLog persistEvent:@"message_list_display_ended" date:nowCopy message:message data:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_range:(_NSRange)_range minusRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{_range.location, _range.length}];
  [v6 removeIndexesInRange:{location, length}];
  v7 = [v6 copy];

  return v7;
}

- (void)messageListDisplayVisibleRowsChanged:(_NSRange)changed
{
  length = changed.length;
  location = changed.location;
  date = [MEMORY[0x1E695DF00] date];
  _stateTrackingQueue = [(EDInteractionLogger *)self _stateTrackingQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__EDInteractionLogger_messageListDisplayVisibleRowsChanged___block_invoke;
  v9[3] = &unk_1E8252DA0;
  v11 = location;
  v12 = length;
  v9[4] = self;
  v10 = date;
  v8 = date;
  dispatch_async(_stateTrackingQueue, v9);
}

void __60__EDInteractionLogger_messageListDisplayVisibleRowsChanged___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != [*(a1 + 32) _messageListVisibleRows] || *(a1 + 56) != v2)
  {
    if ([*(a1 + 32) _messageListVisibleRows])
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 == -1;
    }

    if (v5)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AC90]);
      v13 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{*(a1 + 48), *(a1 + 56)}];
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = [v6 _messageListVisibleRows];
      v9 = [v6 _range:v7 minusRange:{v8, *(a1 + 48), *(a1 + 56)}];
      v10 = *(a1 + 32);
      v11 = [v10 _messageListVisibleRows];
      v13 = [v10 _range:*(a1 + 48) minusRange:{*(a1 + 56), v11, v12}];
    }

    v28 = v13;
    v29 = v9;
    [*(a1 + 32) set_messageListVisibleRows:{*(a1 + 48), *(a1 + 56)}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [*(a1 + 32) _messageListMessages];
    v15 = [v14 allValues];

    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          if ([v29 containsIndex:{objc_msgSend(v19, "row")}])
          {
            [*(a1 + 32) _logMessageListDisplayEndedForState:v19 now:*(a1 + 40)];
            [v19 setViewingStarted:0];
          }

          if ([v28 containsIndex:{objc_msgSend(v19, "row")}])
          {
            [v19 setViewingStarted:*(a1 + 40)];
            v20 = *(a1 + 32);
            v21 = [v19 message];
            v22 = *(a1 + 40);
            v23 = [v19 messageListType];
            v24 = [v19 row];
            v25 = [v19 cellStyle];
            [v20 _logMessageListDisplayStartedMessage:v21 now:v22 type:v23 row:v24 cellStyle:v25];
          }
        }

        v15 = obj;
        v16 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)messageListDisplayStartedForMessage:(id)message messageListType:(id)type row:(int64_t)row cellStyle:(id)style
{
  messageCopy = message;
  typeCopy = type;
  styleCopy = style;
  date = [MEMORY[0x1E695DF00] date];
  _stateTrackingQueue = [(EDInteractionLogger *)self _stateTrackingQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__EDInteractionLogger_messageListDisplayStartedForMessage_messageListType_row_cellStyle___block_invoke;
  v19[3] = &unk_1E8252BE8;
  v19[4] = self;
  v20 = messageCopy;
  v21 = styleCopy;
  v22 = typeCopy;
  v23 = date;
  rowCopy = row;
  v15 = date;
  v16 = typeCopy;
  v17 = styleCopy;
  v18 = messageCopy;
  dispatch_async(_stateTrackingQueue, v19);
}

void __89__EDInteractionLogger_messageListDisplayStartedForMessage_messageListType_row_cellStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _messageListMessages];
  v12 = [v2 _stateForMessage:v3 extra:v4 container:v5];

  v6 = v12;
  if (v12)
  {
    v7 = [v12 viewingStarted];

    v6 = v12;
    if (!v7)
    {
      v8 = *(a1 + 56);
      if (![(__CFString *)v8 length])
      {

        v8 = @"none";
      }

      [v12 setViewingStarted:*(a1 + 64)];
      [v12 setCellStyle:*(a1 + 48)];
      [v12 setRow:*(a1 + 72)];
      [v12 setMessageListType:v8];
      v9 = *(a1 + 72);
      v10 = [*(a1 + 32) _messageListVisibleRows];
      if (v9 >= v10 && v9 - v10 < v11)
      {
        [*(a1 + 32) _logMessageListDisplayStartedMessage:*(a1 + 40) now:*(a1 + 64) type:v8 row:*(a1 + 72) cellStyle:*(a1 + 48)];
      }

      v6 = v12;
    }
  }
}

- (void)messageListDisplayEndedForMessage:(id)message cellStyle:(id)style
{
  messageCopy = message;
  styleCopy = style;
  date = [MEMORY[0x1E695DF00] date];
  _stateTrackingQueue = [(EDInteractionLogger *)self _stateTrackingQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__EDInteractionLogger_messageListDisplayEndedForMessage_cellStyle___block_invoke;
  v13[3] = &unk_1E8250AB8;
  v13[4] = self;
  v14 = messageCopy;
  v15 = styleCopy;
  v16 = date;
  v10 = date;
  v11 = styleCopy;
  v12 = messageCopy;
  dispatch_async(_stateTrackingQueue, v13);
}

void __67__EDInteractionLogger_messageListDisplayEndedForMessage_cellStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _messageListMessages];
  v8 = [v2 _stateForMessage:v3 extra:v4 container:v5];

  if (v8)
  {
    v6 = [*(a1 + 32) _messageListMessages];
    v7 = [v8 key];
    [v6 removeObjectForKey:v7];

    [*(a1 + 32) _logMessageListDisplayEndedForState:v8 now:*(a1 + 56)];
  }
}

- (void)messageListDisplayEndedForAllMessages
{
  date = [MEMORY[0x1E695DF00] date];
  _stateTrackingQueue = [(EDInteractionLogger *)self _stateTrackingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__EDInteractionLogger_messageListDisplayEndedForAllMessages__block_invoke;
  v6[3] = &unk_1E8250128;
  v6[4] = self;
  v7 = date;
  v5 = date;
  dispatch_async(_stateTrackingQueue, v6);
}

void __60__EDInteractionLogger_messageListDisplayEndedForAllMessages__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _messageListMessages];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __60__EDInteractionLogger_messageListDisplayEndedForAllMessages__block_invoke_2;
  v8 = &unk_1E8252DC8;
  v3 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:&v5];

  v4 = [*(a1 + 32) _messageListMessages];
  [v4 removeAllObjects];
}

- (void)movedMessages:(id)messages toMailbox:(id)mailbox
{
  v21 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  date = [MEMORY[0x1E695DF00] date];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = messagesCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        _eventLog = [(EDInteractionLogger *)self _eventLog];
        [_eventLog persistEvent:@"message_moved" date:date message:v13 mailbox:mailboxCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)movedMessages:(id)messages toMailboxType:(int64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  date = [MEMORY[0x1E695DF00] date];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = messagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        _eventLog = [(EDInteractionLogger *)self _eventLog];
        [_eventLog persistEvent:@"message_moved" date:date message:v11 mailboxType:type];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copiedMessages:(id)messages toMailbox:(id)mailbox
{
  v21 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  date = [MEMORY[0x1E695DF00] date];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = messagesCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        _eventLog = [(EDInteractionLogger *)self _eventLog];
        [_eventLog persistEvent:@"message_copied" date:date message:v13 mailbox:mailboxCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)clickedLinkInMessage:(id)message scheme:(id)scheme
{
  messageCopy = message;
  _eventLog = [(EDInteractionLogger *)self _eventLog];
  date = [MEMORY[0x1E695DF00] date];
  [_eventLog persistEvent:@"link_clicked" date:date message:messageCopy data:MEMORY[0x1E695E0F8]];
}

- (id)_stateForMessage:(id)message extra:(id)extra container:(id)container
{
  messageCopy = message;
  extraCopy = extra;
  containerCopy = container;
  persistentID = [messageCopy persistentID];

  if (persistentID)
  {
    persistentID2 = [messageCopy persistentID];
    extraCopy = [persistentID2 stringByAppendingFormat:@"\x01%@", extraCopy];

    v13 = [containerCopy objectForKeyedSubscript:extraCopy];
    if (!v13)
    {
      v13 = objc_alloc_init(_EDUserActionState);
      [(_EDUserActionState *)v13 setMessage:messageCopy];
      [(_EDUserActionState *)v13 setKey:extraCopy];
      [containerCopy setObject:v13 forKeyedSubscript:extraCopy];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)applicationLaunched
{
  v19[4] = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ConversationViewExcludesRelatedMessages", @"ConversationViewShowsNewestAtTop", @"LinesOfPreview", @"NumberOfActiveAccounts", @"DisableThreading", @"LeftEdgeSwipeAction", @"RightEdgeSwipeAction", @"ColumnLayoutMessageList", 0}];
  v18[0] = @"NumberOfSnippetLines";
  v18[1] = @"ConversationViewSortDescending";
  v19[0] = &__block_literal_global_149;
  v19[1] = &__block_literal_global_154;
  v18[2] = @"ConversationViewSpansMailboxes";
  v18[3] = @"AccountOrdering";
  v19[2] = &__block_literal_global_160;
  v19[3] = &__block_literal_global_166;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__EDInteractionLogger_applicationLaunched__block_invoke_5;
  v14[3] = &unk_1E8252E50;
  v9 = v7;
  v15 = v9;
  v10 = v4;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v14];
  _eventLog = [(EDInteractionLogger *)self _eventLog];
  [_eventLog persistEvent:@"app_launch" date:date message:0 data:v10];

  v13 = *MEMORY[0x1E69E9840];
}

id __42__EDInteractionLogger_applicationLaunched__block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v6 = @"LinesOfPreview";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id __42__EDInteractionLogger_applicationLaunched__block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v6 = @"ConversationViewShowsNewestAtTop";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id __42__EDInteractionLogger_applicationLaunched__block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v7 = @"ConversationViewExcludesRelatedMessages";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "BOOLValue") ^ 1}];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __42__EDInteractionLogger_applicationLaunched__block_invoke_4(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v7 = @"NumberOfActiveAccounts";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "count") - 1}];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void __42__EDInteractionLogger_applicationLaunched__block_invoke_5(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([a1[4] containsObject:v10])
  {
    [a1[5] setObject:v5 forKeyedSubscript:v10];
  }

  else
  {
    v6 = [a1[6] objectForKeyedSubscript:v10];
    v7 = v6;
    if (v6)
    {
      v8 = a1[5];
      v9 = (*(v6 + 16))(v6, v5);
      [v8 addEntriesFromDictionary:v9];
    }
  }
}

- (void)applicationWillSuspend
{
  date = [MEMORY[0x1E695DF00] date];
  [(EDInteractionLogger *)self messageListDisplayEndedForAllMessages];
  [(EDInteractionLogger *)self _viewingEndedForAllMessages];
  _eventLog = [(EDInteractionLogger *)self _eventLog];
  [_eventLog persistEvent:@"app_background" date:date message:0 data:MEMORY[0x1E695E0F8]];
}

- (void)applicationWillResume
{
  date = [MEMORY[0x1E695DF00] date];
  _eventLog = [(EDInteractionLogger *)self _eventLog];
  [_eventLog persistEvent:@"app_resume" date:date message:0 data:MEMORY[0x1E695E0F8]];
}

- (void)_viewingEndedForAllMessages
{
  date = [MEMORY[0x1E695DF00] date];
  _stateTrackingQueue = [(EDInteractionLogger *)self _stateTrackingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__EDInteractionLogger__viewingEndedForAllMessages__block_invoke;
  v6[3] = &unk_1E8250128;
  v6[4] = self;
  v7 = date;
  v5 = date;
  dispatch_async(_stateTrackingQueue, v6);
}

void __50__EDInteractionLogger__viewingEndedForAllMessages__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewedMessages];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __50__EDInteractionLogger__viewingEndedForAllMessages__block_invoke_2;
  v9 = &unk_1E8252DC8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:&v6];

  v5 = [*(a1 + 32) _viewedMessages];
  [v5 removeAllObjects];
}

void __50__EDInteractionLogger__viewingEndedForAllMessages__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 viewingStarted];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v4 viewingStarted];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "scrolledToEnd")}];
    v11 = [*(a1 + 40) _eventLog];
    v12 = *(a1 + 32);
    v13 = [v4 message];
    v17[0] = @"duration";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v17[1] = @"scrolled_to_end";
    v18[0] = v14;
    v18[1] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v11 persistEvent:@"message_view_end" date:v12 message:v13 data:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_conversationFlagsChanged:(id)changed
{
  v21[1] = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  date = [MEMORY[0x1E695DF00] date];
  userInfo = [changedCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"EDConversationFlagsChangedConversationIDKey"];
  longLongValue = [v7 longLongValue];

  v9 = [userInfo objectForKeyedSubscript:@"EDConversationFlagsReason"];
  integerValue = [v9 integerValue];

  v11 = [userInfo objectForKeyedSubscript:@"EDConversationFlagsKey"];
  unsignedLongLongValue = [v11 unsignedLongLongValue];

  v13 = [userInfo objectForKeyedSubscript:@"EDConversationFlagsOldFlags"];
  unsignedLongLongValue2 = [v13 unsignedLongLongValue];

  if (integerValue == 4 && unsignedLongLongValue2 != unsignedLongLongValue)
  {
    if ((unsignedLongLongValue2 & 4) == 0 && (unsignedLongLongValue & 4) != 0)
    {
      _eventLog = [(EDInteractionLogger *)self _eventLog];
      v20 = @"value";
      v21[0] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      [_eventLog persistEvent:@"marked_mute_thread" date:date conversationID:longLongValue data:v16];
LABEL_9:

      goto LABEL_10;
    }

    if ((unsignedLongLongValue2 & 4) != 0 && (unsignedLongLongValue & 4) == 0)
    {
      _eventLog = [(EDInteractionLogger *)self _eventLog];
      v18 = @"value";
      v19 = MEMORY[0x1E695E110];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [_eventLog persistEvent:@"marked_mute_thread" date:date conversationID:longLongValue data:v16];
      goto LABEL_9;
    }
  }

LABEL_10:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window
{
  messagesCopy = messages;
  processingQueue = [(EDInteractionLogger *)self processingQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__EDInteractionLogger_persistenceDidAddMessages_generationWindow___block_invoke;
  v8[3] = &unk_1E8250128;
  v9 = messagesCopy;
  selfCopy = self;
  v7 = messagesCopy;
  dispatch_async(processingQueue, v8);
}

void __66__EDInteractionLogger_persistenceDidAddMessages_generationWindow___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = *v15;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v14 + 1) + 8 * i);
        v6 = [v5 account];
        if (v6)
        {
          v7 = [v5 account];
          v8 = [v7 identifier];
          if (!v8)
          {

            goto LABEL_11;
          }

          v9 = [v5 account];
          v10 = [v9 emailAddressStrings];
          v11 = v10 == 0;

          if (v11)
          {
            continue;
          }
        }

        v6 = [*(a1 + 40) _eventLog];
        [v6 persistEvent:@"message_fetched" dataFromMessage:v5];
LABEL_11:
      }

      v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v2);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)persistenceWillChangeFlags:(id)flags messages:(id)messages
{
  flagsCopy = flags;
  messagesCopy = messages;
  date = [MEMORY[0x1E695DF00] date];
  processingQueue = [(EDInteractionLogger *)self processingQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__EDInteractionLogger_persistenceWillChangeFlags_messages___block_invoke;
  v13[3] = &unk_1E8250AB8;
  v14 = messagesCopy;
  v15 = flagsCopy;
  selfCopy = self;
  v17 = date;
  v10 = date;
  v11 = flagsCopy;
  v12 = messagesCopy;
  dispatch_async(processingQueue, v13);
}

void __59__EDInteractionLogger_persistenceWillChangeFlags_messages___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v2)
  {
    v3 = *v19;
    do
    {
      v4 = 0;
      do
      {
        if (*v19 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v18 + 1) + 8 * v4);
        if ([*(a1 + 40) reason] >= 4)
        {
          if ([*(a1 + 40) readChanged])
          {
            v6 = [*(a1 + 48) _eventLog];
            v7 = *(a1 + 56);
            v24 = @"value";
            v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "read")}];
            v25 = v8;
            v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
            [v6 persistEvent:@"read_changed" date:v7 message:v5 data:v9];
          }

          if ([*(a1 + 40) flaggedChanged])
          {
            v10 = [*(a1 + 48) _eventLog];
            v11 = *(a1 + 56);
            v22 = @"value";
            v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "flagged")}];
            v23 = v12;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
            [v10 persistEvent:@"flag_changed" date:v11 message:v5 data:v13];
          }

          if ([*(a1 + 40) repliedChanged] && objc_msgSend(*(a1 + 40), "replied"))
          {
            v14 = [*(a1 + 48) _eventLog];
            [v14 persistEvent:@"reply_sent" date:*(a1 + 56) message:v5 data:MEMORY[0x1E695E0F8]];
          }

          if ((([*(a1 + 40) forwardedChanged] & 1) != 0 || objc_msgSend(*(a1 + 40), "redirectedChanged")) && ((objc_msgSend(*(a1 + 40), "forwarded") & 1) != 0 || objc_msgSend(*(a1 + 40), "redirected")))
          {
            v15 = [*(a1 + 48) _eventLog];
            [v15 persistEvent:@"forward_sent" date:*(a1 + 56) message:v5 data:MEMORY[0x1E695E0F8]];
          }
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v2);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)persistenceWillTransferMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  messagesCopy = messages;
  lCopy = l;
  if (initiatedCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    processingQueue = [(EDInteractionLogger *)self processingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__EDInteractionLogger_persistenceWillTransferMessages_transferType_destinationMailboxURL_userInitiated___block_invoke;
    block[3] = &unk_1E8251C58;
    block[4] = self;
    v16 = lCopy;
    v18 = date;
    typeCopy = type;
    v17 = messagesCopy;
    v14 = date;
    dispatch_async(processingQueue, block);
  }
}

void __104__EDInteractionLogger_persistenceWillTransferMessages_transferType_destinationMailboxURL_userInitiated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) mailboxPersistence];
  v3 = [v2 legacyMailboxForMailboxURL:*(a1 + 40)];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = *(a1 + 64);
        if (v9)
        {
          if (v9 == 1)
          {
            v10 = [*(a1 + 32) _eventLog];
            [v10 persistEvent:@"message_moved" date:*(a1 + 56) message:v8 mailbox:v3];
          }

          else
          {
            if (v9 != 3)
            {
              goto LABEL_13;
            }

            v10 = [*(a1 + 32) _eventLog];
            [v10 persistEvent:@"message_moved" date:*(a1 + 56) message:v8 mailboxType:3];
          }
        }

        else
        {
          v10 = [*(a1 + 32) _eventLog];
          [v10 persistEvent:@"message_copied" date:*(a1 + 56) message:v8 mailbox:v3];
        }

LABEL_13:
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)deliveredMessage:(id)message account:(id)account
{
  messageCopy = message;
  accountCopy = account;
  _eventLog = [(EDInteractionLogger *)self _eventLog];
  [_eventLog persistEvent:@"message_sent" dataFromMessage:messageCopy account:accountCopy];
}

- (void)waitForPendingStateChanges
{
  _stateTrackingQueue = [(EDInteractionLogger *)self _stateTrackingQueue];
  dispatch_sync(_stateTrackingQueue, &__block_literal_global_199);
}

- (_NSRange)_messageListVisibleRows
{
  length = self->_messageListVisibleRows.length;
  location = self->_messageListVisibleRows.location;
  result.length = length;
  result.location = location;
  return result;
}

@end