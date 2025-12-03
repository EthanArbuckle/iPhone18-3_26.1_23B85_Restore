@interface EMInteractionLogger
+ (OS_os_log)log;
- (EMInteractionLogger)initWithRemoteConnection:(id)connection;
- (_NSRange)messageListVisibleRows;
- (id)_rescopedMessageObjectID:(id)d;
- (id)_stateForObjectID:(id)d container:(id)container;
- (id)messageListTypeForMailboxes:(id)mailboxes;
- (void)_appDidEnterBackground;
- (void)_appWillEnterForeground;
- (void)_logMessageListDisplayEndedForState:(id)state now:(id)now;
- (void)_logMessageListDisplayStartedMessageID:(id)d now:(id)now type:(id)type row:(int64_t)row cellStyle:(id)style;
- (void)_viewingEndedForAllMessages;
- (void)_xpcLogEvent:(id)event date:(id)date data:(id)data;
- (void)_xpcLogEvent:(id)event date:(id)date messageID:(id)d data:(id)data;
- (void)applicationLaunched;
- (void)clickedLinkInMessage:(id)message scheme:(id)scheme;
- (void)composeFowardStartedForMessage:(id)message;
- (void)composeReplyStartedForMessage:(id)message;
- (void)messageListDisplayEndedForAllListItems;
- (void)messageListDisplayEndedForListItem:(id)item cellStyle:(id)style;
- (void)messageListDisplayStartedForListItem:(id)item messageListType:(id)type row:(int64_t)row cellStyle:(id)style;
- (void)scrolledToEndOfMessage:(id)message;
- (void)viewingEndedForMessage:(id)message data:(id)data;
- (void)viewingStartedForMessage:(id)message messageListScope:(id)scope;
@end

@implementation EMInteractionLogger

- (void)applicationLaunched
{
  v18[4] = *MEMORY[0x1E69E9840];
  [(EMInteractionLogger *)self setAppLaunched:1];
  date = [MEMORY[0x1E695DF00] date];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ConversationViewExcludesRelatedMessages", @"ConversationViewShowsNewestAtTop", @"LinesOfPreview", @"NumberOfActiveAccounts", @"DisableThreading", @"LeftEdgeSwipeAction", @"RightEdgeSwipeAction", @"ColumnLayoutMessageList", 0}];
  v17[0] = @"NumberOfSnippetLines";
  v17[1] = @"ConversationViewSortDescending";
  v18[0] = &__block_literal_global_19;
  v18[1] = &__block_literal_global_241;
  v17[2] = @"ConversationViewSpansMailboxes";
  v17[3] = @"AccountOrdering";
  v18[2] = &__block_literal_global_247;
  v18[3] = &__block_literal_global_253;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__EMInteractionLogger_applicationLaunched__block_invoke_5;
  v13[3] = &unk_1E826D548;
  v9 = v7;
  v14 = v9;
  v10 = v4;
  v15 = v10;
  v11 = v8;
  v16 = v11;
  [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v13];
  [(EMInteractionLogger *)self _xpcLogEvent:@"app_launch" date:date data:v10];

  v12 = *MEMORY[0x1E69E9840];
}

void __42__EMInteractionLogger_applicationLaunched__block_invoke_5(id *a1, void *a2, void *a3)
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

- (void)_appWillEnterForeground
{
  if ([(EMInteractionLogger *)self appLaunched])
  {
    date = [MEMORY[0x1E695DF00] date];
    [EMInteractionLogger _xpcLogEvent:"_xpcLogEvent:date:data:" date:@"app_resume" data:?];
  }
}

- (_NSRange)messageListVisibleRows
{
  length = self->_messageListVisibleRows.length;
  location = self->_messageListVisibleRows.location;
  result.length = length;
  result.location = location;
  return result;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EMInteractionLogger_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_18 != -1)
  {
    dispatch_once(&log_onceToken_18, block);
  }

  v2 = log_log_18;

  return v2;
}

void __26__EMInteractionLogger_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_18;
  log_log_18 = v1;
}

