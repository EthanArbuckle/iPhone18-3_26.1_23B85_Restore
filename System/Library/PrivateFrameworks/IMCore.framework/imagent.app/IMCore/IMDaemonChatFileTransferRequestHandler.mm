@interface IMDaemonChatFileTransferRequestHandler
- (void)loadIsDownloadingPurgedAttachmentsForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services reply:(id)reply;
@end

@implementation IMDaemonChatFileTransferRequestHandler

- (void)loadIsDownloadingPurgedAttachmentsForChatWithGUID:(id)d chatIdentifiers:(id)identifiers style:(unsigned __int8)style services:(id)services reply:(id)reply
{
  dCopy = d;
  identifiersCopy = identifiers;
  servicesCopy = services;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = +[IMDClientRequestContext currentContext];
      listenerID = [v15 listenerID];
      v22 = 138412802;
      v23 = listenerID;
      v24 = 2112;
      v25 = identifiersCopy;
      v26 = 2112;
      v27 = servicesCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Request from %@ to check if downloading purged assets with chat ID: %@  service: %@", &v22, 0x20u);
    }
  }

  if (![identifiersCopy count] || !objc_msgSend(servicesCopy, "count"))
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = identifiersCopy;
        v24 = 2112;
        v25 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, " No IDs: %@ or serviceNames: %@, empty results being returned", &v22, 0x16u);
      }
    }

    replyCopy[2](replyCopy, 0);
  }

  v18 = [IMDChatUtilities _stringForChatIDs:identifiersCopy onServices:servicesCopy];
  if (v18)
  {
    v19 = +[IMDChatUtilities sharedUtilities];
    currentlyDownloadingSet = [v19 currentlyDownloadingSet];
    v21 = [currentlyDownloadingSet containsObject:v18];
  }

  else
  {
    v21 = 0;
  }

  (replyCopy)[2](replyCopy, v21);
}

@end