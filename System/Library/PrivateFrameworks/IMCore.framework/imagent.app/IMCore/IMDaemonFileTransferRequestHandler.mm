@interface IMDaemonFileTransferRequestHandler
- (void)createItemForPHAssetWithUUID:(id)d parentChatItemGUID:(id)iD chatGUID:(id)uID;
- (void)deleteFileTransferWithGUID:(id)d;
- (void)downloadHighQualityVariantOfFileTransferWithGUID:(id)d;
- (void)fileTransfer:(id)transfer createdWithProperties:(id)properties;
- (void)fileTransfer:(id)transfer rejectedWithProperties:(id)properties;
- (void)fileTransfer:(id)transfer updatedWithProperties:(id)properties;
- (void)fileTransferRemoved:(id)removed;
- (void)fileTransferStopped:(id)stopped;
- (void)fileTransfersRecoverablyDeleted:(id)deleted;
- (void)successfullyGeneratedPreviewForTransfer:(id)transfer withPreviewSize:(CGSize)size;
@end

@implementation IMDaemonFileTransferRequestHandler

- (void)deleteFileTransferWithGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deleting attachment with guid %@", &v7, 0xCu);
    }
  }

  if ([dCopy length])
  {
    v5 = +[IMDAttachmentStore sharedInstance];
    v6 = IMSingleObjectArray();
    [v5 deleteAttachmentsWithGUIDs:v6];
  }
}

- (void)fileTransfer:(id)transfer createdWithProperties:(id)properties
{
  transferCopy = transfer;
  propertiesCopy = properties;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = transferCopy;
      *&buf[12] = 2112;
      *&buf[14] = propertiesCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "File transfer: %@   created with properties: %@", buf, 0x16u);
    }
  }

  if ([transferCopy length])
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
    [v11 _handleFileTransfer:transferCopy createdWithProperties:propertiesCopy withAuditToken:v12];
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

- (void)fileTransfer:(id)transfer updatedWithProperties:(id)properties
{
  transferCopy = transfer;
  propertiesCopy = properties;
  if ([transferCopy length])
  {
    v7 = +[IMDFileTransferCenter sharedInstance];
    [v7 _handleFileTransfer:transferCopy updatedWithProperties:propertiesCopy];
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

- (void)fileTransferStopped:(id)stopped
{
  stoppedCopy = stopped;
  if ([stoppedCopy length])
  {
    v4 = +[IMDFileTransferCenter sharedInstance];
    [v4 _handleFileTransferStopped:stoppedCopy];
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

- (void)fileTransferRemoved:(id)removed
{
  removedCopy = removed;
  if ([removedCopy length])
  {
    v4 = +[IMDFileTransferCenter sharedInstance];
    [v4 _handleFileTransferRemoved:removedCopy];
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

- (void)fileTransfersRecoverablyDeleted:(id)deleted
{
  deletedCopy = deleted;
  if ([deletedCopy count])
  {
    v4 = +[IMDPersistenceService indexingQueryProvider];
    allObjects = [deletedCopy allObjects];
    v6 = [IMDIndexingContext contextWithReason:1005];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000086EC;
    v9[3] = &unk_1000817C8;
    v10 = deletedCopy;
    [v4 deleteAttachmentGUIDs:allObjects context:v6 completionHandler:v9];
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

- (void)createItemForPHAssetWithUUID:(id)d parentChatItemGUID:(id)iD chatGUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  v10 = +[IMDChatStore sharedInstance];
  v11 = [v10 chatWithGUID:uIDCopy];

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 messageWithGUID:iDCopy registerAttachments:0];

  if (v11 && v13)
  {
    v14 = +[IMDMomentShareManager sharedInstance];
    [v14 regenerateTransfersForMessage:v13 inChat:v11 addingAssetWithUUID:dCopy];
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

- (void)downloadHighQualityVariantOfFileTransferWithGUID:(id)d
{
  dCopy = d;
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

- (void)successfullyGeneratedPreviewForTransfer:(id)transfer withPreviewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = objc_opt_self();
  transferCopy = transfer;
  sharedInstance = [v7 sharedInstance];
  if (sharedInstance)
  {
    v9 = sharedInstance;
    [sharedInstance successfullyGeneratedPreviewForTransfer:transferCopy withPreviewSize:{width, height}];
  }

  else
  {

    __break(1u);
  }
}

- (void)fileTransfer:(id)transfer rejectedWithProperties:(id)properties
{
  v5 = sub_100054164();
  v7 = v6;
  sub_100054134();
  selfCopy = self;
  _sSo34IMDaemonFileTransferRequestHandlerC7imagentE04fileC0_22rejectedWithPropertiesySS_SDys11AnyHashableVypGtF_0(v5, v7);
}

@end