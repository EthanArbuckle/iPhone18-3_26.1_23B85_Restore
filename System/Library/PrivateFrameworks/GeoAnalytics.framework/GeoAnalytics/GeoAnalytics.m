id sub_100000F70()
{
  if (qword_100053138 != -1)
  {
    dispatch_once(&qword_100053138, &stru_10003CA48);
  }

  v1 = qword_100053130;

  return v1;
}

id sub_100000FC4()
{
  if (qword_1000530C0 != -1)
  {
    dispatch_once(&qword_1000530C0, &stru_10003C6C8);
  }

  v1 = qword_1000530B8;

  return v1;
}

id sub_100001018()
{
  objc_opt_self();
  if (qword_1000531B0 != -1)
  {
    dispatch_once(&qword_1000531B0, &stru_10003D590);
  }

  v0 = qword_1000531B8;

  return v0;
}

id sub_100001134()
{
  if (qword_1000531C8 != -1)
  {
    dispatch_once(&qword_1000531C8, &stru_10003D678);
  }

  v1 = qword_1000531C0;

  return v1;
}

void sub_1000013D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a13, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100001400(void *a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  v5 = a1[4];
  if (v4 == 100)
  {
    *(*(a1[5] + 8) + 24) = [v5 int64ForColumn:0 inStatment:a2];
  }

  else
  {
    v6 = *(a1[6] + 8);
    obj = *(v6 + 40);
    [v5 reportSQLiteErrorCode:v4 method:@"step" error:&obj];
    objc_storeStrong((v6 + 40), obj);
  }

  return v4 == 100;
}

id sub_1000014A0()
{
  if (qword_100053158 != -1)
  {
    dispatch_once(&qword_100053158, &stru_10003CCE0);
  }

  v1 = qword_100053150;

  return v1;
}

id sub_10000151C(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[7];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindInt64Parameter:"@expiretime" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a1[8];
  v10 = *(a1[6] + 8);
  v23 = *(v10 + 40);
  v11 = [v8 bindInt64Parameter:"@createtime" toValue:v9 inStatement:a2 error:&v23];
  objc_storeStrong((v10 + 40), v23);
  if (!v11)
  {
    return 0;
  }

  v12 = a1[4];
  v13 = a1[9];
  v14 = *(a1[6] + 8);
  v22 = *(v14 + 40);
  v15 = [v12 bindInt64Parameter:"@batchid" toValue:v13 inStatement:a2 error:&v22];
  objc_storeStrong((v14 + 40), v22);
  if (!v15)
  {
    return 0;
  }

  v16 = a1[4];
  v17 = a1[5];
  v18 = *(a1[6] + 8);
  v21 = *(v18 + 40);
  v19 = [v16 bindBlobParameter:"@analytic" toValue:v17 inStatement:a2 error:&v21];
  objc_storeStrong((v18 + 40), v21);
  return v19;
}

id sub_100001660()
{
  objc_opt_self();
  if (qword_100053168 != -1)
  {
    dispatch_once(&qword_100053168, &stru_10003CFD0);
  }

  v0 = qword_100053160;

  return v0;
}

void sub_100001958(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v10 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001CD4;
  v7[3] = &unk_10003CB30;
  v7[4] = v3;
  v8 = v2;
  v9 = *(a1 + 48);
  LOBYTE(v4) = sub_100001A9C(v4, &v10, v7);
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = sub_1000014A0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SelectAnalyticBatchIdsForUpload : %@", buf, 0xCu);
    }
  }
}

id sub_100001A9C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000EDA8;
  v20 = sub_10000EDB8;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001BF8;
  v12[3] = &unk_10003CD98;
  v7 = v5;
  v13 = v7;
  v8 = v6;
  v14 = v8;
  v15 = &v16;
  v9 = [v7 statementForKey:@"SelectAnalyticBatchIdsForUpload" statementBlock:v12];
  if (a2)
  {
    v10 = v17[5];
    if (v10)
    {
      *a2 = v10;
    }
  }

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_100001BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001BF8(uint64_t a1, sqlite3_stmt *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = sqlite3_step(i);
    v6 = v5;
    if (v5 != 100)
    {
      break;
    }

    [*(a1 + 32) int64ForColumn:0 inStatment:a2];
    v7 = 1;
    [*(a1 + 32) int64ForColumn:1 inStatment:a2];
    if (!(*(*(a1 + 40) + 16))())
    {
      return v7;
    }
  }

  if (v5 == 101)
  {
    return 1;
  }

  v8 = *(a1 + 32);
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  [v8 reportSQLiteErrorCode:v6 method:@"step" error:&obj];
  objc_storeStrong((v9 + 40), obj);
  return 0;
}

uint64_t sub_100001CD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  [*(a1 + 32) holdDownDurationForBatch:a2];
  v7 = v6;
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
  v9 = [v8 dateByAddingTimeInterval:v7];
  if ([*(a1 + 40) compare:v9] == -1)
  {
    [v9 timeIntervalSinceDate:*(a1 + 40)];
    v13 = v12;
    v14 = sub_1000014A0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = GEOBatchDescription();
      v17 = 138412546;
      v18 = v15;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@ won't be ready for upload for %llu more seconds", &v17, 0x16u);
    }
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = [NSNumber numberWithUnsignedLongLong:a2];
    [v10 addObject:v11];
  }

  return 1;
}

id sub_100001E4C()
{
  if (qword_100053188 != -1)
  {
    dispatch_once(&qword_100053188, &stru_10003D1A8);
  }

  v1 = qword_100053180;

  return v1;
}

uint64_t sub_100001EA0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindInt64Parameter:"@batchid" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = sqlite3_step(a2);
  while (v8 == 100)
  {
    [*(a1 + 32) int64ForColumn:0 inStatment:a2];
    v9 = 1;
    [*(a1 + 32) int64ForColumn:1 inStatment:a2];
    [*(a1 + 32) int64ForColumn:2 inStatment:a2];
    [*(a1 + 32) int64ForColumn:3 inStatment:a2];
    v10 = [*(a1 + 32) blobForColumn:4 inStatment:a2];
    if (!(*(*(a1 + 40) + 16))())
    {
      goto LABEL_9;
    }

    v8 = sqlite3_step(a2);
  }

  if (v8 == 101)
  {
    return 1;
  }

  v11 = *(a1 + 32);
  v12 = *(*(a1 + 48) + 8);
  v15 = *(v12 + 40);
  [v11 reportSQLiteErrorCode:v8 method:@"step" error:&v15];
  v13 = v15;
  v9 = 0;
  v10 = *(v12 + 40);
  *(v12 + 40) = v13;
LABEL_9:

  return v9;
}

id sub_100002150(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 bindInt64Parameter:"@rowid" toValue:v2 inStatement:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

id sub_1000021C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7;
  [a4 timeIntervalSinceReferenceDate];
  v15 = [NSString stringWithFormat:@"%@_%llu_%lu_%lu_%lu_%lu_%d_%@", @"GEOAPv5", a1, a6, a2, a3, v14, a5, v13];

  return v15;
}

void sub_100002278(uint64_t a1)
{
  [*(a1 + 32) _clearUploadTimer];
  [*(a1 + 32) _flushRemainderToDB];
  v2 = sub_100001134();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "requesting upload now", v4, 2u);
  }

  v3 = sub_100001660();
  sub_1000162C8(v3);
}

void sub_1000024B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000024D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyAndEmptyBatchQueue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_100005AA4()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_1000530A8;
  v5 = qword_1000530A8;
  if (!qword_1000530A8)
  {
    v6 = *off_10003C6A0;
    v7 = *off_10003C6B0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_1000530A8 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_100005BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005BD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000530A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100005C68(uint64_t a1)
{
  if (!sub_100005AA4())
  {
    v2 = abort_report_np();
    free(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BGSystemTaskScheduler");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000530B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    [(GEOAPServiceLocal *)v3 showUploadCounts:v4, v5];
  }
}

void sub_1000074F0(id a1)
{
  qword_1000530B8 = os_log_create("com.apple.GeoAnalytics", "LocalService");

  _objc_release_x1();
}

id sub_10000776C()
{
  if (qword_1000530E0 != -1)
  {
    dispatch_once(&qword_1000530E0, &stru_10003C7C0);
  }

  v1 = qword_1000530D8;

  return v1;
}

void sub_1000077C0(uint64_t a1, char a2, double a3)
{
  if (a2)
  {
    v4 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v6 = [v5 components:28 fromDate:v4];
    v7 = [v5 dateFromComponents:v6];

    v8 = GeoAnalyticsConfig_DailyNetEventAggregationLastRunTime[1];
    GEOConfigGetDate();

    [v6 setDay:{objc_msgSend(v6, "day") - 7}];
    v9 = [v5 dateFromComponents:v6];
    GEOConfigSetDate();
    v19 = v9;
    v10 = [v5 components:28 fromDate:v9];

    [v10 setDay:{objc_msgSend(v10, "day") + 1}];
    v11 = [v5 dateFromComponents:v10];
    while ([v11 compare:v7] == -1)
    {
      v12 = v11;
      v13 = sub_10000776C();
      v14 = os_signpost_id_generate(v13);

      v15 = sub_10000776C();
      v16 = v15;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 138412290;
        v21 = v12;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "DailyNetworkEvent", "for '%@'", buf, 0xCu);
      }

      [*(a1 + 32) runAggregationForDate:v12];
      GEOConfigSetDate();
      [v10 setDay:{objc_msgSend(v10, "day") + 1}];
      v11 = [v5 dateFromComponents:v10];

      v17 = sub_10000776C();
      v18 = v17;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 138412290;
        v21 = v11;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v14, "DailyNetworkEvent", "for '%@'", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = sub_10000776C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "no time sync", buf, 2u);
    }
  }
}

void sub_100007AFC(id a1)
{
  qword_1000530D8 = os_log_create("com.apple.GeoAnalytics", "NetEventAggregator");

  _objc_release_x1();
}

void sub_100008424(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GEONetworkEventData alloc] initWithData:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dataRequestKindType];
    v115 = [v4 dataRequestKindSubtype];
    if ([v4 hasErrorCode] && objc_msgSend(v4, "hasErrorDomain"))
    {
      v6 = [NSError alloc];
      v7 = [v4 errorDomain];
      v8 = [v6 initWithDomain:v7 code:objc_msgSend(v4 userInfo:{"errorCode"), 0}];
    }

    else
    {
      v8 = 0;
    }

    v118 = v8;
    v102 = v2;
    if ([v4 hasUsedBackgroundUrl])
    {
      v9 = [v4 usedBackgroundUrl];
    }

    else
    {
      v9 = 0;
    }

    v11 = [NSNumber numberWithInt:v9];
    v12 = [v4 networkService];
    v13 = [v4 requestingAppIdentifier];
    v14 = [v4 requestingAppMajorVer];
    v15 = [v4 requestingAppMinorVer];
    v16 = [v4 clientMetrics];
    v17 = [v4 additionalStates];
    v101 = v11;
    [GEOAPPortal captureNetworkEventForDataRequestKind:v5 | (v115 << 32) networkService:v12 usedBackgroundURL:v11 requestAppIdentifier:v13 appMajorVersion:v14 appMinorVersion:v15 error:v118 clientMetrics:v16 states:v17];

    v18 = [v4 clientMetrics];
    v19 = [v18 networkMetrics];
    v20 = [v19 transactionMetrics];
    v21 = [v20 lastObject];
    v104 = [v21 usedCellular];

    [v4 eventTimestamp];
    v22 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v23 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v111 = [v23 components:28 fromDate:v22];
    v99 = v23;
    v100 = v22;
    if (v5 == 768 || v5 == 1792 || v5 == 1280)
    {
      v117 = [NSNumber numberWithInt:v115];
    }

    else
    {
      v117 = 0;
    }

    if (v118)
    {
      v109 = [v118 domain];
      v108 = [NSNumber numberWithInteger:[v118 code]];
    }

    else
    {
      v108 = 0;
      v109 = 0;
    }

    v24 = [v4 clientMetrics];
    v25 = [v24 networkMetrics];
    v103 = [v25 httpResponseCode];

    v26 = [v4 clientMetrics];
    v27 = [v26 networkMetrics];
    v116 = [v27 serviceIpAddress];

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v28 = [v4 additionalStates];
    v29 = [v28 countByEnumeratingWithState:&v119 objects:v129 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v120;
      while (2)
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v120 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v119 + 1) + 8 * i);
          if ([v33 stateType] == 706)
          {
            v34 = [v33 tileSet];
            v35 = [v34 tileSetInfos];
            v36 = [v35 firstObject];
            v114 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v36 style]);

            goto LABEL_29;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v119 objects:v129 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v114 = 0;
LABEL_29:

    if ([v4 hasTilesetId])
    {
      v37 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 tilesetId]);
    }

    else
    {
      v37 = 0;
    }

    v113 = v37;
    if ([v4 hasNetworkService])
    {
      v112 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 networkService]);
    }

    else
    {
      v112 = 0;
    }

    v110 = [v4 requestingAppIdentifier];
    v38 = [v4 appIdentifier];
    v39 = [v4 manifestEnvironment];
    v40 = [v4 countryCode];
    v41 = [v4 datasetId];
    v42 = [v4 clientMetrics];
    v43 = [v42 networkMetrics];
    v44 = [v43 transactionMetrics];
    v45 = [v44 lastObject];
    v46 = v4;
    v47 = [v45 reusedConnection];

    v97 = v46;
    v48 = [v46 usedBackgroundUrl];
    if (!v38)
    {
      v38 = @"unspecified";
    }

    v94 = v48;
    v95 = v47;
    v96 = v41;
    v105 = v40;
    v106 = v39;
    v49 = [[NSString alloc] initWithFormat:@"%@-%@-%@-%@-%04d-%02d-%02d-%d-%d-%@-%@-%@-%@-%@-%@-%@-%u-%d-%d", v110, v38, v112, v117, objc_msgSend(v111, "year"), objc_msgSend(v111, "month"), objc_msgSend(v111, "day"), v104, v103, v116, v109, v108, v114, v39, v113, v40, v41, v47, v48];
    v98 = [*(a1 + 32) objectForKeyedSubscript:v38];
    if (!v98)
    {
      v50 = objc_alloc_init(NSMutableDictionary);
      [*(a1 + 32) setObject:v50 forKeyedSubscript:v38];
    }

    v51 = [*(a1 + 32) objectForKeyedSubscript:v38];
    v52 = [v51 objectForKeyedSubscript:v49];

    v53 = v118;
    v4 = v46;
    if (!v52)
    {
      v54 = objc_alloc_init(NSMutableArray);
      v55 = objc_alloc_init(NSMutableArray);
      v56 = objc_alloc_init(NSMutableArray);
      v52 = [[NSMutableDictionary alloc] initWithCapacity:10];
      v57 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v111 year]);
      [v52 setObject:v57 forKeyedSubscript:@"y"];

      v58 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v111 month]);
      [v52 setObject:v58 forKeyedSubscript:@"m"];

      v59 = v55;
      v60 = v54;
      v61 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v111 day]);
      [v52 setObject:v61 forKeyedSubscript:@"d"];

      v62 = [NSNumber numberWithBool:v104];
      [v52 setObject:v62 forKeyedSubscript:@"c"];

      [v52 setObject:v54 forKeyedSubscript:@"L"];
      [v52 setObject:v59 forKeyedSubscript:@"tx"];
      [v52 setObject:v56 forKeyedSubscript:@"rx"];
      [v52 setObject:v106 forKeyedSubscript:@"me"];
      [v52 setObject:v110 forKeyedSubscript:@"raid"];
      [v52 setObject:v38 forKeyedSubscript:@"aid"];
      [v52 setObject:v116 forKeyedSubscript:@"ip"];
      v63 = [NSNumber numberWithBool:v95];
      [v52 setObject:v63 forKeyedSubscript:@"cr"];

      v64 = [NSNumber numberWithBool:v94];
      [v52 setObject:v64 forKeyedSubscript:@"ubu"];

      if (v112)
      {
        [v52 setObject:v112 forKeyedSubscript:@"n"];
      }

      if (v103)
      {
        v65 = [NSNumber numberWithInt:?];
        [v52 setObject:v65 forKeyedSubscript:@"hc"];
      }

      v53 = v118;
      if (v117)
      {
        [v52 setObject:v117 forKeyedSubscript:@"p"];
      }

      if (v114)
      {
        [v52 setObject:v114 forKeyedSubscript:@"tss"];
      }

      if (v113)
      {
        [v52 setObject:v113 forKeyedSubscript:@"tsi"];
      }

      if (v118)
      {
        [v52 setObject:v109 forKeyedSubscript:@"ed"];
        [v52 setObject:v108 forKeyedSubscript:@"ec"];
      }

      if (v40)
      {
        [v52 setObject:v40 forKeyedSubscript:@"cc"];
      }

      if (v96)
      {
        v66 = [NSNumber numberWithUnsignedInt:?];
        [v52 setObject:v66 forKeyedSubscript:@"dsid"];
      }

      v67 = [*(a1 + 32) objectForKeyedSubscript:v38];
      [v67 setObject:v52 forKeyedSubscript:v49];
    }

    v68 = v49;
    v69 = [v97 clientMetrics];
    v70 = [v69 networkMetrics];
    v71 = [v70 transactionMetrics];
    v72 = [v71 lastObject];
    [v72 requestStart];
    v74 = v73;

    v75 = [v97 clientMetrics];
    v76 = [v75 networkMetrics];
    v77 = [v76 transactionMetrics];
    v78 = [v77 lastObject];
    [v78 requestEnd];
    v80 = v79;

    if (v80 <= v74)
    {
      v81 = 0.0;
    }

    else
    {
      v81 = (v80 - v74) * 1000.0 * 1000.0;
    }

    v82 = [v52 objectForKeyedSubscript:@"L"];
    v83 = [NSNumber numberWithDouble:v81];
    [v82 addObject:v83];

    if (v53)
    {
      v84 = sub_10000776C();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        v85 = [v82 count];
        *buf = 134218498;
        v124 = v85;
        v125 = 2048;
        v126 = v82;
        v127 = 2112;
        v128 = v68;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEBUG, "count now %lu %p %@", buf, 0x20u);
      }
    }

    v86 = [v52 objectForKeyedSubscript:@"tx"];
    v87 = [v97 clientMetrics];
    v88 = [v87 networkMetrics];
    v89 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v88 requestDataSize]);
    [v86 addObject:v89];

    v90 = [v52 objectForKeyedSubscript:@"rx"];
    v91 = [v97 clientMetrics];
    v92 = [v91 networkMetrics];
    v93 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v92 responseDataSize]);
    [v90 addObject:v93];

    v10 = v118;
    v2 = v102;
  }

  else
  {
    v10 = sub_10000776C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "unable to read data element", buf, 2u);
    }
  }
}

void sub_100009150(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v25 = objc_alloc_init(GEONetEventAggregateStats);
  [*(a1 + 32) setLatencyStats:v25];

  v26 = [*(a1 + 32) latencyStats];
  [v26 setMax:a4];

  v27 = [*(a1 + 32) latencyStats];
  [v27 setMin:a3];

  v28 = [*(a1 + 32) latencyStats];
  [v28 setP10:a5];

  v29 = [*(a1 + 32) latencyStats];
  [v29 setP25:a6];

  v30 = [*(a1 + 32) latencyStats];
  [v30 setP50:a7];

  v31 = [*(a1 + 32) latencyStats];
  [v31 setP75:a8];

  v32 = [*(a1 + 32) latencyStats];
  [v32 setP90:a9];

  v33 = [*(a1 + 32) latencyStats];
  [v33 setP99:a10];

  v34 = a2;
  v36 = [*(a1 + 32) latencyStats];
  [v36 setAlgMean:v34];
}

void sub_100009318(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v25 = objc_alloc_init(GEONetEventAggregateStats);
  [*(a1 + 32) setTxBytesStats:v25];

  v26 = [*(a1 + 32) txBytesStats];
  [v26 setMax:a4];

  v27 = [*(a1 + 32) txBytesStats];
  [v27 setMin:a3];

  v28 = [*(a1 + 32) txBytesStats];
  [v28 setP10:a5];

  v29 = [*(a1 + 32) txBytesStats];
  [v29 setP25:a6];

  v30 = [*(a1 + 32) txBytesStats];
  [v30 setP50:a7];

  v31 = [*(a1 + 32) txBytesStats];
  [v31 setP75:a8];

  v32 = [*(a1 + 32) txBytesStats];
  [v32 setP90:a9];

  v33 = [*(a1 + 32) txBytesStats];
  [v33 setP99:a10];

  v34 = a2;
  v36 = [*(a1 + 32) txBytesStats];
  [v36 setAlgMean:v34];
}

void sub_1000094E0(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v25 = objc_alloc_init(GEONetEventAggregateStats);
  [*(a1 + 32) setRxBytesStats:v25];

  v26 = [*(a1 + 32) rxBytesStats];
  [v26 setMax:a4];

  v27 = [*(a1 + 32) rxBytesStats];
  [v27 setMin:a3];

  v28 = [*(a1 + 32) rxBytesStats];
  [v28 setP10:a5];

  v29 = [*(a1 + 32) rxBytesStats];
  [v29 setP25:a6];

  v30 = [*(a1 + 32) rxBytesStats];
  [v30 setP50:a7];

  v31 = [*(a1 + 32) rxBytesStats];
  [v31 setP75:a8];

  v32 = [*(a1 + 32) rxBytesStats];
  [v32 setP90:a9];

  v33 = [*(a1 + 32) rxBytesStats];
  [v33 setP99:a10];

  v34 = a2;
  v36 = [*(a1 + 32) rxBytesStats];
  [v36 setAlgMean:v34];
}

void sub_100009A18(id a1)
{
  qword_1000530C8 = objc_alloc_init(GEOAPNetEventAggregator);

  _objc_release_x1();
}

id sub_10000A4A8()
{
  if (qword_1000530F0 != -1)
  {
    dispatch_once(&qword_1000530F0, &stru_10003C7E0);
  }

  v1 = qword_1000530E8;

  return v1;
}

void sub_10000A4FC(id a1)
{
  qword_1000530E8 = os_log_create("com.apple.GeoAnalytics", "Holddown");

  _objc_release_x1();
}

id sub_10000AB3C()
{
  if (qword_100053110 != -1)
  {
    dispatch_once(&qword_100053110, &stru_10003C910);
  }

  v1 = qword_100053108;

  return v1;
}

void sub_10000AB90(id a1)
{
  qword_100053108 = os_log_create("com.apple.GeoAnalytics", "Aggregator");

  _objc_release_x1();
}

void sub_10000B088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 240), 8);
  _Block_object_dispose((v61 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B104(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000B11C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 createTime];
  v6 = [v5 compare:*(a1 + 32)];

  if (v6 != 1)
  {
    v9 = [v3 createTime];
    v10 = [v9 compare:*(a1 + 40)];

    if (v10 != -1)
    {
      if ([v3 countType] != 149)
      {
        if ([v3 countType] == 150 && *(*(*(a1 + 72) + 8) + 40))
        {
          v16 = *(*(*(a1 + 80) + 8) + 24);
          v17 = [v3 createTime];
          [v17 timeIntervalSinceDate:*(*(*(a1 + 72) + 8) + 40)];
          *(*(*(a1 + 80) + 8) + 24) = v16 + v18;

          v19 = *(a1 + 72);
        }

        else
        {
          if ([v3 countType] == 45)
          {
            v20 = [v3 createTime];
            v21 = *(*(a1 + 88) + 8);
            v22 = *(v21 + 40);
            *(v21 + 40) = v20;
          }

          if ([v3 countType] != 165 || !*(*(*(a1 + 88) + 8) + 40))
          {
            ++*(*(*(a1 + 56) + 8) + 24);
            v28 = [NSString alloc];
            v29 = [v3 countType];
            v30 = [v3 usageString];
            v31 = [v3 usageBool];
            v32 = [v28 initWithFormat:@"%u%@%@", v29, v30, v31];

            v33 = [v3 appId];
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_10000BB00;
            v34[3] = &unk_10003C878;
            v35 = *(a1 + 48);
            v36 = v32;
            v37 = v3;
            v38 = *(a1 + 104);
            v8 = v32;
            [GEOAPUtils appTypeForAppId:v33 resultBlock:v34];

            v7 = 1;
            goto LABEL_9;
          }

          v23 = *(*(*(a1 + 96) + 8) + 24);
          v24 = [v3 createTime];
          [v24 timeIntervalSinceDate:*(*(*(a1 + 88) + 8) + 40)];
          *(*(*(a1 + 96) + 8) + 24) = v23 + v25;

          v19 = *(a1 + 88);
        }

        v26 = *(v19 + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = 0;

        v7 = 0;
        v14 = *(a1 + 56);
        goto LABEL_8;
      }

      v11 = [v3 createTime];
      v12 = *(*(a1 + 72) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

LABEL_7:
    v7 = 0;
    v14 = *(a1 + 64);
LABEL_8:
    ++*(*(v14 + 8) + 24);
    LOBYTE(v8) = 1;
    goto LABEL_9;
  }

  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    goto LABEL_7;
  }

  v7 = 0;
  LOBYTE(v8) = 0;
LABEL_9:
  objc_autoreleasePoolPop(v4);

  return (v7 | v8) & 1;
}

uint64_t sub_10000B484(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v32 = objc_alloc_init(NSMutableArray);
    if (*(a1 + 104) >= 1)
    {
      v2 = 0;
      do
      {
        v34 = [[NSNumber alloc] initWithInt:v2];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        obj = *(a1 + 32);
        v35 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v35)
        {
          v33 = *v40;
          do
          {
            for (i = 0; i != v35; i = i + 1)
            {
              if (*v40 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v4 = *(*(&v39 + 1) + 8 * i);
              v5 = objc_autoreleasePoolPush();
              v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
              v7 = [v6 objectForKeyedSubscript:v34];

              if (v7)
              {
                v8 = [v7 objectForKeyedSubscript:@"e"];
                v9 = objc_alloc_init(GEODailyUseSummaryUseEvent);
                [v9 setEventType:{objc_msgSend(v8, "countType")}];
                v10 = v2;
                [v9 setAppType:v2];
                v11 = [v7 objectForKeyedSubscript:@"c"];
                [v9 setCount:{+[GEOAPFuzzers fuzzDailyCount:forDailyUsageType:](GEOAPFuzzers, "fuzzDailyCount:forDailyUsageType:", objc_msgSend(v11, "unsignedIntValue"), objc_msgSend(v9, "eventType"))}];

                v12 = [v8 usageBool];

                if (v12)
                {
                  v13 = [v8 usageBool];
                  [v9 setUsageBool:{objc_msgSend(v13, "BOOLValue")}];
                }

                v14 = [v8 usageString];
                [v9 setUsageString:v14];

                [v32 addObject:v9];
                v2 = v10;
              }

              objc_autoreleasePoolPop(v5);
            }

            v35 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v35);
        }

        v2 = (v2 + 1);
      }

      while (v2 < *(a1 + 104));
    }

    v15 = GeoAnalyticsConfig_MapsLastUseDate[1];
    if (_GEOConfigHasValue())
    {
      v16 = [NSNumber alloc];
      GEOConfigGetDouble();
      v17 = [v16 initWithDouble:?];
    }

    else
    {
      v17 = 0;
    }

    v18 = *(*(*(a1 + 56) + 8) + 40);
    if (v18)
    {
      [v18 timeIntervalSinceReferenceDate];
      GEOConfigSetDouble();
    }

    if (*(*(*(a1 + 64) + 8) + 24) > 0.0)
    {
      v19 = objc_alloc_init(GEODailyUseSummaryUseEvent);
      [v19 setEventType:151];
      [v19 setAppType:0];
      v20 = *(*(*(a1 + 72) + 8) + 40);
      if (v20 && v20 != *(a1 + 40))
      {
        [v19 setUsageString:@"Dropped counts"];
      }

      [v19 setCount:{+[GEOAPFuzzers fuzzDailyCount:forDailyUsageType:](GEOAPFuzzers, "fuzzDailyCount:forDailyUsageType:", *(*(*(a1 + 64) + 8) + 24), objc_msgSend(v19, "eventType"))}];
      [v32 addObject:v19];
    }

    if (*(*(*(a1 + 80) + 8) + 24) > 0.0)
    {
      v21 = objc_alloc_init(GEODailyUseSummaryUseEvent);
      [v21 setEventType:166];
      [v21 setAppType:0];
      v22 = *(*(*(a1 + 88) + 8) + 40);
      if (v22 && v22 != *(a1 + 40))
      {
        [v21 setUsageString:@"Dropped counts"];
      }

      [v21 setCount:{+[GEOAPFuzzers fuzzDailyCount:forDailyUsageType:](GEOAPFuzzers, "fuzzDailyCount:forDailyUsageType:", *(*(*(a1 + 80) + 8) + 24), objc_msgSend(v21, "eventType"))}];
      [v32 addObject:v21];
    }

    v23 = +[NSTimeZone defaultTimeZone];
    v24 = +[NSDate dateWithTimeInterval:sinceDate:](NSDate, "dateWithTimeInterval:sinceDate:", *(*(*(a1 + 96) + 8) + 40), [v23 secondsFromGMTForDate:*(*(*(a1 + 96) + 8) + 40)]);
    v25 = *(*(a1 + 96) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v27 = *(a1 + 40);
    v37 = v17;
    v38 = *(a1 + 96);
    v36 = v27;
    v28 = v17;
    v29 = v32;
    geo_dispatch_async_qos();
  }

  return 1;
}

void sub_10000BA20(uint64_t a1)
{
  v5 = [*(a1 + 32) copy];
  v2 = [GEOAPUtils dailyAggregationTimestampFromDate:*(a1 + 40)];
  v3 = [GEOAPUtils dailyAggregationRepresentativeStringFromDate:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];
  [GEOAPPortal captureDailyUseSummaryWithUseEvents:v5 summaryPeriod:1 summaryDate:v2 aggregationSummaryDate:v3 firstEventDate:v4 user_mapsUseLastDate:*(a1 + 48)];
}

void sub_10000BB00(uint64_t a1, uint64_t a2, int a3)
{
  v26 = [[NSNumber alloc] initWithInt:a2];
  v5 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];

  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v8 = [v7 objectForKeyedSubscript:v26];

  if (!v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    [v10 setObject:v9 forKeyedSubscript:v26];

    v11 = *(a1 + 48);
    v12 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v13 = [v12 objectForKeyedSubscript:v26];
    [v13 setObject:v11 forKeyedSubscript:@"e"];
  }

  v14 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v15 = [v14 objectForKeyedSubscript:v26];
  v16 = [v15 objectForKeyedSubscript:@"c"];

  v17 = [[NSNumber alloc] initWithInt:{objc_msgSend(v16, "intValue") + 1}];
  v18 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v19 = [v18 objectForKeyedSubscript:v26];
  [v19 setObject:v17 forKeyedSubscript:@"c"];

  if (!*(*(*(a1 + 56) + 8) + 40) && a3)
  {
    v20 = [*(a1 + 48) createTime];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  if (a3 && ([*(a1 + 48) countType] == 45 || objc_msgSend(*(a1 + 48), "countType") == 152))
  {
    v23 = [*(a1 + 48) createTime];
    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }
}

uint64_t sub_10000BF40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 settings];

  v6 = sub_10000AB3C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "found daily settings record", buf, 2u);
    }

    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [v3 settings];
    v6 = v9;
    if (v8)
    {
      [v8 mergeFrom:v9];
    }

    else
    {
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
      v6 = v11;
    }
  }

  else if (v7)
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "daily settings record found but is empty", v13, 2u);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

uint64_t sub_10000C06C(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = *(a1 + 32);
    geo_dispatch_async_qos();
  }

  else
  {
    v1 = sub_10000AB3C();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "no daily settings to report", buf, 2u);
    }
  }

  return 1;
}

void sub_10000C140(uint64_t a1)
{
  v6 = [*(*(*(a1 + 32) + 8) + 40) mapSettings];
  v2 = [*(*(*(a1 + 32) + 8) + 40) mapUiShown];
  v3 = [*(*(*(a1 + 32) + 8) + 40) mapsFeatures];
  v4 = [*(*(*(a1 + 32) + 8) + 40) mapsUserSettings];
  v5 = [*(*(*(a1 + 32) + 8) + 40) routingSettings];
  [GEOAPPortal capturePeriodicSettingsWithMapSettings:v6 mapUiShown:v2 mapsFeatures:v3 mapsUserSettings:v4 routingSettings:v5];
}

id sub_10000C4B8(uint64_t a1)
{
  if (a1)
  {
    a1 = [*(a1 + 8) dateByAddingTimeInterval:*(a1 + 16)];
    v1 = vars8;
  }

  return a1;
}

id sub_10000C6AC()
{
  objc_opt_self();
  if (qword_100053100 != -1)
  {
    dispatch_once(&qword_100053100, &stru_10003C800);
  }

  v0 = qword_1000530F8;

  return v0;
}

void sub_10000C704(id a1)
{
  qword_1000530F8 = objc_alloc_init(GEOAPCountsAggregator);

  _objc_release_x1();
}

uint64_t sub_10000C740(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100053118 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000C7D8()
{
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100053118;
  v9 = qword_100053118;
  if (!qword_100053118)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10000C740;
    v3[4] = &unk_10003C960;
    v4 = &v6;
    v5 = v3;
    v10 = *off_10003C930;
    v11 = *off_10003C940;
    v12 = 0;
    v7[3] = _sl_dlopen();
    qword_100053118 = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_10000C91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000C93C(uint64_t a1)
{
  v2 = sub_10000C7D8();
  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100053120 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000CC48(id a1)
{
  qword_100053130 = os_log_create("com.apple.GeoAnalytics", "GEOAPDaemon");

  _objc_release_x1();
}

void sub_10000D1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D1EC(uint64_t a1)
{
  v2 = sub_100001018();
  sub_10001A2D0(v2, *(a1 + 32));

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[1] invalidate];
    v4 = v5[1];
    v5[1] = 0;

    WeakRetained = v5;
  }
}

void sub_10000D274(uint64_t a1)
{
  v2 = sub_100001018();
  sub_10001A2D0(v2, *(a1 + 32));

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    WeakRetained[1] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
  }
}

void sub_10000D41C(uint64_t a1)
{
  v2 = sub_100000F70();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[GEOAPDaemonManagerBridge showEvalData]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v3 = +[GEOAPServiceManager sharedManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D590;
  v5[3] = &unk_10003C9B0;
  v6 = *(a1 + 32);
  [v3 showEvalDataWithVisitorBlock:v5];

  v4 = sub_100000F70();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "will call endEvalData", buf, 2u);
  }

  [*(a1 + 32) endEvalData];
}

void sub_10000D590(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = sub_100000F70();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "eval visit type %llu", &v10, 0xCu);
  }

  [*(a1 + 32) evalData:v8 ofType:a2 createTime:v7];
}

void sub_10000DF40(uint64_t a1)
{
  v2 = sub_100000F70();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SIGTERM received", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _shutdown];
}

void sub_10000E334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E368(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] invalidate];
    v2 = v3[1];
    v3[1] = 0;

    WeakRetained = v3;
  }
}

void sub_10000E3C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

id sub_10000E510()
{
  objc_opt_self();
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = sub_10000E618;
  v7 = sub_10000E628;
  v8 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E630;
  block[3] = &unk_10003CA28;
  block[4] = &v3;
  if (qword_100053128 != -1)
  {
    dispatch_once(&qword_100053128, block);
  }

  v0 = v4[5];
  _Block_object_dispose(&v3, 8);

  return v0;
}

