@interface IMDaemonVCRequestHandler
- (void)clearPendingVCRequestsWithPerson:(id)person forAccount:(id)account;
@end

@implementation IMDaemonVCRequestHandler

- (void)clearPendingVCRequestsWithPerson:(id)person forAccount:(id)account
{
  personCopy = person;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[IMDaemonVCRequestHandler clearPendingVCRequestsWithPerson:forAccount:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s no longer supported", &v8, 0xCu);
    }
  }
}

@end