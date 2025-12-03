@interface BDSBookWidgetReadingHistoryDataFile
+ (NSURL)defaultDataURL;
+ (id)sharedInstance;
- (BDSBookWidgetReadingHistoryDataFile)init;
- (id)load;
- (void)save:(id)save;
@end

@implementation BDSBookWidgetReadingHistoryDataFile

+ (id)sharedInstance
{
  if (qword_1EE2B0558 != -1)
  {
    sub_1E4704590();
  }

  v3 = qword_1EE2B0508;

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
  v15 = *MEMORY[0x1E69E9840];
  dataFile = [(BDSBookWidgetReadingHistoryDataFile *)self dataFile];
  v12 = 0;
  v3 = [dataFile load:&v12];
  v4 = v12;

  if (v4)
  {
    v5 = BDSWidgetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E47045A4();
    }

LABEL_4:
    v6 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    v5 = BDSWidgetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "Didn't find widget reading history data file, starting fresh.", buf, 2u);
    }

    goto LABEL_4;
  }

  v11 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v11];
  v5 = v11;
  v7 = BDSWidgetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "Loaded widget reading history data read from disk: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1E470460C();
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)save:(id)save
{
  v4 = MEMORY[0x1E696ACC8];
  saveCopy = save;
  v6 = [[v4 alloc] initRequiringSecureCoding:1];
  [v6 setOutputFormat:200];
  [v6 encodeObject:saveCopy forKey:*MEMORY[0x1E696A508]];

  encodedData = [v6 encodedData];
  dataFile = [(BDSBookWidgetReadingHistoryDataFile *)self dataFile];
  v18 = 0;
  v9 = [dataFile save:encodedData error:&v18];
  v10 = v18;

  v11 = BDSWidgetLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "Successfully saved widget reading history data.", buf, 2u);
    }

LABEL_10:

    v15 = v10;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1E4704674();
  }

  dataFile2 = [(BDSBookWidgetReadingHistoryDataFile *)self dataFile];
  v16 = v10;
  v14 = [dataFile2 remove:&v16];
  v15 = v16;

  if ((v14 & 1) == 0)
  {
    v12 = BDSWidgetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E47046DC();
    }

    v10 = v15;
    goto LABEL_10;
  }

LABEL_11:
}

+ (NSURL)defaultDataURL
{
  if (qword_1EE2AEC18 != -1)
  {
    sub_1E4704744();
  }

  v3 = qword_1ECF75D60;

  return v3;
}

@end