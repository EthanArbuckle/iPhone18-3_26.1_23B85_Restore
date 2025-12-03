@interface MessageBodyLoader
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (id)attachmentManager;
+ (id)loaderForAccount:(id)account;
+ (void)_setSharedLoaderForTesting:(id)testing account:(id)account;
+ (void)accountsDidChange;
+ (void)applicationWillResume;
+ (void)applicationWillSuspend;
+ (void)initialize;
+ (void)pause;
+ (void)resume;
- (BOOL)_nts_isProcessingMessage:(id)message;
- (BOOL)isProcessingMessage:(id)message;
- (BOOL)networkFetchingAllowed;
- (MessageBodyLoader)init;
- (MessageBodyLoader)initWithLibrary:(id)library;
- (id)copyDiagnosticInformation;
- (unint64_t)signpostID;
- (void)_cancelSleepIfNeeded;
- (void)_clearResumeTime;
- (void)_clientLoadFinished:(id)finished;
- (void)_finishedCullingMessageList:(id)list;
- (void)_getNextClientOrMessage;
- (void)_getNextClientOrMessageFinished:(id)finished;
- (void)_logStats:(BOOL)stats;
- (void)_messageFlagsChanged:(id)changed;
- (void)_messageLoadFinished:(id)finished;
- (void)_messagesAdded:(id)added;
- (void)_messagesWillBeCompacted:(id)compacted;
- (void)_nts_insertClient:(id)client;
- (void)_nts_removeClient:(id)client;
- (void)_recordStats:(id)stats;
- (void)_releasePowerAssertion;
- (void)_removeNewMessages:(id)messages;
- (void)_removeNewMessages_nts:(id)messages_nts;
- (void)_removeViewingMessages:(id)messages;
- (void)_retainPowerAssertion;
- (void)_setIsRunning:(BOOL)running;
- (void)_start;
- (void)_tryProcessingQueues;
- (void)_waitUntilNotRunning;
- (void)addMessage:(id)message;
- (void)addMessages:(id)messages;
- (void)addMessages_nts:(id)messages_nts;
- (void)addSingleMessageClient:(id)client;
- (void)applicationWillResume;
- (void)assertionDidExpire;
- (void)beginAddingNewMessagesForStore:(id)store;
- (void)dealloc;
- (void)disableNetworkFetching;
- (void)enableNetworkFetching;
- (void)removeSingleMessageClient:(id)client;
- (void)resume;
- (void)startup;
- (void)stopAddingNewMessagesForStore:(id)store;
- (void)systemDidWake;
- (void)userStoppedViewingMessages;
- (void)userViewingMessages:(id)messages;
@end

@implementation MessageBodyLoader

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DFFC;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_1001856F0 != -1)
  {
    dispatch_once(&qword_1001856F0, block);
  }

  v2 = qword_1001856E8;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E164;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185700 != -1)
  {
    dispatch_once(&qword_100185700, block);
  }

  v2 = qword_1001856F8;

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = qword_100185708;
    qword_100185708 = v2;
  }
}

+ (void)_setSharedLoaderForTesting:(id)testing account:(id)account
{
  testingCopy = testing;
  accountCopy = account;
  v6 = qword_100185708;
  uniqueID = [accountCopy uniqueID];
  [v6 setObject:testingCopy forKeyedSubscript:uniqueID];

  [testingCopy startup];
}

