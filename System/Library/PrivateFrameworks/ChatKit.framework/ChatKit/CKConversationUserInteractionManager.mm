@interface CKConversationUserInteractionManager
+ (BOOL)_isSiriCanLearnFromMessagesEnabled;
+ (id)interactionSource;
+ (void)_logEvent:(int)a3 forConversation:(id)a4;
@end

@implementation CKConversationUserInteractionManager

+ (id)interactionSource
{
  if (interactionSource_onceToken != -1)
  {
    +[CKConversationUserInteractionManager interactionSource];
  }

  v3 = interactionSource_interactionSource;

  return v3;
}

void __57__CKConversationUserInteractionManager_interactionSource__block_invoke()
{
  v0 = BiomeLibrary();
  v1 = [v0 MLSE];
  v2 = [v1 ShareSheet];
  v5 = [v2 ConversationUserInteraction];

  v3 = [v5 source];
  v4 = interactionSource_interactionSource;
  interactionSource_interactionSource = v3;
}

+ (void)_logEvent:(int)a3 forConversation:(id)a4
{
  v4 = *&a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([a1 _isSiriCanLearnFromMessagesEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = BMConversationUserInteractionEventTypeAsString();
        *buf = 138412547;
        v18 = v8;
        v19 = 2113;
        v20 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Donating %@ event for: %{private}@", buf, 0x16u);
      }
    }

    v9 = objc_alloc(MEMORY[0x1E698EC80]);
    v10 = [MEMORY[0x1E695DF00] now];
    v11 = [v9 initWithBundleID:@"com.apple.MobileSMS" conversationId:v6 eventType:v4 timestamp:v10];

    v12 = IMBiomeQueue();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__CKConversationUserInteractionManager__logEvent_forConversation___block_invoke;
    v14[3] = &unk_1E72ED810;
    v15 = v11;
    v16 = a1;
    v13 = v11;
    dispatch_async(v12, v14);
  }
}

void __66__CKConversationUserInteractionManager__logEvent_forConversation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) interactionSource];
  [v2 sendEvent:*(a1 + 32)];
}

+ (BOOL)_isSiriCanLearnFromMessagesEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:@"com.apple.MobileSMS"];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"YES";
      if (v3)
      {
        v5 = @"NO";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "SiriCanLearnFromMessages: %@", &v7, 0xCu);
    }
  }

  return v3 ^ 1;
}

@end