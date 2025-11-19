@interface GEOAPDB
+ (id)sharedInstance;
- (BOOL)_setup:(id)a3;
- (BOOL)selectDailyCountsWithVisitorBlock:(id)a3 completionBlock:(id)a4;
- (BOOL)selectDailySettingsWithVisitorBlock:(id)a3 completionBlock:(id)a4;
- (BOOL)selectLogMsgsForBatchUploadWithBatchId:(unint64_t)a3 visitorBlock:(id)a4 completionBlock:(id)a5;
- (GEOAPDB)init;
- (GEOAPDB)initWithDBFilePath:(id)a3;
- (double)batchReadyInSeconds;
- (double)timeNow;
- (id)dateNow;
- (id)pendingBatchesReadyForUpload;
- (id)usageBoolNumber:(id)a3;
- (id)usageBoolString:(id)a3;
- (unint64_t)_analyticsCount;
- (unint64_t)_sessionHolddownDurationForSessionType:(int)a3;
- (unint64_t)analyticsCount;
- (void)_configureDatabase;
- (void)_writeDailyCountElem:(id)a3;
- (void)_writeDailySettingsElem:(id)a3;
- (void)_writeLogMsgQueueElem:(id)a3;
- (void)clearExpiredLogMsgsWithResultBlock:(id)a3;
- (void)dealloc;
- (void)flushEvalData;
- (void)processMapsAppDeletion;
- (void)setEvalMode:(BOOL)a3;
- (void)showEvalDataWithVisitorBlock:(id)a3;
- (void)storeLogMsgElems:(id)a3;
- (void)tearDown;
@end

@implementation GEOAPDB

+ (id)sharedInstance
{
  if (qword_100053148 != -1)
  {
    dispatch_once(&qword_100053148, &stru_10003CA68);
  }

  v3 = qword_100053140;

  return v3;
}

- (unint64_t)_analyticsCount
{
  p_db = &self->_db;
  v3 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = *p_db;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000EDA8;
  v20 = sub_10000EDB8;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v23 = sub_100001400;
  v24 = &unk_10003CDE8;
  v26 = &v12;
  v5 = v4;
  v25 = v5;
  v27 = &v16;
  [(GEOSQLiteDB *)v5 statementForKey:@"CountAnalytics" statementBlock:&buf];
  v6 = v17[5];
  if (v6)
  {
    v7 = v6;
  }

  v8 = v13[3];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  v9 = v6;
  if (v6)
  {
    v10 = sub_1000014A0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CountAnalytics: %@", &buf, 0xCu);
    }

    v8 = -1;
  }

  return v8;
}

- (id)pendingBatchesReadyForUpload
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(GEOAPDB *)self dateNow];
  db = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001958;
  v11[3] = &unk_10003D188;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(GEOSQLiteDB *)db executeSync:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)dateNow
{
  [(GEOAPDB *)self timeNow];

  return [NSDate dateWithTimeIntervalSinceReferenceDate:?];
}

- (double)timeNow
{
  v2 = +[GEOReferenceTimeManager sharedManager];
  [v2 bestReferenceTime];
  v4 = v3;

  return v4;
}

- (BOOL)selectDailySettingsWithVisitorBlock:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  db = self->_db;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E820;
  v12[3] = &unk_10003CC20;
  v15 = &v16;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  [(GEOSQLiteDB *)db executeSync:v12];
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (void)_writeDailySettingsElem:(id)a3
{
  v4 = a3;
  v5 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 createTime];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  db = self->_db;
  v10 = [v4 settings];
  v11 = [v10 data];
  v12 = db;
  v13 = v11;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10000EDA8;
  v25 = sub_10000EDB8;
  v26 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v28 = sub_10000F1D0;
  v29 = &unk_10003CE38;
  v14 = v12;
  v30 = v14;
  v15 = v13;
  v31 = v15;
  v32 = &v21;
  v33 = v8;
  v16 = [(GEOSQLiteDB *)v14 executeStatement:@"InsertDailySetting" statementBlock:&buf];
  v17 = v22[5];
  if (v17)
  {
    v18 = v17;
  }

  _Block_object_dispose(&v21, 8);
  v19 = v17;

  if ((v16 & 1) == 0)
  {
    v20 = sub_1000014A0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "InsertDailySetting: %@", &buf, 0xCu);
    }
  }
}

