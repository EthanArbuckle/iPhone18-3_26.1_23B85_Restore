@interface IMDQuickSwitchController
+ (id)sharedInstance;
- (BOOL)_isPairedDeviceInProxyMode;
- (BOOL)_sendIDSFile:(id)file withCommand:(int64_t)command;
- (BOOL)_sendIDSMessage:(id)message;
- (BOOL)_sendZippedFileAtPath:(id)path withCommand:(int64_t)command;
- (BOOL)_supportsQuickSwitchWithPairedDevice;
- (BOOL)_truncateDBToPath:(id)path;
- (IMDQuickSwitchController)init;
- (id)_defaultPairedDevice;
- (id)_getDowngradedDBPath;
- (id)_getTempDBPath;
- (id)_getTempRecentsPath;
- (id)_getTruncatedDBPath;
- (id)_getZippedDBPath;
- (id)_getZippedRecentsPath;
- (int64_t)_getCurrentDBVersion;
- (unint64_t)_getFileSizeAtPath:(id)path;
- (void)_cleanUpTemporaryFiles;
- (void)_compressFileAtPath:(id)path toPath:(id)toPath withCompletionBlock:(id)block;
- (void)_decompressFileAtPath:(id)path toPath:(id)toPath withCompletionBlock:(id)block;
- (void)_deleteFileAtPath:(id)path;
- (void)_handleDBVersionResponse:(id)response;
- (void)_handleIncomingDB:(id)b;
- (void)_handleIncomingRecents:(id)recents;
- (void)_handleQuickSwitchCompleted:(id)completed;
- (void)_handleQuickSwitchInitiateRequest;
- (void)_handleRecentsRequest;
- (void)_initiateQuickSwitch;
- (void)_notifyPSYDataSent;
- (void)_notifyPSYWithResult:(BOOL)result;
- (void)_sendDBVersionResponse:(int64_t)response;
- (void)_sendRecentsRequest;
- (void)dealloc;
- (void)dummyMethod;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
@end

@implementation IMDQuickSwitchController

+ (id)sharedInstance
{
  if (qword_281421138 != -1)
  {
    sub_22B7D2DFC();
  }

  return qword_281420FB0;
}

- (IMDQuickSwitchController)init
{
  v8.receiver = self;
  v8.super_class = IMDQuickSwitchController;
  v2 = [(IMDQuickSwitchController *)&v8 init];
  if (v2)
  {
    if (qword_281421450 != -1)
    {
      sub_22B7D2E10();
    }

    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.messagesquickswitch"];
    v2->_quickSwitchIDSService = v3;
    [(IDSService *)v3 addDelegate:v2 queue:MEMORY[0x277D85CD0]];
    v4 = [qword_281421480 syncCoordinatorWithServiceName:@"com.apple.pairedsync.messagessync"];
    v2->_syncCoordinator = v4;
    [(PSYSyncCoordinator *)v4 setDelegate:v2];
    [(IMDQuickSwitchController *)v2 _cleanUpTemporaryFiles];
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Instantiated IMDQuickSwitchController", v7, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(IMDQuickSwitchController *)self _cleanUpTemporaryFiles];
  v3.receiver = self;
  v3.super_class = IMDQuickSwitchController;
  [(IMDQuickSwitchController *)&v3 dealloc];
}

- (void)dummyMethod
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Sending dummy request", v4, 2u);
    }
  }

  [(IMDQuickSwitchController *)self _isPairedDeviceInProxyMode];
  [(IMDQuickSwitchController *)self _initiateQuickSwitch];
}

- (int64_t)_getCurrentDBVersion
{
  v8 = *MEMORY[0x277D85DE8];
  SchemaVersion = IMDSMSRecordStoreGetSchemaVersion();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = SchemaVersion;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Current db version is %ld", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return SchemaVersion;
}

- (id)_getTempDBPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"MessagesQSwitch"];
}

- (id)_getTempRecentsPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"Recents"];
}

- (id)_getZippedRecentsPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"compressedSMSRecents.zip"];
}

- (id)_getTruncatedDBPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"tempSMS.db"];
}

- (id)_getDowngradedDBPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"tempDowngradedSMS.db"];
}

