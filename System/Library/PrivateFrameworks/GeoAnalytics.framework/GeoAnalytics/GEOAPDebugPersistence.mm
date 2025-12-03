@interface GEOAPDebugPersistence
+ (id)sharedInstance;
- (GEOAPDebugPersistence)init;
- (GEOAPDebugPersistence)initWithDBFilePath:(id)path;
- (void)_configureDatabase;
- (void)addInflightUploadWithBatchUUID:(id)d createTime:(id)time sessionType:(int)type eventCount:(unsigned int)count uploadSize:(unsigned int)size uploadPolicy:(int)policy stageNum:(unsigned int)num;
- (void)addUploadHistoryForBatchUUID:(id)d completionTime:(id)time latency:(unsigned int)latency sessionType:(int)type eventCount:(unsigned int)count uploadSize:(unsigned int)size uploadPolicy:(int)policy stageNum:(unsigned int)self0;
- (void)dealloc;
- (void)deleteAllHistory;
- (void)removeInflightUploadWithBatchUUID:(id)d;
- (void)showHistoryOfAge:(unsigned int)age withVisitorBlock:(id)block completion:(id)completion;
- (void)showInflightUploadsWithVisitorBlock:(id)block completion:(id)completion;
- (void)showUploadCounts:(id)counts;
- (void)tearDown;
@end

@implementation GEOAPDebugPersistence

- (void)showUploadCounts:(id)counts
{
  countsCopy = counts;
  objc_initWeak(&location, self);
  db = self->_db;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000179D8;
  v7[3] = &unk_10003D530;
  objc_copyWeak(&v9, &location);
  v6 = countsCopy;
  v8 = v6;
  [(GEOSQLiteDB *)db executeSync:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)showInflightUploadsWithVisitorBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  objc_initWeak(&location, self);
  db = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017D50;
  v11[3] = &unk_10003D4E0;
  objc_copyWeak(&v14, &location);
  v9 = completionCopy;
  v12 = v9;
  v10 = blockCopy;
  v13 = v10;
  [(GEOSQLiteDB *)db executeAsync:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)showHistoryOfAge:(unsigned int)age withVisitorBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  v10 = objc_alloc_init(NSDate);
  [v10 timeIntervalSince1970];
  v12 = (vcvtmd_s64_f64(v11) - age);
  objc_initWeak(&location, self);
  db = self->_db;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000180C0;
  v16[3] = &unk_10003D490;
  objc_copyWeak(v19, &location);
  v14 = completionCopy;
  v17 = v14;
  v19[1] = v12;
  v15 = blockCopy;
  v18 = v15;
  [(GEOSQLiteDB *)db executeAsync:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (void)removeInflightUploadWithBatchUUID:(id)d
{
  dCopy = d;
  if (sub_100018444(self))
  {
    objc_initWeak(&location, self);
    db = self->_db;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000184D8;
    v6[3] = &unk_10003D440;
    objc_copyWeak(&v8, &location);
    v7 = dCopy;
    [(GEOSQLiteDB *)db executeAsync:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)addInflightUploadWithBatchUUID:(id)d createTime:(id)time sessionType:(int)type eventCount:(unsigned int)count uploadSize:(unsigned int)size uploadPolicy:(int)policy stageNum:(unsigned int)num
{
  dCopy = d;
  timeCopy = time;
  if (sub_100018444(self))
  {
    [timeCopy timeIntervalSince1970];
    v18 = v17;
    objc_initWeak(&location, self);
    db = self->_db;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000187AC;
    v20[3] = &unk_10003D3F0;
    objc_copyWeak(v22, &location);
    v21 = dCopy;
    v22[1] = v18;
    typeCopy = type;
    countCopy = count;
    sizeCopy = size;
    policyCopy = policy;
    numCopy = num;
    [(GEOSQLiteDB *)db executeAsync:v20];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

- (void)addUploadHistoryForBatchUUID:(id)d completionTime:(id)time latency:(unsigned int)latency sessionType:(int)type eventCount:(unsigned int)count uploadSize:(unsigned int)size uploadPolicy:(int)policy stageNum:(unsigned int)self0
{
  dCopy = d;
  timeCopy = time;
  if (sub_100018444(self))
  {
    [timeCopy timeIntervalSince1970];
    v19 = v18;
    objc_initWeak(&location, self);
    db = self->_db;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100018BCC;
    v21[3] = &unk_10003D3A0;
    objc_copyWeak(v23, &location);
    v22 = dCopy;
    v23[1] = v19;
    latencyCopy = latency;
    typeCopy = type;
    countCopy = count;
    sizeCopy = size;
    policyCopy = policy;
    numCopy = num;
    [(GEOSQLiteDB *)db executeAsync:v21];

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }
}

- (void)deleteAllHistory
{
  if (sub_100018444(self))
  {
    db = self->_db;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100018FCC;
    v4[3] = &unk_10003D5B8;
    v4[4] = self;
    [(GEOSQLiteDB *)db executeSync:v4];
  }
}

- (void)tearDown
{
  db = self->_db;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100019064;
  v3[3] = &unk_10003D5B8;
  v3[4] = self;
  [(GEOSQLiteDB *)db executeSync:v3];
}

- (void)dealloc
{
  [(GEOAPDebugPersistence *)self tearDown];
  v3.receiver = self;
  v3.super_class = GEOAPDebugPersistence;
  [(GEOAPDebugPersistence *)&v3 dealloc];
}

- (void)_configureDatabase
{
  v3 = +[GEOSQLiteDB defaultPragmas];
  v9 = [v3 mutableCopy];

  [v9 setObject:0 forKeyedSubscript:@"foreign_keys"];
  v4 = [NSURL URLWithString:self->_dbFilePath];
  v5 = [GEOSQLiteDB alloc];
  v6 = sub_1000185CC();
  v7 = [v5 initWithQueueName:"com.apple.geo.analytics.debugdb" log:v6 databaseFileURL:v4 sqliteFlags:3145728 pragmas:v9 setupBlock:&stru_10003D2D0 tearDownBlock:&stru_10003D310];
  db = self->_db;
  self->_db = v7;

  self->_firstAuthComplete = 1;
}

- (GEOAPDebugPersistence)initWithDBFilePath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = GEOAPDebugPersistence;
  v6 = [(GEOAPDebugPersistence *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dbFilePath, path);
    v8 = +[GEOKeyBagNotification sharedObject];
    v7->_firstAuthComplete = [v8 addDataDidBecomeAvailableAfterFirstUnlockObserver:v7] ^ 1;

    if (v7->_firstAuthComplete)
    {
      [(GEOAPDebugPersistence *)v7 _configureDatabase];
    }
  }

  return v7;
}

- (GEOAPDebugPersistence)init
{
  v3 = +[GEOAPUtils GEOAPCachePath];
  v4 = [v3 stringByAppendingPathComponent:@"APDebug.db"];

  v5 = [(GEOAPDebugPersistence *)self initWithDBFilePath:v4];
  return v5;
}

+ (id)sharedInstance
{
  if (qword_100053198 != -1)
  {
    dispatch_once(&qword_100053198, &stru_10003D290);
  }

  v3 = qword_100053190;

  return v3;
}

@end