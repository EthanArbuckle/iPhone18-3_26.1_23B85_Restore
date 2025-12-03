@interface GEOAPCountsAggregator
- (BOOL)aggregateDailyCountsAndReportFrom:(id)from until:(id)until;
- (GEOAPCountsAggregator)init;
- (double)retrieveDailyAggregationInterval;
- (id)now;
- (void)aggregateDailyUsageCountsAndReportFrom:(id)from until:(id)until;
- (void)reportDailySettingsFrom:(id)from until:(id)until;
- (void)setup;
- (void)startDailyAggregationFromTime:(id)time;
@end

@implementation GEOAPCountsAggregator

- (id)now
{
  v2 = +[GEOReferenceTimeManager sharedManager];
  bestReferenceDate = [v2 bestReferenceDate];

  return bestReferenceDate;
}

- (double)retrieveDailyAggregationInterval
{
  v2 = GeoAnalyticsConfig_DailyCountsAggregationInterval[1];
  GEOConfigGetDouble();
  return result;
}

- (BOOL)aggregateDailyCountsAndReportFrom:(id)from until:(id)until
{
  fromCopy = from;
  untilCopy = until;
  v8 = sub_10000AB3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138478083;
    v12 = fromCopy;
    v13 = 2113;
    v14 = untilCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "starting daily aggregation from %{private}@ until %{private}@", &v11, 0x16u);
  }

  [(GEOAPCountsAggregator *)self reportDailySettingsFrom:fromCopy until:untilCopy];
  [(GEOAPCountsAggregator *)self aggregateDailyUsageCountsAndReportFrom:fromCopy until:untilCopy];
  v9 = sub_10000AB3C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138478083;
    v12 = fromCopy;
    v13 = 2113;
    v14 = untilCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "finished daily aggregation from %{private}@ until %{private}@", &v11, 0x16u);
  }

  return 1;
}

- (void)aggregateDailyUsageCountsAndReportFrom:(id)from until:(id)until
{
  fromCopy = from;
  untilCopy = until;
  v8 = sub_10000AB3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = untilCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "starting daily usage counts aggregation up until %{private}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v67 = 0x3032000000;
  v68 = sub_10000B104;
  v69 = sub_10000B114;
  v70 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = sub_10000B104;
  v60[4] = sub_10000B114;
  v61 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_10000B104;
  v58[4] = sub_10000B114;
  v59 = fromCopy;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v57[3] = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_10000B104;
  v55[4] = sub_10000B114;
  v9 = v59;
  v56 = v9;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v10 = [NSMutableDictionary dictionaryWithCapacity:113];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  apPersistence = [(GEOAPCountsAggregator *)self apPersistence];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000B11C;
  v34[3] = &unk_10003C8A0;
  v22 = untilCopy;
  v35 = v22;
  v38 = &v50;
  v39 = &v46;
  v36 = v9;
  v40 = v58;
  v41 = v57;
  v42 = v55;
  v43 = v54;
  v37 = v10;
  v44 = v60;
  p_buf = &buf;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000B484;
  v23[3] = &unk_10003C8F0;
  v26 = &v50;
  v33 = 4;
  v12 = v37;
  v24 = v12;
  v27 = &buf;
  v28 = v57;
  v29 = v58;
  v13 = v36;
  v25 = v13;
  v30 = v54;
  v31 = v55;
  v32 = v60;
  LOBYTE(v10) = [apPersistence selectDailyCountsWithVisitorBlock:v34 completionBlock:v23];

  v14 = sub_10000AB3C();
  v15 = v14;
  if (v10)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(v51 + 6);
      v17 = *(v47 + 6);
      *v62 = 67109376;
      v63 = v16;
      v64 = 1024;
      v65 = v17;
      v18 = "processed %u Daily Usage counts; dropped %u counts";
      v19 = v15;
      v20 = OS_LOG_TYPE_DEBUG;
      v21 = 14;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v19, v20, v18, v62, v21);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v62 = 0;
    v18 = "processing Daily Usage counts was unsuccessful";
    v19 = v15;
    v20 = OS_LOG_TYPE_ERROR;
    v21 = 2;
    goto LABEL_8;
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v58, 8);

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)reportDailySettingsFrom:(id)from until:(id)until
{
  fromCopy = from;
  untilCopy = until;
  v8 = sub_10000AB3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "starting Daily Settings report", buf, 2u);
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_10000B104;
  v18 = sub_10000B114;
  v19 = 0;
  apPersistence = [(GEOAPCountsAggregator *)self apPersistence];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000BF40;
  v13[3] = &unk_10003C828;
  v13[4] = buf;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000C06C;
  v12[3] = &unk_10003C850;
  v12[4] = buf;
  [apPersistence selectDailySettingsWithVisitorBlock:v13 completionBlock:v12];

  v10 = sub_10000AB3C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "finished Daily Settings report", v11, 2u);
  }

  _Block_object_dispose(buf, 8);
}

