@interface MFLibraryCompressionActivityManager
+ (id)log;
+ (void)_registerLibraryCompressionRequiringClassA:(BOOL)a3;
+ (void)scheduleLibraryCompressionIfNeededRequiringClassA:(id)a3;
@end

@implementation MFLibraryCompressionActivityManager

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006AD20;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_1001858A0 != -1)
  {
    dispatch_once(&qword_1001858A0, block);
  }

  v2 = qword_100185898;

  return v2;
}

+ (void)scheduleLibraryCompressionIfNeededRequiringClassA:(id)a3
{
  v4 = a3;
  if (+[MFLibraryCompressor libraryCompressionComplete])
  {
    v5 = +[MFLibraryCompressionActivityManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Library upgrade compression has not been scheduled. (Not needed)", v7, 2u);
    }

    [a1 _unregisterXPCActivity];
  }

  else
  {
    v6 = +[MFLibraryCompressionActivityManager log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Library upgrade compression has been scheduled.", buf, 2u);
    }

    [a1 _registerLibraryCompressionRequiringClassA:v4[2](v4)];
  }
}

+ (void)_registerLibraryCompressionRequiringClassA:(BOOL)a3
{
  v5 = [MFLibraryCompressor alloc];
  v6 = +[MailAccount allMailboxUids];
  v7 = [(MFLibraryCompressor *)v5 initWithMailboxUIDs:v6];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006B034;
  v14[3] = &unk_100158AD0;
  v15 = a3;
  v8 = objc_retainBlock(v14);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006B13C;
  v11[3] = &unk_1001576B8;
  v12 = v7;
  v13 = a1;
  v9 = v7;
  v10 = objc_retainBlock(v11);
  ef_xpc_activity_register();
}

@end