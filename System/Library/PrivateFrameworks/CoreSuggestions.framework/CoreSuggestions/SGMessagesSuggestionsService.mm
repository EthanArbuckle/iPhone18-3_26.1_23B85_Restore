@interface SGMessagesSuggestionsService
- (BOOL)isMessageEligibleForSuggestions:(id)suggestions;
- (SGMessagesSuggestionsService)init;
- (SGMessagesSuggestionsServiceDelegate)delegate;
- (void)harvestedSuggestionsFromMessage:(id)message bundleIdentifier:(id)identifier options:(unint64_t)options completionHandler:(id)handler;
- (void)harvestedSuggestionsFromMessage:(id)message bundleIdentifier:(id)identifier options:(unint64_t)options withCompletion:(id)completion;
- (void)harvestedSuggestionsFromMessages:(id)messages options:(unint64_t)options completionHandler:(id)handler;
- (void)sendContextForMessage:(id)message;
- (void)setupContextIfNeededForConversation:(id)conversation;
- (void)suggestionsFromMessage:(id)message options:(unint64_t)options completionHandler:(id)handler;
@end

@implementation SGMessagesSuggestionsService

- (SGMessagesSuggestionsServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)harvestedSuggestionsFromMessages:(id)messages options:(unint64_t)options completionHandler:(id)handler
{
  messagesCopy = messages;
  handlerCopy = handler;
  if (!messagesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMessagesSuggestionsService.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"messages"}];
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGMessagesSuggestionsService.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  messagesDaemonConnection = self->_messagesDaemonConnection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __91__SGMessagesSuggestionsService_harvestedSuggestionsFromMessages_options_completionHandler___block_invoke;
  v21[3] = &unk_1E7EFD050;
  v14 = handlerCopy;
  v22 = v14;
  v15 = [(SGMessagesDaemonConnection *)messagesDaemonConnection remoteSuggestionManagerWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__SGMessagesSuggestionsService_harvestedSuggestionsFromMessages_options_completionHandler___block_invoke_2;
  v19[3] = &unk_1E7EFD078;
  v20 = v14;
  v16 = v14;
  [v15 harvestedSuggestionsFromMessages:messagesCopy bundleIdentifier:bundleIdentifier options:options completionHandler:v19];
}

void __91__SGMessagesSuggestionsService_harvestedSuggestionsFromMessages_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v3 error];
  v4 = [v3 response1];
  v5 = [v3 response2];
  v6 = [v3 response3];

  (*(v2 + 16))(v2, v7, v4, v5, v6);
}

- (void)harvestedSuggestionsFromMessage:(id)message bundleIdentifier:(id)identifier options:(unint64_t)options withCompletion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMessagesSuggestionsService.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  if ([(SGMessagesSuggestionsService *)self isMessageEligibleForSuggestions:messageCopy])
  {
    if (identifierCopy)
    {
      bundleIdentifier = identifierCopy;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      if (!bundleIdentifier)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGMessagesSuggestionsService.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

        bundleIdentifier = 0;
      }
    }

    messagesDaemonConnection = self->_messagesDaemonConnection;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __104__SGMessagesSuggestionsService_harvestedSuggestionsFromMessage_bundleIdentifier_options_withCompletion___block_invoke;
    v23[3] = &unk_1E7EFD050;
    v17 = completionCopy;
    v24 = v17;
    v18 = [(SGMessagesDaemonConnection *)messagesDaemonConnection remoteSuggestionManagerWithErrorHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __104__SGMessagesSuggestionsService_harvestedSuggestionsFromMessage_bundleIdentifier_options_withCompletion___block_invoke_2;
    v21[3] = &unk_1E7EFD0A0;
    v22 = v17;
    [v18 harvestedSuggestionsFromMessage:messageCopy bundleIdentifier:bundleIdentifier options:options withCompletion:v21];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __104__SGMessagesSuggestionsService_harvestedSuggestionsFromMessage_bundleIdentifier_options_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 error];
  v4 = [v3 response1];

  (*(v2 + 16))(v2, v5, v4);
}

