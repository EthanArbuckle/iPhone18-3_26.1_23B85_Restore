@interface MFDADelivery
+ (OS_os_log)log;
- (id)deliverSynchronously;
- (id)newMessageWriter;
- (void)_updateBasedOnOriginalMessage:(id)message;
@end

@implementation MFDADelivery

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__MFDADelivery_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __19__MFDADelivery_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

- (id)newMessageWriter
{
  v4.receiver = self;
  v4.super_class = MFDADelivery;
  newMessageWriter = [(MFMailDelivery *)&v4 newMessageWriter];
  [newMessageWriter setAllowsQuotedPrintable:0];
  return newMessageWriter;
}

- (id)deliverSynchronously
{
  v53 = *MEMORY[0x1E69E9840];
  v39 = objc_alloc_init(MFDADeliveryConsumer);
  v36 = +[MFActivityMonitor currentMonitor];
  v3 = MFUserAgent();
  [v3 networkActivityStarted:self];

  message = [(MFMailDelivery *)self message];
  messageIDHeaderInFortyBytesOrLess = [message messageIDHeaderInFortyBytesOrLess];

  originalMessage = [(MFMailDelivery *)self originalMessage];

  if (originalMessage)
  {
    originalMessage2 = [(MFMailDelivery *)self originalMessage];
    [(MFDADelivery *)self _updateBasedOnOriginalMessage:originalMessage2];
  }

  if ([(MFMailDelivery *)self action])
  {
    if ([(MFMailDelivery *)self action]== 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  if ([(MFMailDelivery *)self shouldSign])
  {
    v8 = 0;
  }

  else
  {
    v8 = ![(MFMailDelivery *)self shouldEncrypt];
  }

  Current = CFAbsoluteTimeGetCurrent();
  message2 = [(MFMailDelivery *)self message];
  messageDataHolder = [message2 messageDataHolder];

  v11 = +[MFDADelivery log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    folderID = self->_folderID;
    originalMessageID = self->_originalMessageID;
    originalLongID = self->_originalLongID;
    *buf = 67241218;
    v44 = v7;
    v45 = 2114;
    v46 = folderID;
    v47 = 2114;
    v48 = originalMessageID;
    v49 = 2114;
    v50 = originalLongID;
    v51 = 1026;
    v52 = v8;
    _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Sending message with type: %{public}u, folderID: %{public}@, originalMessageID: %{public}@, originalLongID: %{public}@, useSmartTask: %{public}d", buf, 0x2Cu);
  }

  accountConduit = [self->_DAMailAccount accountConduit];
  data = [messageDataHolder data];
  v17 = self->_folderID;
  v18 = self->_originalMessageID;
  v19 = self->_originalLongID;
  accountID = self->_accountID;
  BYTE1(v35) = [(MFMailDelivery *)self isUserRequested];
  LOBYTE(v35) = v8;
  [accountConduit sendMessageWithRFC822Data:data messageID:messageIDHeaderInFortyBytesOrLess outgoingMessageType:v7 originalMessageFolderID:v17 originalMessageItemID:v18 originalMessageLongID:v19 originalAccountID:accountID useSmartTasksIfPossible:v35 isUserRequested:v39 consumer:0 context:?];

  [(MFDAMailAccountConsumer *)v39 waitUntilDone];
  v21 = CFAbsoluteTimeGetCurrent();
  error = [(MFDADeliveryConsumer *)v39 error];
  [v36 setError:error];

  v23 = MFUserAgent();
  [v23 networkActivityEnded:self];

  v24 = [[MFDeliveryResult alloc] initWithStatus:[(MFDADeliveryConsumer *)v39 status]];
  v25 = self->super._result;
  self->super._result = v24;

  [(MFDeliveryResult *)self->super._result setDuration:v21 - Current];
  [(MFDeliveryResult *)self->super._result setBytesSent:[(MFDADeliveryConsumer *)v39 bytesWritten]];
  if (!v7 && [self->_DAMailAccount supportsThreadOperations]&& [(MFMailDelivery *)self conversationFlags])
  {
    v26 = [self->_DAMailAccount mailboxUidOfType:4 createIfNeeded:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    DAMailAccount = self->_DAMailAccount;
    v40 = v26;
    v41 = @"MailAccountContentsDidChangeUids";
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    v42 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    [defaultCenter postNotificationName:@"MailAccountContentsDidChange" object:DAMailAccount userInfo:v30];
  }

  v31 = self->super._result;
  v32 = v31;

  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)_updateBasedOnOriginalMessage:(id)message
{
  messageCopy = message;
  messageStore = [messageCopy messageStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = messageCopy;
    dAMailMessage = [v5 DAMailMessage];
    longID = [dAMailMessage longID];
    originalLongID = self->_originalLongID;
    self->_originalLongID = longID;

    dAMailMessage2 = [v5 DAMailMessage];
    remoteID = [dAMailMessage2 remoteID];
    originalMessageID = self->_originalMessageID;
    self->_originalMessageID = remoteID;

    dAMailMessage3 = [v5 DAMailMessage];
    folderID = [dAMailMessage3 folderID];
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = messageCopy;
  if (isKindOfClass)
  {
    v17 = messageCopy;
    if ([v17 isSearchResultWithBogusRemoteId])
    {
      remoteID2 = [v17 remoteID];
      dAMailMessage3 = self->_originalLongID;
      self->_originalLongID = remoteID2;
      goto LABEL_4;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    dAMailMessage3 = messageStore;
    remoteID3 = [v17 remoteID];
    v23 = self->_originalMessageID;
    self->_originalMessageID = remoteID3;

    folderID = [dAMailMessage3 folderIDForFetching];
LABEL_3:
    folderID = self->_folderID;
    self->_folderID = folderID;

LABEL_4:
LABEL_5:

    v15 = messageCopy;
  }

  account = [v15 account];
  uniqueID = [account uniqueID];
  accountID = self->_accountID;
  self->_accountID = uniqueID;
}

@end