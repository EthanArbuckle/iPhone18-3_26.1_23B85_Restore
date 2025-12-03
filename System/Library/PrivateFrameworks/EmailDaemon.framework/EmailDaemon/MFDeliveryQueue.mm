@interface MFDeliveryQueue
+ (id)log;
+ (id)newDeliveryObjectFactoryForMessage:(id)message;
+ (id)sharedDeliveryQueue;
+ (id)signpostLog;
- (BOOL)_shouldSend:(id)send options:(id)options;
- (BOOL)cancelLastDelayedMessage;
- (EDMessageDeliveryHookResponder)deliveryHookResponder;
- (EDMessagePersistence)messagePersistence;
- (MFDeliveryQueue)init;
- (id)_append:(id)_append flags:(id)flags;
- (id)_deliverSynchronously:(id)synchronously outboxCopy:(id)copy;
- (id)_deliveryResultIfNotHasAdequateFreeSpace;
- (id)_messagesInProgress;
- (id)_outboxCopyFromMessageDelivery:(id)delivery;
- (id)_outboxStore;
- (id)_sortedMessages;
- (id)append:(id)append;
- (id)copyDiagnosticInformation;
- (id)deliverSynchronously:(id)synchronously;
- (id)lastErrorForMessage:(id)message;
- (unint64_t)signpostID;
- (void)_flagsChanged:(id)changed;
- (void)_freeSpaceStatusDidChange:(id)change;
- (void)_logDeliveryResult:(id)result forMessage:(id)message account:(id)account;
- (void)_mailAccountsChanged:(id)changed;
- (void)_messagesAdded:(id)added;
- (void)_messagesCompacted:(id)compacted;
- (void)_processQueueWithOptions:(id)options;
- (void)_queueProcessingDidFinish:(id)finish;
- (void)_reachabilityChanged:(id)changed;
- (void)_sendProcessingStartedNotification:(id)notification;
- (void)_setErrorForMessage:(id)message error:(id)error;
- (void)_setErrorForMessageLibraryID:(id)d error:(id)error;
- (void)_updateCounts;
- (void)_updateDeliveryInfoFromResult:(id)result forMessage:(id)message;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)deliverAsynchronously:(id)asynchronously completion:(id)completion;
- (void)notifyObserversOfDelayedMessagesDidChange:(BOOL)change;
- (void)notifyObserversOfUpdatedPendingMessageCount:(unint64_t)count;
- (void)processQueueAndPlaySoundOnSuccess:(BOOL)success forceAll:(BOOL)all isUserRequested:(BOOL)requested;
- (void)removeObserver:(id)observer;
- (void)resume;
- (void)setPercentDone:(double)done;
- (void)suspend;
- (void)test_waitForObservers;
@end

@implementation MFDeliveryQueue

+ (id)sharedDeliveryQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057F74;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185808 != -1)
  {
    dispatch_once(&qword_100185808, block);
  }

  v2 = qword_100185810;

  return v2;
}

- (void)_updateCounts
{
  if (self->_hasAdequateFreeSpace)
  {
    oslog = [(MFDeliveryQueue *)self _outboxStore];
    [(MFDeliveryQueue *)self mf_lock];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [oslog copyOfAllMessagesWithOptions:2048];
    v2 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v2)
    {
      v3 = 0;
      v20 = 0;
      v21 = 0;
      v4 = *v25;
      do
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v25 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v24 + 1) + 8 * i);
          if (([v6 messageFlags] & 0x4000000000) != 0)
          {
            v23 = 0;
            v7 = [MailAccount accountThatMessageIsFrom:v6 includingInactive:1 error:&v23];
            v8 = v23;
            if (v8 | v7)
            {
              v20 += [v7 isActive];
              ++v21;
            }

            else
            {
              v9 = +[MFDeliveryQueue log];
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v29 = v6;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "purging orphaned message: %@", buf, 0xCu);
              }

              if (!v3)
              {
                v3 = objc_alloc_init(NSMutableArray);
              }

              [v3 addObject:v6];
            }
          }
        }

        v2 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v2);

      if (v3)
      {
        v10 = +[MFDeliveryQueue log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v3 count];
          *buf = 134217984;
          v29 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Delete messagesToPurge: %lu before continuing", buf, 0xCu);
        }

        [oslog deleteMessages:v3 moveToTrash:0];
        selfCopy3 = self;
        v13 = v20;
      }

      else
      {
        selfCopy3 = self;
        v13 = v20;
      }
    }

    else
    {

      v13 = 0;
      v21 = 0;
      v3 = 0;
      selfCopy3 = self;
    }

    if (v13 != selfCopy3->_messagesFromActiveAccounts)
    {
      selfCopy3->_messagesFromActiveAccounts = v13;
      [(MFDeliveryQueue *)selfCopy3 notifyObserversOfUpdatedPendingMessageCount:?];
    }

    [(MFDeliveryQueue *)selfCopy3 mf_unlock];
    v16 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      messagesFromActiveAccounts = self->_messagesFromActiveAccounts;
      *buf = 134218240;
      v29 = v21;
      v30 = 2048;
      v31 = messagesFromActiveAccounts;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%lu message(s) total, %lu from active accounts", buf, 0x16u);
    }
  }

  else
  {
    oslog = +[MFDeliveryQueue log];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      hasAdequateFreeSpace = self->_hasAdequateFreeSpace;
      *buf = 134217984;
      v29 = hasAdequateFreeSpace;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Not updating counts - hasAdequateDiskSpace:%lu", buf, 0xCu);
    }
  }
}

