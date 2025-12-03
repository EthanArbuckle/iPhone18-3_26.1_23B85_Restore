@interface GEOAPServiceLocal
- (void)flushEvalData;
- (void)flushUploadHistoryWithCompletion:(id)completion;
- (void)reportDailySettings:(id)settings completion:(id)completion;
- (void)reportLogMsg:(id)msg uploadBatchId:(unint64_t)id completion:(id)completion;
- (void)runAggregationTasks;
- (void)showEvalDataWithVisitorBlock:(id)block;
- (void)showInflightUploadsWithVisitorBlock:(id)block completion:(id)completion;
- (void)showUploadCounts:(id)counts;
- (void)streamWithLogMsgBlock:(id)block dailyUsageBlock:(id)usageBlock monthlyUsageBlock:(id)monthlyUsageBlock;
@end

@implementation GEOAPServiceLocal

- (void)showUploadCounts:(id)counts
{
  countsCopy = counts;
  v4 = +[GEOAPDebugPersistence sharedInstance];
  [v4 showUploadCounts:countsCopy];
}

- (void)flushUploadHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[GEOAPDebugPersistence sharedInstance];
  [v4 deleteAllHistory];

  v5 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005E34;
  block[3] = &unk_10003C988;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);
}

- (void)showInflightUploadsWithVisitorBlock:(id)block completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  v7 = +[GEOAPDebugPersistence sharedInstance];
  [v7 showInflightUploadsWithVisitorBlock:blockCopy completion:completionCopy];
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

- (void)streamWithLogMsgBlock:(id)block dailyUsageBlock:(id)usageBlock monthlyUsageBlock:(id)monthlyUsageBlock
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: local proxy bypassed", v5, 2u);
  }
}

- (void)showEvalDataWithVisitorBlock:(id)block
{
  blockCopy = block;
  v4 = +[GEOAPDB sharedInstance];
  [v4 showEvalDataWithVisitorBlock:blockCopy];
}

- (void)flushEvalData
{
  v2 = +[GEOAPDB sharedInstance];
  [v2 flushEvalData];
}

- (void)reportDailySettings:(id)settings completion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  v7 = sub_100001018();
  v8 = dispatch_get_global_queue(21, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000063B4;
  v17[3] = &unk_10003C988;
  v18 = completionCopy;
  v9 = completionCopy;
  if (v7)
  {
    v10 = v17;
    v11 = v8;
    v12 = settingsCopy;
    v13 = sub_100001134();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "storing Daily Settings", buf, 2u);
    }

    v14 = +[GEOReferenceTimeManager sharedManager];
    bestReferenceDate = [v14 bestReferenceDate];

    v16 = [[GEOAPDailySettingsQueueElem alloc] initWithSettings:v12 createTime:bestReferenceDate];
    [v7 _storeQueueElem:v16 completionQueue:v11 completionBlock:v10];
  }
}

- (void)reportLogMsg:(id)msg uploadBatchId:(unint64_t)id completion:(id)completion
{
  completionCopy = completion;
  msgCopy = msg;
  v9 = sub_100000FC4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[GEOAPServiceLocal reportLogMsg:uploadBatchId:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s", &v12, 0xCu);
  }

  v10 = sub_100001018();
  v11 = dispatch_get_global_queue(21, 0);
  sub_10001A428(v10, msgCopy, id, v11, completionCopy);
}

@end