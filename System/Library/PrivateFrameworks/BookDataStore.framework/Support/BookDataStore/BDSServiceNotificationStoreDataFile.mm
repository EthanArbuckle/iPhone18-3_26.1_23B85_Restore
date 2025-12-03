@interface BDSServiceNotificationStoreDataFile
+ (NSURL)defaultDataURL;
+ (id)sharedInstance;
- (BDSServiceNotificationStoreDataFile)init;
- (id)load;
- (void)save:(id)save;
@end

@implementation BDSServiceNotificationStoreDataFile

+ (id)sharedInstance
{
  if (qword_100274A18 != -1)
  {
    sub_1001BE078();
  }

  v3 = qword_100274A20;

  return v3;
}

- (BDSServiceNotificationStoreDataFile)init
{
  v7.receiver = self;
  v7.super_class = BDSServiceNotificationStoreDataFile;
  v2 = [(BDSServiceNotificationStoreDataFile *)&v7 init];
  if (v2)
  {
    v3 = +[BDSServiceNotificationStoreDataFile defaultDataURL];
    v4 = [[BDSSimpleDataFile alloc] initWithURL:v3];
    dataFile = v2->_dataFile;
    v2->_dataFile = v4;
  }

  return v2;
}

- (id)load
{
  dataFile = [(BDSServiceNotificationStoreDataFile *)self dataFile];
  v11 = 0;
  v3 = [dataFile load:&v11];
  v4 = v11;

  if (v4)
  {
    v5 = sub_1000023E8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001BE08C();
    }

LABEL_4:
    v6 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    v5 = sub_1000023E8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Didn't find notification store data file, starting fresh.", buf, 2u);
    }

    goto LABEL_4;
  }

  v10 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
  v5 = v10;
  v7 = sub_1000023E8();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loaded notification store data read from disk: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001BE0F4();
  }

LABEL_14:

  return v6;
}

- (void)save:(id)save
{
  saveCopy = save;
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 setOutputFormat:200];
  [v5 encodeObject:saveCopy forKey:NSKeyedArchiveRootObjectKey];

  encodedData = [v5 encodedData];
  dataFile = [(BDSServiceNotificationStoreDataFile *)self dataFile];
  v17 = 0;
  v8 = [dataFile save:encodedData error:&v17];
  v9 = v17;

  v10 = sub_1000023E8();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully saved notification store data.", buf, 2u);
    }

LABEL_10:

    v14 = v9;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1001BE15C();
  }

  dataFile2 = [(BDSServiceNotificationStoreDataFile *)self dataFile];
  v15 = v9;
  v13 = [dataFile2 remove:&v15];
  v14 = v15;

  if ((v13 & 1) == 0)
  {
    v11 = sub_1000023E8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BE1C4();
    }

    v9 = v14;
    goto LABEL_10;
  }

LABEL_11:
}

+ (NSURL)defaultDataURL
{
  if (qword_100274A30 != -1)
  {
    sub_1001BE22C();
  }

  v3 = qword_100274A28;

  return v3;
}

@end