uint64_t sub_10000E618(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000E630(uint64_t a1)
{
  v2 = objc_alloc_init(GEOAPDaemon);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void *sub_10000E67C(void *result)
{
  if (result)
  {
    v1 = result;
    [result _setupSigHandler];
    v2 = v1[1];

    return [v2 activate];
  }

  return result;
}

void sub_10000E808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E820(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E8D4;
  v5[3] = &unk_10003CBF8;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  *(*(*(a1 + 56) + 8) + 24) = [v4 executeInTransaction:v5];
}

uint64_t sub_10000E8D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10000EB48;
  v19 = &unk_10003CC48;
  v3 = *(a1 + 40);
  v20 = *(a1 + 32);
  v21 = v3;
  v4 = v2;
  v5 = &v16;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000EDA8;
  v26 = sub_10000EDB8;
  v27 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v29 = sub_10000EDC0;
  v30 = &unk_10003CD98;
  v6 = v4;
  v31 = v6;
  v7 = v5;
  v32 = v7;
  v33 = &v22;
  v8 = [v6 statementForKey:@"SelectDailySettings" statementBlock:{&buf, v16, v17, v18, v19, v20}];
  v9 = v23[5];
  if (v9)
  {
    v10 = v9;
  }

  _Block_object_dispose(&v22, 8);
  v11 = v9;
  if (v8)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = (*(v12 + 16))();
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v14 = sub_1000014A0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "DeleteOneDailySettings: %@", &buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

void sub_10000EB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000EB48(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v7 = a3;
  v8 = [[GEOLogMsgEventPeriodicSettingsSummary alloc] initWithData:v7];
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
  v10 = [[GEOAPDailySettingsQueueElem alloc] initWithSettings:v8 createTime:v9];
  if ((*(*(a1 + 40) + 16))())
  {
    v11 = *(*(a1 + 32) + 8);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_10000EDA8;
    v23 = sub_10000EDB8;
    v24 = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v26 = sub_10000EF08;
    v27 = &unk_10003CD08;
    v12 = v11;
    v29 = &v19;
    v30 = a2;
    v28 = v12;
    v13 = [v12 executeStatement:@"DeleteOneDailySettings" statementBlock:&buf];
    v14 = v20[5];
    if (v14)
    {
      v15 = v14;
    }

    _Block_object_dispose(&v19, 8);
    v16 = v14;
    if ((v13 & 1) == 0)
    {
      v17 = sub_1000014A0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "SelectDailySettingsInRange: %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t sub_10000EDA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000EDC0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  while (v4 == 100)
  {
    [*(a1 + 32) int64ForColumn:0 inStatment:a2];
    v5 = [*(a1 + 32) blobForColumn:1 inStatment:a2];
    [*(a1 + 32) int64ForColumn:2 inStatment:a2];
    if (((*(*(a1 + 40) + 16))() & 1) == 0)
    {

      return 1;
    }

    v4 = sqlite3_step(a2);
  }

  if (v4 != 101)
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 48) + 8);
    obj = *(v7 + 40);
    [v6 reportSQLiteErrorCode:v4 method:@"step" error:&obj];
    objc_storeStrong((v7 + 40), obj);
    return 0;
  }

  return 1;
}

void sub_10000EEC4(id a1)
{
  qword_100053150 = os_log_create("com.apple.GeoAnalytics", "DB");

  _objc_release_x1();
}

id sub_10000EF08(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 bindInt64Parameter:"@rowid" toValue:v2 inStatement:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

id sub_10000F1D0(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindBlobParameter:"@settings" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a1[7];
  v10 = *(a1[6] + 8);
  v13 = *(v10 + 40);
  v11 = [v8 bindInt64Parameter:"@createtime" toValue:v9 inStatement:a2 error:&v13];
  objc_storeStrong((v10 + 40), v13);
  return v11;
}

void sub_10000F38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F3A4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F458;
  v5[3] = &unk_10003CBF8;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  *(*(*(a1 + 56) + 8) + 24) = [v4 executeInTransaction:v5];
}

uint64_t sub_10000F458(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 8);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10000F6C8;
  v20 = &unk_10003CBD0;
  v21 = v3;
  v22 = v2;
  v5 = v4;
  v6 = &v17;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000EDA8;
  v27 = sub_10000EDB8;
  v28 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v30 = sub_10000F980;
  v31 = &unk_10003CD98;
  v7 = v5;
  v32 = v7;
  v8 = v6;
  v33 = v8;
  v34 = &v23;
  v9 = [v7 statementForKey:@"SelectDailyCounts" statementBlock:{&buf, v17, v18, v19, v20, v21}];
  v10 = v24[5];
  if (v10)
  {
    v11 = v10;
  }

  _Block_object_dispose(&v23, 8);
  v12 = v10;
  if (v9)
  {
    v13 = a1[6];
    if (v13)
    {
      v14 = (*(v13 + 16))();
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v15 = sub_1000014A0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "SelectDailyCounts: %@", &buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

void sub_10000F6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F6C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7)
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  context = objc_autoreleasePoolPush();
  v16 = [*(a1 + 32) usageBoolNumber:v15];
  v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:a7];
  v18 = [[GEOAPDailyCountsQueueElem alloc] initWithType:a3 usageString:v14 usageBool:v16 appId:v13 createTime:v17];
  v19 = (*(*(a1 + 40) + 16))();
  if (v19)
  {
    v20 = *(*(a1 + 32) + 8);
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_10000EDA8;
    v33 = sub_10000EDB8;
    v34 = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v36 = sub_10000FAFC;
    v37 = &unk_10003CD08;
    v21 = v20;
    v39 = &v29;
    v40 = a2;
    v38 = v21;
    v22 = [v21 executeStatement:@"DeleteOneDailyCount" statementBlock:&buf];
    v23 = v30[5];
    if (v23)
    {
      v24 = v23;
    }

    _Block_object_dispose(&v29, 8);
    v25 = v23;
    if ((v22 & 1) == 0)
    {
      v26 = sub_1000014A0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "DeleteOneDailyCount: %@", &buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {

    objc_autoreleasePoolPop(context);
  }

  return v19;
}

void sub_10000F960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F980(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  if (v4 == 100)
  {
    while (1)
    {
      [*(a1 + 32) int64ForColumn:0 inStatment:a2];
      [*(a1 + 32) intForColumn:1 inStatment:a2];
      v5 = [*(a1 + 32) stringForColumn:2 inStatment:a2];
      v6 = [*(a1 + 32) stringForColumn:3 inStatment:a2];
      v7 = [*(a1 + 32) stringForColumn:4 inStatment:a2];
      [*(a1 + 32) int64ForColumn:5 inStatment:a2];
      if (((*(*(a1 + 40) + 16))() & 1) == 0)
      {
        break;
      }

      v8 = sqlite3_step(a2);

      if (v8 != 100)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v8 = v4;
LABEL_6:
    if (v8 != 101)
    {
      v9 = *(a1 + 32);
      v10 = *(*(a1 + 48) + 8);
      obj = *(v10 + 40);
      [v9 reportSQLiteErrorCode:v8 method:@"step" error:&obj];
      objc_storeStrong((v10 + 40), obj);
      return 0;
    }
  }

  return 1;
}

id sub_10000FAFC(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 bindInt64Parameter:"@rowid" toValue:v2 inStatement:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

id sub_10000FE50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 80);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindIntParameter:"@type" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v10 = *(*(a1 + 64) + 8);
  v28 = *(v10 + 40);
  v11 = [v8 bindInt64Parameter:"@createtime" toValue:v9 inStatement:a2 error:&v28];
  objc_storeStrong((v10 + 40), v28);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(*(a1 + 64) + 8);
  v27 = *(v14 + 40);
  v15 = [v12 bindTextParameter:"@appid" toValue:v13 inStatement:a2 error:&v27];
  objc_storeStrong((v14 + 40), v27);
  if (!v15)
  {
    return 0;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(*(a1 + 64) + 8);
  v26 = *(v18 + 40);
  v19 = [v16 bindTextParameter:"@usagestring" toValue:v17 inStatement:a2 error:&v26];
  objc_storeStrong((v18 + 40), v26);
  if (!v19)
  {
    return 0;
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 56);
  v22 = *(*(a1 + 64) + 8);
  v25 = *(v22 + 40);
  v23 = [v20 bindTextParameter:"@usageBOOL" toValue:v21 inStatement:a2 error:&v25];
  objc_storeStrong((v22 + 40), v25);
  return v23;
}

void sub_10001013C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100010154(uint64_t a1)
{
  result = [*(a1 + 32) _analyticsCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100010298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000102B0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001036C;
  v6[3] = &unk_10003CB80;
  v5 = *(a1 + 64);
  v6[4] = v3;
  v9 = v5;
  v7 = v2;
  v8 = *(a1 + 48);
  *(*(*(a1 + 56) + 8) + 24) = [v4 executeInTransaction:v6];
}

uint64_t sub_10001036C(uint64_t a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10000EDA8;
  v30 = sub_10000EDB8;
  v31 = 0;
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 56);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10001065C;
  v21 = &unk_10003CB58;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v24 = v4;
  v25 = &v26;
  v22 = v5;
  v23 = 0;
  v6 = v2;
  v7 = &v18;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000EDA8;
  v36 = sub_10000EDB8;
  v37 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v39 = sub_100001EA0;
  v40 = &unk_10003CDC0;
  v8 = v6;
  v43 = &v32;
  v44 = v3;
  v41 = v8;
  v9 = v7;
  v42 = v9;
  v10 = [v8 statementForKey:@"SelectAnalyticWithBatchId" statementBlock:{&buf, v18, v19, v20, v21, v22}];
  v11 = v33[5];
  if (v11)
  {
    v12 = v11;
  }

  _Block_object_dispose(&v32, 8);
  v13 = v11;
  if ((v10 & 1) == 0)
  {
    v16 = sub_1000014A0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "SelectAnalytic: %@", &buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (v27[5])
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = (*(v14 + 16))();
  }

  else
  {
    v15 = 1;
  }

LABEL_11:

  _Block_object_dispose(&v26, 8);
  return v15;
}

void sub_100010628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001065C(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
  v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
  v15 = [[GEOAPLogMsgQueueElem alloc] initWithLogMsg:v11 uploadBatchId:a5 expireTime:v14 createTime:v13];
  if (!(*(a1[6] + 16))())
  {
LABEL_9:
    v24 = 0;
    goto LABEL_10;
  }

  v16 = *(a1[7] + 8);
  v19 = *(v16 + 40);
  v17 = (v16 + 40);
  v18 = v19;
  v20 = *(a1[4] + 8);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000EDA8;
  v32 = sub_10000EDB8;
  v33 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v35 = sub_100002150;
  v36 = &unk_10003CD08;
  v21 = v20;
  v38 = &v28;
  v39 = a2;
  v37 = v21;
  v22 = [v21 executeStatement:@"DeleteOneAnalytic" statementBlock:&buf];
  v23 = v29[5];
  if (v23)
  {
    v18 = v23;
  }

  _Block_object_dispose(&v28, 8);
  objc_storeStrong(v17, v18);
  if ((v22 & 1) == 0)
  {
    v25 = sub_1000014A0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = a1[5];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "DeleteOneAnalytic: %@", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  v24 = 1;
LABEL_10:

  objc_autoreleasePoolPop(v12);
  return v24;
}

void sub_1000108EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000109C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000109E0(uint64_t a1)
{
  v2 = [*(a1 + 32) dateNow];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v12 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010B30;
  v9[3] = &unk_10003CB08;
  v9[4] = v3;
  v5 = v2;
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  LOBYTE(v4) = sub_100001A9C(v4, &v12, v9);
  v7 = v12;
  if ((v4 & 1) == 0)
  {
    v8 = sub_1000014A0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "SelectAnalyticBatchIdsForUpload : %@", buf, 0xCu);
    }
  }
}

BOOL sub_100010B30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  [*(a1 + 32) holdDownDurationForBatch:a2];
  v6 = v5;
  v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
  v8 = [v7 dateByAddingTimeInterval:v6];
  v9 = [*(a1 + 40) compare:v8];
  if (v9 == -1)
  {
    [v8 timeIntervalSinceDate:*(a1 + 40)];
    v11 = *(*(a1 + 48) + 8);
    if (v10 < *(v11 + 24))
    {
      *(v11 + 24) = v10;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return v9 == -1;
}

id sub_10001102C(double *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = a1[7];
  v6 = *(*(a1 + 6) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindRealParameter:"@createtime" toValue:a2 inStatement:&obj error:v5];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 4);
  v9 = *(a1 + 8);
  v10 = *(*(a1 + 6) + 8);
  v23 = *(v10 + 40);
  v11 = [v8 bindInt64Parameter:"@type" toValue:v9 inStatement:a2 error:&v23];
  objc_storeStrong((v10 + 40), v23);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 4);
  v13 = *(a1 + 9);
  v14 = *(*(a1 + 6) + 8);
  v22 = *(v14 + 40);
  v15 = [v12 bindInt64Parameter:"@batchid" toValue:v13 inStatement:a2 error:&v22];
  objc_storeStrong((v14 + 40), v22);
  if (!v15)
  {
    return 0;
  }

  v16 = *(a1 + 4);
  v17 = *(a1 + 5);
  v18 = *(*(a1 + 6) + 8);
  v21 = *(v18 + 40);
  v19 = [v16 bindBlobParameter:"@analytic" toValue:v17 inStatement:a2 error:&v21];
  objc_storeStrong((v18 + 40), v21);
  return v19;
}

id sub_1000111F8(uint64_t a1)
{
  [*(*(a1 + 32) + 8) executeStatement:@"DeleteAllDailyCount" statementBlock:&stru_10003CD28];
  v2 = *(*(a1 + 32) + 8);

  return [v2 executeStatement:@"DeleteAllDailySettings" statementBlock:&stru_10003CD48];
}

void sub_1000112E0(uint64_t a1)
{
  [*(a1 + 32) timeNow];
  v3 = v2;
  v4 = *(*(a1 + 32) + 8);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000EDA8;
  v16 = sub_10000EDB8;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011410;
  v8[3] = &unk_10003CD08;
  v5 = v4;
  v10 = &v12;
  v11 = v3;
  v9 = v5;
  [v5 executeStatement:@"DeleteAllExpiredAnalytics" statementBlock:v8];
  v6 = v13[5];
  if (v6)
  {
    v7 = v6;
  }

  _Block_object_dispose(&v12, 8);
}

void sub_1000113F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100011410(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 bindInt64Parameter:"@expiretime" toValue:v2 inStatement:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

void sub_100011534(uint64_t a1)
{
  v2 = _GEOCreateTransaction();
  if ([*(a1 + 32) _analyticsCount] >= *(a1 + 48))
  {
    v6 = sub_1000014A0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) count];
      *buf = 134217984;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "unable to write %lu elements; over size limit", buf, 0xCu);
    }
  }

  else
  {
    v3 = *(*(a1 + 32) + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001168C;
    v8[3] = &unk_10003CAB8;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v9 = v4;
    v10 = v5;
    [v3 executeInTransaction:v8];

    v2 = 0;
    v6 = v9;
  }
}

uint64_t sub_10001168C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = sub_1000014A0();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "inserting elem %@", buf, 0xCu);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 40) _writeLogMsgQueueElem:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(a1 + 40) _writeDailyCountElem:v7];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [*(a1 + 40) _writeDailySettingsElem:v7];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  return 1;
}

void sub_100011DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100011DF4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _setup:v3];

  return v5;
}

void sub_100011F44(id a1)
{
  qword_100053140 = objc_alloc_init(GEOAPDB);

  _objc_release_x1();
}

void sub_100012018(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000121A4;
  v9 = &unk_10003CC98;
  v10 = *(a1 + 40);
  v2 = v1;
  v3 = &v6;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_10000EDA8;
  v15[4] = sub_10000EDB8;
  v16 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012228;
  v11[3] = &unk_10003CD98;
  v4 = v2;
  v12 = v4;
  v5 = v3;
  v13 = v5;
  v14 = v15;
  [v4 statementForKey:@"SelectAllShadowAnalytics" statementBlock:{v11, v6, v7, v8, v9}];

  _Block_object_dispose(v15, 8);
}

void sub_10001218C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000121A4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:a2];
  (*(*(a1 + 32) + 16))();

  return 1;
}

uint64_t sub_100012228(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  while (v4 == 100)
  {
    [*(a1 + 32) doubleForColumn:0 inStatment:a2];
    v6 = v5;
    [*(a1 + 32) int64ForColumn:1 inStatment:a2];
    [*(a1 + 32) int64ForColumn:2 inStatment:a2];
    v7 = [*(a1 + 32) blobForColumn:3 inStatment:a2];
    if (((*(*(a1 + 40) + 16))(v6) & 1) == 0)
    {

      return 1;
    }

    v4 = sqlite3_step(a2);
  }

  if (v4 != 101)
  {
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 48) + 8);
    obj = *(v9 + 40);
    [v8 reportSQLiteErrorCode:v4 method:@"step" error:&obj];
    objc_storeStrong((v9 + 40), obj);
    return 0;
  }

  return 1;
}

void sub_100012AE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100001E4C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = [*(a1 + 40) taskDescription];
    v6 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v5;
    v43 = 2112;
    v44 = v6;
    v7 = "upload failed for task '%@' : (%@)";
    v8 = v3;
    v9 = 22;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = [*(a1 + 40) taskDescription];
    *buf = 138412290;
    *&buf[4] = v5;
    v7 = "upload successful for task '%@'";
    v8 = v3;
    v9 = 12;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v7, buf, v9);

LABEL_7:
  v10 = [*(a1 + 40) taskDescription];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v38 = sub_100012FBC;
  v39 = &unk_10003D160;
  v40 = *(a1 + 32);
  v35 = *(a1 + 40);
  v11 = v35.i64[0];
  v41 = vextq_s8(v35, v35, 8uLL);
  v12 = v37;
  v13 = [v10 componentsSeparatedByString:@"_"];
  if ([v10 hasPrefix:@"GEOAPv5"])
  {
    if ([v13 count]== 8)
    {
      v14 = [NSScanner alloc];
      v15 = [v13 objectAtIndexedSubscript:1];
      v16 = [v14 initWithString:v15];

      *buf = 0;
      [v16 scanUnsignedLongLong:buf];

      v17 = [v13 objectAtIndexedSubscript:2];
      v18 = [v17 integerValue];

      v19 = [v13 objectAtIndexedSubscript:3];
      v20 = [v19 integerValue];

      v21 = [v13 objectAtIndexedSubscript:4];
      v22 = [v21 integerValue];

      v23 = [v13 objectAtIndexedSubscript:5];
      v24 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v23 longLongValue]);

      v25 = [v13 objectAtIndexedSubscript:6];
      v26 = [v25 intValue];

      v27 = [v13 objectAtIndexedSubscript:7];
      v38(v12, *buf, v18, v20, v22, v24, v26, v27);

      v28 = v12;
LABEL_10:

      goto LABEL_11;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: components.count == 8", buf, 2u);
    }
  }

  v29 = sub_100001E4C();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = [*(a1 + 40) taskDescription];
    *buf = 138412290;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "unrecognized task description '%@'", buf, 0xCu);
  }

  [*(a1 + 40) cancel];
  v31 = *(a1 + 48);
  v32 = [*(a1 + 40) taskDescription];
  v10 = [v31 fileURLForTaskDescription:v32];

  v33 = +[NSFileManager defaultManager];
  v36 = 0;
  v34 = [v33 removeItemAtURL:v10 error:&v36];
  v28 = v36;

  if ((v34 & 1) == 0)
  {
    v13 = sub_100001E4C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v10;
      v43 = 2112;
      v44 = v28;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "remove %@ failed (%@)", buf, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:
}

void sub_100012FBC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v95 = a6;
  v98 = a8;
  v13 = sub_100001E4C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = @"unsuccessfully";
    if (!*(a1 + 32))
    {
      v14 = @"successfully";
    }

    *buf = 138412546;
    *&buf[4] = v98;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "(%@) upload stage finished %@", buf, 0x16u);
  }

  if ([*(a1 + 40) _debugUploadCountersEnabled])
  {
    v15 = +[GEOAPDebugPersistence sharedInstance];
    [v15 removeInflightUploadWithBatchUUID:v98];
  }

  v16 = GEOBatchUploadPolicyType();
  v17 = v16;
  if (v16 >= 0xE)
  {
    v86 = [NSString stringWithFormat:@"(unknown: %i)", v16];
  }

  else
  {
    v86 = *(&off_10003D1E8 + v16);
  }

  v18 = GEOBatchAnalyticsSessionType();
  v19 = sub_100001E4C();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = GEOBatchDescription();
    *buf = 138412546;
    *&buf[4] = v98;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "(%@) URL task complete for %@", buf, 0x16u);
  }

  v21 = *(a1 + 40);
  v22 = [*(a1 + 48) taskDescription];
  v97 = [v21 fileURLForTaskDescription:v22];

  if (a7 >= 7)
  {
    v88 = [NSString stringWithFormat:@"(unknown: %i)", a7];
  }

  else
  {
    v88 = *(&off_10003D258 + a7);
  }

  v23 = +[GEOAPUploadPolicies sharedPolicies];
  v93 = [v23 uploadPolicyForUploadPolicyType:v17];

  v99 = [v93 uploadStages];
  v24 = [v99 count];
  if ((v24 - 1) >= a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = v24 - 1;
  }

  v94 = v25;
  v26 = [v99 objectAtIndexedSubscript:?];
  v27 = [v26 urlSessionConfig];
  v87 = [v27 type];

  if (!*(a1 + 32))
  {
    goto LABEL_34;
  }

  v28 = sub_100001E4C();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = GEOBatchDescription();
    *buf = 138413314;
    *&buf[4] = v98;
    *&buf[12] = 2112;
    *&buf[14] = v29;
    *&buf[22] = 2048;
    v119 = v94;
    *v120 = 2112;
    *&v120[2] = v88;
    v121 = 2112;
    v122 = v86;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "(%@) %@ -- upload stage %lu:%@ for %@ ended in error", buf, 0x34u);
  }

  if (v94 + 1 >= [v99 count])
  {
    goto LABEL_34;
  }

  v8 = [v99 objectAtIndexedSubscript:v94 + 1];
  v30 = [v8 urlSessionConfig];
  v31 = [v30 type];

  [v93 ttl];
  v91 = [v95 dateByAddingTimeInterval:?];
  [v91 timeIntervalSinceNow];
  v33 = v32;
  if (v32 <= 0.0)
  {
    v43 = sub_100001E4C();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = GEOBatchDescription();
      *buf = 138413058;
      *&buf[4] = v98;
      *&buf[12] = 2048;
      *&buf[14] = v94 + 1;
      *&buf[22] = 2112;
      v119 = v88;
      *v120 = 2112;
      *&v120[2] = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "(%@) upload stage %lu:%@ %@ exhausted the remaining TTL", buf, 0x2Au);
    }

LABEL_34:
    v96 = 0;
    goto LABEL_35;
  }

  v84 = sub_1000021C0(a2, a4, a5, v95, v31, (v94 + 1), v98);
  v85 = [*(a1 + 40) fileURLForTaskDescription:v84];
  v34 = +[NSFileManager defaultManager];
  v113 = 0;
  v82 = [v34 moveItemAtURL:v97 toURL:v85 error:&v113];
  v83 = v113;

  if ((v82 & 1) == 0)
  {
    v75 = sub_100001E4C();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      *&buf[4] = v98;
      *&buf[12] = 2112;
      *&buf[14] = v97;
      *&buf[22] = 2112;
      v119 = v85;
      *v120 = 2112;
      *&v120[2] = v83;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "(%@) move %@ to %@ failed (%@)", buf, 0x2Au);
    }

    v76 = +[NSFileManager defaultManager];
    v112 = v83;
    v77 = [v76 removeItemAtURL:v97 error:&v112];
    v96 = v112;

    if (v77)
    {
      goto LABEL_65;
    }

    v42 = sub_100001E4C();
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    *buf = 138412802;
    *&buf[4] = v98;
    *&buf[12] = 2112;
    *&buf[14] = v97;
    *&buf[22] = 2112;
    v119 = v96;
LABEL_62:
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "(%@) remove %@ failed (%@)", buf, 0x20u);
    goto LABEL_63;
  }

  [v8 ttl];
  if (v33 > v35)
  {
    v36 = sub_100001E4C();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [v8 ttl];
      *buf = 138413314;
      *&buf[4] = v98;
      *&buf[12] = 2112;
      *&buf[14] = v88;
      *&buf[22] = 2048;
      v119 = v37;
      *v120 = 2112;
      *&v120[2] = v86;
      v121 = 2048;
      v122 = v33;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "(%@) %@ TTL (%ld) preferred over %@ (%ld)", buf, 0x34u);
    }

    [v8 ttl];
    v33 = v38;
  }

  v39 = *(a1 + 40);
  v40 = [*(a1 + 48) currentRequest];
  v41 = [v40 URL];
  LOBYTE(v39) = [v39 _startTaskForFile:v85 toDestination:v41 taskDescription:v84 analyticSessionType:v18 apURLsessionConfigType:v31 ttl:v33 startDelay:0.0];

  if ((v39 & 1) == 0)
  {
    v78 = sub_100001E4C();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v98;
      *&buf[12] = 2112;
      *&buf[14] = v88;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "(%@) starting stage %@ failed", buf, 0x16u);
    }

    v79 = +[NSFileManager defaultManager];
    v111 = v83;
    v80 = [v79 removeItemAtURL:v85 error:&v111];
    v96 = v111;

    if (v80)
    {
      goto LABEL_65;
    }

    v42 = sub_100001E4C();
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    *buf = 138412802;
    *&buf[4] = v98;
    *&buf[12] = 2112;
    *&buf[14] = v85;
    *&buf[22] = 2112;
    v119 = v96;
    goto LABEL_62;
  }

  if ([*(a1 + 40) _debugUploadCountersEnabled])
  {
    v42 = +[GEOAPDebugPersistence sharedInstance];
    LODWORD(v81) = v94 + 1;
    [v42 addInflightUploadWithBatchUUID:v98 createTime:v95 sessionType:v18 eventCount:a4 uploadSize:a5 uploadPolicy:v31 stageNum:v81];
    v96 = v83;
LABEL_63:

    goto LABEL_65;
  }

  v96 = v83;
LABEL_65:

  if (v82)
  {
    goto LABEL_51;
  }

LABEL_35:
  v45 = GeoAnalyticsConfig__debug_KeepUploadFiles[1];
  if (GEOConfigGetBOOL())
  {
    v46 = *(a1 + 32) == 0;
    v47 = [NSString alloc];
    v48 = [v97 absoluteString];
    v49 = v48;
    v50 = @"fail";
    if (v46)
    {
      v50 = @"success";
    }

    v51 = [v47 initWithFormat:@"%@-%@", v48, v50];

    v52 = [[NSURL alloc] initWithString:v51];
    v53 = +[NSFileManager defaultManager];
    [v53 moveItemAtURL:v97 toURL:v52 error:0];

LABEL_44:
    goto LABEL_45;
  }

  v54 = +[NSFileManager defaultManager];
  v110 = v96;
  v55 = [v54 removeItemAtURL:v97 error:&v110];
  v56 = v110;

  if ((v55 & 1) == 0)
  {
    v51 = sub_100001E4C();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = v98;
      *&buf[12] = 2112;
      *&buf[14] = v97;
      *&buf[22] = 2112;
      v119 = v56;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "(%@) remove %@ failed (%@)", buf, 0x20u);
    }

    v96 = v56;
    goto LABEL_44;
  }

  v96 = v56;
LABEL_45:
  [*(a1 + 40) _submitBatchesForUpload];
  v57 = [*(*(a1 + 40) + 40) dateNow];
  v92 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v58 = [v92 component:32 fromDate:v57];
  v59 = GEOBatchAnalyticsSessionType();
  v60 = [NSNumber numberWithInt:v59];
  v61 = [NSNumber numberWithInt:v87];
  v62 = [NSNumber numberWithInt:*(a1 + 32) == 0];
  [v57 timeIntervalSinceDate:v95];
  LODWORD(v8) = vcvtpd_u64_f64(v63);
  v64 = [NSNumber numberWithUnsignedInt:v8];
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_100013D48;
  v101[3] = &unk_10003D138;
  v106 = v94;
  v65 = v61;
  v102 = v65;
  v66 = v64;
  v103 = v66;
  v107 = v58;
  v108 = a4;
  v109 = a5;
  v67 = v62;
  v104 = v67;
  v68 = v60;
  v105 = v68;
  v69 = @"com.apple.GEOAP.uploadEvent";
  v70 = v101;
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v71 = off_100053120;
  v117 = off_100053120;
  if (!off_100053120)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000C93C;
    v119 = &unk_10003CA28;
    *v120 = &v114;
    v72 = sub_10000C7D8();
    v73 = dlsym(v72, "AnalyticsSendEventLazy");
    *(*(*v120 + 8) + 24) = v73;
    off_100053120 = *(*(*v120 + 8) + 24);
    v71 = v115[3];
  }

  _Block_object_dispose(&v114, 8);
  if (!v71)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v71(@"com.apple.GEOAP.uploadEvent", v70);

  if ([*(a1 + 40) _debugUploadCountersEnabled])
  {
    v74 = +[GEOAPDebugPersistence sharedInstance];
    [v74 addUploadHistoryForBatchUUID:v98 completionTime:v57 latency:v8 sessionType:v59 eventCount:a4 uploadSize:a5 uploadPolicy:__PAIR64__(v94 stageNum:v87)];
  }

LABEL_51:
}

id sub_100013D48(void *a1)
{
  v12[0] = @"attempt";
  v2 = [NSNumber numberWithUnsignedInteger:a1[8]];
  v3 = a1[4];
  v4 = a1[5];
  v13[0] = v2;
  v13[1] = v3;
  v12[1] = @"config";
  v12[2] = @"duration";
  v13[2] = v4;
  v12[3] = @"hour";
  v5 = [NSNumber numberWithInteger:a1[9]];
  v13[3] = v5;
  v12[4] = @"num";
  v6 = [NSNumber numberWithUnsignedInteger:a1[10]];
  v13[4] = v6;
  v12[5] = @"size";
  v7 = [NSNumber numberWithUnsignedInteger:a1[11]];
  v8 = a1[6];
  v9 = a1[7];
  v13[5] = v7;
  v13[6] = v8;
  v12[6] = @"success";
  v12[7] = @"type";
  v13[7] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:8];

  return v10;
}

void sub_100013EBC(id a1)
{
  qword_100053180 = os_log_create("com.apple.GeoAnalytics", "Uploader");

  _objc_release_x1();
}

void sub_100014F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v69 - 256), 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014FFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100015014(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 expireTime];
  v5 = [v4 compare:a1[4]];

  if (v5 == -1)
  {
    ++*(*(a1[7] + 8) + 24);
LABEL_12:
    v23 = 1;
    goto LABEL_33;
  }

  ++*(*(a1[8] + 8) + 24);
  v6 = [v3 logMsg];
  *(*(a1[9] + 8) + 24) += [v6 length];

  if (!*(*(a1[10] + 8) + 40))
  {
    v7 = [v3 expireTime];
    v8 = *(a1[10] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v3 createTime];
    v11 = *(a1[11] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = a1[5];
  v14 = [v3 logMsg];
  v15 = v14;
  if (!v13 || (*(v13 + 8) & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  __buf = 10;
  v16 = [v14 length];
  v17 = v54;
  if (v16 < 0x80)
  {
    v22 = 1;
LABEL_14:
    *v17 = v16;
  }

  else
  {
    v18 = 1;
    v19 = 15;
    while (v19)
    {
      --v19;
      *v17++ = v16 | 0x80;
      v20 = v16 >> 7;
      ++v18;
      v21 = v16 >> 14;
      v16 >>= 7;
      if (!v21)
      {
        v22 = v18;
        LOBYTE(v16) = v20;
        goto LABEL_14;
      }
    }

    v22 = 0;
  }

  if ((*(v13 + 12) & 1) == 0)
  {
    v28 = v22 + 1;
    if (write(*(v13 + 8), &__buf, v22 + 1) <= v22)
    {
      v24 = sub_100001E4C();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v29 = write(*(v13 + 8), [v15 bytes], objc_msgSend(v15, "length"));
      if (v29 >= [v15 length])
      {
        *(v13 + 96) += [v15 length] + v28;
LABEL_46:

        goto LABEL_12;
      }

      v24 = sub_100001E4C();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }
    }

    v30 = *(v13 + 24);
    v31 = __error();
    v32 = strerror(*v31);
    v49 = 138412546;
    v50 = v30;
    v51 = 2080;
    v52 = v32;
    v25 = "unable to write data to file '%@' (%s)";
    goto LABEL_27;
  }

  *(v13 + 32) = *(v13 + 72);
  *(v13 + 48) = &__buf;
  *(v13 + 56) = v22 + 1;
  *(v13 + 40) = *(v13 + 80);
  if (compression_stream_process((v13 + 32), 0))
  {
    v24 = sub_100001E4C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v49) = 0;
      v25 = "compress process failed";
LABEL_20:
      v26 = v24;
      v27 = 2;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v38 = *(v13 + 80);
  v39 = *(v13 + 40);
  v40 = v38 - v39;
  if (v38 != v39)
  {
    if (write(*(v13 + 8), *(v13 + 72), v38 - v39) < v40)
    {
      v24 = sub_100001E4C();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

    *(v13 + 96) += v40;
  }

  *(v13 + 48) = [v15 bytes];
  v44 = [v15 length];
  *(v13 + 56) = v44;
  if (!v44)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v45 = *(v13 + 80);
    *(v13 + 32) = *(v13 + 72);
    *(v13 + 40) = v45;
    if (compression_stream_process((v13 + 32), 0))
    {
      v24 = sub_100001E4C();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      LOWORD(v49) = 0;
      v25 = "compress process failed";
      goto LABEL_20;
    }

    v46 = *(v13 + 80);
    v47 = *(v13 + 40);
    v48 = v46 - v47;
    if (v46 != v47)
    {
      break;
    }

LABEL_45:
    if (!*(v13 + 56))
    {
      goto LABEL_46;
    }
  }

  if (write(*(v13 + 8), *(v13 + 72), v46 - v47) >= v48)
  {
    *(v13 + 96) += v48;
    goto LABEL_45;
  }

  v24 = sub_100001E4C();
  if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_29;
  }

LABEL_37:
  v41 = *(v13 + 24);
  v42 = __error();
  v43 = strerror(*v42);
  v49 = 138412546;
  v50 = v41;
  v51 = 2080;
  v52 = v43;
  v25 = "unable to write compressed data to file '%@' (%s)";
LABEL_27:
  v26 = v24;
  v27 = 22;
LABEL_28:
  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v25, &v49, v27);
LABEL_29:

LABEL_30:
  v33 = sub_100001E4C();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = a1[6];
    v35 = a1[13];
    v36 = GEOBatchDescription();
    v49 = 138412546;
    v50 = v34;
    v51 = 2112;
    v52 = v36;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "(%@) unable to write upload record for %@; stopping here", &v49, 0x16u);
  }

  v23 = 0;
  *(*(a1[12] + 8) + 24) = 1;
LABEL_33:

  return v23;
}

uint64_t sub_1000155C4(uint64_t a1)
{
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v2 = sub_100001E4C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 136);
      v5 = GEOBatchDescription();
      *buf = 138412546;
      v66 = v3;
      v67 = 2112;
      v68 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "(%@) aborting upload for %@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (!*(*(*(a1 + 88) + 8) + 24))
  {
    v2 = sub_100001E4C();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
LABEL_25:

      if (*(*(*(a1 + 128) + 8) + 24))
      {
        v37 = sub_100001E4C();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(a1 + 32);
          v39 = *(a1 + 136);
          v40 = GEOBatchDescription();
          v41 = *(*(*(a1 + 128) + 8) + 24);
          *buf = 138412802;
          v66 = v38;
          v67 = 2112;
          v68 = v40;
          v69 = 2048;
          v70 = v41;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "(%@) %@ had %llu expired records", buf, 0x20u);
        }
      }

      v42 = *(*(*(a1 + 120) + 8) + 24);
      return v42 & 1;
    }

    v35 = *(a1 + 32);
    v36 = *(a1 + 136);
    v23 = GEOBatchDescription();
    *buf = 138412546;
    v66 = v35;
    v67 = 2112;
    v68 = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "(%@) nothing to upload for %@", buf, 0x16u);
LABEL_24:

    goto LABEL_25;
  }

  [*(*(*(a1 + 96) + 8) + 40) timeIntervalSinceNow];
  v7 = fmax(v6, 0.0);
  if (*(a1 + 144) < v7)
  {
    v8 = sub_100001E4C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 144);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *buf = 138413314;
      v66 = v10;
      v67 = 2112;
      v68 = v11;
      v69 = 2048;
      v70 = v9;
      v71 = 2112;
      v72 = v12;
      v73 = 2048;
      v74 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "(%@) %@ TTL (%ld) preferred over %@ (%ld)", buf, 0x34u);
    }

    v7 = *(a1 + 144);
  }

  v13 = sub_100001E4C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 136);
    v16 = GEOBatchDescription();
    v17 = *(a1 + 48);
    v18 = *(*(*(a1 + 88) + 8) + 24);
    v19 = *(*(*(a1 + 104) + 8) + 24);
    *buf = 138413570;
    v66 = v14;
    v67 = 2112;
    v68 = v16;
    v69 = 2112;
    v70 = v17;
    v71 = 2048;
    v72 = v18;
    v73 = 2048;
    v74 = v19;
    v75 = 2048;
    v76 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "(%@) %@ is using uploading policy type '%@' : %lu messages of size %lu with TTL %ld", buf, 0x3Eu);
  }

  v2 = sub_1000021C0(*(a1 + 136), *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 112) + 8) + 40), *(a1 + 160), 0, *(a1 + 32));
  v20 = +[GEOAPUtils GEOAPCachePath];
  v21 = [v20 stringByAppendingPathComponent:v2];

  v22 = *(a1 + 56);
  v23 = v21;
  if (!v22)
  {
    goto LABEL_51;
  }

  v24 = *(v22 + 8);
  if (v24 < 0)
  {
    goto LABEL_51;
  }

  if (*(v22 + 12) != 1)
  {
LABEL_31:
    if (lseek(v24, *(v22 + 88), 0) != *(v22 + 88))
    {
      v30 = sub_100001E4C();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      goto LABEL_34;
    }

    *(v22 + 96) = bswap32(*(v22 + 96));
    if (write(*(v22 + 8), (v22 + 96), 4uLL) <= 3)
    {
      v30 = sub_100001E4C();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

LABEL_34:
      v43 = *(v22 + 24);
      v44 = __error();
      v45 = strerror(*v44);
      *buf = 138412546;
      v66 = v43;
      v67 = 2080;
      v68 = v45;
      v34 = "unable to update finalized file '%@' with length (%s)";
LABEL_49:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v34, buf, 0x16u);
      goto LABEL_50;
    }

    close(*(v22 + 8));
    *(v22 + 8) = -1;
    v46 = [*(v22 + 24) fileSystemRepresentation];
    v47 = [(std::__fs::filesystem::path *)v23 fileSystemRepresentation];
    v48 = sub_100001E4C();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v66 = v46;
      v67 = 2080;
      v68 = v47;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "moving finalized file '%s' to '%s'", buf, 0x16u);
    }

    rename(v46, v47, v49);
    if (v50 < 0)
    {
      v30 = sub_100001E4C();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v57 = __error();
      v58 = strerror(*v57);
      *buf = 138412546;
      v66 = v23;
      v67 = 2080;
      v68 = v58;
      v34 = "unable to move finalized file to '%@' (%s)";
      goto LABEL_49;
    }

    if (chmod(v47, 0x120u) < 0)
    {
      v51 = sub_100001E4C();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = __error();
        v53 = strerror(*v52);
        *buf = 138412546;
        v66 = v23;
        v67 = 2080;
        v68 = v53;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "unable to set file perms on file '%@' (%s)", buf, 0x16u);
      }
    }

    v54 = *(a1 + 64);
    v55 = [NSURL fileURLWithPath:v23];
    v56 = *(a1 + 136);
    *(*(*(a1 + 120) + 8) + 24) = [v54 _startTaskForFile:v55 toDestination:*(a1 + 72) taskDescription:v2 analyticSessionType:GEOBatchAnalyticsSessionType() apURLsessionConfigType:*(a1 + 160) ttl:*(a1 + 144) startDelay:*(a1 + 152)];

    goto LABEL_24;
  }

  v64 = 0;
  while (1)
  {
    *(v22 + 48) = &v64;
    *(v22 + 56) = 0;
    v25 = *(v22 + 80);
    *(v22 + 32) = *(v22 + 72);
    *(v22 + 40) = v25;
    v26 = compression_stream_process((v22 + 32), 1);
    v27 = *(v22 + 80);
    v28 = *(v22 + 40);
    v29 = v27 - v28;
    if (v27 != v28)
    {
      break;
    }

LABEL_18:
    if (v26)
    {
      if (v26 == COMPRESSION_STATUS_ERROR)
      {
        v30 = sub_100001E4C();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        goto LABEL_21;
      }

      compression_stream_destroy((v22 + 32));
      free(*(v22 + 72));
      *(v22 + 12) = 0;
      v24 = *(v22 + 8);
      goto LABEL_31;
    }
  }

  if (write(*(v22 + 8), *(v22 + 72), v27 - v28) >= v29)
  {
    *(v22 + 96) += v29;
    goto LABEL_18;
  }

  v30 = sub_100001E4C();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
LABEL_21:
    v31 = *(v22 + 24);
    v32 = __error();
    v33 = strerror(*v32);
    *buf = 138412546;
    v66 = v31;
    v67 = 2080;
    v68 = v33;
    v34 = "unable to write finalized compressed data to file '%@' (%s)";
    goto LABEL_49;
  }

LABEL_50:

LABEL_51:
  v59 = sub_100001E4C();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    v60 = *(a1 + 32);
    v61 = *(a1 + 136);
    v62 = GEOBatchDescription();
    *buf = 138412546;
    v66 = v60;
    v67 = 2112;
    v68 = v62;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "(%@) unable to finalize and close upload file for %@; will try upload later", buf, 0x16u);
  }

LABEL_54:
  v42 = 0;
  return v42 & 1;
}

