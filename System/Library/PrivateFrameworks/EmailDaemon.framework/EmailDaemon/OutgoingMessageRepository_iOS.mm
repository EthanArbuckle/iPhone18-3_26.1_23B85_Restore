@interface OutgoingMessageRepository_iOS
+ (id)log;
+ (id)signpostLog;
- (OutgoingMessageRepository_iOS)initWithMessagePersistence:(id)persistence messageChangeManager:(id)manager;
- (id)messagesForDocumentID:(id)d mailboxID:(id)iD;
- (id)outgoingMessageFromPersistedMessage:(id)message;
- (id)urlForSendLaterFolder;
- (unint64_t)signpostID;
- (void)cancelLastDelayedMessage:(id)message;
- (void)cancelObservation:(id)observation;
- (void)deliverMessage:(id)message usingMailDrop:(BOOL)drop isCancelable:(BOOL)cancelable completion:(id)completion;
- (void)hasDelayedMessagesDidChange:(BOOL)change;
- (void)isProcessingWithCompletion:(id)completion;
- (void)numberOfPendingMessagesChanged:(unint64_t)changed;
- (void)numberOfPendingMessagesWithCompletion:(id)completion;
- (void)outboxContainsMessageFromAccountObjectID:(id)d completion:(id)completion;
- (void)processAllQueuedMessages;
- (void)resumeDeliveryQueue;
- (void)startObservingPendingMessageChangesWithChangeObserver:(id)observer observationIdentifier:(id)identifier;
- (void)suspendDeliveryQueue;
@end

@implementation OutgoingMessageRepository_iOS

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B14E8;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185B48 != -1)
  {
    dispatch_once(&qword_100185B48, block);
  }

  v2 = qword_100185B40;

  return v2;
}

+ (id)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B160C;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185B58 != -1)
  {
    dispatch_once(&qword_100185B58, block);
  }

  v2 = qword_100185B50;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (OutgoingMessageRepository_iOS)initWithMessagePersistence:(id)persistence messageChangeManager:(id)manager
{
  persistenceCopy = persistence;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = OutgoingMessageRepository_iOS;
  v8 = [(OutgoingMessageRepository_iOS *)&v18 initWithMessagePersistence:persistenceCopy messageChangeManager:managerCopy];
  if (v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    observers = v8->_observers;
    v8->_observers = v9;

    v11 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.MobileMail.OutgoingMessageRepository_iOS.observationScheduler"];
    observationScheduler = v8->_observationScheduler;
    v8->_observationScheduler = v11;

    objc_initWeak(&location, v8);
    v13 = v8->_observationScheduler;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B186C;
    v15[3] = &unk_1001567F0;
    objc_copyWeak(&v16, &location);
    [(EFScheduler *)v13 performBlock:v15];
    v8->_hasDelayedMessages = 0;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (id)outgoingMessageFromPersistedMessage:(id)message
{
  messageCopy = message;
  v4 = [MFMutableMessageHeaders alloc];
  headerData = [messageCopy headerData];
  v6 = [v4 initWithHeaderData:headerData encoding:{objc_msgSend(messageCopy, "preferredEncoding")}];

  v7 = +[NSDate now];
  ec_descriptionForMimeHeaders = [v7 ec_descriptionForMimeHeaders];

  [v6 setHeader:ec_descriptionForMimeHeaders forKey:ECMessageHeaderKeyDate];
  messageBody = [messageCopy messageBody];
  rawData = [messageBody rawData];

  encodedHeaders = [v6 encodedHeaders];
  v12 = [MFDataHolder dataHolderWithData:encodedHeaders];

  if (rawData)
  {
    [v12 addData:rawData];
  }

  v13 = [EMOutgoingMessage alloc];
  data = [v12 data];
  v15 = [v13 initWithMessageData:data];

  return v15;
}

- (void)deliverMessage:(id)message usingMailDrop:(BOOL)drop isCancelable:(BOOL)cancelable completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B1BF0;
  v10[3] = &unk_10015A680;
  dropCopy = drop;
  cancelableCopy = cancelable;
  messageCopy = message;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = messageCopy;
  [(OutgoingMessageRepository_iOS *)self performBlock:v10];
}

- (void)cancelLastDelayedMessage:(id)message
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B2370;
  v5[3] = &unk_1001598D0;
  messageCopy = message;
  v4 = messageCopy;
  [(OutgoingMessageRepository_iOS *)self performBlock:v5];
}

