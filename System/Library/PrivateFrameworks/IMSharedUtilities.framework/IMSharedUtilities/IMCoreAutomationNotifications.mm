@interface IMCoreAutomationNotifications
+ (id)sharedInstance;
- (IMCoreAutomationNotifications)init;
- (void)addNewAttachmentsSyncedCount:(int64_t)count;
- (void)addNewChatsSyncedCount:(int64_t)count;
- (void)addNewMessagesSyncedCount:(int64_t)count;
- (void)addNewRecoverableMessagesSyncedCount:(int64_t)count;
- (void)clearSyncCounts;
- (void)postCoreAutomationNotificationFinishedPeriodicSyncNotificationWithStartTime:(id)time chatsDidsync:(BOOL)didsync messagesDidSync:(BOOL)sync attachmentsDidSync:(BOOL)didSync recoverableMessagesDidSync:(BOOL)messagesDidSync;
- (void)postCoreAutomationNotificationFinishedPurgingAttachments:(id)attachments withErrorString:(id)string;
- (void)postCoreAutomationNotificationFinishedTapToDownload:(id)download downloadedFromCloudKitSuccessfully:(BOOL)successfully;
- (void)postCoreAutomationNotificationPeriodicSyncUpdateNotification;
- (void)postCoreAutomationNotificationWithAction:(id)action;
- (void)postCoreAutomationNotificationWithDictionary:(id)dictionary withVerboseLogging:(BOOL)logging;
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

- (void)postCoreAutomationNotificationFinishedPeriodicSyncNotificationWithStartTime:(id)time chatsDidsync:(BOOL)didsync messagesDidSync:(BOOL)sync attachmentsDidSync:(BOOL)didSync recoverableMessagesDidSync:(BOOL)messagesDidSync
{
  messagesDidSyncCopy = messagesDidSync;
  didSyncCopy = didSync;
  syncCopy = sync;
  didsyncCopy = didsync;
  v15[10] = *MEMORY[0x1E69E9840];
  v15[0] = @"initiatePeriodicSyncWithActivity";
  v14[0] = @"action";
  v14[1] = @"time";
  v12 = MEMORY[0x1E696AD98];
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v15[1] = [v12 numberWithDouble:?];
  v14[2] = @"chatsDidSync";
  v15[2] = [MEMORY[0x1E696AD98] numberWithBool:didsyncCopy];
  v14[3] = @"messagesDidSync";
  v15[3] = [MEMORY[0x1E696AD98] numberWithBool:syncCopy];
  v14[4] = @"attachmentsDidSync";
  v15[4] = [MEMORY[0x1E696AD98] numberWithBool:didSyncCopy];
  v14[5] = @"recoverableMessagesDidSync";
  v15[5] = [MEMORY[0x1E696AD98] numberWithBool:messagesDidSyncCopy];
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

- (void)postCoreAutomationNotificationWithAction:(id)action
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"action";
  v4[0] = action;
  -[IMCoreAutomationNotifications postCoreAutomationNotificationWithDictionary:withVerboseLogging:](self, "postCoreAutomationNotificationWithDictionary:withVerboseLogging:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1], 1);
}

- (void)postCoreAutomationNotificationWithDictionary:(id)dictionary withVerboseLogging:(BOOL)logging
{
  loggingCopy = logging;
  v11 = *MEMORY[0x1E69E9840];
  if (IMIsRunningInAutomation())
  {
    if (loggingCopy)
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
      *&v10[4] = dictionary;
      v7 = "postCoreAutomationNotificationWithDictionary with userInfo %@";
    }

    else
    {
      v8 = [dictionary objectForKey:@"action"];
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

- (void)postCoreAutomationNotificationFinishedPurgingAttachments:(id)attachments withErrorString:(id)string
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (string)
  {
    v10[0] = @"action";
    v10[1] = @"error";
    v11[0] = @"purgeAttachments";
    v11[1] = string;
    v5 = MEMORY[0x1E695DF20];
    v6 = v11;
    v7 = v10;
  }

  else
  {
    v8[0] = @"action";
    v8[1] = @"deletedAttachments";
    v9[0] = @"purgeAttachments";
    v9[1] = attachments;
    v5 = MEMORY[0x1E695DF20];
    v6 = v9;
    v7 = v8;
  }

  -[IMCoreAutomationNotifications postCoreAutomationNotificationWithDictionary:withVerboseLogging:](self, "postCoreAutomationNotificationWithDictionary:withVerboseLogging:", [v5 dictionaryWithObjects:v6 forKeys:v7 count:2], 0);
}

- (void)postCoreAutomationNotificationFinishedTapToDownload:(id)download downloadedFromCloudKitSuccessfully:(BOOL)successfully
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"action";
  v5[1] = @"guid";
  v6[0] = @"tapToDownload";
  v6[1] = download;
  v5[2] = @"downloadedFromCloudKitSuccessfully";
  v6[2] = [MEMORY[0x1E696AD98] numberWithBool:successfully];
  -[IMCoreAutomationNotifications postCoreAutomationNotificationWithDictionary:withVerboseLogging:](self, "postCoreAutomationNotificationWithDictionary:withVerboseLogging:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3], 0);
}

- (void)addNewChatsSyncedCount:(int64_t)count
{
  v8 = *MEMORY[0x1E69E9840];
  self->_chatsWrittenCount += count;
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

- (void)addNewAttachmentsSyncedCount:(int64_t)count
{
  v8 = *MEMORY[0x1E69E9840];
  self->_attachmentsWrittenCount += count;
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

- (void)addNewMessagesSyncedCount:(int64_t)count
{
  v8 = *MEMORY[0x1E69E9840];
  self->_messagesWrittenCount += count;
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

- (void)addNewRecoverableMessagesSyncedCount:(int64_t)count
{
  v8 = *MEMORY[0x1E69E9840];
  self->_recoverableMessagesWrittenCount += count;
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