void sub_100015E5C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = write(*(*(a1 + 32) + 8), [v5 bytes], objc_msgSend(v5, "length"));
  if (v6 < [v5 length])
  {
    v7 = sub_100001E4C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 24);
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 138412546;
      v22 = v8;
      v23 = 2080;
      v24 = v10;
      v11 = "unable to write ARPC header to file '%@' (%s)";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v11, buf, 0x16u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  *(*(a1 + 32) + 88) = [v5 length];
  __buf = 0;
  if (write(*(*(a1 + 32) + 8), &__buf, 4uLL) <= 3)
  {
    v7 = sub_100001E4C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 32) + 24);
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 138412546;
      v22 = v12;
      v23 = 2080;
      v24 = v14;
      v11 = "unable to write len placeholder to file '%@' (%s)";
      goto LABEL_11;
    }

LABEL_12:

    close(*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = -1;
    goto LABEL_13;
  }

  *(*(a1 + 32) + 12) = a3;
  if (a3)
  {
    if (compression_stream_init((*(a1 + 32) + 32), COMPRESSION_STREAM_ENCODE, COMPRESSION_LZ4) == COMPRESSION_STATUS_OK)
    {
      v18 = GeoAnalyticsConfig_CompressionOutputBufferSize[1];
      UInteger = GEOConfigGetUInteger();
      *(*(a1 + 32) + 72) = malloc_type_malloc(UInteger, 0xA36B6B99uLL);
      *(*(a1 + 32) + 80) = UInteger;
      goto LABEL_13;
    }

    v7 = sub_100001E4C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v15 = *(*(a1 + 32) + 24);
    v16 = __error();
    v17 = strerror(*v16);
    *buf = 138412546;
    v22 = v15;
    v23 = 2080;
    v24 = v17;
    v11 = "unable to initialize ARPC header to file '%@' (%s)";
    goto LABEL_11;
  }

LABEL_13:
}

void sub_1000162C8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10000E510();
    if (!v2 || (v3 = v2[32], v2, (v3 & 1) == 0))
    {
      v4 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100016370;
      block[3] = &unk_10003D5B8;
      block[4] = a1;
      dispatch_async(v4, block);
    }
  }
}

id sub_100016370(uint64_t a1)
{
  v2 = sub_100001E4C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "uploading requested", &v12, 2u);
  }

  [*(*(a1 + 32) + 56) _mustWait];
  if (v3 == 0.0)
  {
    v7 = [*(a1 + 32) persistence];
    [v7 batchReadyInSeconds];
    v9 = v8;

    v10 = sub_100001E4C();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9 <= 0.0)
    {
      if (v11)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "ready now", &v12, 2u);
      }

      return [*(a1 + 32) _submitBatchesForUpload];
    }

    else
    {
      if (v11)
      {
        v12 = 134217984;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "ready in %lld seconds", &v12, 0xCu);
      }

      return [*(a1 + 32) _startUploadTimerForDuration:v9];
    }
  }

  else
  {
    v4 = v3;
    v5 = sub_100001E4C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "uploads will wait; holddown in effect", &v12, 2u);
    }

    [*(a1 + 32) _clearUploadTimer];
    return [*(a1 + 32) _startHolddownTimerForDuration:v4];
  }
}

void sub_100016A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001E4C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "background task started; enqueuing work", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v5 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016BB8;
  block[3] = &unk_10003D058;
  objc_copyWeak(&v9, buf);
  dispatch_async(v5, block);
  v6 = sub_100001E4C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "background task finished", v7, 2u);
  }

  [v3 setTaskCompleted];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void sub_100016B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100016BB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _GEOCreateTransaction();
    v3 = sub_100001E4C();
    v4 = os_signpost_id_generate(v3);

    v5 = [WeakRetained[5] dateNow];
    v6 = sub_100001E4C();
    v7 = v6;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v23 = 138412290;
      v24 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "AggregateAndUpload", "at '%@'", &v23, 0xCu);
    }

    v8 = sub_100001E4C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "starting fqid counts aggregation", &v23, 2u);
    }

    v9 = sub_10000C6AC();
    v10 = v9;
    if (v9)
    {
      v11 = [*(v9 + 24) tryLock];
      v12 = sub_10000AB3C();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        if (v13)
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "starting", &v23, 2u);
        }

        v12 = [v10 now];
        [v10 startDailyAggregationFromTime:v12];
        v14 = sub_10000AB3C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "done", &v23, 2u);
        }

        [v10[3] unlock];
      }

      else if (v13)
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "already running; done", &v23, 2u);
      }
    }

    v15 = sub_100001E4C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "finished fqid counts aggregation", &v23, 2u);
    }

    v16 = sub_100001E4C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "starting netevent aggregation", &v23, 2u);
    }

    v17 = +[GEOAPNetEventAggregator sharedAggregator];
    [v17 runAggregation];

    v18 = sub_100001E4C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "finished netevent aggregation", &v23, 2u);
    }

    v19 = sub_100001E4C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "submitting batches for upload", &v23, 2u);
    }

    sub_1000162C8(WeakRetained);
    v20 = sub_100001E4C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "finished submitting batches for upload", &v23, 2u);
    }

    v21 = sub_100001E4C();
    v22 = v21;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v23 = 138412290;
      v24 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v4, "AggregateAndUpload", "at '%@'", &v23, 0xCu);
    }
  }
}

void sub_10001700C(id a1)
{
  qword_100053170 = +[GEOAPDB sharedInstance];

  _objc_release_x1();
}

void sub_100017130(uint64_t a1)
{
  v2 = objc_alloc_init(GEOAPUploadTimeProvider);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_alloc_init(GEOAPUploadConfigProvider);
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  v8 = [[GEOAPUploadHolddown alloc] initWithTimeProvider:*(*(a1 + 32) + 40) configProvider:*(*(a1 + 32) + 48)];
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  *(v9 + 56) = v8;

  v11 = +[GEOAPURLSessionConfig allSessionConfigTypes];
  v12 = objc_alloc_init(NSCache);
  v13 = *(a1 + 32);
  v14 = *(v13 + 32);
  *(v13 + 32) = v12;

  [*(*(a1 + 32) + 32) setCountLimit:{objc_msgSend(v11, "count")}];
  [*(*(a1 + 32) + 32) setTotalCostLimit:{objc_msgSend(*(*(a1 + 32) + 32), "countLimit")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      v19 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(a1 + 32) _sessionForType:{objc_msgSend(*(*(&v38 + 1) + 8 * v19), "intValue")}];
        [v20 getAllTasksWithCompletionHandler:&stru_10003D010];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v17);
  }

  v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 8));
  v22 = *(a1 + 32);
  v23 = *(v22 + 16);
  *(v22 + 16) = v21;

  dispatch_source_set_timer(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v24 = *(a1 + 32);
  v25 = v24[2];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001748C;
  handler[3] = &unk_10003D5B8;
  v37 = v24;
  dispatch_source_set_event_handler(v25, handler);
  dispatch_activate(*(*(a1 + 32) + 16));
  v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 8));
  v27 = *(a1 + 32);
  v28 = *(v27 + 24);
  *(v27 + 24) = v26;

  dispatch_source_set_timer(*(*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v29 = *(a1 + 32);
  v30 = v29[3];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_100017500;
  v34 = &unk_10003D5B8;
  v35 = v29;
  dispatch_source_set_event_handler(v30, &v31);
  dispatch_activate(*(*(a1 + 32) + 24));
  [*(a1 + 32) _clearExpired];
  sub_1000162C8(*(a1 + 32));
}

id sub_10001748C(uint64_t a1)
{
  v2 = sub_100001E4C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "upload timer fired", v4, 2u);
  }

  return [*(a1 + 32) _submitBatchesForUpload];
}

id sub_100017500(uint64_t a1)
{
  v2 = sub_100001E4C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "holddown timer fired", v4, 2u);
  }

  return [*(a1 + 32) _submitBatchesForUpload];
}

void sub_100017574(id a1, NSArray *a2)
{
  v2 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 138412546;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 state];
        if (v9 > 3)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(&off_10003D1C8 + v9);
        }

        v11 = sub_100001E4C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v8 taskDescription];
          *buf = v13;
          v19 = v10;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "found %@ task with desc %@", buf, 0x16u);
        }
      }

      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }
}

void sub_10001770C(id a1)
{
  qword_100053160 = objc_alloc_init(GEOAPUploader);

  _objc_release_x1();
}

id sub_100017748(uint64_t a1)
{
  v2 = sub_100001E4C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v4 = GEOBatchDescription();
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "upload requested for %@", &v11, 0xCu);
  }

  [*(*(a1 + 32) + 56) _mustWait];
  if (v5 == 0.0)
  {
    return [*(a1 + 32) _submitBatchForUploadWithBatchId:*(a1 + 40)];
  }

  v6 = v5;
  v7 = sub_100001E4C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = GEOBatchDescription();
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ must wait; holddown in effect", &v11, 0xCu);
  }

  [*(a1 + 32) _clearUploadTimer];
  return [*(a1 + 32) _startHolddownTimerForDuration:v6];
}

void sub_1000179BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000179D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v4 = WeakRetained[1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100017B6C;
    v9[3] = &unk_10003D508;
    v9[4] = v3;
    v9[5] = &v14;
    [v4 executeStatement:@"cntI" statementBlock:v9];
    v5 = v3[1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100017BD4;
    v8[3] = &unk_10003D508;
    v8[4] = v3;
    v8[5] = &v10;
    [v5 executeStatement:@"cntH" statementBlock:v8];
    v6 = *(v15 + 6);
    v7 = *(v11 + 6);
    (*(*(a1 + 32) + 16))();
    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100017B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

BOOL sub_100017B6C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  if (v4 == 100)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 8) int64ForColumn:0 inStatment:a2];
  }

  return v4 == 100;
}

BOOL sub_100017BD4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  if (v4 == 100)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 8) int64ForColumn:0 inStatment:a2];
  }

  return v4 == 100;
}

void sub_100017D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100017D50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100017E2C;
    v9[3] = &unk_10003D4B8;
    v9[4] = WeakRetained;
    v10 = *(a1 + 40);
    [v4 executeStatement:@"selIU" statementBlock:v9];
    (*(*(a1 + 32) + 16))(*(a1 + 32), v5, v6, v7, v8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_100017E2C(uint64_t a1, sqlite3_stmt *a2)
{
  while (sqlite3_step(a2) == 100)
  {
    v4 = [*(*(a1 + 32) + 8) stringForColumn:0 inStatment:a2];
    v5 = [[NSDate alloc] initWithTimeIntervalSince1970:{objc_msgSend(*(*(a1 + 32) + 8), "int64ForColumn:inStatment:", 1, a2)}];
    [*(*(a1 + 32) + 8) intForColumn:2 inStatment:a2];
    [*(*(a1 + 32) + 8) int64ForColumn:3 inStatment:a2];
    [*(*(a1 + 32) + 8) int64ForColumn:4 inStatment:a2];
    [*(*(a1 + 32) + 8) intForColumn:5 inStatment:a2];
    [*(*(a1 + 32) + 8) int64ForColumn:6 inStatment:a2];
    (*(*(a1 + 40) + 16))();
  }

  return 1;
}

void sub_1000180A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000180C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000181A4;
    v6[3] = &unk_10003D468;
    v5 = *(a1 + 56);
    v6[4] = WeakRetained;
    v8 = v5;
    v7 = *(a1 + 40);
    [v4 executeStatement:@"selUH" statementBlock:v6];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_1000181A4(void *a1, sqlite3_stmt *a2)
{
  v4 = *(a1[4] + 8);
  v5 = a1[6];
  v10 = 0;
  [v4 bindInt64Parameter:"@uploadDoneTime" toValue:v5 inStatement:a2 error:&v10];
  v9 = v10;
  while (sqlite3_step(a2) == 100)
  {
    v6 = [*(a1[4] + 8) stringForColumn:0 inStatment:a2];
    [*(a1[4] + 8) int64ForColumn:1 inStatment:a2];
    [*(a1[4] + 8) intForColumn:2 inStatment:a2];
    [*(a1[4] + 8) int64ForColumn:3 inStatment:a2];
    [*(a1[4] + 8) int64ForColumn:4 inStatment:a2];
    [*(a1[4] + 8) intForColumn:5 inStatment:a2];
    [*(a1[4] + 8) int64ForColumn:6 inStatment:a2];
    v7 = [[NSDate alloc] initWithTimeIntervalSince1970:{objc_msgSend(*(a1[4] + 8), "int64ForColumn:inStatment:", 7, a2)}];
    (*(a1[5] + 16))(a1[5]);
  }

  return 1;
}

void sub_100018428(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_100018444(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      v2 = 1;
    }

    else
    {
      v3 = sub_1000185CC();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "device has not been unlocked since last boot; can't proceed yet", v5, 2u);
      }

      v2 = *(a1 + 24);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1000184D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100018590;
    v5[3] = &unk_10003D418;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    [v4 executeStatement:@"delIU" statementBlock:v5];
  }
}

id sub_100018590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v5 = 0;
  return [v3 bindTextParameter:"@batchUUID" toValue:v2 inStatement:a2 error:&v5];
}

id sub_1000185CC()
{
  if (qword_1000531A8 != -1)
  {
    dispatch_once(&qword_1000531A8, &stru_10003D550);
  }

  v1 = qword_1000531A0;

  return v1;
}

void sub_100018620(id a1)
{
  qword_1000531A0 = os_log_create("com.apple.GeoAnalytics", "DebugPersistence");

  _objc_release_x1();
}

void sub_100018790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000187AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100018878;
    v7[3] = &unk_10003D3C8;
    v7[4] = WeakRetained;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v8 = v5;
    v9 = v6;
    v10 = *(a1 + 56);
    v11 = *(a1 + 72);
    [v4 executeStatement:@"insIU" statementBlock:v7];
  }
}

id sub_100018878(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v34 = 0;
  v6 = [v5 bindTextParameter:"@batchUUID" toValue:v4 inStatement:a2 error:&v34];
  v7 = v34;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(a1 + 48);
  v33 = v7;
  v10 = [v8 bindInt64Parameter:"@createTime" toValue:v9 inStatement:a2 error:&v33];
  v11 = v33;

  if (!v10)
  {
    goto LABEL_10;
  }

  v12 = *(*(a1 + 32) + 8);
  v13 = *(a1 + 56);
  v32 = v11;
  v14 = [v12 bindIntParameter:"@sessionType" toValue:v13 inStatement:a2 error:&v32];
  v7 = v32;

  if (!v14)
  {
LABEL_9:
    v26 = 0;
    goto LABEL_8;
  }

  v15 = *(*(a1 + 32) + 8);
  v16 = *(a1 + 60);
  v31 = v7;
  v17 = [v15 bindInt64Parameter:"@eventCount" toValue:v16 inStatement:a2 error:&v31];
  v11 = v31;

  if (!v17)
  {
LABEL_10:
    v26 = 0;
    v7 = v11;
    goto LABEL_8;
  }

  v18 = *(*(a1 + 32) + 8);
  v19 = *(a1 + 64);
  v30 = v11;
  v20 = [v18 bindInt64Parameter:"@uploadSize" toValue:v19 inStatement:a2 error:&v30];
  v7 = v30;

  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = *(*(a1 + 32) + 8);
  v22 = *(a1 + 68);
  v29 = v7;
  v23 = [v21 bindIntParameter:"@uploadPolicy" toValue:v22 inStatement:a2 error:&v29];
  v11 = v29;

  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = *(*(a1 + 32) + 8);
  v25 = *(a1 + 72);
  v28 = v11;
  v26 = [v24 bindInt64Parameter:"@stageNum" toValue:v25 inStatement:a2 error:&v28];
  v7 = v28;

LABEL_8:
  return v26;
}

void sub_100018BB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100018BCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_1000185CC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "recording upload history for batch %@", buf, 0xCu);
    }

    v5 = WeakRetained[1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100018D18;
    v8[3] = &unk_10003D378;
    v8[4] = WeakRetained;
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v9 = v6;
    v10 = v7;
    v11 = *(a1 + 56);
    v12 = *(a1 + 72);
    [v5 executeStatement:@"insUH" statementBlock:v8];
  }
}

id sub_100018D18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v39 = 0;
  v6 = [v5 bindTextParameter:"@batchUUID" toValue:v4 inStatement:a2 error:&v39];
  v7 = v39;
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(a1 + 48);
  v38 = v7;
  v10 = [v8 bindInt64Parameter:"@uploadDoneTime" toValue:v9 inStatement:a2 error:&v38];
  v11 = v38;

  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = *(*(a1 + 32) + 8);
  v13 = *(a1 + 56);
  v37 = v11;
  v14 = [v12 bindInt64Parameter:"@uploadLatency" toValue:v13 inStatement:a2 error:&v37];
  v7 = v37;

  if (!v14)
  {
LABEL_10:
    v29 = 0;
    goto LABEL_9;
  }

  v15 = *(*(a1 + 32) + 8);
  v16 = *(a1 + 60);
  v36 = v7;
  v17 = [v15 bindIntParameter:"@sessionType" toValue:v16 inStatement:a2 error:&v36];
  v11 = v36;

  if (!v17)
  {
LABEL_11:
    v29 = 0;
    v7 = v11;
    goto LABEL_9;
  }

  v18 = *(*(a1 + 32) + 8);
  v19 = *(a1 + 64);
  v35 = v11;
  v20 = [v18 bindInt64Parameter:"@eventCount" toValue:v19 inStatement:a2 error:&v35];
  v7 = v35;

  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = *(*(a1 + 32) + 8);
  v22 = *(a1 + 68);
  v34 = v7;
  v23 = [v21 bindInt64Parameter:"@uploadSize" toValue:v22 inStatement:a2 error:&v34];
  v11 = v34;

  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = *(*(a1 + 32) + 8);
  v25 = *(a1 + 72);
  v33 = v11;
  v26 = [v24 bindIntParameter:"@uploadPolicy" toValue:v25 inStatement:a2 error:&v33];
  v7 = v33;

  if (!v26)
  {
    goto LABEL_10;
  }

  v27 = *(*(a1 + 32) + 8);
  v28 = *(a1 + 76);
  v32 = v7;
  v29 = [v27 bindInt64Parameter:"@stageNum" toValue:v28 inStatement:a2 error:&v32];
  v30 = v32;

  v7 = v30;
LABEL_9:

  return v29;
}

void sub_100019064(uint64_t a1)
{
  [*(*(a1 + 32) + 8) tearDown];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

BOOL sub_1000191F0(id a1, GEOSQLiteDB *a2)
{
  v2 = a2;
  if ([(GEOSQLiteDB *)v2 user_version]== 1)
  {
    if (![(GEOSQLiteDB *)v2 createTable:"CREATE TABLE IF NOT EXISTS uploadHistory (batchUUID STRING NOT NULL withDrop:uploadDoneTime DATETIME DEFAULT CURRENT_TIMESTAMP, uploadLatency INTEGER NOT NULL, sessionType INTEGER NOT NULL, eventCount INTEGER NOT NULL, uploadSize INTEGER NOT NULL, uploadPolicy INTEGER NOT NULL, stageNum INTEGER NOT NULL);", 0]|| ([(GEOSQLiteDB *)v2 createTable:"CREATE TABLE IF NOT EXISTS uploadInflight (batchUUID STRING NOT NULL withDrop:createTime DATETIME DEFAULT CURRENT_TIMESTAMP, sessionType INTEGER NOT NULL, eventCount INTEGER NOT NULL, uploadSize INTEGER NOT NULL, uploadPolicy INTEGER NOT NULL, stageNum INTEGER NOT NULL);", 0]& 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (![(GEOSQLiteDB *)v2 createTable:"CREATE TABLE IF NOT EXISTS uploadHistory (batchUUID STRING NOT NULL withDrop:uploadDoneTime DATETIME DEFAULT CURRENT_TIMESTAMP, uploadLatency INTEGER NOT NULL, sessionType INTEGER NOT NULL, eventCount INTEGER NOT NULL, uploadSize INTEGER NOT NULL, uploadPolicy INTEGER NOT NULL, stageNum INTEGER NOT NULL);", "DROP TABLE uploadHistory;"]|| ![(GEOSQLiteDB *)v2 createTable:"CREATE TABLE IF NOT EXISTS uploadInflight (batchUUID STRING NOT NULL withDrop:createTime DATETIME DEFAULT CURRENT_TIMESTAMP, sessionType INTEGER NOT NULL, eventCount INTEGER NOT NULL, uploadSize INTEGER NOT NULL, uploadPolicy INTEGER NOT NULL, stageNum INTEGER NOT NULL);", "DROP TABLE uploadInflight;"])
    {
      goto LABEL_17;
    }

    [(GEOSQLiteDB *)v2 setUser_version:1];
  }

  if (![(GEOSQLiteDB *)v2 prepareStatement:"INSERT INTO uploadHistory (batchUUID forKey:uploadDoneTime, uploadLatency, sessionType, eventCount, uploadSize, uploadPolicy, stageNum) VALUES(@batchUUID, DATETIME( @uploadDoneTime, 'UNIXEPOCH'), @uploadLatency, @sessionType, @eventCount, @uploadSize, @uploadPolicy, @stageNum);", @"insUH"]|| ![(GEOSQLiteDB *)v2 prepareStatement:"INSERT INTO uploadInflight (batchUUID forKey:createTime, sessionType, eventCount, uploadSize, uploadPolicy, stageNum)VALUES(@batchUUID, DATETIME( @createTime, 'UNIXEPOCH'), @sessionType, @eventCount, @uploadSize, @uploadPolicy, @stageNum);", @"insIU"]|| ![(GEOSQLiteDB *)v2 prepareStatement:"DELETE FROM uploadInflight WHERE batchUUID=@batchUUID;" forKey:@"delIU"]|| ![(GEOSQLiteDB *)v2 prepareStatement:"SELECT batchUUID forKey:strftime('%s', createTime), sessionType, eventCount, uploadSize, uploadPolicy, stageNum FROM uploadInflight;", @"selIU"]|| ![(GEOSQLiteDB *)v2 prepareStatement:"SELECT batchUUID forKey:uploadLatency, sessionType, eventCount, uploadSize, uploadPolicy, stageNum, strftime('%s', uploadDoneTime) FROM uploadHistory WHERE uploadDoneTime >= DATETIME( @uploadDoneTime, 'UNIXEPOCH');", @"selUH"]|| ![(GEOSQLiteDB *)v2 prepareStatement:"DELETE FROM uploadHistory;" forKey:@"delAllUH"]|| ![(GEOSQLiteDB *)v2 prepareStatement:"SELECT COUNT(1) FROM uploadInflight;" forKey:@"cntI"])
  {
LABEL_17:
    v3 = 0;
    goto LABEL_16;
  }

  v3 = [(GEOSQLiteDB *)v2 prepareStatement:"SELECT COUNT(1) FROM uploadHistory;" forKey:@"cntH"];
LABEL_16:

  return v3;
}

void sub_1000194F4(id a1)
{
  qword_100053190 = objc_alloc_init(GEOAPDebugPersistence);

  _objc_release_x1();
}

void sub_100019644(uint64_t a1)
{
  v2 = sub_100001134();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "will persist %lu analytics", &v5, 0xCu);
  }

  v4 = +[GEOAPDB sharedInstance];
  [v4 storeLogMsgElems:*(a1 + 32)];
}

void sub_100019710(id a1)
{
  qword_1000531C0 = os_log_create("com.apple.GeoAnalytics", "Storage");

  _objc_release_x1();
}

void sub_100019850(uint64_t a1)
{
  v2 = sub_100001134();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "persisting one message with batchID %llu for expedited upload", &buf, 0xCu);
  }

  v4 = +[GEOAPDB sharedInstance];
  v10 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  [v4 storeLogMsgElems:v5];

  v6 = sub_100001660();
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 40);
    v9 = *(v6 + 8);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v12 = sub_100017748;
    v13 = &unk_10003D658;
    v14 = v7;
    v15 = v8;
    dispatch_async(v9, &buf);
  }
}

void sub_100019B40(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  if ([*(*(a1 + 32) + 8) count] == *(*(a1 + 32) + 16))
  {
    v2 = sub_100001134();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "reached batch capacity; will spool now", v4, 2u);
    }

    v3 = [*(a1 + 32) _copyAndEmptyBatchQueue];
    [*(a1 + 32) _spoolElementsToDBFromQueue:v3];
  }
}

void sub_100019F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100019F80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100019F98(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyAndEmptyBatchQueue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001A1E0(id a1)
{
  qword_1000531B8 = objc_alloc_init(GEOAPStorage);

  _objc_release_x1();
}

id sub_10001A21C(uint64_t a1)
{
  v2 = sub_100001134();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "registering eval observer %p", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 64) addObject:*(a1 + 32)];
}

void sub_10001A2D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 72);
    v6 = v3;
    geo_isolate_sync();
  }
}

id sub_10001A374(uint64_t a1)
{
  v2 = sub_100001134();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "deregistering eval observer %p", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 64) removeObject:*(a1 + 32)];
}

void sub_10001A428(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v50 = a4;
  v10 = a5;
  if (!a1)
  {
    v29 = v50;
    goto LABEL_2101;
  }

  v11 = GEOBatchUploadPolicyType();
  v12 = GEOBatchAnalyticsSessionType();
  v13 = @"UNSPECIFIED";
  switch(v12)
  {
    case 0:
      break;
    case 1:
      v13 = @"COHORT";
      break;
    case 2:
      v13 = @"15MO";
      break;
    case 3:
      v13 = @"LONG";
      break;
    case 4:
      v13 = @"LONG_APPID";
      break;
    case 5:
      v13 = @"SHORT";
      break;
    case 6:
      v13 = @"SHORT_NAV";
      break;
    case 7:
      v13 = @"NO";
      break;
    case 8:
      v13 = @"NO_WITH_TIME";
      break;
    case 9:
      v13 = @"NAV_TRACE";
      break;
    case 10:
      v13 = @"REALTIME_TRAFFIC";
      break;
    case 11:
      v13 = @"BATCH_TRAFFIC";
      break;
    case 12:
      v13 = @"WIFI_PROBE";
      break;
    case 13:
      v13 = @"PRESSURE_DATA";
      break;
    case 14:
      v13 = @"CURATED_COLLECTION";
      break;
    case 15:
      v13 = @"LOG_DISCARD";
      break;
    case 16:
      v13 = @"POI_BUSYNESS";
      break;
    case 17:
      v13 = @"PREDEX_TRAINING";
      break;
    case 19:
      v13 = @"STRN_HARVEST";
      break;
    case 20:
      v14 = [a1 _setLocIntSequenceNumberForBatch:a3 inLogMsg:v9];

      v13 = @"LOC_INTEL";
      v9 = v14;
      break;
    default:
      v13 = [NSString stringWithFormat:@"(unknown: %i)", v12];
      break;
  }

  v15 = +[GEOAPUploadPolicies sharedPolicies];
  v16 = [v15 uploadPolicyForUploadPolicyType:v11];

  v17 = GEOBatchUploadPolicyType();
  v18 = +[GEOAPUploadPolicies sharedPolicies];
  v19 = [v18 uploadPolicyForUploadPolicyType:v17];

  [v19 ttl];
  v21 = v20;

  v22 = +[GEOReferenceTimeManager sharedManager];
  v23 = [v22 bestReferenceDate];

  v24 = [v23 dateByAddingTimeInterval:v21];
  v25 = [[GEOAPLogMsgQueueElem alloc] initWithLogMsg:v9 uploadBatchId:a3 expireTime:v24 createTime:v23];
  if ([v16 sendImmediately])
  {
    v26 = sub_100001134();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v13;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "fast tracking analytic log message of type '%@'", buf, 0xCu);
    }

    v27 = objc_retainBlock(v10);
    v28 = a3;
    v29 = v50;
    [a1 _fastTrackElement:v25 withBatchID:v28 completionQueue:v50 completionBlock:v27];
  }

  else
  {
    v29 = v50;
    [a1 _storeQueueElem:v25 completionQueue:v50 completionBlock:v10];
  }

  if (*(a1 + 57) == 1)
  {
    v47 = v10;
    v48 = [[GEOLogMessage alloc] initWithData:v9];
    v30 = [v48 logMsgEvents];
    v31 = [v30 firstObject];

    v46 = v13;
    if ([v31 eventType] != 1)
    {
      v35 = v25;
      v36 = v24;
      v37 = v16;
      log = sub_100001134();
      if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        v38 = v31;
LABEL_2099:

        v45 = *(a1 + 72);
        v51 = v9;
        geo_isolate_sync();

        v16 = v37;
        v24 = v36;
        v25 = v35;
        v13 = v46;
        v10 = v47;
        goto LABEL_2100;
      }

      v38 = v31;
      v39 = [v31 eventType];
      v40 = @"LOG_MSG_EVENT_TYPE_UNKNOWN";
      switch(v39)
      {
        case 0:
          break;
        case 1:
          v40 = @"USER_ACTION";
          break;
        case 2:
          v40 = @"STATE_TIMING";
          break;
        case 4:
          v40 = @"TILE_SET_STATE";
          break;
        case 5:
          v40 = @"PLACE_DATA_CACHE";
          break;
        case 6:
          v40 = @"NETWORK";
          break;
        case 7:
          v40 = @"CACHE_HIT";
          break;
        case 8:
          v40 = @"DIRECTIONS";
          break;
        case 9:
          v40 = @"TRANSIT_APP_LAUNCH";
          break;
        case 10:
          v40 = @"TIME_TO_LEAVE_HYPOTHESIS";
          break;
        case 11:
          v40 = @"TIME_TO_LEAVE_INITIAL_TRAVEL_TIME";
          break;
        case 12:
          v40 = @"LOG_FRAMEWORK";
          break;
        case 13:
          v40 = @"MAPS_WIDGETS_SESSION";
          break;
        case 14:
          v40 = @"LIST_INTERACTION_SESSION";
          break;
        case 15:
          v40 = @"REFINE_SEARCH_SESSION";
          break;
        case 16:
          v40 = @"PROACTIVE_SUGGESTION_SESSION";
          break;
        case 17:
          v40 = @"MAP_LAUNCH";
          break;
        case 18:
          v40 = @"RIDE_BOOKING_SESSION";
          break;
        case 19:
          v40 = @"RIDE_BOOKED_SESSION";
          break;
        case 20:
          v40 = @"TABLE_BOOKING_SESSION";
          break;
        case 21:
          v40 = @"TABLE_BOOKED_SESSION";
          break;
        case 22:
          v40 = @"STALE_RESOURCE";
          break;
        case 23:
          v40 = @"FULL_NAV_TRACE";
          break;
        case 24:
          v40 = @"TELEMETRIC";
          break;
        case 25:
          v40 = @"CLIENT_AC_SUGGESTIONS";
          break;
        case 26:
          v40 = @"REALTIME_TRAFFIC_PROBE_COLLECTION";
          break;
        case 27:
          v40 = @"BATCH_TRAFFIC_PROBE_COLLECTION";
          break;
        case 28:
          v40 = @"OFFLINE_REQUEST_RESPONSE";
          break;
        case 29:
          v40 = @"COMMUTE_WINDOW";
          break;
        case 30:
          v40 = @"GENERIC_APP_ERROR";
          break;
        case 31:
          v40 = @"WIFI_CONNECTION_QUALITY_PROBE";
          break;
        case 32:
          v40 = @"PARKED_CAR";
          break;
        case 33:
          v40 = @"TILE_CACHE_ANALYTIC";
          break;
        case 34:
          v40 = @"GRID_DURATION";
          break;
        case 35:
          v40 = @"DISPLAY_ANALYTIC";
          break;
        case 36:
          v40 = @"THROTTLE";
          break;
        case 37:
          v40 = @"MAP_KIT_COUNTS";
          break;
        case 38:
          v40 = @"PRED_EX_TRAINING";
          break;
        case 39:
          v40 = @"MARCOLITE_USAGE";
          break;
        case 40:
          v40 = @"TRIP_DEPARTURE";
          break;
        case 41:
          v40 = @"DIRECTIONS_REQUEST_DETAILS";
          break;
        case 42:
          v40 = @"EV_ROUTING_VEHICLE_DETAILS";
          break;
        case 43:
          v40 = @"EV_TRIP";
          break;
        case 44:
          v40 = @"CURATED_COLLECTION_STATS";
          break;
        case 45:
          v40 = @"CURATED_COLLECTION_USAGE";
          break;
        case 46:
          v40 = @"MAPS_DEVICE_SETTINGS";
          break;
        case 47:
          v40 = @"HARD_STOP";
          break;
        case 48:
          v40 = @"VLF_USAGE";
          break;
        case 49:
          v40 = @"LOG_DISCARD";
          break;
        case 50:
          v40 = @"DAILY_USE_SUMMARY";
          break;
        case 51:
          v40 = @"PRESSURE_DATA";
          break;
        case 52:
          v40 = @"POI_BUSYNESS_DATA";
          break;
        case 53:
          v40 = @"PERIODIC_SETTINGS_SUMMARY";
          break;
        case 54:
          v40 = @"THERMAL_PRESSURE";
          break;
        case 55:
          v40 = @"AR_SESSION_USAGE";
          break;
        case 56:
          v40 = @"NETWORK_SELECTION_HARVEST";
          break;
        case 57:
          v40 = @"IMPRESSION_EVENT";
          break;
        case 58:
          v40 = @"SHOWCASE_SUPPRESSION";
          break;
        case 59:
          v40 = @"PLACE_CACHE_LOOKUP";
          break;
        case 60:
          v40 = @"DEVICE_SYNC_STATUS";
          break;
        case 61:
          v40 = @"MAPS_INTERACTION";
          break;
        case 62:
          v40 = @"NETWORK_EVENT_SUMMARY";
          break;
        case 63:
          v40 = @"SERVICE_METADATA";
          break;
        case 64:
          v40 = @"MAPS_ENGAGEMENT";
          break;
        case 65:
          v40 = @"REDACTED_SERVICE_METADATA";
          break;
        default:
          v40 = [NSString stringWithFormat:@"(unknown: %i)", v39];
          break;
      }

      *buf = 138412290;
      v53 = v40;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "storing event type '%@'", buf, 0xCu);
