@interface MobileCalDAVAttachmentDownloader
+ (id)progressQueue;
- (MobileCalDAVAttachmentDownloader)initWithAttachmentUUID:(id)d forAccount:(id)account;
- (void)_didFinishDownloadingWithError:(id)error;
- (void)_didShowProgressDownloadedByteCount:(int64_t)count;
- (void)_reallyBeginDownload;
- (void)_reallySaveAttachmentDataToDatabase;
- (void)_saveAttachmentDataToDatabase;
- (void)addConsumer:(id)consumer;
- (void)beginDownload;
- (void)cancelDownload;
- (void)dealloc;
- (void)removeConsumer:(id)consumer;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation MobileCalDAVAttachmentDownloader

+ (id)progressQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_30C38)
  {
    v3 = dispatch_queue_create("com.apple.dataaccess.caldav.attachmentDownload", 0);
    v4 = qword_30C38;
    qword_30C38 = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = qword_30C38;

  return v5;
}

- (MobileCalDAVAttachmentDownloader)initWithAttachmentUUID:(id)d forAccount:(id)account
{
  dCopy = d;
  accountCopy = account;
  v22.receiver = self;
  v22.super_class = MobileCalDAVAttachmentDownloader;
  v9 = [(MobileCalDAVAttachmentDownloader *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentUUID, d);
    dCopy = [NSString stringWithFormat:@"com.apple.dataaccess.caldav.attachmentDownload.%@", dCopy];
    waiterID = v10->_waiterID;
    v10->_waiterID = dCopy;

    objc_storeWeak(&v10->_account, accountCopy);
    v13 = [DACoreDAVTaskManager alloc];
    WeakRetained = objc_loadWeakRetained(&v10->_account);
    backingAccount = [WeakRetained backingAccount];
    daAccount = [backingAccount daAccount];
    v17 = [v13 initWithAccount:daAccount];
    taskManager = v10->_taskManager;
    v10->_taskManager = v17;

    v19 = [[NSHashTable alloc] initWithOptions:5 capacity:0];
    consumers = v10->_consumers;
    v10->_consumers = v19;
  }

  return v10;
}

- (void)dealloc
{
  unlink([(NSString *)self->_localFilename UTF8String]);
  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVAttachmentDownloader;
  [(MobileCalDAVAttachmentDownloader *)&v3 dealloc];
}

- (void)addConsumer:(id)consumer
{
  consumerCopy = consumer;
  v4 = self->_consumers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_consumers addObject:consumerCopy];
  objc_sync_exit(v4);
}

- (void)removeConsumer:(id)consumer
{
  consumerCopy = consumer;
  v4 = self->_consumers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_consumers removeObject:consumerCopy];
  if (![(NSHashTable *)self->_consumers count])
  {
    [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
    [(DACoreDAVTaskManager *)self->_taskManager shutdown];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:0];
  }

  objc_sync_exit(v4);
}