- (id)_outboxStore
{
  os_unfair_lock_lock(&unk_100185820);
  if (!qword_100185818)
  {
    goto LABEL_9;
  }

  mailbox = [qword_100185818 mailbox];
  v4 = mailbox;
  if (!mailbox || ([mailbox isValid] & 1) == 0)
  {
    v5 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "detected stale store", v13, 2u);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:0 object:qword_100185818];

    v7 = qword_100185818;
    qword_100185818 = 0;
  }

  if (qword_100185818)
  {
    os_unfair_lock_unlock(&unk_100185820);
  }

  else
  {
LABEL_9:
    v8 = [MailAccount outboxMessageStore:1];
    v9 = qword_100185818;
    qword_100185818 = v8;

    [qword_100185818 openSynchronously];
    os_unfair_lock_unlock(&unk_100185820);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_flagsChanged:" name:MailMessageStoreMessageFlagsChanged object:qword_100185818];
    [v10 addObserver:self selector:"_messagesAdded:" name:MailMessageStoreMessagesAdded object:qword_100185818];
  }

  v11 = qword_100185818;

  return v11;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057598;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_1001857F0 != -1)
  {
    dispatch_once(&qword_1001857F0, block);
  }

  v2 = qword_1001857E8;

  return v2;
}

+ (id)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000576BC;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185800 != -1)
  {
    dispatch_once(&qword_100185800, block);
  }

  v2 = qword_1001857F8;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (MFDeliveryQueue)init
{
  v39.receiver = self;
  v39.super_class = MFDeliveryQueue;
  v3 = [(MFDeliveryQueue *)&v39 init];
  if (v3)
  {
    if ((+[MFMailMessageLibrary canUsePersistence]& 1) == 0)
    {
      v36 = +[NSAssertionHandler currentHandler];
      [v36 handleFailureInMethod:a2 object:v3 file:@"MFDeliveryQueue.m" lineNumber:149 description:{@"App is in daemon mode, but accessing database"}];
    }

    v3->_state = 2;
    [(MFDeliveryQueue *)v3 setHasAdequateFreeSpace:0];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.mobilemail.delivery", v4);
    stateQueue = v3->_stateQueue;
    v3->_stateQueue = v5;

    v7 = objc_alloc_init(MFInvocationQueue);
    jobQueue = v3->_jobQueue;
    v3->_jobQueue = v7;

    v9 = +[NSHashTable weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v9;

    v11 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.email.MFDeliveryQueue.ObservationScheduler" qualityOfService:17];
    observationScheduler = v3->_observationScheduler;
    v3->_observationScheduler = v11;

    v13 = objc_alloc_init(NSMutableArray);
    delayedMessages = v3->_delayedMessages;
    v3->_delayedMessages = v13;

    v3->_delayedMessagesLock._os_unfair_lock_opaque = 0;
    v15 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.email.MFDeliveryQueue.delayedMessagesScheduler" qualityOfService:17];
    delayedMessageScheduler = v3->_delayedMessageScheduler;
    v3->_delayedMessageScheduler = v15;

    _outboxStore = [(MFDeliveryQueue *)v3 _outboxStore];
    _messagesInProgress = [(MFDeliveryQueue *)v3 _messagesInProgress];
    if ([_messagesInProgress count])
    {
      v19 = +[MFDeliveryQueue log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [_messagesInProgress count];
        *buf = 67109120;
        v43 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Resetting delivery state for %d messages", buf, 8u);
      }

      v40[0] = MessageIsBeingDelivered;
      v40[1] = MessageQueuedForDelivery;
      v41[0] = &__kCFBooleanFalse;
      v41[1] = &__kCFBooleanTrue;
      v21 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
      v22 = [_outboxStore setFlagsFromDictionary:v21 forMessages:_messagesInProgress];
    }

    v23 = +[CPNetworkObserver sharedNetworkObserver];
    if ([v23 isNetworkReachable])
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    *(v3 + 56) = *(v3 + 56) & 0xFB | v24;

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v3 selector:"_mailAccountsChanged:" name:ECMailAccountsDidChangeNotification object:0];
    [v25 addObserver:v3 selector:"_queueProcessingDidFinish:" name:@"MFDeliveryQueueProcessingFinishedNotification" object:0];
    [v25 addObserver:v3 selector:"_messagesCompacted:" name:MailMessageStoreMessagesCompacted object:0];
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v3, sub_100057D94, kCFLocaleCurrentLocaleDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v27 = +[CPNetworkObserver sharedNetworkObserver];
    [v27 addNetworkReachableObserver:v3 selector:"_reachabilityChanged:"];

    v28 = +[MFDiagnostics sharedController];
    [v28 addDiagnosticsGenerator:v3];

    v29 = +[UMUserManager sharedManager];
    currentUser = [v29 currentUser];
    v31 = [currentUser uid];
    LOBYTE(v31) = v31 == getuid();

    if (v31)
    {
      freeSpaceMonitor = [(MFDeliveryQueue *)v3 freeSpaceMonitor];
      [v25 addObserver:v3 selector:"_freeSpaceStatusDidChange:" name:@"MFDiskFreeSpaceMonitorDidChangeNotification" object:freeSpaceMonitor];

      v33 = +[MFDeliveryQueue log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Checking free space status", buf, 2u);
      }

      freeSpaceMonitor2 = [(MFDeliveryQueue *)v3 freeSpaceMonitor];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100057E28;
      v37[3] = &unk_100158308;
      v38 = v3;
      [freeSpaceMonitor2 getFreeSpaceStatusWithCompletionHandler:v37];
    }

    else
    {
      v3->_state = 0;
      [(MFDeliveryQueue *)v3 setHasAdequateFreeSpace:2];
      [(MFDeliveryQueue *)v3 _updateCounts];
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[CPNetworkObserver sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];

  v4.receiver = self;
  v4.super_class = MFDeliveryQueue;
  [(MFDeliveryQueue *)&v4 dealloc];
}

- (EDMessagePersistence)messagePersistence
{
  v2 = +[MFMailMessageLibrary defaultInstance];
  persistence = [v2 persistence];
  messagePersistence = [persistence messagePersistence];

  return messagePersistence;
}

- (void)processQueueAndPlaySoundOnSuccess:(BOOL)success forceAll:(BOOL)all isUserRequested:(BOOL)requested
{
  stateQueue = self->_stateQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100058134;
  v6[3] = &unk_100158330;
  v6[4] = self;
  successCopy = success;
  allCopy = all;
  requestedCopy = requested;
  dispatch_async(stateQueue, v6);
}

- (void)suspend
{
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058384;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)resume
{
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058544;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)_freeSpaceStatusDidChange:(id)change
{
  freeSpaceMonitor = [(MFDeliveryQueue *)self freeSpaceMonitor];
  isFreeSpaceCritical = [freeSpaceMonitor isFreeSpaceCritical];

  v6 = +[MFDeliveryQueue log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isFreeSpaceCritical)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "low disk mode turned ON, stopping delivery", buf, 2u);
    }

    [(MFDeliveryQueue *)self setHasAdequateFreeSpace:1];
    [(MFDeliveryQueue *)self suspend];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "low disk mode turned OFF, resuming delivery", v8, 2u);
    }

    [(MFDeliveryQueue *)self setHasAdequateFreeSpace:2];
    [(MFDeliveryQueue *)self resume];
  }
}

