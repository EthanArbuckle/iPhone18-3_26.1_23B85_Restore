@interface MFUserSyncStakeholder
+ (id)sharedStakeholder;
- (MFUserSyncStakeholder)init;
- (void)_networkConfigurationChanged:(id)a3;
- (void)_processingDidFinish:(id)a3;
- (void)_processingDidStart:(id)a3;
- (void)createAndStartTask;
- (void)endTask;
- (void)printDeliveryQueue;
- (void)processQueueAndExit;
- (void)uploadContent;
- (void)willSwitchUser;
@end

@implementation MFUserSyncStakeholder

- (MFUserSyncStakeholder)init
{
  v11.receiver = self;
  v11.super_class = MFUserSyncStakeholder;
  v2 = [(MFUserSyncStakeholder *)&v11 init];
  if (v2)
  {
    v3 = +[UMUserManager sharedManager];
    v4 = [v3 currentUser];
    v5 = [v4 uid];
    v2->_runningInSyncBubble = v5 != getuid();

    if (v2->_runningInSyncBubble)
    {
      v6 = [EFProcessTransaction transactionWithDescription:@"com.apple.mail.stakeholder-initialization"];
      +[MailAccount reloadAccounts];
      v7 = +[NSNotificationCenter defaultCenter];
      v8 = +[MFNetworkController sharedInstance];
      [v7 addObserver:v2 selector:"_networkConfigurationChanged:" name:NetworkConfigurationDidChangeNotification object:v8];

      [v7 addObserver:v2 selector:"_processingDidStart:" name:@"MFDeliveryQueueProcessingStartedNotification" object:0];
      [v7 addObserver:v2 selector:"_processingDidFinish:" name:@"MFDeliveryQueueProcessingFinishedNotification" object:0];
    }

    v9 = v2;
  }

  return v2;
}

+ (id)sharedStakeholder
{
  if (qword_100185AF8 != -1)
  {
    sub_1000D59E4();
  }

  v3 = qword_100185AF0;

  return v3;
}

- (void)createAndStartTask
{
  if (self->_task)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MFUserSyncStakeholder.m" lineNumber:70 description:@"task already exists!"];
  }

  v3 = [UMUserSyncTask taskWithName:@"mail delivery" reason:@"client requested" forBundleID:kMFMobileMailBundleIdentifier];
  task = self->_task;
  self->_task = v3;

  v5 = self->_task;

  [(UMUserSyncTask *)v5 begin];
}

- (void)endTask
{
  [(UMUserSyncTask *)self->_task end];
  task = self->_task;
  self->_task = 0;
}

- (void)uploadContent
{
  if (self->_task)
  {
    v2 = MFLogGeneral();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[MFUserSyncStakeholder uploadContent]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: task already exists", &v7, 0xCu);
    }
  }

  else
  {
    v2 = +[MFDeliveryQueue sharedDeliveryQueue];
    v4 = [v2 numberOfPendingMessages];
    if (v4)
    {
      v5 = MFLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 136315394;
        v8 = "[MFUserSyncStakeholder uploadContent]";
        v9 = 2048;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: creating sync task for %lu messages", &v7, 0x16u);
      }

      [(MFUserSyncStakeholder *)self createAndStartTask];
      v6 = +[MFDeliveryQueue sharedDeliveryQueue];
      [v6 processQueueAndPlaySoundOnSuccess:0 forceAll:1];
    }

    else
    {
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[MFUserSyncStakeholder uploadContent]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: no pending messages found", &v7, 0xCu);
      }
    }
  }
}

- (void)willSwitchUser
{
  if (!self->_runningInSyncBubble)
  {
    v4 = +[MFDeliveryQueue sharedDeliveryQueue];
    if (([v4 isBusy] & 1) != 0 || objc_msgSend(v4, "numberOfPendingMessages"))
    {
      [(MFUserSyncStakeholder *)self createAndStartTask];
    }

    else
    {
      v3 = +[UMUserManager sharedManager];
      [v3 unregisterStakeHolder:self status:0 reason:@"willSwitchUser"];
    }
  }
}

- (void)printDeliveryQueue
{
  v3 = +[MFDeliveryQueue sharedDeliveryQueue];
  v2 = [v3 copyDiagnosticInformation];

  puts([v2 UTF8String]);
}

- (void)processQueueAndExit
{
  v3 = +[MFDeliveryQueue sharedDeliveryQueue];
  if (![v3 numberOfPendingMessages])
  {
    exit(0);
  }

  self->_exitWhenDone = 1;
  [(MFUserSyncStakeholder *)self uploadContent];
}

- (void)_networkConfigurationChanged:(id)a3
{
  v3 = +[MFNetworkController sharedInstance];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 isNetworkUp];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#Network network %@", &v7, 0xCu);
  }
}

- (void)_processingDidStart:(id)a3
{
  v4 = [EFProcessTransaction transactionWithDescription:@"com.apple.mail.stakeholder-processing"];
  transaction = self->_transaction;
  self->_transaction = v4;
}

- (void)_processingDidFinish:(id)a3
{
  v5 = a3;
  [(MFUserSyncStakeholder *)self endTask];
  [(EFProcessTransaction *)self->_transaction invalidate];
  transaction = self->_transaction;
  self->_transaction = 0;

  if (self->_exitWhenDone)
  {
    exit(0);
  }
}

@end