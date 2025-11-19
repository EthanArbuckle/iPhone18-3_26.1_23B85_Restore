@interface BDSBookWidgetDataFile
+ (NSURL)defaultDataURL;
+ (id)sharedInstance;
- (BDSBookWidgetDataFile)init;
- (id)load;
- (void)save:(id)a3;
@end

@implementation BDSBookWidgetDataFile

+ (id)sharedInstance
{
  if (qword_1002749A0 != -1)
  {
    sub_1001BD830();
  }

  v3 = qword_1002749A8;

  return v3;
}

- (BDSBookWidgetDataFile)init
{
  v7.receiver = self;
  v7.super_class = BDSBookWidgetDataFile;
  v2 = [(BDSBookWidgetDataFile *)&v7 init];
  if (v2)
  {
    v3 = +[BDSBookWidgetDataFile defaultDataURL];
    v4 = [[BDSSharedDataFile alloc] initWithURL:v3];
    dataFile = v2->_dataFile;
    v2->_dataFile = v4;
  }

  return v2;
}

- (id)load
{
  v2 = [(BDSBookWidgetDataFile *)self dataFile];
  v11 = 0;
  v3 = [v2 load:&v11];
  v4 = v11;

  if (v4)
  {
    v5 = sub_10000DE28();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD844();
    }

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  if (!v3)
  {
    v5 = sub_10000DE28();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Didn't find current widget data file, starting fresh.", buf, 2u);
    }

    v4 = 0;
    goto LABEL_4;
  }

  v10 = 0;
  v6 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v3 error:&v10];
  v4 = v10;
  v8 = sub_10000DE28();
  v5 = v8;
  if (!v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD8AC();
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 count];
    *buf = 134218242;
    v13 = v9;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading %lu widget datas read from disk: %@", buf, 0x16u);
  }

LABEL_5:

  return v6;
}

- (void)save:(id)a3
{
  v4 = a3;
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 setOutputFormat:200];
  [v5 encodeObject:v4 forKey:NSKeyedArchiveRootObjectKey];

  v6 = [v5 encodedData];
  v7 = [(BDSBookWidgetDataFile *)self dataFile];
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
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully updated current widget data file.", buf, 2u);
    }

LABEL_10:

    v14 = v9;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1001BD914();
  }

  v12 = [(BDSBookWidgetDataFile *)self dataFile];
  v15 = v9;
  v13 = [v12 remove:&v15];
  v14 = v15;

  if ((v13 & 1) == 0)
  {
    v11 = sub_10000DE28();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD97C();
    }

    v9 = v14;
    goto LABEL_10;
  }

LABEL_11:
}

+ (NSURL)defaultDataURL
{
  if (qword_1002749B8 != -1)
  {
    sub_1001BD9E4();
  }

  v3 = qword_1002749B0;

  return v3;
}

@end