- (id)append:(id)append
{
  appendCopy = append;
  v8 = MessageQueuedForDelivery;
  v9 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [(MFDeliveryQueue *)self _append:appendCopy flags:v5];

  return v6;
}

- (id)deliverSynchronously:(id)synchronously
{
  synchronouslyCopy = synchronously;
  _deliveryResultIfNotHasAdequateFreeSpace = [(MFDeliveryQueue *)self _deliveryResultIfNotHasAdequateFreeSpace];
  v6 = _deliveryResultIfNotHasAdequateFreeSpace;
  if (_deliveryResultIfNotHasAdequateFreeSpace)
  {
    v7 = _deliveryResultIfNotHasAdequateFreeSpace;
  }

  else
  {
    v8 = [(MFDeliveryQueue *)self _outboxCopyFromMessageDelivery:synchronouslyCopy];
    v7 = [(MFDeliveryQueue *)self _deliverSynchronously:synchronouslyCopy outboxCopy:v8];
  }

  return v7;
}

- (id)_deliveryResultIfNotHasAdequateFreeSpace
{
  if ([(MFDeliveryQueue *)self hasAdequateFreeSpace]== 1)
  {
    v3 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Aborting synchronus delivery to inadequate free space", v7, 2u);
    }

    v4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:28 userInfo:0];
    v5 = [[EMMessageDeliveryResult alloc] initWithStatus:2 error:v4];
  }

  else
  {
    if (![(MFDeliveryQueue *)self hasAdequateFreeSpace])
    {
      [(MFDeliveryQueue *)self suspend];
    }

    v5 = 0;
  }

  return v5;
}

- (id)_outboxCopyFromMessageDelivery:(id)delivery
{
  message = [delivery message];
  v8 = MessageIsBeingDelivered;
  v9 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [(MFDeliveryQueue *)self _append:message flags:v5];

  return v6;
}

- (id)_deliverSynchronously:(id)synchronously outboxCopy:(id)copy
{
  synchronouslyCopy = synchronously;
  copyCopy = copy;
  ++self->_numberOfCurrentSynchronousDeliveries;
  _outboxStore = [(MFDeliveryQueue *)self _outboxStore];
  message = [synchronouslyCopy message];
  v62 = message;
  v61 = [MailAccount accountThatMessageIsFrom:message includingInactive:1];
  v8 = +[MFDeliveryQueue signpostLog];
  signpostID = [(MFDeliveryQueue *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v71 = message;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EMAIL DELIVERY", "Begin Delivery Message : %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = synchronouslyCopy;
  }

  else
  {
    v10 = [MFMailDropMailDeliveryUI newWithMessage:copyCopy];

    [v10 setDelegate:self];
    [v10 setIsUserRequested:1];
    [v10 setArchiveAccount:v61];
  }

  v77[0] = @"MFDeliveryQueueMonitorKey";
  v11 = +[MFActivityMonitor currentMonitor];
  v77[1] = @"MFDeliveryQueueMailboxKey";
  v78[0] = v11;
  mailbox = [_outboxStore mailbox];
  v78[1] = mailbox;
  v60 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"MFDeliveryQueueDeliverSynchronouslyStartNotification" object:v60];

  [v10 setIsUserRequested:1];
  if (!copyCopy)
  {
    v14 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to append message to outbox, continuing with delivery", buf, 2u);
    }
  }

  if ((*(self + 56) & 4) == 0)
  {
    v15 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Network may not be reachable, but attempting delivery anyway", buf, 2u);
    }
  }

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1000597F8;
  v65[3] = &unk_100158358;
  v16 = copyCopy;
  v66 = v16;
  v58 = _outboxStore;
  v67 = v58;
  v64 = [v10 deliverSynchronouslyWithCompletion:v65];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v10;
    if ([v64 status] == 8)
    {
      [v17 setMailDropState:{objc_msgSend(v64, "attributes")}];
    }

    mailDropState = [v17 mailDropState];
    messagePersistence = [(MFDeliveryQueue *)self messagePersistence];
    [messagePersistence setMailDropDeliveryState:mailDropState forMessage:v16];
  }

  [(MFDeliveryQueue *)self _logDeliveryResult:v64 forMessage:v62 account:v61];
  status = [v64 status];
  if (copyCopy)
  {
    [(MFDeliveryQueue *)self _setDeliveryFlag:v16 state:0];
  }

  if ([v61 supportsThreadOperations] && objc_msgSend(v10, "conversationFlags"))
  {
    originalConversationId = [v10 originalConversationId];
    if (!originalConversationId)
    {
      message2 = [v10 message];
      originalConversationId = [message2 messageIDHash];
    }

    v23 = +[MFMailMessageLibrary defaultInstance];
    persistence = [v23 persistence];
    conversationPersistence = [persistence conversationPersistence];
    conversationFlags = [v10 conversationFlags];
    v27 = [NSNumber numberWithLongLong:originalConversationId];
    v76 = v27;
    v28 = [NSArray arrayWithObjects:&v76 count:1];
    [conversationPersistence setPersistenceConversationFlags:conversationFlags forConversationIDs:v28 reason:4];
  }

  v29 = +[NSNotificationCenter defaultCenter];
  [v29 postNotificationName:@"MFDeliveryQueueDeliverSynchronouslyFinishNotification" object:v60];

  if (status == 9)
  {
    retryCount = [v10 retryCount];
    if (retryCount <= 0)
    {
      status = 9;
    }

    else
    {
      status = 2;
    }

    if (copyCopy && retryCount <= 0)
    {
      v75 = v16;
      v33 = [NSArray arrayWithObjects:&v75 count:1];
      [v58 deleteMessages:v33 moveToTrash:0];

      error = 0;
      [v58 doCompact];
      status = 9;
      goto LABEL_48;
    }
  }

  else if (!status)
  {
    v30 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Message delivery succeeded", buf, 2u);
    }

    if (copyCopy)
    {
      [v58 doCompact];
    }

    error = 0;
    status = 0;
    goto LABEL_48;
  }

  error = 0;
  if (status != 4 && status != 9)
  {
    v34 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Message delivery failed", buf, 2u);
    }

    v35 = +[MFActivityMonitor currentMonitor];
    error = [v35 error];

    if (!error)
    {
      v36 = MFLookupLocalizedString();
      account = [v10 account];
      hostname = [account hostname];
      v39 = [NSString stringWithFormat:v36, hostname];

      v40 = MFLookupLocalizedString();
      error = [MFError errorWithDomain:MFMessageErrorDomain code:1030 localizedDescription:v39 title:v40 userInfo:&off_1001637D8];
    }

    if (copyCopy)
    {
      v74 = v16;
      v41 = [NSArray arrayWithObjects:&v74 count:1];
      [v58 setFlag:MessageQueuedForDelivery state:1 forMessages:v41];

      account2 = [v10 account];
      [error setUserInfoObject:account2 forKey:@"account"];

      [(MFDeliveryQueue *)self _updateDeliveryInfoFromResult:v64 forMessage:v16];
      v43 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v16 libraryID]);
      [(MFDeliveryQueue *)self _setErrorForMessageLibraryID:v43 error:error];

      [(MFDeliveryQueue *)self _updateCounts];
      status = 6;
    }
  }

