@interface NSSKeyedArchiverUtil
+ (BOOL)archiveObject:(id)object toFile:(id)file options:(unint64_t)options error:(id *)error;
+ (id)archiveObject:(id)object;
+ (id)unarchiveObjectOfClasses:(id)classes withData:(id)data;
+ (id)unarchiveObjectOfClasses:(id)classes withFile:(id)file;
@end

@implementation NSSKeyedArchiverUtil

+ (id)unarchiveObjectOfClasses:(id)classes withFile:(id)file
{
  classesCopy = classes;
  fileCopy = file;
  v13 = 0;
  v8 = [NSData dataWithContentsOfFile:fileCopy options:0 error:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = NSSLogForType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
    v12 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:classesCopy fromData:dataCopy error:&v12];
    v8 = v12;
    if (v8)
    {
      v9 = NSSLogForType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy length]);
        *buf = 138412802;
        v14 = v8;
        v15 = 2112;
        v16 = classesCopy;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error (%@) unarchiving expected classes (%@) with (%@) bytes data", buf, 0x20u);
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
    v10 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v10];
    v5 = v10;
    if (v5)
    {
      v6 = NSSLogForType();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error (%@) archiving (%@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)archiveObject:(id)object toFile:(id)file options:(unint64_t)options error:(id *)error
{
  fileCopy = file;
  v11 = [self archiveObject:object];
  LOBYTE(error) = [v11 writeToFile:fileCopy options:options error:error];

  return error;
}

@end