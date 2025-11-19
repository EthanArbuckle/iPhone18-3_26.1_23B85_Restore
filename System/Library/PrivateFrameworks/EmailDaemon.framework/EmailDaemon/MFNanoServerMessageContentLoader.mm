@interface MFNanoServerMessageContentLoader
- (MFNanoServerMessageContentLoader)initWithMessageId:(id)a3 highPriority:(BOOL)a4 pairedDeviceInfo:(id)a5 delegate:(id)a6;
- (id)_attachmentForURL:(id)a3 mimePart:(id)a4;
- (id)_attemptToLoadLibraryMessageWithContentFromDatabase;
- (id)_libraryMessageForMessageId:(id)a3;
- (id)_monitoredOperationWithBlock:(id)a3;
- (id)_nanoAttachmentForURL:(id)a3 mimePart:(id)a4;
- (int64_t)priority;
- (void)_downloadContent;
- (void)_notifyDelegateDidFinish;
- (void)_notifyDelegateOfFailure;
- (void)_notifyDelegateThatReceivedAttachment:(id)a3 forContentId:(id)a4 loadedProtected:(BOOL)a5;
- (void)_notifyDelegateThatReceivedImageAttachment:(id)a3 forContentId:(id)a4 loadedProtected:(BOOL)a5;
- (void)_notifyDelegateThatReceivedMailContent:(id)a3 forMessage:(id)a4 loadedProtected:(BOOL)a5;
- (void)_parseContentFromMessageAndNotifyDelegate:(id)a3 loadedProtected:(BOOL)a4;
- (void)_startContentLoadProcess;
- (void)_startLoadingAttachments:(id)a3 messageBody:(id)a4 loadedProtected:(BOOL)a5;
- (void)cancel;
- (void)dealloc;
- (void)notifyContentsAvailable:(id)a3 forMessage:(id)a4;
- (void)setHighPriority:(BOOL)a3;
@end

@implementation MFNanoServerMessageContentLoader

- (MFNanoServerMessageContentLoader)initWithMessageId:(id)a3 highPriority:(BOOL)a4 pairedDeviceInfo:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = MFNanoServerMessageContentLoader;
  v14 = [(MFNanoServerMessageContentLoader *)&v26 init];
  v15 = v14;
  v16 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_messageId, a3);
    v17 = +[NSDate date];
    requestDate = v16->_requestDate;
    v16->_requestDate = v17;

    v16->_highPriority = a4;
    objc_storeStrong(&v15->_pairedDeviceInfo, a5);
    objc_storeStrong(&v15->_delegate, a6);
    v19 = objc_alloc_init(NSMutableSet);
    monitoredOperations = v16->_monitoredOperations;
    v16->_monitoredOperations = v19;

    v21 = objc_alloc_init(NSLock);
    monitoredOperationsLock = v16->_monitoredOperationsLock;
    v16->_monitoredOperationsLock = v21;

    v23 = objc_alloc_init(NSMutableArray);
    currentContentParsers = v16->_currentContentParsers;
    v16->_currentContentParsers = v23;

    if (qword_100185A90 != -1)
    {
      sub_1000D4F00();
    }

    [(MFNanoServerMessageContentLoader *)v16 _startContentLoadProcess];
  }

  return v16;
}

- (void)dealloc
{
  delegate = self->_delegate;
  self->_delegate = 0;

  [(NSLock *)self->_monitoredOperationsLock lock];
  [(NSMutableSet *)self->_monitoredOperations makeObjectsPerformSelector:"cancel"];
  [(NSLock *)self->_monitoredOperationsLock unlock];
  v4.receiver = self;
  v4.super_class = MFNanoServerMessageContentLoader;
  [(MFNanoServerMessageContentLoader *)&v4 dealloc];
}

- (void)cancel
{
  delegate = self->_delegate;
  self->_delegate = 0;

  [(NSLock *)self->_monitoredOperationsLock lock];
  [(NSMutableSet *)self->_monitoredOperations makeObjectsPerformSelector:"cancel"];
  [(NSLock *)self->_monitoredOperationsLock unlock];
  v5 = [(MFLibraryMessage *)self->_messageForDownload account];
  v4 = [MessageBodyLoader loaderForAccount:?];
  [v4 removeSingleMessageClient:self];
}