LABEL_2098:

      v29 = v50;
      goto LABEL_2099;
    }

    v32 = [v31 userActionEvent];
    v33 = [v32 userActionEventAction];
    if (v33 <= 3000)
    {
      if (v33 <= 1500)
      {
        log = @"UI_ACTION_UNKNOWN";
        switch(v33)
        {
          case 0:
            goto LABEL_1525;
          case 1:
            v34 = @"PULL_UP";
            goto LABEL_1397;
          case 2:
            v34 = @"PULL_DOWN";
            goto LABEL_1397;
          case 3:
            v34 = @"TAP";
            goto LABEL_1397;
          case 4:
            v34 = @"CLOSE";
            goto LABEL_1397;
          case 5:
            v34 = @"SWIPE_PREV";
            goto LABEL_1397;
          case 6:
            v34 = @"SWIPE_NEXT";
            goto LABEL_1397;
          case 7:
            v34 = @"SCROLL_UP";
            goto LABEL_1397;
          case 8:
            v34 = @"SCROLL_DOWN";
            goto LABEL_1397;
          case 9:
          case 23:
          case 24:
          case 346:
          case 347:
          case 348:
          case 349:
          case 350:
          case 351:
          case 352:
          case 353:
          case 354:
          case 355:
          case 530:
          case 531:
          case 532:
          case 533:
          case 534:
          case 535:
          case 536:
          case 537:
          case 538:
          case 539:
          case 540:
          case 541:
          case 542:
          case 543:
          case 544:
          case 545:
          case 546:
          case 547:
          case 548:
          case 549:
          case 550:
          case 551:
          case 552:
          case 553:
          case 554:
          case 555:
          case 556:
          case 557:
          case 558:
          case 559:
          case 560:
          case 561:
          case 562:
          case 563:
          case 564:
          case 565:
          case 566:
          case 567:
          case 568:
          case 569:
          case 570:
          case 571:
          case 572:
          case 573:
          case 574:
          case 575:
          case 576:
          case 577:
          case 578:
          case 579:
          case 580:
          case 581:
          case 582:
          case 583:
          case 584:
          case 585:
          case 586:
          case 587:
          case 588:
          case 589:
          case 590:
          case 591:
          case 592:
          case 593:
          case 594:
          case 595:
          case 596:
          case 597:
          case 598:
          case 599:
          case 600:
          case 601:
          case 602:
          case 603:
          case 604:
          case 605:
          case 606:
          case 607:
          case 608:
          case 609:
          case 610:
          case 611:
          case 612:
          case 613:
          case 614:
          case 615:
          case 616:
          case 617:
          case 618:
          case 619:
          case 620:
          case 621:
          case 622:
          case 623:
          case 624:
          case 625:
          case 626:
          case 627:
          case 628:
          case 629:
          case 630:
          case 631:
          case 632:
          case 633:
          case 634:
          case 635:
          case 636:
          case 637:
          case 638:
          case 639:
          case 640:
          case 641:
          case 642:
          case 643:
          case 644:
          case 645:
          case 646:
          case 647:
          case 648:
          case 649:
          case 650:
          case 651:
          case 652:
          case 653:
          case 654:
          case 655:
          case 656:
          case 657:
          case 658:
          case 659:
          case 660:
          case 661:
          case 662:
          case 663:
          case 664:
          case 665:
          case 666:
          case 667:
          case 668:
          case 669:
          case 670:
          case 671:
          case 672:
          case 673:
          case 674:
          case 675:
          case 676:
          case 677:
          case 678:
          case 679:
          case 680:
          case 681:
          case 682:
          case 683:
          case 684:
          case 685:
          case 686:
          case 687:
          case 688:
          case 689:
          case 690:
          case 691:
          case 692:
          case 693:
          case 694:
          case 695:
          case 696:
          case 697:
          case 698:
          case 699:
          case 700:
          case 701:
          case 702:
          case 703:
          case 704:
          case 705:
          case 706:
          case 707:
          case 708:
          case 709:
          case 710:
          case 711:
          case 712:
          case 713:
          case 714:
          case 715:
          case 716:
          case 717:
          case 718:
          case 719:
          case 720:
          case 721:
          case 722:
          case 723:
          case 724:
          case 725:
          case 726:
          case 727:
          case 728:
          case 729:
          case 730:
          case 731:
          case 732:
          case 733:
          case 734:
          case 735:
          case 736:
          case 737:
          case 738:
          case 739:
          case 740:
          case 741:
          case 742:
          case 743:
          case 744:
          case 745:
          case 746:
          case 747:
          case 748:
          case 749:
          case 750:
          case 751:
          case 752:
          case 753:
          case 754:
          case 755:
          case 756:
          case 757:
          case 758:
          case 759:
          case 760:
          case 761:
          case 762:
          case 763:
          case 764:
          case 765:
          case 766:
          case 767:
          case 768:
          case 769:
          case 770:
          case 771:
          case 772:
          case 773:
          case 774:
          case 775:
          case 776:
          case 777:
          case 778:
          case 779:
          case 780:
          case 781:
          case 782:
          case 783:
          case 784:
          case 785:
          case 786:
          case 787:
          case 788:
          case 789:
          case 790:
          case 791:
          case 792:
          case 793:
          case 794:
          case 795:
          case 796:
          case 797:
          case 798:
          case 799:
          case 800:
          case 801:
          case 802:
          case 803:
          case 804:
          case 805:
          case 806:
          case 807:
          case 808:
          case 809:
          case 810:
          case 811:
          case 812:
          case 813:
          case 814:
          case 815:
          case 816:
          case 817:
          case 818:
          case 819:
          case 820:
          case 821:
          case 822:
          case 823:
          case 824:
          case 825:
          case 826:
          case 827:
          case 828:
          case 829:
          case 830:
          case 831:
          case 832:
          case 833:
          case 834:
          case 835:
          case 836:
          case 837:
          case 838:
          case 839:
          case 840:
          case 841:
          case 842:
          case 843:
          case 844:
          case 845:
          case 846:
          case 847:
          case 848:
          case 849:
          case 850:
          case 851:
          case 852:
          case 853:
          case 854:
          case 855:
          case 856:
          case 857:
          case 858:
          case 859:
          case 860:
          case 861:
          case 862:
          case 863:
          case 864:
          case 865:
          case 866:
          case 867:
          case 868:
          case 869:
          case 870:
          case 871:
          case 872:
          case 873:
          case 874:
          case 875:
          case 876:
          case 877:
          case 878:
          case 879:
          case 880:
          case 881:
          case 882:
          case 883:
          case 884:
          case 885:
          case 886:
          case 887:
          case 888:
          case 889:
          case 890:
          case 891:
          case 892:
          case 893:
          case 894:
          case 895:
          case 896:
          case 897:
          case 898:
          case 899:
          case 900:
          case 901:
          case 902:
          case 903:
          case 904:
          case 905:
          case 906:
          case 907:
          case 908:
          case 909:
          case 910:
          case 911:
          case 912:
          case 913:
          case 914:
          case 915:
          case 916:
          case 917:
          case 918:
          case 919:
          case 920:
          case 921:
          case 922:
          case 923:
          case 924:
          case 925:
          case 926:
          case 927:
          case 928:
          case 929:
          case 930:
          case 931:
          case 932:
          case 933:
          case 934:
          case 935:
          case 936:
          case 937:
          case 938:
          case 939:
          case 940:
          case 941:
          case 942:
          case 943:
          case 944:
          case 945:
          case 946:
          case 947:
          case 948:
          case 949:
          case 950:
          case 951:
          case 952:
          case 953:
          case 954:
          case 955:
          case 956:
          case 957:
          case 958:
          case 959:
          case 960:
          case 961:
          case 962:
          case 963:
          case 964:
          case 965:
          case 966:
          case 967:
          case 968:
          case 969:
          case 970:
          case 971:
          case 972:
          case 973:
          case 974:
          case 975:
          case 976:
          case 977:
          case 978:
          case 979:
          case 980:
          case 981:
          case 982:
          case 983:
          case 984:
          case 985:
          case 986:
          case 987:
          case 988:
          case 989:
          case 990:
          case 991:
          case 992:
          case 993:
          case 994:
          case 995:
          case 996:
          case 997:
          case 998:
          case 999:
          case 1000:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1019:
          case 1021:
          case 1022:
          case 1023:
          case 1024:
          case 1025:
          case 1026:
          case 1027:
          case 1028:
          case 1029:
            goto LABEL_213;
          case 10:
            v34 = @"SHOW_MORE";
            goto LABEL_1397;
          case 11:
            v34 = @"SHOW_LESS";
            goto LABEL_1397;
          case 12:
            v34 = @"SWIPE_LEFT";
            goto LABEL_1397;
          case 13:
            v34 = @"SWIPE_RIGHT";
            goto LABEL_1397;
          case 14:
            v34 = @"MINIMIZE";
            goto LABEL_1397;
          case 15:
            v34 = @"TAP_PREV";
            goto LABEL_1397;
          case 16:
            v34 = @"TAP_NEXT";
            goto LABEL_1397;
          case 17:
            v34 = @"SUBMIT";
            goto LABEL_1397;
          case 18:
            v34 = @"CANCEL";
            goto LABEL_1397;
          case 19:
            v34 = @"ENTER_MAPS";
            goto LABEL_1397;
          case 20:
            v34 = @"EXIT_MAPS";
            goto LABEL_1397;
          case 21:
            v34 = @"REVEAL";
            goto LABEL_1397;
          case 22:
            v34 = @"OPEN_NEW_TAB";
            goto LABEL_1397;
          case 25:
            v34 = @"BACK";
            goto LABEL_1397;
          case 26:
            v34 = @"ACTIVATE";
            goto LABEL_1397;
          case 27:
            v34 = @"DEACTIVATE";
            goto LABEL_1397;
          case 28:
            v34 = @"AGREE";
            goto LABEL_1397;
          case 29:
            v34 = @"DISAGREE";
            goto LABEL_1397;
          case 30:
            v34 = @"SKIP_ANSWER";
            goto LABEL_1397;
          case 31:
            v34 = @"EXPAND";
            goto LABEL_1397;
          case 32:
            v34 = @"COLLAPSE";
            goto LABEL_1397;
          case 33:
            v34 = @"ENTER";
            goto LABEL_1397;
          case 34:
            v34 = @"EXIT";
            goto LABEL_1397;
          case 35:
            v34 = @"SCROLL_UP_INDEX_BAR";
            goto LABEL_1397;
          case 36:
            v34 = @"SCROLL_DOWN_INDEX_BAR";
            goto LABEL_1397;
          case 37:
            v34 = @"TOGGLE_ON";
            goto LABEL_1397;
          case 38:
            v34 = @"TOGGLE_OFF";
            goto LABEL_1397;
          case 39:
            v34 = @"LONG_PRESS";
            goto LABEL_1397;
          case 40:
            v34 = @"CLICK";
            goto LABEL_1397;
          case 41:
            v34 = @"TAP_DONE";
            goto LABEL_1397;
          case 42:
            v34 = @"TAP_CLOSE";
            goto LABEL_1397;
          case 43:
            v34 = @"SCROLL_LEFT";
            goto LABEL_1397;
          case 44:
            v34 = @"SCROLL_RIGHT";
            goto LABEL_1397;
          case 45:
            v34 = @"DISPLAY";
            goto LABEL_1397;
          case 46:
            v34 = @"OPEN_IN_APP";
            goto LABEL_1397;
          case 47:
            v34 = @"CONCEAL";
            goto LABEL_1397;
          case 48:
            v34 = @"TAP_DELETE";
            goto LABEL_1397;
          case 49:
            v34 = @"TAP_FILTER";
            goto LABEL_1397;
          case 50:
            v34 = @"TAP_SECONDARY_BUTTON";
            goto LABEL_1397;
          case 51:
            v34 = @"TAP_WIDGET_FOOD";
            goto LABEL_1397;
          case 52:
            v34 = @"TAP_WIDGET_GAS";
            goto LABEL_1397;
          case 53:
            v34 = @"TAP_WIDGET_LOADING";
            goto LABEL_1397;
          case 54:
            v34 = @"TAP_WIDGET_SEARCH";
            goto LABEL_1397;
          case 55:
            v34 = @"TAP_WIDGET_STORES";
            goto LABEL_1397;
          case 56:
            v34 = @"DISPLAY_ALLOW_ONCE_PROMPT";
            goto LABEL_1397;
          case 57:
            v34 = @"SHARE_CURRENT_LOCATION";
            goto LABEL_1397;
          case 58:
            v34 = @"SHARE_PHOTO";
            goto LABEL_1397;
          case 59:
            v34 = @"TAP_KEEP_OFF";
            goto LABEL_1397;
          case 60:
            v34 = @"TAP_PHOTO_CATEGORY";
            goto LABEL_1397;
          case 61:
            v34 = @"TAP_PRECISE_LOCATION_OFF_BANNER";
            goto LABEL_1397;
          case 62:
            v34 = @"TAP_TURN_ON";
            goto LABEL_1397;
          case 63:
            v34 = @"DISPLAY_CYCLING_ANNOTATION";
            goto LABEL_1397;
          case 64:
            v34 = @"DISPLAY_DRIVING_DEFAULT_OPTION";
            goto LABEL_1397;
          case 65:
            v34 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";
            goto LABEL_1397;
          case 66:
            v34 = @"DISPLAY_WALKING_DEFAULT_OPTION";
            goto LABEL_1397;
          case 67:
            v34 = @"TAP_CYCLING_ANNOTATION";
            goto LABEL_1397;
          case 68:
            v34 = @"TAP_DRIVING_DEFAULT_OPTION";
            goto LABEL_1397;
          case 69:
            v34 = @"TAP_TRANSIT_DEFAULT_OPTION";
            goto LABEL_1397;
          case 70:
            v34 = @"TAP_WALKING_DEFAULT_OPTION";
            goto LABEL_1397;
          case 71:
            v34 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";
            goto LABEL_1397;
          case 72:
            v34 = @"TAP_RIDESHARE_DEFAULT_OPTION";
            goto LABEL_1397;
          case 73:
            v34 = @"TAP_PERSONAL_COLLECTION";
            goto LABEL_1397;
          case 74:
            v34 = @"RESUME_ROUTE";
            goto LABEL_1397;
          case 75:
            v34 = @"DISPLAY_OUT_OF_RANGE_ALERT";
            goto LABEL_1397;
          case 76:
            v34 = @"TAP_ALLOW_ONCE";
            goto LABEL_1397;
          case 77:
            v34 = @"TAP_DO_NOT_ALLOW";
            goto LABEL_1397;
          case 78:
            v34 = @"ADD_RECCOMENDED_FAVORITE";
            goto LABEL_1397;
          case 79:
            v34 = @"ADD_RECOMMENDED_HOME_FAVORITE";
            goto LABEL_1397;
          case 80:
            v34 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";
            goto LABEL_1397;
          case 81:
            v34 = @"ADD_RECOMMENDED_WORK_FAVORITE";
            goto LABEL_1397;
          case 82:
            v34 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";
            goto LABEL_1397;
          case 83:
            v34 = @"CREATE_SCHOOL_FAVORITE";
            goto LABEL_1397;
          case 84:
            v34 = @"TAP_SCHOOL_FAVORITE";
            goto LABEL_1397;
          case 85:
            v34 = @"SELECT_ROUTING_TYPE_CYCLING";
            goto LABEL_1397;
          case 86:
            v34 = @"REPORT_PHOTO";
            goto LABEL_1397;
          case 87:
            v34 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";
            goto LABEL_1397;
          case 88:
            v34 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";
            goto LABEL_1397;
          case 89:
            v34 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";
            goto LABEL_1397;
          case 90:
            v34 = @"CREATE_RECOMMENDED_FAVORITE";
            goto LABEL_1397;
          case 91:
            v34 = @"CREATE_RECOMMENDED_HOME_FAVORITE";
            goto LABEL_1397;
          case 92:
            v34 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";
            goto LABEL_1397;
          case 93:
            v34 = @"CREATE_RECOMMENDED_WORK_FAVORITE";
            goto LABEL_1397;
          case 94:
            v34 = @"TAP_SMALL_WIDGET_ITEM";
            goto LABEL_1397;
          case 95:
            v34 = @"TAP_MEDIUM_WIDGET_ITEM";
            goto LABEL_1397;
          case 96:
            v34 = @"TAP_LARGE_WIDGET_ITEM";
            goto LABEL_1397;
          case 97:
            v34 = @"DISPLAY_ARP_TIPKIT";
            goto LABEL_1397;
          case 98:
            v34 = @"NEXT";
            goto LABEL_1397;
          case 99:
            v34 = @"TAP_RATE_AND_ADD_PHOTOS";
            goto LABEL_1397;
          case 100:
            v34 = @"TAP_TO_ADD_POSITIVE_RATING";
            goto LABEL_1397;
          case 101:
            v34 = @"TAP_TO_ADD_NEGATIVE_RATING";
            goto LABEL_1397;
          case 102:
            v34 = @"TAP_ACTIVE_SHARING_NOTIFICATION";
            goto LABEL_1397;
          case 103:
            v34 = @"INVOKE_SIRI_PROMPT";
            goto LABEL_1397;
          case 104:
            v34 = @"ETA_SHARED_SUCCESSFULLY";
            goto LABEL_1397;
          case 105:
            v34 = @"ENDED_ETA_SHARE_SUCCESSFULLY";
            goto LABEL_1397;
          case 106:
            v34 = @"CLEAR_INCIDENT";
            goto LABEL_1397;
          case 107:
            v34 = @"CONFIRM_INCIDENT";
            goto LABEL_1397;
          case 108:
            v34 = @"DISMISS_INCIDENT";
            goto LABEL_1397;
          case 109:
            v34 = @"INCIDENT_ALERT_TIMEOUT";
            goto LABEL_1397;
          case 110:
            v34 = @"INCIDENT_ALERT_TRAY_SHOWN";
            goto LABEL_1397;
          case 111:
            v34 = @"INCIDENT_CARD_SHOWN";
            goto LABEL_1397;
          case 112:
            v34 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";
            goto LABEL_1397;
          case 113:
            v34 = @"INCIDENT_REPORT_TRAY_SHOWN";
            goto LABEL_1397;
          case 114:
            v34 = @"NAV_TRAY_DISCOVERY_SHOWN";
            goto LABEL_1397;
          case 115:
            v34 = @"TAP_TO_REPORT_INCIDENT";
            goto LABEL_1397;
          case 116:
            v34 = @"TAP_SHORTCUT";
            goto LABEL_1397;
          case 117:
            v34 = @"BLOCK_CONTACT";
            goto LABEL_1397;
          case 118:
            v34 = @"TAP_TO_ADD_RATING";
            goto LABEL_1397;
          case 119:
            v34 = @"AR_WALKING_LOCALIZATION_FAILED";
            goto LABEL_1397;
          case 120:
            v34 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";
            goto LABEL_1397;
          case 121:
            v34 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";
            goto LABEL_1397;
          case 122:
            v34 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";
            goto LABEL_1397;
          case 123:
            v34 = @"ATTEMPT_AR_WALKING_LOCALIZATION";
            goto LABEL_1397;
          case 124:
            v34 = @"RAISE_TO_ENTER_AR_WALKING";
            goto LABEL_1397;
          case 125:
            v34 = @"TAP_DISMISS";
            goto LABEL_1397;
          case 126:
            v34 = @"TAP_ENTER_AR_WALKING";
            goto LABEL_1397;
          case 127:
            v34 = @"TAP_OK";
            goto LABEL_1397;
          case 128:
            v34 = @"TAP_TRY_AGAIN";
            goto LABEL_1397;
          case 129:
            v34 = @"TAP_TURN_ON_IN_SETTINGS";
            goto LABEL_1397;
          case 130:
            v34 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";
            goto LABEL_1397;
          case 131:
            v34 = @"VLF_CORRECTION_USER_ABANDON";
            goto LABEL_1397;
          case 132:
            v34 = @"AREA_EVENTS_ALERT";
            goto LABEL_1397;
          case 133:
            v34 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";
            goto LABEL_1397;
          case 134:
            v34 = @"ACCEPT_EVENT_REROUTE";
            goto LABEL_1397;
          case 135:
            v34 = @"DISPLAY_AREA_EVENTS_ADVISORY";
            goto LABEL_1397;
          case 136:
            v34 = @"DISMISS_EVENT_REROUTE";
            goto LABEL_1397;
          case 137:
            v34 = @"PUNCH_OUT_EVENTS_LINK";
            goto LABEL_1397;
          case 138:
            v34 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";
            goto LABEL_1397;
          case 139:
            v34 = @"ADJUST_GUIDANCE_SETTINGS";
            goto LABEL_1397;
          case 140:
            v34 = @"HIDE_DETAILS";
            goto LABEL_1397;
          case 141:
            v34 = @"SELECT_VOICE_GUIDANCE_ON";
            goto LABEL_1397;
          case 142:
            v34 = @"SELECT_VOICE_GUIDANCE_OFF";
            goto LABEL_1397;
          case 143:
            v34 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";
            goto LABEL_1397;
          case 144:
            v34 = @"TAP_TEXT_LABEL";
            goto LABEL_1397;
          case 145:
            v34 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";
            goto LABEL_1397;
          case 146:
            v34 = @"TAP_EXIT";
            goto LABEL_1397;
          case 147:
            v34 = @"TAP_CITY_MENU";
            goto LABEL_1397;
          case 148:
            v34 = @"CHECK_AVOID_TOLLS";
            goto LABEL_1397;
          case 149:
            v34 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";
            goto LABEL_1397;
          case 150:
            v34 = @"TAP_ICLOUD";
            goto LABEL_1397;
          case 151:
            v41 = @"CHECK_AVOID_HIGHWAYS";
            goto LABEL_1524;
          case 152:
            v41 = @"TAP_FAVORITES";
            goto LABEL_1524;
          case 153:
            v41 = @"SELECT_DISTANCE_IN_KM";
            goto LABEL_1524;
          case 154:
            v41 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";
            goto LABEL_1524;
          case 155:
            v41 = @"OPEN_FULL_CARD_FILTER";
            goto LABEL_1524;
          case 156:
            v41 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";
            goto LABEL_1524;
          case 157:
            v41 = @"OPEN_SINGLE_CARD_FILTER";
            goto LABEL_1524;
          case 158:
            v41 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";
            goto LABEL_1524;
          case 159:
            v41 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";
            goto LABEL_1524;
          case 160:
            v41 = @"SESSIONLESS_REVEAL";
            goto LABEL_1524;
          case 161:
            v41 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";
            goto LABEL_1524;
          case 162:
            v41 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";
            goto LABEL_1524;
          case 163:
            v41 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";
            goto LABEL_1524;
          case 164:
            v41 = @"ENTER_RAP_REPORT_MENU";
            goto LABEL_1524;
          case 165:
            v41 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";
            goto LABEL_1524;
          case 166:
            v41 = @"TAP_MY_VEHICLES";
            goto LABEL_1524;
          case 167:
            v41 = @"SUBMIT_SINGLE_CARD_FILTER";
            goto LABEL_1524;
          case 168:
            v41 = @"SUBMIT_FULL_CARD_FILTER";
            goto LABEL_1524;
          case 169:
            v41 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";
            goto LABEL_1524;
          case 170:
            v41 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";
            goto LABEL_1524;
          case 171:
            v41 = @"TAP_EXPLORE_CURATED_COLELCTIONS";
            goto LABEL_1524;
          case 172:
            v41 = @"TAP_ACCOUNT";
            goto LABEL_1524;
          case 173:
            v41 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";
            goto LABEL_1524;
          case 174:
            v41 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";
            goto LABEL_1524;
          case 175:
            v41 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";
            goto LABEL_1524;
          case 176:
            v41 = @"RESULT_REFINEMENT_TOGGLE_OFF";
            goto LABEL_1524;
          case 177:
            v41 = @"TAP_CITY_CURATED_COLLECTIONS";
            goto LABEL_1524;
          case 178:
            v41 = @"TAP_REPORTS";
            goto LABEL_1524;
          case 179:
            v41 = @"TAP_RATINGS";
            goto LABEL_1524;
          case 180:
            v41 = @"TAP_EXPLORE_CURATED_COLLECTIONS";
            goto LABEL_1524;
          case 181:
            v41 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";
            goto LABEL_1524;
          case 182:
            v41 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";
            goto LABEL_1524;
          case 183:
            v41 = @"SELECT_DISTANCE_IN_MILES";
            goto LABEL_1524;
          case 184:
            v41 = @"TAP_PRIVACY_STATEMENT";
            goto LABEL_1524;
          case 185:
            v41 = @"TAP_MAPS_SETTINGS";
            goto LABEL_1524;
          case 186:
            v41 = @"CANCEL_FULL_CARD_FILTER";
            goto LABEL_1524;
          case 187:
            v41 = @"TAP_LATEST_CURATED_COLLECTION";
            goto LABEL_1524;
          case 188:
            v41 = @"TAP_TEMPORAL_CURATED_COLLECTION";
            goto LABEL_1524;
          case 189:
            v41 = @"UNCHECK_AVOID_TOLLS";
            goto LABEL_1524;
          case 190:
            v41 = @"UNSELECT_SEARCH_REFINEMENT";
            goto LABEL_1524;
          case 191:
            v41 = @"TAP_RATING";
            goto LABEL_1524;
          case 192:
            v41 = @"TAP_ICLOUD_SIGN_IN";
            goto LABEL_1524;
          case 193:
            v41 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";
            goto LABEL_1524;
          case 194:
            v41 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";
            goto LABEL_1524;
          case 195:
            v41 = @"UNCHECK_AVOID_HIGHWAYS";
            goto LABEL_1524;
          case 196:
            v41 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";
            goto LABEL_1524;
          case 197:
            v41 = @"RESULT_REFINEMENT_TOGGLE_ON";
            goto LABEL_1524;
          case 198:
            v41 = @"TAP_CONTEXT_LINE_HYPERLINK";
            goto LABEL_1524;
          case 199:
            v41 = @"TAP_MY_GUIDES";
            goto LABEL_1524;
          case 200:
            v41 = @"SELECT_SEARCH_REFINEMENT";
            goto LABEL_1524;
          case 201:
            v41 = @"SESSIONLESS_TAP_ACCOUNT";
            goto LABEL_1524;
          case 202:
            v41 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";
            goto LABEL_1524;
          case 203:
            v41 = @"TAP_TRAVEL_PREFERENCES";
            goto LABEL_1524;
          case 204:
            v41 = @"SHOW_CURATED_COLLECTION_LIST";
            goto LABEL_1524;
          case 205:
            v41 = @"CANCEL_SINGLE_CARD_FILTER";
            goto LABEL_1524;
          case 206:
            v41 = @"DISPLAY_HFP_OPTION";
            goto LABEL_1524;
          case 207:
            v41 = @"SWITCH_OFF_HFP";
            goto LABEL_1524;
          case 208:
            v41 = @"SWITCH_ON_HFP";
            goto LABEL_1524;
          case 209:
            v41 = @"TAP_QUICK_ACTION_TRAY";
            goto LABEL_1524;
          case 210:
            v41 = @"SHOW_ALL_CITIES";
            goto LABEL_1524;
          case 211:
            v41 = @"TAP_ADD_NEARBY_TRANSIT";
            goto LABEL_1524;
          case 212:
            v41 = @"RESUME";
            goto LABEL_1524;
          case 213:
            v41 = @"DISPLAY_TIPKIT_PROMPT";
            goto LABEL_1524;
          case 214:
            v41 = @"TAP_NEARBY_TRANSIT_FAVORITE";
            goto LABEL_1524;
          case 215:
            v41 = @"TAP_DRIVING_MODE";
            goto LABEL_1524;
          case 216:
            v41 = @"SWITCH_ON_VOICE_GUIDANCE";
            goto LABEL_1524;
          case 217:
            v41 = @"DISMISS_TIPKIT_PROMPT";
            goto LABEL_1524;
          case 218:
            v41 = @"TAP_EXPAND_EXIT_DETAILS";
            goto LABEL_1524;
          case 219:
            v41 = @"TAP_NEARBY_TRANSIT_FILTER";
            goto LABEL_1524;
          case 220:
            v41 = @"TAP_MORE_DEPARTURES";
            goto LABEL_1524;
          case 221:
            v41 = @"RAP_INDIVIDUAL_PLACE";
            goto LABEL_1524;
          case 222:
            v41 = @"RAP_ADD_MAP";
            goto LABEL_1524;
          case 223:
            v41 = @"TAP_SUGGESTED_RAP";
            goto LABEL_1524;
          case 224:
            v41 = @"RAP_STREET_ISSUE";
            goto LABEL_1524;
          case 225:
            v41 = @"SWIPE_PIN_REVEAL";
            goto LABEL_1524;
          case 226:
            v41 = @"TAP_ADD_TIPKIT_FAVORITE";
            goto LABEL_1524;
          case 227:
            v41 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";
            goto LABEL_1524;
          case 228:
            v41 = @"RAP_BAD_TRIP";
            goto LABEL_1524;
          case 229:
            v41 = @"RAP_PLACE_ISSUE";
            goto LABEL_1524;
          case 230:
            v41 = @"TAP_OPEN_MAPS";
            goto LABEL_1524;
          case 231:
            v41 = @"TAP_NEARBY_TRANSIT_RESULT";
            goto LABEL_1524;
          case 232:
            v41 = @"RAP_GUIDE";
            goto LABEL_1524;
          case 233:
            v41 = @"SWITCH_OFF_VOICE_GUIDANCE";
            goto LABEL_1524;
          case 234:
            v41 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";
            goto LABEL_1524;
          case 235:
            v41 = @"SELECT_TRANSIT_STEP";
            goto LABEL_1524;
          case 236:
            v41 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";
            goto LABEL_1524;
          case 237:
            v41 = @"TAP_SEE_MORE";
            goto LABEL_1524;
          case 238:
            v41 = @"RAP_IN_REVIEW";
            goto LABEL_1524;
          case 239:
            v41 = @"TAP_OPEN_MENU";
            goto LABEL_1524;
          case 240:
            v41 = @"TAP_NEARBY_TRANSIT";
            goto LABEL_1524;
          case 241:
            v41 = @"TAP_PIN_LINE";
            goto LABEL_1524;
          case 242:
            v41 = @"SWITCH_OFF_TRIP_FEEDBACK";
            goto LABEL_1524;
          case 243:
            v41 = @"RAP_GOOD_TRIP";
            goto LABEL_1524;
          case 244:
            v41 = @"TAP_FILTERED_CURATED_COLLECTION";
            goto LABEL_1524;
          case 245:
            v41 = @"SHARE_MY_LOCATION";
            goto LABEL_1524;
          case 246:
            v41 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";
            goto LABEL_1524;
          case 247:
            v41 = @"DISPLAY_GENERIC_ADVISORY";
            goto LABEL_1524;
          case 248:
            v41 = @"ADVISORY_ALERT";
            goto LABEL_1524;
          case 249:
            v41 = @"PUNCH_OUT_LINK";
            goto LABEL_1524;
          case 250:
            v41 = @"TAP_GENERIC_ADVISORY";
            goto LABEL_1524;
          case 251:
            v41 = @"TAP_EXPLORE_MODE";
            goto LABEL_1524;
          case 252:
            v41 = @"TAP_UNPIN_LINE";
            goto LABEL_1524;
          case 253:
            v41 = @"MENU_UNPIN";
            goto LABEL_1524;
          case 254:
            v41 = @"MENU_PIN";
            goto LABEL_1524;
          case 255:
            v41 = @"SWIPE_PIN";
            goto LABEL_1524;
          case 256:
            v41 = @"SWIPE_UNPIN";
            goto LABEL_1524;
          case 257:
            v41 = @"TAP_MEDIA_APP";
            goto LABEL_1524;
          case 258:
            v41 = @"TAP_GUIDES_SUBACTION";
            goto LABEL_1524;
          case 259:
            v41 = @"TAP_MEDIA";
            goto LABEL_1524;
          case 260:
            v41 = @"PUNCH_OUT_MEDIA";
            goto LABEL_1524;
          case 261:
            v41 = @"SHOW_MEDIA_APP_MENU";
            goto LABEL_1524;
          case 262:
            v41 = @"SCROLL_RIGHT_RIBBON";
            goto LABEL_1524;
          case 263:
            v41 = @"SCROLL_LEFT_RIBBON";
            goto LABEL_1524;
          case 264:
            v41 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";
            goto LABEL_1524;
          case 265:
            v41 = @"TAP_SHOW_MORE_TEXT";
            goto LABEL_1524;
          case 266:
            v41 = @"SCROLL_LEFT_RATINGS";
            goto LABEL_1524;
          case 267:
            v41 = @"SCROLL_LEFT_TEMPLATE_PLACE";
            goto LABEL_1524;
          case 268:
            v41 = @"SCROLL_RIGHT_TEMPLATE_PLACE";
            goto LABEL_1524;
          case 269:
            v41 = @"SCROLL_RIGHT_RATINGS";
            goto LABEL_1524;
          case 270:
            v41 = @"TAP_ALLOW";
            goto LABEL_1524;
          case 271:
            v41 = @"TAP_GO_TO_SETTING";
            goto LABEL_1524;
          case 272:
            v41 = @"START_SUBMIT_REPORT";
            goto LABEL_1524;
          case 273:
            v41 = @"AUTHENTICATION_INFO_FAILURE";
            goto LABEL_1524;
          case 274:
            v41 = @"SUCCESSFULLY_SUBMIT_REPORT";
            goto LABEL_1524;
          case 275:
            v41 = @"FAILED_SUBMIT_REPORT";
            goto LABEL_1524;
          case 276:
            v41 = @"AUTHENTICATION_INFO_SUCCESS";
            goto LABEL_1524;
          case 277:
            v41 = @"EDIT_WAYPOINT";
            goto LABEL_1524;
          case 278:
            v41 = @"CLEAR_TEXT";
            goto LABEL_1524;
          case 279:
            v41 = @"REORDER_WAYPOINT";
            goto LABEL_1524;
          case 280:
            v41 = @"REMOVE_WAYPOINT";
            goto LABEL_1524;
          case 281:
            v41 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";
            goto LABEL_1524;
          case 282:
            v41 = @"TAP_SHOWCASE_MENU";
            goto LABEL_1524;
          case 283:
            v41 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";
            goto LABEL_1524;
          case 284:
            v41 = @"TAP_PHOTO_ALBUM";
            goto LABEL_1524;
          case 285:
            v41 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";
            goto LABEL_1524;
          case 286:
            v41 = @"RAP_INLINE_ADD";
            goto LABEL_1524;
          case 287:
            v41 = @"RAP_TAP_EDIT";
            goto LABEL_1524;
          case 288:
            v41 = @"CLAIM_BUSINESS";
            goto LABEL_1524;
          case 289:
            v41 = @"RAP_EDIT_OPTIONS";
            goto LABEL_1524;
          case 290:
            v41 = @"TAP_IN_REVIEW_RAP";
            goto LABEL_1524;
          case 291:
            v41 = @"ORB_MENU_ADD_STOP";
            goto LABEL_1524;
          case 292:
            v41 = @"NEXT_STOP";
            goto LABEL_1524;
          case 293:
            v41 = @"ARRIVE_AT_WAYPOINT";
            goto LABEL_1524;
          case 294:
            v41 = @"REMOVE_STOP";
            goto LABEL_1524;
          case 295:
            v41 = @"DISPLAY_PAUSE_BUTTON";
            goto LABEL_1524;
          case 296:
            v41 = @"DISPLAY_PAUSE_NEXT_BUTTONS";
            goto LABEL_1524;
          case 297:
            v41 = @"AUTO_ADVANCE_NEXT_STOP";
            goto LABEL_1524;
          case 298:
            v41 = @"ADD_INLINE_NEGATIVE_RATING";
            goto LABEL_1524;
          case 299:
            v41 = @"ADD_INLINE_POSITIVE_RATING";
            goto LABEL_1524;
          case 300:
            v41 = @"TAP_TO_ADD_RATING_AND_PHOTO";
            goto LABEL_1524;
          case 301:
            v41 = @"SUBMIT_RATINGS_AND_PHOTOS";
            goto LABEL_1524;
          case 302:
            v41 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";
            goto LABEL_1524;
          case 303:
            v41 = @"TAP_RECENTLY_VIEWED_ROUTE";
            goto LABEL_1524;
          case 304:
            v41 = @"SHOW_ALL_RECENTS";
            goto LABEL_1524;
          case 305:
            v41 = @"RESUME_MULTIPOINT_ROUTE";
            goto LABEL_1524;
          case 306:
            v41 = @"DISMISS_TRANSIT_TIPKIT";
            goto LABEL_1524;
          case 307:
            v41 = @"DISPLAY_TRANSIT_TIPKIT";
            goto LABEL_1524;
          case 308:
            v41 = @"TAP_TRANSIT_TIPKIT";
            goto LABEL_1524;
          case 309:
            v41 = @"FILTER_EV";
            goto LABEL_1524;
          case 310:
            v41 = @"FILTER_SURCHARGE";
            goto LABEL_1524;
          case 311:
            v41 = @"FILTER_PREFER";
            goto LABEL_1524;
          case 312:
            v41 = @"TAP_WALKING_ANNOTATION";
            goto LABEL_1524;
          case 313:
            v41 = @"FILTER_AVOID";
            goto LABEL_1524;
          case 314:
            v41 = @"FILTER_TRANSPORTATION_MODE";
            goto LABEL_1524;
          case 315:
            v41 = @"FILTER_RECOMMENDED_ROUTES";
            goto LABEL_1524;
          case 316:
            v41 = @"FILTER_IC_FARES";
            goto LABEL_1524;
          case 317:
            v41 = @"FILTER_TRANSIT_CARD_FARES";
            goto LABEL_1524;
          case 318:
            v41 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";
            goto LABEL_1524;
          case 319:
            v41 = @"TAP_NOTIFICATION_SETTINGS";
            goto LABEL_1524;
          case 320:
            v41 = @"TAP_ENABLE_NOTIFICATION";
            goto LABEL_1524;
          case 321:
            v41 = @"ARP_SUGGESTIONS_TURN_OFF";
            goto LABEL_1524;
          case 322:
            v41 = @"ARP_SUGGESTIONS_TURN_ON";
            goto LABEL_1524;
          case 323:
            v41 = @"DISMISS_ARP_SUGGESTION";
            goto LABEL_1524;
          case 324:
            v41 = @"RATINGS_AND_PHOTOS_TURN_ON";
            goto LABEL_1524;
          case 325:
            v41 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";
            goto LABEL_1524;
          case 326:
            v41 = @"UNSELECT_SUGGESTED_PHOTOS";
            goto LABEL_1524;
          case 327:
            v41 = @"SUGGESTED_PHOTOS_SHOWN";
            goto LABEL_1524;
          case 328:
            v41 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";
            goto LABEL_1524;
          case 329:
            v41 = @"TAP_YOUR_PHOTOS_ALBUM";
            goto LABEL_1524;
          case 330:
            v41 = @"RATINGS_AND_PHOTOS_TURN_OFF";
            goto LABEL_1524;
          case 331:
            v41 = @"DELETE_PHOTO";
            goto LABEL_1524;
          case 332:
            v41 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";
            goto LABEL_1524;
          case 333:
            v41 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";
            goto LABEL_1524;
          case 334:
            v41 = @"TAP_PHOTOS_LIVE_NOTIFICATION";
            goto LABEL_1524;
          case 335:
            v41 = @"DISPLAY_YOUR_PHOTOS_ALBUM";
            goto LABEL_1524;
          case 336:
            v41 = @"SELECT_SUGGESTED_PHOTOS";
            goto LABEL_1524;
          case 337:
            v41 = @"ADD_STOP";
            goto LABEL_1524;
          case 338:
            v41 = @"SHOW_CREDIT_TURN_ON";
            goto LABEL_1524;
          case 339:
            v41 = @"DISPLAY_ARP_SUGGESTION";
            goto LABEL_1524;
          case 340:
            v41 = @"TAP_TO_ADD_PHOTO_CREDIT";
            goto LABEL_1524;
          case 341:
            v41 = @"SHOW_CREDIT_TURN_OFF";
            goto LABEL_1524;
          case 342:
            v41 = @"TAP_TO_EDIT_NICKNAME";
            goto LABEL_1524;
          case 343:
            v41 = @"SUBMIT_RATINGS";
            goto LABEL_1524;
          case 344:
            v41 = @"END_NAV_ON_WATCH";
            goto LABEL_1524;
          case 345:
            v41 = @"FILTER_EBIKE";
            goto LABEL_1524;
          case 356:
            v41 = @"ADD_STOP_SIRI";
            goto LABEL_1524;
          case 357:
            v41 = @"TAP_REVIEWED_RAP";
            goto LABEL_1524;
          case 358:
            v41 = @"TAP_OUTREACH_RAP";
            goto LABEL_1524;
          case 359:
            v41 = @"DISPLAY_SUGGESTED_ITEM";
            goto LABEL_1524;
          case 360:
            v41 = @"DISPLAY_HIKING_TIPKIT";
            goto LABEL_1524;
          case 361:
            v41 = @"DISMISS_HIKING_TIPKIT";
            goto LABEL_1524;
          case 362:
            v41 = @"TAP_HIKING_TIPKIT";
            goto LABEL_1524;
          case 363:
            v41 = @"SCROLL_LEFT_TRAILS";
            goto LABEL_1524;
          case 364:
            v41 = @"TAP_MORE_TRAILS";
            goto LABEL_1524;
          case 365:
            v41 = @"TAP_RELATED_TRAIL";
            goto LABEL_1524;
          case 366:
            v41 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";
            goto LABEL_1524;
          case 367:
            v41 = @"SCROLL_RIGHT_TRAILS";
            goto LABEL_1524;
          case 368:
            v41 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
            goto LABEL_1524;
          case 369:
            v41 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";
            goto LABEL_1524;
          case 370:
            v41 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";
            goto LABEL_1524;
          case 371:
            v41 = @"TAP_DOWNLOAD_MAPS_TIPKIT";
            goto LABEL_1524;
          case 372:
            v41 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";
            goto LABEL_1524;
          case 373:
            v41 = @"EXPIRED_MAPS_REMOVED";
            goto LABEL_1524;
          case 374:
            v41 = @"UPDATE_ALL_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 375:
            v41 = @"TAP_EXPIRED_MAPS";
            goto LABEL_1524;
          case 376:
            v41 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 377:
            v41 = @"MOVE_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 378:
            v41 = @"SAVE_RENAME_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 379:
            v41 = @"TAP_COMPLETE_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 380:
            v41 = @"TAP_ENTER_OFFLINE_MAPS";
            goto LABEL_1524;
          case 381:
            v41 = @"TAP_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 382:
            v41 = @"TAP_DOWNLOAD_MAPS_CONTINUE";
            goto LABEL_1524;
          case 383:
            v41 = @"DELETE_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 384:
            v41 = @"SLIDE_CLEAR_EXPIRED_MAPS";
            goto LABEL_1524;
          case 385:
            v41 = @"RENAME_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 386:
            v41 = @"RESIZE_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 387:
            v41 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";
            goto LABEL_1524;
          case 388:
            v41 = @"RESTORE_EXPIRED_MAPS";
            goto LABEL_1524;
          case 389:
            v41 = @"CLEAR_EXPIRED_MAPS";
            goto LABEL_1524;
          case 390:
            v41 = @"TAP_USING_OFFLINE_BAR";
            goto LABEL_1524;
          case 391:
            v41 = @"UPDATE_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 392:
            v41 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";
            goto LABEL_1524;
          case 393:
            v41 = @"DISPLAY_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 394:
            v41 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";
            goto LABEL_1524;
          case 395:
            v41 = @"DISPLAY_EXPIRED_MAPS";
            goto LABEL_1524;
          case 396:
            v41 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
            goto LABEL_1524;
          case 397:
            v41 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 398:
            v41 = @"SLIDE_RESTORE_EXPIRED_MAPS";
            goto LABEL_1524;
          case 399:
            v41 = @"ETA_SHARE_TRAY_TIMEOUT";
            goto LABEL_1524;
          case 400:
            v41 = @"START_ETA_SHARING";
            goto LABEL_1524;
          case 401:
            v41 = @"PERSON_LOCATION_UPDATE";
            goto LABEL_1524;
          case 402:
            v41 = @"STOP_ETA_SHARING";
            goto LABEL_1524;
          case 403:
            v41 = @"PUNCH_OUT_TO_FINDMY";
            goto LABEL_1524;
          case 404:
            v41 = @"TAP_PEOPLE_LOCATION";
            goto LABEL_1524;
          case 405:
            v41 = @"TAP_TO_REQUEST_LOCATION";
            goto LABEL_1524;
          case 406:
            v41 = @"ZOOM_OUT_CROWN";
            goto LABEL_1524;
          case 407:
            v41 = @"TAP_RESIZE_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 408:
            v41 = @"TAP_DELETE_DOWNLOAD_MAPS";
            goto LABEL_1524;
          case 409:
            v41 = @"SELECT_LIST_VIEW";
            goto LABEL_1524;
          case 410:
            v41 = @"SCROLL_RIGHT_TRAILHEADS";
            goto LABEL_1524;
          case 411:
            v41 = @"SWITCH_TO_ONLINE_MODE";
            goto LABEL_1524;
          case 412:
            v41 = @"TAP_RELATED_TRAILHEAD";
            goto LABEL_1524;
          case 413:
            v41 = @"SELECT_ELEVATION_VIEW";
            goto LABEL_1524;
          case 414:
            v41 = @"TOGGLE_PROXIMITY_RADIUS_ON";
            goto LABEL_1524;
          case 415:
            v41 = @"SEE_MORE_RECENTS";
            goto LABEL_1524;
          case 416:
            v41 = @"SEE_MORE_GUIDES";
            goto LABEL_1524;
          case 417:
            v41 = @"SELECT_CONTROLS";
            goto LABEL_1524;
          case 418:
            v41 = @"NO_SEARCH_RESULTS";
            goto LABEL_1524;
          case 419:
            v41 = @"TAP_VIEW_RESULTS_CAROUSEL";
            goto LABEL_1524;
          case 420:
            v41 = @"TAP_VIEW_RESULTS_LIST";
            goto LABEL_1524;
          case 421:
            v41 = @"SELECT_MAP_VIEW";
            goto LABEL_1524;
          case 422:
            v41 = @"SCROLL_LEFT_TRAILHEADS";
            goto LABEL_1524;
          case 423:
            v41 = @"SWITCH_TO_OFFLINE_MODE";
            goto LABEL_1524;
          case 424:
            v41 = @"ZOOM_IN_CROWN";
            goto LABEL_1524;
          case 425:
            v41 = @"TOGGLE_PROXIMITY_RADIUS_OFF";
            goto LABEL_1524;
          case 426:
            v41 = @"TAP_MAP";
            goto LABEL_1524;
          case 427:
            v41 = @"SWIPE_DOWN";
            goto LABEL_1524;
          case 428:
            v41 = @"TAP_MORE_TRAILHEADS";
            goto LABEL_1524;
          case 429:
            v41 = @"TAP_ROUTE_OPTIONS";
            goto LABEL_1524;
          case 430:
            v41 = @"TAP_ROUTE_NAV_MAP";
            goto LABEL_1524;
          case 431:
            v41 = @"TAP_ROUTE_OVERVIEW_MAP";
            goto LABEL_1524;
          case 432:
            v41 = @"TAP_AUDIO";
            goto LABEL_1524;
          case 433:
            v41 = @"TAP_OPEN_PLACECARD";
            goto LABEL_1524;
          case 434:
            v41 = @"TAP_VIEW_STOPS";
            goto LABEL_1524;
          case 435:
            v41 = @"TAP_ROUTE_DETAILS";
            goto LABEL_1524;
          case 436:
            v41 = @"ADD_LPR_VEHICLE";
            goto LABEL_1524;
          case 437:
            v41 = @"TAP_ADD_VEHICLE";
            goto LABEL_1524;
          case 438:
            v41 = @"TAP_PLUG_TYPE";
            goto LABEL_1524;
          case 439:
            v41 = @"UNSELECT_SUGGESTED_NETWORK";
            goto LABEL_1524;
          case 440:
            v41 = @"TAP_SET_UP_LATER";
            goto LABEL_1524;
          case 441:
            v41 = @"ADD_EV_VEHICLE";
            goto LABEL_1524;
          case 442:
            v41 = @"UPDATE_COLOR";
            goto LABEL_1524;
          case 443:
            v41 = @"SELECT_OTHER_NETWORK";
            goto LABEL_1524;
          case 444:
            v41 = @"UNSELECT_NETWORK";
            goto LABEL_1524;
          case 445:
            v41 = @"TAP_BACK";
            goto LABEL_1524;
          case 446:
            v41 = @"TAP_CANCEL";
            goto LABEL_1524;
          case 447:
            v41 = @"UNSELECT_VEHICLE";
            goto LABEL_1524;
          case 448:
            v41 = @"UNSELECT_OTHER_NETWORK";
            goto LABEL_1524;
          case 449:
            v41 = @"DISPLAY_EV_TIPKIT";
            goto LABEL_1524;
          case 450:
            v41 = @"SELECT_NETWORK";
            goto LABEL_1524;
          case 451:
            v41 = @"TAP_EV_TIPKIT";
            goto LABEL_1524;
          case 452:
            v41 = @"TAP_CHOOSE_NETWORKS";
            goto LABEL_1524;
          case 453:
            v41 = @"TAP_ADD_NETWORK";
            goto LABEL_1524;
          case 454:
            v41 = @"FILTER_NETWORK";
            goto LABEL_1524;
          case 455:
            v41 = @"SELECT_SUGGESTED_NETWORK";
            goto LABEL_1524;
          case 456:
            v41 = @"TRANSIT_TO_WALKING";
            goto LABEL_1524;
          case 457:
            v41 = @"TRANSIT_TO_FINDMY";
            goto LABEL_1524;
          case 458:
            v41 = @"TAP_AC_KEYBOARD";
            goto LABEL_1524;
          case 459:
            v41 = @"REACH_PHOTO_STRIP_END";
            goto LABEL_1524;
          case 460:
            v41 = @"SEARCH_HERE_REVEAL";
            goto LABEL_1524;
          case 461:
            v41 = @"TAP_SEARCH_HERE";
            goto LABEL_1524;
          case 462:
            v41 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";
            goto LABEL_1524;
          case 463:
            v41 = @"SAVE";
            goto LABEL_1524;
          case 464:
            v41 = @"TAP_MORE_CURATED_HIKES";
            goto LABEL_1524;
          case 465:
            v41 = @"CREATE_CUSTOM_ROUTE";
            goto LABEL_1524;
          case 466:
            v41 = @"TAP_TRY_NOW";
            goto LABEL_1524;
          case 467:
            v41 = @"TAP_CURATED_HIKE";
            goto LABEL_1524;
          case 468:
            v41 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";
            goto LABEL_1524;
          case 469:
            v41 = @"ADD_TO_LIBRARY";
            goto LABEL_1524;
          case 470:
            v41 = @"START_HIKING";
            goto LABEL_1524;
          case 471:
            v41 = @"EDIT_NOTE";
            goto LABEL_1524;
          case 472:
            v41 = @"CREATE_NOTE";
            goto LABEL_1524;
          case 473:
            v41 = @"DELETE_PIN";
            goto LABEL_1524;
          case 474:
            v41 = @"ADD_ROUTE";
            goto LABEL_1524;
          case 475:
            v41 = @"ADD_PIN";
            goto LABEL_1524;
          case 476:
            v41 = @"REMOVE_FROM_COLLECTION";
            goto LABEL_1524;
          case 477:
            v41 = @"REMOVE_FROM_LIBRARY";
            goto LABEL_1524;
          case 478:
            v41 = @"TAP_ITEM";
            goto LABEL_1524;
          case 479:
            v41 = @"DELETE_ROUTE";
            goto LABEL_1524;
          case 480:
            v41 = @"TAP_ROUTE";
            goto LABEL_1524;
          case 481:
            v41 = @"TAP_DOWNLOAD_WATCH_MAPS";
            goto LABEL_1524;
          case 482:
            v41 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
            goto LABEL_1524;
          case 483:
            v41 = @"STOP_DOWNLOAD_ONTO_WATCH";
            goto LABEL_1524;
          case 484:
            v41 = @"TAP_DOWNLOAD_ONTO_WATCH";
            goto LABEL_1524;
          case 485:
            v41 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
            goto LABEL_1524;
          case 486:
            v41 = @"TAP_DOWNLOAD_NOW_WATCH";
            goto LABEL_1524;
          case 487:
            v41 = @"REVEAL_DETECTION_LIST";
            goto LABEL_1524;
          case 488:
            v41 = @"TAP_RECOMMENDATION";
            goto LABEL_1524;
          case 489:
            v41 = @"TAP_EXPAND";
            goto LABEL_1524;
          case 490:
            v41 = @"EXPAND_DETECTION_LIST";
            goto LABEL_1524;
          case 491:
            v41 = @"FIRST_PARTY_MAP_VIEW";
            goto LABEL_1524;
          case 492:
            v41 = @"SECOND_PARTY_MAP_VIEW";
            goto LABEL_1524;
          case 493:
            v41 = @"THIRD_PARTY_MAP_VIEW";
            goto LABEL_1524;
          case 494:
            v41 = @"DAEMON_PARTY_MAP_VIEW";
            goto LABEL_1524;
          case 495:
            v41 = @"MAPS_APP_DWELL_TIME_3_SEC";
            goto LABEL_1524;
          case 496:
            v41 = @"MAPS_APP_DWELL_TIME_30_SEC";
            goto LABEL_1524;
          case 497:
            v41 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";
            goto LABEL_1524;
          case 498:
            v41 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";
            goto LABEL_1524;
          case 499:
            v41 = @"DISPLAY_DOOM";
            goto LABEL_1524;
          case 500:
            v41 = @"TAP_DOOM";
            goto LABEL_1524;
          case 501:
            v41 = @"TAP_ROUTE_GENIUS";
            goto LABEL_1524;
          case 502:
            v41 = @"DISPLAY_ROUTE_GENIUS";
            goto LABEL_1524;
          case 503:
            v41 = @"TAP_WIDGET";
            goto LABEL_1524;
          case 504:
            v41 = @"ARRIVE_AT_DESTINATION";
            goto LABEL_1524;
          case 505:
            v41 = @"DISPLAY_WIDGET";
            goto LABEL_1524;
          case 506:
            v41 = @"CLEAR_HISTORY";
            goto LABEL_1524;
          case 507:
            v41 = @"TAP_SECTION";
            goto LABEL_1524;
          case 508:
            v41 = @"APPROVE_LOCATION";
            goto LABEL_1524;
          case 509:
            v41 = @"DISMISS_VISITED_PLACES_TIPKIT";
            goto LABEL_1524;
          case 510:
            v41 = @"DISPLAY_VISITED_PLACES_TIPKIT";
            goto LABEL_1524;
          case 511:
            v41 = @"MORE_OPTIONS";
            goto LABEL_1524;
          case 512:
            v41 = @"TAP_VISITED_PLACES_AVAILABLE";
            goto LABEL_1524;
          case 513:
            v41 = @"AUTO_REFRESH_SEARCH";
            goto LABEL_1524;
          case 514:
            v41 = @"REMOVE_VISIT";
            goto LABEL_1524;
          case 515:
            v41 = @"WRONG_LOCATION";
            goto LABEL_1524;
          case 516:
            v41 = @"CONFIRM";
            goto LABEL_1524;
          case 517:
            v41 = @"KEEP_HISTORY";
            goto LABEL_1524;
          case 518:
            v41 = @"DISPLAY_VISITED_PLACES_AVAILABLE";
            goto LABEL_1524;
          case 519:
            v41 = @"REMOVE";
            goto LABEL_1524;
          case 520:
            v41 = @"ALLOW";
            goto LABEL_1524;
          case 521:
            v41 = @"DONT_ALLOW";
            goto LABEL_1524;
          case 522:
            v41 = @"REMOVE_EVERY_VISIT";
            goto LABEL_1524;
          case 523:
            v41 = @"CONTINUE_VISITED_PLACES_TIPKIT";
            goto LABEL_1524;
          case 524:
            v41 = @"REMOVE_FROM_FAVORITE_GUIDE";
            goto LABEL_1524;
          case 525:
            v41 = @"ADD_TO_FAVORITE_GUIDE";
            goto LABEL_1524;
          case 526:
            v41 = @"FAMILIAR_ROUTE_DISPLAYED";
            goto LABEL_1524;
          case 527:
            v41 = @"FAMILIAR_ROUTE_NAV_STARTED";
            goto LABEL_1524;
          case 528:
            v41 = @"SELECT_AUDIO_VOLUME_LOUDER";
            goto LABEL_1524;
          case 529:
            v41 = @"SELECT_AUDIO_VOLUME_SOFTER";
            goto LABEL_1524;
          case 1001:
            v41 = @"PAN";
            goto LABEL_1524;
          case 1002:
            v41 = @"ZOOM_IN";
            goto LABEL_1524;
          case 1003:
            v41 = @"ZOOM_OUT";
            goto LABEL_1524;
          case 1004:
            v41 = @"ROTATE";
            goto LABEL_1524;
          case 1010:
            v41 = @"TAP_POI";
            goto LABEL_1524;
          case 1011:
            v41 = @"TAP_POI_TRANSIT";
            goto LABEL_1524;
          case 1017:
            v41 = @"TAP_POI_HIGHLIGHTED";
            goto LABEL_1524;
          case 1018:
            v41 = @"TAP_POI_CLUSTERED";
            goto LABEL_1524;
          case 1020:
            v41 = @"TAP_POI_DROPPED_PIN";
            goto LABEL_1524;
          case 1030:
            v41 = @"DROP_PIN";
            goto LABEL_1524;
          case 1031:
            v41 = @"TAP_INCIDENT";
            goto LABEL_1524;
          case 1032:
            v41 = @"TAP_TRANSIT_LINE";
            goto LABEL_1524;
          case 1033:
            v41 = @"TAP_POI_CALENDAR";
            goto LABEL_1524;
          case 1034:
            v41 = @"TAP_POI_CURRENT_LOCATION";
            goto LABEL_1524;
          case 1035:
            v41 = @"TAP_POI_TRANSIT_LINE";
            goto LABEL_1524;
          case 1036:
            v41 = @"TAP_POI_LANDMARK";
            goto LABEL_1524;
          case 1037:
            v41 = @"TAP_POI_FLYOVER";
            goto LABEL_1524;
          case 1038:
            v41 = @"TAP_TO_HIDE_TRAY";
            goto LABEL_1524;
          case 1039:
            v41 = @"TAP_TO_REVEAL_TRAY";
            goto LABEL_1524;
          case 1040:
            v41 = @"TAP_COMPASS";
            goto LABEL_1524;
          case 1041:
            v41 = @"PITCH_AWAY_FROM_GROUND";
            goto LABEL_1524;
          case 1042:
            v41 = @"PITCH_CLOSER_TO_GROUND";
            goto LABEL_1524;
          case 1043:
            v41 = @"ZOOM_IN_PINCH";
            goto LABEL_1524;
          case 1044:
            v41 = @"ZOOM_OUT_PINCH";
            goto LABEL_1524;
          case 1045:
            v41 = @"ZOOM_IN_DOUBLE_TAP";
            goto LABEL_1524;
          case 1046:
            v41 = @"ZOOM_OUT_TWO_FINGER_TAP";
            goto LABEL_1524;
          case 1047:
            v41 = @"ZOOM_IN_ONE_FINGER";
            goto LABEL_1524;
          case 1048:
            v41 = @"ZOOM_OUT_ONE_FINGER";
            goto LABEL_1524;
          case 1049:
            v41 = @"ZOOM_IN_BUTTON";
            goto LABEL_1524;
          case 1050:
            v41 = @"ZOOM_OUT_BUTTON";
            goto LABEL_1524;
          case 1051:
            v41 = @"TAP_TRAFFIC_CAMERA";
            goto LABEL_1524;
          case 1052:
            v41 = @"DISPLAY_INDOOR_MAP_BUTTON";
            goto LABEL_1524;
          case 1053:
            v41 = @"OPEN_INDOOR_MAP";
            goto LABEL_1524;
          case 1054:
            v41 = @"DISPLAY_VENUE_BROWSE_BUTTON";
            goto LABEL_1524;
          case 1055:
            v41 = @"TAP_VENUE_BROWSE_BUTTON";
            goto LABEL_1524;
          case 1056:
            v41 = @"ENTER_VENUE_EXPERIENCE";
            goto LABEL_1524;
          case 1057:
            v41 = @"EXIT_VENUE_EXPERIENCE";
            goto LABEL_1524;
          case 1058:
            v41 = @"ZOOM_IN_SCENE_PINCH";
            goto LABEL_1524;
          case 1059:
            v41 = @"ZOOM_OUT_SCENE_PINCH";
            goto LABEL_1524;
          case 1060:
            v41 = @"ZOOM_RESET";
            goto LABEL_1524;
          case 1061:
            v41 = @"TAP_SCENE_UNAVAILABLE_AREA";
            goto LABEL_1524;
          case 1062:
            v41 = @"TAP_TRANSIT_ACCESS_POINT";
            goto LABEL_1524;
          case 1063:
            v41 = @"TAP_SPEED_CAMERA";
            goto LABEL_1524;
          case 1064:
            v41 = @"TAP_RED_LIGHT_CAMERA";
            goto LABEL_1524;
          case 1065:
            v41 = @"TAP_GEO";
            goto LABEL_1524;
          default:
            if (v33 != 1500)
            {
              goto LABEL_213;
            }

            v41 = @"TAP_PLAY_SOUND";
            goto LABEL_1524;
        }
      }

      if (v33 <= 1503)
      {
        if (v33 == 1501)
        {
          v41 = @"TAP_DIRECTIONS";
        }

        else if (v33 == 1502)
        {
          v41 = @"TAP_PROXIMITY_FIND";
        }

        else
        {
          v41 = @"TAP_PRECISION_FIND";
        }
      }

      else
      {
        switch(v33)
        {
          case 2001:
            v41 = @"TAP_SEARCH_FIELD";
            goto LABEL_1524;
          case 2002:
            v41 = @"CLEAR_SEARCH";
            goto LABEL_1524;
          case 2003:
            v41 = @"CANCEL_SEARCH";
            goto LABEL_1524;
          case 2004:
            v41 = @"TAP_BROWSE_TOP_CATEGORY";
            goto LABEL_1524;
          case 2005:
            v41 = @"TAP_BROWSE_SUB_CATEGORY";
            goto LABEL_1524;
          case 2006:
            v41 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";
            goto LABEL_1524;
          case 2007:
            v41 = @"TAP_LIST_ITEM";
            goto LABEL_1524;
          case 2008:
            v41 = @"SHARE_LIST_ITEM";
            goto LABEL_1524;
          case 2009:
            v41 = @"DELETE_LIST_ITEM";
            goto LABEL_1524;
          case 2010:
            v41 = @"EDIT_LIST_ITEM";
            goto LABEL_1524;
          case 2011:
            v41 = @"REFRESH_SEARCH";
            goto LABEL_1524;
          case 2012:
            v41 = @"REVEAL_LIST_ITEM_ACTIONS";
            goto LABEL_1524;
          case 2013:
            v41 = @"HIDE_LIST_ITEM_ACTIONS";
            goto LABEL_1524;
          case 2014:
            v41 = @"TAP_SEARCH_BUTTON";
            goto LABEL_1524;
          case 2015:
            v41 = @"SHOW_SEARCH_RESULTS";
            goto LABEL_1524;
          case 2016:
            v41 = @"SHOW_REFRESH_SEARCH";
            goto LABEL_1524;
          case 2017:
            v41 = @"PASTE_TEXT";
            goto LABEL_1524;
          case 2018:
            v41 = @"TAP_LIST_SUB_ITEM";
            goto LABEL_1524;
          case 2019:
            v41 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";
            goto LABEL_1524;
          case 2020:
            v41 = @"TAP_DID_YOU_MEAN_MESSAGE";
            goto LABEL_1524;
          case 2021:
            v41 = @"CLOSE_DID_YOU_MEAN_MESSAGE";
            goto LABEL_1524;
          case 2022:
            v41 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";
            goto LABEL_1524;
          case 2023:
            v41 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";
            goto LABEL_1524;
          case 2024:
            v41 = @"RETAINED_QUERY";
            goto LABEL_1524;
          case 2025:
            v41 = @"TAP_RECENT_AC_SUGGESTION";
            goto LABEL_1524;
          case 2026:
            v41 = @"CLEAR_RECENT_AC_SUGGESTION";
            goto LABEL_1524;
          case 2027:
            v41 = @"DELETE_RECENT_AC_SUGGESTION";
            goto LABEL_1524;
          case 2028:
          case 2029:
            goto LABEL_213;
          case 2030:
            v41 = @"TAP_BROWSE_NEARBY_CATEGORY";
            goto LABEL_1524;
          case 2031:
            v41 = @"TAP_SUBACTION";
            goto LABEL_1524;
          case 2032:
            v41 = @"TAP_QUERY_BUILDING_ARROW";
            goto LABEL_1524;
          case 2033:
            v41 = @"CLICK_ON_EDIT_SEARCH";
            goto LABEL_1524;
          case 2034:
            v41 = @"REMOVE_CLIENT_AC_SUGGESTION";
            goto LABEL_1524;
          case 2035:
            v41 = @"SHARE_CLIENT_AC_SUGGESTION";
            goto LABEL_1524;
          case 2036:
            v41 = @"TAP_ON_MORE_RESULTS";
            goto LABEL_1524;
          case 2037:
            v41 = @"SHARE_ITEM";
            goto LABEL_1524;
          case 2038:
            v41 = @"HIDE_ITEM";
            goto LABEL_1524;
          case 2039:
            v41 = @"TAP_SUGGESTED_ITEM";
            goto LABEL_1524;
          case 2040:
            v41 = @"SHARE_SUGGESTED_ITEM";
            goto LABEL_1524;
          case 2041:
            v41 = @"HIDE_SUGGESTED_ITEM";
            goto LABEL_1524;
          case 2042:
            v41 = @"ADD_HOME_FAVORITE";
            goto LABEL_1524;
          case 2043:
            v41 = @"ADD_WORK_FAVORITE";
            goto LABEL_1524;
          case 2044:
            v41 = @"ADD_FAVORITE";
            goto LABEL_1524;
          case 2045:
            v41 = @"VIEW_FAVORITES_LIST";
            goto LABEL_1524;
          case 2046:
            v41 = @"TAP_HOME_FAVORITE";
            goto LABEL_1524;
          case 2047:
            v41 = @"TAP_WORK_FAVORITE";
            goto LABEL_1524;
          case 2048:
            v41 = @"TAP_CAR_FAVORITE";
            goto LABEL_1524;
          case 2049:
            v41 = @"TAP_FAVORITE_ITEM";
            goto LABEL_1524;
          case 2050:
            v41 = @"CREATE_HOME_FAVORITE";
            goto LABEL_1524;
          case 2051:
            v41 = @"CREATE_WORK_FAVORITE";
            goto LABEL_1524;
          case 2052:
            v41 = @"CREATE_FAVORITE";
            goto LABEL_1524;
          case 2053:
            v41 = @"SUBMIT_FAVORITE_EDIT";
            goto LABEL_1524;
          case 2054:
            v41 = @"ADD_RECOMMENDED_FAVORITE";
            goto LABEL_1524;
          case 2055:
            v41 = @"EDIT_FAVORITE";
            goto LABEL_1524;
          case 2056:
            v41 = @"REMOVE_FAVORITE";
            goto LABEL_1524;
          case 2057:
            v41 = @"SHARE_FAVORITE";
            goto LABEL_1524;
          case 2058:
            v41 = @"EDIT_FAVORITES";
            goto LABEL_1524;
          case 2059:
            v41 = @"ADD_FAVORITE_PLACE";
            goto LABEL_1524;
          case 2060:
            v41 = @"REMOVE_FAVORITE_PLACE";
            goto LABEL_1524;
          case 2061:
            v41 = @"CHANGE_HOME_ADDRESS";
            goto LABEL_1524;
          case 2062:
            v41 = @"CHANGE_WORK_ADDRESS";
            goto LABEL_1524;
          case 2063:
            v41 = @"REFINE_LOCATION";
            goto LABEL_1524;
          case 2064:
            v41 = @"TAP_RECENTLY_VIEWED_ITEM";
            goto LABEL_1524;
          case 2065:
            v41 = @"SHOW_COLLECTION_LIST";
            goto LABEL_1524;
          case 2066:
            v41 = @"SHOW_FAVORITES_COLLECTION";
            goto LABEL_1524;
          case 2067:
            v41 = @"SHOW_COLLECTION";
            goto LABEL_1524;
          case 2068:
            v41 = @"TAP_COLLECTION_ITEM";
            goto LABEL_1524;
          case 2069:
            v41 = @"SHARE_COLLECTION_ITEM";
            goto LABEL_1524;
          case 2070:
            v41 = @"REMOVE_COLLECTION_ITEM";
            goto LABEL_1524;
          case 2071:
            v41 = @"SAVE_SHARED_COLLECTION";
            goto LABEL_1524;
          case 2072:
            v41 = @"CREATE_NEW_COLLECTION";
            goto LABEL_1524;
          case 2073:
            v41 = @"SAVE_TO_COLLECTION";
            goto LABEL_1524;
          case 2074:
            v41 = @"EDIT_PHOTO";
            goto LABEL_1524;
          case 2075:
            v41 = @"SORT_BY_NAME";
            goto LABEL_1524;
          case 2076:
            v41 = @"SORT_BY_DISTANCE";
            goto LABEL_1524;
          case 2077:
            v41 = @"SORT_BY_RECENT";
            goto LABEL_1524;
          case 2078:
            v41 = @"AUTO_SHARE_ETA";
            goto LABEL_1524;
          case 2079:
            v41 = @"CANCEL_AUTO_SHARE_ETA";
            goto LABEL_1524;
          case 2080:
            v41 = @"MAP_SEARCH";
            goto LABEL_1524;
          case 2081:
            v41 = @"DELETE_COLLECTION";
            goto LABEL_1524;
          case 2082:
            v41 = @"SHARE_COLLECTION";
            goto LABEL_1524;
          case 2083:
            v41 = @"SHOW_TRANSIT_LINES_COLLECTION";
            goto LABEL_1524;
          case 2084:
            v41 = @"SHOW_MY_PLACES";
            goto LABEL_1524;
          case 2085:
            v41 = @"SHOW_ALL_PLACES";
            goto LABEL_1524;
          case 2086:
            v41 = @"TAP_RECENT_QUERY";
            goto LABEL_1524;
          case 2087:
            v41 = @"TAP_QUERY_SUGGESTION";
            goto LABEL_1524;
          case 2088:
            v41 = @"DELETE_CURATED_COLLECTION";
            goto LABEL_1524;
          case 2089:
            v41 = @"FOLLOW";
            goto LABEL_1524;
          case 2090:
            v41 = @"PUNCH_IN";
            goto LABEL_1524;
          case 2091:
            v41 = @"SAVE_CURATED_COLLECTION";
            goto LABEL_1524;
          case 2092:
            v41 = @"SCROLL_LEFT_COLLECTIONS";
            goto LABEL_1524;
          case 2093:
            v41 = @"SCROLL_RIGHT_COLLECTIONS";
            goto LABEL_1524;
          case 2094:
            v41 = @"SEE_ALL_CURATED_COLLECTION";
            goto LABEL_1524;
          case 2095:
            v41 = @"SEE_ALL_PUBLISHERS";
            goto LABEL_1524;
          case 2096:
            v41 = @"SHARE_CURATED_COLLECTION";
            goto LABEL_1524;
          case 2097:
            v41 = @"SHARE_PUBLISHER";
            goto LABEL_1524;
          case 2098:
            v41 = @"SHOW_MORE_COLLECTION";
            goto LABEL_1524;
          case 2099:
            v41 = @"TAP_CURATED_COLLECTION";
            goto LABEL_1524;
          case 2100:
            v41 = @"TAP_FEATURED_COLLECTIONS";
            goto LABEL_1524;
          case 2101:
            v41 = @"TAP_LOCATION";
            goto LABEL_1524;
          case 2102:
            v41 = @"TAP_PUBLISHER";
            goto LABEL_1524;
          case 2103:
            v41 = @"TAP_PUBLISHER_APP";
            goto LABEL_1524;
          case 2104:
            v41 = @"TAP_PUBLISHER_COLLECTIONS";
            goto LABEL_1524;
          case 2105:
            v41 = @"UNFOLLOW";
            goto LABEL_1524;
          case 2106:
            v41 = @"CHANGE_SCHOOL_ADDRESS";
            goto LABEL_1524;
          case 2107:
            v41 = @"ADD_VEHICLE";
            goto LABEL_1524;
          case 2108:
            v41 = @"DISPLAY_VIRTUAL_GARAGE";
            goto LABEL_1524;
          case 2109:
            v41 = @"ENTER_VIRTUAL_GARAGE";
            goto LABEL_1524;
          case 2110:
            v41 = @"PUNCH_OUT_MANUFACTURER_APP";
            goto LABEL_1524;
          case 2111:
            v41 = @"REMOVE_LICENSE_PLATE";
            goto LABEL_1524;
          case 2112:
            v41 = @"REMOVE_VEHICLE";
            goto LABEL_1524;
          case 2113:
            v41 = @"SELECT_VEHICLE";
            goto LABEL_1524;
          case 2114:
            v41 = @"SUBMIT_LICENSE_PLATE";
            goto LABEL_1524;
          case 2115:
            v41 = @"TAP_ADD_LICENSE_PLATE";
            goto LABEL_1524;
          case 2116:
            v41 = @"TAP_ADD_NEW_CAR";
            goto LABEL_1524;
          case 2117:
            v41 = @"TAP_BANNER";
            goto LABEL_1524;
          case 2118:
            v41 = @"TAP_CONNECT";
            goto LABEL_1524;
          case 2119:
            v41 = @"TAP_CONTINUE";
            goto LABEL_1524;
          case 2120:
            v41 = @"TAP_EDIT";
            goto LABEL_1524;
          case 2121:
            v41 = @"TAP_NAME";
            goto LABEL_1524;
          case 2122:
            v41 = @"TAP_NOT_NOW";
            goto LABEL_1524;
          case 2123:
            v41 = @"TAP_OTHER_VEHICLE";
            goto LABEL_1524;
          case 2124:
            v41 = @"TAP_REMOVE_LICENSE_PLATE";
            goto LABEL_1524;
          case 2125:
            v41 = @"TAP_UPDATE_PLATE_NUMBER";
            goto LABEL_1524;
          case 2126:
            v41 = @"TAP_VEHICLE";
            goto LABEL_1524;
          case 2127:
            v41 = @"TAP_VEHICLE_NAME";
            goto LABEL_1524;
          case 2128:
            v41 = @"UPDATE_NAME";
            goto LABEL_1524;
          case 2129:
            v41 = @"DONE_TAKING_PHOTO";
            goto LABEL_1524;
          case 2130:
            v41 = @"ENABLE_SHOW_PHOTO_NAME";
            goto LABEL_1524;
          case 2131:
            v41 = @"SUBMIT_PHOTO";
            goto LABEL_1524;
          case 2132:
            v41 = @"USE_PHOTO";
            goto LABEL_1524;
          case 2133:
            v41 = @"ADD_RECOMMENDATION_TO_MAPS";
            goto LABEL_1524;
          case 2134:
            v41 = @"CANCEL_PHOTO_SUBMISSION";
            goto LABEL_1524;
          case 2135:
            v41 = @"CLOSE_RECOMMENDATION_CARD";
            goto LABEL_1524;
          case 2136:
            v41 = @"EDIT_RATING";
            goto LABEL_1524;
          case 2137:
            v41 = @"PROMPTED_TO_ADD_PHOTO";
            goto LABEL_1524;
          case 2138:
            v41 = @"PROMPTED_TO_ADD_RATING";
            goto LABEL_1524;
          case 2139:
            v41 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";
            goto LABEL_1524;
          case 2140:
            v41 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";
            goto LABEL_1524;
          case 2141:
            v41 = @"RETAKE_PHOTO";
            goto LABEL_1524;
          case 2142:
            v41 = @"REVEAL_RECOMMENDATION_CARD";
            goto LABEL_1524;
          case 2143:
            v41 = @"SUBMIT_NEGATIVE_RATING";
            goto LABEL_1524;
          case 2144:
            v41 = @"SUBMIT_POSITIVE_RATING";
            goto LABEL_1524;
          case 2145:
            v41 = @"TAP_CHOOSING_PHOTO";
            goto LABEL_1524;
          case 2146:
            v41 = @"TAP_TAKE_NEW_PHOTO";
            goto LABEL_1524;
          case 2147:
            v41 = @"TAP_TO_ADD_PHOTO";
            goto LABEL_1524;
          case 2148:
            v41 = @"CANCEL_INCIDENT_REPORT";
            goto LABEL_1524;
          case 2149:
            v41 = @"INCIDENT_REPORT_SUBMITTED";
            goto LABEL_1524;
          case 2150:
            v41 = @"REPORTED_INCIDENT_NOT_RECEIVED";
            goto LABEL_1524;
          case 2151:
            v41 = @"REPORTED_INCIDENT_RECEIVED";
            goto LABEL_1524;
          case 2152:
            v41 = @"REPORT_INCIDENT";
            goto LABEL_1524;
          case 2153:
            v41 = @"SELECT_INCIDENT_TYPE";
            goto LABEL_1524;
          case 2154:
            v41 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";
            goto LABEL_1524;
          case 2155:
            v41 = @"TAP_TO_START_REPORT_INCIDENT";
            goto LABEL_1524;
          case 2156:
            v41 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";
            goto LABEL_1524;
          case 2157:
            v41 = @"ATTEMPT_VLF_CORRECTION";
            goto LABEL_1524;
          case 2158:
            v41 = @"DISMISS_VLF_PROMPT";
            goto LABEL_1524;
          case 2159:
            v41 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";
            goto LABEL_1524;
          case 2160:
            v41 = @"VLF_CORRECTION_FAILED";
            goto LABEL_1524;
          case 2161:
            v41 = @"VLF_CORRECTION_SUCCESSFUL";
            goto LABEL_1524;
          case 2162:
            v41 = @"ENABLE_WIDGET_SUGGESTIONS";
            goto LABEL_1524;
          case 2163:
            v41 = @"DISPLAY_CZ_ADVISORY";
            goto LABEL_1524;
          case 2164:
            v41 = @"PUNCH_OUT_URL_PAY";
            goto LABEL_1524;
          case 2165:
            v41 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";
            goto LABEL_1524;
          case 2166:
            v41 = @"DELETE_ITEM";
            goto LABEL_1524;
          case 2167:
            v41 = @"CANCEL_REMOVE";
            goto LABEL_1524;
          case 2168:
            v41 = @"DELETE_SUGGESTION";
            goto LABEL_1524;
          case 2169:
            v41 = @"ADD_SCHOOL_FAVORITE";
            goto LABEL_1524;
          case 2170:
            v41 = @"GO_TO_WEBSITE";
            goto LABEL_1524;
          case 2171:
            v41 = @"TRY_AGAIN";
            goto LABEL_1524;
          case 2172:
            v41 = @"CHECK_AUTO_RECORD_WORKOUT";
            goto LABEL_1524;
          case 2173:
            v41 = @"CHECK_EBIKE";
            goto LABEL_1524;
          case 2174:
            v41 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";
            goto LABEL_1524;
          case 2175:
            v41 = @"DISPLAY_CYCLING_DEFAULT_OPTION";
            goto LABEL_1524;
          case 2176:
            v41 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";
            goto LABEL_1524;
          case 2177:
            v41 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";
            goto LABEL_1524;
          case 2178:
            v41 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";
            goto LABEL_1524;
          case 2179:
            v41 = @"TAP_AUTOMATIC_WORKOUT_OPTION";
            goto LABEL_1524;
          case 2180:
            v41 = @"TAP_CYCLING_DEFAULT_OPTION";
            goto LABEL_1524;
          case 2181:
            v41 = @"TAP_CYCLING_NO_BIKE_ADVISORY";
            goto LABEL_1524;
          case 2182:
            v41 = @"TAP_CYCLING_STAIRS_ADVISORY";
            goto LABEL_1524;
          case 2183:
            v41 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";
            goto LABEL_1524;
          case 2184:
            v41 = @"UNCHECK_AUTO_RECORD_WORKOUT";
            goto LABEL_1524;
          case 2185:
            v41 = @"UNCHECK_EBIKE";
            goto LABEL_1524;
          case 2186:
            v41 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";
            goto LABEL_1524;
          case 2187:
            v41 = @"DISPLAY_LPR_ADVISORY";
            goto LABEL_1524;
          case 2188:
            v41 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";
            goto LABEL_1524;
          case 2189:
            v41 = @"CREATE_WIDGET";
            goto LABEL_1524;
          case 2190:
            v41 = @"REVEAL_WIDGET_TRAY";
            goto LABEL_1524;
          case 2191:
            v41 = @"LPR_ERROR_CODE";
            goto LABEL_1524;
          case 2192:
            v41 = @"TAP_SEE_ALL_RECENTLY_VIEWED";
            goto LABEL_1524;
          case 2193:
            v41 = @"TAP_CLEAR_RECENTLY_VIEWED";
            goto LABEL_1524;
          case 2194:
            v41 = @"LPR_HARD_STOP";
            goto LABEL_1524;
          case 2195:
            v41 = @"TAP_PUBLISHER_SUBACTION";
            goto LABEL_1524;
          case 2196:
            v41 = @"CARPLAY_DISPLAY_ACTIVATED";
            goto LABEL_1524;
          case 2197:
            v41 = @"CARPLAY_DISPLAY_DEACTIVATED";
            goto LABEL_1524;
          case 2198:
            v41 = @"TAP_FEATURED_COLLECTION";
            goto LABEL_1524;
          case 2199:
            v41 = @"SCROLL_FEATURED_COLLECTION_FORWARD";
            goto LABEL_1524;
          case 2200:
            v41 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";
            goto LABEL_1524;
          default:
            if (v33 == 1504)
            {
              v41 = @"TAP_ENABLE_LOST_MODE";
            }

            else
            {
              if (v33 != 1505)
              {
                goto LABEL_213;
              }

              v41 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
            }

            break;
        }
      }

      goto LABEL_1524;
    }

    if (v33 > 9000)
    {
      if (v33 <= 12000)
      {
        switch(v33)
        {
          case 10101:
            v34 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";
            break;
          case 10102:
            v34 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";
            break;
          case 10103:
            v34 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";
            break;
          case 10104:
            v34 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";
            break;
          case 10105:
            v34 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";
            break;
          case 10106:
            v34 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";
            break;
          case 10107:
            v34 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";
            break;
          case 10108:
            v34 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";
            break;
          case 10109:
            v34 = @"RAP_CANCEL";
            break;
          case 10110:
            v34 = @"RAP_NEXT";
            break;
          case 10111:
            v34 = @"RAP_BACK";
            break;
          case 10112:
            v34 = @"RAP_SEND";
            break;
          case 10113:
            v34 = @"RAP_SKIP";
            break;
          case 10114:
            v34 = @"RAP_SHOW_MORE";
            break;
          case 10115:
            v34 = @"RAP_ADD_PHOTO";
            break;
          case 10116:
            v34 = @"RAP_MAP_INCORRECT";
            break;
          case 10117:
            v34 = @"RAP_BAD_DIRECTIONS";
            break;
          case 10118:
            v34 = @"RAP_TRANSIT_INFO_INCORRECT";
            break;
          case 10119:
            v34 = @"RAP_SATELLITE_IMAGE_PROBLEM";
            break;
          case 10120:
            v34 = @"RAP_SEARCH_RESULTS_INCORRECT";
            break;
          case 10121:
            v34 = @"RAP_ADD_A_PLACE";
            break;
          case 10122:
            v34 = @"RAP_HOME";
            break;
          case 10123:
            v34 = @"RAP_WORK";
            break;
          case 10124:
            v34 = @"RAP_OTHER";
            break;
          case 10125:
            v34 = @"RAP_LOCATION";
            break;
          case 10126:
            v34 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";
            break;
          case 10127:
            v34 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";
            break;
          case 10128:
            v34 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";
            break;
          case 10129:
            v34 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";
            break;
          case 10130:
            v34 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";
            break;
          case 10131:
            v34 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";
            break;
          case 10132:
            v34 = @"RAP_TRANSIT_DELAY";
            break;
          case 10133:
            v34 = @"RAP_LOCATION_CLOSED";
            break;
          case 10134:
            v34 = @"RAP_CLOSED_PERMANENTLY";
            break;
          case 10135:
            v34 = @"RAP_CLOSED_TEMPORARILY";
            break;
          case 10136:
            v34 = @"RAP_HOURS_HAVE_CHANGED";
            break;
          case 10137:
            v34 = @"RAP_SELECT_STATION";
            break;
          case 10138:
            v34 = @"RAP_SELECT_LINE";
            break;
          case 10139:
            v34 = @"RAP_SELECT_ACCESS_POINT";
            break;
          case 10140:
            v34 = @"RAP_SELECT_SEARCH";
            break;
          case 10141:
            v34 = @"RAP_PAN_MAP";
            break;
          case 10142:
            v34 = @"RAP_CENTER_MAP_ON_USER";
            break;
          case 10143:
            v34 = @"RAP_SEARCH_UNEXPECTED";
            break;
          case 10144:
            v34 = @"RAP_ADD_POI";
            break;
          case 10145:
            v34 = @"RAP_ADD_STREET_ADDRESS";
            break;
          case 10146:
            v34 = @"RAP_ADD_OTHER";
            break;
          case 10147:
            v34 = @"RAP_SELECT_CATEGORY";
            break;
          case 10148:
            v34 = @"RAP_TAKE_PHOTO";
            break;
          case 10149:
            v34 = @"RAP_RETAKE_PHOTO";
            break;
          case 10150:
            v34 = @"RAP_PLACE_DETAILS";
            break;
          case 10151:
            v34 = @"RAP_SATELLITE_IMAGE_OUTDATED";
            break;
          case 10152:
            v34 = @"RAP_SATELLITE_IMAGE_QUALITY";
            break;
          case 10153:
            v34 = @"RAP_SELECT_LABEL";
            break;
          case 10154:
            v34 = @"RAP_SELECT_ROUTE";
            break;
          case 10155:
            v34 = @"RAP_CLAIM_BUSINESS";
            break;
          case 10156:
            v34 = @"RAP_BRAND_DETAILS";
            break;
          case 10157:
            v34 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";
            break;
          case 10158:
            v34 = @"RAP_LOOK_AROUND_LABELS_STREET";
            break;
          case 10159:
            v34 = @"RAP_LOOK_AROUND_BLURRING";
            break;
          case 10160:
            v34 = @"RAP_LOOK_AROUND_REMOVE_HOME";
            break;
          case 10161:
            v34 = @"RAP_LOOK_AROUND_LABELS_STORE";
            break;
          case 10162:
            v34 = @"RAP_LOOK_AROUND_PRIVACY";
            break;
          case 10163:
            v34 = @"RAP_INCORRECT_HOURS";
            break;
          case 10164:
            v34 = @"RAP_INCORRECT_ADDRESS";
            break;
          case 10165:
            v34 = @"RAP_EDIT_PLACE_DETAILS";
            break;
          case 10166:
            v34 = @"RAP_EDIT_PLACE_NAME";
            break;
          case 10167:
            v34 = @"RAP_EDIT_ADDRESS";
            break;
          case 10168:
            v34 = @"RAP_ADD_CATEGORY";
            break;
          case 10169:
            v34 = @"RAP_REMOVE_CATEGORY";
            break;
          case 10170:
            v34 = @"RAP_DESELECT_CATEGORY";
            break;
          case 10171:
            v34 = @"RAP_ADD_HOURS";
            break;
          case 10172:
            v34 = @"RAP_REMOVE_HOURS";
            break;
          case 10173:
            v34 = @"RAP_TAP_DAY_OF_WEEK";
            break;
          case 10174:
            v34 = @"RAP_TAP_24_HOURS_BUTTON";
            break;
          case 10175:
            v34 = @"RAP_TAP_OPEN_TIME";
            break;
          case 10176:
            v34 = @"RAP_TAP_CLOSED_TIME";
            break;
          case 10177:
            v34 = @"RAP_TAP_TEMPORARY_CLOSURE";
            break;
          case 10178:
            v34 = @"RAP_TAP_PERMANENTLY_CLOSED";
            break;
          case 10179:
            v34 = @"RAP_EDIT_WEBSITE";
            break;
          case 10180:
            v34 = @"RAP_EDIT_PHONE_NUMBER";
            break;
          case 10181:
            v34 = @"RAP_TAP_ACCEPTS_APPLE_PAY";
            break;
          case 10182:
            v34 = @"RAP_ADD_COMMENTS";
            break;
          case 10183:
            v34 = @"RAP_EDIT_LOCATION";
            break;
          case 10184:
            v34 = @"RAP_VIEW_LOCATION";
            break;
          case 10185:
            v34 = @"RAP_ZOOM_IN";
            break;
          case 10186:
            v34 = @"RAP_ZOOM_OUT";
            break;
          case 10187:
            v34 = @"RAP_VIEW_ENTRY_POINTS";
            break;
          case 10188:
            v34 = @"RAP_EDIT_EXISTING_ENTRY_POINT";
            break;
          case 10189:
            v34 = @"RAP_ADD_NEW_ENTRY_POINT";
            break;
          case 10190:
            v34 = @"RAP_REMOVE_ENTRY_POINT";
            break;
          case 10191:
            v34 = @"RAP_SELECT_ENTRY_POINT_TYPE";
            break;
          default:
            switch(v33)
            {
              case 9001:
                v41 = @"TAP_WIDGET_ITEM";
                goto LABEL_1524;
              case 9002:
                v41 = @"DISPLAY_NOTIFICATION";
                goto LABEL_1524;
              case 9003:
                v41 = @"TAP_NOTIFICATION";
                goto LABEL_1524;
              case 9004:
                v41 = @"EXPAND_NOTIFICATION";
                goto LABEL_1524;
              case 9005:
                v34 = @"DISMISS_NOTIFICATION";
                goto LABEL_1397;
              case 9006:
                v34 = @"OPEN_SEARCH";
                goto LABEL_1397;
              case 9007:
                v34 = @"OPEN_PAN_VIEW";
                goto LABEL_1397;
              case 9008:
                v34 = @"PAN_LEFT";
                goto LABEL_1397;
              case 9009:
                v34 = @"PAN_UP";
                goto LABEL_1397;
              case 9010:
              case 9041:
              case 9042:
              case 9043:
              case 9044:
              case 9045:
              case 9046:
              case 9047:
              case 9048:
              case 9049:
              case 9050:
              case 9051:
              case 9052:
              case 9053:
              case 9054:
              case 9055:
              case 9056:
              case 9057:
              case 9058:
              case 9059:
              case 9060:
              case 9061:
              case 9062:
              case 9063:
              case 9064:
              case 9065:
              case 9066:
              case 9067:
              case 9068:
              case 9069:
              case 9070:
              case 9071:
              case 9072:
              case 9073:
              case 9074:
              case 9075:
              case 9076:
              case 9077:
              case 9078:
              case 9079:
              case 9080:
              case 9081:
              case 9082:
              case 9083:
              case 9084:
              case 9085:
              case 9086:
              case 9087:
              case 9088:
              case 9089:
              case 9090:
              case 9091:
              case 9092:
              case 9093:
              case 9094:
              case 9095:
              case 9096:
              case 9097:
              case 9098:
              case 9099:
              case 9100:
                goto LABEL_213;
              case 9011:
                v34 = @"PAN_DOWN";
                goto LABEL_1397;
              case 9012:
                v34 = @"TAP_RECENT_DESTINATIONS";
                goto LABEL_1397;
              case 9013:
                v34 = @"OPEN_DESTINATIONS";
                goto LABEL_1397;
              case 9014:
                v34 = @"OPEN_FAVORITES";
                goto LABEL_1397;
              case 9015:
                v34 = @"VIEW_NAV_OPTIONS";
                goto LABEL_1397;
              case 9016:
                v34 = @"START_NAV_NO_GUIDANCE";
                goto LABEL_1397;
              case 9017:
                v34 = @"TURN_OFF_GUIDANCE";
                goto LABEL_1397;
              case 9018:
                v34 = @"TURN_ON_GUIDANCE";
                goto LABEL_1397;
              case 9019:
                v34 = @"OPEN_KEYBOARD";
                goto LABEL_1397;
              case 9020:
                v34 = @"SHARE_DESTINATION";
                goto LABEL_1397;
              case 9021:
                v34 = @"START_NAV_AUTOMATED";
                goto LABEL_1397;
              case 9022:
                v34 = @"SHARE_ETA";
                goto LABEL_1397;
              case 9023:
                v34 = @"SELECT_GROUP";
                goto LABEL_1397;
              case 9024:
                v34 = @"DESELECT_GROUP";
                goto LABEL_1397;
              case 9025:
                v34 = @"SELECT_CONTACT";
                goto LABEL_1397;
              case 9026:
                v34 = @"DESELECT_CONTACT";
                goto LABEL_1397;
              case 9027:
                v34 = @"TAP_VIEW_CONTACTS";
                goto LABEL_1397;
              case 9028:
                v34 = @"STOP_RECEIVING_ETA";
                goto LABEL_1397;
              case 9029:
                v34 = @"DISPLAY_ANNOUNCEMENT";
                goto LABEL_1397;
              case 9030:
                v34 = @"TAP_ANNOUNCEMENT";
                goto LABEL_1397;
              case 9031:
                v34 = @"DISPLAY_CYCLING_NOTIFICATION";
                goto LABEL_1397;
              case 9032:
                v34 = @"TAP_CYCLING_NOTIFICATION";
                goto LABEL_1397;
              case 9033:
                v34 = @"SHARE_CYCLING_ETA";
                goto LABEL_1397;
              case 9034:
                v34 = @"MANAGE_NOTIFICATIONS";
                goto LABEL_1397;
              case 9035:
                v34 = @"PUNCH_OUT_PUBLISHER_REVIEW";
                goto LABEL_1397;
              case 9036:
                v34 = @"SCROLL_FORWARD";
                goto LABEL_1397;
              case 9037:
                v34 = @"SCROLL_BACKWARD";
                goto LABEL_1397;
              case 9038:
                v34 = @"SHOW_ALL_CURATED_COLLECTIONS";
                goto LABEL_1397;
              case 9039:
                v34 = @"TAP_LESS";
                goto LABEL_1397;
              case 9040:
                v34 = @"TAP_MORE";
                goto LABEL_1397;
              case 9101:
                v34 = @"DISPLAY_ADD_HOME_AND_WORK";
                goto LABEL_1397;
              case 9102:
                v34 = @"TAP_ADD_HOME_AND_WORK";
                goto LABEL_1397;
              case 9103:
                v34 = @"DISPLAY_ALLOW_FREQUENTS";
                goto LABEL_1397;
              case 9104:
                v34 = @"TAP_ALLOW_FREQUENTS";
                goto LABEL_1397;
              case 9105:
                v34 = @"DISPLAY_ALLOW_LOCATION";
                goto LABEL_1397;
              case 9106:
                v34 = @"TAP_ALLOW_LOCATION";
                goto LABEL_1397;
              default:
                switch(v33)
                {
                  case 11001:
                    v34 = @"EXIT_MAPS_LOWER_WRIST";
                    goto LABEL_1397;
                  case 11002:
                    v34 = @"TASK_READY";
                    goto LABEL_1397;
                  case 11003:
                    v34 = @"TAP_SEARCH";
                    goto LABEL_1397;
                  case 11004:
                    v34 = @"TAP_MY_LOCATION";
                    goto LABEL_1397;
                  case 11005:
                    v34 = @"SHOW_NEARBY";
                    goto LABEL_1397;
                  case 11006:
                    v34 = @"TAP_NEARBY";
                    goto LABEL_1397;
                  case 11007:
                    v34 = @"TAP_PROACTIVE";
                    goto LABEL_1397;
                  case 11008:
                    v34 = @"FORCE_PRESS";
                    goto LABEL_1397;
                  case 11009:
                    v34 = @"TAP_CONTACTS";
                    goto LABEL_1397;
                  case 11010:
                    v34 = @"TAP_TRANSIT";
                    goto LABEL_1397;
                  case 11011:
                    v34 = @"TAP_DICTATION";
                    goto LABEL_1397;
                  case 11012:
                    v34 = @"GET_DIRECTIONS_DRIVING";
                    goto LABEL_1397;
                  case 11013:
                    v34 = @"GET_DIRECTIONS_WALKING";
                    goto LABEL_1397;
                  case 11014:
                    v34 = @"GET_DIRECTIONS_TRANSIT";
                    goto LABEL_1397;
                  case 11015:
                    v34 = @"OPEN_STANDARD_MAP";
                    goto LABEL_1397;
                  case 11016:
                    v34 = @"OPEN_TRANSIT_MAP";
                    goto LABEL_1397;
                  case 11017:
                    v34 = @"START_NAV_AUTO";
                    goto LABEL_1397;
                  case 11018:
                    v34 = @"TAP_RECENT";
                    goto LABEL_1397;
                  case 11019:
                    v34 = @"TAP_FAVORITE";
                    goto LABEL_1397;
                  case 11020:
                    v34 = @"TAP_SCRIBBLE";
                    goto LABEL_1397;
                  case 11021:
                    v34 = @"TAP_VIEW_MAP";
                    goto LABEL_1397;
                  case 11022:
                    v34 = @"TAP_VIEW_TBT";
                    goto LABEL_1397;
                  case 11023:
                    v34 = @"VIEW_ROUTE_INFO";
                    goto LABEL_1397;
                  case 11024:
                    v34 = @"NAV_UNMUTE";
                    goto LABEL_1397;
                  case 11025:
                    v34 = @"NAV_MUTE";
                    goto LABEL_1397;
                  case 11026:
                    v34 = @"GET_DIRECTIONS_CYCLING";
                    goto LABEL_1397;
                  case 11027:
                    v34 = @"TAP_SEARCH_HOME";
                    goto LABEL_1397;
                  case 11028:
                    v34 = @"ROUTE_PAUSED_ON_WATCH";
                    goto LABEL_1397;
                  case 11029:
                    v34 = @"NEXT_STOP_TAPPED_ON_WATCH";
                    goto LABEL_1397;
                  default:
                    goto LABEL_213;
                }
            }
        }

        goto LABEL_1397;
      }

      if (v33 > 16000)
      {
        switch(v33)
        {
          case 17001:
            v34 = @"START_DRAG";
            goto LABEL_1397;
          case 17002:
            v34 = @"CANCEL_DRAG";
            goto LABEL_1397;
          case 17003:
            v34 = @"COMPLETE_DRAG";
            goto LABEL_1397;
          case 17004:
            v34 = @"START_DROP";
            goto LABEL_1397;
          case 17005:
            v34 = @"CANCEL_DROP";
            goto LABEL_1397;
          case 17006:
            v34 = @"COMPLETE_DROP";
            goto LABEL_1397;
          case 17007:
            v34 = @"ANNOTATION_SELECT";
            goto LABEL_1397;
          case 17008:
            v34 = @"ANNOTATION_SELECT_AUTO";
            goto LABEL_1397;
          case 17009:
            v34 = @"ANNOTATION_SELECT_LIST";
            goto LABEL_1397;
          case 17010:
            v34 = @"BROWSE_TOP_CATEGORY_DISPLAYED";
            goto LABEL_1397;
          case 17011:
            v34 = @"CALLOUT_FLYOVER_TOUR";
            goto LABEL_1397;
          case 17012:
            v34 = @"CALLOUT_INFO";
            goto LABEL_1397;
          case 17013:
            v34 = @"CALLOUT_NAV_TRANSIT";
            goto LABEL_1397;
          case 17014:
            v34 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";
            goto LABEL_1397;
          case 17015:
            v34 = @"CALLOUT_VIEW_TRANSIT_LINE";
            goto LABEL_1397;
          case 17016:
            v34 = @"DIRECTIONS_SELECT";
            goto LABEL_1397;
          case 17017:
            v34 = @"DIRECTIONS_TRANSIT_CUSTOM";
            goto LABEL_1397;
          case 17018:
            v34 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";
            goto LABEL_1397;
          case 17019:
            v34 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";
            goto LABEL_1397;
          case 17020:
            v34 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";
            goto LABEL_1397;
          case 17021:
            v34 = @"DIRECTIONS_TRANSIT_LATER";
            goto LABEL_1397;
          case 17022:
            v34 = @"DIRECTIONS_TRANSIT_NOW";
            goto LABEL_1397;
          case 17023:
            v34 = @"FLYOVER_NOTIFICATION_DISMISS";
            goto LABEL_1397;
          case 17024:
            v34 = @"FLYOVER_NOTIFICATION_START";
            goto LABEL_1397;
          case 17025:
            v34 = @"FLYOVER_TOUR_COMPLETED";
            goto LABEL_1397;
          case 17026:
            v34 = @"FLYOVER_TOUR_END";
            goto LABEL_1397;
          case 17027:
            v34 = @"FLYOVER_TOUR_NOTIFICATION";
            goto LABEL_1397;
          case 17028:
            v34 = @"FLYOVER_TOUR_START";
            goto LABEL_1397;
          case 17029:
            v34 = @"INFO_BOOKMARKS";
            goto LABEL_1397;
          case 17030:
            v34 = @"INFO_CARD_DETACHED";
            goto LABEL_1397;
          case 17031:
            v34 = @"INFO_CONTACTS";
            goto LABEL_1397;
          case 17032:
            v34 = @"INFO_DIRECTIONS";
            goto LABEL_1397;
          case 17033:
            v34 = @"INFO_DIRECTIONS_FROM";
            goto LABEL_1397;
          case 17034:
            v34 = @"INFO_DIRECTIONS_TO";
            goto LABEL_1397;
          case 17035:
            v34 = @"INFO_DISMISS";
            goto LABEL_1397;
          case 17036:
            v34 = @"INFO_INFO";
            goto LABEL_1397;
          case 17037:
            v34 = @"INFO_PHOTOS";
            goto LABEL_1397;
          case 17038:
            v34 = @"INFO_REVIEWS";
            goto LABEL_1397;
          case 17039:
            v34 = @"INFO_SHARE";
            goto LABEL_1397;
          case 17040:
            v34 = @"INFO_SHARE_AIRDROP";
            goto LABEL_1397;
          case 17041:
            v34 = @"INFO_SHARE_FACEBOOK";
            goto LABEL_1397;
          case 17042:
            v34 = @"INFO_SHARE_MAIL";
            goto LABEL_1397;
          case 17043:
            v34 = @"INFO_SHARE_MESSAGE";
            goto LABEL_1397;
          case 17044:
            v34 = @"INFO_SHARE_TENCENTWEIBO";
            goto LABEL_1397;
          case 17045:
            v34 = @"INFO_SHARE_WEIBO";
            goto LABEL_1397;
          case 17046:
            v34 = @"INFO_YELP";
            goto LABEL_1397;
          case 17047:
            v34 = @"MAPS_APP_LAUNCH";
            goto LABEL_1397;
          case 17048:
            v34 = @"MAP_3D_OFF";
            goto LABEL_1397;
          case 17049:
            v34 = @"MAP_3D_ON";
            goto LABEL_1397;
          case 17050:
            v34 = @"MAP_OPTIONS_DROP_PIN";
            goto LABEL_1397;
          case 17051:
            v34 = @"MAP_OPTIONS_HYBRID";
            goto LABEL_1397;
          case 17052:
            v34 = @"MAP_OPTIONS_PRINT";
            goto LABEL_1397;
          case 17053:
            v34 = @"MAP_OPTIONS_REMOVE_PIN";
            goto LABEL_1397;
          case 17054:
            v34 = @"MAP_OPTIONS_SATELLITE";
            goto LABEL_1397;
          case 17055:
            v34 = @"MAP_OPTIONS_STANDARD";
            goto LABEL_1397;
          case 17056:
            v34 = @"MAP_OPTIONS_TRAFFIC_HIDE";
            goto LABEL_1397;
          case 17057:
            v34 = @"MAP_OPTIONS_TRAFFIC_SHOW";
            goto LABEL_1397;
          case 17058:
            v34 = @"MAP_OPTIONS_TRANSIT";
            goto LABEL_1397;
          case 17059:
            v34 = @"MAP_TAP_FLYOVER_CITY";
            goto LABEL_1397;
          case 17060:
            v34 = @"MAP_TAP_LINE";
            goto LABEL_1397;
          case 17061:
            v34 = @"MAP_TAP_POI_TRANSIT";
            goto LABEL_1397;
          case 17062:
            v34 = @"MAP_TAP_TRAFFIC_INCIDENT";
            goto LABEL_1397;
          case 17063:
            v34 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";
            goto LABEL_1397;
          case 17064:
            v34 = @"MAP_USER_TRACKING_OFF";
            goto LABEL_1397;
          case 17065:
            v34 = @"MAP_USER_TRACKING_ON";
            goto LABEL_1397;
          case 17066:
            v34 = @"MAP_USER_TRACKING_WITH_HEADING_ON";
            goto LABEL_1397;
          case 17067:
            v34 = @"NAV_CLEAR";
            goto LABEL_1397;
          case 17068:
            v34 = @"NAV_LIST";
            goto LABEL_1397;
          case 17069:
            v34 = @"NAV_ROUTE_STEP_NEXT";
            goto LABEL_1397;
          case 17070:
            v34 = @"NAV_ROUTE_STEP_PREV";
            goto LABEL_1397;
          case 17071:
            v34 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";
            goto LABEL_1397;
          case 17072:
            v34 = @"ORB_DISPLAY_MENU";
            goto LABEL_1397;
          case 17073:
            v34 = @"ORB_MENU_CALL";
            goto LABEL_1397;
          case 17074:
            v34 = @"ORB_MENU_DIRECTIONS";
            goto LABEL_1397;
          case 17075:
            v34 = @"ORB_MENU_DISMISS";
            goto LABEL_1397;
          case 17076:
            v34 = @"ORB_MENU_SHARE";
            goto LABEL_1397;
          case 17077:
            v34 = @"ORB_MENU_SHOW_PLACECARD";
            goto LABEL_1397;
          case 17078:
            v34 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";
            goto LABEL_1397;
          case 17079:
            v34 = @"ORB_MENU_URL";
            goto LABEL_1397;
          case 17080:
            v34 = @"ORB_PRESS";
            goto LABEL_1397;
          case 17081:
            v34 = @"ORB_SPRINGBOARD_MARK_LOCATION";
            goto LABEL_1397;
          case 17082:
            v34 = @"ORB_SPRINGBOARD_SEARCH";
            goto LABEL_1397;
          case 17083:
            v34 = @"ORB_SPRINGBOARD_SHARE_LOCATION";
            goto LABEL_1397;
          case 17084:
            v34 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";
            goto LABEL_1397;
          case 17085:
            v34 = @"RAP_PERMISSION_CANCEL";
            goto LABEL_1397;
          case 17086:
            v34 = @"RAP_PERMISSION_EMAIL_NA";
            goto LABEL_1397;
          case 17087:
            v34 = @"RAP_PERMISSION_EMAIL_OK";
            goto LABEL_1397;
          case 17088:
            v34 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";
            goto LABEL_1397;
          case 17089:
            v34 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";
            goto LABEL_1397;
          case 17090:
            v34 = @"RAP_PERMISSION_OK";
            goto LABEL_1397;
          case 17091:
            v34 = @"SEARCH_BEGIN";
            goto LABEL_1397;
          case 17092:
            v34 = @"SEARCH_CANCEL";
            goto LABEL_1397;
          case 17093:
            v34 = @"SEARCH_SELECT";
            goto LABEL_1397;
          case 17094:
            v34 = @"TRANSIT_LINE_SELECTION_DISMISS";
            goto LABEL_1397;
          case 17095:
            v34 = @"TRANSIT_LINE_SELECTION_VIEW";
            goto LABEL_1397;
          case 17096:
            v34 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";
            goto LABEL_1397;
          case 17097:
            v34 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";
            goto LABEL_1397;
          case 17098:
            v34 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";
            goto LABEL_1397;
          case 17099:
            v34 = @"UNKNOWN_ACTION";
            goto LABEL_1397;
          case 17100:
            v34 = @"INFO_SHARE_TWITTER";
            goto LABEL_1397;
          case 17101:
            v34 = @"INFO_TAP_POPULAR_APP_NEARBY";
            goto LABEL_1397;
          case 17102:
            v34 = @"INFO_DIRECTIONS_WALK";
            goto LABEL_1397;
          case 17103:
            v34 = @"INFO_DIRECTIONS_TRANSIT";
            goto LABEL_1397;
          case 17104:
            v34 = @"INFO_DIRECTIONS_DRIVE";
            goto LABEL_1397;
          case 17105:
            v34 = @"INFO_REPORT_A_PROBLEM";
            goto LABEL_1397;
          case 17106:
            v34 = @"CALLOUT_NAV";
            goto LABEL_1397;
          case 17107:
            v34 = @"RAP_PERMISSION_EMAIL_CANCEL";
            goto LABEL_1397;
          case 17108:
            v34 = @"MAP_TAP_POI";
            goto LABEL_1397;
          default:
            if (v33 == 16001)
            {
              v34 = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (v33 != 90010)
              {
                goto LABEL_213;
              }

              v34 = @"PAN_RIGHT";
            }

            break;
        }

        goto LABEL_1397;
      }

      if (v33 <= 13004)
      {
        if (v33 <= 12007)
        {
          if (v33 <= 12003)
          {
            if (v33 == 12001)
            {
              v34 = @"VIEW_MORE_OPTIONS";
            }

            else if (v33 == 12002)
            {
              v34 = @"SELECT_TIME";
            }

            else
            {
              v34 = @"SHOW_NEXT_AVAILABLE";
            }
          }

          else if (v33 > 12005)
          {
            if (v33 == 12006)
            {
              v34 = @"EDIT_BOOKING";
            }

            else
            {
              v34 = @"EDIT_PHONE";
            }
          }

          else if (v33 == 12004)
          {
            v34 = @"DECREASE_TABLE_SIZE";
          }

          else
          {
            v34 = @"INCREASE_TABLE_SIZE";
          }

          goto LABEL_1397;
        }

        if (v33 > 13000)
        {
          if (v33 > 13002)
          {
            if (v33 == 13003)
            {
              v34 = @"SELECT_LABEL";
            }

            else
            {
              v34 = @"DELETE_ADDRESS";
            }
          }

          else if (v33 == 13001)
          {
            v34 = @"SELECT_ADDRESS";
          }

          else
          {
            v34 = @"ADD_ADDRESS";
          }

          goto LABEL_1397;
        }

        switch(v33)
        {
          case 0x2EE8:
            v34 = @"ADD_SPECIAL_REQUEST";
            goto LABEL_1397;
          case 0x2EE9:
            v34 = @"CHANGE_RESERVATION";
            goto LABEL_1397;
          case 0x2EEA:
            v34 = @"LEARN_MORE";
            goto LABEL_1397;
        }
      }

      else if (v33 <= 14004)
      {
        if (v33 > 14000)
        {
          if (v33 > 14002)
          {
            if (v33 == 14003)
            {
              v34 = @"BOOK_RIDE";
            }

            else
            {
              v34 = @"REQUEST_RIDE";
            }
          }

          else if (v33 == 14001)
          {
            v34 = @"VIEW_APP";
          }

          else
          {
            v34 = @"ENABLE";
          }

          goto LABEL_1397;
        }

        switch(v33)
        {
          case 0x32CD:
            v34 = @"EDIT_ITEMS";
            goto LABEL_1397;
          case 0x32CE:
            v34 = @"RAP_FAVORITES";
            goto LABEL_1397;
          case 0x32CF:
            v34 = @"SORT_LIST_ITEM";
            goto LABEL_1397;
        }
      }

      else
      {
        if (v33 <= 14008)
        {
          if (v33 > 14006)
          {
            if (v33 == 14007)
            {
              v34 = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              v34 = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (v33 == 14005)
          {
            v34 = @"CONTACT_DRIVER";
          }

          else
          {
            v34 = @"CHANGE_PAYMENT";
          }

          goto LABEL_1397;
        }

        if (v33 > 15001)
        {
          if (v33 == 15002)
          {
            v34 = @"ORB_POP";
            goto LABEL_1397;
          }

          if (v33 == 15003)
          {
            v34 = @"ORB_DISMISS";
            goto LABEL_1397;
          }
        }

        else
        {
          if (v33 == 14009)
          {
            v34 = @"SUBMIT_TRIP_FEEDBACK";
            goto LABEL_1397;
          }

          if (v33 == 15001)
          {
            v34 = @"ORB_PEEK";
LABEL_1397:
            log = v34;
            goto LABEL_1525;
          }
        }
      }

LABEL_213:
      log = [NSString stringWithFormat:@"(unknown: %i)", v33];
      goto LABEL_1525;
    }

    if (v33 <= 6002)
    {
      if (v33 > 4001)
      {
        if (v33 <= 4004)
        {
          if (v33 == 4002)
          {
            v41 = @"TAP_HEADING_ON";
          }

          else if (v33 == 4003)
          {
            v41 = @"TAP_HEADING_OFF";
          }

          else
          {
            v41 = @"PUCK_DRIFT";
          }
        }

        else
        {
          switch(v33)
          {
            case 5001:
              v41 = @"SHOW_MAPS_SETTINGS";
              goto LABEL_1524;
            case 5002:
              v41 = @"TAP_STANDARD_MODE";
              goto LABEL_1524;
            case 5003:
              v41 = @"TAP_TRANSIT_MODE";
              goto LABEL_1524;
            case 5004:
              v41 = @"TAP_SATELLITE_MODE";
              goto LABEL_1524;
            case 5005:
              v41 = @"SWITCH_ON_TRAFFIC";
              goto LABEL_1524;
            case 5006:
              v41 = @"SWITCH_OFF_TRAFFIC";
              goto LABEL_1524;
            case 5007:
              v41 = @"SWITCH_ON_LABELS";
              goto LABEL_1524;
            case 5008:
              v41 = @"SWITCH_OFF_LABELS";
              goto LABEL_1524;
            case 5009:
              v41 = @"SWITCH_ON_3D_MAP";
              goto LABEL_1524;
            case 5010:
              v41 = @"SWITCH_OFF_3D_MAP";
              goto LABEL_1524;
            case 5011:
              v41 = @"SWITCH_ON_WEATHER";
              goto LABEL_1524;
            case 5012:
              v41 = @"SWITCH_OFF_WEATHER";
              goto LABEL_1524;
            case 5013:
              v41 = @"REPORT_A_PROBLEM";
              goto LABEL_1524;
            case 5014:
              v41 = @"ADD_PLACE";
              goto LABEL_1524;
            case 5015:
              goto LABEL_213;
            case 5016:
              v41 = @"TAP_PREFERENCES";
              goto LABEL_1524;
            case 5017:
              v41 = @"SWITCH_ON_TOLLS";
              goto LABEL_1524;
            case 5018:
              v41 = @"SWITCH_OFF_TOLLS";
              goto LABEL_1524;
            case 5019:
              v41 = @"SWITCH_ON_HIGHWAYS";
              goto LABEL_1524;
            case 5020:
              v41 = @"SWITCH_OFF_HIGHWAYS";
              goto LABEL_1524;
            case 5021:
              v41 = @"SWITCH_ON_HEADING";
              goto LABEL_1524;
            case 5022:
              v41 = @"SWITCH_OFF_HEADING";
              goto LABEL_1524;
            case 5023:
              v41 = @"SWITCH_ON_SPEED_LIMIT";
              goto LABEL_1524;
            case 5024:
              v41 = @"SWITCH_OFF_SPEED_LIMIT";
              goto LABEL_1524;
            case 5025:
              v41 = @"ELECT_DRIVING_MODE";
              goto LABEL_1524;
            case 5026:
              v41 = @"ELECT_WALKING_MODE";
              goto LABEL_1524;
            case 5027:
              v41 = @"ELECT_TRANSIT_MODE";
              goto LABEL_1524;
            case 5028:
              v41 = @"ELECT_RIDESHARE_MODE";
              goto LABEL_1524;
            case 5029:
              v41 = @"SWITCH_ON_FIND_MY_CAR";
              goto LABEL_1524;
            case 5030:
              v41 = @"SWITCH_OFF_FIND_MY_CAR";
              goto LABEL_1524;
            case 5031:
              v41 = @"MARK_MY_LOCATION";
              goto LABEL_1524;
            case 5032:
              v41 = @"TAP_HYBRID_MODE";
              goto LABEL_1524;
            case 5033:
              v41 = @"CHECK_AVOID_BUSY_ROADS";
              goto LABEL_1524;
            case 5034:
              v41 = @"UNCHECK_AVOID_BUSY_ROADS";
              goto LABEL_1524;
            case 5035:
              v41 = @"CHECK_AVOID_HILLS";
              goto LABEL_1524;
            case 5036:
              v41 = @"UNCHECK_AVOID_HILLS";
              goto LABEL_1524;
            case 5037:
              v41 = @"CHECK_AVOID_STAIRS";
              goto LABEL_1524;
            case 5038:
              v41 = @"UNCHECK_AVOID_STAIRS";
              goto LABEL_1524;
            case 5039:
              v41 = @"ELECT_CYCLING_MODE";
              goto LABEL_1524;
            default:
              if (v33 == 4005)
              {
                v41 = @"PUCK_SNAP";
              }

              else
              {
                if (v33 != 4006)
                {
                  goto LABEL_213;
                }

                v41 = @"SELECT_FLOOR";
              }

              break;
          }
        }
      }

      else
      {
        switch(v33)
        {
          case 3001:
            v41 = @"START_NAV";
            goto LABEL_1524;
          case 3002:
            v41 = @"END_NAV";
            goto LABEL_1524;
          case 3003:
            v41 = @"OPEN_NAV_AUDIO_SETTINGS";
            goto LABEL_1524;
          case 3004:
            v41 = @"VIEW_DETAILS";
            goto LABEL_1524;
          case 3005:
            v41 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";
            goto LABEL_1524;
          case 3006:
            v41 = @"OPEN_ROUTING_EDITOR";
            goto LABEL_1524;
          case 3007:
            v41 = @"EDIT_ORIGIN";
            goto LABEL_1524;
          case 3008:
            v41 = @"EDIT_DESTINATION";
            goto LABEL_1524;
          case 3009:
            v41 = @"SWAP_ORIGIN_DESTINATION";
            goto LABEL_1524;
          case 3010:
            v41 = @"OPEN_MORE_ROUTES";
            goto LABEL_1524;
          case 3011:
            v41 = @"SELECT_ROUTING_TYPE_DRIVING";
            goto LABEL_1524;
          case 3012:
            v41 = @"SELECT_ROUTING_TYPE_WALKING";
            goto LABEL_1524;
          case 3013:
            v41 = @"SELECT_ROUTING_TYPE_TRANSIT";
            goto LABEL_1524;
          case 3014:
            v41 = @"SELECT_ROUTING_TYPE_RIDESHARE";
            goto LABEL_1524;
          case 3015:
            v41 = @"SELECT_ROUTE";
            goto LABEL_1524;
          case 3016:
            v41 = @"COLLAPSE_STEP_DETAILS_WALK";
            goto LABEL_1524;
          case 3017:
            v41 = @"EXPAND_STEP_DETAILS_WALK";
            goto LABEL_1524;
          case 3018:
            v41 = @"COLLAPSE_STEP_DETAILS_TRANSIT";
            goto LABEL_1524;
          case 3019:
            v41 = @"EXPAND_STEP_DETAILS_TRANSIT";
            goto LABEL_1524;
          case 3020:
            v41 = @"UNCHECK_BUS";
            goto LABEL_1524;
          case 3021:
            v41 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";
            goto LABEL_1524;
          case 3022:
            v41 = @"UNCHECK_COMMUTER_RAIL";
            goto LABEL_1524;
          case 3023:
            v41 = @"UNCHECK_FERRY";
            goto LABEL_1524;
          case 3024:
            v41 = @"CHECK_BUS";
            goto LABEL_1524;
          case 3025:
            v41 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";
            goto LABEL_1524;
          case 3026:
            v41 = @"CHECK_COMMUTER_RAIL";
            goto LABEL_1524;
          case 3027:
            v41 = @"CHECK_FERRY";
            goto LABEL_1524;
          case 3028:
            v41 = @"SELECT_LEAVE_AT";
            goto LABEL_1524;
          case 3029:
            v41 = @"SELECT_ARRIVE_BY";
            goto LABEL_1524;
          case 3030:
            v41 = @"SELECT_LEAVE_NOW";
            goto LABEL_1524;
          case 3031:
            v41 = @"SELECT_DATE_TIME";
            goto LABEL_1524;
          case 3032:
            v41 = @"SWITCH_ON_IC_FARES";
            goto LABEL_1524;
          case 3033:
            v41 = @"SWITCH_OFF_IC_FARES";
            goto LABEL_1524;
          case 3034:
            v41 = @"OPEN_ROUTE_OPTIONS_DATETIME";
            goto LABEL_1524;
          case 3035:
            v41 = @"OPEN_ROUTE_OPTIONS_TRANSIT";
            goto LABEL_1524;
          case 3036:
            v41 = @"OPEN_ROUTE_OPTIONS_DRIVING";
            goto LABEL_1524;
          case 3037:
            v41 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";
            goto LABEL_1524;
          case 3038:
            v41 = @"REVEAL_FROM_ROUTING";
            goto LABEL_1524;
          case 3039:
            v41 = @"DISPLAY_ROUTES";
            goto LABEL_1524;
          case 3040:
            v41 = @"CHECK_RECOMMENDED_ROUTES";
            goto LABEL_1524;
          case 3041:
            v41 = @"UNCHECK_RECOMMENDED_ROUTES";
            goto LABEL_1524;
          case 3042:
            v41 = @"CHECK_FASTER_TRIPS";
            goto LABEL_1524;
          case 3043:
            v41 = @"UNCHECK_FASTER_TRIPS";
            goto LABEL_1524;
          case 3044:
            v41 = @"CHECK_FEWER_TRANSFERS";
            goto LABEL_1524;
          case 3045:
            v41 = @"UNCHECK_FEWER_TRANSFERS";
            goto LABEL_1524;
          case 3046:
            v41 = @"CHECK_LESS_WALKING";
            goto LABEL_1524;
          case 3047:
            v41 = @"UNCHECK_LESS_WALKING";
            goto LABEL_1524;
          case 3048:
            v41 = @"OPEN_ROUTE_OPTIONS_CYCLING";
            goto LABEL_1524;
          case 3049:
            v41 = @"TAP_MORE_ROUTES";
            goto LABEL_1524;
          case 3050:
            v41 = @"OPEN_NAV_OVERVIEW";
            goto LABEL_1524;
          case 3051:
            v41 = @"RESUME_NAV_MANEUVER_VIEW";
            goto LABEL_1524;
          case 3052:
            v41 = @"SELECT_AUDIO_VOLUME_SILENT";
            goto LABEL_1524;
          case 3053:
            v41 = @"SELECT_AUDIO_VOLUME_LOW";
            goto LABEL_1524;
          case 3054:
            v41 = @"SELECT_AUDIO_VOLUME_NORMAL";
            goto LABEL_1524;
          case 3055:
            v41 = @"SELECT_AUDIO_VOLUME_LOUD";
            goto LABEL_1524;
          case 3056:
            v41 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";
            goto LABEL_1524;
          case 3057:
            v41 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";
            goto LABEL_1524;
          case 3058:
            v41 = @"RESUME_PREV_NAV";
            goto LABEL_1524;
          case 3059:
            v41 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";
            goto LABEL_1524;
          case 3060:
            v41 = @"ACCEPT_REROUTE";
            goto LABEL_1524;
          case 3061:
            v41 = @"DISMISS_REROUTE";
            goto LABEL_1524;
          case 3062:
            v41 = @"ATTEMPT_END_NAV";
            goto LABEL_1524;
          case 3063:
            v41 = @"DISPLAY_BANNER";
            goto LABEL_1524;
          case 3064:
            v41 = @"VIEW_BANNER_DETAILS";
            goto LABEL_1524;
          case 3065:
            v41 = @"ENTER_GUIDANCE";
            goto LABEL_1524;
          case 3066:
            v41 = @"AUTO_ADVANCE_GUIDANCE";
            goto LABEL_1524;
          case 3067:
            v41 = @"TAP_OPEN_WALLET";
            goto LABEL_1524;
          case 3068:
            v41 = @"SELECT_VOICE_GUIDANCE_ALL";
            goto LABEL_1524;
          case 3069:
            v41 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";
            goto LABEL_1524;
          case 3070:
            v41 = @"SELECT_VOICE_GUIDANCE_NONE";
            goto LABEL_1524;
          case 3071:
            v41 = @"DISPLAY_CARD";
            goto LABEL_1524;
          case 3072:
            v41 = @"RENDER_ROUTE";
            goto LABEL_1524;
          case 3073:
            v41 = @"DISPLAY_JUNCTION_VIEW";
            goto LABEL_1524;
          case 3074:
            v41 = @"SELECT_DEPARTURE";
            goto LABEL_1524;
          case 3075:
            v41 = @"DISPLAY_AR_VIEW_RAISE_BANNER";
            goto LABEL_1524;
          case 3076:
            v41 = @"DEVICE_RAISE";
            goto LABEL_1524;
          case 3077:
            v41 = @"ENTER_AR_NAV_VIEW";
            goto LABEL_1524;
          case 3078:
            v41 = @"EXIT_AR_NAV_VIEW";
            goto LABEL_1524;
          case 3079:
            v41 = @"AR_CALIBRATION_START";
            goto LABEL_1524;
          case 3080:
            v41 = @"AR_CALIBRATION_FAILURE";
            goto LABEL_1524;
          case 3081:
            v41 = @"AR_CALIBRATION_SUCCESS";
            goto LABEL_1524;
          case 3082:
            v41 = @"DISPLAY_AR_NAV_ARROW";
            goto LABEL_1524;
          case 3083:
            v41 = @"DISPLAY_AR_NAV_TURN_AROUND";
            goto LABEL_1524;
          case 3084:
            v41 = @"DISPLAY_GO_OUTSIDE_BANNER";
            goto LABEL_1524;
          case 3085:
            v41 = @"DISPLAY_AR_DARKNESS_MESSAGE";
            goto LABEL_1524;
          case 3086:
            v41 = @"DISPLAY_AR_NAV_ENDPOINT";
            goto LABEL_1524;
          case 3087:
            v41 = @"DISPLAY_ADVISORY_BANNER";
            goto LABEL_1524;
          case 3088:
            v41 = @"TAP_SHOW_ADVISORY_DETAILS";
            goto LABEL_1524;
          default:
            if (v33 != 4001)
            {
              goto LABEL_213;
            }

            v41 = @"RECENTER_CURRENT_LOCATION";
            break;
        }
      }

      goto LABEL_1524;
    }

    if (v33 <= 7000)
    {
      switch(v33)
      {
        case 6003:
          v41 = @"GET_DIRECTIONS";
          goto LABEL_1524;
        case 6004:
          v41 = @"TAP_FLYOVER_TOUR";
          goto LABEL_1524;
        case 6005:
          v41 = @"REMOVE_PIN";
          goto LABEL_1524;
        case 6006:
          v41 = @"TAP_PHOTO";
          goto LABEL_1524;
        case 6007:
          v41 = @"TAP_MAPS_VIEW";
          goto LABEL_1524;
        case 6008:
          v41 = @"TAP_ADDRESS";
          goto LABEL_1524;
        case 6009:
          v41 = @"CALL";
          goto LABEL_1524;
        case 6010:
          v41 = @"TAP_URL";
          goto LABEL_1524;
        case 6011:
          v41 = @"SHOW_TODAY_HOURS";
          goto LABEL_1524;
        case 6012:
          v41 = @"SHOW_ALL_HOURS";
          goto LABEL_1524;
        case 6013:
          v41 = @"SHARE";
          goto LABEL_1524;
        case 6015:
          v41 = @"ADD_TO_FAVORITES";
          goto LABEL_1524;
        case 6016:
          v41 = @"ADD_CONTACT";
          goto LABEL_1524;
        case 6018:
          v41 = @"PUNCH_OUT_PHOTO";
          goto LABEL_1524;
        case 6019:
          v41 = @"PUNCH_OUT_USEFUL_TO_KNOW";
          goto LABEL_1524;
        case 6020:
          v41 = @"PUNCH_OUT_OPEN_APP";
          goto LABEL_1524;
        case 6021:
          v41 = @"PUNCH_OUT_SINGLE_REVIEW";
          goto LABEL_1524;
        case 6022:
          v41 = @"PUNCH_OUT_CHECK_IN";
          goto LABEL_1524;
        case 6023:
          v41 = @"PUNCH_OUT_MORE_INFO";
          goto LABEL_1524;
        case 6024:
          v41 = @"PUNCH_OUT_WRITE_REVIEW";
          goto LABEL_1524;
        case 6025:
          v41 = @"PUNCH_OUT_ADD_PHOTO";
          goto LABEL_1524;
        case 6026:
          v41 = @"TAP_GRID_VIEW";
          goto LABEL_1524;
        case 6027:
          v41 = @"EDIT_LOCATION";
          goto LABEL_1524;
        case 6029:
          v41 = @"ADD_PHOTO";
          goto LABEL_1524;
        case 6031:
          v41 = @"RETAKE";
          goto LABEL_1524;
        case 6032:
          v41 = @"ADD_NOTE";
          goto LABEL_1524;
        case 6033:
          v41 = @"REMOVE_CAR";
          goto LABEL_1524;
        case 6034:
          v41 = @"EDIT_NAME";
          goto LABEL_1524;
        case 6036:
          v41 = @"RESERVE_TABLE";
          goto LABEL_1524;
        case 6037:
          v41 = @"ADD_TO_QUEUE";
          goto LABEL_1524;
        case 6038:
          v41 = @"VIEW_BOOKED_TABLE";
          goto LABEL_1524;
        case 6039:
          v41 = @"VIEW_QUEUED_TABLE";
          goto LABEL_1524;
        case 6040:
          v41 = @"PUNCH_OUT_THIRD_PARTY_APP";
          goto LABEL_1524;
        case 6041:
          v41 = @"PUNCH_OUT_LEGAL_LINK";
          goto LABEL_1524;
        case 6042:
          v41 = @"TAP_PLACECARD_HEADER";
          goto LABEL_1524;
        case 6043:
          v41 = @"REMOVE_FROM_FAVORITES";
          goto LABEL_1524;
        case 6044:
          v41 = @"VIEW_CONTACT";
          goto LABEL_1524;
        case 6045:
          v41 = @"CHAT";
          goto LABEL_1524;
        case 6046:
          v41 = @"FIND_STORES";
          goto LABEL_1524;
        case 6047:
          v41 = @"TAP_PARENT";
          goto LABEL_1524;
        case 6048:
          v41 = @"SCROLL_LEFT_PHOTOS";
          goto LABEL_1524;
        case 6049:
          v41 = @"SCROLL_RIGHT_PHOTOS";
          goto LABEL_1524;
        case 6050:
          v41 = @"PUNCH_OUT";
          goto LABEL_1524;
        case 6051:
          v41 = @"TAP_ENTER_MUNIN";
          goto LABEL_1524;
        case 6052:
          v41 = @"TAP_RECOMMENDED_DISHES_PHOTO";
          goto LABEL_1524;
        case 6053:
          v41 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";
          goto LABEL_1524;
        case 6054:
          v41 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";
          goto LABEL_1524;
        case 6055:
          v41 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";
          goto LABEL_1524;
        case 6056:
          v41 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";
          goto LABEL_1524;
        case 6057:
          v41 = @"SHOW_LINKED_SERVICE_HOURS";
          goto LABEL_1524;
        case 6058:
          v41 = @"ENTER_LOOK_AROUND";
          goto LABEL_1524;
        case 6059:
          v41 = @"EXIT_LOOK_AROUND";
          goto LABEL_1524;
        case 6060:
          v41 = @"TAP_ENTER_LOOK_AROUND_VIEW";
          goto LABEL_1524;
        case 6061:
          v41 = @"TAP_ENTER_LOOK_AROUND_PIP";
          goto LABEL_1524;
        case 6062:
          v41 = @"EXPAND_LOOK_AROUND_VIEW";
          goto LABEL_1524;
        case 6063:
          v41 = @"CLOSE_LOOK_AROUND";
          goto LABEL_1524;
        case 6064:
          v41 = @"COLLAPSE_LOOK_AROUND_VIEW";
          goto LABEL_1524;
        case 6065:
          v41 = @"TAP_SHOW_ACTIONS";
          goto LABEL_1524;
        case 6066:
          v41 = @"TAP_HIDE_LABELS";
          goto LABEL_1524;
        case 6067:
          v41 = @"TAP_SHOW_LABELS";
          goto LABEL_1524;
        case 6068:
          v41 = @"TAP_SHOW_DETAILS";
          goto LABEL_1524;
        case 6069:
          v41 = @"PAN_LOOK_AROUND";
          goto LABEL_1524;
        case 6070:
          v41 = @"TAP_LOOK_AROUND_THUMBNAIL";
          goto LABEL_1524;
        case 6071:
          v41 = @"TAP_LANDMARK";
          goto LABEL_1524;
        case 6072:
          v41 = @"TAP_SCENE";
          goto LABEL_1524;
        case 6073:
          v41 = @"SHOW_LINKED_BUSINESS_HOURS";
          goto LABEL_1524;
        case 6074:
          v41 = @"TAP_PLACECARD_SHORTCUT";
          goto LABEL_1524;
        case 6075:
          v41 = @"SHOW_ALL_LOCATIONS_INSIDE";
          goto LABEL_1524;
        case 6076:
          v41 = @"SHOW_ALL_SIMILAR_LOCATIONS";
          goto LABEL_1524;
        case 6077:
          v41 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";
          goto LABEL_1524;
        case 6078:
          v41 = @"TAP_PARENT_LOCATION";
          goto LABEL_1524;
        case 6079:
          v41 = @"TAP_SIMILAR_LOCATION";
          goto LABEL_1524;
        case 6080:
          v41 = @"TAP_LOCATION_INSIDE";
          goto LABEL_1524;
        case 6081:
          v41 = @"TAP_LOCATION_AT_ADDRESS";
          goto LABEL_1524;
        case 6082:
          v41 = @"CLOSE_ROUTE_GENIUS";
          goto LABEL_1524;
        case 6083:
          v41 = @"LOAD_WEB_CONTENT";
          goto LABEL_1524;
        case 6084:
          v41 = @"SCROLL_FORWARD_WEB_CONTENT";
          goto LABEL_1524;
        case 6085:
          v41 = @"SCROLL_BACKWARD_WEB_CONTENT";
          goto LABEL_1524;
        case 6086:
          v41 = @"TAP_WEB_CONTENT";
          goto LABEL_1524;
        case 6087:
          v41 = @"SHOW_PHOTO_VIEWER";
          goto LABEL_1524;
        case 6088:
          v41 = @"SHOW_LAST_PAGE";
          goto LABEL_1524;
        case 6089:
          v41 = @"TAP_VIEW_APP";
          goto LABEL_1524;
        case 6090:
          v41 = @"TAP_APP_CLIP";
          goto LABEL_1524;
        case 6091:
          v41 = @"DEAD_BATTERY";
          goto LABEL_1524;
        case 6092:
          v41 = @"DISMISS_LOW_BATTERY_ALERT";
          goto LABEL_1524;
        case 6093:
          v41 = @"DISMISS_OUT_OF_RANGE_ALERT";
          goto LABEL_1524;
        case 6094:
          v41 = @"FAILED_TO_LOAD_EV_STATUS";
          goto LABEL_1524;
        case 6095:
          v41 = @"LOW_BATTERY_ALERT";
          goto LABEL_1524;
        case 6096:
          v41 = @"PAUSE_ROUTE";
          goto LABEL_1524;
        case 6097:
          v41 = @"TAP_ADD_STOP";
          goto LABEL_1524;
        case 6098:
          v41 = @"TAP_CHARGE_POINT";
          goto LABEL_1524;
        case 6099:
          v41 = @"TAP_OUT_OF_RANGE_ALERT";
          goto LABEL_1524;
        case 6100:
          v41 = @"SCROLL_DOWN_PHOTOS";
          goto LABEL_1524;
        case 6101:
          v41 = @"SCROLL_UP_PHOTOS";
          goto LABEL_1524;
        case 6102:
          v41 = @"TAP_MORE_PHOTOS";
          goto LABEL_1524;
        case 6103:
          v41 = @"TAP_TO_CONFIRM_INCIDENT";
          goto LABEL_1524;
        case 6104:
          v41 = @"SHOW_INCIDENT";
          goto LABEL_1524;
        case 6105:
          v41 = @"REVEAL_APP_CLIP";
          goto LABEL_1524;
        case 6106:
          v41 = @"ORDER_DELIVERY";
          goto LABEL_1524;
        case 6107:
          v41 = @"VIEW_MENU";
          goto LABEL_1524;
        case 6108:
          v41 = @"TAP_EDIT_STOPS";
          goto LABEL_1524;
        case 6109:
          v41 = @"LEARN_MORE_WEB_CONTENT";
          goto LABEL_1524;
        case 6110:
          v41 = @"MAKE_APPOINTMENT_WEB_CONTENT";
          goto LABEL_1524;
        case 6111:
          v41 = @"REVEAL_SHOWCASE";
          goto LABEL_1524;
        case 6112:
          v41 = @"TAP_ACTION_BAR";
          goto LABEL_1524;
        default:
          goto LABEL_213;
      }
    }

    if (v33 <= 8000)
    {
      switch(v33)
      {
        case 7001:
          v41 = @"EXPAND_TRANSIT_SYSTEM";
          goto LABEL_1524;
        case 7002:
          v41 = @"COLLAPSE_TRANSIT_SYSTEM";
          goto LABEL_1524;
        case 7003:
          v41 = @"SHOW_MORE_DEPARTURES";
          goto LABEL_1524;
        case 7004:
          v41 = @"VIEW_TRANSIT_LINE";
          goto LABEL_1524;
        case 7005:
          v41 = @"CANCEL_VIEW_TRANSIT_LINE";
          goto LABEL_1524;
        case 7006:
          v41 = @"TAP_TRANSIT_ATTRIBUTION";
          goto LABEL_1524;
        case 7007:
          v41 = @"TAP_TRANSIT_ADVISORY";
          goto LABEL_1524;
        case 7008:
          v41 = @"MORE_DETAILS_TRANSIT_ADVISORY";
          goto LABEL_1524;
        case 7009:
          v41 = @"SUBSCRIBE_LINE_INCIDENT";
          goto LABEL_1524;
        case 7010:
          v41 = @"UNSUBSCRIBE_LINE_INCIDENT";
          goto LABEL_1524;
        case 7011:
          v41 = @"TAP_NEAREST_STATION";
          goto LABEL_1524;
        case 7012:
          v41 = @"TAP_NEAREST_STOP";
          goto LABEL_1524;
        case 7013:
          v41 = @"TAP_CONNECTION";
          goto LABEL_1524;
        case 7014:
          v41 = @"GET_TICKETS";
          goto LABEL_1524;
        case 7015:
          v41 = @"OPEN_SCHEDULECARD_DATETIME";
          goto LABEL_1524;
        case 7016:
          v41 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";
          goto LABEL_1524;
        case 7017:
          v41 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";
          goto LABEL_1524;
        case 7018:
          v41 = @"VIEW_ON_MAP";
          goto LABEL_1524;
        case 7019:
          v41 = @"FORCE_UPDATE_DEPARTURE_INFO";
          goto LABEL_1524;
        case 7020:
          v41 = @"TAP_TRANSIT_LINE_INFO";
          goto LABEL_1524;
        case 7021:
          v41 = @"TAP_ATTRIBUTION_CELL";
          goto LABEL_1524;
        case 7022:
          v41 = @"TAP_NEXT_DEPARTURES";
          goto LABEL_1524;
        case 7023:
          v41 = @"VIEW_BANNER";
          goto LABEL_1524;
        case 7024:
          v41 = @"GET_SHOWTIMES";
          goto LABEL_1524;
        case 7025:
          v41 = @"MAKE_APPOINTMENT";
          goto LABEL_1524;
        case 7026:
          v41 = @"RESERVE_PARKING";
          goto LABEL_1524;
        case 7027:
          v41 = @"RESERVE_ROOM";
          goto LABEL_1524;
        case 7028:
          v41 = @"WAITLIST";
          goto LABEL_1524;
        case 7029:
          v41 = @"ORDER_TAKEOUT";
          goto LABEL_1524;
        case 7030:
          v41 = @"RESERVE";
          goto LABEL_1524;
        default:
          goto LABEL_213;
      }
    }

    if (v33 <= 8005)
    {
      if (v33 <= 8002)
      {
        if (v33 == 8001)
        {
          v41 = @"INVOKE_SIRI_SNIPPET";
        }

        else
        {
          v41 = @"INVOKE_SIRI_DISAMBIGUATION";
        }
      }

      else if (v33 == 8003)
      {
        v41 = @"SHOW_PLACE_DETAILS";
      }

      else if (v33 == 8004)
      {
        v41 = @"ANSWER_REROUTE_SUGGESTION";
      }

      else
      {
        v41 = @"SUGGEST_NAV_REROUTE";
      }
    }

    else if (v33 > 8008)
    {
      switch(v33)
      {
        case 0x1F49:
          v41 = @"INVOKE_SIRI";
          break;
        case 0x1F4A:
          v41 = @"DISPLAY_SIRI_ERROR_MESSAGE";
          break;
        case 0x1F4B:
          v41 = @"DISPLAY_NO_RESULTS_MESSAGE";
          break;
        default:
          goto LABEL_213;
      }
    }

    else if (v33 == 8006)
    {
      v41 = @"GET_NAV_STATUS";
    }

    else if (v33 == 8007)
    {
      v41 = @"REPEAT_NAV_STATUS";
    }

    else
    {
      v41 = @"SELECT_AUDIO_VOLUME_UNMUTE";
    }

LABEL_1524:
    log = v41;
LABEL_1525:

    v42 = [v31 userActionEvent];
    v43 = [v42 userActionEventTarget];
    v35 = v25;
    v36 = v24;
    v37 = v16;
    v38 = v31;
    if (v43 <= 1000)
    {
      v40 = @"UI_TARGET_UNKNOWN";
      switch(v43)
      {
        case 0:
          goto LABEL_2095;
        case 1:
          v40 = @"UI_TARGET_POI";
          break;
        case 2:
          v40 = @"UI_TARGET_SEARCH_RESULT_LIST";
          break;
        case 3:
          v40 = @"UI_TARGET_POPULAR_NEARBY_LIST";
          break;
        case 4:
          v40 = @"UI_TARGET_CALLOUT";
          break;
        case 5:
          v40 = @"UI_TARGET_SEARCH_PIN";
          break;
        case 6:
          v40 = @"UI_TARGET_DROPPED_PIN";
          break;
        case 7:
          v40 = @"UI_TARGET_TRANSIT_LINE";
          break;
        case 8:
          v40 = @"SEARCH_TRAY";
          break;
        case 9:
          v40 = @"SEARCH_TRAY_BROWSE";
          break;
        case 10:
          v40 = @"SEARCH_TRAY_POPULAR_NEARBY";
          break;
        case 11:
          v40 = @"SEARCH_TRAY_AC";
          break;
        case 12:
          v40 = @"SEARCH_TRAY_AC_INTERMEDIATE";
          break;
        case 13:
          v40 = @"SEARCH_TRAY_NO_QUERY";
          break;
        case 14:
          v40 = @"AR_WALKING_LEGAL_TRAY";
          break;
        case 15:
          v40 = @"RAISE_TO_START_AR_TRAY";
          break;
        case 16:
          v40 = @"EVENTS_ADVISORY_DETAILS_PAGE";
          break;
        case 17:
          v40 = @"INCIDENT_REPORT_TRAY_CARPLAY";
          break;
        case 18:
          v40 = @"HIGHLIGHTED_AREA";
          break;
        case 19:
          v40 = @"CURATED_COLLECTIONS_HOME";
          break;
        case 20:
          v40 = @"TRAVEL_PREFERENCES_TRAY";
          break;
        case 21:
          v40 = @"RESULT_TRAY_SEARCH";
          break;
        case 22:
          v40 = @"SINGLE_CARD_FILTER";
          break;
        case 23:
          v40 = @"FULL_CARD_FILTER";
          break;
        case 24:
          v40 = @"ACCOUNT_PRIVACY_TRAY";
          break;
        case 25:
          v40 = @"APPLE_RATINGS_HISTORY_TRAY";
          break;
        case 26:
          v40 = @"CURATED_COLLECTIONS_HOME_FILTERED";
          break;
        case 27:
          v40 = @"CITY_MENU";
          break;
        case 28:
          v40 = @"CURATED_COLLECTIONS_HOME_CONDENSED";
          break;
        case 29:
          v40 = @"ACCOUNT_TRAY";
          break;
        case 30:
          v40 = @"QUICK_ACTION_TRAY";
          break;
        case 31:
          v40 = @"SUBMIT_TRIP_FEEDBACK";
          break;
        case 32:
          v40 = @"RAP_PLACE_ISSUE_DETAILS";
          break;
        case 33:
          v40 = @"RAP_GUIDES_DETAILS";
          break;
        case 34:
          v40 = @"RAP_BAD_DIRECTIONS_DETAILS";
          break;
        case 35:
          v40 = @"RAP_ADD_MAP_DETAILS";
          break;
        case 36:
          v40 = @"WATCH_COMPLICATION";
          break;
        case 37:
          v40 = @"RAP_NAV_MENU";
          break;
        case 38:
          v40 = @"NOTIFICATION_ALIGHT_BANNER_TRANSIT";
          break;
        case 39:
          v40 = @"RAP_REPORT_MENU";
          break;
        case 40:
          v40 = @"RAP_CURATED_COLLECTION_MENU";
          break;
        case 41:
          v40 = @"RAP_REPORT_CARD_DETAILS";
          break;
        case 42:
          v40 = @"NOTIFICATION_NO_LOCATION_TRANSIT";
          break;
        case 43:
          v40 = @"RAP_STREET_ISSUE_DETAILS";
          break;
        case 44:
          v40 = @"NEARBY_TRANSIT_CARD";
          break;
        case 45:
          v40 = @"WATCH_NAV_MENU";
          break;
        case 46:
          v40 = @"GENERIC_ADVISORY_PAGE";
          break;
        case 47:
          v40 = @"USER_PROFILE_TRAY";
          break;
        case 48:
          v40 = @"MEDIA_APP_MENU";
          break;
        case 49:
          v40 = @"TEMPLATE_PLACE_TRAY";
          break;
        case 50:
          v40 = @"NOTIFICATION_CONSENT_REPROMPT_RAP";
          break;
        case 51:
          v40 = @"ALLOW_NOTIFICATION_DIALOG";
          break;
        case 52:
          v40 = @"NOTIFICATION_CONSENT_REPROMPT_DRIVING";
          break;
        case 53:
          v40 = @"NOTIFICATION_CONSENT_REPROMPT_ARP";
          break;
        case 54:
          v40 = @"NOTIFICATION_CONSENT_REPROMPT_TIME_ELAPSED";
          break;
        case 55:
          v40 = @"NOTIFICATION_CONSENT_PROMPT";
          break;
        case 56:
          v40 = @"QUICK_ACTION_TRAY_VENDORS_MENU";
          break;
        case 57:
          v40 = @"PLACECARD_TRAY_VENDORS_MENU";
          break;
        case 58:
          v40 = @"RESULTS_TRAY_SEARCH_ROUTE_PLANNING";
          break;
        case 59:
          v40 = @"SEARCH_ALONG_ROUTE_TRAY";
          break;
        case 60:
          v40 = @"MAP_RESULTS_SEARCH_ROUTE_PLANNING";
          break;
        case 61:
          v40 = @"PLACECARD_SHOWCASE_MENU";
          break;
        case 62:
          v40 = @"RAP_INLINE_ADD_DETAILS";
          break;
        case 63:
          v40 = @"RAP_EDIT_MENU_DETAILS";
          break;
        case 64:
          v40 = @"RAP_SUBMISSION_PROMPT";
          break;
        case 65:
          v40 = @"RAP_PLACECARD_EDIT_MENU";
          break;
        case 66:
          v40 = @"ARP_SUBMISSION_CONFIRMATION_PAGE";
          break;
        case 67:
          v40 = @"INCIDENT_REPORT_MENU";
          break;
        case 68:
          v40 = @"RAP_SELECT_BAD_ROUTES_STEPS";
          break;
        case 69:
          v40 = @"RAP_SELECT_BAD_ROUTES";
          break;
        case 70:
          v40 = @"SIRI_SUGGESTION_RESUME_ROUTE";
          break;
        case 71:
          v40 = @"SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
          break;
        case 72:
          v40 = @"SPOTLIGHT_BUSINESS_ENTITY_LIST";
          break;
        case 73:
          v40 = @"SPOTLIGHT_BUSINESS_ENTITY";
          break;
        case 74:
          v40 = @"NOTIFICATION_ARP";
          break;
        case 75:
          v40 = @"IMPROVE_LOCATION_ACCURACY_PROMPT";
          break;
        case 76:
          v40 = @"YOUR_PHOTOS_ALBUM";
          break;
        case 77:
          v40 = @"ARP_PHOTO_CREDIT";
          break;
        case 78:
          v40 = @"RAP_OUTREACH_REVIEWED_REPORT";
          break;
        case 79:
          v40 = @"RAP_REPORT_MENU_MORE";
          break;
        case 80:
          v40 = @"WATCH_MAPS_SETTINGS";
          break;
        case 81:
          v40 = @"OFFLINE_FEATURE_PROMPT";
          break;
        case 82:
          v40 = @"EXPIRED_MAPS_DETAILS";
          break;
        case 83:
          v40 = @"MAPS_VIEW";
          break;
        case 84:
          v40 = @"NOTIFICATION_OFFLINE";
          break;
        case 85:
          v40 = @"EXPIRED_MAPS_MANAGEMENT";
          break;
        case 86:
          v40 = @"OFFLINE_NEW_MAPS_MANAGEMENT";
          break;
        case 87:
          v40 = @"EDIT_EXPIRED_MAPS_MANAGEMENT";
          break;
        case 88:
          v40 = @"OFFLINE_MAPS_MANAGEMENT";
          break;
        case 89:
          v40 = @"REGION_SELECTOR";
          break;
        case 90:
          v40 = @"OFFLINE_SUGGESTED_MAPS_MANAGEMENT";
          break;
        case 91:
          v40 = @"FIND_MY_ETA_SHARING_TRAY";
          break;
        case 92:
          v40 = @"WATCH_PLACE";
          break;
        case 93:
          v40 = @"WATCH_ROUTE_PLANNING_TRANSIT_CAROUSEL";
          break;
        case 94:
          v40 = @"WATCH_ROUTE_PLANNING_MAP";
          break;
        case 95:
          v40 = @"WATCH_NAV_WALKING_CONTROLS";
          break;
        case 96:
          v40 = @"WATCH_NAV_CYCLING_CONTROLS";
          break;
        case 97:
          v40 = @"WATCH_ROUTE_PLANNING_WALKING_CAROUSEL";
          break;
        case 98:
          v40 = @"WATCH_NAV_TRANSIT_CONTROLS";
          break;
        case 99:
          v40 = @"WATCH_SEARCH_RESULTS_CAROUSEL";
          break;
        case 100:
          v40 = @"WATCH_NAV_DRIVING_CONTROLS";
          break;
        case 101:
          v40 = @"RESULTS_TRAY_SEARCH";
          break;
        case 102:
          v40 = @"RESULTS_TRAY_BROWSE";
          break;
        case 103:
          v40 = @"RESULTS_TRAY_FAVORITES";
          break;
        case 104:
          v40 = @"RESULTS_TRAY_SEARCH_ALONG_ROUTE";
          break;
        case 105:
          v40 = @"RESULTS_TRAY_CLUSTER";
          break;
        case 106:
          v40 = @"RESULTS_TRAY_VENUE_BROWSE";
          break;
        case 107:
          v40 = @"WATCH_MAP_RESULTS";
          break;
        case 108:
          v40 = @"WATCH_NAV_WALKING_ELEVATION_VIEW";
          break;
        case 109:
          v40 = @"WATCH_PLACES";
          break;
        case 110:
          v40 = @"WATCH_NAV_CYCLING_ELEVATION_VIEW";
          break;
        case 111:
          v40 = @"WATCH_ROUTE_PLANNING_CYCLING_CAROUSEL";
          break;
        case 112:
          v40 = @"DOWNLOADED_MAPS_DETAILS";
          break;
        case 113:
          v40 = @"WATCH_ROUTE_PLANNING_DRIVING_CAROUSEL";
          break;
        case 114:
          v40 = @"WATCH_NAV_TRANSIT_OVERVIEW_MAP";
          break;
        case 115:
          v40 = @"WATCH_NAV_WALKING_OVERVIEW_MAP";
          break;
        case 116:
          v40 = @"WATCH_NAV_CYCLING_OVERVIEW_MAP";
          break;
        case 117:
          v40 = @"WATCH_ROUTE_OPTIONS";
          break;
        case 118:
          v40 = @"WATCH_NAV_DRIVING_OVERVIEW_MAP";
          break;
        case 119:
          v40 = @"WATCH_MORE_GUIDES";
          break;
        case 120:
          v40 = @"WATCH_RECENTLY_VIEWED";
          break;
        case 121:
          v40 = @"EV_SUCCESS_TRAY";
          break;
        case 122:
          v40 = @"PREFERRED_NETWORK_SELECTION_TRAY";
          break;
        case 123:
          v40 = @"PREFERRED_NETWORK_TRAY";
          break;
        case 124:
          v40 = @"WALKING_TRANSITION_SUGGESTION_TRAY";
          break;
        case 125:
          v40 = @"FINDMY_TRANSITION_SUGGESTION_TRAY";
          break;
        case 126:
          v40 = @"CARPLAY_FIND_MY_ETA_SHARING_TRAY";
          break;
        case 127:
          v40 = @"AC_KEYBOARD_TRAY";
          break;
        case 128:
          v40 = @"MORE_RELATED_TRAILS";
          break;
        case 129:
          v40 = @"MORE_RELATED_TRAILHEADS";
          break;
        case 130:
          v40 = @"ROUTING_TRAY_CUSTOM_ROUTE";
          break;
        case 131:
          v40 = @"CUSTOM_ROUTE_CREATION_TRAY";
          break;
        case 132:
          v40 = @"ROUTING_TRAY_CURATED_HIKE";
          break;
        case 133:
          v40 = @"MORE_CURATED_HIKES";
          break;
        case 134:
          v40 = @"CUSTOM_ROUTE_ONBOARDING";
          break;
        case 135:
          v40 = @"LIBRARY_ROUTES";
          break;
        case 136:
          v40 = @"HIKING_TRANSITION_SUGGESTION_TRAY";
          break;
        case 137:
          v40 = @"MY_LIBRARY";
          break;
        case 138:
          v40 = @"EDIT_NOTE_TRAY";
          break;
        case 139:
          v40 = @"CREATE_NOTE_TRAY";
          break;
        case 140:
          v40 = @"LIBRARY_PLACES";
          break;
        case 141:
          v40 = @"WATCH_ACCOUNT";
          break;
        case 142:
          v40 = @"WATCH_DOWNLOADED_MAPS";
          break;
        case 143:
          v40 = @"VISUAL_INTELLIGENCE_DETECTION_LIST";
          break;
        case 144:
          v40 = @"VISUAL_INTELLIGENCE_DETECTION";
          break;
        case 145:
          v40 = @"VISUAL_INTELLIGENCE_SNIPPET";
          break;
        case 146:
          v40 = @"FAMILIAR_ROUTE_NOTIFICATION";
          break;
        case 147:
          v40 = @"LIBRARY_VISITED";
          break;
        case 148:
          v40 = @"VISITED_PLACES_ONBOARDING";
          break;
        case 149:
          v40 = @"NOTIFICATION_VISITED_PLACES";
          break;
        case 150:
          v40 = @"LOCATION_CORRECTION_TRAY";
          break;
        case 151:
          v40 = @"MAPS_WIDGET_VISITED_PLACE";
          break;
        case 152:
          v40 = @"REMOVE_VISIT_TRAY";
          break;
        case 153:
          v40 = @"NEARBY_SUGGESTION_TRAY";
          break;
        case 154:
          v40 = @"FAMILIAR_ROUTES_ONBOARDING";
          break;
        case 155:
          v40 = @"ROUTING_TRAY_CARPLAY";
          break;
        case 156:
        case 157:
        case 158:
        case 159:
        case 160:
        case 161:
        case 162:
        case 163:
        case 164:
        case 165:
        case 166:
        case 167:
        case 168:
        case 169:
        case 170:
        case 171:
        case 172:
        case 173:
        case 174:
        case 175:
        case 176:
        case 177:
        case 178:
        case 179:
        case 180:
        case 181:
        case 182:
        case 183:
        case 184:
        case 185:
        case 186:
        case 187:
        case 188:
        case 189:
        case 190:
        case 191:
        case 192:
        case 193:
        case 194:
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
        case 219:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
        case 225:
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 238:
        case 239:
        case 240:
        case 241:
        case 242:
        case 243:
        case 244:
        case 245:
        case 246:
        case 247:
        case 248:
        case 249:
        case 269:
        case 270:
        case 271:
        case 272:
        case 273:
        case 274:
        case 275:
        case 276:
        case 277:
        case 278:
        case 279:
        case 280:
        case 281:
        case 282:
        case 283:
        case 284:
        case 285:
        case 286:
        case 287:
        case 288:
        case 289:
        case 290:
        case 291:
        case 292:
        case 293:
        case 294:
        case 295:
        case 296:
        case 297:
        case 298:
        case 299:
        case 300:
        case 307:
        case 308:
        case 309:
        case 310:
        case 311:
        case 312:
        case 313:
        case 314:
        case 315:
        case 316:
        case 317:
        case 318:
        case 319:
        case 320:
        case 321:
        case 322:
        case 323:
        case 324:
        case 325:
        case 326:
        case 327:
        case 328:
        case 329:
        case 330:
        case 331:
        case 332:
        case 333:
        case 334:
        case 335:
        case 336:
        case 337:
        case 338:
        case 339:
        case 340:
        case 341:
        case 342:
        case 343:
        case 344:
        case 345:
        case 346:
        case 347:
        case 348:
        case 349:
        case 350:
        case 351:
        case 352:
        case 353:
        case 354:
        case 355:
        case 356:
        case 357:
        case 358:
        case 359:
        case 360:
        case 361:
        case 362:
        case 363:
        case 364:
        case 365:
        case 366:
        case 367:
        case 368:
        case 369:
        case 370:
        case 371:
        case 372:
        case 373:
        case 374:
        case 375:
        case 376:
        case 377:
        case 378:
        case 379:
        case 380:
        case 381:
        case 382:
        case 383:
        case 384:
        case 385:
        case 386:
        case 387:
        case 388:
        case 389:
        case 390:
        case 391:
        case 392:
        case 393:
        case 394:
        case 395:
        case 396:
        case 397:
        case 398:
        case 399:
        case 400:
        case 405:
        case 406:
        case 407:
        case 408:
        case 409:
        case 410:
        case 411:
        case 412:
        case 413:
        case 414:
        case 415:
        case 416:
        case 417:
        case 418:
        case 419:
        case 420:
        case 421:
        case 422:
        case 423:
        case 424:
        case 425:
        case 426:
        case 427:
        case 428:
        case 429:
        case 430:
        case 431:
        case 432:
        case 433:
        case 434:
        case 435:
        case 436:
        case 437:
        case 438:
        case 439:
        case 440:
        case 441:
        case 442:
        case 443:
        case 444:
        case 445:
        case 446:
        case 447:
        case 448:
        case 449:
        case 450:
        case 451:
        case 452:
        case 453:
        case 454:
        case 455:
        case 456:
        case 457:
        case 458:
        case 459:
        case 460:
        case 461:
        case 462:
        case 463:
        case 464:
        case 465:
        case 466:
        case 467:
        case 468:
        case 469:
        case 470:
        case 471:
        case 472:
        case 473:
        case 474:
        case 475:
        case 476:
        case 477:
        case 478:
        case 479:
        case 480:
        case 481:
        case 482:
        case 483:
        case 484:
        case 485:
        case 486:
        case 487:
        case 488:
        case 489:
        case 490:
        case 491:
        case 492:
        case 493:
        case 494:
        case 495:
        case 496:
        case 497:
        case 498:
        case 499:
        case 500:
        case 512:
        case 513:
        case 514:
        case 515:
        case 516:
        case 517:
        case 518:
        case 519:
        case 520:
        case 521:
        case 522:
        case 523:
        case 524:
        case 525:
        case 526:
        case 527:
        case 528:
        case 529:
        case 530:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 536:
        case 537:
        case 538:
        case 539:
        case 540:
        case 541:
        case 542:
        case 543:
        case 544:
        case 545:
        case 546:
        case 547:
        case 548:
        case 549:
        case 550:
        case 551:
        case 552:
        case 553:
        case 554:
        case 555:
        case 556:
        case 557:
        case 558:
        case 559:
        case 560:
        case 561:
        case 562:
        case 563:
        case 564:
        case 565:
        case 566:
        case 567:
        case 568:
        case 569:
        case 570:
        case 571:
        case 572:
        case 573:
        case 574:
        case 575:
        case 576:
        case 577:
        case 578:
        case 579:
        case 580:
        case 581:
        case 582:
        case 583:
        case 584:
        case 585:
        case 586:
        case 587:
        case 588:
        case 589:
        case 590:
        case 591:
        case 592:
        case 593:
        case 594:
        case 595:
        case 596:
        case 597:
        case 598:
        case 599:
        case 600:
        case 700:
        case 744:
        case 745:
        case 746:
        case 747:
        case 748:
        case 749:
        case 750:
        case 751:
        case 752:
        case 753:
        case 754:
        case 755:
        case 756:
        case 757:
        case 758:
        case 759:
        case 760:
        case 761:
        case 762:
        case 763:
        case 764:
        case 765:
        case 766:
        case 767:
        case 768:
        case 769:
        case 770:
        case 771:
        case 772:
        case 773:
        case 774:
        case 775:
        case 776:
        case 777:
        case 778:
        case 779:
        case 780:
        case 781:
        case 782:
        case 783:
        case 784:
        case 785:
        case 786:
        case 787:
        case 788:
        case 789:
        case 790:
        case 791:
        case 792:
        case 793:
        case 794:
        case 795:
        case 796:
        case 797:
        case 798:
        case 799:
        case 800:
          goto LABEL_2094;
        case 201:
          v40 = @"PLACECARD_TRAY";
          break;
        case 202:
          v40 = @"WEB_MODULE";
          break;
        case 203:
          v40 = @"ACTION_BAR";
          break;
        case 204:
          v40 = @"ACTION_BAR_VENDORS_MENU";
          break;
        case 250:
          v40 = @"ADD_FAVORITE_TRAY";
          break;
        case 251:
          v40 = @"COLLECTION_LIST";
          break;
        case 252:
          v40 = @"COLLECTION_VIEW";
          break;
        case 253:
          v40 = @"FAVORITE_DETAILS";
          break;
        case 254:
          v40 = @"FAVORITES_TRAY";
          break;
        case 255:
          v40 = @"SHARED_COLLECTION";
          break;
        case 256:
          v40 = @"SHARED_COLLECTION_VIEW";
          break;
        case 257:
          v40 = @"RECENTLY_VIEWED";
          break;
        case 258:
          v40 = @"SHARED_WEB_COLLECTION";
          break;
        case 259:
          v40 = @"CURATED_COLLECTION_VIEW";
          break;
        case 260:
          v40 = @"FEATURED_COLLECTIONS";
          break;
        case 261:
          v40 = @"PUBLISHER_TRAY";
          break;
        case 262:
          v40 = @"SHARED_CURATED_COLLECTION_VIEW";
          break;
        case 263:
          v40 = @"CURATED_COLLECTION_NOTIFICATION";
          break;
        case 264:
          v40 = @"CURATED_COLLECTION_LIST";
          break;
        case 265:
          v40 = @"PUBLISHER_LIST";
          break;
        case 266:
          v40 = @"WATCH_CURATED_COLLECTION_VIEW";
          break;
        case 267:
          v40 = @"SIRI_SUGGESTION_SHARED_ETA_SUBLIST";
          break;
        case 268:
          v40 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY_SUBLIST";
          break;
        case 301:
          v40 = @"ROUTING_TRAY_DRIVING";
          break;
        case 302:
          v40 = @"ROUTING_TRAY_WALKING";
          break;
        case 303:
          v40 = @"ROUTING_TRAY_TRANSIT";
          break;
        case 304:
          v40 = @"ROUTING_TRAY_RIDESHARE";
          break;
        case 305:
          v40 = @"ROUTING_TRAY_CYCLING";
          break;
        case 306:
          v40 = @"ROUTING_TRAY_VIRTUAL_GARAGE_VIEW";
          break;
        case 401:
          v40 = @"NAV_TRAY_DRIVING";
          break;
        case 402:
          v40 = @"NAV_TRAY_WALKING";
          break;
        case 403:
          v40 = @"NAV_TRAY_TRANSIT";
          break;
        case 404:
          v40 = @"NAV_TRAY_CYCLING";
          break;
        case 501:
          v40 = @"MAP_PLACECARD";
          break;
        case 502:
          v40 = @"MAP_SEARCH";
          break;
        case 503:
          v40 = @"MAP_RESULTS";
          break;
        case 504:
          v40 = @"MAP_ROUTING";
          break;
        case 505:
          v40 = @"MAP_NAV";
          break;
        case 506:
          v40 = @"MAP_RESULTS_SEARCH_ALONG_ROUTE";
          break;
        case 507:
          v40 = @"MAP_TRAFFIC_INCIDENT";
          break;
        case 508:
          v40 = @"MAP_FULL_SCREEN";
          break;
        case 509:
          v40 = @"MAP_DRIVE";
          break;
        case 510:
          v40 = @"MAP_LAUNCH_AND_GO";
          break;
        case 511:
          v40 = @"MAP_VIEW";
          break;
        case 601:
          v40 = @"MAPS_SETTINGS";
          break;
        case 602:
          v40 = @"MAPS_PREFERENCES";
          break;
        case 603:
          v40 = @"RAP";
          break;
        case 604:
          v40 = @"ROUTING_DRIVING_DETAILS";
          break;
        case 605:
          v40 = @"ROUTING_WALKING_DETAILS";
          break;
        case 606:
          v40 = @"ROUTING_TRANSIT_DETAILS";
          break;
        case 607:
          v40 = @"ROUTING_EDITOR";
          break;
        case 608:
          v40 = @"NAV_DRIVING_DETAILS";
          break;
        case 609:
          v40 = @"NAV_WALKING_DETAILS";
          break;
        case 610:
          v40 = @"NAV_TRANSIT_DETAILS";
          break;
        case 611:
          v40 = @"NAV_AUDIO_SETTINGS";
          break;
        case 612:
          v40 = @"PHOTO_VIEWER_ALL";
          break;
        case 613:
          v40 = @"PHOTO_VIEWER_SINGLE";
          break;
        case 614:
          v40 = @"ROUTE_OPTIONS_TRANSIT";
          break;
        case 615:
          v40 = @"TRAFFIC_INCIDENT_TRAY";
          break;
        case 616:
          v40 = @"NAV_DIRECTIONS_BANNER_DRIVING";
          break;
        case 617:
          v40 = @"NAV_DIRECTIONS_BANNER_WALKING";
          break;
        case 618:
          v40 = @"NAV_DIRECTIONS_BANNER_TRANSIT";
          break;
        case 619:
          v40 = @"REFINE_SEARCH_SUGGESTION_AREA";
          break;
        case 620:
          v40 = @"ADD_PHOTO_SHEET";
          break;
        case 621:
          v40 = @"ADD_PLACE_SHEET";
          break;
        case 622:
          v40 = @"SHARE_SHEET";
          break;
        case 623:
          v40 = @"EDIT_LOCATION_SHEET";
          break;
        case 624:
          v40 = @"ADD_CONTACT_SHEET";
          break;
        case 625:
          v40 = @"EDIT_NAME_SHEET";
          break;
        case 626:
          v40 = @"DRIVING_NAV_SETTINGS";
          break;
        case 627:
          v40 = @"TRANSIT_SETTINGS";
          break;
        case 628:
          v40 = @"TRANSIT_ADVISORY_SHEET";
          break;
        case 629:
          v40 = @"REMOVE_CAR_SHEET";
          break;
        case 630:
          v40 = @"ROUTE_OPTIONS_DRIVING";
          break;
        case 631:
          v40 = @"ROUTE_OPTIONS_DATETIME";
          break;
        case 632:
          v40 = @"TRANSIT_ADVISORY_BANNER";
          break;
        case 633:
          v40 = @"BOOK_TABLE_SELECT_TIME";
          break;
        case 634:
          v40 = @"BOOK_TABLE_MORE_OPTIONS";
          break;
        case 635:
          v40 = @"BOOK_TABLE_READY";
          break;
        case 636:
          v40 = @"BOOK_TABLE_BOOKED";
          break;
        case 637:
          v40 = @"TRANSIT_LINE_CLUSTER_SHEET";
          break;
        case 638:
          v40 = @"TRANSIT_LINE_LIST_SHEET";
          break;
        case 639:
          v40 = @"TRANSIT_BALANCE_BANNER";
          break;
        case 640:
          v40 = @"WEATHER_ICON";
          break;
        case 641:
          v40 = @"HELP_IMPROVE_MAPS_DIALOG";
          break;
        case 642:
          v40 = @"HELP_IMPROVE_COMMUTE_PREDICTION_ACCURACY_DIALOG";
          break;
        case 643:
          v40 = @"COMMUTE_PREDICTION_ACCURACY_DIALOG";
          break;
        case 644:
          v40 = @"FLOOR_PICKER";
          break;
        case 645:
          v40 = @"VENUE_LIST";
          break;
        case 646:
          v40 = @"AR_MODE";
          break;
        case 647:
          v40 = @"ROUTING_TRANSIT_TICKETS_SHEET";
          break;
        case 648:
          v40 = @"LINKED_SERVICE_HOURS";
          break;
        case 649:
          v40 = @"SHARE_ETA_TRAY";
          break;
        case 650:
          v40 = @"ETA_UPDATE_TRAY";
          break;
        case 651:
          v40 = @"SCHEDULECARD_TRAY";
          break;
        case 652:
          v40 = @"AR_NAV";
          break;
        case 653:
          v40 = @"TAP_TRANSIT_ACCESS_POINT";
          break;
        case 654:
          v40 = @"LOCATIONS_INSIDE";
          break;
        case 655:
          v40 = @"SIMILAR_LOCATIONS";
          break;
        case 656:
          v40 = @"LOCATIONS_AT_ADDRESS";
          break;
        case 657:
          v40 = @"NAV_DIRECTIONS_BANNER_CYCLING";
          break;
        case 658:
          v40 = @"ROUTE_OPTIONS_CYCLING";
          break;
        case 659:
          v40 = @"EV_CONNECTION_TRAY";
          break;
        case 660:
          v40 = @"VIRTUAL_GARAGE";
          break;
        case 661:
          v40 = @"VIRTUAL_GARAGE_BANNER";
          break;
        case 662:
          v40 = @"VIRTUAL_GARAGE_VEHICLE_VIEW";
          break;
        case 663:
          v40 = @"ADVISORY_DETAILS_PAGE";
          break;
        case 664:
          v40 = @"APP_CLIP_NOTIFICATION";
          break;
        case 665:
          v40 = @"PHOTO_VIEWER_GALLERY";
          break;
        case 666:
          v40 = @"RECOMMENDATION_CARD";
          break;
        case 667:
          v40 = @"INCIDENT_REPORT_TRAY";
          break;
        case 668:
          v40 = @"MAPS_WIDGET_DISPLAY";
          break;
        case 669:
          v40 = @"VISUAL_LOCATION_FRAMEWORK";
          break;
        case 670:
          v40 = @"APP_CLIP_TRAY";
          break;
        case 671:
          v40 = @"LICENSE_PLATE_SUGGESTION_PAGE";
          break;
        case 672:
          v40 = @"NOTIFICATION_ADD_PLATE";
          break;
        case 673:
          v40 = @"MAPS_RESULTS";
          break;
        case 674:
          v40 = @"MAPS_WIDGET_APP_CONNECTION";
          break;
        case 675:
          v40 = @"MAPS_WIDGET_CURRENT_LOCATION";
          break;
        case 676:
          v40 = @"MAPS_WIDGET_CURRENT_NAV";
          break;
        case 677:
          v40 = @"MAPS_WIDGET_ETA";
          break;
        case 678:
          v40 = @"MAPS_WIDGET_TRANSIT";
          break;
        case 679:
          v40 = @"MAPS_WIDGET_UPC_DESTINATION";
          break;
        case 680:
          v40 = @"WIDGET_CREATION_TRAY";
          break;
        case 681:
          v40 = @"MAPS_WIDGET_HOME";
          break;
        case 682:
          v40 = @"MAPS_WIDGET_PARKED_CAR";
          break;
        case 683:
          v40 = @"MAPS_WIDGET_POI";
          break;
        case 684:
          v40 = @"MAPS_WIDGET_SCHOOL";
          break;
        case 685:
          v40 = @"MAPS_WIDGET_WORK";
          break;
        case 686:
          v40 = @"AIRPORT_NOTIFICATION";
          break;
        case 687:
          v40 = @"MAPS_WIDGET_EMPTY";
          break;
        case 688:
          v40 = @"COARSE_LOCATION_OPTIONS_PROMPT";
          break;
        case 689:
          v40 = @"ALLOW_PRECISE_LOCATION_PROMPT";
          break;
        case 690:
          v40 = @"SHARE_MY_LOCATION";
          break;
        case 691:
          v40 = @"MARK_MY_LOCATION";
          break;
        case 692:
          v40 = @"AIRPORT_NOTIFICATION_WATCH";
          break;
        case 693:
          v40 = @"EDIT_FAVORITE";
          break;
        case 694:
          v40 = @"ROUTING_CYCLING_DETAILS";
          break;
        case 695:
          v40 = @"NAV_CYCLING_DETAILS";
          break;
        case 696:
          v40 = @"MAPS_SUGGESTION_WIDGET";
          break;
        case 697:
          v40 = @"ARP_TIPKIT";
          break;
        case 698:
          v40 = @"ARP_PRIVACY";
          break;
        case 699:
          v40 = @"ROUTE_OPTIONS_WALKING";
          break;
        case 701:
          v40 = @"SAFARI_SEARCH";
          break;
        case 702:
          v40 = @"SPOTLIGHT_SEARCH";
          break;
        case 703:
          v40 = @"SAFARI_MAPS_SEARCH_RESULTS";
          break;
        case 704:
          v40 = @"SPOTLIGHT_MAPS_SEARCH_RESULTS";
          break;
        case 705:
          v40 = @"WIDGET_MAPS_DESTINATIONS";
          break;
        case 706:
          v40 = @"WIDGET_MAPS_TRANSIT";
          break;
        case 707:
          v40 = @"WIDGET_MAPS_NEARBY";
          break;
        case 708:
          v40 = @"NOTIFICATION_FIND_MY_CAR";
          break;
        case 709:
          v40 = @"CONTROL_CENTER";
          break;
        case 710:
          v40 = @"NOTIFICATION_CENTER";
          break;
        case 711:
          v40 = @"NOTIFICATION_DOOM";
          break;
        case 712:
          v40 = @"NOTIFICATION_VENUES";
          break;
        case 713:
          v40 = @"NOTIFICATION_RAP_UPDATE";
          break;
        case 714:
          v40 = @"NOTIFICATION_TRIP_CANCELLED";
          break;
        case 715:
          v40 = @"NOTIFICATION_STOP_SKIPPED";
          break;
        case 716:
          v40 = @"NOTIFICATION_TRIP_DELAYED";
          break;
        case 717:
          v40 = @"NOTIFICATION_RAP";
          break;
        case 718:
          v40 = @"NOTIFICATION_PROXY_AUTH";
          break;
        case 719:
          v40 = @"NOTIFICATION_PUSH_TO_DEVICE";
          break;
        case 720:
          v40 = @"NOTIFICATION_LOW_FUEL";
          break;
        case 721:
          v40 = @"NOTIFICATION_FIND_MY_CAR_RESET";
          break;
        case 722:
          v40 = @"NOTIFICATION_TRAFFIC_CONDITIONS";
          break;
        case 723:
          v40 = @"NOTIFICATION_SHARED_ETA";
          break;
        case 724:
          v40 = @"NOTIFICATION_SHARED_ETA_UPDATE";
          break;
        case 725:
          v40 = @"ANNOUNCEMENT_TYPE_UNKNOWN";
          break;
        case 726:
          v40 = @"ANNOUNCEMENT_TYPE_GENERAL";
          break;
        case 727:
          v40 = @"ANNOUNCEMENT_TYPE_FLYOVER";
          break;
        case 728:
          v40 = @"ANNOUNCEMENT_TYPE_TRANSIT";
          break;
        case 729:
          v40 = @"ANNOUNCEMENT_TYPE_VENUES";
          break;
        case 730:
          v40 = @"ANNOUNCEMENT_TYPE_ENHANCED_DETAIL";
          break;
        case 731:
          v40 = @"ANNOUNCEMENT_TYPE_LANE_GUIDANCE";
          break;
        case 732:
          v40 = @"ANNOUNCEMENT_TYPE_LOOK_AROUND";
          break;
        case 733:
          v40 = @"APP_SHEET";
          break;
        case 734:
          v40 = @"CZ_ADVISORY_DETAILS_PAGE";
          break;
        case 735:
          v40 = @"SHARE_ETA_CONTACT_TRAY";
          break;
        case 736:
          v40 = @"SIRI_SHARE_ETA";
          break;
        case 737:
          v40 = @"SIRI_SUGGESTION_SHARED_ETA";
          break;
        case 738:
          v40 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY";
          break;
        case 739:
          v40 = @"INCIDENT_ALERT_TRAY";
          break;
        case 740:
          v40 = @"INCIDENT_REPORT_CONFIRMATION_TRAY";
          break;
        case 741:
          v40 = @"RAP_INCIDENT_REPORT_VIEW";
          break;
        case 742:
          v40 = @"SEARCH_ALONG_ROUTE_CATEGORY_TRAY";
          break;
        case 743:
          v40 = @"TRAFFIC_ADVISORY_SHEET";
          break;
        case 801:
          v40 = @"SIRI_PLUGIN_SNIPPET";
          break;
        case 802:
          v40 = @"SIRI_PLUGIN_COMMAND";
          break;
        case 803:
          v40 = @"SIRI_SEARCH_RESULT_LIST";
          break;
        case 804:
          v40 = @"SIRI_DISAMBIGUATION_LIST";
          break;
        case 805:
          v40 = @"SIRI_PLACE_SNIPPET";
          break;
        default:
          if (v43 != 901)
          {
            goto LABEL_2094;
          }

          v40 = @"CHROME";
          break;
      }

      goto LABEL_2095;
    }

    if (v43 <= 1400)
    {
      switch(v43)
      {
        case 1001:
          v40 = @"CARPLAY_NAV";
          break;
        case 1002:
          v40 = @"CARPLAY_EXPLORE";
          break;
        case 1003:
          v40 = @"CARPLAY_DESTINATIONS";
          break;
        case 1004:
          v40 = @"CARPLAY_TRAFFIC_INCIDENT";
          break;
        case 1005:
          v40 = @"CARPLAY_CONTROL";
          break;
        case 1006:
          v40 = @"CARPLAY_PROACTIVE";
          break;
        case 1007:
          v40 = @"CARPLAY_ROUTING";
          break;
        case 1008:
          v40 = @"CARPLAY_MORE_ROUTES";
          break;
        case 1009:
          v40 = @"CARPLAY_SEARCH_ALONG_ROUTE";
          break;
        case 1010:
          v40 = @"CARPLAY_SEARCH";
          break;
        case 1011:
          v40 = @"CARPLAY_SEARCH_RESULTS";
          break;
        case 1012:
          v40 = @"CARPLAY_FAVORITES";
          break;
        case 1013:
          v40 = @"CARPLAY_NAV_CONFIRMATION";
          break;
        case 1014:
          v40 = @"CARPLAY_DESTINATION_SHARING";
          break;
        case 1015:
          v40 = @"CARPLAY_NOTIFICATION_BATTERY";
          break;
        case 1016:
          v40 = @"CARPLAY_NOTIFICATION_DOOM";
          break;
        case 1017:
          v40 = @"CARPLAY_NOTIFICATION_FUEL";
          break;
        case 1018:
          v40 = @"CARPLAY_NOTIFICATION_HYBRID";
          break;
        case 1019:
          v40 = @"CARPLAY_SHARE_ETA_TRAY";
          break;
        case 1020:
          v40 = @"CARPLAY_ETA_UPDATE_TRAY";
          break;
        case 1021:
          v40 = @"CARPLAY_ACTION_TRAY";
          break;
        case 1022:
          v40 = @"CARPLAY_PLACECARD";
          break;
        case 1023:
          v40 = @"CARPLAY_KEYBOARD";
          break;
        case 1024:
          v40 = @"CARPLAY_UI_TARGET_UNKNOWN";
          break;
        case 1025:
          v40 = @"CARPLAY_EDIT_STOPS";
          break;
        case 1100:
          v40 = @"RAP_DIRECTIONS_MENU";
          break;
        case 1101:
          v40 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_LIST";
          break;
        case 1102:
          v40 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_DETAILS_FORM";
          break;
        case 1103:
          v40 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE_FORM";
          break;
        case 1104:
          v40 = @"RAP_DIRECTIONS_ESTIMATED_TIME_INCORRECT_FORM";
          break;
        case 1105:
          v40 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_FORM";
          break;
        case 1106:
          v40 = @"RAP_TRANSIT_MENU";
          break;
        case 1107:
          v40 = @"RAP_STATION_MAP";
          break;
        case 1108:
          v40 = @"RAP_STATION_MENU";
          break;
        case 1109:
          v40 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_MAP";
          break;
        case 1110:
          v40 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_FORM";
          break;
        case 1111:
          v40 = @"RAP_STATION_CLOSED_FORM";
          break;
        case 1112:
          v40 = @"RAP_LINE_MAP";
          break;
        case 1113:
          v40 = @"RAP_LINE_MENU";
          break;
        case 1114:
          v40 = @"RAP_LINE_NAME_FORM";
          break;
        case 1115:
          v40 = @"RAP_LINE_SHAPE_FORM";
          break;
        case 1116:
          v40 = @"RAP_LINE_SCHEDULE_INCORRECT_FORM";
          break;
        case 1117:
          v40 = @"RAP_ADD_PLACE_MENU";
          break;
        case 1118:
          v40 = @"RAP_ADD_POI_MAP";
          break;
        case 1119:
          v40 = @"RAP_CATEGORY_LIST";
          break;
        case 1120:
          v40 = @"RAP_POI_DETAILS_FORM";
          break;
        case 1121:
          v40 = @"RAP_ADD_STREET_MAP";
          break;
        case 1122:
          v40 = @"RAP_STREET_DETAILS_FORM";
          break;
        case 1123:
          v40 = @"RAP_ADD_OTHER_MAP";
          break;
        case 1124:
          v40 = @"RAP_OTHER_DETAILS_FORM";
          break;
        case 1125:
          v40 = @"RAP_CAMERA";
          break;
        case 1126:
          v40 = @"RAP_LABEL_MAP";
          break;
        case 1127:
          v40 = @"RAP_LABEL_DETAILS_FORM";
          break;
        case 1128:
          v40 = @"RAP_SEARCH_MENU";
          break;
        case 1129:
          v40 = @"RAP_SEARCH_UNEXPECTED_RESULT_FORM";
          break;
        case 1130:
          v40 = @"RAP_SEARCH_ADDRESS_INCORRECT_FORM";
          break;
        case 1131:
          v40 = @"RAP_SEARCH_LOCATION_INCORRECT_MAP";
          break;
        case 1132:
          v40 = @"RAP_SEARCH_LOCATION_INCORRECT_DETAILS_FORM";
          break;
        case 1133:
          v40 = @"RAP_SATELLITE_IMAGE_MAP";
          break;
        case 1134:
          v40 = @"RAP_SATELLITE_IMAGE_DETAILS_FORM";
          break;
        case 1135:
          v40 = @"RAP_OTHER_FORM";
          break;
        case 1136:
          v40 = @"RAP_PRIVACY";
          break;
        case 1137:
          v40 = @"RAP_CONFIRMATION";
          break;
        case 1138:
          v40 = @"RAP_POI_MENU";
          break;
        case 1139:
          v40 = @"RAP_SEARCH_AUTOCOMPLETE_MENU";
          break;
        case 1140:
          v40 = @"RAP_ADD_A_PLACE_MAP";
          break;
        case 1141:
          v40 = @"RAP_POI_LOCATION_MAP";
          break;
        case 1142:
          v40 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_MAP";
          break;
        case 1143:
          v40 = @"RAP_POI_CLOSED_FORM";
          break;
        case 1144:
          v40 = @"RAP_CLAIM_BUSINESS_DIALOG";
          break;
        case 1145:
          v40 = @"RAP_BRAND_MENU";
          break;
        case 1146:
          v40 = @"RAP_BRAND_DETAILS_FORM";
          break;
        case 1147:
          v40 = @"RAP_LOOK_AROUND_IMAGE_QUALITY_FORM";
          break;
        case 1148:
          v40 = @"RAP_LOOK_AROUND_LABELS_STREET_FORM";
          break;
        case 1149:
          v40 = @"RAP_LOOK_AROUND_BLURRING_FORM";
          break;
        case 1150:
          v40 = @"RAP_LOOK_AROUND_REMOVE_HOME_FORM";
          break;
        case 1151:
          v40 = @"RAP_LOOK_AROUND_MENU";
          break;
        case 1152:
          v40 = @"RAP_LOOK_AROUND_LABELS_STORE_FORM";
          break;
        case 1153:
          v40 = @"RAP_LOOK_AROUND_PRIVACY_MENU";
          break;
        case 1154:
          v40 = @"RAP_LIGHTWEIGHT";
          break;
        case 1155:
          v40 = @"RAP_EDIT_PLACE_DETAILS";
          break;
        case 1156:
          v40 = @"RAP_ADD_CATEGORY";
          break;
        case 1157:
          v40 = @"RAP_ADD_HOURS";
          break;
        case 1158:
          v40 = @"RAP_EDIT_LOCATION";
          break;
        case 1159:
          v40 = @"RAP_EDIT_ENTRY_POINT";
          break;
        case 1160:
          v40 = @"RAP_LOOK_AROUND";
          break;
        case 1161:
          v40 = @"RAP_ADD_ENTRY_POINT";
          break;
        case 1201:
          v40 = @"WATCH_MAIN_MENU";
          break;
        case 1202:
          v40 = @"WATCH_MAIN_PRESS_MENU";
          break;
        case 1203:
          v40 = @"WATCH_SEARCH";
          break;
        case 1204:
          v40 = @"WATCH_DICTATION";
          break;
        case 1205:
          v40 = @"WATCH_FAVORITES";
          break;
        case 1206:
          v40 = @"WATCH_SUB_CATEGORY_LIST";
          break;
        case 1207:
          v40 = @"WATCH_SEARCH_RESULTS_LIST";
          break;
        case 1208:
          v40 = @"WATCH_MAP_VIEW";
          break;
        case 1209:
          v40 = @"WATCH_PLACECARD";
          break;
        case 1210:
          v40 = @"WATCH_ROUTE_PLANNING";
          break;
        case 1211:
          v40 = @"WATCH_ROUTE_DETAILS";
          break;
        case 1212:
          v40 = @"WATCH_NAV_TBT";
          break;
        case 1213:
          v40 = @"WATCH_NAV_MAP";
          break;
        case 1214:
          v40 = @"WATCH_NAV_PRESS_MENU";
          break;
        case 1215:
          v40 = @"WATCH_MAP_PRESS_MENU";
          break;
        case 1216:
          v40 = @"WATCH_ROUTING_PRESS_MENU";
          break;
        case 1217:
          v40 = @"WATCH_TRANSIT_MAP_VIEW";
          break;
        case 1218:
          v40 = @"WATCH_SCRIBBLE";
          break;
        case 1219:
          v40 = @"WATCH_COLLECTION_VIEW";
          break;
        case 1220:
          v40 = @"WATCH_ROUTE_PLANNING_WALKING";
          break;
        case 1221:
          v40 = @"WATCH_ROUTE_PLANNING_DRIVING";
          break;
        case 1222:
          v40 = @"WATCH_ROUTE_PLANNING_TRANSIT";
          break;
        case 1223:
          v40 = @"WATCH_PAIRED_DEVICE";
          break;
        case 1224:
          v40 = @"WATCH_NAV_DRIVING_SPLIT";
          break;
        case 1225:
          v40 = @"WATCH_NAV_DRIVING_PLATTER";
          break;
        case 1226:
          v40 = @"WATCH_NAV_DRIVING_MAP";
          break;
        case 1227:
          v40 = @"WATCH_NAV_WALKING_SPLIT";
          break;
        case 1228:
          v40 = @"WATCH_NAV_WALKING_PLATTER";
          break;
        case 1229:
          v40 = @"WATCH_NAV_WALKING_MAP";
          break;
        case 1230:
          v40 = @"WATCH_NAV_TRANSIT_SPLIT";
          break;
        case 1231:
          v40 = @"WATCH_NAV_TRANSIT_PLATTER";
          break;
        case 1232:
          v40 = @"WATCH_NAV_TRANSIT_MAP";
          break;
        case 1233:
          v40 = @"WATCH_ROUTE_INFO";
          break;
        case 1234:
          v40 = @"WATCH_NAV_CYCLING_MAP";
          break;
        case 1235:
          v40 = @"WATCH_NAV_CYCLING_PLATTER";
          break;
        case 1236:
          v40 = @"WATCH_NAV_CYCLING_SPLIT";
          break;
        case 1237:
          v40 = @"WATCH_ROUTE_PLANNING_CYCLING";
          break;
        case 1238:
          v40 = @"WATCH_SEARCH_INPUT";
          break;
        case 1239:
          v40 = @"WATCH_SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
          break;
        case 1240:
          v40 = @"WATCH_SIRI_SUGGESTION_RESUME_ROUTE";
          break;
        case 1301:
          v40 = @"PERSONALIZED_ADDRESS_LIST";
          break;
        case 1302:
          v40 = @"PERSONALIZED_ADDRESS_FORM";
          break;
        case 1303:
          v40 = @"PERSONALIZED_LABEL_FORM";
          break;
        case 1304:
          v40 = @"PERSONALIZED_EDIT_MAP";
          break;
        case 1305:
          v40 = @"PERSONALIZED_CONFIRMATION";
          break;
        case 1306:
          v40 = @"PERSONALIZED_ADDRESS_DELETE_DIALOG";
          break;
        case 1307:
          v40 = @"PERSONALIZED_ADDRESS_INFO";
          break;
        case 1308:
          v40 = @"PERSONALIZED_ADDRESS_SEARCH";
          break;
        case 1309:
          v40 = @"PERSONALIZED_ADDRESS_SEARCH_RESULTS";
          break;
        case 1310:
          v40 = @"FAVORITE_SEARCH";
          break;
        case 1311:
          v40 = @"FAVORITE_LIST";
          break;
        case 1312:
          v40 = @"FAVORITE_INFO";
          break;
        case 1313:
          v40 = @"PERSONALIZED_CONFIRMATION_WITH_PRIVACY";
          break;
        default:
          goto LABEL_2094;
      }

      goto LABEL_2095;
    }

    if (v43 > 1705)
    {
      if (v43 > 1806)
      {
        if (v43 <= 1899)
        {
          if (v43 <= 1808)
          {
            if (v43 == 1807)
            {
              v40 = @"MAPS_WEB_RELATED_PLACES_LIST";
            }

            else
            {
              v40 = @"MAPS_WEB_COLLECTION_LIST";
            }

            goto LABEL_2095;
          }

          if (v43 == 1809)
          {
            v40 = @"MAPS_WEB_DIRECTIONS";
            goto LABEL_2095;
          }

          if (v43 == 1810)
          {
            v40 = @"MAPS_WEB_SIDEBAR";
            goto LABEL_2095;
          }
        }

        else
        {
          if (v43 <= 1901)
          {
            if (v43 == 1900)
            {
              v40 = @"FIND_MY_AIR_TAG_VIEW";
            }

            else
            {
              v40 = @"FIND_MY_AIR_PODS_VIEW";
            }

            goto LABEL_2095;
          }

          switch(v43)
          {
            case 0x76E:
              v40 = @"FIND_MY_ACCESSORY_VIEW";
              goto LABEL_2095;
            case 0x76F:
              v40 = @"FIND_MY_DEVICE_VIEW";
              goto LABEL_2095;
            case 0x770:
              v40 = @"FIND_MY_PERSON_VIEW";
              goto LABEL_2095;
          }
        }
      }

      else
      {
        if (v43 > 1801)
        {
          if (v43 <= 1803)
          {
            if (v43 == 1802)
            {
              v40 = @"MAPS_WEB_SEARCH";
            }

            else
            {
              v40 = @"MAPS_WEB_SEARCH_RESULTS";
            }
          }

          else if (v43 == 1804)
          {
            v40 = @"MAPS_WEB_PUBLISHER";
          }

          else if (v43 == 1805)
          {
            v40 = @"MAPS_WEB_GUIDE";
          }

          else
          {
            v40 = @"MAPS_WEB_GUIDES_HOME";
          }

          goto LABEL_2095;
        }

        if (v43 <= 1707)
        {
          if (v43 == 1706)
          {
            v40 = @"LOOK_AROUND_VIEW_PLACECARD";
          }

          else
          {
            v40 = @"LOOK_AROUND_PIP_PLACECARD";
          }

          goto LABEL_2095;
        }

        if (v43 == 1708)
        {
          v40 = @"OFFLINE_BROWSE_ONLY_SEARCH_TRAY";
          goto LABEL_2095;
        }

        if (v43 == 1801)
        {
          v40 = @"MAPS_WEB_PLACE";
          goto LABEL_2095;
        }
      }
    }

    else if (v43 > 1502)
    {
      if (v43 > 1700)
      {
        if (v43 <= 1702)
        {
          if (v43 == 1701)
          {
            v40 = @"LOOK_AROUND_ACTION_SHEET";
          }

          else
          {
            v40 = @"LOOK_AROUND_VIEW";
          }
        }

        else if (v43 == 1703)
        {
          v40 = @"LOOK_AROUND_PLATTER";
        }

        else if (v43 == 1704)
        {
          v40 = @"LOOK_AROUND_PIP_UNAVAILABLE_ZOOM";
        }

        else
        {
          v40 = @"LOOK_AROUND_PIP_UNAVAILABLE_REGION";
        }

        goto LABEL_2095;
      }

      if (v43 > 1600)
      {
        if (v43 == 1601)
        {
          v40 = @"MENU_ITEM_DARK_MAP";
          goto LABEL_2095;
        }

        if (v43 == 1700)
        {
          v40 = @"LOOK_AROUND_PIP";
          goto LABEL_2095;
        }
      }

      else
      {
        if (v43 == 1503)
        {
          v40 = @"PLACECARD_PHONE";
          goto LABEL_2095;
        }

        if (v43 == 1504)
        {
          v40 = @"PLACECARD_URL";
          goto LABEL_2095;
        }
      }
    }

    else
    {
      if (v43 <= 1404)
      {
        if (v43 > 1402)
        {
          if (v43 == 1403)
          {
            v40 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_REQUESTING";
          }

          else
          {
            v40 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_CONFIRMED";
          }
        }

        else if (v43 == 1401)
        {
          v40 = @"ROUTING_TRAY_RIDESHARE_RIDE_OPTIONS";
        }

        else
        {
          v40 = @"ROUTING_TRAY_RIDESHARE_DETAILS_PICKING";
        }

        goto LABEL_2095;
      }

      if (v43 <= 1406)
      {
        if (v43 == 1405)
        {
          v40 = @"ROUTING_TRAY_RIDESHARE_SURGE_PRICING_DIALOG";
        }

        else
        {
          v40 = @"ROUTING_TRAY_RIDESHARE_FEEDBACK";
        }

        goto LABEL_2095;
      }

      switch(v43)
      {
        case 0x57F:
          v40 = @"ROUTING_TRAY_RIDESHARE_ENABLE_ALL";
          goto LABEL_2095;
        case 0x5DD:
          v40 = @"PLACECARD_HEADER";
          goto LABEL_2095;
        case 0x5DE:
          v40 = @"PLACECARD_ADDRESS";
LABEL_2095:

          v44 = sub_100001134();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v53 = log;
            v54 = 2112;
            v55 = v40;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "storing user A/T pair '%@ / %@'", buf, 0x16u);
          }

          goto LABEL_2098;
      }
    }

