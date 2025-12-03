@interface EDBiomeInteractionEventLog
+ (OS_os_log)log;
+ (id)payloadFromData:(id)data message:(id)message;
- (EDBiomeInteractionEventLog)init;
- (void)donateToBiomeWithEvent:(id)event;
- (void)persistEvent:(id)event dataFromMessage:(id)message;
- (void)persistEvent:(id)event dataFromMessage:(id)message account:(id)account;
- (void)persistEvent:(id)event date:(id)date conversationID:(int64_t)d data:(id)data;
- (void)persistEvent:(id)event date:(id)date message:(id)message data:(id)data;
- (void)persistEvent:(id)event date:(id)date message:(id)message mailbox:(id)mailbox;
- (void)persistEvent:(id)event date:(id)date message:(id)message mailboxType:(int64_t)type;
@end

@implementation EDBiomeInteractionEventLog

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EDBiomeInteractionEventLog_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_14 != -1)
  {
    dispatch_once(&log_onceToken_14, block);
  }

  v2 = log_log_14;

  return v2;
}

void __33__EDBiomeInteractionEventLog_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_14;
  log_log_14 = v1;
}

- (EDBiomeInteractionEventLog)init
{
  v10.receiver = self;
  v10.super_class = EDBiomeInteractionEventLog;
  v2 = [(EDBiomeInteractionEventLog *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("em_biome_stream", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__EDBiomeInteractionEventLog_init__block_invoke;
    block[3] = &unk_1E8250260;
    v9 = v2;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(*(v2 + 1), v6);
  }

  return v2;
}

void __34__EDBiomeInteractionEventLog_init__block_invoke(uint64_t a1)
{
  v12 = [MEMORY[0x1E699AC20] url];
  v2 = objc_alloc(MEMORY[0x1E698F130]);
  v3 = [v12 path];
  v4 = [v2 initWithStoreBasePath:v3 segmentSize:*MEMORY[0x1E698F178]];

  v5 = objc_alloc(MEMORY[0x1E698F318]);
  v6 = [v5 initWithPrivateStreamIdentifier:*MEMORY[0x1E699AF50] storeConfig:v4];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  v9 = [*(*(a1 + 32) + 16) source];
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  *(v10 + 24) = v9;
}

- (void)persistEvent:(id)event date:(id)date message:(id)message data:(id)data
{
  eventCopy = event;
  messageCopy = message;
  dataCopy = data;
  v12 = +[EDBiomeInteractionEventLog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [EDBiomeInteractionEventLog persistEvent:date:message:data:];
  }

  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E699AF60], *MEMORY[0x1E699AF58], 0}];
  if (([v13 containsObject:eventCopy] & 1) == 0)
  {
    v14 = [EDBiomeInteractionEventLog payloadFromData:dataCopy message:messageCopy];
    messageIDHeader = [messageCopy messageIDHeader];
    ec_messageIDSubstring = [messageIDHeader ec_messageIDSubstring];

    v17 = [objc_alloc(MEMORY[0x1E699AC18]) initWithEventName:eventCopy messageId:ec_messageIDSubstring payload:v14];
    [(EDBiomeInteractionEventLog *)self donateToBiomeWithEvent:v17];
  }
}

- (void)persistEvent:(id)event date:(id)date conversationID:(int64_t)d data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  v11 = +[EDBiomeInteractionEventLog log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [EDBiomeInteractionEventLog persistEvent:date:conversationID:data:];
  }

  v12 = [EDBiomeInteractionEventLog payloadFromData:dataCopy message:0];
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E699AF88]];

  v14 = [objc_alloc(MEMORY[0x1E699AC18]) initWithEventName:eventCopy messageId:0 payload:v12];
  [(EDBiomeInteractionEventLog *)self donateToBiomeWithEvent:v14];
}

- (void)persistEvent:(id)event dataFromMessage:(id)message
{
  eventCopy = event;
  messageCopy = message;
  v8 = +[EDBiomeInteractionEventLog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDBiomeInteractionEventLog persistEvent:dataFromMessage:];
  }

  messageIDHeader = [messageCopy messageIDHeader];
  ec_messageIDSubstring = [messageIDHeader ec_messageIDSubstring];

  v11 = [EDBiomeInteractionEventLog payloadFromData:MEMORY[0x1E695E0F8] message:messageCopy];
  v12 = [objc_alloc(MEMORY[0x1E699AC18]) initWithEventName:eventCopy messageId:ec_messageIDSubstring payload:v11];
  [(EDBiomeInteractionEventLog *)self donateToBiomeWithEvent:v12];
}

