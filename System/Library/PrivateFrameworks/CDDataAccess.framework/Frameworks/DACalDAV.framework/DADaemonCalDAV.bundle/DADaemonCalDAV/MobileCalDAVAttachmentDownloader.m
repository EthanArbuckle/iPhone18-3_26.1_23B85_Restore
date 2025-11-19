@interface MobileCalDAVAttachmentDownloader
+ (id)progressQueue;
- (MobileCalDAVAttachmentDownloader)initWithAttachmentUUID:(id)a3 forAccount:(id)a4;
- (void)_didFinishDownloadingWithError:(id)a3;
- (void)_didShowProgressDownloadedByteCount:(int64_t)a3;
- (void)addConsumer:(id)a3;
- (void)beginDownload;
- (void)dealloc;
- (void)removeConsumer:(id)a3;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation MobileCalDAVAttachmentDownloader

+ (id)progressQueue
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!qword_26A70)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dataaccess.caldav.attachmentDownload", v3);
    v5 = qword_26A70;
    qword_26A70 = v4;
  }

  objc_sync_exit(v2);

  v6 = qword_26A70;

  return v6;
}

- (MobileCalDAVAttachmentDownloader)initWithAttachmentUUID:(id)a3 forAccount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = MobileCalDAVAttachmentDownloader;
  v9 = [(MobileCalDAVAttachmentDownloader *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentUUID, a3);
    v11 = [NSString stringWithFormat:@"com.apple.dataaccess.caldav.attachmentDownload.%@", v7];
    waiterID = v10->_waiterID;
    v10->_waiterID = v11;

    objc_storeWeak(&v10->_account, v8);
    v13 = [DACoreDAVTaskManager alloc];
    WeakRetained = objc_loadWeakRetained(&v10->_account);
    v15 = [v13 initWithAccount:WeakRetained];
    taskManager = v10->_taskManager;
    v10->_taskManager = v15;

    Mutable = CFSetCreateMutable(0, 0, 0);
    consumers = v10->_consumers;
    v10->_consumers = Mutable;
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

- (void)addConsumer:(id)a3
{
  v5 = a3;
  v4 = self->_consumers;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_consumers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeConsumer:(id)a3
{
  v5 = a3;
  v4 = self->_consumers;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_consumers removeObject:v5];
  if (![(NSMutableSet *)self->_consumers count])
  {
    [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
    [(DACoreDAVTaskManager *)self->_taskManager shutdown];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:0];
  }

  objc_sync_exit(v4);
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v7)
    {
      v8 = [v7 domain];
      if ([v8 isEqualToString:CoreDAVHTTPStatusErrorDomain])
      {
        v9 = [v7 code];

        if (v9 == &stru_108.size)
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

          v13 = self;
          v14 = 0;
LABEL_21:
          [(MobileCalDAVAttachmentDownloader *)v13 _didFinishDownloadingWithError:v14];
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
        v38 = v7;
        _os_log_impl(&dword_0, v32, v33, "Couldn't download the attachment at %@: %@", &v35, 0x16u);
      }

      v13 = self;
      v14 = v7;
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

    v18 = [v6 responseHeaders];
    v19 = [v18 DAObjectForKeyCaseInsensitive:CoreDAVHTTPHeader_ETag];

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

    v24 = [v6 responseHeaders];
    v25 = [v24 DAObjectForKeyCaseInsensitive:@"X-ANTICIPATED-CONTENT-LENGTH"];

    if (!v25)
    {
      v26 = [v6 responseHeaders];
      v25 = [v26 DAObjectForKeyCaseInsensitive:CoreDAVHTTPHeader_ContentLength];
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

    v29 = [v6 responseHeaders];
    v30 = [v29 DAObjectForKeyCaseInsensitive:CoreDAVHTTPHeader_ContentType];
    attachmentType = self->_attachmentType;
    self->_attachmentType = v30;

    [(MobileCalDAVAttachmentDownloader *)self _saveAttachmentDataToDatabase];
  }

LABEL_22:
}

- (void)beginDownload
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v2, v3))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "XXXXXXXXX: ERROR: Should not enter! No attachment support in Reminders.", v4, 2u);
  }
}

- (void)_didShowProgressDownloadedByteCount:(int64_t)a3
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    attachmentSize = self->_attachmentSize;
    *buf = 134218240;
    v19 = a3;
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
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        [*(*(&v13 + 1) + 8 * i) downloadProgressDownloadedByteCount:a3 totalByteCount:{self->_attachmentSize, v13}];
      }

      v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)_didFinishDownloadingWithError:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    attachmentUUID = self->_attachmentUUID;
    v8 = &stru_20990;
    if (v4)
    {
      v9 = @" Error was: ";
    }

    else
    {
      v9 = &stru_20990;
    }

    if (v4)
    {
      v8 = [v4 description];
    }

    *buf = 138412802;
    v24 = attachmentUUID;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_0, v5, v6, "Done downloading attachment %@.%@%@", buf, 0x20u);
    if (v4)
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
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

        [*(*(&v18 + 1) + 8 * i) downloadFinishedError:v4];
      }

      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_421C;
  block[3] = &unk_205B8;
  block[4] = self;
  dispatch_async(v15, block);

  WeakRetained = objc_loadWeakRetained(&self->_account);
  [WeakRetained _attachmentDownloadDidFinish:self];

  objc_sync_exit(v10);
}

@end