+ (id)loaderForAccount:(id)account
{
  accountCopy = account;
  uniqueID = [accountCopy uniqueID];
  if (uniqueID)
  {
    v5 = qword_100185708;
    objc_sync_enter(v5);
    v6 = [qword_100185708 objectForKeyedSubscript:uniqueID];
    if (!v6)
    {
      v6 = objc_alloc_init(MessageBodyLoader);
      [(MessageBodyLoader *)v6 setAccount:accountCopy];
      [(MessageBodyLoader *)v6 startup];
      [qword_100185708 setObject:v6 forKeyedSubscript:uniqueID];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)pause
{
  obj = qword_100185708;
  objc_sync_enter(obj);
  allValues = [qword_100185708 allValues];
  [allValues makeObjectsPerformSelector:"pause"];

  objc_sync_exit(obj);
}

+ (void)resume
{
  obj = qword_100185708;
  objc_sync_enter(obj);
  allValues = [qword_100185708 allValues];
  [allValues makeObjectsPerformSelector:"resume"];

  objc_sync_exit(obj);
}

+ (id)attachmentManager
{
  v2 = sub_100027C70();
  defaultAttachmentManager = [v2 defaultAttachmentManager];

  return defaultAttachmentManager;
}

- (MessageBodyLoader)init
{
  v3 = +[MFMailMessageLibrary defaultInstance];
  v4 = [(MessageBodyLoader *)self initWithLibrary:v3];

  return v4;
}

- (MessageBodyLoader)initWithLibrary:(id)library
{
  libraryCopy = library;
  v35.receiver = self;
  v35.super_class = MessageBodyLoader;
  v6 = [(MessageBodyLoader *)&v35 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    clients = v6->_clients;
    v6->_clients = v7;

    v9 = objc_alloc_init(NSMutableArray);
    newMessages = v6->_newMessages;
    v6->_newMessages = v9;

    v11 = objc_alloc_init(NSMutableSet);
    newMessageSet = v6->_newMessageSet;
    v6->_newMessageSet = v11;

    v13 = objc_alloc_init(NSCountedSet);
    newMessageMailboxQuota = v6->_newMessageMailboxQuota;
    v6->_newMessageMailboxQuota = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create("MessageBodyLoaderQueue", v15);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v16;

    v18 = objc_alloc_init(MFInvocationQueue);
    workQueue = v6->_workQueue;
    v6->_workQueue = v18;

    objc_initWeak(&location, v6);
    v20 = objc_alloc_init(EFManualCancelationToken);
    cancelationToken = v6->_cancelationToken;
    v6->_cancelationToken = v20;

    v22 = v6->_cancelationToken;
    v23 = +[MFPowerController sharedInstance];
    powerObservable = [v23 powerObservable];
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_10004003C;
    v32 = &unk_1001578A8;
    objc_copyWeak(&v33, &location);
    v25 = [EFObserver observerWithResultBlock:&v29];
    v26 = [powerObservable subscribe:{v25, v29, v30, v31, v32}];
    [(EFManualCancelationToken *)v22 addCancelable:v26];

    objc_storeStrong(&v6->_library, library);
    v27 = +[MFDiagnostics sharedController];
    [v27 addDiagnosticsGenerator:v6];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)startup
{
  v3 = +[MessageBodyLoader log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startup: %@", &v5, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_messageFlagsChanged:" name:MailMessageStoreMessageFlagsChanged object:self->_library];
  [v4 addObserver:self selector:"_messagesWillBeCompacted:" name:MailMessageStoreMessagesWillBeCompacted object:self->_library];
  MFRegisterPowerObserver();
}

- (void)dealloc
{
  MFUnregisterPowerObserver();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(EFManualCancelationToken *)self->_cancelationToken cancel];
  [(MessageBodyLoader *)self _setIsRunning:0];
  v4.receiver = self;
  v4.super_class = MessageBodyLoader;
  [(MessageBodyLoader *)&v4 dealloc];
}

- (BOOL)networkFetchingAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100040348;
  v5[3] = &unk_1001578D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendString:@"\n"];
  [v3 appendString:@"==== Message Body Loader ====\n"];
  account = [(MessageBodyLoader *)self account];
  [v3 appendFormat:@"  Account         : %@\n", account];

  [v3 appendFormat:@"  Running         : %d\n", *(self + 120) & 1];
  isPaused = [(MessageBodyLoader *)self isPaused];
  v6 = "NO";
  if (isPaused)
  {
    v6 = "YES";
  }

  [v3 appendFormat:@"  Paused          : %s\n", v6];
  if (self->_resumeTime)
  {
    [v3 appendFormat:@"  Paused until    : %@\n", self->_resumeTime];
  }

  if (self->_noNetworkFetching)
  {
    v7 = @"NO";
  }

  else
  {
    v7 = @"YES";
  }

  [v3 appendFormat:@"  Network Fetching: %@\n", v7];
  [v3 appendFormat:@"  Client Count    : %lu\n", -[NSMutableArray count](self->_clients, "count")];
  [v3 appendFormat:@"  Messages Count  : %lu\n", -[NSMutableArray count](self->_newMessages, "count")];
  [v3 appendFormat:@"  Mailbox Quotas  : %@\n", self->_newMessageMailboxQuota];
  [v3 appendFormat:@"  Watched Uids    : %@\n", self->_watchedUids];
  [v3 appendFormat:@"  Current Monitor : %p\n", self->_currentMonitor];
  [v3 appendFormat:@"  Waiting for task: %d\n", (*(self + 120) >> 1) & 1];
  return v3;
}