LABEL_2094:
    v40 = [NSString stringWithFormat:@"(unknown: %i)", v43];
    goto LABEL_2095;
  }

LABEL_2100:

LABEL_2101:
}

void sub_100020C88(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = sub_100001134();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "notifying observer %p", buf, 0xCu);
        }

        [v7 logMsg:*(a1 + 40)];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_100020DF4(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = sub_100001134();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "notifying observer %p", buf, 0xCu);
        }

        [v7 dailyUsageActionType:*(a1 + 64) usageString:*(a1 + 40) usageBool:*(a1 + 48) appId:*(a1 + 56)];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v4);
  }
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  [GEOPlatform setIsRunningInGeoAPd:1];
  [GEOAPServiceManager useProxyClass:objc_opt_class()];
  v1 = nw_context_copy_implicit_context();
  nw_context_set_privacy_level();

  v2 = +[GEOReferenceTimeManager sharedManager];
  v3 = +[GEOAPUtils GEOAPCachePath];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:0];

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v6 = +[NSFileManager defaultManager];
    v26 = 0;
    v7 = [v6 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v26];
    v8 = v26;

    if ((v7 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "directory create error : (%@)", &v24, 0xCu);
    }
  }

  v9 = sub_100001660();
  v10 = v9;
  v11 = kNSURLSessionLaunchOnDemandNotificationName;
  if (v9)
  {
    v12 = *(v9 + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  xpc_set_event_stream_handler(v11, v13, &stru_10003D6B8);

  v14 = +[GEOCountryConfiguration sharedConfiguration];
  v15 = [v14 countryCode];
  v16 = dispatch_get_global_queue(17, 0);
  [GEOMetroRegionAssetProvider preloadAssetForCountryCode:v15 preloadQueue:v16 completion:&stru_10003D6F8];

  v17 = +[GEOPlatform sharedPlatform];
  if ([v17 isInternalInstall])
  {
    v18 = GeoServicesConfig_GeoanalyticsdTapewormEnabled[1];
    BOOL = GEOConfigGetBOOL();

    if (!BOOL)
    {
      goto LABEL_11;
    }

    v20 = GeoServicesConfig_GeoanalyticsdTapewormTimerIntervalMs[1];
    GEOConfigGetUint64();
    v21 = GeoServicesConfig_GeoanalyticsdTapewormInstructionCount[1];
    GEOConfigGetUint64();
    GEOGetApproximateTapewormIterations();
    v17 = GEOInsertTapewormOnDispatchTimer();
  }

LABEL_11:
  v22 = sub_10000E510();
  v23 = qword_1000531D0;
  qword_1000531D0 = v22;

  sub_10000E67C(qword_1000531D0);
  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_10002122C(id a1, BOOL a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109120;
    v3[1] = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "preloading metro region assets completed (%d)", v3, 8u);
  }
}