- (BOOL)selectDailyCountsWithVisitorBlock:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  db = self->_db;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F3A4;
  v12[3] = &unk_10003CC20;
  v15 = &v16;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  [(GEOSQLiteDB *)db executeSync:v12];
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (void)_writeDailyCountElem:(id)a3
{
  v4 = a3;
  v5 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 createTime];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [v4 usageBool];
  v10 = [(GEOAPDB *)self usageBoolString:v9];

  db = self->_db;
  LODWORD(self) = [v4 countType];
  v12 = [v4 appId];
  v13 = [v4 usageString];
  v14 = db;
  v15 = v12;
  v16 = v13;
  v17 = v10;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000EDA8;
  v31 = sub_10000EDB8;
  v32 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v34 = sub_10000FE50;
  v35 = &unk_10003CE10;
  v18 = v14;
  v42 = self;
  v36 = v18;
  v40 = &v27;
  v41 = v8;
  v19 = v15;
  v37 = v19;
  v20 = v16;
  v38 = v20;
  v21 = v17;
  v39 = v21;
  v22 = [(GEOSQLiteDB *)v18 executeStatement:@"InsertDailyCount" statementBlock:&buf];
  v23 = v28[5];
  if (v23)
  {
    v24 = v23;
  }

  _Block_object_dispose(&v27, 8);
  v25 = v23;

  if ((v22 & 1) == 0)
  {
    v26 = sub_1000014A0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "InsertDailyCount: %@", &buf, 0xCu);
    }
  }
}

- (id)usageBoolNumber:(id)a3
{
  if (a3)
  {
    v4 = [a3 isEqualToString:@"Y"];
    v5 = &__kCFBooleanFalse;
    if (v4)
    {
      v5 = &__kCFBooleanTrue;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)usageBoolString:(id)a3
{
  if (a3)
  {
    v4 = [a3 BOOLValue];
    v5 = @"N";
    if (v4)
    {
      v5 = @"Y";
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)analyticsCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100010154;
  v5[3] = &unk_10003D608;
  v5[4] = self;
  v5[5] = &v6;
  [(GEOSQLiteDB *)db executeSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)selectLogMsgsForBatchUploadWithBatchId:(unint64_t)a3 visitorBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  db = self->_db;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000102B0;
  v14[3] = &unk_10003CBA8;
  v17 = &v19;
  v18 = a3;
  v14[4] = self;
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  [(GEOSQLiteDB *)db executeSync:v14];
  LOBYTE(self) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return self;
}

- (double)batchReadyInSeconds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x40C5180000000000;
  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000109E0;
  v5[3] = &unk_10003D608;
  v5[4] = self;
  v5[5] = &v6;
  [(GEOSQLiteDB *)db executeSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_writeLogMsgQueueElem:(id)a3
{
  v4 = a3;
  v5 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 createTime];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [v4 expireTime];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  db = self->_db;
  v13 = [v4 uploadBatchId];
  v14 = [v4 logMsg];
  v15 = db;
  v16 = v14;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10000EDA8;
  v40 = sub_10000EDB8;
  v41 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v43 = sub_10000151C;
  v44 = &unk_10003CD70;
  v17 = v15;
  v45 = v17;
  v47 = &v36;
  v48 = v11;
  v49 = v8;
  v50 = v13;
  v18 = v16;
  v46 = v18;
  v19 = [(GEOSQLiteDB *)v17 executeStatement:@"InsertAnalytic" statementBlock:&buf];
  v20 = v37[5];
  if (v20)
  {
    v21 = v20;
  }

  _Block_object_dispose(&v36, 8);
  v22 = v20;

  if ((v19 & 1) == 0)
  {
    v23 = sub_1000014A0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "InsertAnalytic : %@", &buf, 0xCu);
    }
  }

  if (self->_shadowEnabled)
  {
    v24 = self->_db;
    v25 = [v4 uploadBatchId];
    v26 = [v4 logMsg];
    v27 = v24;
    v28 = v26;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_10000EDA8;
    v40 = sub_10000EDB8;
    v41 = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v43 = sub_10001102C;
    v44 = &unk_10003CD70;
    v29 = v27;
    v48 = *&v8;
    v45 = v29;
    v47 = &v36;
    v49 = 1;
    v50 = v25;
    v30 = v28;
    v46 = v30;
    v31 = [(GEOSQLiteDB *)v29 executeStatement:@"InsertShadowAnalytic" statementBlock:&buf];
    v32 = v37[5];
    v33 = v22;
    if (v32)
    {
      v33 = v32;
    }

    _Block_object_dispose(&v36, 8);
    v34 = v33;

    if ((v31 & 1) == 0)
    {
      v35 = sub_1000014A0();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "InsertShadow : %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v34 = v22;
  }
}

- (void)processMapsAppDeletion
{
  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000111F8;
  v5[3] = &unk_10003D5B8;
  v5[4] = self;
  [(GEOSQLiteDB *)db executeSync:v5];
  v3 = GeoAnalyticsConfig_MapsLastUseDate[1];
  _GEOConfigRemoveValueSync();
  v4 = GeoUserSessionConfig_MapsUserStartDate[1];
  _GEOConfigRemoveValueSync();
}

- (void)clearExpiredLogMsgsWithResultBlock:(id)a3
{
  db = self->_db;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000112E0;
  v4[3] = &unk_10003D5B8;
  v4[4] = self;
  [(GEOSQLiteDB *)db executeSync:v4];
}

- (void)storeLogMsgElems:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = GeoAnalyticsConfig_AnalyticsPipelineMaxPersist[1];
    Integer = GEOConfigGetInteger();
    db = self->_db;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011534;
    v8[3] = &unk_10003CAE0;
    v8[4] = self;
    v10 = Integer;
    v9 = v4;
    [(GEOSQLiteDB *)db executeSync:v8];
  }
}