LABEL_48:
  --self->_numberOfCurrentSynchronousDeliveries;
  v44 = +[MFDeliveryQueue signpostLog];
  signpostID2 = [(MFDeliveryQueue *)self signpostID];
  if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    [v64 status];
    v46 = MFMessageDeliveryStatusString();
    *buf = 138412546;
    v71 = v62;
    v72 = 2112;
    v73 = v46;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, signpostID2, "EMAIL DELIVERY", "Delivered Message : %@ with result %@", buf, 0x16u);
  }

  if (error)
  {
    userInfo = [error userInfo];
    v48 = MFInvalidRecipientEmailAddresses;
    v49 = [userInfo objectForKeyedSubscript:MFInvalidRecipientEmailAddresses];

    if ([v49 count])
    {
      v68 = v48;
      v69 = v49;
      v50 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    }

    else
    {
      v50 = 0;
    }

    domain = [error domain];
    v53 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [error code], v50);

    localizedDescription = [error localizedDescription];
    v55 = objc_alloc_init(NSMutableDictionary);
    [v55 setObject:v53 forKeyedSubscript:NSUnderlyingErrorKey];
    if (localizedDescription)
    {
      [v55 setObject:localizedDescription forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    v51 = [NSError em_internalErrorWithReason:@"Message delivery failed with underlying error" userInfo:v55];
  }

  else
  {
    v51 = 0;
  }

  v56 = [[EMMessageDeliveryResult alloc] initWithStatus:status error:v51];

  return v56;
}

