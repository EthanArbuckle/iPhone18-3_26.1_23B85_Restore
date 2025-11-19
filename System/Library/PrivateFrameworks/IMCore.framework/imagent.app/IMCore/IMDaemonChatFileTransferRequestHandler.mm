@interface IMDaemonChatFileTransferRequestHandler
- (void)loadIsDownloadingPurgedAttachmentsForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 reply:(id)a7;
@end

@implementation IMDaemonChatFileTransferRequestHandler

- (void)loadIsDownloadingPurgedAttachmentsForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 services:(id)a6 reply:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = +[IMDClientRequestContext currentContext];
      v16 = [v15 listenerID];
      v22 = 138412802;
      v23 = v16;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Request from %@ to check if downloading purged assets with chat ID: %@  service: %@", &v22, 0x20u);
    }
  }

  if (![v11 count] || !objc_msgSend(v12, "count"))
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, " No IDs: %@ or serviceNames: %@, empty results being returned", &v22, 0x16u);
      }
    }

    v13[2](v13, 0);
  }

  v18 = [IMDChatUtilities _stringForChatIDs:v11 onServices:v12];
  if (v18)
  {
    v19 = +[IMDChatUtilities sharedUtilities];
    v20 = [v19 currentlyDownloadingSet];
    v21 = [v20 containsObject:v18];
  }

  else
  {
    v21 = 0;
  }

  (v13)[2](v13, v21);
}

@end