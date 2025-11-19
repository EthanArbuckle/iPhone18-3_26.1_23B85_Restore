@interface IMDaemonFileTransferRequestHandler
- (void)createItemForPHAssetWithUUID:(id)a3 parentChatItemGUID:(id)a4 chatGUID:(id)a5;
- (void)deleteFileTransferWithGUID:(id)a3;
- (void)downloadHighQualityVariantOfFileTransferWithGUID:(id)a3;
- (void)fileTransfer:(id)a3 createdWithProperties:(id)a4;
- (void)fileTransfer:(id)a3 rejectedWithProperties:(id)a4;
- (void)fileTransfer:(id)a3 updatedWithProperties:(id)a4;
- (void)fileTransferRemoved:(id)a3;
- (void)fileTransferStopped:(id)a3;
- (void)fileTransfersRecoverablyDeleted:(id)a3;
- (void)successfullyGeneratedPreviewForTransfer:(id)a3 withPreviewSize:(CGSize)a4;
@end

@implementation IMDaemonFileTransferRequestHandler

- (void)deleteFileTransferWithGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deleting attachment with guid %@", &v7, 0xCu);
    }
  }

  if ([v3 length])
  {
    v5 = +[IMDAttachmentStore sharedInstance];
    v6 = IMSingleObjectArray();
    [v5 deleteAttachmentsWithGUIDs:v6];
  }
}

- (void)fileTransfer:(id)a3 createdWithProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "File transfer: %@   created with properties: %@", buf, 0x16u);
    }
  }

  if ([v5 length])
  {
    memset(buf, 0, 32);
    v8 = +[IMDClientRequestContext currentContext];
    v9 = v8;
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v11 = +[IMDFileTransferCenter sharedInstance];
    v12[0] = *buf;
    v12[1] = *&buf[16];
    [v11 _handleFileTransfer:v5 createdWithProperties:v6 withAuditToken:v12];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Empty guid passed to: fileTransfer:createdWithProperties:", buf, 2u);
    }
  }
}

- (void)fileTransfer:(id)a3 updatedWithProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = +[IMDFileTransferCenter sharedInstance];
    [v7 _handleFileTransfer:v5 updatedWithProperties:v6];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_4;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Empty guid passed to: fileTransfer:updatedWithProperties:", v8, 2u);
    }
  }

LABEL_4:
}

- (void)fileTransferStopped:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[IMDFileTransferCenter sharedInstance];
    [v4 _handleFileTransferStopped:v3];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_4;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Empty guid passed to: fileTransferStopped:", v5, 2u);
    }
  }

LABEL_4:
}

- (void)fileTransferRemoved:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[IMDFileTransferCenter sharedInstance];
    [v4 _handleFileTransferRemoved:v3];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_4;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Empty guid passed to: fileTransferRemoved:", v5, 2u);
    }
  }

LABEL_4:
}

- (void)fileTransfersRecoverablyDeleted:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[IMDPersistenceService indexingQueryProvider];
    v5 = [v3 allObjects];
    v6 = [IMDIndexingContext contextWithReason:1005];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000086EC;
    v9[3] = &unk_1000817C8;
    v10 = v3;
    [v4 deleteAttachmentGUIDs:v5 context:v6 completionHandler:v9];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Empty guid passed to: fileTransfersRecoverabyDeleted:", v8, 2u);
    }
  }
}

- (void)createItemForPHAssetWithUUID:(id)a3 parentChatItemGUID:(id)a4 chatGUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[IMDChatStore sharedInstance];
  v11 = [v10 chatWithGUID:v9];

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 messageWithGUID:v8 registerAttachments:0];

  if (v11 && v13)
  {
    v14 = +[IMDMomentShareManager sharedInstance];
    [v14 regenerateTransfersForMessage:v13 inChat:v11 addingAssetWithUUID:v7];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Failure to regenerate transfers for chat: %@", &v17, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Failure to regenerate transfers for message: %@", &v17, 0xCu);
      }
    }
  }
}

- (void)downloadHighQualityVariantOfFileTransferWithGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "This feature is unimplemented", v5, 2u);
    }
  }
}

- (void)successfullyGeneratedPreviewForTransfer:(id)a3 withPreviewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = objc_opt_self();
  v10 = a3;
  v8 = [v7 sharedInstance];
  if (v8)
  {
    v9 = v8;
    [v8 successfullyGeneratedPreviewForTransfer:v10 withPreviewSize:{width, height}];
  }

  else
  {

    __break(1u);
  }
}

- (void)fileTransfer:(id)a3 rejectedWithProperties:(id)a4
{
  v5 = sub_100054164();
  v7 = v6;
  sub_100054134();
  v8 = self;
  _sSo34IMDaemonFileTransferRequestHandlerC7imagentE04fileC0_22rejectedWithPropertiesySS_SDys11AnyHashableVypGtF_0(v5, v7);
}

@end