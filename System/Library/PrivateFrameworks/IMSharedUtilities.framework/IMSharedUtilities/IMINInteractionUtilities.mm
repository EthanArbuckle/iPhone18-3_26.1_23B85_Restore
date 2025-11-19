@interface IMINInteractionUtilities
+ (id)sharedInstance;
- (IMINInteractionUtilities)init;
- (void)dealloc;
- (void)deleteInteractionsWithChatGUIDs:(id)a3;
- (void)deleteInteractionsWithMessageGUIDs:(id)a3;
@end

@implementation IMINInteractionUtilities

+ (id)sharedInstance
{
  if (qword_1ED8CA3E0 != -1)
  {
    sub_1A88C00DC();
  }

  return qword_1ED8CA340;
}

- (IMINInteractionUtilities)init
{
  v4.receiver = self;
  v4.super_class = IMINInteractionUtilities;
  v2 = [(IMINInteractionUtilities *)&v4 init];
  if (v2)
  {
    v2->_searchableIndex = objc_alloc_init(MEMORY[0x1AC570AA0](@"CSSearchableIndex", @"CoreSpotlight"));
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMINInteractionUtilities;
  [(IMINInteractionUtilities *)&v3 dealloc];
}

- (void)deleteInteractionsWithChatGUIDs:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = a3;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Calling API to delete INInteractions with chat guids %@", buf, 0xCu);
    }
  }

  v6 = [(IMINInteractionUtilities *)self searchableIndex];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8614938;
  v7[3] = &unk_1E7826118;
  v7[4] = a3;
  [(CSSearchableIndex *)v6 deleteInteractionsWithGroupIdentifiers:a3 bundleID:@"com.apple.MobileSMS" protectionClass:0 completionHandler:v7];
}

- (void)deleteInteractionsWithMessageGUIDs:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = a3;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Calling API to delete INInteractions with message guids %@", buf, 0xCu);
    }
  }

  v6 = [(IMINInteractionUtilities *)self searchableIndex];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8614BE4;
  v7[3] = &unk_1E7826118;
  v7[4] = a3;
  [(CSSearchableIndex *)v6 deleteInteractionsWithIdentifiers:a3 bundleID:@"com.apple.MobileSMS" protectionClass:0 completionHandler:v7];
}

@end