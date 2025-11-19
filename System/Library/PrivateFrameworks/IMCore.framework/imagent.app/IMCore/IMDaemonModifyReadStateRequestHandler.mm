@interface IMDaemonModifyReadStateRequestHandler
- (void)silenceChat:(id)a3 untilDate:(id)a4;
@end

@implementation IMDaemonModifyReadStateRequestHandler

- (void)silenceChat:(id)a3 untilDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:v5];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 138412802;
      v16 = v5;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Chat Identifier: %@  Chat: %@  Update silence date: %@", &v15, 0x20u);
    }
  }

  if (v8)
  {
    if (v6)
    {
      [v6 timeIntervalSince1970];
      [NSNumber numberWithDouble:?];
    }

    else
    {
      +[NSNull null];
    }
    v10 = ;
    v11 = [NSDictionary dictionaryWithObject:v10 forKey:@"CKChatUnmuteTime"];

    [v8 updateProperties:v11];
    v12 = +[IMDBroadcastController sharedProvider];
    v13 = [v12 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v8, "isBlackholed")}];
    v14 = [v8 properties];
    [v13 chat:v5 propertiesUpdated:v14];
  }
}

@end