- (void)setHighPriority:(BOOL)a3
{
  if (self->_highPriority != a3)
  {
    v3 = a3;
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      messageId = self->_messageId;
      v12[0] = 67109378;
      v12[1] = v3;
      v13 = 2114;
      v14 = messageId;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Nano Setting MFNanoServerMessageContentLoader to high priority: %d, messageId: %{public}@", v12, 0x12u);
    }

    if (self->_contentQueuedForDownload)
    {
      v7 = [(MFLibraryMessage *)self->_messageForDownload account];
      v8 = [MessageBodyLoader loaderForAccount:v7];
      [v8 removeSingleMessageClient:self];

      contentQueuedForDownload = self->_contentQueuedForDownload;
      self->_highPriority = v3;
      if (contentQueuedForDownload)
      {
        v10 = [(MFLibraryMessage *)self->_messageForDownload account];
        v11 = [MessageBodyLoader loaderForAccount:v10];

        [v11 addSingleMessageClient:self];
        if (self->_highPriority)
        {
          [v11 resume];
        }
      }
    }

    else
    {
      self->_highPriority = v3;
    }
  }
}

- (int64_t)priority
{
  if (self->_highPriority)
  {
    return 101;
  }

  else
  {
    return 0;
  }
}

- (void)notifyContentsAvailable:(id)a3 forMessage:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      messageId = self->_messageId;
      v9 = 138543362;
      v10 = messageId;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Nano MessageBodyLoader returned content for: %{public}@", &v9, 0xCu);
    }

    [(MFNanoServerMessageContentLoader *)self _parseContentFromMessageAndNotifyDelegate:v5 loadedProtected:0];
  }

  else
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4F28(self, v8);
    }
  }

  self->_contentQueuedForDownload = 0;
}

- (void)_startContentLoadProcess
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10008DAC4;
  v9 = sub_10008DAD4;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008DADC;
  v4[3] = &unk_1001578D0;
  v4[4] = self;
  v4[5] = &v5;
  v2 = [(MFNanoServerMessageContentLoader *)self _monitoredOperationWithBlock:v4];
  v3 = v6[5];
  v6[5] = v2;

  [qword_100185A78 addOperation:v6[5]];
  _Block_object_dispose(&v5, 8);
}

- (id)_attemptToLoadLibraryMessageWithContentFromDatabase
{
  v2 = [NSURL URLWithString:self->_messageId];
  v3 = [v2 mf_messageCriterion];
  v4 = +[MFMailMessageLibrary defaultInstance];
  v5 = [v4 messagesMatchingCriterion:v3 options:36904];

  v6 = [v5 firstObject];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 summary];

    if (v8)
    {
      v9 = [v7 mailbox];
      v10 = [v9 store];
      [v7 setMessageStore:v10];
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_downloadContent
{
  v3 = [(MFNanoServerMessageContentLoader *)self _libraryMessageForMessageId:self->_messageId];
  messageForDownload = self->_messageForDownload;
  self->_messageForDownload = v3;

  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    messageId = self->_messageId;
    v7 = [(MFLibraryMessage *)self->_messageForDownload remoteID];
    v8 = [(MFLibraryMessage *)self->_messageForDownload globalMessageID];
    v11 = 138543874;
    v12 = messageId;
    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Nano Attempting to download message with id: %{public}@, remoteId: %{public}@, globalMessageId: %lld", &v11, 0x20u);
  }

  v9 = [(MFLibraryMessage *)self->_messageForDownload account];
  v10 = [MessageBodyLoader loaderForAccount:v9];

  [v10 addSingleMessageClient:self];
  if (self->_highPriority)
  {
    [v10 resume];
  }

  self->_contentQueuedForDownload = 1;
}

- (void)_parseContentFromMessageAndNotifyDelegate:(id)a3 loadedProtected:(BOOL)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10008DAC4;
  v20 = sub_10008DAD4;
  v21 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10008E000;
  v11 = &unk_1001599B8;
  v14 = &v16;
  v12 = self;
  v5 = a3;
  v13 = v5;
  v15 = a4;
  v6 = [(MFNanoServerMessageContentLoader *)v12 _monitoredOperationWithBlock:&v8];
  v7 = v17[5];
  v17[5] = v6;

  [qword_100185A80 addOperation:{v17[5], v8, v9, v10, v11, v12}];
  _Block_object_dispose(&v16, 8);
}

