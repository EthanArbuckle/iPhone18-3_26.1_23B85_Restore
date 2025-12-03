@interface CKAlertSuppressionContextHelper
+ (id)alertSuppressionContextsForVisibleChatControllerWithConversation:(id)conversation;
@end

@implementation CKAlertSuppressionContextHelper

+ (id)alertSuppressionContextsForVisibleChatControllerWithConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  chat = [conversationCopy chat];
  persistentID = [chat persistentID];
  if (persistentID)
  {
    [v4 addObject:persistentID];
  }

  personCentricID = [chat personCentricID];
  if (personCentricID)
  {
    [v4 addObject:personCentricID];
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = chat;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Adding alert suppression contexts %@ for visible chat %@", &v10, 0x16u);
    }
  }

  return v4;
}

@end