- (void)startDailyAggregationFromTime:(id)time
{
  timeCopy = time;
  v5 = sub_10000AB3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = timeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "starting daily at %@", buf, 0xCu);
  }

  v6 = sub_10000C4B8(self);
  while ([(NSDate *)v6 compare:timeCopy]== NSOrderedAscending)
  {
    v7 = sub_10000AB3C();
    v8 = os_signpost_id_generate(v7);

    v9 = sub_10000AB3C();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 138412290;
      v17 = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DailyAggregation", "for '%@'", buf, 0xCu);
    }

    [(GEOAPCountsAggregator *)self aggregateDailyCountsAndReportFrom:self->_lastDailyAggregation until:v6];
    lastDailyAggregation = self->_lastDailyAggregation;
    self->_lastDailyAggregation = v6;
    v12 = v6;

    [(GEOAPCountsAggregator *)self saveLastDailyAggregationTime:self->_lastDailyAggregation];
    v6 = sub_10000C4B8(self);

    v13 = sub_10000AB3C();
    v14 = v13;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 138412290;
      v17 = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v8, "DailyAggregation", "for '%@'", buf, 0xCu);
    }
  }

  v15 = sub_10000AB3C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "completed daily", buf, 2u);
  }
}

- (void)setup
{
  v3 = objc_alloc_init(NSLock);
  runningLock = self->_runningLock;
  self->_runningLock = v3;

  v15 = [(GEOAPCountsAggregator *)self now];
  retrieveLastDailyAggregationTime = [(GEOAPCountsAggregator *)self retrieveLastDailyAggregationTime];
  lastDailyAggregation = self->_lastDailyAggregation;
  self->_lastDailyAggregation = retrieveLastDailyAggregationTime;

  if (!self->_lastDailyAggregation)
  {
    v7 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v8 = [v7 components:60 fromDate:v15];
    if ([v8 hour] <= 3)
    {
      [v8 setDay:{objc_msgSend(v8, "day") - 1}];
    }

    [v8 setHour:4];
    v9 = [v7 dateFromComponents:v8];
    v10 = self->_lastDailyAggregation;
    self->_lastDailyAggregation = v9;

    [(GEOAPCountsAggregator *)self saveLastDailyAggregationTime:self->_lastDailyAggregation];
  }

  [(GEOAPCountsAggregator *)self retrieveDailyAggregationInterval];
  self->_dailyAggregationInterval = v11;
  v12 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v12 isInternalInstall];

  if ((isInternalInstall & 1) == 0)
  {
    dailyAggregationInterval = self->_dailyAggregationInterval;
    if (dailyAggregationInterval < 86400.0)
    {
      dailyAggregationInterval = 86400.0;
    }

    self->_dailyAggregationInterval = dailyAggregationInterval;
  }
}

- (GEOAPCountsAggregator)init
{
  v5.receiver = self;
  v5.super_class = GEOAPCountsAggregator;
  v2 = [(GEOAPCountsAggregator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GEOAPCountsAggregator *)v2 setup];
  }

  return v3;
}

@end