- (id)_getZippedDBPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"compressedSMSDB.zip"];
}

- (unint64_t)_getFileSizeAtPath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  if (!path)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v6 = "QuickSwitch Could not determine file size as path was nil";
    v7 = v9;
    v8 = 2;
    goto LABEL_9;
  }

  v14 = 0;
  v4 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (v14)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    *buf = 138412546;
    pathCopy2 = path;
    v17 = 2112;
    v18 = v14;
    v6 = "QuickSwitch Could not determine file size at path %@ with error %@";
    v7 = v5;
    v8 = 22;
LABEL_9:
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, v6, buf, v8);
LABEL_10:
    fileSize = 0;
    goto LABEL_11;
  }

  fileSize = [v4 fileSize];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      pathCopy2 = path;
      v17 = 2048;
      v18 = fileSize;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Size of file at path %@ is %lu", buf, 0x16u);
    }
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return fileSize;
}

- (BOOL)_truncateDBToPath:(id)path
{
  v13 = *MEMORY[0x277D85DE8];
  if (path)
  {
    if ((IMDDatabaseDelete() & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          pathCopy = path;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "QuickSwitch Could not delete DB at path %@", buf, 0xCu);
        }
      }
    }

    IMTimingStartTimingForKey();
    v6 = IMDTrimSharedDatabaseToMessageCount();
    if (v6)
    {
      IMTimingStopTimingForKey();
      [(IMDQuickSwitchController *)self _getFileSizeAtPath:path];
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        pathCopy = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "QuickSwitch Could not trim DB with error %@ ", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "QuickSwitch We got a nil path to truncate to.", buf, 2u);
      }
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_deleteFileAtPath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  if (path)
  {
    v15 = 0;
    v4 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v5 = IMOSLoggingEnabled();
    if (v4)
    {
      if (v5)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          pathCopy2 = path;
          v7 = "Deleted file at path %@ ";
          v8 = v6;
          v9 = 12;
LABEL_12:
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, v7, &v16, v9);
        }
      }
    }

    else if (v5)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        domain = [v15 domain];
        code = [v15 code];
        v16 = 138412802;
        pathCopy2 = path;
        v18 = 2112;
        v19 = domain;
        v20 = 2048;
        v21 = code;
        v7 = "QuickSwitch Could not delete file at path %@ with error domain '%@' code: %ld";
        v8 = v11;
        v9 = 32;
        goto LABEL_12;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      v7 = "QuickSwitch we were given a nil path to delete";
      v8 = v10;
      v9 = 2;
      goto LABEL_12;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpTemporaryFiles
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Cleaning up temporary files", buf, 2u);
    }
  }

  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getTempDBPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getTempRecentsPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getZippedDBPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getZippedRecentsPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getTruncatedDBPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getDowngradedDBPath]];
  [(IMDQuickSwitchController *)self _getTruncatedDBPath];
  if ((IMDDatabaseDelete() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        _getTruncatedDBPath = [(IMDQuickSwitchController *)self _getTruncatedDBPath];
        *buf = 138412546;
        v8 = _getTruncatedDBPath;
        v9 = 2112;
        v10 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "QuickSwitch Could not delete DB at path %@ %@", buf, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_compressFileAtPath:(id)path toPath:(id)toPath withCompletionBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "QuickSwitch. We do not expect file to already exist. Clearing it.", buf, 2u);
      }
    }

    v18 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          toPathCopy = toPath;
          v21 = 2112;
          v22 = v18;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "QuickSwitch Could not delete zipped file DB at path %@ with error %@", buf, 0x16u);
        }
      }
    }
  }

  v16 = MEMORY[0x277D85DD0];
  blockCopy = block;
  v11 = objc_alloc(MEMORY[0x277D19248]);
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:{path, v16, 3221225472, sub_22B57E090, &unk_278704F18, toPath, self, blockCopy}];
  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:toPath];
  v14 = [v11 initWithInputURL:v12 outputURL:v13 identifier:0 operation:2 completionBlock:&v16 queue:MEMORY[0x277D85CD0]];
  IMTimingStartTimingForKey();
  [v14 start];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_decompressFileAtPath:(id)path toPath:(id)toPath withCompletionBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "QuickSwitch. We do not expect file to already exist.", buf, 2u);
      }
    }

    v16 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          toPathCopy = toPath;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "QuickSwitch Could not delete zipped file DB at path %@ with error %@", buf, 0x16u);
        }
      }
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B57E3D0;
  v15[3] = &unk_278704F40;
  v15[4] = toPath;
  v15[5] = block;
  v10 = objc_alloc(MEMORY[0x277D19248]);
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:toPath];
  v13 = [v10 initWithInputURL:v11 outputURL:v12 identifier:0 operation:1 completionBlock:v15 queue:MEMORY[0x277D85CD0]];
  IMTimingStartTimingForKey();
  [v13 start];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_initiateQuickSwitch
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Initiating quick switch", buf, 2u);
    }
  }

  v4 = objc_alloc(MEMORY[0x277CBEAC0]);
  v5 = [v4 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", 1), @"c", 0}];
  if (![(IMDQuickSwitchController *)self _sendIDSMessage:v5])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "QuickSwitch Could not send initiate QuickSwitch message. Bailing!", v7, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }
}

