@interface IMFocusStateManager(ChatKit)
- (uint64_t)chatMatchesActiveFocusMode:()ChatKit;
- (uint64_t)conversationMatchesActiveFocusMode:()ChatKit;
- (uint64_t)senderMatchesActiveFocusModeForMessage:()ChatKit;
- (uint64_t)updateFocusStateForCurrentFocusFilterActionAsync;
@end

@implementation IMFocusStateManager(ChatKit)

- (uint64_t)updateFocusStateForCurrentFocusFilterActionAsync
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Beginning updating focus filter action.", v4, 2u);
    }
  }

  return [a1 updateFocusStateForCurrentFocusFilterAction:&__block_literal_global_98];
}

- (uint64_t)conversationMatchesActiveFocusMode:()ChatKit
{
  v4 = [a3 chat];
  if (v4)
  {
    v5 = [a1 chatMatchesActiveFocusMode:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (uint64_t)chatMatchesActiveFocusMode:()ChatKit
{
  v4 = [a3 participantDNDContactHandles];
  v5 = [a1 activeFocusModeMatchesConversationWithHandles:v4];

  return v5;
}

- (uint64_t)senderMatchesActiveFocusModeForMessage:()ChatKit
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 sender];
  v5 = [v4 dndContactHandle];
  v6 = v5;
  if (v5)
  {
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [a1 activeFocusModeMatchesConversationWithHandles:v7];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [IMFocusStateManager(ChatKit) senderMatchesActiveFocusModeForMessage:v7];
    }

    v8 = 0;
  }

  return v8;
}

@end