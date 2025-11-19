@interface IMCoreAutomationNotifications
+ (id)sharedInstance;
- (IMCoreAutomationNotifications)init;
- (void)addNewAttachmentsSyncedCount:(int64_t)a3;
- (void)addNewChatsSyncedCount:(int64_t)a3;
- (void)addNewMessagesSyncedCount:(int64_t)a3;
- (void)addNewRecoverableMessagesSyncedCount:(int64_t)a3;
- (void)clearSyncCounts;
- (void)postCoreAutomationNotificationFinishedPeriodicSyncNotificationWithStartTime:(id)a3 chatsDidsync:(BOOL)a4 messagesDidSync:(BOOL)a5 attachmentsDidSync:(BOOL)a6 recoverableMessagesDidSync:(BOOL)a7;
- (void)postCoreAutomationNotificationFinishedPurgingAttachments:(id)a3 withErrorString:(id)a4;
- (void)postCoreAutomationNotificationFinishedTapToDownload:(id)a3 downloadedFromCloudKitSuccessfully:(BOOL)a4;
- (void)postCoreAutomationNotificationPeriodicSyncUpdateNotification;
- (void)postCoreAutomationNotificationWithAction:(id)a3;
- (void)postCoreAutomationNotificationWithDictionary:(id)a3 withVerboseLogging:(BOOL)a4;
@end

@implementation IMCoreAutomationNotifications

+ (id)sharedInstance
{
  if (qword_1ED8CA448 != -1)
  {
    sub_1A88C52A0();
  }

  return qword_1ED8CA3B0;
}

- (IMCoreAutomationNotifications)init
{
  v5.receiver = self;
  v5.super_class = IMCoreAutomationNotifications;
  v2 = [(IMCoreAutomationNotifications *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMCoreAutomationNotifications *)v2 clearSyncCounts];
  }

  return v3;
}

- (void)clearSyncCounts
{
  *&self->_attachmentsWrittenCount = 0u;
  *&self->_chatsWrittenCount = 0u;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Cleared sync counts", v3, 2u);
    }
  }
}

- (void)postCoreAutomationNotificationFinishedPeriodicSyncNotificationWithStartTime:(id)a3 chatsDidsync:(BOOL)a4 messagesDidSync:(BOOL)a5 attachmentsDidSync:(BOOL)a6 recoverableMessagesDidSync:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v15[10] = *MEMORY[0x1E69E9840];
  v15[0] = @"initiatePeriodicSyncWithActivity";
  v14[0] = @"action";
  v14[1] = @"time";
  v12 = MEMORY[0x1E696AD98];
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v15[1] = [v12 numberWithDouble:?];
  v14[2] = @"chatsDidSync";
  v15[2] = [MEMORY[0x1E696AD98] numberWithBool:v10];
  v14[3] = @"messagesDidSync";
  v15[3] = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v14[4] = @"attachmentsDidSync";
  v15[4] = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v14[5] = @"recoverableMessagesDidSync";
  v15[5] = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v14[6] = @"chatsWrittenCount";
  v15[6] = [MEMORY[0x1E696AD98] numberWithInteger:self->_chatsWrittenCount];
  v14[7] = @"messagesWrittenCount";
  v15[7] = [MEMORY[0x1E696AD98] numberWithInteger:self->_messagesWrittenCount];
  v14[8] = @"attachmentsWrittenCount";
  v15[8] = [MEMORY[0x1E696AD98] numberWithInteger:self->_attachmentsWrittenCount];
  v14[9] = @"recoverablesMessagesWrittenCount";
  v15[9] = [MEMORY[0x1E696AD98] numberWithInteger:self->_recoverableMessagesWrittenCount];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:10];
  [(IMCoreAutomationNotifications *)self clearSyncCounts];
  [(IMCoreAutomationNotifications *)self postCoreAutomationNotificationWithDictionary:v13 withVerboseLogging:1];
}

- (void)postCoreAutomationNotificationPeriodicSyncUpdateNotification
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = @"updatePeriodicSyncWithActivity";
  v3[0] = @"action";
  v3[1] = @"chatsWrittenCount";
  v4[1] = [MEMORY[0x1E696AD98] numberWithInteger:self->_chatsWrittenCount];
  v3[2] = @"attachmentsWrittenCount";
  v4[2] = [MEMORY[0x1E696AD98] numberWithInteger:self->_attachmentsWrittenCount];
  v3[3] = @"messagesWrittenCount";
  v4[3] = [MEMORY[0x1E696AD98] numberWithInteger:self->_messagesWrittenCount];
  v3[4] = @"recoverablesMessagesWrittenCount";
  v4[4] = [MEMORY[0x1E696AD98] numberWithInteger:self->_recoverableMessagesWrittenCount];
  -[IMCoreAutomationNotifications postCoreAutomationNotificationWithDictionary:withVerboseLogging:](self, "postCoreAutomationNotificationWithDictionary:withVerboseLogging:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5], 1);
}