- (EMInteractionLogger)initWithRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v19.receiver = self;
  v19.super_class = EMInteractionLogger;
  v6 = [(EMInteractionLogger *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);

    v10 = dispatch_queue_create("com.apple.email.EMInteractionLogger", v9);
    stateTrackingQueue = v7->_stateTrackingQueue;
    v7->_stateTrackingQueue = v10;

    v12 = objc_opt_new();
    viewedMessages = v7->_viewedMessages;
    v7->_viewedMessages = v12;

    v14 = objc_opt_new();
    messageListMessages = v7->_messageListMessages;
    v7->_messageListMessages = v14;

    v7->_messageListVisibleRows = kMaxRange;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__appWillEnterForeground name:@"UIApplicationWillEnterForegroundNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__appDidEnterBackground name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  }

  return v7;
}

- (id)_stateForObjectID:(id)d container:(id)container
{
  dCopy = d;
  containerCopy = container;
  v7 = [containerCopy objectForKeyedSubscript:dCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(_EMUserActionState);
    [(_EMUserActionState *)v7 setKey:dCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_EMUserActionState *)v7 setMessageObjectID:dCopy];
    }

    [containerCopy setObject:v7 forKeyedSubscript:dCopy];
  }

  return v7;
}

- (void)_xpcLogEvent:(id)event date:(id)date messageID:(id)d data:(id)data
{
  eventCopy = event;
  dateCopy = date;
  dCopy = d;
  dataCopy = data;
  if (dCopy)
  {
    if (dateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"EMInteractionLogger.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"messageID"}];

  if (!dateCopy)
  {
LABEL_3:
    dateCopy = [MEMORY[0x1E695DF00] now];
  }

LABEL_4:
  connection = [(EMInteractionLogger *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  [reattemptingRemoteObjectProxy logEvent:eventCopy date:dateCopy messageID:dCopy data:dataCopy];
}

- (void)_xpcLogEvent:(id)event date:(id)date data:(id)data
{
  eventCopy = event;
  dateCopy = date;
  dataCopy = data;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x1E695DF00] now];
  }

  connection = [(EMInteractionLogger *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  [reattemptingRemoteObjectProxy logEvent:eventCopy date:dateCopy data:dataCopy];
}

- (void)_viewingEndedForAllMessages
{
  date = [MEMORY[0x1E695DF00] date];
  stateTrackingQueue = [(EMInteractionLogger *)self stateTrackingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__EMInteractionLogger__viewingEndedForAllMessages__block_invoke;
  v6[3] = &unk_1E826C148;
  v6[4] = self;
  v7 = date;
  v5 = date;
  dispatch_async(stateTrackingQueue, v6);
}

void __50__EMInteractionLogger__viewingEndedForAllMessages__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [*(a1 + 32) viewedMessages];
  v3 = [v2 allValues];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 viewingStarted];

        if (v8)
        {
          v9 = *(a1 + 40);
          v10 = [v7 viewingStarted];
          [v9 timeIntervalSinceDate:v10];
          v12 = v11;

          v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "scrolledToEnd")}];
          v15 = *(a1 + 32);
          v14 = *(a1 + 40);
          v16 = [v15 _rescopedMessageObjectID:v7];
          v26[0] = @"duration";
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
          v26[1] = @"scrolled_to_end";
          v27[0] = v17;
          v27[1] = v13;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
          [v15 _xpcLogEvent:@"message_view_end" date:v14 messageID:v16 data:v18];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  v19 = [*(a1 + 32) viewedMessages];
  [v19 removeAllObjects];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)clickedLinkInMessage:(id)message scheme:(id)scheme
{
  v14[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  schemeCopy = scheme;
  date = [MEMORY[0x1E695DF00] date];
  objectID = [messageCopy objectID];
  if (schemeCopy)
  {
    v10 = schemeCopy;
  }

  else
  {
    v10 = &stru_1F45FD218;
  }

  v13 = @"scheme";
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [(EMInteractionLogger *)self _xpcLogEvent:@"link_clicked" date:date messageID:objectID data:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)scrolledToEndOfMessage:(id)message
{
  messageCopy = message;
  stateTrackingQueue = [(EMInteractionLogger *)self stateTrackingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__EMInteractionLogger_scrolledToEndOfMessage___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(stateTrackingQueue, v7);
}

void __46__EMInteractionLogger_scrolledToEndOfMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v4 = [*(a1 + 32) viewedMessages];
  v5 = [v2 _stateForObjectID:v3 container:v4];

  [v5 setScrolledToEnd:1];
}

- (id)_rescopedMessageObjectID:(id)d
{
  dCopy = d;
  messageObjectID = [dCopy messageObjectID];
  mailboxScope = [dCopy mailboxScope];
  if (mailboxScope && (v6 = [messageObjectID globalMessageID], mailboxScope, v6))
  {
    v7 = [EMMessageObjectID alloc];
    globalMessageID = [messageObjectID globalMessageID];
    mailboxScope2 = [dCopy mailboxScope];
    v10 = [(EMMessageObjectID *)v7 initWithGlobalMessageID:globalMessageID mailboxScope:mailboxScope2];
  }

  else
  {
    v10 = messageObjectID;
  }

  return v10;
}

- (void)viewingStartedForMessage:(id)message messageListScope:(id)scope
{
  messageCopy = message;
  scopeCopy = scope;
  date = [MEMORY[0x1E695DF00] date];
  stateTrackingQueue = [(EMInteractionLogger *)self stateTrackingQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__EMInteractionLogger_viewingStartedForMessage_messageListScope___block_invoke;
  v13[3] = &unk_1E826D498;
  v13[4] = self;
  v14 = messageCopy;
  v15 = date;
  v16 = scopeCopy;
  v10 = scopeCopy;
  v11 = date;
  v12 = messageCopy;
  dispatch_async(stateTrackingQueue, v13);
}

void __65__EMInteractionLogger_viewingStartedForMessage_messageListScope___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v4 = [*(a1 + 32) viewedMessages];
  v9 = [v2 _stateForObjectID:v3 container:v4];

  v5 = [v9 viewingStarted];

  if (!v5)
  {
    [v9 setViewingStarted:*(a1 + 48)];
    [v9 setMailboxScope:*(a1 + 56)];
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = [v6 _rescopedMessageObjectID:v9];
    [v6 _xpcLogEvent:@"message_view_start" date:v7 messageID:v8 data:MEMORY[0x1E695E0F8]];
  }
}

- (void)viewingEndedForMessage:(id)message data:(id)data
{
  messageCopy = message;
  dataCopy = data;
  date = [MEMORY[0x1E695DF00] date];
  stateTrackingQueue = [(EMInteractionLogger *)self stateTrackingQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__EMInteractionLogger_viewingEndedForMessage_data___block_invoke;
  v13[3] = &unk_1E826D498;
  v13[4] = self;
  v14 = messageCopy;
  v15 = date;
  v16 = dataCopy;
  v10 = dataCopy;
  v11 = date;
  v12 = messageCopy;
  dispatch_async(stateTrackingQueue, v13);
}

void __51__EMInteractionLogger_viewingEndedForMessage_data___block_invoke(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectID];
  v5 = [*(a1 + 32) viewedMessages];
  v6 = [v3 _stateForObjectID:v4 container:v5];

  v7 = [v6 viewingStarted];

  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = [v6 viewingStarted];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    if (v11 > 0.1)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "scrolledToEnd")}];
      v24[0] = @"duration";
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      v24[1] = @"scrolled_to_end";
      v25[0] = v13;
      v25[1] = v12;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v15 = [v14 mutableCopy];

      if (*(a1 + 56))
      {
        [v15 addEntriesFromDictionary:?];
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = [v16 _rescopedMessageObjectID:v6];
      [v16 _xpcLogEvent:@"message_view_end" date:v17 messageID:v18 data:v15];
    }

    v19 = [*(a1 + 32) viewedMessages];
    v20 = [v6 key];
    [v19 removeObjectForKey:v20];
  }

  else
  {
    v21 = [*(a1 + 32) viewedMessages];
    v22 = [v6 key];
    [v21 removeObjectForKey:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)composeReplyStartedForMessage:(id)message
{
  messageCopy = message;
  date = [MEMORY[0x1E695DF00] date];
  objectID = [messageCopy objectID];
  [(EMInteractionLogger *)self _xpcLogEvent:@"reply_draft_started" date:date messageID:objectID data:MEMORY[0x1E695E0F8]];
}

- (void)composeFowardStartedForMessage:(id)message
{
  messageCopy = message;
  date = [MEMORY[0x1E695DF00] date];
  objectID = [messageCopy objectID];
  [(EMInteractionLogger *)self _xpcLogEvent:@"forward_draft_started" date:date messageID:objectID data:MEMORY[0x1E695E0F8]];
}

- (void)_logMessageListDisplayStartedMessageID:(id)d now:(id)now type:(id)type row:(int64_t)row cellStyle:(id)style
{
  v25[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  nowCopy = now;
  typeCopy = type;
  styleCopy = style;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMInteractionLogger.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"messageID"}];
  }

  if (typeCopy)
  {
    v17 = typeCopy;
  }

  else
  {
    v17 = &stru_1F45FD218;
  }

  v25[0] = v17;
  v24[0] = @"message_list_type";
  v24[1] = @"position";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:row];
  v19 = v18;
  v24[2] = @"cell_style";
  if (styleCopy)
  {
    v20 = styleCopy;
  }

  else
  {
    v20 = &stru_1F45FD218;
  }

  v25[1] = v18;
  v25[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  [(EMInteractionLogger *)self _xpcLogEvent:@"message_list_display_started" date:nowCopy messageID:dCopy data:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_logMessageListDisplayEndedForState:(id)state now:(id)now
{
  v20[2] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  nowCopy = now;
  viewingStarted = [stateCopy viewingStarted];

  if (viewingStarted)
  {
    viewingStarted2 = [stateCopy viewingStarted];
    [nowCopy timeIntervalSinceDate:viewingStarted2];
    v11 = v10;

    messageObjectID = [stateCopy messageObjectID];
    v19[0] = @"duration";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v20[0] = v13;
    v19[1] = @"cell_style";
    cellStyle = [stateCopy cellStyle];
    v15 = cellStyle;
    v16 = &stru_1F45FD218;
    if (cellStyle)
    {
      v16 = cellStyle;
    }

    v20[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [(EMInteractionLogger *)self _xpcLogEvent:@"message_list_display_ended" date:nowCopy messageID:messageObjectID data:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)messageListDisplayStartedForListItem:(id)item messageListType:(id)type row:(int64_t)row cellStyle:(id)style
{
  itemCopy = item;
  typeCopy = type;
  styleCopy = style;
  date = [MEMORY[0x1E695DF00] date];
  stateTrackingQueue = [(EMInteractionLogger *)self stateTrackingQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__EMInteractionLogger_messageListDisplayStartedForListItem_messageListType_row_cellStyle___block_invoke;
  v19[3] = &unk_1E826D4C0;
  v19[4] = self;
  v20 = itemCopy;
  v21 = date;
  v22 = styleCopy;
  v23 = typeCopy;
  rowCopy = row;
  v15 = typeCopy;
  v16 = styleCopy;
  v17 = date;
  v18 = itemCopy;
  dispatch_async(stateTrackingQueue, v19);
}

void __90__EMInteractionLogger_messageListDisplayStartedForListItem_messageListType_row_cellStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v4 = [*(a1 + 32) messageListMessages];
  v12 = [v2 _stateForObjectID:v3 container:v4];

  v5 = [v12 viewingStarted];

  if (!v5)
  {
    [v12 setViewingStarted:*(a1 + 48)];
    [v12 setCellStyle:*(a1 + 56)];
    [v12 setRow:*(a1 + 72)];
    [v12 setMessageListType:*(a1 + 64)];
    v6 = [*(a1 + 40) displayMessageObjectID];
    [v12 setMessageObjectID:v6];

    v7 = *(a1 + 72);
    v8 = [*(a1 + 32) messageListVisibleRows];
    if (v7 >= v8 && v7 - v8 < v9)
    {
      v10 = *(a1 + 32);
      v11 = [v12 messageObjectID];
      [v10 _logMessageListDisplayStartedMessageID:v11 now:*(a1 + 48) type:*(a1 + 64) row:*(a1 + 72) cellStyle:*(a1 + 56)];
    }
  }
}

- (void)messageListDisplayEndedForListItem:(id)item cellStyle:(id)style
{
  itemCopy = item;
  date = [MEMORY[0x1E695DF00] date];
  stateTrackingQueue = [(EMInteractionLogger *)self stateTrackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__EMInteractionLogger_messageListDisplayEndedForListItem_cellStyle___block_invoke;
  block[3] = &unk_1E826C230;
  block[4] = self;
  v11 = itemCopy;
  v12 = date;
  v8 = date;
  v9 = itemCopy;
  dispatch_async(stateTrackingQueue, block);
}

void __68__EMInteractionLogger_messageListDisplayEndedForListItem_cellStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v4 = [*(a1 + 32) messageListMessages];
  v7 = [v2 _stateForObjectID:v3 container:v4];

  v5 = [*(a1 + 32) messageListMessages];
  v6 = [v7 key];
  [v5 removeObjectForKey:v6];

  [*(a1 + 32) _logMessageListDisplayEndedForState:v7 now:*(a1 + 48)];
}

- (void)messageListDisplayEndedForAllListItems
{
  date = [MEMORY[0x1E695DF00] date];
  stateTrackingQueue = [(EMInteractionLogger *)self stateTrackingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__EMInteractionLogger_messageListDisplayEndedForAllListItems__block_invoke;
  v6[3] = &unk_1E826C148;
  v6[4] = self;
  v7 = date;
  v5 = date;
  dispatch_async(stateTrackingQueue, v6);
}

void __61__EMInteractionLogger_messageListDisplayEndedForAllListItems__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) messageListMessages];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _logMessageListDisplayEndedForState:*(*(&v9 + 1) + 8 * v6++) now:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) messageListMessages];
  [v7 removeAllObjects];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)messageListTypeForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  firstObject = [mailboxesCopy firstObject];
  if ([mailboxesCopy count])
  {
    if ([mailboxesCopy count] == 1 && objc_msgSend(firstObject, "isSmartMailbox"))
    {
      smartMailboxType = [firstObject smartMailboxType];
      if (smartMailboxType < 0xF)
      {
        v6 = off_1E826D568[smartMailboxType];
        goto LABEL_13;
      }

      v7 = &stru_1F45FD218;
    }

    else if ([mailboxesCopy count] <= 1)
    {
      v7 = &stru_1F45FD218;
    }

    else
    {
      v7 = @"all_";
    }

    v8 = [firstObject type] - 1;
    if (v8 > 6)
    {
      v6 = @"mailbox";
    }

    else
    {
      v6 = [(__CFString *)v7 stringByAppendingString:off_1E826D5E0[v8]];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:

  return v6;
}

id __42__EMInteractionLogger_applicationLaunched__block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v6 = @"LinesOfPreview";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id __42__EMInteractionLogger_applicationLaunched__block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v6 = @"ConversationViewShowsNewestAtTop";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id __42__EMInteractionLogger_applicationLaunched__block_invoke_3(uint64_t a1, void *a2)
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

id __42__EMInteractionLogger_applicationLaunched__block_invoke_4(uint64_t a1, void *a2)
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

- (void)_appDidEnterBackground
{
  if ([(EMInteractionLogger *)self appLaunched])
  {
    date = [MEMORY[0x1E695DF00] date];
    [(EMInteractionLogger *)self messageListDisplayEndedForAllListItems];
    [(EMInteractionLogger *)self _viewingEndedForAllMessages];
    [(EMInteractionLogger *)self _xpcLogEvent:@"app_background" date:date data:MEMORY[0x1E695E0F8]];
  }
}

@end