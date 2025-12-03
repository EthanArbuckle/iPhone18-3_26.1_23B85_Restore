@interface SGTextMessageConversationTracker
+ (id)getMergedPrompt:(id)prompt withParams:(id)params;
+ (id)instance;
- (SGTextMessageConversationTracker)init;
- (id)addTextMessageItem:(id)item;
- (id)conversationForIdentifier:(id)identifier;
@end

@implementation SGTextMessageConversationTracker

- (id)addTextMessageItem:(id)item
{
  itemCopy = item;
  v6 = [(SGConversationTracker *)self->_conversationTracker addMessage:itemCopy];
  firstObject = [v6 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGTextMessageConversationTracker.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"[conversation.firstObject isKindOfClass:[SGTextMessageItem class]]"}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [[SGConversationHistory alloc] initWithMessages:v6];
  objc_autoreleasePoolPop(v9);

  return v10;
}

- (id)conversationForIdentifier:(id)identifier
{
  v5 = [(SGConversationTracker *)self->_conversationTracker conversationForSenderID:identifier];
  firstObject = [v5 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGTextMessageConversationTracker.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"[result.firstObject isKindOfClass:[SGTextMessageItem class]]"}];
  }

  return v5;
}

- (SGTextMessageConversationTracker)init
{
  v6.receiver = self;
  v6.super_class = SGTextMessageConversationTracker;
  v2 = [(SGTextMessageConversationTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    conversationTracker = v2->_conversationTracker;
    v2->_conversationTracker = v3;
  }

  return v2;
}

+ (id)getMergedPrompt:(id)prompt withParams:(id)params
{
  paramsCopy = params;
  messages = [prompt messages];
  if ([messages count] > 1)
  {
    v31 = paramsCopy;
    v9 = [messages objectAtIndexedSubscript:{objc_msgSend(messages, "count") - 2}];
    v10 = [messages objectAtIndexedSubscript:{objc_msgSend(messages, "count") - 1}];
    v30 = v9;
    message = [v9 message];
    sender = [message sender];
    handles = [sender handles];
    firstObject = [handles firstObject];
    v29 = v10;
    message2 = [v10 message];
    sender2 = [message2 sender];
    handles2 = [sender2 handles];
    firstObject2 = [handles2 firstObject];
    LODWORD(v10) = [firstObject isEqualToString:firstObject2];

    if (v10)
    {
      v19 = sgLogHandle();
      paramsCopy = v31;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, "Quick responses: Most recent message is not a response to a prompt", buf, 2u);
      }

      v8 = 0;
    }

    else
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __63__SGTextMessageConversationTracker_getMergedPrompt_withParams___block_invoke;
      v32[3] = &unk_27894D5F8;
      v33 = messages;
      v20 = [v33 _pas_mappedArrayWithIndexedTransform:v32];
      v21 = MEMORY[0x277D02540];
      lastObject = [v20 lastObject];
      text = [lastObject text];
      paramsCopy = v31;
      maxPromptLength = [v31 maxPromptLength];
      [v31 maxPromptWindowSeconds];
      v26 = v25;
      promptJoiningString = [v31 promptJoiningString];
      v8 = [v21 getMergedPromptForMessage:text conversationTurns:v20 maxPromptLength:maxPromptLength maxPromptWindowSeconds:promptJoiningString promptJoiningString:v26];

      v19 = v33;
    }

    v7 = v30;
  }

  else
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "Quick responses: A conversation must have more than 2 messages for a prompt; returning prompt as nil", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

id __63__SGTextMessageConversationTracker_getMergedPrompt_withParams___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] - 1 <= a3)
  {
    v13 = 0;
  }

  else
  {
    v6 = [v5 message];
    v7 = [v6 sender];
    v8 = [v7 handles];
    v9 = [v8 firstObject];

    v10 = objc_alloc(MEMORY[0x277D01F70]);
    v11 = [v5 text];
    v12 = [v5 timestamp];
    v13 = [v10 initWithText:v11 senderID:v9 timestamp:v12];
  }

  return v13;
}

+ (id)instance
{
  if (instance__pasOnceToken2 != -1)
  {
    dispatch_once(&instance__pasOnceToken2, &__block_literal_global_13215);
  }

  v3 = instance__pasExprOnceResult;

  return v3;
}

void __44__SGTextMessageConversationTracker_instance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = instance__pasExprOnceResult;
  instance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end