- (void)_sendDBVersionResponse:(int64_t)response
{
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v7 = [v5 initWithObjectsAndKeys:{v6, @"c", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", response), @"dbv", 0}];
  if (![(IMDQuickSwitchController *)self _sendIDSMessage:v7])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Could not send initiate QuickSwitch message. Bailing!", buf, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }
}

- (void)_sendRecentsRequest
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = [v3 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", 5), @"c", 0}];
  if (![(IMDQuickSwitchController *)self _sendIDSMessage:v4])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Could not send QuickSwitch Recents request. Bailing!", buf, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }
}

- (void)_handleQuickSwitchInitiateRequest
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "We tried to _handleQuickSwitchInitiateRequest a non watch device for QuickSwitch. This is really bad!", v3, 2u);
    }
  }
}

- (BOOL)_sendZippedFileAtPath:(id)path withCommand:(int64_t)command
{
  if (!path)
  {
    return 0;
  }

  [MEMORY[0x277CBEBC0] fileURLWithPath:?];

  return MEMORY[0x2821F9670](self, sel__sendIDSFile_withCommand_);
}

- (void)_handleDBVersionResponse:(id)response
{
  v44 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = response;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "dbVersionResponse %@", buf, 0xCu);
    }
  }

  _getCurrentDBVersion = [(IMDQuickSwitchController *)self _getCurrentDBVersion];
  v7 = [objc_msgSend(response objectForKey:{@"dbv", "integerValue"}];
  if (_getCurrentDBVersion != v7)
  {
    v12 = IMDCanDowngradeDatabaseToVersion();
    v13 = IMOSLoggingEnabled();
    if (!v12)
    {
      if (v13)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = _getCurrentDBVersion;
          *&buf[12] = 2048;
          *&buf[14] = v7;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Trying to QuickSwitch to incompatible gizmo. Bailing quick switch. localDBVersion %ld gizmoDBVersion %ld", buf, 0x16u);
        }
      }

      goto LABEL_23;
    }

    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v7;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Downgrade: found a database that can be downgraded to version: %ld", buf, 0xCu);
      }
    }
  }

  _getTruncatedDBPath = [(IMDQuickSwitchController *)self _getTruncatedDBPath];
  if (!-[IMDQuickSwitchController _truncateDBToPath:](self, "_truncateDBToPath:", _getTruncatedDBPath) || ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = _getTruncatedDBPath;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "QuickSwitch Truncated DB did not succeed at path %@, Really bad! ", buf, 0xCu);
      }
    }