- (void)harvestedSuggestionsFromMessage:(id)message bundleIdentifier:(id)identifier options:(unint64_t)options completionHandler:(id)handler
{
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMessagesSuggestionsService.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  if ([(SGMessagesSuggestionsService *)self isMessageEligibleForSuggestions:messageCopy])
  {
    if (identifierCopy)
    {
      bundleIdentifier = identifierCopy;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      if (!bundleIdentifier)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGMessagesSuggestionsService.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

        bundleIdentifier = 0;
      }
    }

    messagesDaemonConnection = self->_messagesDaemonConnection;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __107__SGMessagesSuggestionsService_harvestedSuggestionsFromMessage_bundleIdentifier_options_completionHandler___block_invoke;
    v23[3] = &unk_1E7EFD050;
    v17 = handlerCopy;
    v24 = v17;
    v18 = [(SGMessagesDaemonConnection *)messagesDaemonConnection remoteSuggestionManagerWithErrorHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __107__SGMessagesSuggestionsService_harvestedSuggestionsFromMessage_bundleIdentifier_options_completionHandler___block_invoke_2;
    v21[3] = &unk_1E7EFD078;
    v22 = v17;
    [v18 harvestedSuggestionsFromMessage:messageCopy bundleIdentifier:bundleIdentifier options:options completionHandler:v21];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0]);
  }
}

void __107__SGMessagesSuggestionsService_harvestedSuggestionsFromMessage_bundleIdentifier_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v3 error];
  v4 = [v3 response1];
  v5 = [v3 response2];

  (*(v2 + 16))(v2, v6, v4, v5);
}

- (void)suggestionsFromMessage:(id)message options:(unint64_t)options completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMessagesSuggestionsService.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  if ([(SGMessagesSuggestionsService *)self isMessageEligibleForSuggestions:messageCopy])
  {
    [(SGMessagesSuggestionsService *)self sendContextForMessage:messageCopy];
    messagesDaemonConnection = self->_messagesDaemonConnection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__SGMessagesSuggestionsService_suggestionsFromMessage_options_completionHandler___block_invoke;
    v17[3] = &unk_1E7EFD050;
    v12 = handlerCopy;
    v18 = v12;
    v13 = [(SGMessagesDaemonConnection *)messagesDaemonConnection remoteSuggestionManagerWithErrorHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__SGMessagesSuggestionsService_suggestionsFromMessage_options_completionHandler___block_invoke_2;
    v15[3] = &unk_1E7EFD078;
    v16 = v12;
    [v13 suggestionsFromMessage:messageCopy options:options completionHandler:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0]);
  }
}

void __81__SGMessagesSuggestionsService_suggestionsFromMessage_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v3 error];
  v4 = [v3 response1];
  v5 = [v3 response2];
  v6 = [v3 response3];

  (*(v2 + 16))(v2, v7, v4, v5, v6);
}

- (BOOL)isMessageEligibleForSuggestions:(id)suggestions
{
  attributeSet = [suggestions attributeSet];
  contentCreationDate = [attributeSet contentCreationDate];
  [contentCreationDate timeIntervalSinceNow];
  v6 = v5 > -3600.0;

  return v6;
}

- (void)sendContextForMessage:(id)message
{
  v21 = *MEMORY[0x1E69E9840];
  domainIdentifier = [message domainIdentifier];
  if (!domainIdentifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMessagesSuggestionsService.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"conversationIdentifier"}];
  }

  [(SGMessagesSuggestionsService *)self setupContextIfNeededForConversation:domainIdentifier];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = domainIdentifier;
  v6 = [(NSMutableDictionary *)self->_previousMessages objectForKeyedSubscript:domainIdentifier];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(SGMessagesDaemonConnection *)self->_messagesDaemonConnection remoteSuggestionManagerWithErrorHandler:&__block_literal_global_9415];
        [v12 suggestionsFromMessage:v11 options:3 completionHandler:&__block_literal_global_102_9416];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setupContextIfNeededForConversation:(id)conversation
{
  v19 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v5 = [(NSMutableDictionary *)self->_previousMessages objectForKeyedSubscript:conversationCopy];

  if (!v5)
  {
    v6 = [[SGCircularBufferArray alloc] initWithCapacity:10];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    delegate = [(SGMessagesSuggestionsService *)self delegate];
    v8 = [delegate suggestionsService:self needsContextForConversationIdentifier:conversationCopy numberOfMessagesNeeded:10];

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

          [(SGCircularBufferArray *)v6 addObject:*(*(&v14 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [(NSMutableDictionary *)self->_previousMessages setObject:v6 forKeyedSubscript:conversationCopy];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (SGMessagesSuggestionsService)init
{
  v8.receiver = self;
  v8.super_class = SGMessagesSuggestionsService;
  v2 = [(SGSuggestionsService *)&v8 initWithMachServiceName:@"com.apple.suggestd.messages" protocol:&unk_1F387C510];
  if (v2)
  {
    v3 = [[SGMessagesDaemonConnection alloc] initWithDaemonConnectionFuture:v2->super._daemonConnectionFuture];
    messagesDaemonConnection = v2->_messagesDaemonConnection;
    v2->_messagesDaemonConnection = v3;

    v5 = objc_opt_new();
    previousMessages = v2->_previousMessages;
    v2->_previousMessages = v5;
  }

  return v2;
}

@end