@interface LogInfoOnUnexpectedLogout
@end

@implementation LogInfoOnUnexpectedLogout

void ___LogInfoOnUnexpectedLogout_block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, " ==> Found account: %@", &v4, 0xCu);
    }
  }
}

@end