@interface MFNanoServerMessageContentLoader
- (MFNanoServerMessageContentLoader)initWithMessageId:(id)id highPriority:(BOOL)priority pairedDeviceInfo:(id)info delegate:(id)delegate;
- (id)_attachmentForURL:(id)l mimePart:(id)part;
- (id)_attemptToLoadLibraryMessageWithContentFromDatabase;
- (id)_libraryMessageForMessageId:(id)id;
- (id)_monitoredOperationWithBlock:(id)block;
- (id)_nanoAttachmentForURL:(id)l mimePart:(id)part;
- (int64_t)priority;
- (void)_downloadContent;
- (void)_notifyDelegateDidFinish;
- (void)_notifyDelegateOfFailure;
- (void)_notifyDelegateThatReceivedAttachment:(id)attachment forContentId:(id)id loadedProtected:(BOOL)protected;
- (void)_notifyDelegateThatReceivedImageAttachment:(id)attachment forContentId:(id)id loadedProtected:(BOOL)protected;
- (void)_notifyDelegateThatReceivedMailContent:(id)content forMessage:(id)message loadedProtected:(BOOL)protected;
- (void)_parseContentFromMessageAndNotifyDelegate:(id)delegate loadedProtected:(BOOL)protected;
- (void)_startContentLoadProcess;
- (void)_startLoadingAttachments:(id)attachments messageBody:(id)body loadedProtected:(BOOL)protected;
- (void)cancel;
- (void)dealloc;
- (void)notifyContentsAvailable:(id)available forMessage:(id)message;
- (void)setHighPriority:(BOOL)priority;
@end

@implementation MFNanoServerMessageContentLoader

- (MFNanoServerMessageContentLoader)initWithMessageId:(id)id highPriority:(BOOL)priority pairedDeviceInfo:(id)info delegate:(id)delegate
{
  idCopy = id;
  infoCopy = info;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = MFNanoServerMessageContentLoader;
  v14 = [(MFNanoServerMessageContentLoader *)&v26 init];
  v15 = v14;
  v16 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_messageId, id);
    v17 = +[NSDate date];
    requestDate = v16->_requestDate;
    v16->_requestDate = v17;

    v16->_highPriority = priority;
    objc_storeStrong(&v15->_pairedDeviceInfo, info);
    objc_storeStrong(&v15->_delegate, delegate);
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
  account = [(MFLibraryMessage *)self->_messageForDownload account];
  v4 = [MessageBodyLoader loaderForAccount:?];
  [v4 removeSingleMessageClient:self];
}

- (void)setHighPriority:(BOOL)priority
{
  if (self->_highPriority != priority)
  {
    priorityCopy = priority;
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      messageId = self->_messageId;
      v12[0] = 67109378;
      v12[1] = priorityCopy;
      v13 = 2114;
      v14 = messageId;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Nano Setting MFNanoServerMessageContentLoader to high priority: %d, messageId: %{public}@", v12, 0x12u);
    }

    if (self->_contentQueuedForDownload)
    {
      account = [(MFLibraryMessage *)self->_messageForDownload account];
      v8 = [MessageBodyLoader loaderForAccount:account];
      [v8 removeSingleMessageClient:self];

      contentQueuedForDownload = self->_contentQueuedForDownload;
      self->_highPriority = priorityCopy;
      if (contentQueuedForDownload)
      {
        account2 = [(MFLibraryMessage *)self->_messageForDownload account];
        v11 = [MessageBodyLoader loaderForAccount:account2];

        [v11 addSingleMessageClient:self];
        if (self->_highPriority)
        {
          [v11 resume];
        }
      }
    }

    else
    {
      self->_highPriority = priorityCopy;
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

- (void)notifyContentsAvailable:(id)available forMessage:(id)message
{
  messageCopy = message;
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

    [(MFNanoServerMessageContentLoader *)self _parseContentFromMessageAndNotifyDelegate:messageCopy loadedProtected:0];
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
  mf_messageCriterion = [v2 mf_messageCriterion];
  v4 = +[MFMailMessageLibrary defaultInstance];
  v5 = [v4 messagesMatchingCriterion:mf_messageCriterion options:36904];

  firstObject = [v5 firstObject];
  v7 = firstObject;
  if (firstObject)
  {
    summary = [firstObject summary];

    if (summary)
    {
      mailbox = [v7 mailbox];
      store = [mailbox store];
      [v7 setMessageStore:store];
      summary = v7;
    }
  }

  else
  {
    summary = 0;
  }

  return summary;
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
    remoteID = [(MFLibraryMessage *)self->_messageForDownload remoteID];
    globalMessageID = [(MFLibraryMessage *)self->_messageForDownload globalMessageID];
    v11 = 138543874;
    v12 = messageId;
    v13 = 2114;
    v14 = remoteID;
    v15 = 2048;
    v16 = globalMessageID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Nano Attempting to download message with id: %{public}@, remoteId: %{public}@, globalMessageId: %lld", &v11, 0x20u);
  }

  account = [(MFLibraryMessage *)self->_messageForDownload account];
  v10 = [MessageBodyLoader loaderForAccount:account];

  [v10 addSingleMessageClient:self];
  if (self->_highPriority)
  {
    [v10 resume];
  }

  self->_contentQueuedForDownload = 1;
}

- (void)_parseContentFromMessageAndNotifyDelegate:(id)delegate loadedProtected:(BOOL)protected
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
  selfCopy = self;
  delegateCopy = delegate;
  v13 = delegateCopy;
  protectedCopy = protected;
  v6 = [(MFNanoServerMessageContentLoader *)selfCopy _monitoredOperationWithBlock:&v8];
  v7 = v17[5];
  v17[5] = v6;

  [qword_100185A80 addOperation:{v17[5], v8, v9, v10, v11, selfCopy}];
  _Block_object_dispose(&v16, 8);
}

