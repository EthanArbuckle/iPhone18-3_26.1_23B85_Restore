@interface MFUserNotificationSoundController
+ (id)log;
- (MFUserNotificationSoundController)initWithUserNotificationCenterObserver:(id)observer systemUserNotificationCenter:(id)center;
- (void)_autoFetchFinished:(id)finished;
- (void)_autoFetchJobCompleted:(id)completed;
- (void)_autoFetchPushFinished:(id)finished;
- (void)_autoFetchPushStarted:(id)started;
- (void)_autoFetchStarted:(id)started;
- (void)_fetchFinished:(id)finished timestamp:(unint64_t)timestamp;
- (void)_fetchJobCompleted:(id)completed autoFetchData:(id)data;
- (void)addRemindMeSoundForNotificationContent:(id)content;
- (void)addSoundForAccountIfNecessaryForNotificationContent:(id)content notificationMessage:(id)message;
@end

@implementation MFUserNotificationSoundController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9B0C;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185AD8 != -1)
  {
    dispatch_once(&qword_100185AD8, block);
  }

  v2 = qword_100185AD0;

  return v2;
}

- (MFUserNotificationSoundController)initWithUserNotificationCenterObserver:(id)observer systemUserNotificationCenter:(id)center
{
  observerCopy = observer;
  centerCopy = center;
  v21.receiver = self;
  v21.super_class = MFUserNotificationSoundController;
  v9 = [(MFUserNotificationSoundController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observer, observer);
    v11 = objc_alloc_init(NSLock);
    fetchSoundDataLock = v10->_fetchSoundDataLock;
    v10->_fetchSoundDataLock = v11;

    v13 = objc_alloc_init(NSMutableArray);
    pushFetchTimestamps = v10->_pushFetchTimestamps;
    v10->_pushFetchTimestamps = v13;

    objc_storeStrong(&v10->_systemUserNotificationCenter, center);
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v10 selector:"_autoFetchStarted:" name:@"AutoFetchProcessStartNotification" object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v10 selector:"_autoFetchJobCompleted:" name:@"AutoFetchProcessJobCompletedNotification" object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v10 selector:"_autoFetchFinished:" name:@"AutoFetchProcessFinishedNotification" object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v10 selector:"_autoFetchPushStarted:" name:@"AutoFetchPushStartedNotification" object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v10 selector:"_autoFetchPushFinished:" name:@"AutoFetchPushCompletedNotification" object:0];
  }

  return v10;
}

- (void)addSoundForAccountIfNecessaryForNotificationContent:(id)content notificationMessage:(id)message
{
  contentCopy = content;
  v23[0] = MSUserNotificationCenterTopicFavoriteMailboxes;
  v23[1] = MSUserNotificationCenterTopicNotifiedThreads;
  v23[2] = MSUserNotificationCenterTopicVIP;
  v23[3] = MSUserNotificationCenterTopicPrimary;
  v5 = [NSArray arrayWithObjects:v23 count:4];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000AA06C;
  v21 = sub_1000AA07C;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AA084;
  v14[3] = &unk_10015A348;
  v6 = contentCopy;
  v15 = v6;
  v16 = &v17;
  [v5 enumerateObjectsUsingBlock:v14];
  if (!v18[5])
  {
    userInfo = [v6 userInfo];
    v8 = [userInfo objectForKeyedSubscript:MSUserNotificationContentKeyAccountReference];
    v9 = v18[5];
    v18[5] = v8;
  }

  v10 = MSUserNotificationsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Sound Controller: Auto fetch notification will notify user of new mail.", v13, 2u);
  }

  v11 = [UNNotificationSound soundWithAlertType:5];
  v12 = [v11 mutableCopy];

  [v12 setAlertTopic:v18[5]];
  [v6 setSound:v12];

  _Block_object_dispose(&v17, 8);
}

- (void)addRemindMeSoundForNotificationContent:(id)content
{
  contentCopy = content;
  v3 = [UNNotificationSound soundWithAlertType:11];
  v4 = [v3 mutableCopy];

  [v4 setAlertTopic:MSUserNotificationCenterTopicVIP];
  [contentCopy setSound:v4];
}

