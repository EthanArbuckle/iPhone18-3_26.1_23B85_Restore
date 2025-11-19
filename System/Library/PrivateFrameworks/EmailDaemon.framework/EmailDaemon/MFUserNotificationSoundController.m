@interface MFUserNotificationSoundController
+ (id)log;
- (MFUserNotificationSoundController)initWithUserNotificationCenterObserver:(id)a3 systemUserNotificationCenter:(id)a4;
- (void)_autoFetchFinished:(id)a3;
- (void)_autoFetchJobCompleted:(id)a3;
- (void)_autoFetchPushFinished:(id)a3;
- (void)_autoFetchPushStarted:(id)a3;
- (void)_autoFetchStarted:(id)a3;
- (void)_fetchFinished:(id)a3 timestamp:(unint64_t)a4;
- (void)_fetchJobCompleted:(id)a3 autoFetchData:(id)a4;
- (void)addRemindMeSoundForNotificationContent:(id)a3;
- (void)addSoundForAccountIfNecessaryForNotificationContent:(id)a3 notificationMessage:(id)a4;
@end

@implementation MFUserNotificationSoundController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9B0C;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185AD8 != -1)
  {
    dispatch_once(&qword_100185AD8, block);
  }

  v2 = qword_100185AD0;

  return v2;
}

- (MFUserNotificationSoundController)initWithUserNotificationCenterObserver:(id)a3 systemUserNotificationCenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = MFUserNotificationSoundController;
  v9 = [(MFUserNotificationSoundController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observer, a3);
    v11 = objc_alloc_init(NSLock);
    fetchSoundDataLock = v10->_fetchSoundDataLock;
    v10->_fetchSoundDataLock = v11;

    v13 = objc_alloc_init(NSMutableArray);
    pushFetchTimestamps = v10->_pushFetchTimestamps;
    v10->_pushFetchTimestamps = v13;

    objc_storeStrong(&v10->_systemUserNotificationCenter, a4);
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

- (void)addSoundForAccountIfNecessaryForNotificationContent:(id)a3 notificationMessage:(id)a4
{
  v4 = a3;
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
  v6 = v4;
  v15 = v6;
  v16 = &v17;
  [v5 enumerateObjectsUsingBlock:v14];
  if (!v18[5])
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:MSUserNotificationContentKeyAccountReference];
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

- (void)addRemindMeSoundForNotificationContent:(id)a3
{
  v5 = a3;
  v3 = [UNNotificationSound soundWithAlertType:11];
  v4 = [v3 mutableCopy];

  [v4 setAlertTopic:MSUserNotificationCenterTopicVIP];
  [v5 setSound:v4];
}

- (void)_autoFetchStarted:(id)a3
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

- (void)_fetchJobCompleted:(id)a3 autoFetchData:(id)a4
{
  v20 = a4;
  v6 = [a3 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"AutoFetchJobNewMessagesState"];
  v8 = [v7 unsignedIntegerValue];

  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"AutoFetchJobAccount"];
    v10 = [v20 currentAccountIDOfSoundToPlay];

    if (!v10)
    {
      v11 = [v9 uniqueID];
      [v20 setCurrentAccountIDOfSoundToPlay:v11];
    }

    v12 = [v6 objectForKeyedSubscript:@"AutoFetchJobMailboxUid"];
    [v20 setMailbox:v12];
    v13 = [v12 type];
    v14 = [v20 loudestState];
    v15 = 4;
    if (v13 == 7)
    {
      v15 = v8;
    }

    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    [v20 setLoudestState:v16];
    v17 = [(MFUserNotificationSoundController *)self observer];
    v18 = [v9 uniqueID];
    v19 = [v17 isObservingMailbox:v12 inAccountID:v18];

    if (v19)
    {
      [v20 setNotificationExpectedFromFetch:1];
    }
  }
}

- (void)_autoFetchJobCompleted:(id)a3
{
  v4 = a3;
  v5 = +[MFUserNotificationSoundController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D5734();
  }

  v9 = self;
  v6 = v4;
  v10 = v6;
  v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v7 performBlock:&v8];
}

- (void)_fetchFinished:(id)a3 timestamp:(unint64_t)a4
{
  v5 = a3;
  if ([v5 loudestState])
  {
    if (![v5 notificationExpectedFromFetch])
    {
      v7 = [v5 mailbox];
      v8 = [v7 URLString];

      if (v8)
      {
        v9 = [NSMutableDictionary alloc];
        v19[0] = MSNewNotificationSoundKeySuppressionContexts;
        v10 = [NSSet setWithObject:v8];
        v20[0] = v10;
        v19[1] = MSNewNotificationSoundKeyLoudestState;
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 loudestState]);
        v20[1] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
        v13 = [v9 initWithDictionary:v12];

        v14 = [v5 currentAccountIDOfSoundToPlay];
        if (v14)
        {
          [v13 setObject:v14 forKeyedSubscript:MSNewNotificationSoundKeyAccountIDOfSoundToPlay];
        }

        else
        {
          v15 = MFAutoFetchLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000D57AC(v5, v15);
          }
        }

        v16 = +[NSNotificationCenter defaultCenter];
        v17 = [v13 copy];
        [v16 postNotificationName:MSNewNotificationSound object:self userInfo:v17];
      }

      goto LABEL_19;
    }

    if ([v5 loudestState] == 3)
    {
      v6 = &MSUserNotificationCenterTopicNotifiedThreads;
    }

    else if ([v5 loudestState] == 2)
    {
      v6 = &MSUserNotificationCenterTopicVIP;
    }

    else
    {
      if ([v5 loudestState] != 4)
      {
        goto LABEL_13;
      }

      v6 = &MSUserNotificationCenterTopicFavoriteMailboxes;
    }

    [v5 setCurrentAccountIDOfSoundToPlay:*v6];
LABEL_13:
    v8 = MFAutoFetchLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Sound Controller: Push fetch saving notification of new mail.", v18, 2u);
    }

LABEL_19:
  }
}

- (void)_autoFetchFinished:(id)a3
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

- (void)_autoFetchPushStarted:(id)a3
{
  v4 = a3;
  v5 = +[MFUserNotificationSoundController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D589C();
  }

  v6 = v4;
  v9 = v6;
  v10 = self;
  v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v7 performBlock:&v8];
}

- (void)_autoFetchPushFinished:(id)a3
{
  v4 = a3;
  v5 = +[MFUserNotificationSoundController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D5914();
  }

  v6 = v4;
  v9 = v6;
  v10 = self;
  v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v7 performBlock:&v8];
}

@end