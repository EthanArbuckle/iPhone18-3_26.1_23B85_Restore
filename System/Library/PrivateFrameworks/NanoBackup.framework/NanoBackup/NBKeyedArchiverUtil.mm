@interface NBKeyedArchiverUtil
+ (id)archiveObject:(id)a3;
+ (id)unarchiveObjectOfClasses:(id)a3 withData:(id)a4;
+ (id)unarchiveObjectOfClasses:(id)a3 withFile:(id)a4;
@end

@implementation NBKeyedArchiverUtil

+ (id)unarchiveObjectOfClasses:(id)a3 withFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v8 = [NSData dataWithContentsOfFile:v7 options:0 error:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error (%@) reading data from (%@)", buf, 0x16u);
    }
  }

  if (v8)
  {
    v11 = [a1 unarchiveObjectOfClasses:v6 withData:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)unarchiveObjectOfClasses:(id)a3 withData:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v13 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v6 error:&v13];
    v8 = v13;
    if (v8)
    {
      v9 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 length]);
        *buf = 138412802;
        v15 = v8;
        v16 = 2112;
        v17 = v5;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error (%@) unarchiving expected classes (%@) with (%@) bytes data", buf, 0x20u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)archiveObject:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v11 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v11];
    v5 = v11;
    if (v5)
    {
      v6 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error (%@) archiving (%@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end