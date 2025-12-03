@interface MFMailboxMessageBodyProcessor
- (BOOL)_shouldContinueProcessing;
- (BOOL)_shouldTryToDownloadMessage:(id)message;
- (MFMailboxMessageBodyProcessor)initWithMailbox:(id)mailbox batchSize:(unint64_t)size deviceStorage:(id)storage;
- (MFMailboxMessageBodyProcessorDelegate)delegate;
- (int64_t)_freeSpaceGuidanceForSpaceIncreaseForMessage:(id)message;
- (int64_t)_spaceIncreaseUrgencyForMessage:(id)message;
- (void)_enumerateMessagesToDownload:(id)download;
- (void)runSynchronously;
@end

@implementation MFMailboxMessageBodyProcessor

- (MFMailboxMessageBodyProcessor)initWithMailbox:(id)mailbox batchSize:(unint64_t)size deviceStorage:(id)storage
{
  mailboxCopy = mailbox;
  storageCopy = storage;
  v12 = storageCopy;
  if (mailboxCopy)
  {
    if (storageCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MFMailboxMessageBodyProcessor.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"mailbox"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v20 = +[NSAssertionHandler currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"MFMailboxMessageBodyProcessor.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"deviceStorage"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = MFMailboxMessageBodyProcessor;
  v13 = [(MFMailboxMessageBodyProcessor *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_mailbox, mailbox);
    v14->_batchSize = size;
    objc_storeStrong(&v14->_deviceStorage, storage);
    representedAccount = [mailboxCopy representedAccount];
    v16 = [MessageBodyLoader loaderForAccount:representedAccount];
    messageBodyLoader = v14->_messageBodyLoader;
    v14->_messageBodyLoader = v16;
  }

  return v14;
}

- (void)runSynchronously
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mailbox = [(MFMailboxMessageBodyProcessor *)self mailbox];
    *buf = 138412546;
    v9 = mailbox;
    v10 = 2048;
    batchSize = [(MFMailboxMessageBodyProcessor *)self batchSize];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#MessageBodyProcessor Starting body download for mailbox %@ (batch size: %lu)", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F210;
  v7[3] = &unk_100158CA0;
  v7[4] = self;
  [(MFMailboxMessageBodyProcessor *)self _enumerateMessagesToDownload:v7];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mailbox2 = [(MFMailboxMessageBodyProcessor *)self mailbox];
    *buf = 138412290;
    v9 = mailbox2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#MessageBodyProcessor Finished body download for mailbox %@", buf, 0xCu);
  }
}

- (void)_enumerateMessagesToDownload:(id)download
{
  downloadCopy = download;
  if (!downloadCopy)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MFMailboxMessageBodyProcessor.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  mailbox = [(MFMailboxMessageBodyProcessor *)self mailbox];
  v7 = [MFMessageCriterion criterionForMailbox:mailbox];

  v8 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v23[0] = v7;
  v23[1] = v8;
  v9 = [NSArray arrayWithObjects:v23 count:2];
  v10 = [MFMessageCriterion andCompoundCriterionWithCriteria:v9];

  v11 = [_MFBatchedMessageConsumer alloc];
  batchSize = [(MFMailboxMessageBodyProcessor *)self batchSize];
  mailbox2 = [(MFMailboxMessageBodyProcessor *)self mailbox];
  store = [mailbox2 store];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006F764;
  v22[3] = &unk_100158CC8;
  v22[4] = self;
  v15 = [(_MFBatchedMessageConsumer *)v11 initWithBatchSize:batchSize messageStore:store filter:v22];

  library = [(MFMailboxMessageBodyProcessor *)self library];
  [library sendMessagesMatchingCriterion:v10 to:v15 options:128];

  messages = [(_MFBatchedMessageConsumer *)v15 messages];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10006F86C;
  v20[3] = &unk_100158CF0;
  v20[4] = self;
  v18 = downloadCopy;
  v21 = v18;
  [messages enumerateObjectsUsingBlock:v20];
}

- (BOOL)_shouldContinueProcessing
{
  delegate = [(MFMailboxMessageBodyProcessor *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate mailboxMessageBodyProcessorShouldContinueProcessing:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_shouldTryToDownloadMessage:(id)message
{
  messageCopy = message;
  messageBodyLoader = [(MFMailboxMessageBodyProcessor *)self messageBodyLoader];
  v6 = [messageBodyLoader isProcessingMessage:messageCopy];

  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [messageCopy isMessageContentsLocallyAvailable] ^ 1;
  }

  return v7;
}

- (int64_t)_freeSpaceGuidanceForSpaceIncreaseForMessage:(id)message
{
  messageCopy = message;
  messageSize = [messageCopy messageSize];
  v6 = [(MFMailboxMessageBodyProcessor *)self _spaceIncreaseUrgencyForMessage:messageCopy];
  deviceStorage = [(MFMailboxMessageBodyProcessor *)self deviceStorage];
  v8 = [deviceStorage freeSpaceGuidanceForSpaceIncrease:messageSize urgency:v6];

  return v8;
}

- (int64_t)_spaceIncreaseUrgencyForMessage:(id)message
{
  messageCopy = message;
  v4 = +[NSCalendar currentCalendar];
  dateReceived = [messageCopy dateReceived];
  v6 = +[NSDate date];
  v7 = [v4 components:16 fromDate:dateReceived toDate:v6 options:0];

  v8 = [v7 day];
  v9 = 1;
  if (v8 < 14)
  {
    v9 = 2;
  }

  if (v8 >= 7)
  {
    v10 = v9;
  }

  else
  {
    v10 = 3;
  }

  return v10;
}

- (MFMailboxMessageBodyProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end