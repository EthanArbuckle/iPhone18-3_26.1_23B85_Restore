@interface MRDProactivePrepareForSetQueueSender
- (MRDProactivePrepareForSetQueueSender)init;
- (id)systemMediaAppPlayerPathForNotification:(id)notification;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification;
- (void)_initialize;
- (void)_onQueue_sendPrepareForSetQueueTo:(id)to reason:(id)reason type:(int64_t)type;
- (void)dealloc;
- (void)handleFirstLaunchAfterBootIfNeeded;
- (void)registerForChanges;
- (void)unregisterForChanges;
@end

@implementation MRDProactivePrepareForSetQueueSender

- (MRDProactivePrepareForSetQueueSender)init
{
  v9.receiver = self;
  v9.super_class = MRDProactivePrepareForSetQueueSender;
  v2 = [(MRDProactivePrepareForSetQueueSender *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(Name, v5);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    [(MRDProactivePrepareForSetQueueSender *)v2 _initialize];
  }

  return v2;
}

- (void)_initialize
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDPPFSQS] <%p> Initializing", &v4, 0xCu);
  }

  [(MRDProactivePrepareForSetQueueSender *)self handleFirstLaunchAfterBootIfNeeded];
  [(MRDProactivePrepareForSetQueueSender *)self registerForChanges];
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDPPFSQS] <%p> Deallocating.", buf, 0xCu);
  }

  [(MRDProactivePrepareForSetQueueSender *)self unregisterForChanges];
  v4.receiver = self;
  v4.super_class = MRDProactivePrepareForSetQueueSender;
  [(MRDProactivePrepareForSetQueueSender *)&v4 dealloc];
}

- (void)registerForChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];
}

- (void)unregisterForChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016F688;
  v7[3] = &unk_1004B68F0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (id)systemMediaAppPlayerPathForNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:kMROriginActiveNowPlayingPlayerPathUserInfoKey];

  userInfo2 = [notificationCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];

  origin = [v5 origin];
  if (origin)
  {
    origin2 = origin;
LABEL_4:
    v10 = [MRClient alloc];
    v11 = [v10 initWithBundleIdentifier:kMRMediaRemoteSystemMediaApplicationDisplayIdentifier];
    v12 = [[MRPlayerPath alloc] initWithOrigin:origin2 client:v11 player:0];

    goto LABEL_5;
  }

  origin2 = [v7 origin];
  if (origin2)
  {
    goto LABEL_4;
  }

  v12 = 0;
LABEL_5:

  return v12;
}

- (void)handleFirstLaunchAfterBootIfNeeded
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016FB98;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  if (qword_1005295A0 != -1)
  {
    dispatch_once(&qword_1005295A0, block);
  }
}

- (void)_onQueue_sendPrepareForSetQueueTo:(id)to reason:(id)reason type:(int64_t)type
{
  toCopy = to;
  reasonCopy = reason;
  v22[0] = kMRMediaRemoteOptionPrepareForSetQueueIsProactive;
  v22[1] = kMRMediaRemoteOptionPrepareForSetQueueProactiveReason;
  v23[0] = &__kCFBooleanTrue;
  v23[1] = reasonCopy;
  v22[2] = MRMediaRemoteOptionPrepareForSetQueueProactiveReasonType;
  v9 = [NSNumber numberWithInteger:type];
  v23[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

  v11 = +[NSDate date];
  reasonCopy = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"proactivePrepareForSetQueue", reasonCopy];
  v13 = reasonCopy;
  if (toCopy)
  {
    [reasonCopy appendFormat:@" for %@", toCopy];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v15 = dispatch_get_global_queue(0, 0);
  v18 = reasonCopy;
  v19 = v11;
  v16 = v11;
  v17 = reasonCopy;
  MRMediaRemoteSendCommandToPlayerWithResult();
}

@end