- (void)isProcessingWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[MFDeliveryQueue sharedDeliveryQueue];
  completionCopy[2](completionCopy, [v3 isProcessing]);
}

- (id)urlForSendLaterFolder
{
  v2 = +[LocalAccount localAccount];
  sendLaterFolder = [v2 sendLaterFolder];
  v4 = [sendLaterFolder URL];

  return v4;
}

- (void)numberOfPendingMessagesWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B25AC;
  v5[3] = &unk_1001598D0;
  completionCopy = completion;
  v4 = completionCopy;
  [(OutgoingMessageRepository_iOS *)self performBlock:v5];
}

- (void)outboxContainsMessageFromAccountObjectID:(id)d completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B278C;
  v8[3] = &unk_100157668;
  dCopy = d;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = dCopy;
  [(OutgoingMessageRepository_iOS *)self performBlock:v8];
}

- (void)processAllQueuedMessages
{
  v2 = +[OutgoingMessageRepository_iOS log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start processing queued messages for delivery.", v4, 2u);
  }

  v3 = +[MFDeliveryQueue sharedDeliveryQueue];
  [v3 processQueueAndPlaySoundOnSuccess:0 forceAll:1 isUserRequested:1];
}

- (void)resumeDeliveryQueue
{
  v2 = +[OutgoingMessageRepository_iOS log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resume processing queued messages for delivery.", v4, 2u);
  }

  v3 = +[MFDeliveryQueue sharedDeliveryQueue];
  [v3 resume];
}

- (void)suspendDeliveryQueue
{
  v2 = +[OutgoingMessageRepository_iOS log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Suspend processing queued messages for delivery", v4, 2u);
  }

  v3 = +[MFDeliveryQueue sharedDeliveryQueue];
  [v3 suspend];
}

- (id)messagesForDocumentID:(id)d mailboxID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = [iDCopy url];
  absoluteString = [v7 absoluteString];
  v9 = [MailAccount mailboxUidFromActiveAccountsForURL:absoluteString];

  account = [v9 account];
  v11 = [account storeForMailboxUid:v9];

  v12 = [MFMessageCriterion criterionForDocumentID:dCopy];
  v13 = [v11 copyMessagesMatchingCriterion:v12 options:0];

  v14 = +[OutgoingMessageRepository_iOS log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    ef_publicDescription = [iDCopy ef_publicDescription];
    v18 = 134218498;
    v19 = v15;
    v20 = 2114;
    v21 = dCopy;
    v22 = 2114;
    v23 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found %ld messages for documentID: %{public}@ in mailboxID: %{public}@", &v18, 0x20u);
  }

  return v13;
}

- (void)startObservingPendingMessageChangesWithChangeObserver:(id)observer observationIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  observationScheduler = [(OutgoingMessageRepository_iOS *)self observationScheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B2EA4;
  v11[3] = &unk_10015A6A8;
  objc_copyWeak(&v14, &location);
  v9 = identifierCopy;
  v12 = v9;
  v10 = observerCopy;
  v13 = v10;
  [observationScheduler performBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)cancelObservation:(id)observation
{
  observationCopy = observation;
  objc_initWeak(&location, self);
  observationScheduler = [(OutgoingMessageRepository_iOS *)self observationScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B306C;
  v7[3] = &unk_10015A3D0;
  objc_copyWeak(&v9, &location);
  v6 = observationCopy;
  v8 = v6;
  [observationScheduler performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)numberOfPendingMessagesChanged:(unint64_t)changed
{
  objc_initWeak(&location, self);
  observationScheduler = [(OutgoingMessageRepository_iOS *)self observationScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B31D4;
  v6[3] = &unk_1001566B8;
  objc_copyWeak(v7, &location);
  v7[1] = changed;
  [observationScheduler performBlock:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)hasDelayedMessagesDidChange:(BOOL)change
{
  objc_initWeak(&location, self);
  observationScheduler = [(OutgoingMessageRepository_iOS *)self observationScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B3464;
  v6[3] = &unk_10015A6D0;
  objc_copyWeak(&v7, &location);
  changeCopy = change;
  [observationScheduler performBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end