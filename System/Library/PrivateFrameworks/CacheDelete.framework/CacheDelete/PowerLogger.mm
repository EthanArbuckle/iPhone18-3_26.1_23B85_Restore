@interface PowerLogger
+ (id)sharedLogger;
- (PowerLogger)init;
- (void)flush;
- (void)logCacheDuetEvent:(unint64_t)a3 urgencyLevel:(int)a4 serviceName:(id)a5 startFromUptime:(double)a6 duration:(double)a7 requestedBytes:(unint64_t)a8 purgedBytes:(unint64_t)a9;
@end

@implementation PowerLogger

- (PowerLogger)init
{
  v7.receiver = self;
  v7.super_class = PowerLogger;
  v2 = [(PowerLogger *)&v7 init];
  if (v2 && init_fp)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [(PowerLogger *)v2 setEvents:v3];

    v4 = dispatch_queue_create("com.apple.cache_delete.PowerLogger", 0);
    [(PowerLogger *)v2 setQueue:v4];

    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sharedLogger
{
  if (_MergedGlobals_14 != -1)
  {
    dispatch_once(&_MergedGlobals_14, &__block_literal_global_8);
  }

  v3 = qword_10006E2F0;

  return v3;
}

void __27__PowerLogger_sharedLogger__block_invoke(id a1)
{
  qword_10006E2F0 = objc_opt_new();

  _objc_release_x1();
}

- (void)logCacheDuetEvent:(unint64_t)a3 urgencyLevel:(int)a4 serviceName:(id)a5 startFromUptime:(double)a6 duration:(double)a7 requestedBytes:(unint64_t)a8 purgedBytes:(unint64_t)a9
{
  v16 = a5;
  v17 = [(PowerLogger *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __110__PowerLogger_logCacheDuetEvent_urgencyLevel_serviceName_startFromUptime_duration_requestedBytes_purgedBytes___block_invoke;
  v19[3] = &unk_100062078;
  v21 = self;
  v22 = a3;
  v27 = a4;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v20 = v16;
  v18 = v16;
  dispatch_async(v17, v19);
}

void __110__PowerLogger_logCacheDuetEvent_urgencyLevel_serviceName_startFromUptime_duration_requestedBytes_purgedBytes___block_invoke(uint64_t a1)
{
  v12[0] = @"operationType";
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v13[0] = v2;
  v12[1] = @"urgencyLevel";
  v3 = [NSNumber numberWithInt:*(a1 + 88)];
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = &stru_100064760;
  }

  v13[1] = v3;
  v13[2] = v5;
  v12[2] = @"serviceName";
  v12[3] = @"startFromUptime";
  v6 = [NSNumber numberWithDouble:*(a1 + 56)];
  v13[3] = v6;
  v12[4] = @"duration";
  v7 = [NSNumber numberWithDouble:*(a1 + 64)];
  v13[4] = v7;
  v12[5] = @"requestedBytes";
  v8 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  v13[5] = v8;
  v12[6] = @"purgedBytes";
  v9 = [NSNumber numberWithUnsignedLongLong:*(a1 + 80)];
  v13[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];

  v11 = [*(a1 + 40) events];
  [v11 addObject:v10];
}

- (void)flush
{
  v3 = [(PowerLogger *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __20__PowerLogger_flush__block_invoke;
  block[3] = &unk_100060D58;
  block[4] = self;
  dispatch_async(v3, block);
}

void __20__PowerLogger_flush__block_invoke(uint64_t a1)
{
  v9[0] = @"timestamp";
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = [NSNumber numberWithLong:1000 * v3];

  v9[1] = @"events";
  v10[0] = v4;
  v5 = [*(a1 + 32) events];
  v6 = [v5 copy];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8 = [*(a1 + 32) events];
  [v8 removeAllObjects];

  PLLogRegisteredEvent();
}

@end