LABEL_23:
    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Truncation succeeded! :-)", buf, 2u);
    }
  }

  if (_getCurrentDBVersion == v7)
  {
    goto LABEL_11;
  }

  if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")])
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Needs downgrade, but must split chats first.", buf, 2u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v41 = sub_22B4D76A0;
    v42 = sub_22B4D78A8;
    v43 = 0;
    synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_22B57F2CC;
    v36[3] = &unk_278704F68;
    v36[4] = buf;
    [synchronousDatabase splitMergedChatsInDatabaseAtPath:_getTruncatedDBPath completionHandler:v36];
    if (*(*&buf[8] + 40))
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *(*&buf[8] + 40);
          *v37 = 138412546;
          *&v37[4] = _getTruncatedDBPath;
          v38 = 2112;
          v39 = v20;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "QuickSwitch failed to split merged chats on db at path %@ with error: %@", v37, 0x16u);
        }
      }

      [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
      _Block_object_dispose(buf, 8);
      goto LABEL_24;
    }

    _Block_object_dispose(buf, 8);
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *&buf[4] = _getCurrentDBVersion;
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Attempting downgrade from %ld to %ld...", buf, 0x16u);
    }
  }

  _getDowngradedDBPath = [(IMDQuickSwitchController *)self _getDowngradedDBPath];
  *v37 = 0;
  v23 = IMDDowngradeDatabaseToVersion();
  if (*v37)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  v25 = IMOSLoggingEnabled();
  if (v24)
  {
    if (v25)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = _getCurrentDBVersion;
        *&buf[12] = 2048;
        *&buf[14] = v7;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Downgraded from %ld to %ld ok! :-D", buf, 0x16u);
      }
    }

    [(IMDQuickSwitchController *)self _deleteFileAtPath:_getTruncatedDBPath];
    v35 = 0;
    v27 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v35)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    v29 = IMOSLoggingEnabled();
    if (v28)
    {
      if (v29)
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = _getDowngradedDBPath;
          *&buf[12] = 2112;
          *&buf[14] = _getTruncatedDBPath;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "renamed %@ to %@ in preperation for compression - this means the downgrade completed ok. :-D", buf, 0x16u);
        }
      }

LABEL_11:
      _getZippedDBPath = [(IMDQuickSwitchController *)self _getZippedDBPath];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_22B57F2DC;
      v34[3] = &unk_278704F90;
      v34[4] = self;
      [(IMDQuickSwitchController *)self _compressFileAtPath:_getTruncatedDBPath toPath:_getZippedDBPath withCompletionBlock:v34];
      goto LABEL_24;
    }

    if (v29)
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v35;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "QuickSwitch failed to rename downgraded db to tempdb with error: %@", buf, 0xCu);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }

  else
  {
    if (v25)
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [*v37 localizedDescription];
        *buf = 134218498;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = _getCurrentDBVersion;
        *&buf[22] = 2112;
        v41 = localizedDescription;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Error Trying to QuickSwitch watch to version %ld from %ld. Downgrade failed with error: %@", buf, 0x20u);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }

LABEL_24:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleRecentsRequest
{
  v15 = *MEMORY[0x277D85DE8];
  stringByStandardizingPath = [FormattedRecentDomainDirectory() stringByStandardizingPath];
  _getTempRecentsPath = [(IMDQuickSwitchController *)self _getTempRecentsPath];
  _getZippedRecentsPath = [(IMDQuickSwitchController *)self _getZippedRecentsPath];
  v10 = 0;
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    goto LABEL_6;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v12 = stringByStandardizingPath;
      v13 = 2112;
      v14 = _getTempRecentsPath;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Copying from %@ to %@", buf, 0x16u);
    }
  }

  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = v10;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "QuickSwitch could not copy path to temp directory with error %@. Bailing!!", buf, 0xCu);
      }
    }

    [(IMDQuickSwitchController *)self _deleteFileAtPath:_getTempRecentsPath];
    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }

  else
  {
LABEL_6:
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22B57F6A8;
    v9[3] = &unk_2787043C8;
    v9[4] = _getZippedRecentsPath;
    v9[5] = self;
    [(IMDQuickSwitchController *)self _compressFileAtPath:_getTempRecentsPath toPath:_getZippedRecentsPath withCompletionBlock:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleQuickSwitchCompleted:(id)completed
{
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      completedCopy = completed;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_handleQuickSwitchCompleted %@", &v7, 0xCu);
    }
  }

  -[IMDQuickSwitchController _quickSwitchCompleted:](self, "_quickSwitchCompleted:", [objc_msgSend(completed objectForKey:{@"s", "BOOLValue"}]);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingDB:(id)b
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "QuickSwitch got _handleIncomingDB on a non gizmo. Really bad!!", v4, 2u);
    }
  }
}