- (void)deliverAsynchronously:(id)asynchronously completion:(id)completion
{
  asynchronouslyCopy = asynchronously;
  completionCopy = completion;
  _deliveryResultIfNotHasAdequateFreeSpace = [(MFDeliveryQueue *)self _deliveryResultIfNotHasAdequateFreeSpace];
  if (_deliveryResultIfNotHasAdequateFreeSpace)
  {
    completionCopy[2](completionCopy, _deliveryResultIfNotHasAdequateFreeSpace);
  }

  else
  {
    v9 = [(MFDeliveryQueue *)self _outboxCopyFromMessageDelivery:asynchronouslyCopy];
    if (v9)
    {
      v10 = objc_alloc_init(DelayedMessage);
      [(DelayedMessage *)v10 setCompletion:completionCopy];
      [(DelayedMessage *)v10 setOutboxCopy:v9];
      v11 = +[MFPowerController sharedInstance];
      [v11 retainAssertionWithIdentifier:@"com.apple.message.delivery"];

      v12 = sub_100059D50(self);
      v13 = +[MFDeliveryQueue log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v32 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deliver message asynchronously with delay: %f", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      delayedMessageScheduler = [(MFDeliveryQueue *)self delayedMessageScheduler];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100059DF4;
      v25[3] = &unk_1001583A8;
      objc_copyWeak(&v30, buf);
      v15 = v10;
      v26 = v15;
      v27 = asynchronouslyCopy;
      v28 = v9;
      v29 = completionCopy;
      v16 = [delayedMessageScheduler afterDelay:v25 performBlock:v12];
      [(DelayedMessage *)v15 setToken:v16];

      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_10005A280;
      v23 = &unk_1001583D0;
      v17 = v15;
      v24 = v17;
      sub_10005A1D0(self, &v20);
      [(MFDeliveryQueue *)self notifyObserversOfDelayedMessagesDidChange:1, v20, v21, v22, v23];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
      v19 = [[EMMessageDeliveryResult alloc] initWithStatus:2 error:v18];
      completionCopy[2](completionCopy, v19);
    }
  }
}

- (BOOL)cancelLastDelayedMessage
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10005A130;
  v17 = sub_10005A140;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005A530;
  v12[3] = &unk_100158380;
  v12[4] = &v13;
  v12[5] = &v19;
  sub_10005A1D0(self, v12);
  v3 = v14[5];
  if (v3)
  {
    token = [v3 token];
    [token cancel];

    _outboxStore = [(MFDeliveryQueue *)self _outboxStore];
    outboxCopy = [v14[5] outboxCopy];
    v23 = outboxCopy;
    v7 = [NSArray arrayWithObjects:&v23 count:1];
    [_outboxStore deleteMessages:v7 moveToTrash:0];

    v8 = [[EMMessageDeliveryResult alloc] initWithStatus:4 error:0];
    completion = [v14[5] completion];
    (completion)[2](completion, v8);

    [(MFDeliveryQueue *)self notifyObserversOfDelayedMessagesDidChange:(v20[3] & 1) == 0];
    v10 = v14[5] != 0;
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

- (id)lastErrorForMessage:(id)message
{
  messageCopy = message;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v5 = [messageCopy libraryID], lastErrorForMessage = self->_lastErrorForMessage, +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", v5), v7 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](lastErrorForMessage, "objectForKey:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = [NSBundle bundleForClass:NSClassFromString(@"MailAppController")];
    v10 = [v9 localizedStringForKey:@"GENERIC_DELIVERY_ERROR_MESSAGE" value:&stru_10015BEC8 table:@"Main"];
    v11 = MFLookupLocalizedString();
    v8 = [MFError errorWithDomain:MFMessageErrorDomain code:1030 localizedDescription:v10 title:v11 userInfo:&off_100163800];
  }

  return v8;
}

- (id)_messagesInProgress
{
  _outboxStore = [(MFDeliveryQueue *)self _outboxStore];
  v3 = [_outboxStore copyOfAllMessagesWithOptions:0];

  v4 = [v3 ef_filter:&stru_1001583F0];

  return v4;
}

- (void)_setErrorForMessageLibraryID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  lastErrorForMessage = self->_lastErrorForMessage;
  if (errorCopy)
  {
    if (!lastErrorForMessage)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = self->_lastErrorForMessage;
      self->_lastErrorForMessage = v8;

      lastErrorForMessage = self->_lastErrorForMessage;
    }

    [(NSMutableDictionary *)lastErrorForMessage setObject:errorCopy forKey:dCopy];
  }

  else
  {
    [(NSMutableDictionary *)lastErrorForMessage removeObjectForKey:dCopy];
  }
}

- (void)_setErrorForMessage:(id)message error:(id)error
{
  messageCopy = message;
  errorCopy = error;
  if (objc_opt_respondsToSelector())
  {
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [messageCopy libraryID]);
    [(MFDeliveryQueue *)self _setErrorForMessageLibraryID:v7 error:errorCopy];
  }
}

- (void)_sendProcessingStartedNotification:(id)notification
{
  notificationCopy = notification;
  v6 = @"MFDeliveryQueueMonitorKey";
  v7 = notificationCopy;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"MFDeliveryQueueProcessingStartedNotification" object:v4];
}

- (id)_append:(id)_append flags:(id)flags
{
  _appendCopy = _append;
  flagsCopy = flags;
  if (_appendCopy)
  {
    _outboxStore = [(MFDeliveryQueue *)self _outboxStore];
    v9 = +[MFActivityMonitor currentMonitor];
    [v9 setCanBeCancelled:0];

    [(MFDeliveryQueue *)self mf_lock];
    v10 = +[MFMailMessageLibrary defaultInstance];
    messageChangeManager = [v10 messageChangeManager];

    v29 = _appendCopy;
    v11 = [NSArray arrayWithObjects:&v29 count:1];
    mailbox = [_outboxStore mailbox];
    v13 = [mailbox URL];
    v14 = [messageChangeManager addNewMessages:v11 mailboxURL:v13 userInitiated:0];

    v15 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = [v14 count];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%lu messages added", buf, 0xCu);
    }

    v16 = [v14 objectAtIndex:0];
    v26 = v16;
    v17 = [NSArray arrayWithObjects:&v26 count:1];
    v18 = [_outboxStore setFlagsFromDictionary:flagsCopy forMessages:v17];

    v19 = objc_alloc_init(MessageDeliveryInfo);
    -[MessageDeliveryInfo setMessageSize:](v19, "setMessageSize:", [v16 messageSize]);
    messagePersistence = [(MFDeliveryQueue *)self messagePersistence];
    [messagePersistence setDeliveryInfo:v19 forMessage:v16];

    v21 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      libraryID = [v16 libraryID];
      *buf = 134217984;
      v28 = libraryID;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Saved message to outbox (libraryId: %lld)", buf, 0xCu);
    }

    [(MFDeliveryQueue *)self mf_unlock];
    v23 = +[MFActivityMonitor currentMonitor];
    [v23 setCanBeCancelled:1];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_shouldSend:(id)send options:(id)options
{
  sendCopy = send;
  optionsCopy = options;
  if (([sendCopy messageFlags] & 2) != 0)
  {
    v9 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "skipping message because it is marked as deleted", &v19, 2u);
    }

    goto LABEL_7;
  }

  if (([sendCopy messageFlags] & 0x2000000000) != 0)
  {
    v9 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "skipping message because delivery is in progress", &v19, 2u);
    }

LABEL_7:

LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

  if (([optionsCopy forceAll] & 1) == 0)
  {
    messagePersistence = [(MFDeliveryQueue *)self messagePersistence];
    v11 = [messagePersistence deliveryInfoForMessage:sendCopy];

    if (v11)
    {
      if ([v11 lastStatus] == 7)
      {
        v12 = +[MFDeliveryQueue log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          v13 = "skipping message because last failure was permanent";
LABEL_20:
          v14 = v12;
          v15 = 2;
          goto LABEL_21;
        }
      }

      else
      {
        if ([v11 numberOfFailures] < 10)
        {
          if ([v11 lastStatus] != 2 || objc_msgSend(v11, "messageSize") <= 0xA00000 || (+[MFNetworkController sharedInstance](MFNetworkController, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isFatPipe"), v17, (objc_msgSend(v11, "failedCellularAttempts") < 4) | v18 & 1))
          {

            goto LABEL_4;
          }

          v12 = +[MFDeliveryQueue log];
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

          v19 = 67109376;
          LODWORD(v20[0]) = 10485760;
          WORD2(v20[0]) = 1024;
          *(v20 + 6) = 3;
          v13 = "skipping message because it is larger than %d bytes and had more than %d transient failures. It will only re-send once wifi becomes available";
          v14 = v12;
          v15 = 14;
          goto LABEL_21;
        }

        v12 = +[MFDeliveryQueue log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          v13 = "skipping message because maximum number of retries exceeded";
          goto LABEL_20;
        }
      }
    }

    else
    {
      v12 = +[MFDeliveryQueue log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20[0] = [sendCopy libraryID];
        v13 = "skipping message as no deliveryInfo metadata not found for libraryId: %lld";
        v14 = v12;
        v15 = 12;
LABEL_21:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
      }
    }

LABEL_22:

    goto LABEL_23;
  }

LABEL_4:
  v8 = 1;
LABEL_24:

  return v8;
}

- (id)_sortedMessages
{
  _outboxStore = [(MFDeliveryQueue *)self _outboxStore];
  [(MFDeliveryQueue *)self mf_lock];
  v4 = [_outboxStore copyOfAllMessagesWithOptions:2048];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005B590;
  v10[3] = &unk_100158418;
  v10[4] = self;
  v5 = [v4 ef_map:v10];
  [(MFDeliveryQueue *)self mf_unlock];
  v6 = [v5 sortedArrayUsingComparator:&stru_100158458];
  v7 = [v6 ef_map:&stru_100158498];
  v8 = [v7 mutableCopy];

  return v8;
}

- (void)_updateDeliveryInfoFromResult:(id)result forMessage:(id)message
{
  resultCopy = result;
  messageCopy = message;
  messagePersistence = [(MFDeliveryQueue *)self messagePersistence];
  v9 = [messagePersistence deliveryInfoForMessage:messageCopy];

  v10 = +[NSDate now];
  [v9 setLastAttempt:v10];

  [v9 setLastStatus:{objc_msgSend(resultCopy, "status")}];
  [v9 setNumberOfFailures:{objc_msgSend(v9, "numberOfFailures") + 1}];
  if ([v9 lastStatus] == 2)
  {
    [resultCopy duration];
    if (v11 > 0.0 && ([resultCopy isWifi] & 1) == 0)
    {
      [v9 setFailedCellularAttempts:{objc_msgSend(v9, "failedCellularAttempts") + 1}];
    }
  }

  v12 = +[MFDeliveryQueue log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = messageCopy;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "delivery info for %@: %@", &v14, 0x16u);
  }

  messagePersistence2 = [(MFDeliveryQueue *)self messagePersistence];
  [messagePersistence2 setDeliveryInfo:v9 forMessage:messageCopy];
}

- (void)_logDeliveryResult:(id)result forMessage:(id)message account:(id)account
{
  resultCopy = result;
  messageCopy = message;
  accountCopy = account;
  v10 = +[MFDeliveryQueue log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = messageCopy;
    v27 = 2112;
    v28 = resultCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "delivery result for %@: %@", buf, 0x16u);
  }

  loggingIdentifier = [accountCopy loggingIdentifier];
  v12 = loggingIdentifier;
  v13 = @"nil";
  if (loggingIdentifier)
  {
    v13 = loggingIdentifier;
  }

  v24[0] = v13;
  v23[0] = @"account";
  v23[1] = @"status";
  [resultCopy status];
  v14 = MFMessageDeliveryStatusString();
  v24[1] = v14;
  v23[2] = @"duration";
  [resultCopy duration];
  v16 = [NSString stringWithFormat:@"%.2fs", v15];
  v24[2] = v16;
  v23[3] = @"tx";
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [resultCopy bytesSent]);
  v24[3] = v17;
  v23[4] = @"wifi";
  [resultCopy isWifi];
  v18 = NSStringFromBOOL();
  v24[4] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];
  v20 = [NSMutableDictionary dictionaryWithDictionary:v19];

  [MFPowerController powerlog:@"DELIVER" eventData:v20];
  if (![resultCopy status])
  {
    deliveryHookResponder = [(MFDeliveryQueue *)self deliveryHookResponder];
    [deliveryHookResponder deliveredMessage:messageCopy account:accountCopy];
  }
}

- (EDMessageDeliveryHookResponder)deliveryHookResponder
{
  v2 = +[MFMailMessageLibrary defaultInstance];
  persistence = [v2 persistence];
  hookRegistry = [persistence hookRegistry];

  return hookRegistry;
}