- (void)_autoFetchStarted:(id)started
{
  v4 = +[MFUserNotificationSoundController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D56BC();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AA2D0;
  v6[3] = &unk_100156400;
  v6[4] = self;
  v5 = +[EFScheduler mainThreadScheduler];
  [v5 performBlock:v6];
}

- (void)_fetchJobCompleted:(id)completed autoFetchData:(id)data
{
  dataCopy = data;
  userInfo = [completed userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"AutoFetchJobNewMessagesState"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v9 = [userInfo objectForKeyedSubscript:@"AutoFetchJobAccount"];
    currentAccountIDOfSoundToPlay = [dataCopy currentAccountIDOfSoundToPlay];

    if (!currentAccountIDOfSoundToPlay)
    {
      uniqueID = [v9 uniqueID];
      [dataCopy setCurrentAccountIDOfSoundToPlay:uniqueID];
    }

    v12 = [userInfo objectForKeyedSubscript:@"AutoFetchJobMailboxUid"];
    [dataCopy setMailbox:v12];
    type = [v12 type];
    loudestState = [dataCopy loudestState];
    v15 = 4;
    if (type == 7)
    {
      v15 = unsignedIntegerValue;
    }

    if (loudestState <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = loudestState;
    }

    [dataCopy setLoudestState:v16];
    observer = [(MFUserNotificationSoundController *)self observer];
    uniqueID2 = [v9 uniqueID];
    v19 = [observer isObservingMailbox:v12 inAccountID:uniqueID2];

    if (v19)
    {
      [dataCopy setNotificationExpectedFromFetch:1];
    }
  }
}

- (void)_autoFetchJobCompleted:(id)completed
{
  completedCopy = completed;
  v5 = +[MFUserNotificationSoundController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D5734();
  }

  selfCopy = self;
  v6 = completedCopy;
  v10 = v6;
  v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v7 performBlock:&v8];
}

- (void)_fetchFinished:(id)finished timestamp:(unint64_t)timestamp
{
  finishedCopy = finished;
  if ([finishedCopy loudestState])
  {
    if (![finishedCopy notificationExpectedFromFetch])
    {
      mailbox = [finishedCopy mailbox];
      uRLString = [mailbox URLString];

      if (uRLString)
      {
        v9 = [NSMutableDictionary alloc];
        v19[0] = MSNewNotificationSoundKeySuppressionContexts;
        v10 = [NSSet setWithObject:uRLString];
        v20[0] = v10;
        v19[1] = MSNewNotificationSoundKeyLoudestState;
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [finishedCopy loudestState]);
        v20[1] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
        v13 = [v9 initWithDictionary:v12];

        currentAccountIDOfSoundToPlay = [finishedCopy currentAccountIDOfSoundToPlay];
        if (currentAccountIDOfSoundToPlay)
        {
          [v13 setObject:currentAccountIDOfSoundToPlay forKeyedSubscript:MSNewNotificationSoundKeyAccountIDOfSoundToPlay];
        }

        else
        {
          v15 = MFAutoFetchLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000D57AC(finishedCopy, v15);
          }
        }

        v16 = +[NSNotificationCenter defaultCenter];
        v17 = [v13 copy];
        [v16 postNotificationName:MSNewNotificationSound object:self userInfo:v17];
      }

      goto LABEL_19;
    }

    if ([finishedCopy loudestState] == 3)
    {
      v6 = &MSUserNotificationCenterTopicNotifiedThreads;
    }

    else if ([finishedCopy loudestState] == 2)
    {
      v6 = &MSUserNotificationCenterTopicVIP;
    }

    else
    {
      if ([finishedCopy loudestState] != 4)
      {
        goto LABEL_13;
      }

      v6 = &MSUserNotificationCenterTopicFavoriteMailboxes;
    }

    [finishedCopy setCurrentAccountIDOfSoundToPlay:*v6];
LABEL_13:
    uRLString = MFAutoFetchLog();
    if (os_log_type_enabled(uRLString, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, uRLString, OS_LOG_TYPE_INFO, "Sound Controller: Push fetch saving notification of new mail.", v18, 2u);
    }

LABEL_19:
  }
}

- (void)_autoFetchFinished:(id)finished
{
  v4 = +[MFUserNotificationSoundController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D5824();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AAAF4;
  v6[3] = &unk_100156400;
  v6[4] = self;
  v5 = +[EFScheduler mainThreadScheduler];
  [v5 performBlock:v6];
}

- (void)_autoFetchPushStarted:(id)started
{
  startedCopy = started;
  v5 = +[MFUserNotificationSoundController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D589C();
  }

  v6 = startedCopy;
  v9 = v6;
  selfCopy = self;
  v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v7 performBlock:&v8];
}

- (void)_autoFetchPushFinished:(id)finished
{
  finishedCopy = finished;
  v5 = +[MFUserNotificationSoundController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D5914();
  }

  v6 = finishedCopy;
  v9 = v6;
  selfCopy = self;
  v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v7 performBlock:&v8];
}

@end