- (void)_tryProcessingQueues
{
  if ((*(self + 120) & 2) != 0)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MessageBodyLoader.m" lineNumber:448 description:@"should not try to process queues while we're running a task."];
  }

  isPaused = [(MessageBodyLoader *)self isPaused];
  v4 = *(self + 120);
  if (isPaused)
  {
    v4 &= ~4u;
    *(self + 120) = v4;
  }

  if ((v4 & 4) != 0)
  {
    *(self + 120) = v4 & 0xFB;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_newMessageMailboxQuota;
    v6 = [(NSCountedSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v7 |= [(NSCountedSet *)self->_newMessageMailboxQuota countForObject:*(*(&v17 + 1) + 8 * i), v17]> 0xF0;
        }

        v6 = [(NSCountedSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);

      if (v7)
      {
        v10 = [[_MBLCullOldMessagesJob alloc] initForMBLMailbox:self];
        [v10 setMessages:self->_newMessages];
        v11 = [MFMonitoredInvocation mf_invocationWithSelector:"run" target:v10];
        v12 = +[NSNotificationCenter defaultCenter];
        monitor = [v11 monitor];
        [v12 addObserver:self selector:"_finishedCullingMessageList:" name:MonitoredActivityEnded object:monitor];

        [(MFInvocationQueue *)self->_workQueue addInvocation:v11];
        *(self + 120) |= 2u;

        return;
      }
    }

    else
    {
    }

    if (*(self + 120))
    {
      [(MessageBodyLoader *)self _getNextClientOrMessage];
    }

    else
    {
      v14 = +[MessageBodyLoader log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000D39D0();
      }
    }
  }

  else
  {

    [(MessageBodyLoader *)self _setIsRunning:0];
  }
}

- (void)_getNextClientOrMessage
{
  v6 = [[_MBLGetNextClientOrMessageJob alloc] initForMBLMailbox:self];
  [v6 setClients:self->_clients];
  [v6 setMessages:self->_newMessages];
  [v6 setViewingMessages:self->_userViewingMessages];
  v3 = [MFMonitoredInvocation mf_invocationWithSelector:"run" target:v6];
  v4 = +[NSNotificationCenter defaultCenter];
  monitor = [v3 monitor];
  [v4 addObserver:self selector:"_getNextClientOrMessageFinished:" name:MonitoredActivityEnded object:monitor];

  [(MFInvocationQueue *)self->_workQueue addInvocation:v3];
  *(self + 120) |= 2u;
}