- (void)_reallySaveAttachmentDataToDatabase
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    attachmentUUID = self->_attachmentUUID;
    v53 = 138412290;
    v54 = attachmentUUID;
    _os_log_impl(&dword_0, v3, v4, "The gatekeeper lock has been granted. Beginning save of attachment %@", &v53, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_account);
  dbHelper = [WeakRetained dbHelper];
  v8 = objc_loadWeakRetained(&self->_account);
  accountID = [v8 accountID];
  v10 = objc_loadWeakRetained(&self->_account);
  changeTrackingID = [v10 changeTrackingID];
  [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  v12 = objc_loadWeakRetained(&self->_account);
  dbHelper2 = [v12 dbHelper];
  v14 = objc_loadWeakRetained(&self->_account);
  accountID2 = [v14 accountID];
  [dbHelper2 calDatabaseForAccountID:accountID2];

  v16 = self->_attachmentUUID;
  v17 = CalDatabaseCopyAttachmentFileWithUUID();
  if (v17)
  {
    v18 = v17;
    stringByRemovingPercentEncoding = CalAttachmentFileCopyFilename();
    if (!stringByRemovingPercentEncoding)
    {
      absoluteString = [(NSURL *)self->_attachmentURL absoluteString];
      lastPathComponent = [absoluteString lastPathComponent];
      stringByRemovingPercentEncoding = [lastPathComponent stringByRemovingPercentEncoding];
    }

    pathExtension = [stringByRemovingPercentEncoding pathExtension];
    lowercaseString = [pathExtension lowercaseString];

    [(NSString *)self->_attachmentType rangeOfString:@"x-mac-auto-archive" options:1];
    v25 = v24 != 0;
    IsAutoArchived = CalAttachmentFileIsAutoArchived();
    lowercaseString2 = [kCALSTR_XAPPLE_autoarchived_param lowercaseString];
    v28 = [lowercaseString isEqualToString:lowercaseString2];

    v29 = v25 | IsAutoArchived | v28;
    CalAttachmentFileSetAutoArchived();
    if (stringByRemovingPercentEncoding && (v29 & 1) != 0 && ((v28 & 1) != 0 || [lowercaseString isEqualToString:@"zip"]))
    {
      stringByDeletingPathExtension = [stringByRemovingPercentEncoding stringByDeletingPathExtension];

      stringByRemovingPercentEncoding = stringByDeletingPathExtension;
    }

    CalAttachmentFileSetFilename();
    localFilename = self->_localFilename;
    if (CalAttachmentFileSetFileData())
    {
      attachmentType = self->_attachmentType;
      CalAttachmentFileSetFormat();
      etag = self->_etag;
      CalAttachmentFileSetExternalModTag();
      CalAttachmentFileSetDownloadTries();
      CalDatabaseSaveWithOptions();
    }

    else
    {
      v41 = DALoggingwithCategory();
      v42 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v41, v42))
      {
        v43 = self->_attachmentUUID;
        v53 = 138412290;
        v54 = v43;
        _os_log_impl(&dword_0, v41, v42, "Couldn't save attachment file in the database for attachment %@", &v53, 0xCu);
      }

      v44 = self->_attachmentType;
      CalAttachmentFileSetFormat();
      v45 = self->_etag;
      CalAttachmentFileSetExternalModTag();
    }

    CFRelease(v18);
    v46 = objc_loadWeakRetained(&self->_account);
    dbHelper3 = [v46 dbHelper];
    v48 = objc_loadWeakRetained(&self->_account);
    accountID3 = [v48 accountID];
    [dbHelper3 calCloseDatabaseForAccountID:accountID3 save:0];

    v50 = DALoggingwithCategory();
    v51 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v50, v51))
    {
      LOWORD(v53) = 0;
      _os_log_impl(&dword_0, v50, v51, "Attachment has been saved. Releasing gatekeeper lock", &v53, 2u);
    }

    self->_holdingGatekeeperLock = 0;
    v52 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v52 relinquishLocksForWaiter:self dataclasses:20 moreComing:0];

    [(MobileCalDAVAttachmentDownloader *)self _didShowProgressDownloadedByteCount:self->_attachmentSize];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:0];
  }

  else
  {
    v34 = DALoggingwithCategory();
    v35 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v34, v35))
    {
      LOWORD(v53) = 0;
      _os_log_impl(&dword_0, v34, v35, "Couldn't get an attachment to set our downloaded file on", &v53, 2u);
    }

    v36 = [NSError errorWithDomain:DAErrorDomain code:71 userInfo:0];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v36];

    v37 = objc_loadWeakRetained(&self->_account);
    dbHelper4 = [v37 dbHelper];
    v39 = objc_loadWeakRetained(&self->_account);
    accountID4 = [v39 accountID];
    [dbHelper4 calCloseDatabaseForAccountID:accountID4 save:0];

    self->_holdingGatekeeperLock = 0;
    stringByRemovingPercentEncoding = +[DALocalDBGateKeeper sharedGateKeeper];
    [stringByRemovingPercentEncoding relinquishLocksForWaiter:self dataclasses:20 moreComing:0];
  }
}