- (void)_handleIncomingRecents:(id)recents
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "QuickSwitch got _handleIncomingRecents on a non gizmo. Really bad!!", v4, 2u);
    }
  }
}

- (BOOL)_sendIDSFile:(id)file withCommand:(int64_t)command
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [v7 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", command), @"c", 0}];
  v14 = 0;
  v15 = 0;
  v9 = -[IDSService sendResourceAtURL:metadata:toDestinations:priority:options:identifier:error:](self->_quickSwitchIDSService, "sendResourceAtURL:metadata:toDestinations:priority:options:identifier:error:", file, v8, [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]], 300, 0, &v15, &v14);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (v9)
      {
        v11 = @"YES";
      }

      *buf = 138413314;
      fileCopy = file;
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Sending file at URL %@ to local account (identifier %@)  (error %@)  (metadata %@) success: %@", buf, 0x34u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_sendIDSMessage:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  _FTCopyGzippedData = [JWEncodeDictionary() _FTCopyGzippedData];
  v6 = -[IDSService sendData:toDestinations:priority:options:identifier:error:](self->_quickSwitchIDSService, "sendData:toDestinations:priority:options:identifier:error:", _FTCopyGzippedData, [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]], 300, 0, &v12, &v11);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      *buf = 138413058;
      v14 = v12;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      messageCopy = message;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Sending message to local account (identifier %@)  (error %@)  (request %@) success: %@", buf, 0x2Au);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v25 = 138413314;
      dCopy2 = service;
      v27 = 2112;
      accountCopy = account;
      v29 = 2112;
      dataCopy = data;
      v31 = 2112;
      dCopy = d;
      v33 = 2112;
      contextCopy = context;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "service %@, account %@, incomingData %@ fromID %@ context %@", &v25, 0x34u);
    }
  }

  if (![service deviceForFromID:d])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_36;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    v25 = 138412290;
    dCopy2 = d;
    v20 = "Not an IDSDevice: fromID %@. Bailing";
LABEL_27:
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, v20, &v25, 0xCu);
    goto LABEL_36;
  }

  [data _FTOptionallyDecompressData];
  v14 = JWDecodeDictionary();
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      dCopy2 = v14;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Got request %@", &v25, 0xCu);
    }
  }

  v16 = [objc_msgSend(v14 objectForKey:{@"c", "integerValue"}];
  v17 = IMOSLoggingEnabled();
  if (v16 > 3)
  {
    if (v16 == 4)
    {
      if (v17)
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandQuickSwitchCompleted", &v25, 2u);
        }
      }

      [(IMDQuickSwitchController *)self _handleQuickSwitchCompleted:v14];
    }

    else
    {
      if (v16 != 5)
      {
LABEL_24:
        if (!v17)
        {
          goto LABEL_36;
        }

        v19 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          goto LABEL_36;
        }

        v25 = 134217984;
        dCopy2 = v16;
        v20 = "QuickSwitch got unknown request over quick switch service %ld";
        goto LABEL_27;
      }

      if (v17)
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandRequestRecents", &v25, 2u);
        }
      }

      [(IMDQuickSwitchController *)self _handleRecentsRequest];
    }
  }

  else
  {
    if (v16 != 1)
    {
      if (v16 == 2)
      {
        if (v17)
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            LOWORD(v25) = 0;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandResponeDBVersion", &v25, 2u);
          }
        }

        [(IMDQuickSwitchController *)self _handleDBVersionResponse:v14];
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    if (v17)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandInitiateQuickSwitch", &v25, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _handleQuickSwitchInitiateRequest];
  }

