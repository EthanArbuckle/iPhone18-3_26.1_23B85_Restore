@interface LiveListenSendUserNotification
@end

@implementation LiveListenSendUserNotification

void ___LiveListenSendUserNotification_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___LiveListenSendUserNotification_block_invoke_cold_1(v2, v3);
    }
  }

  else
  {
    v3 = LiveListenNotificationCenter();
    [v3 getNotificationSettingsWithCompletionHandler:&__block_literal_global_44];
  }
}

void ___LiveListenSendUserNotification_block_invoke_41(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [v2 authorizationStatus];
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Posted notification with authorization status: %i", v5, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void ___LiveListenSendUserNotification_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_ERROR, "Unable to send notification: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end