- (void)_saveAttachmentDataToDatabase
{
  if (self->_waitingForGatekeeper || self->_holdingGatekeeperLock)
  {
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v3, v4))
    {
      attachmentUUID = self->_attachmentUUID;
      *buf = 138412290;
      v16 = attachmentUUID;
      _os_log_impl(&dword_0, v3, v4, "Downloader %@ was told to save the attachment twice. Ignoring the second request", buf, 0xCu);
    }
  }

  else
  {
    v6 = objc_opt_new();
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v7, v8))
    {
      transactionId = [v6 transactionId];
      *buf = 138543362;
      v16 = transactionId;
      _os_log_impl(&dword_0, v7, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
    }

    self->_waitingForGatekeeper = 1;
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v8))
    {
      v11 = self->_attachmentUUID;
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_0, v10, v8, "Requesting gatekeeper lock to save attachment %@", buf, 0xCu);
    }

    v12 = +[DALocalDBGateKeeper sharedGateKeeper];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_6298;
    v13[3] = &unk_28888;
    v13[4] = self;
    v14 = v6;
    v3 = v6;
    [v12 registerWaiter:self forDataclassLocks:20 completionHandler:v13];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:CoreDAVHTTPStatusErrorDomain])
      {
        code = [errorCopy code];

        if (code == &stru_108.size)
        {
          v10 = DALoggingwithCategory();
          v11 = _CPLog_to_os_log_type[6];
          if (os_log_type_enabled(v10, v11))
          {
            attachmentURL = self->_attachmentURL;
            v35 = 138412290;
            v36 = attachmentURL;
            _os_log_impl(&dword_0, v10, v11, "The attachment at %@ hasn't been modified since we last saw it.", &v35, 0xCu);
          }

          selfCopy2 = self;
          v14 = 0;
LABEL_21:
          [(MobileCalDAVAttachmentDownloader *)selfCopy2 _didFinishDownloadingWithError:v14];
          goto LABEL_22;
        }
      }

      else
      {
      }

      v32 = DALoggingwithCategory();
      v33 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v32, v33))
      {
        v34 = self->_attachmentURL;
        v35 = 138412546;
        v36 = v34;
        v37 = 2112;
        v38 = errorCopy;
        _os_log_impl(&dword_0, v32, v33, "Couldn't download the attachment at %@: %@", &v35, 0x16u);
      }

      selfCopy2 = self;
      v14 = errorCopy;
      goto LABEL_21;
    }

    v15 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v15, v16))
    {
      v17 = self->_attachmentURL;
      v35 = 138412290;
      v36 = v17;
      _os_log_impl(&dword_0, v15, v16, "Finished downloading the file at %@. Saving to the database.", &v35, 0xCu);
    }

    responseHeaders = [taskCopy responseHeaders];
    v19 = [responseHeaders DAObjectForKeyCaseInsensitive:CoreDAVHTTPHeader_ETag];

    v20 = DALoggingwithCategory();
    if (os_log_type_enabled(v20, v16))
    {
      etag = self->_etag;
      v35 = 138412546;
      v36 = v19;
      v37 = 2112;
      v38 = etag;
      _os_log_impl(&dword_0, v20, v16, "etag for attachment on the server is %@. Our etag is %@", &v35, 0x16u);
    }

    v22 = self->_etag;
    self->_etag = v19;
    v23 = v19;

    responseHeaders2 = [taskCopy responseHeaders];
    v25 = [responseHeaders2 DAObjectForKeyCaseInsensitive:@"X-ANTICIPATED-CONTENT-LENGTH"];

    if (!v25)
    {
      responseHeaders3 = [taskCopy responseHeaders];
      v25 = [responseHeaders3 DAObjectForKeyCaseInsensitive:CoreDAVHTTPHeader_ContentLength];
    }

    self->_attachmentSize = [v25 longLongValue];
    v27 = DALoggingwithCategory();
    if (os_log_type_enabled(v27, v16))
    {
      attachmentSize = self->_attachmentSize;
      v35 = 134217984;
      v36 = attachmentSize;
      _os_log_impl(&dword_0, v27, v16, "Downloading attachment of size %lld", &v35, 0xCu);
    }

    responseHeaders4 = [taskCopy responseHeaders];
    v30 = [responseHeaders4 DAObjectForKeyCaseInsensitive:CoreDAVHTTPHeader_ContentType];
    attachmentType = self->_attachmentType;
    self->_attachmentType = v30;

    [(MobileCalDAVAttachmentDownloader *)self _saveAttachmentDataToDatabase];
  }

LABEL_22:
}

- (void)beginDownload
{
  v3 = +[DALocalDBGateKeeper sharedGateKeeper];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6824;
  v4[3] = &unk_288B0;
  v4[4] = self;
  [v3 registerWaiter:self forDataclassLocks:4 completionHandler:v4];
}