+ (id)newDeliveryObjectFactoryForMessage:(id)message
{
  messageCopy = message;
  v4 = +[MFMailMessageLibrary defaultInstance];
  persistence = [v4 persistence];
  messagePersistence = [persistence messagePersistence];

  if ([messagePersistence mailDropDeliveryStateForMessage:messageCopy])
  {
    goto LABEL_4;
  }

  mailDropDeliveryState = [messageCopy mailDropDeliveryState];
  if (mailDropDeliveryState)
  {
    [messagePersistence setMailDropDeliveryState:mailDropDeliveryState forMessage:messageCopy];
LABEL_4:
    v8 = MFMailDropMailDeliveryUI_ptr;
    goto LABEL_5;
  }

  if ([MFAttachmentPlaceholder hasPlaceholderRepresentation:messageCopy])
  {
    v11 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Performing placeholder delivery for message", buf, 2u);
    }

    v8 = MFPlaceholderMailDeliveryUI_ptr;
  }

  else
  {
    v11 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Performing standard delivery for message", v12, 2u);
    }

    v8 = MFOutgoingMessageDelivery_ptr;
  }

LABEL_5:
  v9 = [*v8 newWithMessage:messageCopy];

  return v9;
}

- (void)_processQueueWithOptions:(id)options
{
  optionsCopy = options;
  v50 = +[NSMutableArray array];
  v51 = +[NSMutableArray array];
  _outboxStore = [(MFDeliveryQueue *)self _outboxStore];
  v57 = +[MFActivityMonitor currentMonitor];
  [(MFDeliveryQueue *)self _sendProcessingStartedNotification:?];
  _sortedMessages = [(MFDeliveryQueue *)self _sortedMessages];
  v4 = +[MFDeliveryQueue log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [_sortedMessages count];
    v6 = [_sortedMessages count];
    v7 = @"messages";
    *buf = 67109890;
    *v64 = v5;
    *&v64[4] = 2112;
    if (v6 == 1)
    {
      v7 = @"message";
    }

    *&v64[6] = v7;
    *&v64[14] = 2112;
    *&v64[16] = optionsCopy;
    v65 = 2112;
    v66 = _sortedMessages;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "processing %d outbox %@ (%@): %@", buf, 0x26u);
  }

  v49 = +[NSMutableDictionary dictionary];
  v8 = +[MFPowerController sharedInstance];
  [v8 retainAssertionWithIdentifier:@"com.apple.message.delivery"];

  v9 = 1;
  v48 = MFMessageErrorDomain;
  while (([_sortedMessages ef_isEmpty] & 1) == 0 && (*(self + 56) & 3) == 0)
  {
    if ([v57 shouldCancel])
    {
      v41 = +[MFDeliveryQueue log];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v40 = "activity was cancelled (possible due to timed out power assertion)";
        goto LABEL_42;
      }

LABEL_43:

      break;
    }

    v10 = MFUserAgent();
    if ([v10 isMobileMail])
    {
      v11 = (*(self + 56) & 4) == 0;

      if (v11)
      {
        v41 = +[MFDeliveryQueue log];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v40 = "network is not reachable, aborting queue processing";
LABEL_42:
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v40, buf, 2u);
        }

        goto LABEL_43;
      }
    }

    else
    {
    }

    if (v9 == 1)
    {
      mailbox = [_outboxStore mailbox];
      [v57 setMailbox:mailbox];

      v13 = MFLookupLocalizedString();
      [v57 setDisplayName:v13 maxCount:{objc_msgSend(_sortedMessages, "count")}];
    }

    ef_popElement = [_sortedMessages ef_popElement];
    [v57 setCurrentCount:v9];
    if ([(MFDeliveryQueue *)self _shouldSend:ef_popElement options:optionsCopy])
    {
      [(MFDeliveryQueue *)self _setDeliveryFlag:ef_popElement state:1];
      v15 = [MailAccount accountThatMessageIsFrom:ef_popElement includingInactive:1];
      if ([v15 isActive])
      {
        deliveryAccount = [v15 deliveryAccount];
        identifier = [deliveryAccount identifier];
        v18 = [v49 objectForKey:identifier];

        if (!v18)
        {
          v18 = deliveryAccount;
        }

        v52 = v18;
        v19 = [objc_opt_class() newDeliveryObjectFactoryForMessage:ef_popElement];
        [v19 setAccount:v18];
        [v19 setDelegate:self];
        [v19 setArchiveAccount:v15];
        [v19 setIsUserRequested:{objc_msgSend(optionsCopy, "isUserRequested")}];
        v20 = +[MFDeliveryQueue log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          *buf = 138412546;
          *v64 = ef_popElement;
          *&v64[8] = 2112;
          *&v64[10] = v21;
          v22 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sending %@ (account class: %@)", buf, 0x16u);
        }

        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_10005CAB8;
        v58[3] = &unk_100158358;
        v59 = _outboxStore;
        v23 = ef_popElement;
        v60 = v23;
        v24 = [v19 deliverSynchronouslyWithCompletion:v58];
        [(MFDeliveryQueue *)self _logDeliveryResult:v24 forMessage:v23 account:v15];
        account = [v19 account];
        if ([v24 status])
        {
          [v51 addObject:v23];
          error = [v57 error];
          [(MFDeliveryQueue *)self _updateDeliveryInfoFromResult:v24 forMessage:v23];
          if (!error)
          {
            v26 = MFLookupLocalizedString();
            hostname = [deliveryAccount hostname];
            v28 = [NSString stringWithFormat:v26, hostname];

            v29 = MFLookupLocalizedString();
            error = [MFError errorWithDomain:v48 code:1030 localizedDescription:v28 title:v29 userInfo:0];
          }

          identifier2 = +[MFDeliveryQueue log];
          if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [error ef_publicDescription];
            sub_1000D3F50(ef_publicDescription, v61, &v62, identifier2);
          }

          goto LABEL_33;
        }

        [v50 addObject:v23];
        if (account == v52 || ([v52 identifier], v35 = objc_claimAutoreleasedReturnValue(), v36 = v35 == 0, v35, v36))
        {
          v34 = 0;
        }

        else
        {
          v37 = +[MFDeliveryQueue log];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription2 = [account ef_publicDescription];
            ef_publicDescription3 = [v52 ef_publicDescription];
            *buf = 138412546;
            *v64 = ef_publicDescription2;
            *&v64[8] = 2112;
            *&v64[10] = ef_publicDescription3;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "account %@{public} became an alternate for %@{public}", buf, 0x16u);
          }

          identifier2 = [v52 identifier];
          [v49 setValue:account forKey:identifier2];
          error = 0;