- (void)_startLoadingAttachments:(id)attachments messageBody:(id)body loadedProtected:(BOOL)protected
{
  attachmentsCopy = attachments;
  bodyCopy = body;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = [attachmentsCopy count];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = attachmentsCopy;
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
        v18 = bodyCopy;
        v19 = v12;
        protectedCopy = protected;
        selfCopy = self;
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

- (void)_notifyDelegateThatReceivedMailContent:(id)content forMessage:(id)message loadedProtected:(BOOL)protected
{
  contentCopy = content;
  messageCopy = message;
  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    messageId = [messageCopy messageId];
    accountId = [messageCopy accountId];
    mailboxId = [messageCopy mailboxId];
    *buf = 138543874;
    v21 = messageId;
    v22 = 2114;
    v23 = accountId;
    v24 = 2114;
    v25 = mailboxId;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#Nano Sending message, ID: '%{public}@', account: '%{public}@', mailbox: '%{public}@'.", buf, 0x20u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008ED34;
  v16[3] = &unk_100157170;
  v16[4] = self;
  v17 = contentCopy;
  v18 = messageCopy;
  protectedCopy = protected;
  v11 = messageCopy;
  v12 = contentCopy;
  dispatch_async(&_dispatch_main_q, v16);
}

- (void)_notifyDelegateThatReceivedImageAttachment:(id)attachment forContentId:(id)id loadedProtected:(BOOL)protected
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008EE18;
  v9[3] = &unk_100157170;
  v9[4] = self;
  attachmentCopy = attachment;
  idCopy = id;
  protectedCopy = protected;
  v7 = idCopy;
  v8 = attachmentCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)_notifyDelegateThatReceivedAttachment:(id)attachment forContentId:(id)id loadedProtected:(BOOL)protected
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008EEFC;
  v9[3] = &unk_100157170;
  v9[4] = self;
  attachmentCopy = attachment;
  idCopy = id;
  protectedCopy = protected;
  v7 = idCopy;
  v8 = attachmentCopy;
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

- (id)_nanoAttachmentForURL:(id)l mimePart:(id)part
{
  partCopy = part;
  v7 = [(MFNanoServerMessageContentLoader *)self _attachmentForURL:l mimePart:partCopy];
  isImageFile = [v7 isImageFile];
  v9 = NNMKImageAttachment_ptr;
  if (!isImageFile)
  {
    v9 = NNMKAttachment_ptr;
  }

  v10 = objc_alloc_init(*v9);
  contentID = [v7 contentID];
  [v10 setContentId:contentID];

  fileName = [v7 fileName];
  [v10 setFileName:fileName];

  [v10 setFileSize:{3 * (objc_msgSend(v7, "encodedFileSize") >> 2)}];
  partNumber = [partCopy partNumber];
  [v10 setMimePartNumber:partNumber];

  [v10 setType:{objc_msgSend(v7, "nanoAttachmentType")}];

  return v10;
}

- (id)_attachmentForURL:(id)l mimePart:(id)part
{
  lCopy = l;
  partCopy = part;
  v7 = sub_100027C70();
  defaultAttachmentManager = [v7 defaultAttachmentManager];
  v9 = [defaultAttachmentManager attachmentForURL:lCopy error:0];

  [v9 setPart:partCopy];
  type = [partCopy type];
  subtype = [partCopy subtype];
  v12 = [NSString stringWithFormat:@"%@/%@", type, subtype];
  [v9 setMimeType:v12];

  attachmentFilename = [partCopy attachmentFilename];
  [v9 setFileName:attachmentFilename];

  [v9 setEncodedFileSize:{objc_msgSend(partCopy, "approximateRawSize")}];
  disposition = [partCopy disposition];
  [v9 setDisposition:disposition];

  return v9;
}

- (id)_libraryMessageForMessageId:(id)id
{
  v3 = [NSURL URLWithString:id];
  mf_messageCriterion = [v3 mf_messageCriterion];
  v5 = +[MFMailMessageLibrary defaultInstance];
  v6 = [v5 messagesMatchingCriterion:mf_messageCriterion options:6144];

  firstObject = [v6 firstObject];
  mailbox = [firstObject mailbox];
  store = [mailbox store];
  [firstObject setMessageStore:store];

  return firstObject;
}

- (id)_monitoredOperationWithBlock:(id)block
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
  blockCopy = block;
  v11[4] = self;
  v12 = blockCopy;
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