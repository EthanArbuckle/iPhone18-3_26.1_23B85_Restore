@interface OutgoingMessageRepository_iOS
+ (id)log;
+ (id)signpostLog;
- (OutgoingMessageRepository_iOS)initWithMessagePersistence:(id)a3 messageChangeManager:(id)a4;
- (id)messagesForDocumentID:(id)a3 mailboxID:(id)a4;
- (id)outgoingMessageFromPersistedMessage:(id)a3;
- (id)urlForSendLaterFolder;
- (unint64_t)signpostID;
- (void)cancelLastDelayedMessage:(id)a3;
- (void)cancelObservation:(id)a3;
- (void)deliverMessage:(id)a3 usingMailDrop:(BOOL)a4 isCancelable:(BOOL)a5 completion:(id)a6;
- (void)hasDelayedMessagesDidChange:(BOOL)a3;
- (void)isProcessingWithCompletion:(id)a3;
- (void)numberOfPendingMessagesChanged:(unint64_t)a3;
- (void)numberOfPendingMessagesWithCompletion:(id)a3;
- (void)outboxContainsMessageFromAccountObjectID:(id)a3 completion:(id)a4;
- (void)processAllQueuedMessages;
- (void)resumeDeliveryQueue;
- (void)startObservingPendingMessageChangesWithChangeObserver:(id)a3 observationIdentifier:(id)a4;
- (void)suspendDeliveryQueue;
@end

@implementation OutgoingMessageRepository_iOS

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B14E8;
  block[3] = &unk_1001562E8;
  block[4] = a1;
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
  block[4] = a1;
  if (qword_100185B58 != -1)
  {
    dispatch_once(&qword_100185B58, block);
  }

  v2 = qword_100185B50;

  return v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (OutgoingMessageRepository_iOS)initWithMessagePersistence:(id)a3 messageChangeManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = OutgoingMessageRepository_iOS;
  v8 = [(OutgoingMessageRepository_iOS *)&v18 initWithMessagePersistence:v6 messageChangeManager:v7];
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

- (id)outgoingMessageFromPersistedMessage:(id)a3
{
  v3 = a3;
  v4 = [MFMutableMessageHeaders alloc];
  v5 = [v3 headerData];
  v6 = [v4 initWithHeaderData:v5 encoding:{objc_msgSend(v3, "preferredEncoding")}];

  v7 = +[NSDate now];
  v8 = [v7 ec_descriptionForMimeHeaders];

  [v6 setHeader:v8 forKey:ECMessageHeaderKeyDate];
  v9 = [v3 messageBody];
  v10 = [v9 rawData];

  v11 = [v6 encodedHeaders];
  v12 = [MFDataHolder dataHolderWithData:v11];

  if (v10)
  {
    [v12 addData:v10];
  }

  v13 = [EMOutgoingMessage alloc];
  v14 = [v12 data];
  v15 = [v13 initWithMessageData:v14];

  return v15;
}

- (void)deliverMessage:(id)a3 usingMailDrop:(BOOL)a4 isCancelable:(BOOL)a5 completion:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B1BF0;
  v10[3] = &unk_10015A680;
  v13 = a4;
  v14 = a5;
  v11 = a3;
  v12 = a6;
  v8 = v12;
  v9 = v11;
  [(OutgoingMessageRepository_iOS *)self performBlock:v10];
}

- (void)cancelLastDelayedMessage:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B2370;
  v5[3] = &unk_1001598D0;
  v6 = a3;
  v4 = v6;
  [(OutgoingMessageRepository_iOS *)self performBlock:v5];
}

- (void)isProcessingWithCompletion:(id)a3
{
  v4 = a3;
  v3 = +[MFDeliveryQueue sharedDeliveryQueue];
  v4[2](v4, [v3 isProcessing]);
}

- (id)urlForSendLaterFolder
{
  v2 = +[LocalAccount localAccount];
  v3 = [v2 sendLaterFolder];
  v4 = [v3 URL];

  return v4;
}

- (void)numberOfPendingMessagesWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B25AC;
  v5[3] = &unk_1001598D0;
  v6 = a3;
  v4 = v6;
  [(OutgoingMessageRepository_iOS *)self performBlock:v5];
}

- (void)outboxContainsMessageFromAccountObjectID:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B278C;
  v8[3] = &unk_100157668;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
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

- (id)messagesForDocumentID:(id)a3 mailboxID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 url];
  v8 = [v7 absoluteString];
  v9 = [MailAccount mailboxUidFromActiveAccountsForURL:v8];

  v10 = [v9 account];
  v11 = [v10 storeForMailboxUid:v9];

  v12 = [MFMessageCriterion criterionForDocumentID:v5];
  v13 = [v11 copyMessagesMatchingCriterion:v12 options:0];

  v14 = +[OutgoingMessageRepository_iOS log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    v16 = [v6 ef_publicDescription];
    v18 = 134218498;
    v19 = v15;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found %ld messages for documentID: %{public}@ in mailboxID: %{public}@", &v18, 0x20u);
  }

  return v13;
}

- (void)startObservingPendingMessageChangesWithChangeObserver:(id)a3 observationIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(OutgoingMessageRepository_iOS *)self observationScheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B2EA4;
  v11[3] = &unk_10015A6A8;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v8 performBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)cancelObservation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(OutgoingMessageRepository_iOS *)self observationScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B306C;
  v7[3] = &unk_10015A3D0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)numberOfPendingMessagesChanged:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(OutgoingMessageRepository_iOS *)self observationScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B31D4;
  v6[3] = &unk_1001566B8;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  [v5 performBlock:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)hasDelayedMessagesDidChange:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = [(OutgoingMessageRepository_iOS *)self observationScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B3464;
  v6[3] = &unk_10015A6D0;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  [v5 performBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end