- (void)_finishedCullingMessageList:(id)list
{
  listCopy = list;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040ABC;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = listCopy;
  v6 = listCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_clientLoadFinished:(id)finished
{
  finishedCopy = finished;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040C50;
  block[3] = &unk_100157098;
  block[4] = self;
  v9 = finishedCopy;
  v10 = a2;
  v7 = finishedCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_messageLoadFinished:(id)finished
{
  finishedCopy = finished;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040F84;
  block[3] = &unk_100157098;
  block[4] = self;
  v9 = finishedCopy;
  v10 = a2;
  v7 = finishedCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_getNextClientOrMessageFinished:(id)finished
{
  finishedCopy = finished;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041304;
  block[3] = &unk_100157098;
  block[4] = self;
  v9 = finishedCopy;
  v10 = a2;
  v7 = finishedCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_messagesAdded:(id)added
{
  addedCopy = added;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000418C8;
  v7[3] = &unk_1001563D8;
  v8 = addedCopy;
  selfCopy = self;
  v6 = addedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_removeNewMessages_nts:(id)messages_nts
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  messages_ntsCopy = messages_nts;
  v5 = [messages_ntsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(messages_ntsCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [(NSMutableSet *)self->_newMessageSet removeObject:v8, v12];
        newMessageMailboxQuota = self->_newMessageMailboxQuota;
        mailbox = [v8 mailbox];
        if (mailbox)
        {
          v11 = mailbox;
        }

        else
        {
          v11 = @"No Mailbox";
        }

        [(NSCountedSet *)newMessageMailboxQuota removeObject:v11];
      }

      v5 = [messages_ntsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_newMessages removeObjectsInArray:messages_ntsCopy];
}

- (void)_removeNewMessages:(id)messages
{
  messagesCopy = messages;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041B70;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = messagesCopy;
  v6 = messagesCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_removeViewingMessages:(id)messages
{
  messagesCopy = messages;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041C14;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = messagesCopy;
  v6 = messagesCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_messagesWillBeCompacted:(id)compacted
{
  compactedCopy = compacted;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041CB8;
  v7[3] = &unk_1001563D8;
  v8 = compactedCopy;
  selfCopy = self;
  v6 = compactedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_messageFlagsChanged:(id)changed
{
  changedCopy = changed;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041DF0;
  v7[3] = &unk_1001563D8;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)addSingleMessageClient:(id)client
{
  clientCopy = client;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042078;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)removeSingleMessageClient:(id)client
{
  clientCopy = client;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042160;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_sync(dispatchQueue, v7);
}

- (void)_nts_insertClient:(id)client
{
  clientCopy = client;
  v5 = objc_getAssociatedObject(clientCopy, off_100183720);
  if (!v5)
  {
    v21[0] = @"ordering";
    [clientCopy ordering];
    v6 = [NSNumber numberWithDouble:?];
    v21[1] = @"priority";
    v22[0] = v6;
    v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [clientCopy priority]);
    v22[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    objc_setAssociatedObject(clientCopy, off_100183720, v8, 0x301);
    v5 = v8;
  }

  v9 = [(NSMutableArray *)self->_clients ef_insertObject:clientCopy usingSortFunction:sub_1000423F4 context:0 allowDuplicates:0];
  v10 = +[MessageBodyLoader log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = [(NSMutableArray *)self->_clients count];
    v13 = 138413058;
    v14 = v11;
    v15 = 2048;
    v16 = clientCopy;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "client ADD: %@ %p idx: %lu count: %lu", &v13, 0x2Au);
  }
}

- (void)_nts_removeClient:(id)client
{
  clientCopy = client;
  v5 = [(NSMutableArray *)self->_clients ef_removeObject:clientCopy usingSortFunction:sub_1000423F4 context:0];
  objc_setAssociatedObject(clientCopy, off_100183720, 0, 0x301);
  v6 = +[MessageBodyLoader log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [(NSMutableArray *)self->_clients count];
    v9 = 138413058;
    v10 = v7;
    v11 = 2048;
    v12 = clientCopy;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "client DEL: %@ %p idx: %lu count: %lu", &v9, 0x2Au);
  }
}

- (void)addMessage:(id)message
{
  v4 = [NSArray arrayWithObjects:message, 0];
  [(MessageBodyLoader *)self addMessages:?];
}

- (void)addMessages_nts:(id)messages_nts
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  messages_ntsCopy = messages_nts;
  v5 = [messages_ntsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(messages_ntsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_newMessageSet containsObject:v9, v13]& 1) == 0)
        {
          [(NSMutableArray *)self->_newMessages addObject:v9];
          [(NSMutableSet *)self->_newMessageSet addObject:v9];
          newMessageMailboxQuota = self->_newMessageMailboxQuota;
          mailbox = [v9 mailbox];
          if (mailbox)
          {
            v12 = mailbox;
          }

          else
          {
            v12 = @"No Mailbox";
          }

          [(NSCountedSet *)newMessageMailboxQuota addObject:v12];

          v6 = 1;
        }
      }

      v5 = [messages_ntsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);

    if (v6)
    {
      *(self + 120) |= 4u;
      [(MessageBodyLoader *)self _start];
    }
  }

  else
  {
  }
}

- (void)addMessages:(id)messages
{
  messagesCopy = messages;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042A2C;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = messagesCopy;
  v6 = messagesCopy;
  dispatch_async(dispatchQueue, v7);
}

- (BOOL)isProcessingMessage:(id)message
{
  messageCopy = message;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100042B04;
  block[3] = &unk_100157618;
  v9 = messageCopy;
  v10 = &v11;
  block[4] = self;
  v6 = messageCopy;
  dispatch_sync(dispatchQueue, block);
  LOBYTE(dispatchQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return dispatchQueue;
}

- (BOOL)_nts_isProcessingMessage:(id)message
{
  messageCopy = message;
  if (([(MFMailMessage *)self->_currentMessage isEqual:messageCopy]& 1) != 0 || ([(NSMutableSet *)self->_newMessageSet containsObject:messageCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    clients = self->_clients;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100042C24;
    v8[3] = &unk_1001578F8;
    v9 = messageCopy;
    v5 = [(NSMutableArray *)clients ef_any:v8];
  }

  return v5;
}

- (void)beginAddingNewMessagesForStore:(id)store
{
  storeCopy = store;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042D10;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_sync(dispatchQueue, v7);
}

- (void)stopAddingNewMessagesForStore:(id)store
{
  storeCopy = store;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042EAC;
  v7[3] = &unk_1001563D8;
  v8 = storeCopy;
  selfCopy = self;
  v6 = storeCopy;
  dispatch_sync(dispatchQueue, v7);
}

- (void)userViewingMessages:(id)messages
{
  messagesCopy = messages;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100043004;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = messagesCopy;
  v6 = messagesCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)userStoppedViewingMessages
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000430F0;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_waitUntilNotRunning
{
  [(MessageBodyLoader *)self _blockingMessage];
  [(MessageBodyLoader *)self mf_lock];
  if (*(self + 120))
  {
    if (self->_waitReply)
    {
      sub_1000D3AD4();
    }

    v3 = dispatch_semaphore_create(0);
    waitReply = self->_waitReply;
    self->_waitReply = v3;

    [(MessageBodyLoader *)self mf_unlock];
    dispatch_semaphore_wait(self->_waitReply, 0xFFFFFFFFFFFFFFFFLL);
    [(MessageBodyLoader *)self mf_lock];
    v5 = self->_waitReply;
    self->_waitReply = 0;
  }

  [(MessageBodyLoader *)self mf_unlock];
}

- (void)_setIsRunning:(BOOL)running
{
  runningCopy = running;
  [(MessageBodyLoader *)self mf_lock];
  v5 = *(self + 120);
  if ((v5 & 1) != runningCopy)
  {
    *(self + 120) = v5 & 0xFE | runningCopy;
    v6 = +[MessageBodyLoader log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromBOOL();
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_setIsRunning: %@", buf, 0xCu);
    }

    v15 = @"running";
    v8 = NSStringFromBOOL();
    v16 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [MFPowerController powerlog:@"MBL" eventData:v9, v15];

    if (runningCopy)
    {
      [(MessageBodyLoader *)self _retainPowerAssertion];
      v10 = +[MessageBodyLoader signpostLog];
      signpostID = [(MessageBodyLoader *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MBL PROCESSING", "", buf, 2u);
      }
    }

    else
    {
      [(MessageBodyLoader *)self _releasePowerAssertion];
      v12 = +[MessageBodyLoader signpostLog];
      signpostID2 = [(MessageBodyLoader *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, signpostID2, "MBL PROCESSING", "", buf, 2u);
      }

      [(MessageBodyLoader *)self _logStats:1];
      waitReply = self->_waitReply;
      if (waitReply)
      {
        dispatch_semaphore_signal(waitReply);
      }
    }
  }

  [(MessageBodyLoader *)self mf_unlock];
}

- (void)_start
{
  v3 = +[NSUserDefaults em_userDefaults];
  v4 = [v3 BOOLForKey:@"DisableBodyFetches"];

  if ((v4 & 1) == 0)
  {
    [(MessageBodyLoader *)self _cancelSleepIfNeeded];
    if ((*(self + 120) & 2) == 0 && !self->_isPaused)
    {
      v5 = +[MessageBodyLoader log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_new();
        account = [(MessageBodyLoader *)self account];
        v8 = [(NSMutableSet *)self->_newMessageSet count];
        newMessageSet = self->_newMessageSet;
        v10 = 138413058;
        v11 = v6;
        v12 = 2112;
        v13 = account;
        v14 = 2048;
        v15 = v8;
        v16 = 2112;
        v17 = newMessageSet;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "start at %@\nAccount:%@ \nnewMessageSet [%ld]:%@", &v10, 0x2Au);
      }

      [(MessageBodyLoader *)self _setIsRunning:1];
      [(MessageBodyLoader *)self _tryProcessingQueues];
    }
  }
}

- (void)resume
{
  v4 = 1;
  atomic_compare_exchange_strong_explicit(&self->_isPaused, &v4, 0, memory_order_relaxed, memory_order_relaxed);
  if (v4 == 1)
  {
    block[5] = v2;
    block[6] = v3;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000436B0;
    block[3] = &unk_100156400;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)enableNetworkFetching
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004373C;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)disableNetworkFetching
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004384C;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

+ (void)applicationWillSuspend
{
  obj = qword_100185708;
  objc_sync_enter(obj);
  allValues = [qword_100185708 allValues];
  [allValues makeObjectsPerformSelector:"applicationWillSuspend"];

  objc_sync_exit(obj);
}

- (void)applicationWillResume
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000439D0;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

+ (void)applicationWillResume
{
  obj = qword_100185708;
  objc_sync_enter(obj);
  allValues = [qword_100185708 allValues];
  [allValues makeObjectsPerformSelector:"applicationWillResume"];

  objc_sync_exit(obj);
}

+ (void)accountsDidChange
{
  v2 = qword_100185708;
  objc_sync_enter(v2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [qword_100185708 allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [MailAccount accountWithUniqueId:v7];
        v9 = v8;
        if (!v8 || ([v8 isActive] & 1) == 0)
        {
          [qword_100185708 removeObjectForKey:v7];
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

- (void)_recordStats:(id)stats
{
  statsCopy = stats;
  bytesRead = [(MFActivityMonitor *)self->_currentMonitor bytesRead];
  bytesWritten = [(MFActivityMonitor *)self->_currentMonitor bytesWritten];
  v7 = bytesWritten;
  if (bytesRead > 0 || bytesWritten >= 1)
  {
    if (objc_opt_respondsToSelector())
    {
      libraryID = [statsCopy libraryID];
    }

    else
    {
      libraryID = 0;
    }

    account = [statsCopy account];
    loggingIdentifier = [account loggingIdentifier];
    Current = CFAbsoluteTimeGetCurrent();
    [(MFActivityMonitor *)self->_currentMonitor startTime];
    v13 = v12;
    v14 = +[MFNetworkController sharedInstance];
    [v14 isFatPipe];

    v15 = +[MessageBodyLoader log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier2 = [account loggingIdentifier];
      v17 = NSStringFromBOOL();
      *buf = 138413570;
      v31 = loggingIdentifier2;
      v32 = 2048;
      v33 = libraryID;
      v34 = 2048;
      v35 = Current - v13;
      v36 = 1024;
      v37 = v7;
      v38 = 1024;
      v39 = bytesRead;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "account=%@; lid=%lld; duration=%.2fs; tx=%d; rx=%d; wifi=%@", buf, 0x36u);
    }

    error = [(MFActivityMonitor *)self->_currentMonitor error];
    if (error)
    {
      v19 = +[MessageBodyLoader log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription = [error ef_publicDescription];
        *buf = 138543362;
        v31 = ef_publicDescription;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "an error occurred while loading message: %{public}@", buf, 0xCu);
      }
    }

    bytesPerAccount = self->_bytesPerAccount;
    if (!bytesPerAccount)
    {
      v22 = objc_alloc_init(NSMutableDictionary);
      v23 = self->_bytesPerAccount;
      self->_bytesPerAccount = v22;

      bytesPerAccount = self->_bytesPerAccount;
    }

    v24 = [(NSMutableDictionary *)bytesPerAccount objectForKey:loggingIdentifier];
    v25 = v24;
    v26 = v7 + bytesRead;
    if (v24)
    {
      v26 += [v24 unsignedIntegerValue];
    }

    v27 = self->_bytesPerAccount;
    v28 = [NSNumber numberWithUnsignedInteger:v26];
    [(NSMutableDictionary *)v27 setObject:v28 forKey:loggingIdentifier];
  }
}

- (void)_logStats:(BOOL)stats
{
  statsCopy = stats;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSMutableDictionary *)self->_bytesPerAccount allKeys];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_bytesPerAccount objectForKey:v7];
        v9 = +[MessageBodyLoader log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          if (v8)
          {
            v10 = v8;
          }

          else
          {
            v10 = &off_100163388;
          }

          v23 = v7;
          v24 = 2112;
          v25 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "account=%@; tx+rx=%@", buf, 0x16u);
        }

        v20[0] = @"account";
        v20[1] = @"tx+rx";
        if (v8)
        {
          v11 = v8;
        }

        else
        {
          v11 = &off_100163388;
        }

        v21[0] = v7;
        v21[1] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
        [MFPowerController powerlog:@"MBL" eventData:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v4);
  }

  if (statsCopy)
  {
    bytesPerAccount = self->_bytesPerAccount;
    self->_bytesPerAccount = 0;
  }
}

- (void)assertionDidExpire
{
  v3 = +[MessageBodyLoader log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1000D3B34();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000442E4;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)systemDidWake
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000445AC;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_cancelSleepIfNeeded
{
  resumeTime = self->_resumeTime;
  if (resumeTime)
  {
    v4 = +[NSDate date];
    v5 = [v4 earlierDate:self->_resumeTime];

    if (resumeTime == v5)
    {
      [(MessageBodyLoader *)self _clearResumeTime];
      self->_isPaused = 0;
    }
  }
}

- (void)_clearResumeTime
{
  resumeTime = self->_resumeTime;
  if (resumeTime)
  {
    v6[0] = @"cancelledExpiration";
    v6[1] = @"resumeTimeWas";
    v7[0] = &off_1001633A0;
    v7[1] = resumeTime;
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
    [MFPowerController powerlog:@"MBL" eventData:v4];

    v5 = self->_resumeTime;
    self->_resumeTime = 0;
  }
}

- (void)_retainPowerAssertion
{
  if ((*(self + 120) & 8) == 0)
  {
    v3 = +[MFPowerController sharedInstance];
    [v3 retainAssertionWithIdentifier:@"com.apple.mobilemail.messagebodyloader"];

    *(self + 120) |= 8u;
  }
}

- (void)_releasePowerAssertion
{
  if ((*(self + 120) & 8) != 0)
  {
    v3 = +[MFPowerController sharedInstance];
    [v3 releaseAssertionWithIdentifier:@"com.apple.mobilemail.messagebodyloader"];

    *(self + 120) &= ~8u;
  }
}

@end