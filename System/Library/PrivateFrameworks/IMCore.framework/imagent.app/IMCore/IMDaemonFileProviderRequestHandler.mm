@interface IMDaemonFileProviderRequestHandler
- (id)_retrieveLocalFileURLForFileTransferWithGUID:(id)d options:(int64_t)options outTransfer:(id *)transfer;
- (void)_handleExplicitDownloadCompletedNotification:(id)notification;
- (void)_setupFileTransferExplicitDownloadNotificationListenersIfNecessary;
- (void)downloadFileTransferWithLocalURL:(id)l;
- (void)retrieveLocalFileURLForFileTransferWithGUID:(id)d options:(int64_t)options;
- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)ds options:(int64_t)options;
@end

@implementation IMDaemonFileProviderRequestHandler

- (void)_setupFileTransferExplicitDownloadNotificationListenersIfNecessary
{
  if (!self->_listeningForExplicitDownloadFileTransferNotifications)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_handleExplicitDownloadCompletedNotification:" name:IMDFileTransferExplicitDownloadCompletedNotification object:0];

    self->_listeningForExplicitDownloadFileTransferNotifications = 1;
  }
}

- (void)retrieveLocalFileURLForFileTransferWithGUID:(id)d options:(int64_t)options
{
  dCopy = d;
  v12 = 0;
  v7 = [(IMDaemonFileProviderRequestHandler *)self _retrieveLocalFileURLForFileTransferWithGUID:dCopy options:options outTransfer:&v12];
  v8 = v12;
  if ([v7 length] && v8)
  {
    v9 = +[IMDFileTransferCenter sharedInstance];
    localPath = [v8 localPath];
    [v9 _handleFileTransfer:v7 acceptedWithPath:localPath autoRename:1 overwrite:0 options:options postNotification:1];
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[IMDaemonFileProviderRequestHandler retrieveLocalFileURLForFileTransferWithGUID:options:]";
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Successfully started explicit download for local file url retrieval of transfer with GUID %@", buf, 0x16u);
    }
  }
}

- (id)_retrieveLocalFileURLForFileTransferWithGUID:(id)d options:(int64_t)options outTransfer:(id *)transfer
{
  dCopy = d;
  [(IMDaemonFileProviderRequestHandler *)self _setupFileTransferExplicitDownloadNotificationListenersIfNecessary];
  v9 = +[IMDFileTransferCenter sharedInstance];
  v20 = 0;
  v10 = [v9 _retrieveLocalFileURLForFileTransferWithGUID:dCopy options:options outTransfer:transfer outError:&v20];
  v11 = v20;

  if (v11)
  {
    v12 = +[IMDBroadcastController sharedProvider];
    broadcasterForFileProviderListeners = [v12 broadcasterForFileProviderListeners];
    [broadcasterForFileProviderListeners fileTransferExplicitDownloadFailed:dCopy suggestedRetryGUID:v10 error:v11];

    v14 = 0;
  }

  else
  {
    if (transfer && [*transfer existsAtLocalPath])
    {
      v15 = +[IMDBroadcastController sharedProvider];
      broadcasterForFileProviderListeners2 = [v15 broadcasterForFileProviderListeners];
      localPath = [*transfer localPath];
      createAndPersistLivePhotoBundleIfNecessary = [*transfer createAndPersistLivePhotoBundleIfNecessary];
      [broadcasterForFileProviderListeners2 fileTransfer:dCopy explicitDownloadSucceededWithPath:localPath livePhotoBundlePath:createAndPersistLivePhotoBundleIfNecessary];
    }

    v14 = v10;
  }

  return v14;
}

- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)ds options:(int64_t)options
{
  dsCopy = ds;
  v7 = objc_alloc_init(NSMutableDictionary);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v18 = 0;
        v13 = [(IMDaemonFileProviderRequestHandler *)self _retrieveLocalFileURLForFileTransferWithGUID:v12 options:options outTransfer:&v18];
        v14 = v18;
        if ([v13 length])
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v7 setObject:v14 forKeyedSubscript:v13];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v16 = +[IMDFileTransferCenter sharedInstance];
    [v16 _handleFileTransfers:v7 autoRename:1 overwrite:0 options:options postNotification:1];

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v24 = "[IMDaemonFileProviderRequestHandler retrieveLocalFileURLForFileTransferWithGUIDs:options:]";
        v25 = 2112;
        v26 = v7;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Successfully started explicit download for local file url retrieval of transfer with GUIDs %@", buf, 0x16u);
      }
    }
  }
}

- (void)_handleExplicitDownloadCompletedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKey:IMDFileTransferExplicitDownloadCompletedSuccessKey];

  if (!v5 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Unable to determine if file transfer explicit download succeeded from notification. Assuming the explicit download failed.", &v20, 2u);
    }
  }

  bOOLValue = [v5 BOOLValue];
  object = [notificationCopy object];
  guid = [object guid];
  userInfo2 = [notificationCopy userInfo];
  v11 = userInfo2;
  if (bOOLValue)
  {
    v12 = [userInfo2 objectForKey:IMDFileTransferExplicitDownloadCompletedFileURLKey];

    if (!v12 && IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "File transfer URL could not be derived from IMDFileTransferExplicitDownloadCompletedNotification.", &v20, 2u);
      }
    }

    path = [v12 path];
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = guid;
        v22 = 2112;
        v23 = path;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Explicit download succeeded for GUID %@, located at path %@", &v20, 0x16u);
      }
    }

    broadcasterForFileProviderListeners2 = +[IMDBroadcastController sharedProvider];
    broadcasterForFileProviderListeners = [broadcasterForFileProviderListeners2 broadcasterForFileProviderListeners];
    createAndPersistLivePhotoBundleIfNecessary = [object createAndPersistLivePhotoBundleIfNecessary];
    [broadcasterForFileProviderListeners fileTransfer:guid explicitDownloadSucceededWithPath:path livePhotoBundlePath:createAndPersistLivePhotoBundleIfNecessary];
  }

  else
  {
    v12 = [userInfo2 objectForKey:IMDFileTransferExplicitDownloadCompletedErrorKey];

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = guid;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Explicit download failed for transfer with GUID %@. error: %@", &v20, 0x16u);
      }
    }

    path = +[IMDBroadcastController sharedProvider];
    broadcasterForFileProviderListeners2 = [path broadcasterForFileProviderListeners];
    [broadcasterForFileProviderListeners2 fileTransferExplicitDownloadFailed:guid suggestedRetryGUID:0 error:v12];
  }
}

- (void)downloadFileTransferWithLocalURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v25 = [NSPredicate predicateWithFormat:@"%K = %@", @"filename", absoluteString];

  v5 = +[IMDAttachmentStore sharedInstance];
  v6 = [v5 attachmentsFilteredUsingPredicate:v25 limit:1];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = *v27;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if ([v11 existsAtLocalPath])
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v31 = "[IMDaemonFileProviderRequestHandler downloadFileTransferWithLocalURL:]";
              v32 = 2112;
              v33 = lCopy;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s local file at path %@ already downloaded", buf, 0x16u);
            }
          }

          v22 = +[IMDBroadcastController sharedProvider];
          broadcasterForFileProviderListeners = [v22 broadcasterForFileProviderListeners];
          [broadcasterForFileProviderListeners fileTransferDownloadedSucceededWithLocalURL:lCopy];

          goto LABEL_21;
        }

        [(IMDaemonFileProviderRequestHandler *)self _setupFileTransferExplicitDownloadNotificationListenersIfNecessary];
        v12 = +[IMDFileTransferCenter sharedInstance];
        guid = [v11 guid];
        v14 = [v12 transferForGUID:guid];
        v15 = v14 == 0;

        if (v15)
        {
          guid2 = [v11 guid];
          [v12 _addTransfer:v11 forGUID:guid2 shouldNotify:0];
        }

        [v12 addHubbleRequestedTransfer:v11];
        guid3 = [v11 guid];
        localPath = [v11 localPath];
        [v12 _handleFileTransfer:guid3 acceptedWithPath:localPath autoRename:1 overwrite:0 options:0 postNotification:1];

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            guid4 = [v11 guid];
            *buf = 136315394;
            v31 = "[IMDaemonFileProviderRequestHandler downloadFileTransferWithLocalURL:]";
            v32 = 2112;
            v33 = guid4;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Successfully started explicit download for local file url retrieval of transfer with GUID %@", buf, 0x16u);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

@end