@interface NPSKeyedArchiverUtil
+ (id)archiveObject:(id)object;
+ (id)unarchiveObjectOfClasses:(id)classes withData:(id)data;
+ (id)unarchiveObjectOfClasses:(id)classes withFile:(id)file;
@end

@implementation NPSKeyedArchiverUtil

+ (id)unarchiveObjectOfClasses:(id)classes withFile:(id)file
{
  classesCopy = classes;
  fileCopy = file;
  v13 = 0;
  v8 = [NSData dataWithContentsOfFile:fileCopy options:0 error:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = fileCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error (%@) reading data from (%@)", buf, 0x16u);
    }
  }

  if (v8)
  {
    v11 = [self unarchiveObjectOfClasses:classesCopy withData:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)unarchiveObjectOfClasses:(id)classes withData:(id)data
{
  classesCopy = classes;
  dataCopy = data;
  if (dataCopy)
  {
    v13 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:classesCopy fromData:dataCopy error:&v13];
    v8 = v13;
    if (v8)
    {
      v9 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy length]);
        *buf = 138412802;
        v15 = v8;
        v16 = 2112;
        v17 = classesCopy;
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

+ (id)archiveObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v11 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v11];
    v5 = v11;
    if (v5)
    {
      v6 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
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