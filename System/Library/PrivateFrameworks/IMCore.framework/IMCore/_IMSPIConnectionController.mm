@interface _IMSPIConnectionController
+ (id)sharedController;
- (void)clearChatCap;
- (void)setChatCap;
- (void)setChatSendCap;
- (void)setChatSendCapWithAttachments;
@end

@implementation _IMSPIConnectionController

+ (id)sharedController
{
  if (qword_1ED7677C8 != -1)
  {
    sub_1A84E06D8();
  }

  v3 = qword_1EB2EA298;

  return v3;
}

- (void)setChatCap
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Adding cap assertions", v5, 2u);
  }

  sub_1A83069EC((*MEMORY[0x1E69A6260] | *MEMORY[0x1E69A6250]) | *MEMORY[0x1E69A6280], v3, v4);
}

- (void)setChatSendCap
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Adding cap assertions for sending", v5, 2u);
  }

  sub_1A83069EC(*MEMORY[0x1E69A6260] | *MEMORY[0x1E69A6250] | (*MEMORY[0x1E69A62B0] | *MEMORY[0x1E69A6280]), v3, v4);
}

- (void)setChatSendCapWithAttachments
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Adding cap assertions with attachments for sending", v5, 2u);
  }

  sub_1A83069EC(*MEMORY[0x1E69A6260] | *MEMORY[0x1E69A6250] | (*MEMORY[0x1E69A62B0] | *MEMORY[0x1E69A6280]) | *MEMORY[0x1E69A6268], v3, v4);
}

- (void)clearChatCap
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Removing chat caps assertion", v5, 2u);
  }

  sub_1A83069EC(0, v3, v4);
}

@end