@interface EMInteractionLogger
+ (OS_os_log)log;
- (EMInteractionLogger)initWithRemoteConnection:(id)a3;
- (_NSRange)messageListVisibleRows;
- (id)_rescopedMessageObjectID:(id)a3;
- (id)_stateForObjectID:(id)a3 container:(id)a4;
- (id)messageListTypeForMailboxes:(id)a3;
- (void)_appDidEnterBackground;
- (void)_appWillEnterForeground;
- (void)_logMessageListDisplayEndedForState:(id)a3 now:(id)a4;
- (void)_logMessageListDisplayStartedMessageID:(id)a3 now:(id)a4 type:(id)a5 row:(int64_t)a6 cellStyle:(id)a7;
- (void)_viewingEndedForAllMessages;
- (void)_xpcLogEvent:(id)a3 date:(id)a4 data:(id)a5;
- (void)_xpcLogEvent:(id)a3 date:(id)a4 messageID:(id)a5 data:(id)a6;
- (void)applicationLaunched;
- (void)clickedLinkInMessage:(id)a3 scheme:(id)a4;
- (void)composeFowardStartedForMessage:(id)a3;
- (void)composeReplyStartedForMessage:(id)a3;
- (void)messageListDisplayEndedForAllListItems;
- (void)messageListDisplayEndedForListItem:(id)a3 cellStyle:(id)a4;
- (void)messageListDisplayStartedForListItem:(id)a3 messageListType:(id)a4 row:(int64_t)a5 cellStyle:(id)a6;
- (void)scrolledToEndOfMessage:(id)a3;
- (void)viewingEndedForMessage:(id)a3 data:(id)a4;
- (void)viewingStartedForMessage:(id)a3 messageListScope:(id)a4;
@end

@implementation EMInteractionLogger

- (void)applicationLaunched
{
  v18[4] = *MEMORY[0x1E69E9840];
  [(EMInteractionLogger *)self setAppLaunched:1];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 dictionaryRepresentation];

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
  [v6 enumerateKeysAndObjectsUsingBlock:v13];
  [(EMInteractionLogger *)self _xpcLogEvent:@"app_launch" date:v3 data:v10];

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
    v3 = [MEMORY[0x1E695DF00] date];
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
  block[4] = a1;
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

- (EMInteractionLogger)initWithRemoteConnection:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = EMInteractionLogger;
  v6 = [(EMInteractionLogger *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
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
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v7 selector:sel__appWillEnterForeground name:@"UIApplicationWillEnterForegroundNotification" object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v7 selector:sel__appDidEnterBackground name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  }

  return v7;
}

- (id)_stateForObjectID:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:v5];
  if (!v7)
  {
    v7 = objc_alloc_init(_EMUserActionState);
    [(_EMUserActionState *)v7 setKey:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_EMUserActionState *)v7 setMessageObjectID:v5];
    }

    [v6 setObject:v7 forKeyedSubscript:v5];
  }

  return v7;
}

- (void)_xpcLogEvent:(id)a3 date:(id)a4 messageID:(id)a5 data:(id)a6
{
  v17 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"EMInteractionLogger.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"messageID"}];

  if (!v11)
  {
LABEL_3:
    v11 = [MEMORY[0x1E695DF00] now];
  }

LABEL_4:
  v14 = [(EMInteractionLogger *)self connection];
  v15 = [v14 reattemptingRemoteObjectProxy];
  [v15 logEvent:v17 date:v11 messageID:v12 data:v13];
}

- (void)_xpcLogEvent:(id)a3 date:(id)a4 data:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF00] now];
  }

  v10 = [(EMInteractionLogger *)self connection];
  v11 = [v10 reattemptingRemoteObjectProxy];
  [v11 logEvent:v12 date:v8 data:v9];
}

- (void)_viewingEndedForAllMessages
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(EMInteractionLogger *)self stateTrackingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__EMInteractionLogger__viewingEndedForAllMessages__block_invoke;
  v6[3] = &unk_1E826C148;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
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