- (void)tearDown
{
  db = self->_db;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000118DC;
  v3[3] = &unk_10003D5B8;
  v3[4] = self;
  [(GEOSQLiteDB *)db executeSync:v3];
}

- (void)dealloc
{
  [(GEOAPDB *)self tearDown];
  v3.receiver = self;
  v3.super_class = GEOAPDB;
  [(GEOAPDB *)&v3 dealloc];
}

- (BOOL)_setup:(id)a3
{
  v3 = a3;
  if ([v3 user_version] != 11)
  {
    [v3 dropAllTables];
  }

  [v3 setUser_version:11];
  v4 = sub_1000014A0();
  v5 = v3;
  if ([v5 createTable:"CREATE TABLE IF NOT EXISTS Analytics(   rowid INTEGER PRIMARY KEY NOT NULL withDrop:{expiretime INT NOT NULL, createtime INT NOT NULL, batchid INT NOT NULL, analytic BLOB NOT NULL   );", 0}] && objc_msgSend(v5, "createTable:withDrop:", "CREATE TABLE IF NOT EXISTS Shadow(   createtime REAL NOT NULL,    type INT NOT NULL,    batchid INT NOT NULL,    analytic BLOB NOT NULL   );", 0) && objc_msgSend(v5, "createTable:withDrop:", "CREATE TABLE IF NOT EXISTS DailyCounts(   rowid INTEGER PRIMARY KEY NOT NULL,    type INT NOT NULL,    createtime INT NOT NULL,    appid TEXT,    usagestring TEXT,    usageBOOL TEXT   );", 0) && objc_msgSend(v5, "createTable:withDrop:", "CREATE TABLE IF NOT EXISTS DailySettings(   rowid INTEGER PRIMARY KEY NOT NULL,    settings BLOB NOT NULL,    createtime INT NOT NULL   );", 0) && objc_msgSend(v5, "prepareStatement:forKey:", "INSERT OR REPLACE INTO Analytics    (expiretime, createtime, batchid, analytic)    VALUES (@expiretime, @createtime, @batchid, @analytic);", @"InsertAnalytic") && objc_msgSend(v5, "prepareStatement:forKey:", "SELECT batchid,    MIN(createtime) AS minCreateTime    FROM Analytics    GROUP BY batchid;", @"SelectAnalyticBatchIdsForUpload") && objc_msgSend(v5, "prepareStatement:forKey:", "SELECT rowid, expiretime, createtime, batchid, analytic    FROM Analytics    WHERE batchid = @batchid;", @"SelectAnalyticWithBatchId") && objc_msgSend(v5, "prepareStatement:forKey:", "DELETE FROM Analytics    WHERE expiretime <= @expiretime;", @"DeleteAllExpiredAnalytics") && objc_msgSend(v5, "prepareStatement:forKey:", "DELETE FROM Analytics    WHERE rowid = @rowid;", @"DeleteOneAnalytic") && objc_msgSend(v5, "prepareStatement:forKey:", "SELECT COUNT(*)    FROM Analytics;", @"CountAnalytics") && objc_msgSend(v5, "prepareStatement:forKey:", "INSERT OR REPLACE INTO Shadow    (createtime, type, batchid, analytic)    VALUES (@createtime, @type, @batchid, @analytic);", @"InsertShadowAnalytic") && objc_msgSend(v5, "prepareStatement:forKey:", "SELECT createtime, type, batchid, analytic    FROM Shadow    ORDER BY createtime ASC;", @"SelectAllShadowAnalytics") && objc_msgSend(v5, "prepareStatement:forKey:", "DELETE FROM Shadow;", @"DeleteShadowAnalytics") && objc_msgSend(v5, "prepareStatement:forKey:", "INSERT OR REPLACE INTO DailyCounts    (type, createtime, appid, usagestring, usageBOOL)    VALUES (@type, @createtime, @appid, @usagestring, @usageBOOL);", @"InsertDailyCount") && objc_msgSend(v5, "prepareStatement:forKey:", "SELECT rowid, type, appid, usagestring, usageBOOL, createtime    FROM DailyCounts    ORDER BY createtime ASC;", @"SelectDailyCounts") && objc_msgSend(v5, "prepareStatement:forKey:", "DELETE FROM DailyCounts    WHERE rowid = @rowid;", @"DeleteOneDailyCount") && objc_msgSend(v5, "prepareStatement:forKey:", "DELETE FROM DailyCounts;", @"DeleteAllDailyCount") && objc_msgSend(v5, "prepareStatement:forKey:", "INSERT OR REPLACE INTO DailySettings    (settings, createtime)    VALUES (@settings, @createtime);", @"InsertDailySetting") && objc_msgSend(v5, "prepareStatement:forKey:", "SELECT rowid, settings, createtime    FROM DailySettings    ORDER BY createtime ASC;", @"SelectDailySettings") && objc_msgSend(v5, "prepareStatement:forKey:", "DELETE FROM DailySettings    WHERE rowid = @rowid;", @"DeleteOneDailySettings"))
  {
    v6 = [v5 prepareStatement:"DELETE FROM DailySettings;" forKey:@"DeleteAllDailySettings"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_configureDatabase
{
  v3 = +[GEOAPUtils GEOAPCachePath];
  v4 = [v3 stringByAppendingPathComponent:@"AP.db"];

  v5 = +[NSFileManager defaultManager];
  [v5 removeItemAtPath:v4 error:0];

  v6 = +[GEOAPUtils GEOAPCachePath];
  v7 = [v6 stringByAppendingPathComponent:@"AP.db-wal"];

  v8 = +[NSFileManager defaultManager];
  [v8 removeItemAtPath:v7 error:0];

  objc_initWeak(&location, self);
  v9 = +[GEOSQLiteDB defaultPragmas];
  v10 = [v9 mutableCopy];

  [v10 setObject:0 forKeyedSubscript:@"foreign_keys"];
  v11 = [NSURL URLWithString:self->_dbFilePath];
  v12 = [GEOSQLiteDB alloc];
  v13 = sub_1000014A0();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100011DF4;
  v16[3] = &unk_10003CA90;
  objc_copyWeak(&v17, &location);
  v14 = [v12 initWithQueueName:"com.apple.geo.analytics.db" log:v13 databaseFileURL:v11 sqliteFlags:3145728 pragmas:v10 setupBlock:v16];
  db = self->_db;
  self->_db = v14;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (GEOAPDB)initWithDBFilePath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GEOAPDB;
  v6 = [(GEOAPDB *)&v9 init];
  if (v6)
  {
    v7 = GeoAnalyticsConfig_AnalyticsPipelineEvalModeEnabled[1];
    v6->_shadowEnabled = GEOConfigGetBOOL();
    objc_storeStrong(&v6->_dbFilePath, a3);
    [(GEOAPDB *)v6 _configureDatabase];
  }

  return v6;
}

- (GEOAPDB)init
{
  v3 = +[GEOAPUtils GEOAPCachePath];
  v4 = [v3 stringByAppendingPathComponent:@"APDB.db"];

  v5 = [(GEOAPDB *)self initWithDBFilePath:v4];
  return v5;
}

- (void)showEvalDataWithVisitorBlock:(id)a3
{
  v4 = a3;
  db = self->_db;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012018;
  v7[3] = &unk_10003CCC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GEOSQLiteDB *)db executeSync:v7];
}

- (void)flushEvalData
{
  db = self->_db;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000123CC;
  v3[3] = &unk_10003D5B8;
  v3[4] = self;
  [(GEOSQLiteDB *)db executeSync:v3];
}

- (void)setEvalMode:(BOOL)a3
{
  db = self->_db;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012468;
  v4[3] = &unk_10003CC70;
  v4[4] = self;
  v5 = a3;
  [(GEOSQLiteDB *)db executeSync:v4];
}

- (unint64_t)_sessionHolddownDurationForSessionType:(int)a3
{
  v3 = a3 - 2;
  if ((a3 - 2) > 0x12 || ((0x6EFFFu >> v3) & 1) == 0)
  {
    return 0;
  }

  v4 = **(&off_10003CE78 + v3);
  v5 = **(&off_10003CF10 + v3);
  return GEOConfigGetUint64();
}

@end