- (void)_startLoadingAttachments:(id)a3 messageBody:(id)a4 loadedProtected:(BOOL)a5
{
  v8 = a3;
  v16 = a4;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = [v8 count];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = sub_10008DAC4;
        v28 = sub_10008DAD4;
        v29 = 0;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10008E7A4;
        v17[3] = &unk_1001599E0;
        v21 = &v24;
        v18 = v16;
        v19 = v12;
        v23 = a5;
        v20 = self;
        v22 = v34;
        v13 = [(MFNanoServerMessageContentLoader *)self _monitoredOperationWithBlock:v17];
        v14 = v25[5];
        v25[5] = v13;

        [qword_100185A88 addOperation:v25[5]];
        _Block_object_dispose(&v24, 8);

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(v34, 8);
}

- (void)_notifyDelegateThatReceivedMailContent:(id)a3 forMessage:(id)a4 loadedProtected:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v9 messageId];
    v14 = [v9 accountId];
    v15 = [v9 mailboxId];
    *buf = 138543874;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#Nano Sending message, ID: '%{public}@', account: '%{public}@', mailbox: '%{public}@'.", buf, 0x20u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008ED34;
  v16[3] = &unk_100157170;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(&_dispatch_main_q, v16);
}

- (void)_notifyDelegateThatReceivedImageAttachment:(id)a3 forContentId:(id)a4 loadedProtected:(BOOL)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008EE18;
  v9[3] = &unk_100157170;
  v9[4] = self;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v7 = v11;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)_notifyDelegateThatReceivedAttachment:(id)a3 forContentId:(id)a4 loadedProtected:(BOOL)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008EEFC;
  v9[3] = &unk_100157170;
  v9[4] = self;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v7 = v11;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)_notifyDelegateDidFinish
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008EF88;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notifyDelegateOfFailure
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F008;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_nanoAttachmentForURL:(id)a3 mimePart:(id)a4
{
  v6 = a4;
  v7 = [(MFNanoServerMessageContentLoader *)self _attachmentForURL:a3 mimePart:v6];
  v8 = [v7 isImageFile];
  v9 = NNMKImageAttachment_ptr;
  if (!v8)
  {
    v9 = NNMKAttachment_ptr;
  }

  v10 = objc_alloc_init(*v9);
  v11 = [v7 contentID];
  [v10 setContentId:v11];

  v12 = [v7 fileName];
  [v10 setFileName:v12];

  [v10 setFileSize:{3 * (objc_msgSend(v7, "encodedFileSize") >> 2)}];
  v13 = [v6 partNumber];
  [v10 setMimePartNumber:v13];

  [v10 setType:{objc_msgSend(v7, "nanoAttachmentType")}];

  return v10;
}

- (id)_attachmentForURL:(id)a3 mimePart:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100027C70();
  v8 = [v7 defaultAttachmentManager];
  v9 = [v8 attachmentForURL:v5 error:0];

  [v9 setPart:v6];
  v10 = [v6 type];
  v11 = [v6 subtype];
  v12 = [NSString stringWithFormat:@"%@/%@", v10, v11];
  [v9 setMimeType:v12];

  v13 = [v6 attachmentFilename];
  [v9 setFileName:v13];

  [v9 setEncodedFileSize:{objc_msgSend(v6, "approximateRawSize")}];
  v14 = [v6 disposition];
  [v9 setDisposition:v14];

  return v9;
}

- (id)_libraryMessageForMessageId:(id)a3
{
  v3 = [NSURL URLWithString:a3];
  v4 = [v3 mf_messageCriterion];
  v5 = +[MFMailMessageLibrary defaultInstance];
  v6 = [v5 messagesMatchingCriterion:v4 options:6144];

  v7 = [v6 firstObject];
  v8 = [v7 mailbox];
  v9 = [v8 store];
  [v7 setMessageStore:v9];

  return v7;
}

- (id)_monitoredOperationWithBlock:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10008DAC4;
  v18 = sub_10008DAD4;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008F648;
  v11[3] = &unk_100159A08;
  v4 = a3;
  v11[4] = self;
  v12 = v4;
  v13 = &v14;
  v5 = [NSBlockOperation blockOperationWithBlock:v11];
  v6 = v15[5];
  v15[5] = v5;

  if (self->_highPriority)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  [v15[5] setQueuePriority:v7];
  if (self->_highPriority)
  {
    v8 = 25;
  }

  else
  {
    v8 = 17;
  }

  [v15[5] setQualityOfService:v8];
  [(NSLock *)self->_monitoredOperationsLock lock];
  [(NSMutableSet *)self->_monitoredOperations addObject:v15[5]];
  [(NSLock *)self->_monitoredOperationsLock unlock];
  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

@end