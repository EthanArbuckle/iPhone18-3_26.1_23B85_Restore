@interface EDFoundationModelContextGenerator
+ (id)_messageInReplyToMessage:(id)a3 messagePersistence:(id)a4 error:(id *)a5;
+ (id)log;
@end

@implementation EDFoundationModelContextGenerator

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EDFoundationModelContextGenerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_40 != -1)
  {
    dispatch_once(&log_onceToken_40, block);
  }

  v2 = log_log_40;

  return v2;
}

void __40__EDFoundationModelContextGenerator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_40;
  log_log_40 = v1;
}

uint64_t __188__EDFoundationModelContextGenerator_originalContentMessageForMessage_limitOfInReplyToAncestors_checkForForwardedMessages_condenseEmptyLines_messagePersistence_htmlStringFromMessage_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 draft];

  return v3 ^ 1u;
}

+ (id)_messageInReplyToMessage:(id)a3 messagePersistence:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 headersIfAvailable];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 firstMessageIDForKey:*MEMORY[0x1E699B108]];
    v11 = [v9 messageIDListForKey:*MEMORY[0x1E699B140]];
    v12 = v11;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = [v11 lastObject];
      if (!v13)
      {
        v14 = 0;
        goto LABEL_8;
      }
    }

    v15 = [v7 persistedMessagesForForMessageIDHeader:v13 requireProtectedData:1];
    v14 = [v15 firstObject];

LABEL_8:
    goto LABEL_9;
  }

  if (a5)
  {
    [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"No headers available"];
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_9:

  return v14;
}

+ (void)originalContentMessageForMessage:(os_log_t)log limitOfInReplyToAncestors:checkForForwardedMessages:condenseEmptyLines:messagePersistence:htmlStringFromMessage:error:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Error while generating original-content messages: %@", buf, 0xCu);
}

@end