LABEL_36:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v23 = 138413570;
      lCopy3 = service;
      v25 = 2112;
      accountCopy = account;
      v27 = 2112;
      lCopy = l;
      v29 = 2112;
      metadataCopy = metadata;
      v31 = 2112;
      dCopy = d;
      v33 = 2112;
      contextCopy = context;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "service %@, account %@, resourceURL %@ metadata %@ fromID %@ context %@", &v23, 0x3Eu);
    }
  }

  if (![service deviceForFromID:d])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_22;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v23 = 138412290;
    lCopy3 = d;
    v20 = "Not an IDSDevice: fromID %@. Bailing";
    goto LABEL_21;
  }

  v16 = [objc_msgSend(metadata objectForKey:{@"c", "integerValue"}];
  v17 = IMOSLoggingEnabled();
  if (v16 != 6)
  {
    if (v16 == 3)
    {
      if (v17)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          lCopy3 = l;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandIncomingDB at url %@", &v23, 0xCu);
        }
      }

      -[IMDQuickSwitchController _handleIncomingDB:](self, "_handleIncomingDB:", [l path]);
      goto LABEL_22;
    }

    if (!v17)
    {
      goto LABEL_22;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v23 = 134217984;
    lCopy3 = v16;
    v20 = "QuickSwitch got unknown resource ULR callback over quick switch service %ld";
LABEL_21:
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, v20, &v23, 0xCu);
    goto LABEL_22;
  }

  if (v17)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      lCopy3 = l;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandIncomingRecents at url %@", &v23, 0xCu);
    }
  }

  -[IMDQuickSwitchController _handleIncomingRecents:](self, "_handleIncomingRecents:", [l path]);
LABEL_22:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      identifierCopy = identifier;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "message sent with identifier %@ ", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPairedDeviceInProxyMode
{
  v22 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Checking if we are in proxy mode", buf, 2u);
    }
  }

  v3 = +[IMDServiceController sharedController];
  v4 = MEMORY[0x277D1A620];
  v5 = [+[IMDAccountController sharedInstance](IMDAccountController activeAccountsForService:"activeAccountsForService:", [(IMDServiceController *)v3 serviceWithName:*MEMORY[0x277D1A620]]];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v9 "service")] && objc_msgSend(objc_msgSend(v9, "loginID"), "_appearsToBeEmail"))
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v20 = v9;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not in proxy mode. Found active iMessage account signed into email %@ ", buf, 0xCu);
            }
          }

          v11 = 0;
          goto LABEL_21;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMEventCategory();
    v11 = 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "In proxy mode. Did not find any active iMessage account logged in using email.", buf, 2u);
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_21:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_defaultPairedDevice
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [self->_quickSwitchIDSService devices];
  v3 = [devices countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v16 = v6;
              _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Found default paired device %@", buf, 0xCu);
            }
          }

          goto LABEL_16;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v11 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "QuickSwitch Did not find default paired device", buf, 2u);
    }
  }

  v6 = 0;
LABEL_16:
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_supportsQuickSwitchWithPairedDevice
{
  v2 = [objc_msgSend(MEMORY[0x277D37B50] "sharedInstance")];

  return [v2 supportsCapability:2799955160];
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      coordinatorCopy = coordinator;
      v12 = 2112;
      sessionCopy = session;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Got beginSyncSession call with coordinator %@ and session %@", &v10, 0x16u);
    }
  }

  if ([(IMDQuickSwitchController *)self _supportsQuickSwitchWithPairedDevice])
  {
    [(IMDQuickSwitchController *)self _initiateQuickSwitch];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "QuickSwitch. Pairing with older gizmo. Not supported", &v10, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_notifyPSYWithResult:(BOOL)result
{
  resultCopy = result;
  activeSyncSession = [(PSYSyncCoordinator *)[(IMDQuickSwitchController *)self syncCoordinator] activeSyncSession];
  v5 = IMOSLoggingEnabled();
  if (resultCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Calling back to PSY with success", buf, 2u);
      }
    }

    [activeSyncSession syncDidComplete];
  }

  else
  {
    if (v5)
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Calling back to PSY with failure", v8, 2u);
      }
    }

    [activeSyncSession syncDidFailWithError:0];
  }
}

- (void)_notifyPSYDataSent
{
  activeSyncSession = [(PSYSyncCoordinator *)[(IMDQuickSwitchController *)self syncCoordinator] activeSyncSession];

  MEMORY[0x2821F9670](activeSyncSession, sel_syncDidCompleteSending);
}

@end