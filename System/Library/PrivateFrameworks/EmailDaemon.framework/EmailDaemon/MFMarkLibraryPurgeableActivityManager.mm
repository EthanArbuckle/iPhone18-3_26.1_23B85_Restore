@interface MFMarkLibraryPurgeableActivityManager
+ (OS_os_log)log;
+ (void)_registerLibraryPurgeableUpgraderRequiringClassA:(BOOL)a;
+ (void)scheduleIfNeededRequiringClassA:(id)a;
@end

@implementation MFMarkLibraryPurgeableActivityManager

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071A3C;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185900 != -1)
  {
    dispatch_once(&qword_100185900, block);
  }

  v2 = qword_1001858F8;

  return v2;
}

+ (void)scheduleIfNeededRequiringClassA:(id)a
{
  aCopy = a;
  if (+[MFMarkLibraryPurgeableUpgrader isComplete])
  {
    v5 = +[MFMarkLibraryPurgeableActivityManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Library purgeable upgrader has not been scheduled. (Not needed)", v7, 2u);
    }

    [self _unregisterXPCActivity];
  }

  else
  {
    v6 = +[MFMarkLibraryPurgeableActivityManager log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Library purgeable upgrader has been scheduled.", buf, 2u);
    }

    [self _registerLibraryPurgeableUpgraderRequiringClassA:aCopy[2](aCopy)];
  }
}

+ (void)_registerLibraryPurgeableUpgraderRequiringClassA:(BOOL)a
{
  v5 = [MFMarkLibraryPurgeableUpgrader alloc];
  v6 = +[MailAccount allPurgeableMailboxUids];
  v7 = [(MFMarkLibraryPurgeableUpgrader *)v5 initWithMailboxUIDs:v6];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100071D50;
  v14[3] = &unk_100158AD0;
  aCopy = a;
  v8 = objc_retainBlock(v14);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100071E58;
  v11[3] = &unk_1001576B8;
  v12 = v7;
  selfCopy = self;
  v9 = v7;
  v10 = objc_retainBlock(v11);
  ef_xpc_activity_register();
}

@end