- (void)persistEvent:(id)event dataFromMessage:(id)message account:(id)account
{
  eventCopy = event;
  messageCopy = message;
  accountCopy = account;
  v11 = +[EDBiomeInteractionEventLog log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [EDBiomeInteractionEventLog persistEvent:dataFromMessage:account:];
  }

  messageIDHeader = [messageCopy messageIDHeader];
  ec_messageIDSubstring = [messageIDHeader ec_messageIDSubstring];

  v14 = [EDBiomeInteractionEventLog payloadFromData:MEMORY[0x1E695E0F8] message:messageCopy];
  identifier = [accountCopy identifier];
  [v14 setObject:identifier forKeyedSubscript:*MEMORY[0x1E699AF78]];

  v16 = [objc_alloc(MEMORY[0x1E699AC18]) initWithEventName:eventCopy messageId:ec_messageIDSubstring payload:v14];
  [(EDBiomeInteractionEventLog *)self donateToBiomeWithEvent:v16];
}

- (void)persistEvent:(id)event date:(id)date message:(id)message mailbox:(id)mailbox
{
  eventCopy = event;
  messageCopy = message;
  mailboxCopy = mailbox;
  v12 = +[EDBiomeInteractionEventLog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [EDBiomeInteractionEventLog persistEvent:date:message:mailbox:];
  }

  messageIDHeader = [messageCopy messageIDHeader];
  ec_messageIDSubstring = [messageIDHeader ec_messageIDSubstring];

  v15 = [EDBiomeInteractionEventLog payloadFromData:MEMORY[0x1E695E0F8] message:messageCopy];
  if ([eventCopy isEqualToString:*MEMORY[0x1E699AF68]])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(mailboxCopy, "type")}];
    [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E699AFA0]];
  }

  v17 = [objc_alloc(MEMORY[0x1E699AC18]) initWithEventName:eventCopy messageId:ec_messageIDSubstring payload:v15];
  [(EDBiomeInteractionEventLog *)self donateToBiomeWithEvent:v17];
}

- (void)persistEvent:(id)event date:(id)date message:(id)message mailboxType:(int64_t)type
{
  eventCopy = event;
  messageCopy = message;
  v11 = +[EDBiomeInteractionEventLog log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [EDBiomeInteractionEventLog persistEvent:date:message:mailboxType:];
  }

  messageIDHeader = [messageCopy messageIDHeader];
  ec_messageIDSubstring = [messageIDHeader ec_messageIDSubstring];

  v14 = [EDBiomeInteractionEventLog payloadFromData:MEMORY[0x1E695E0F8] message:messageCopy];
  if ([eventCopy isEqualToString:*MEMORY[0x1E699AF68]])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E699AFA0]];
  }

  v16 = [objc_alloc(MEMORY[0x1E699AC18]) initWithEventName:eventCopy messageId:ec_messageIDSubstring payload:v14];
  [(EDBiomeInteractionEventLog *)self donateToBiomeWithEvent:v16];
}

- (void)donateToBiomeWithEvent:(id)event
{
  eventCopy = event;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__EDBiomeInteractionEventLog_donateToBiomeWithEvent___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v8 = eventCopy;
  v5 = eventCopy;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7);
  dispatch_async(self->_queue, v6);
}

+ (id)payloadFromData:(id)data message:(id)message
{
  messageCopy = message;
  v6 = [data mutableCopy];
  persistentID = [messageCopy persistentID];

  if (persistentID)
  {
    persistentID2 = [messageCopy persistentID];
    [v6 setObject:persistentID2 forKeyedSubscript:*MEMORY[0x1E699AFA8]];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = messageCopy;
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "globalMessageID")}];
    [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x1E699AF98]];
  }

  return v6;
}

- (void)persistEvent:date:message:data:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "[EDBiomeInteractionEvent persistEvent:date:message:data:] .. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:date:conversationID:data:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "[EDBiomeInteractionEvent persistEvent:date:conversationID:data:] .. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:dataFromMessage:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "[EDBiomeInteractionEvent persistEvent:dataFromMessage:] .. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:dataFromMessage:account:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "[EDBiomeInteractionEvent persistEvent:dataFromMessage:account:] .. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:date:message:mailbox:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "[EDBiomeInteractionEvent persistEvent:date:message:mailbox:] .. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:date:message:mailboxType:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "[EDBiomeInteractionEvent persistEvent:date:message:mailboxType:] .. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end