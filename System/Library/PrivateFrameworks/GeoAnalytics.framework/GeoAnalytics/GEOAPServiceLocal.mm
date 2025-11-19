@interface GEOAPServiceLocal
- (void)flushEvalData;
- (void)flushUploadHistoryWithCompletion:(id)a3;
- (void)reportDailySettings:(id)a3 completion:(id)a4;
- (void)reportLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 completion:(id)a5;
- (void)runAggregationTasks;
- (void)showEvalDataWithVisitorBlock:(id)a3;
- (void)showInflightUploadsWithVisitorBlock:(id)a3 completion:(id)a4;
- (void)showUploadCounts:(id)a3;
- (void)streamWithLogMsgBlock:(id)a3 dailyUsageBlock:(id)a4 monthlyUsageBlock:(id)a5;
@end

@implementation GEOAPServiceLocal

- (void)showUploadCounts:(id)a3
{
  v3 = a3;
  v4 = +[GEOAPDebugPersistence sharedInstance];
  [v4 showUploadCounts:v3];
}

- (void)flushUploadHistoryWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[GEOAPDebugPersistence sharedInstance];
  [v4 deleteAllHistory];

  v5 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005E34;
  block[3] = &unk_10003C988;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, block);
}

- (void)showInflightUploadsWithVisitorBlock:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[GEOAPDebugPersistence sharedInstance];
  [v7 showInflightUploadsWithVisitorBlock:v6 completion:v5];
}

- (void)runAggregationTasks
{
  v2 = sub_10000C6AC();
  if (v2)
  {
    v3 = sub_10000AB3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "starting eval mode aggregation", buf, 2u);
    }

    [v2[3] lock];
    v4 = +[NSDate distantPast];
    v5 = +[NSDate distantFuture];
    [v2 aggregateDailyCountsAndReportFrom:v4 until:v5];

    [v2[3] unlock];
    v6 = sub_10000AB3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "finished eval mode aggregation", v8, 2u);
    }
  }

  v7 = +[GEOAPNetEventAggregator sharedAggregator];
  [v7 runAggregation];
}

- (void)streamWithLogMsgBlock:(id)a3 dailyUsageBlock:(id)a4 monthlyUsageBlock:(id)a5
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: local proxy bypassed", v5, 2u);
  }
}

- (void)showEvalDataWithVisitorBlock:(id)a3
{
  v3 = a3;
  v4 = +[GEOAPDB sharedInstance];
  [v4 showEvalDataWithVisitorBlock:v3];
}

- (void)flushEvalData
{
  v2 = +[GEOAPDB sharedInstance];
  [v2 flushEvalData];
}

- (void)reportDailySettings:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sub_100001018();
  v8 = dispatch_get_global_queue(21, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000063B4;
  v17[3] = &unk_10003C988;
  v18 = v5;
  v9 = v5;
  if (v7)
  {
    v10 = v17;
    v11 = v8;
    v12 = v6;
    v13 = sub_100001134();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "storing Daily Settings", buf, 2u);
    }

    v14 = +[GEOReferenceTimeManager sharedManager];
    v15 = [v14 bestReferenceDate];

    v16 = [[GEOAPDailySettingsQueueElem alloc] initWithSettings:v12 createTime:v15];
    [v7 _storeQueueElem:v16 completionQueue:v11 completionBlock:v10];
  }
}

- (void)reportLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = sub_100000FC4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[GEOAPServiceLocal reportLogMsg:uploadBatchId:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s", &v12, 0xCu);
  }

  v10 = sub_100001018();
  v11 = dispatch_get_global_queue(21, 0);
  sub_10001A428(v10, v8, a4, v11, v7);
}

@end