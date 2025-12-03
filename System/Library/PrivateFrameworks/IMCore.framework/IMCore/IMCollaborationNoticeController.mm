@interface IMCollaborationNoticeController
+ (id)sharedInstance;
- (IMCollaborationNoticeController)init;
- (id)listener;
- (id)remoteDaemon;
- (void)collaborationNoticesDidChangeForChatGUIDs:(id)ds;
- (void)dismissNotice:(id)notice;
- (void)fetchCollaborationNoticesForChatGUIDs:(id)ds completionHandler:(id)handler;
- (void)markAsViewedForNotice:(id)notice;
@end

@implementation IMCollaborationNoticeController

+ (id)sharedInstance
{
  if (qword_1ED767970 != -1)
  {
    sub_1A84E405C();
  }

  v3 = qword_1ED767910;

  return v3;
}

- (IMCollaborationNoticeController)init
{
  v9.receiver = self;
  v9.super_class = IMCollaborationNoticeController;
  v2 = [(IMCollaborationNoticeController *)&v9 init];
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_listener(v2, v3, v4);
    objc_msgSend_addHandler_(v6, v7, v5);
  }

  return v5;
}

- (void)dismissNotice:(id)notice
{
  v15 = *MEMORY[0x1E69E9840];
  noticeCopy = notice;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[IMCollaborationNoticeController dismissNotice:]";
      v13 = 2112;
      v14 = noticeCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "%s dismiss notice: %@", &v11, 0x16u);
    }
  }

  v8 = objc_msgSend_remoteDaemon(self, v5, v6);
  objc_msgSend_dismissNotice_(v8, v9, noticeCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)markAsViewedForNotice:(id)notice
{
  noticeCopy = notice;
  v6 = objc_msgSend_dateViewed(noticeCopy, v4, v5);

  if (!v6)
  {
    v9 = objc_msgSend_date(MEMORY[0x1E695DF00], v7, v8);
    objc_msgSend_setDateViewed_(noticeCopy, v10, v9);

    v13 = objc_msgSend_remoteDaemon(self, v11, v12);
    objc_msgSend_updateNotice_(v13, v14, noticeCopy);
  }
}

- (void)collaborationNoticesDidChangeForChatGUIDs:(id)ds
{
  v12 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = dsCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Received notification of collaboration notice changes for guids: %@", &v10, 0xCu);
    }
  }

  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v8, @"__kIMCollaborationNoticesDidChangeNotification", dsCopy);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fetchCollaborationNoticesForChatGUIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  v11 = objc_msgSend_remoteDaemon(self, v8, v9);
  objc_msgSend_fetchCollaborationNoticesForChatGUIDs_reply_(v11, v10, dsCopy, handlerCopy);
}

- (id)remoteDaemon
{
  v3 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v6 = objc_msgSend_remoteDaemon(v3, v4, v5);

  return v6;
}

- (id)listener
{
  v3 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v6 = objc_msgSend_listener(v3, v4, v5);

  return v6;
}

@end