- (void)postCoreAutomationNotificationWithAction:(id)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"action";
  v4[0] = a3;
  -[IMCoreAutomationNotifications postCoreAutomationNotificationWithDictionary:withVerboseLogging:](self, "postCoreAutomationNotificationWithDictionary:withVerboseLogging:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1], 1);
}

- (void)postCoreAutomationNotificationWithDictionary:(id)a3 withVerboseLogging:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x1E69E9840];
  if (IMIsRunningInAutomation())
  {
    if (v4)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_13;
      }

      v6 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      *v10 = 138412290;
      *&v10[4] = a3;
      v7 = "postCoreAutomationNotificationWithDictionary with userInfo %@";
    }

    else
    {
      v8 = [a3 objectForKey:@"action"];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = @"<action name not passed in>";
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_13;
      }

      v6 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      *v10 = 138412290;
      *&v10[4] = v9;
      v7 = "postCoreAutomationNotificationWithDictionary for action %@";
    }

    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, v7, v10, 0xCu);
LABEL_13:
    [objc_msgSend(MEMORY[0x1E696ABB0] defaultCenter];
  }
}

- (void)postCoreAutomationNotificationFinishedPurgingAttachments:(id)a3 withErrorString:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10[0] = @"action";
    v10[1] = @"error";
    v11[0] = @"purgeAttachments";
    v11[1] = a4;
    v5 = MEMORY[0x1E695DF20];
    v6 = v11;
    v7 = v10;
  }

  else
  {
    v8[0] = @"action";
    v8[1] = @"deletedAttachments";
    v9[0] = @"purgeAttachments";
    v9[1] = a3;
    v5 = MEMORY[0x1E695DF20];
    v6 = v9;
    v7 = v8;
  }

  -[IMCoreAutomationNotifications postCoreAutomationNotificationWithDictionary:withVerboseLogging:](self, "postCoreAutomationNotificationWithDictionary:withVerboseLogging:", [v5 dictionaryWithObjects:v6 forKeys:v7 count:2], 0);
}

- (void)postCoreAutomationNotificationFinishedTapToDownload:(id)a3 downloadedFromCloudKitSuccessfully:(BOOL)a4
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"action";
  v5[1] = @"guid";
  v6[0] = @"tapToDownload";
  v6[1] = a3;
  v5[2] = @"downloadedFromCloudKitSuccessfully";
  v6[2] = [MEMORY[0x1E696AD98] numberWithBool:a4];
  -[IMCoreAutomationNotifications postCoreAutomationNotificationWithDictionary:withVerboseLogging:](self, "postCoreAutomationNotificationWithDictionary:withVerboseLogging:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3], 0);
}

- (void)addNewChatsSyncedCount:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  self->_chatsWrittenCount += a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_chatsWrittenCount];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Number of chats written count now is %@", &v6, 0xCu);
    }
  }

  [(IMCoreAutomationNotifications *)self postCoreAutomationNotificationPeriodicSyncUpdateNotification];
}

- (void)addNewAttachmentsSyncedCount:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  self->_attachmentsWrittenCount += a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_attachmentsWrittenCount];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Number of attachments written count now is %@", &v6, 0xCu);
    }
  }

  [(IMCoreAutomationNotifications *)self postCoreAutomationNotificationPeriodicSyncUpdateNotification];
}

- (void)addNewMessagesSyncedCount:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  self->_messagesWrittenCount += a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_messagesWrittenCount];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Number of messages written count now is %@", &v6, 0xCu);
    }
  }

  [(IMCoreAutomationNotifications *)self postCoreAutomationNotificationPeriodicSyncUpdateNotification];
}

- (void)addNewRecoverableMessagesSyncedCount:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  self->_recoverableMessagesWrittenCount += a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_recoverableMessagesWrittenCount];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Number of recoverable messages written count now is %@", &v6, 0xCu);
    }
  }

  [(IMCoreAutomationNotifications *)self postCoreAutomationNotificationPeriodicSyncUpdateNotification];
}

@end