- (void)clickedLinkInMessage:(id)a3 scheme:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [v6 objectID];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = &stru_1F45FD218;
  }

  v13 = @"scheme";
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [(EMInteractionLogger *)self _xpcLogEvent:@"link_clicked" date:v8 messageID:v9 data:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)scrolledToEndOfMessage:(id)a3
{
  v4 = a3;
  v5 = [(EMInteractionLogger *)self stateTrackingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__EMInteractionLogger_scrolledToEndOfMessage___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__EMInteractionLogger_scrolledToEndOfMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v4 = [*(a1 + 32) viewedMessages];
  v5 = [v2 _stateForObjectID:v3 container:v4];

  [v5 setScrolledToEnd:1];
}

- (id)_rescopedMessageObjectID:(id)a3
{
  v3 = a3;
  v4 = [v3 messageObjectID];
  v5 = [v3 mailboxScope];
  if (v5 && (v6 = [v4 globalMessageID], v5, v6))
  {
    v7 = [EMMessageObjectID alloc];
    v8 = [v4 globalMessageID];
    v9 = [v3 mailboxScope];
    v10 = [(EMMessageObjectID *)v7 initWithGlobalMessageID:v8 mailboxScope:v9];
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (void)viewingStartedForMessage:(id)a3 messageListScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [(EMInteractionLogger *)self stateTrackingQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__EMInteractionLogger_viewingStartedForMessage_messageListScope___block_invoke;
  v13[3] = &unk_1E826D498;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(v9, v13);
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

- (void)viewingEndedForMessage:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [(EMInteractionLogger *)self stateTrackingQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__EMInteractionLogger_viewingEndedForMessage_data___block_invoke;
  v13[3] = &unk_1E826D498;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(v9, v13);
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

- (void)composeReplyStartedForMessage:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v6 objectID];
  [(EMInteractionLogger *)self _xpcLogEvent:@"reply_draft_started" date:v4 messageID:v5 data:MEMORY[0x1E695E0F8]];
}

- (void)composeFowardStartedForMessage:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v6 objectID];
  [(EMInteractionLogger *)self _xpcLogEvent:@"forward_draft_started" date:v4 messageID:v5 data:MEMORY[0x1E695E0F8]];
}

- (void)_logMessageListDisplayStartedMessageID:(id)a3 now:(id)a4 type:(id)a5 row:(int64_t)a6 cellStyle:(id)a7
{
  v25[3] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (!v13)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"EMInteractionLogger.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"messageID"}];
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_1F45FD218;
  }

  v25[0] = v17;
  v24[0] = @"message_list_type";
  v24[1] = @"position";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  v19 = v18;
  v24[2] = @"cell_style";
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = &stru_1F45FD218;
  }

  v25[1] = v18;
  v25[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  [(EMInteractionLogger *)self _xpcLogEvent:@"message_list_display_started" date:v14 messageID:v13 data:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_logMessageListDisplayEndedForState:(id)a3 now:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 viewingStarted];

  if (v8)
  {
    v9 = [v6 viewingStarted];
    [v7 timeIntervalSinceDate:v9];
    v11 = v10;

    v12 = [v6 messageObjectID];
    v19[0] = @"duration";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v20[0] = v13;
    v19[1] = @"cell_style";
    v14 = [v6 cellStyle];
    v15 = v14;
    v16 = &stru_1F45FD218;
    if (v14)
    {
      v16 = v14;
    }

    v20[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [(EMInteractionLogger *)self _xpcLogEvent:@"message_list_display_ended" date:v7 messageID:v12 data:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)messageListDisplayStartedForListItem:(id)a3 messageListType:(id)a4 row:(int64_t)a5 cellStyle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [(EMInteractionLogger *)self stateTrackingQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__EMInteractionLogger_messageListDisplayStartedForListItem_messageListType_row_cellStyle___block_invoke;
  v19[3] = &unk_1E826D4C0;
  v19[4] = self;
  v20 = v10;
  v21 = v13;
  v22 = v12;
  v23 = v11;
  v24 = a5;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  dispatch_async(v14, v19);
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

- (void)messageListDisplayEndedForListItem:(id)a3 cellStyle:(id)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [(EMInteractionLogger *)self stateTrackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__EMInteractionLogger_messageListDisplayEndedForListItem_cellStyle___block_invoke;
  block[3] = &unk_1E826C230;
  block[4] = self;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
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
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(EMInteractionLogger *)self stateTrackingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__EMInteractionLogger_messageListDisplayEndedForAllListItems__block_invoke;
  v6[3] = &unk_1E826C148;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
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

- (id)messageListTypeForMailboxes:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  if ([v3 count])
  {
    if ([v3 count] == 1 && objc_msgSend(v4, "isSmartMailbox"))
    {
      v5 = [v4 smartMailboxType];
      if (v5 < 0xF)
      {
        v6 = off_1E826D568[v5];
        goto LABEL_13;
      }

      v7 = &stru_1F45FD218;
    }

    else if ([v3 count] <= 1)
    {
      v7 = &stru_1F45FD218;
    }

    else
    {
      v7 = @"all_";
    }

    v8 = [v4 type] - 1;
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
    v3 = [MEMORY[0x1E695DF00] date];
    [(EMInteractionLogger *)self messageListDisplayEndedForAllListItems];
    [(EMInteractionLogger *)self _viewingEndedForAllMessages];
    [(EMInteractionLogger *)self _xpcLogEvent:@"app_background" date:v3 data:MEMORY[0x1E695E0F8]];
  }
}

@end