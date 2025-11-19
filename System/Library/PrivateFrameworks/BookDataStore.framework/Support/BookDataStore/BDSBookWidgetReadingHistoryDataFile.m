@interface BDSBookWidgetReadingHistoryDataFile
+ (BDSBookWidgetReadingHistoryDataFile)sharedInstance;
+ (NSURL)defaultDataURL;
- (BDSBookWidgetReadingHistoryDataFile)init;
- (id)load;
- (void)save:(id)a3;
@end

@implementation BDSBookWidgetReadingHistoryDataFile

+ (BDSBookWidgetReadingHistoryDataFile)sharedInstance
{
  if (qword_1002748F0 != -1)
  {
    sub_1001BD54C();
  }

  v3 = qword_1002748F8;

  return v3;
}

- (BDSBookWidgetReadingHistoryDataFile)init
{
  v7.receiver = self;
  v7.super_class = BDSBookWidgetReadingHistoryDataFile;
  v2 = [(BDSBookWidgetReadingHistoryDataFile *)&v7 init];
  if (v2)
  {
    v3 = +[BDSBookWidgetReadingHistoryDataFile defaultDataURL];
    v4 = [[BDSSharedDataFile alloc] initWithURL:v3];
    dataFile = v2->_dataFile;
    v2->_dataFile = v4;
  }

  return v2;
}

- (id)load
{
  v2 = [(BDSBookWidgetReadingHistoryDataFile *)self dataFile];
  v11 = 0;
  v3 = [v2 load:&v11];
  v4 = v11;

  if (v4)
  {
    v5 = sub_10000DE28();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD560();
    }

LABEL_4:
    v6 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    v5 = sub_10000DE28();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Didn't find widget reading history data file, starting fresh.", buf, 2u);
    }

    goto LABEL_4;
  }

  v10 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
  v5 = v10;
  v7 = sub_10000DE28();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loaded widget reading history data read from disk: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001BD5C8();
  }

LABEL_14:

  return v6;
}

- (void)save:(id)a3
{
  v4 = a3;
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 setOutputFormat:200];
  [v5 encodeObject:v4 forKey:NSKeyedArchiveRootObjectKey];

  v6 = [v5 encodedData];
  v7 = [(BDSBookWidgetReadingHistoryDataFile *)self dataFile];
  v17 = 0;
  v8 = [v7 save:v6 error:&v17];
  v9 = v17;

  v10 = sub_10000DE28();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully saved widget reading history data.", buf, 2u);
    }

LABEL_10:

    v14 = v9;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1001BD630();
  }

  v12 = [(BDSBookWidgetReadingHistoryDataFile *)self dataFile];
  v15 = v9;
  v13 = [v12 remove:&v15];
  v14 = v15;

  if ((v13 & 1) == 0)
  {
    v11 = sub_10000DE28();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD698();
    }

    v9 = v14;
    goto LABEL_10;
  }

LABEL_11:
}

+ (NSURL)defaultDataURL
{
  if (qword_100274908 != -1)
  {
    sub_1001BD700();
  }

  v3 = qword_100274900;

  return v3;
}

@end