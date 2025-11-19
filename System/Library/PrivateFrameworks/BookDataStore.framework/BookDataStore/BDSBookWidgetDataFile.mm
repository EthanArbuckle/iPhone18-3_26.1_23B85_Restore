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
  if (qword_1EE2B0568 != -1)
  {
    sub_1E4706F34();
  }

  v3 = qword_1EE2B0510;

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
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(BDSBookWidgetDataFile *)self dataFile];
  v12 = 0;
  v3 = [v2 load:&v12];
  v4 = v12;

  if (v4)
  {
    v5 = BDSWidgetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706F48();
    }

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  if (!v3)
  {
    v5 = BDSWidgetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "Didn't find current widget data file, starting fresh.", buf, 2u);
    }

    v4 = 0;
    goto LABEL_4;
  }

  v11 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v3 error:&v11];
  v4 = v11;
  v9 = BDSWidgetLog();
  v5 = v9;
  if (!v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706FB0();
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 count];
    *buf = 134218242;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "Loading %lu widget datas read from disk: %@", buf, 0x16u);
  }

LABEL_5:

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)save:(id)a3
{
  v4 = MEMORY[0x1E696ACC8];
  v5 = a3;
  v6 = [[v4 alloc] initRequiringSecureCoding:1];
  [v6 setOutputFormat:200];
  [v6 encodeObject:v5 forKey:*MEMORY[0x1E696A508]];

  v7 = [v6 encodedData];
  v8 = [(BDSBookWidgetDataFile *)self dataFile];
  v18 = 0;
  v9 = [v8 save:v7 error:&v18];
  v10 = v18;

  v11 = BDSWidgetLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "Successfully updated current widget data file.", buf, 2u);
    }

LABEL_10:

    v15 = v10;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1E4707018();
  }

  v13 = [(BDSBookWidgetDataFile *)self dataFile];
  v16 = v10;
  v14 = [v13 remove:&v16];
  v15 = v16;

  if ((v14 & 1) == 0)
  {
    v12 = BDSWidgetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707080();
    }

    v10 = v15;
    goto LABEL_10;
  }

LABEL_11:
}

+ (NSURL)defaultDataURL
{
  if (qword_1EE2AEC20 != -1)
  {
    sub_1E47070E8();
  }

  v3 = qword_1ECF75DF0;

  return v3;
}

@end