- (void)_reallyBeginDownload
{
  WeakRetained = objc_loadWeakRetained(&self->_account);
  dbHelper = [WeakRetained dbHelper];
  v5 = objc_loadWeakRetained(&self->_account);
  accountID = [v5 accountID];
  v7 = objc_loadWeakRetained(&self->_account);
  changeTrackingID = [v7 changeTrackingID];
  [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  v9 = objc_loadWeakRetained(&self->_account);
  dbHelper2 = [v9 dbHelper];
  v11 = objc_loadWeakRetained(&self->_account);
  accountID2 = [v11 accountID];
  [dbHelper2 calDatabaseForAccountID:accountID2];

  attachmentUUID = self->_attachmentUUID;
  v14 = CalDatabaseCopyAttachmentFileWithUUID();
  if (!v14)
  {
    v16 = [NSError errorWithDomain:DAErrorDomain code:71 userInfo:0];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v16];

    goto LABEL_5;
  }

  v15 = v14;
  if (CalAttachmentFileIsBinary())
  {
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:0];
    CFRelease(v15);
LABEL_5:
    v77 = objc_loadWeakRetained(&self->_account);
    dbHelper3 = [v77 dbHelper];
    v18 = objc_loadWeakRetained(&self->_account);
    accountID3 = [v18 accountID];
    [dbHelper3 calCloseDatabaseForAccountID:accountID3 save:0];

    return;
  }

  v20 = CalAttachmentFileCopyURL();
  attachmentURL = self->_attachmentURL;
  self->_attachmentURL = v20;

  v22 = self->_attachmentURL;
  if (!v22)
  {
    v31 = DALoggingwithCategory();
    v32 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v31, v32))
    {
      v33 = self->_attachmentUUID;
      *buf = 138412290;
      v83 = v33;
      _os_log_impl(&dword_0, v31, v32, "We were told to download the attachment with UUID %@ but that attachment doesn't have a URL. We can't do anything", buf, 0xCu);
    }

    v34 = [NSError errorWithDomain:DAErrorDomain code:72 userInfo:0];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v34];

    CFRelease(v15);
    v27 = objc_loadWeakRetained(&self->_account);
    dbHelper4 = [v27 dbHelper];
    v36 = objc_loadWeakRetained(&self->_account);
    accountID4 = [v36 accountID];
    [dbHelper4 calCloseDatabaseForAccountID:accountID4 save:0];

    goto LABEL_33;
  }

  scheme = [(NSURL *)v22 scheme];
  lowercaseString = [scheme lowercaseString];
  v25 = [lowercaseString hasPrefix:@"http"];

  if (v25)
  {
    v26 = CalAttachmentFileCopyLocalURL();
    v27 = v26;
    if (v26 && [v26 isFileURL])
    {
      v28 = +[NSFileManager defaultManager];
      path = [v27 path];
      v30 = [v28 fileExistsAtPath:path];
    }

    else
    {
      v30 = 0;
    }

    v46 = CalAttachmentFileCopyExternalModTag();
    etag = self->_etag;
    self->_etag = v46;

    +[NSDate date];
    CalAttachmentFileSetDownloadStart();
    CalAttachmentFileGetDownloadTries();
    CalAttachmentFileSetDownloadTries();
    if ((v30 & 1) == 0)
    {
      v48 = self->_etag;
      self->_etag = 0;
    }

    bzero(buf, 0x401uLL);
    dbHelper4 = CalAttachmentFileCopyURLAppropriateForFile();
    CFRelease(v15);
    v49 = objc_loadWeakRetained(&self->_account);
    dbHelper5 = [v49 dbHelper];
    v51 = objc_loadWeakRetained(&self->_account);
    accountID5 = [v51 accountID];
    [dbHelper5 calCloseDatabaseForAccountID:accountID5 save:1];

    v53 = +[NSFileManager defaultManager];
    v54 = [v53 CalTemporaryDirectoryAppropriateForURL:dbHelper4];
    path2 = [v54 path];

    v56 = [path2 stringByAppendingPathComponent:@"DAAttachmentXXXXXX"];
    [v56 UTF8String];
    __strlcpy_chk();
    v57 = mkstemp(buf);
    if ((v57 & 0x80000000) != 0)
    {
      v73 = DALoggingwithCategory();
      v74 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v73, v74))
      {
        *v78 = 136315138;
        v79 = buf;
        _os_log_impl(&dword_0, v73, v74, "Couldn't create a temporary file with the format %s", v78, 0xCu);
      }

      v67 = [NSError errorWithDomain:DAErrorDomain code:73 userInfo:0];
      [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v67];
    }

    else
    {
      v58 = v57;
      v59 = [NSString stringWithUTF8String:buf];
      localFilename = self->_localFilename;
      self->_localFilename = v59;

      v61 = DALoggingwithCategory();
      v62 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v61, v62))
      {
        v63 = self->_attachmentURL;
        v64 = self->_localFilename;
        *v78 = 138412546;
        v79 = v63;
        v80 = 2112;
        v81 = v64;
        _os_log_impl(&dword_0, v61, v62, "Downloading attachment at %@ to %@", v78, 0x16u);
      }

      v65 = [NSURL fileURLWithPath:self->_localFilename];
      v66 = self->_attachmentURL;
      CalAttachmentPrepareFileForDownload();

      v67 = [[NSFileHandle alloc] initWithFileDescriptor:v58 closeOnDealloc:1];
      v68 = [[CalDAVGetToFileWithProgressTask alloc] initWithURL:self->_attachmentURL destinationFile:v67];
      v69 = objc_loadWeakRetained(&self->_account);
      principalURL = [v69 principalURL];

      if ([CalAttachmentUtils attachmentURL:self->_attachmentURL matchesServerURL:principalURL])
      {
        v71 = objc_loadWeakRetained(&self->_account);
        mainPrincipal = [v71 mainPrincipal];
        [(CalDAVGetToFileWithProgressTask *)v68 setAccountInfoProvider:mainPrincipal];
      }

      else
      {
        v75 = objc_alloc_init(MobileCalDAVGenericAccountInfoProvider);
        placeholderAccountInfoProvider = self->_placeholderAccountInfoProvider;
        self->_placeholderAccountInfoProvider = v75;

        [(CalDAVGetToFileWithProgressTask *)v68 setAccountInfoProvider:self->_placeholderAccountInfoProvider];
      }

      [(CalDAVGetToFileWithProgressTask *)v68 setDelegate:self];
      [(CalDAVGetToFileWithProgressTask *)v68 setDownloader:self];
      [(CalDAVGetToFileWithProgressTask *)v68 setPreviousETag:self->_etag];
      [(DACoreDAVTaskManager *)self->_taskManager submitIndependentTask:v68];
    }