LABEL_33:

          v34 = error;
        }

        [v34 setUserInfoObject:account forKey:@"account"];
      }

      else
      {
        v32 = MFLookupLocalizedString();
        v33 = MFLookupLocalizedString();
        v34 = [MFError errorWithDomain:v48 code:1051 localizedDescription:v32 title:v33 userInfo:0];

        [v34 setUserInfoObject:v15 forKey:@"account"];
        deliveryAccount = +[MFDeliveryQueue log];
        if (os_log_type_enabled(deliveryAccount, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, deliveryAccount, OS_LOG_TYPE_DEFAULT, "skipping message from  inactive account", buf, 2u);
        }
      }

      usleep(0x7A120u);
      [(MFDeliveryQueue *)self _setDeliveryFlag:ef_popElement state:0];
      [(MFDeliveryQueue *)self _setErrorForMessage:ef_popElement error:v34];
      [v57 setError:0];
    }

    ++v9;
  }

  v43 = +[MFPowerController sharedInstance];
  [v43 releaseAssertionWithIdentifier:@"com.apple.message.delivery"];

  v44 = +[MFDeliveryQueue log];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [v50 count];
    v46 = [v51 count];
    *buf = 134218240;
    *v64 = v45;
    *&v64[8] = 2048;
    *&v64[10] = v46;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "done processing queue: %lu messages sent, %lu failures", buf, 0x16u);
  }

  [v57 reset];
  [_outboxStore doCompact];
  if ([optionsCopy playSound])
  {
    v47 = [v50 count] != 0;
  }

  else
  {
    v47 = 0;
  }

  [(MFDeliveryQueue *)self _sendProcessingFinishedNotificationWithSentMessages:v50 failedMessages:v51 playSound:v47];
}

- (void)setPercentDone:(double)done
{
  v4 = +[MFActivityMonitor currentMonitor];
  [v4 setPercentDoneOfCurrentItem:done];
}

- (void)_queueProcessingDidFinish:(id)finish
{
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CC44;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)_mailAccountsChanged:(id)changed
{
  changedCopy = changed;
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CDA0;
  v7[3] = &unk_1001563D8;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(stateQueue, v7);
}

- (void)_flagsChanged:(id)changed
{
  changedCopy = changed;
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CEF8;
  v7[3] = &unk_1001563D8;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(stateQueue, v7);
}

- (void)_messagesAdded:(id)added
{
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D080;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)_reachabilityChanged:(id)changed
{
  changedCopy = changed;
  name = [changedCopy name];
  v6 = [name isEqualToString:CPNetworkObserverNetworkReachableNotification];

  if (v6)
  {
    stateQueue = self->_stateQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005D1E4;
    v8[3] = &unk_1001563D8;
    v8[4] = self;
    v9 = changedCopy;
    dispatch_async(stateQueue, v8);
  }
}

- (void)_messagesCompacted:(id)compacted
{
  userInfo = [compacted userInfo];
  v5 = [userInfo objectForKey:MailMessageStoreMessageKey];
  if ([v5 ef_any:&stru_1001584B8])
  {
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005D44C;
    block[3] = &unk_100156400;
    block[4] = self;
    dispatch_async(stateQueue, block);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observationScheduler = [(MFDeliveryQueue *)self observationScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005D530;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v6 = observerCopy;
  v8 = v6;
  [observationScheduler performBlock:v7];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observationScheduler = [(MFDeliveryQueue *)self observationScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005D670;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v6 = observerCopy;
  v8 = v6;
  [observationScheduler performBlock:v7];
}

- (void)notifyObserversOfUpdatedPendingMessageCount:(unint64_t)count
{
  observationScheduler = [(MFDeliveryQueue *)self observationScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005D77C;
  v6[3] = &unk_100156360;
  v6[4] = self;
  v6[5] = count;
  [observationScheduler performBlock:v6];
}

- (void)notifyObserversOfDelayedMessagesDidChange:(BOOL)change
{
  observationScheduler = [(MFDeliveryQueue *)self observationScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005D93C;
  v6[3] = &unk_100157148;
  v6[4] = self;
  changeCopy = change;
  [observationScheduler performBlock:v6];
}

- (void)test_waitForObservers
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MFDeliveryQueue.m" lineNumber:1234 description:{@"%s can only be called from unit tests", "-[MFDeliveryQueue test_waitForObservers]"}];
  }

  observationScheduler = [(MFDeliveryQueue *)self observationScheduler];
  [observationScheduler performSyncBlock:&stru_1001584D8];
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSString stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  [v3 addObject:v4];

  [v3 addObject:@"==== Outbox ===="];
  state = self->_state;
  v6 = @"MFDeliveryQueueStateReady";
  if (state == 1)
  {
    v6 = @"MFDeliveryQueueStateProcessing";
  }

  if (state == 2)
  {
    v7 = @"MFDeliveryQueueStateSuspended";
  }

  else
  {
    v7 = v6;
  }

  v8 = [NSString stringWithFormat:@"  state: %@", v7];
  [v3 addObject:v8];

  [v3 addObject:@"==== Pending Messages (Sorted by Size) ===="];
  _sortedMessages = [(MFDeliveryQueue *)self _sortedMessages];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005DCEC;
  v13[3] = &unk_100158500;
  v13[4] = self;
  v10 = [_sortedMessages ef_map:v13];
  [v3 addObjectsFromArray:v10];

  v11 = [v3 componentsJoinedByString:@"\n"];

  return v11;
}

@end