LABEL_33:
    return;
  }

  v38 = DALoggingwithCategory();
  v39 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v38, v39))
  {
    v40 = self->_attachmentURL;
    *buf = 138412290;
    v83 = v40;
    _os_log_impl(&dword_0, v38, v39, "Refusing to download the attachment with URL %@ because it isn't http or https", buf, 0xCu);
  }

  v41 = [NSError errorWithDomain:DAErrorDomain code:72 userInfo:0];
  [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v41];

  v42 = objc_loadWeakRetained(&self->_account);
  dbHelper6 = [v42 dbHelper];
  v44 = objc_loadWeakRetained(&self->_account);
  accountID6 = [v44 accountID];
  [dbHelper6 calCloseDatabaseForAccountID:accountID6 save:0];

  CFRelease(v15);
}

- (void)cancelDownload
{
  [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
  self->_waitingForGatekeeper = 0;
  v3 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v3 unregisterWaiterForDataclassLocks:self];

  self->_holdingGatekeeperLock = 0;
}

- (void)_didShowProgressDownloadedByteCount:(int64_t)count
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    attachmentSize = self->_attachmentSize;
    *buf = 134218240;
    countCopy = count;
    v20 = 2048;
    v21 = attachmentSize;
    _os_log_impl(&dword_0, v5, v6, "Notifying consumers of progress: %lld/%lld", buf, 0x16u);
  }

  v8 = self->_consumers;
  objc_sync_enter(v8);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_consumers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v13 + 1) + 8 * i) downloadProgressDownloadedByteCount:count totalByteCount:{self->_attachmentSize, v13}];
      }

      v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)_didFinishDownloadingWithError:(id)error
{
  errorCopy = error;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    attachmentUUID = self->_attachmentUUID;
    v8 = &stru_28C48;
    if (errorCopy)
    {
      v9 = @" Error was: ";
    }

    else
    {
      v9 = &stru_28C48;
    }

    if (errorCopy)
    {
      v8 = [errorCopy description];
    }

    *buf = 138412802;
    v24 = attachmentUUID;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_0, v5, v6, "Done downloading attachment %@.%@%@", buf, 0x20u);
    if (errorCopy)
    {
    }
  }

  v10 = self->_consumers;
  objc_sync_enter(v10);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_consumers;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v18 + 1) + 8 * i) downloadFinishedError:errorCopy];
      }

      v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7600;
  block[3] = &unk_28790;
  block[4] = self;
  dispatch_async(v15, block);

  WeakRetained = objc_loadWeakRetained(&self->_account);
  [WeakRetained _attachmentDownloadDidFinish:self];

  objc_sync_exit(v10);
}

@end