void sub_10003BBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003BBE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindBlobParameter:"@identifier" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v10 = *(*(a1 + 56) + 8);
  v28 = *(v10 + 40);
  v11 = [v8 bindIntParameter:"@width" toValue:v9 inStatement:a2 error:&v28];
  objc_storeStrong((v10 + 40), v28);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 76);
  v14 = *(*(a1 + 56) + 8);
  v27 = *(v14 + 40);
  v15 = [v12 bindIntParameter:"@height" toValue:v13 inStatement:a2 error:&v27];
  objc_storeStrong((v14 + 40), v27);
  if (!v15)
  {
    return 0;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 64);
  v18 = *(*(a1 + 56) + 8);
  v26 = *(v18 + 40);
  v19 = [v16 bindInt64Parameter:"@data_size" toValue:v17 inStatement:a2 error:&v26];
  objc_storeStrong((v18 + 40), v26);
  if (!v19)
  {
    return 0;
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(*(a1 + 56) + 8);
  v25 = *(v22 + 40);
  v23 = [v20 bindBlobParameter:"@data" toValue:v21 inStatement:a2 error:&v25];
  objc_storeStrong((v22 + 40), v25);
  return v23;
}

id sub_10003BE24(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _shrinkBySize:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 16);

  return [v2 vacuum];
}

id sub_10003BF3C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _shrinkToSize:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 16);

  return [v2 vacuum];
}

void sub_10003C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003C254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C284(void *a1, sqlite3_stmt *a2)
{
  do
  {
    if (sqlite3_step(a2) != 100)
    {
      break;
    }

    v4 = [*(a1[4] + 16) int64ForColumn:0 inStatment:a2];
    ++*(*(a1[5] + 8) + 24);
    *(*(a1[6] + 8) + 24) += v4;
  }

  while (a1[7] + *(*(a1[6] + 8) + 24) <= a1[8]);
  return 1;
}

id sub_10003C314()
{
  if (qword_1000960D8 != -1)
  {
    dispatch_once(&qword_1000960D8, &stru_100082FE0);
  }

  v1 = qword_1000960D0;

  return v1;
}

void sub_10003C38C(id a1)
{
  qword_1000960D0 = os_log_create("com.apple.GeoServices", "ImageServicePersistence");

  _objc_release_x1();
}

void sub_10003C684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C6B4(void *a1, sqlite3_stmt *a2)
{
  if (![*(a1[4] + 16) bindInt64Parameter:"@timestamp" toValue:a1[7] inStatement:a2 error:0] || sqlite3_step(a2) != 100)
  {
    return 0;
  }

  *(*(a1[5] + 8) + 24) = [*(a1[4] + 16) intForColumn:0 inStatment:a2];
  v4 = 1;
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 16) int64ForColumn:1 inStatment:a2];
  return v4;
}

BOOL sub_10003C818(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  if (v4 == 100)
  {
    *(*(a1 + 32) + 32) = [*(*(a1 + 32) + 16) int64ForColumn:0 inStatment:a2];
    *(*(a1 + 32) + 40) = [*(*(a1 + 32) + 16) int64ForColumn:1 inStatment:a2];
  }

  return v4 == 100;
}

void sub_10003C928(uint64_t a1)
{
  [*(*(a1 + 32) + 16) tearDown];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void sub_10003CD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10003CD78(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _setup:v3];

  return v5;
}

uint64_t sub_10003CDE0()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_1000960E0;
  v5 = qword_1000960E0;
  if (!qword_1000960E0)
  {
    v6 = *off_100083078;
    v7 = *off_100083088;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_1000960E0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_10003CEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003CF0C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000960E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10003CFA4()
{
  if (!sub_10003CDE0())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class sub_10003CFF4(uint64_t a1)
{
  sub_10003CFA4();
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000960E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_10003D064(v3);
  }

  return result;
}

void sub_10003D064(uint64_t a1)
{
  sub_10003CFA4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LSRecord");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000960F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(GEOOfflinePeriodicTelemetryProvider *)v2 .cxx_destruct];
  }
}

void sub_10003D1AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 _geo_filtered:&stru_100083110];
    if ([v7 count])
    {
      v8 = +[GEOMapDataSubscriptionManager sharedManager];
      v9 = *(*(a1 + 32) + 8);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10003D620;
      v14[3] = &unk_100083138;
      v10 = *(a1 + 40);
      v11 = *(a1 + 32);
      v16 = v10;
      v14[4] = v11;
      v7 = v7;
      v15 = v7;
      [v8 _calculateTotalSizeOfOfflineSubscriptionsWithCallbackQueue:v9 completionHandler:v14];
    }

    else
    {
      sub_10003D38C(*(a1 + 32), 0, 0);
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_5;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 8);
    if (v13)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003D378;
      block[3] = &unk_100083BC0;
      v19 = v12;
      v18 = v6;
      dispatch_async(v13, block);

      v7 = v19;
LABEL_5:
    }
  }
}

void sub_10003D38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = GeoOfflineConfig_AutomaticUpdatesEnabled[1];
    BOOL = GEOConfigGetBOOL();
    v7 = GeoOfflineConfig_OptimizeStorageEnabled[1];
    v8 = GEOConfigGetBOOL();
    if (qword_100096100 != -1)
    {
      dispatch_once(&qword_100096100, &stru_1000831A0);
    }

    v9 = qword_1000960F8;
    if (os_log_type_enabled(qword_1000960F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 1024;
      LODWORD(v23) = BOOL;
      WORD2(v23) = 1024;
      *(&v23 + 6) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[Offline] Reporting subscription count: %llu, consumedDiskSpace: %{bytes}llu, automaticUpdatesEnabled: %i, optimizeStorageEnabled: %i", buf, 0x22u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003D72C;
    v15[3] = &unk_100083180;
    v15[4] = a2;
    v15[5] = a3;
    v16 = BOOL;
    v17 = v8;
    v10 = @"com.apple.GeoServices.OfflineRegionsStatistics";
    v11 = v15;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v12 = off_100096068;
    v21 = off_100096068;
    if (!off_100096068)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000266A0;
      *&v23 = &unk_1000830D0;
      *(&v23 + 1) = &v18;
      v13 = sub_10002653C();
      v14 = dlsym(v13, "AnalyticsSendEventLazy");
      *(*(*(&v23 + 1) + 8) + 24) = v14;
      off_100096068 = *(*(*(&v23 + 1) + 8) + 24);
      v12 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v12)
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v12(@"com.apple.GeoServices.OfflineRegionsStatistics", v11);
  }
}

void sub_10003D600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003D620(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(*(a1 + 32) + 8);
      if (v7)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_10003D718;
        v8[3] = &unk_100083BC0;
        v10 = v6;
        v9 = v5;
        dispatch_async(v7, v8);
      }
    }
  }

  else
  {
    sub_10003D38C(*(a1 + 32), [*(a1 + 40) count], a2);
    (*(*(a1 + 48) + 16))();
  }
}

id sub_10003D72C(uint64_t a1)
{
  v8[0] = @"regionCount";
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
  v9[0] = v2;
  v8[1] = @"consumedDiskSpace";
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v9[1] = v3;
  v8[2] = @"automaticUpdatesEnabled";
  v4 = [NSNumber numberWithBool:*(a1 + 48)];
  v9[2] = v4;
  v8[3] = @"optimizeStorageEnabled";
  v5 = [NSNumber numberWithBool:*(a1 + 49)];
  v9[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

void sub_10003D868(id a1)
{
  qword_1000960F8 = os_log_create("com.apple.GeoServices", "PeriodicTelemetry");

  _objc_release_x1();
}

BOOL sub_10003D8AC(id a1, GEOMapDataSubscription *a2)
{
  v2 = a2;
  v3 = ([(GEOMapDataSubscription *)v2 dataTypes]& 0x400) != 0 && [(GEOMapDataSubscription *)v2 policy]== 1;

  return v3;
}

id sub_10003DFCC()
{
  if (qword_100096110 != -1)
  {
    dispatch_once(&qword_100096110, &stru_100083238);
  }

  v1 = qword_100096108;

  return v1;
}

void sub_10003E020(id a1)
{
  qword_100096108 = os_log_create("com.apple.GeoServices", "URLShortener");

  _objc_release_x1();
}

void sub_10003E6D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_10003DFCC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138478595;
    v12 = v8;
    v13 = 2160;
    v14 = 1752392040;
    v15 = 2113;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Lengthen result: %{private}@ - %{private, mask.hash}@ - %{public}@", &v11, 0x2Au);
  }

  [*(a1 + 32) requestCompleted:v9];
  [*(a1 + 40) _processLengthenResponse:v8 data:v7 error:v9 completion:*(a1 + 48)];
}

void sub_10003EACC(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = sub_10003DFCC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "NO";
    v18 = 1752392040;
    v19 = 2113;
    *buf = 141558787;
    if (a3)
    {
      v10 = "YES";
    }

    v20 = v7;
    v21 = 2081;
    v22 = v10;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Lengthened URL: %{private, mask.hash}@ wasCached: %{private}s error: %{public}@", buf, 0x2Au);
  }

  [*(a1 + 32) setUrl:v7];
  [*(a1 + 32) setError:v8];
  v11 = *(a1 + 48);
  global_queue = geo_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003ED88;
  block[3] = &unk_1000838C8;
  v16 = *(a1 + 32);
  dispatch_async(global_queue, block);

  if (v7 && (a3 & 1) == 0 && *(a1 + 52) == 1)
  {
    v13 = +[GEOPDPlaceCache sharedCache];
    v14 = [*(a1 + 40) url];
    [v13 storeShortMapURL:v14 longMapsURL:v7];
  }
}

void sub_10003ECC0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _expandURL:*(a1 + 40) asyncCompletion:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = [NSError GEOErrorWithCode:-10 reason:@"Invalid options"];
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

void sub_10003F0B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) requestCompleted:v9];
  v10 = sub_10003DFCC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138478595;
    v12 = v8;
    v13 = 2160;
    v14 = 1752392040;
    v15 = 2113;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Shorten result: %{private}@ - %{private, mask.hash}@ - %{public}@", &v11, 0x2Au);
  }

  [*(a1 + 40) _processShortenResponse:v8 data:v7 error:v9 completion:*(a1 + 48)];
}

void sub_10003F4B4(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = sub_10003DFCC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "NO";
    v18 = 1752392040;
    v19 = 2113;
    *buf = 141558787;
    if (a3)
    {
      v10 = "YES";
    }

    v20 = v7;
    v21 = 2081;
    v22 = v10;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Shortened URL: %{private, mask.hash}@ wasCached: %{private}s error: %{public}@", buf, 0x2Au);
  }

  [*(a1 + 32) setUrl:v7];
  [*(a1 + 32) setError:v8];
  v11 = *(a1 + 48);
  global_queue = geo_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F770;
  block[3] = &unk_1000838C8;
  v16 = *(a1 + 32);
  dispatch_async(global_queue, block);

  if (v7 && (a3 & 1) == 0 && *(a1 + 52) == 1)
  {
    v13 = +[GEOPDPlaceCache sharedCache];
    v14 = [*(a1 + 40) url];
    [v13 storeShortMapURL:v7 longMapsURL:v14];
  }
}

void sub_10003F6A8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _shortenURL:*(a1 + 40) asyncCompletion:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = [NSError GEOErrorWithCode:-10 reason:@"Invalid options"];
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

id sub_10003FD64(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (xpc_dictionary_get_data(v4, "mcfg", 0) && ([v3 hasEntitlement:@"com.apple.geoservices.custom-manifest-configuration"] & 1) == 0)
  {
    v8 = GEOGetTileLoadingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [v3 bundleIdentifier];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Un-entitled process %{public}@ is trying to set a custom manifest configuration", &v11, 0xCu);
    }

    v7 = [GEOTileLoader modernLoaderForResourceManifestConfiguration:0 locale:0];
  }

  else
  {
    objc_opt_class();
    v5 = GEODecodeXPCValue();
    v6 = sub_100002560(v4);
    v7 = [GEOTileLoader modernLoaderForResourceManifestConfiguration:v5 locale:v6];
  }

  return v7;
}

BOOL sub_10003FF00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v13 = a5;
  v14 = a3;
  v15 = objc_alloc_init(GEOTileEnumeration);
  v16 = [NSData dataWithBytes:a2 length:16];
  [v15 setKey:v16];

  if (*(a1 + 40))
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  [v15 setData:v17];

  [v15 setCurrent:a4];
  [v15 setETag:v13];

  [v15 setOriginalLoadReason:a6];
  [v15 setAge:a7];
  v18 = xpc_dictionary_create(0, 0, 0);
  [v15 encodeToXPCDictionary:v18];
  v19 = xpc_connection_send_message_with_reply_sync(*(a1 + 32), v18);
  v20 = xpc_get_type(v19) == &_xpc_type_dictionary && xpc_dictionary_get_BOOL(v19, "cont");

  return v20;
}

void sub_100040E98(uint64_t a1, uint64_t value)
{
  xpc_dictionary_set_uint64(*(a1 + 32), "sz", value);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  xpc_connection_send_message(v3, v4);
}

void sub_100041050(uint64_t a1, uint64_t value)
{
  xpc_dictionary_set_uint64(*(a1 + 32), "sz", value);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  xpc_connection_send_message(v3, v4);
}

void sub_100042D04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v20 = a5;
  v10 = a6;
  v11 = a3;
  if ((GEOTileKeyEquals() & 1) == 0)
  {
    v12 = GEOStringFromTileKey();
    v13 = GEOStringFromTileKey();
    NSLog(@"Asked to load key %@ and instead got back %@. See <rdar://problem/13307083>", v12, v13);
  }

  if ((*(a1 + 88) & 1) == 0 && (GEOTileKeyIsOffline() & 1) == 0)
  {
    if (v10)
    {
      v14 = [v10 objectForKeyedSubscript:GEOTileLoadResultSourceKey];
      if ([v14 integerValue] == 2)
      {

LABEL_10:
        GEOMachAbsoluteTimeGetCurrent();
        v16 = v15;
        v17 = +[GEOOfflineStateManager shared];
        [v17 reportTileResponse:a2 usedInterfaces:0 forCohortId:*(a1 + 32) duration:v20 error:v16 - *(a1 + 64)];

        goto LABEL_11;
      }
    }

    if (!v20)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v18 = [v10 objectForKeyedSubscript:GEOTileLoadResultIsPreliminaryKey];
  v19 = [v18 BOOLValue];

  [*(a1 + 40) _receivedTile:v11 error:v20 info:v10 forKey:a2 forPeer:*(a1 + 48)];
  if ((v19 & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 56));
  }
}

void sub_100042EA8(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  [v2 removeObject:a1[6]];

  v3 = a1[7];
  v4 = a1[8];

  xpc_connection_send_message(v3, v4);
}

void sub_100043198(id a1)
{
  qword_100096120 = objc_alloc_init(_GEOImageServiceRequestConfig);

  _objc_release_x1();
}

void sub_100043334(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = a1[4];
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  if (v10)
  {
    v7 = a1[5];
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(v7 + 16);
  }

  else
  {
    v9 = a1[6];
    if (!v9)
    {
      goto LABEL_9;
    }

    v8 = *(v9 + 16);
  }

  v8();
LABEL_9:
}

void sub_10004342C(id a1)
{
  qword_100096128 = objc_alloc_init(GEOImageServiceServerRequester);

  _objc_release_x1();
}

uint64_t sub_1000436E4(void *a1)
{
  v2 = a1[7];
  if (a1[4])
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = a1[5];
    v4 = a1[6];
  }

  return (*(v2 + 16))(v2, v3, v4);
}

void sub_100043710(id a1)
{
  qword_100096138 = os_log_create("com.apple.GeoServices", "ResourceRequester");

  _objc_release_x1();
}

id sub_100043A8C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 40) filename];
  [*(*(a1 + 32) + 48) setObject:v4 atIndexedSubscript:a2];

  v5 = *(a1 + 48);
  v6 = *(*(a1 + 32) + 56);

  return [v6 setObject:v5 atIndexedSubscript:a2];
}

void sub_100043E2C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [*(*(a1 + 32) + 48) addObject:&stru_100086258];
  [*(*(a1 + 32) + 56) addObject:*(a1 + 40)];
  v5 = [*(a1 + 48) objectForKeyedSubscript:v6];
  if (!v5)
  {
    v5 = +[NSMutableIndexSet indexSet];
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v6];
  }

  [v5 addIndex:a3];
}

void sub_100043F44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _failAllPendingRequests];
}

void sub_1000445E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 objectAtIndexedSubscript:a3];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) _finished:v9 withResult:v6 error:0];

  [v7 addObjectsFromArray:v8];
}

void sub_100044B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100044B4C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 wantsUnpacked:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_100044B94(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 finishedResource:*(a1 + 32) withResult:*(a1 + 40) error:*(a1 + 48)])
  {
    [*(a1 + 56) addObject:v3];
  }
}

id sub_100044EBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3])
  {
    dispatch_source_set_timer(v2[3], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(*(*(a1 + 32) + 24), &stru_100083490);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    v2 = *(a1 + 32);
  }

  return [(dispatch_source_t *)v2 _failAllPendingRequests];
}

void sub_100045240(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100045260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 16) removeObject:WeakRetained];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: strongLoader != nil", buf, 2u);
  }

  if (!v6)
  {
    v8 = [v5 count];
    if (v8 == [*(a1 + 40) count])
    {
      v9 = [NSURL fileURLWithPath:*(a1 + 48)];
      v10 = GEOResourceDevResourcesPath();
      v11 = [NSURL fileURLWithPath:v10 isDirectory:1];

      v12 = +[NSFileManager defaultManager];
      v13 = GEOResourceDevResourcesPath();
      v14 = [v12 contentsOfDirectoryAtPath:v13 error:0];
      v15 = [NSSet setWithArray:v14];

      v16 = [v15 allObjects];
      v17 = [v16 _geo_map:&stru_100083420];
      v18 = [NSSet setWithArray:v17];

      v19 = *(a1 + 40);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000456AC;
      v34[3] = &unk_100083448;
      v20 = v15;
      v35 = v20;
      v21 = v11;
      v36 = v21;
      v22 = v18;
      v37 = v22;
      v23 = v9;
      v38 = v23;
      v24 = [v19 _geo_compactMap:v34];
      v25 = [v24 count];
      if (v25 == [*(a1 + 40) count])
      {
        [*(a1 + 32) didResolvePaths:v24 forResources:*(a1 + 40)];
        v6 = 0;
      }

      else
      {
        v33 = v20;
        v29 = [*(a1 + 40) count];
        v30 = v29 - [v24 count];
        v31 = [NSString stringWithFormat:@"unable to resolve name for %d resources", v30];
        v6 = [NSError GEOErrorWithCode:-11 reason:v31];

        v32 = sub_1000018BC();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v40 = v30;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't get name for %d resources", buf, 8u);
        }

        [*(a1 + 32) failedToResolveResources:*(a1 + 40) withError:v6];
        v20 = v33;
      }

      goto LABEL_11;
    }

    v6 = [NSError GEOErrorWithCode:-11 reason:@"loadedResources.count != input remaining.count"];
  }

  v26 = sub_1000018BC();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = [*(a1 + 40) count];
    v28 = [v5 count];
    *buf = 67109376;
    v40 = v27;
    v41 = 1024;
    v42 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Requested %d resources, got %d resources", buf, 0xEu);
  }

  [*(a1 + 32) failedToResolveResources:*(a1 + 40) withError:v6];
LABEL_11:
}

id sub_1000456AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 filename];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v3 filename];
    v8 = v6;
LABEL_5:
    v10 = [v8 URLByAppendingPathComponent:v7 isDirectory:0];
    goto LABEL_7;
  }

  v9 = [v3 filename];
  v7 = GEOCanonicalResourceNameForVersionedName();

  if ([*(a1 + 48) containsObject:v7])
  {
    v8 = *(a1 + 40);
    goto LABEL_5;
  }

  v11 = *(a1 + 56);
  v12 = [v3 filename];
  v10 = [v11 URLByAppendingPathComponent:v12 isDirectory:0];

LABEL_7:

  return v10;
}

void sub_100046540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSURLQueryItem queryItemWithName:a2 value:a3];
  [*(a1 + 32) addObject:v4];
}

void sub_100046D5C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

  if (v5)
  {
    v8 = v5;
    v9 = +[GEOExperimentConfiguration sharedConfiguration];
    v10 = [v8 datasetAbStatus];
    [v9 refreshDatasetABStatus:v10];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v8 routes];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v18 + 1) + 8 * v15) unpackLatLngVertices];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    v16 = a1[7];
    if (v16)
    {
      (*(v16 + 16))(v16, v8);
    }

    if ([v8 hasRedactedAnalyticData])
    {
      v17 = [v8 redactedAnalyticData];
      [GEORequestResponseMetadataRecorder recordRedactedDirectionsRequestResponseAnalyticsData:v17 forRouteIdentifier:a1[4] predictedDepartureTimeDelta:a1[5]];
    }

    goto LABEL_17;
  }

  if (a1[8])
  {
    v8 = [v6 _geo_directionsErrorInfo];
    (*(a1[8] + 16))();
LABEL_17:
  }
}

void sub_100047244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100047438(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setClientInfo:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(a1 + 32);

  return [v7 send];
}

void sub_1000475A8(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 clientInfo];
  if (v10)
  {
    v6 = [v10 domain];
    v7 = GEOErrorDomain();
    if ([v6 isEqual:v7])
    {
      v8 = [v10 code];

      if (v8 != -11)
      {
        goto LABEL_9;
      }

      if (qword_100096150 != -1)
      {
        dispatch_once(&qword_100096150, &stru_100083598);
      }

      v7 = v5;
      v6 = v10;
      v5 = qword_100096148;
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  [*(*(a1 + 32) + 8) setValue:v5];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v10);
  }
}

void sub_1000476E8(id a1)
{
  v1 = objc_alloc_init(GEOPairedDeviceClientInfo);
  v2 = qword_100096148;
  qword_100096148 = v1;

  [qword_100096148 setClientVersion:1];
  [qword_100096148 addSupportedMessages:101];
  [qword_100096148 addSupportedMessages:102];
  [qword_100096148 addSupportedMessages:104];
  v3 = qword_100096148;

  [v3 addSupportedMessages:2];
}

void sub_100048080(uint64_t a1)
{
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_100048630;
  v61 = sub_10004865C;
  v62 = 0;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100048664;
  v54[3] = &unk_100083BC0;
  v55 = *(a1 + 32);
  v56 = *(a1 + 48);
  v2 = objc_retainBlock(v54);
  v3 = v58[5];
  v58[5] = v2;

  v4 = objc_alloc_init(NSMutableSet);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) configuration];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000486EC;
  v52[3] = &unk_1000836C0;
  v25 = v4;
  v53 = v25;
  [v5 _forEachPeerMatchingConfiguration:v6 perform:v52];

  if ([v25 count])
  {
    v66[0] = @"message";
    v66[1] = @"userInfo";
    v67[0] = @"resourcemanifest.didChangeActiveTileGroup";
    v64 = @"messageTimestamp";
    GEOGetMonotonicTime();
    v7 = [NSNumber numberWithDouble:?];
    v65 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v67[1] = v8;
    v21 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];

    v24 = _CFXPCCreateXPCObjectFromCFObject();
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = [v25 copy];
    v10 = [v9 countByEnumeratingWithState:&v48 objects:v63 count:16];
    if (v10)
    {
      v23 = *v49;
      obj = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v48 + 1) + 8 * v11);
          v46[0] = 0;
          v46[1] = v46;
          v46[2] = 0x2020000000;
          v47 = 0;
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1000486F8;
          v41[3] = &unk_100083990;
          v44 = v46;
          v42 = v25;
          v43 = v12;
          v45 = &v57;
          v13 = objc_retainBlock(v41);
          v35 = 0;
          v36 = &v35;
          v37 = 0x3032000000;
          v38 = sub_10004879C;
          v39 = sub_1000487AC;
          v40 = 0;
          v14 = *(*(a1 + 40) + 40);
          v29 = _NSConcreteStackBlock;
          v30 = 3221225472;
          v31 = sub_1000487B4;
          v32 = &unk_1000836E8;
          v15 = v13;
          v33 = v15;
          v34 = &v35;
          v16 = geo_dispatch_timer_create_on_queue();
          v17 = v36[5];
          v36[5] = v16;

          dispatch_activate(v36[5]);
          v18 = [v12 connection];
          v19 = *(*(a1 + 40) + 40);
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_100048834;
          v26[3] = &unk_100083710;
          v20 = v15;
          v27 = v20;
          v28 = &v35;
          [v18 sendMessage:v24 withReply:v19 handler:v26];

          _Block_object_dispose(&v35, 8);
          _Block_object_dispose(v46, 8);
          v11 = v11 + 1;
        }

        while (v10 != v11);
        v9 = obj;
        v10 = [obj countByEnumeratingWithState:&v48 objects:v63 count:16];
      }

      while (v10);
    }
  }

  else
  {
    (*(v58[5] + 16))();
  }

  _Block_object_dispose(&v57, 8);
}

id sub_100048630(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100048664(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = GEOActiveTileGroupChangedInternalDarwinNotificationName();
  notify_post([v3 UTF8String]);

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = GEOActiveTileGroupChangedNotification;

  return notify_post(v5);
}

void sub_1000486F8(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    [*(a1 + 32) removeObject:*(a1 + 40)];
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      if (![*(a1 + 32) count])
      {
        (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
        v3 = *(*(a1 + 56) + 8);
        v4 = *(v3 + 40);
        *(v3 + 40) = 0;
      }
    }
  }
}

uint64_t sub_10004879C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000487B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void sub_100048834(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void sub_100048B28(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = [v10 data];
    [v6 setObject:v7 forKey:@"manifestData"];

    v8 = *(a1 + 32);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v9 = *(a1 + 32);
    v6 = [NSDictionary _geo_replyDictionaryForError:v5 key:@"err"];
    v8 = v9;
  }

  [v8 sendReply:v6];

LABEL_6:
}

void sub_100049360(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary _geo_replyDictionaryForError:a2 key:@"err"];
  [v2 sendReply:v3];
}

void sub_100049558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary _geo_replyDictionaryForError:a2 key:@"err"];
  [v2 sendReply:v3];
}

void sub_100049698(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary _geo_replyDictionaryForError:a2 key:@"err"];
  [v2 sendReply:v3];
}

void sub_100049964(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary _geo_replyDictionaryForError:a2 key:@"err"];
  [v2 sendReply:v3];
}

void sub_100049CBC(id a1, NSArray *a2)
{
  v2 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [GEOResourceManifestConfiguration configurationWithPairedDevice:*(*(&v10 + 1) + 8 * v6)];
        v8 = [GEOResourceManifestManager modernManagerForConfiguration:v7];
        v9 = [v8 serverProxy];
        [v9 performOpportunisticResourceLoading];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_100049E68(id a1)
{
  qword_100096170 = objc_alloc_init(GEOResourceManifestConfiguration);

  _objc_release_x1();
}

void sub_10004A044(uint64_t a1)
{
  v4 = objc_alloc_init(GEOResourceManifestConfiguration);
  [*(*(a1 + 32) + 16) addObject:v4];
  v2 = +[GEOResourceManifestManager modernManager];
  [v2 addServerProxyObserver:*(a1 + 32)];

  v3 = +[GEOResourceManifestManager modernManager];
  [v3 openServerConnection];
}

void sub_10004A164(uint64_t a1)
{
  v2 = +[GEONetworkObserver sharedNetworkObserver];
  v3 = [v2 isNetworkConstrained];

  v4 = *(*(a1 + 32) + 32);
  if (v3)
  {
    if (v4)
    {
      return;
    }

    v5 = GeoServicesConfig_ConstrainedNetworkManifestAssertionEnabled[1];
    if (!GEOConfigGetBOOL())
    {
      return;
    }

    v12 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
    v6 = [v12 addInternalAssertionForReason:@"constrained-network"];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    v9 = v12;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v10 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
    [v10 removeAssertion:*(*(a1 + 32) + 32)];

    v11 = *(a1 + 32);
    v9 = *(v11 + 32);
    *(v11 + 32) = 0;
  }
}

id sub_10004A380(uint64_t a1)
{
  [*(a1 + 32) _fireOpportunisticResourceLoads];
  v2 = *(a1 + 40);

  return [v2 setTaskCompleted];
}

void sub_10004A68C(uint64_t a1)
{
  if (sub_10000BF18())
  {
    v2 = [sub_10000C0DC() sharedInstance];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10004A738;
    v3[3] = &unk_100083610;
    v4 = *(a1 + 32);
    [v2 getDevicesWithBlock:v3];
  }
}

void sub_10004A738(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [GEOResourceManifestConfiguration configurationWithPairedDevice:*(*(&v38 + 1) + 8 * i)];
        v10 = [v9 dataDirectoryFor:7];
        if ([v10 length])
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v6);
  }

  v11 = +[NSFileManager defaultManager];
  v12 = GEOResourcesPairedDevicesCachesDirectory();
  v13 = [v11 contentsOfDirectoryAtPath:v12 error:0];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * j);
        v19 = GEOResourcesPairedDevicesCachesDirectory();
        v20 = [v19 stringByAppendingPathComponent:v18];

        if (([v3 containsObject:v20] & 1) == 0)
        {
          v21 = v4;
          v22 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            v43 = v20;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Paired device data directory is obsolete. Removing it... (%{private}@)", buf, 0xCu);
          }

          v23 = +[NSFileManager defaultManager];
          v33 = 0;
          v24 = [v23 removeItemAtPath:v20 error:&v33];
          v25 = v33;

          if ((v24 & 1) == 0)
          {
            v26 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v43 = v25;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to remove obsolete paired device directory: %{public}@", buf, 0xCu);
            }
          }

          v4 = v21;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v15);
  }

  if ([v4 count])
  {
    v27 = *(*(a1 + 32) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AB6C;
    block[3] = &unk_100083940;
    v31 = v4;
    v32 = *(a1 + 32);
    dispatch_async(v27, block);
  }
}

void sub_10004AB6C(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v5 = [GEOResourceManifestConfiguration configurationWithPairedDevice:v2];

  if (([*(*(a1 + 40) + 16) containsObject:v5] & 1) == 0)
  {
    [*(*(a1 + 40) + 16) addObject:v5];
    v3 = [GEOResourceManifestManager modernManagerForConfiguration:v5];
    [v3 addServerProxyObserver:*(a1 + 40)];

    v4 = [GEOResourceManifestManager modernManagerForConfiguration:v5];
    [v4 openServerConnection];
  }
}

void sub_10004AC4C(id a1, BGSystemTask *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10004AEF4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = 1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Generating telemetry for type: %llu", buf, 0xCu);
  }

  v4 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  objc_opt_self();
  *buf = objc_opt_class();
  v5 = [NSArray arrayWithObjects:buf count:1];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:buf count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        dispatch_group_enter(v4);
        v11 = objc_alloc_init(v10);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10004AF48;
        v17[3] = &unk_100083EC0;
        v18 = v4;
        [v11 reportTelemetryForType:1 completionHandler:v17];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:buf count:16];
    }

    while (v7);
  }

  global_queue = geo_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004AF50;
  block[3] = &unk_1000837A0;
  v15 = v2;
  v16 = 1;
  v13 = v2;
  dispatch_group_notify(v4, global_queue, block);
}

id sub_10004AEF4()
{
  if (qword_100096180 != -1)
  {
    dispatch_once(&qword_100096180, &stru_1000837C0);
  }

  v1 = qword_100096178;

  return v1;
}

id sub_10004AF50(uint64_t a1)
{
  v2 = sub_10004AEF4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Finished generating telemetry for type: %llu", &v5, 0xCu);
  }

  return [*(a1 + 32) setTaskCompleted];
}

void sub_10004B000(id a1)
{
  qword_100096178 = os_log_create("com.apple.GeoServices", "PeriodicTelemetry");

  _objc_release_x1();
}

id sub_10004B204(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(GEOPDPlaceResponse);
  v3 = [v1 _geo_map:&stru_100083C78];

  v4 = [v3 mutableCopy];
  [v2 setMapsResults:v4];

  return v2;
}

id sub_10004B294(id a1, GEOPDPlace *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(GEOPDMapsResult);
  [v3 setResultType:1];
  [v3 setPlace:v2];

  return v3;
}

void sub_10004B76C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = +[GEOPDPlace failedPlaceDataForMuid:](GEOPDPlace, "failedPlaceDataForMuid:", [v7 muid]);
  [*(*(a1 + 32) + 32) addObject:v5];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = +[NSMutableIndexSet indexSet];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }

  [v6 addIndex:a3];
}

void sub_10004BFB4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v6 = *(a1 + 32);
    v7 = a3;
LABEL_3:
    v8 = [v6 objectAtIndexedSubscript:v7];
    v9 = *(a1 + 48);
    v10 = [*(a1 + 56) _finished:v8 withResult:v13 error:0];
    [v9 addObjectsFromArray:v10];

    goto LABEL_4;
  }

  v11 = [[GEOMapItemIdentifier alloc] initWithPlace:v13];
  v12 = [v5 indexOfObject:v11];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addIndex:v12];
    v6 = *(a1 + 32);
    v7 = v12;
    goto LABEL_3;
  }

LABEL_4:
}

void sub_10004C3A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 finishedIdentifier:*(a1 + 32) withResult:*(a1 + 40) error:*(a1 + 48)])
  {
    [*(a1 + 56) addObject:v3];
  }
}

void sub_10004D4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 176), 8);
  _Block_object_dispose((v43 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D510(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004D528(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_10004D598(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_10004D608(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64) != 4)
  {
    v5 = [v3 resultsWithResultType:1];
    if ([v4 status] || objc_msgSend(v5, "count"))
    {
      if ([v5 count] != 1)
      {
LABEL_13:

        goto LABEL_14;
      }

      v6 = [v5 firstObject];
      [*(a1 + 32) requestType];
      if (GEOMapItemHandleShouldStoreRequestData())
      {
        v7 = objc_alloc_init(GEOMapItemInitialRequestData);
        [v6 setRequestData:v7];

        v8 = [*(a1 + 32) requestType];
        v9 = [v6 requestData];
        [v9 setRequestType:v8];

        v10 = [*(a1 + 32) placeRequestParameters];
        v11 = [v10 copy];
        v12 = [v6 requestData];
        [v12 setPlaceRequestParameters:v11];
      }

      if (![v6 status])
      {
        v13 = [*(a1 + 40) pdPlaceCache];
        [v13 storePlace:v6 forRequest:*(a1 + 32)];

        sub_10004D8E8(*(a1 + 40), v6, *(a1 + 48));
      }
    }

    else
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 32);
        v19 = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Caching negative response for request %@", &v19, 0xCu);
      }

      v6 = objc_alloc_init(GEOPDPlace);
      [v6 setNilPlace:1];
      v16 = [*(a1 + 40) pdPlaceCache];
      [v16 storePlace:v6 forRequest:*(a1 + 32)];
    }

    goto LABEL_13;
  }

LABEL_14:
  v17 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134217984;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Response from the server: %p", &v19, 0xCu);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    (*(v18 + 16))(v18, v4, 0);
  }
}

uint64_t sub_10004D8C8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10004D8E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[GEOPlatform sharedPlatform];
    if (![v7 isInternalInstall])
    {
LABEL_123:

      goto LABEL_124;
    }

    v8 = [v6 count];

    if (v8)
    {
      v7 = [v5 calculateMissingComponentTypes:v6];
      if ([v7 count])
      {
        v9 = +[NSMutableArray array];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = v7;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            v14 = 0;
            do
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v19 + 1) + 8 * v14) intValue];
              v16 = @"COMPONENT_TYPE_UNKNOWN";
              switch(v15)
              {
                case 0:
                  break;
                case 1:
                  v16 = @"COMPONENT_TYPE_ENTITY";
                  break;
                case 2:
                  v16 = @"COMPONENT_TYPE_PLACE_INFO";
                  break;
                case 3:
                  v16 = @"COMPONENT_TYPE_ROAD_ACCESS_INFO";
                  break;
                case 4:
                  v16 = @"COMPONENT_TYPE_BOUNDS";
                  break;
                case 5:
                  v16 = @"COMPONENT_TYPE_ADDRESS";
                  break;
                case 6:
                  v16 = @"COMPONENT_TYPE_RATING";
                  break;
                case 7:
                  v16 = @"COMPONENT_TYPE_REVIEW";
                  break;
                case 8:
                  v16 = @"COMPONENT_TYPE_PHOTO";
                  break;
                case 9:
                  v16 = @"COMPONENT_TYPE_HOURS";
                  break;
                case 10:
                  v16 = @"COMPONENT_TYPE_TRANSIT_INFO";
                  break;
                case 11:
                  v16 = @"COMPONENT_TYPE_TRANSIT_SCHEDULE";
                  break;
                case 12:
                  v16 = @"COMPONENT_TYPE_ETA";
                  break;
                case 13:
                  v16 = @"COMPONENT_TYPE_FLYOVER";
                  break;
                case 14:
                  v16 = @"COMPONENT_TYPE_RAW_ATTRIBUTE";
                  break;
                case 15:
                  v16 = @"COMPONENT_TYPE_AMENITIES";
                  break;
                case 16:
                  v16 = @"COMPONENT_TYPE_STYLE_ATTRIBUTES";
                  break;
                case 20:
                  v16 = @"COMPONENT_TYPE_TRANSIT_INCIDENT";
                  break;
                case 21:
                  v16 = @"COMPONENT_TYPE_TRANSIT_ASSOCIATED_INFO";
                  break;
                case 22:
                  v16 = @"COMPONENT_TYPE_TEXT_BLOCK";
                  break;
                case 23:
                  v16 = @"COMPONENT_TYPE_FACTOID";
                  break;
                case 24:
                  v16 = @"COMPONENT_TYPE_TRANSIT_ATTRIBUTION";
                  break;
                case 25:
                  v16 = @"COMPONENT_TYPE_BUSINESS_CLAIM";
                  break;
                case 26:
                  v16 = @"COMPONENT_TYPE_CAPTIONED_PHOTO";
                  break;
                case 27:
                  v16 = @"COMPONENT_TYPE_TRANSIT_INFO_SNIPPET";
                  break;
                case 29:
                  v16 = @"COMPONENT_TYPE_EXTERNAL_ACTION";
                  break;
                case 30:
                  v16 = @"COMPONENT_TYPE_RESULT_SNIPPET";
                  break;
                case 31:
                  v16 = @"COMPONENT_TYPE_ADDRESS_OBJECT";
                  break;
                case 32:
                  v16 = @"COMPONENT_TYPE_SIMPLE_RESTAURANT_MENU_TEXT";
                  break;
                case 33:
                  v16 = @"COMPONENT_TYPE_RESTAURANT_RESERVATION_LINK";
                  break;
                case 34:
                  v16 = @"COMPONENT_TYPE_SPATIAL_LOOKUP_RESULT";
                  break;
                case 36:
                  v16 = @"COMPONENT_TYPE_TIP";
                  break;
                case 37:
                  v16 = @"COMPONENT_TYPE_PLACECARD_URL";
                  break;
                case 38:
                  v16 = @"COMPONENT_TYPE_ASSOCIATED_APP";
                  break;
                case 39:
                  v16 = @"COMPONENT_TYPE_MESSAGE_LINK";
                  break;
                case 40:
                  v16 = @"COMPONENT_TYPE_QUICK_LINK";
                  break;
                case 41:
                  v16 = @"COMPONENT_TYPE_RAP";
                  break;
                case 42:
                  v16 = @"COMPONENT_TYPE_OFFLINE_AREA";
                  break;
                case 43:
                  v16 = @"COMPONENT_TYPE_LOCATION_EVENT";
                  break;
                case 44:
                  v16 = @"COMPONENT_TYPE_SUPPORTS_OFFLINE_MAPS";
                  break;
                case 45:
                  v16 = @"COMPONENT_TYPE_OFFLINE_IDENTIFIER";
                  break;
                case 46:
                  v16 = @"COMPONENT_TYPE_OFFLINE_QUAD_NODES";
                  break;
                case 47:
                  v16 = @"COMPONENT_TYPE_OFFLINE_SIZE";
                  break;
                case 48:
                  v16 = @"COMPONENT_TYPE_VENUE_INFO";
                  break;
                case 49:
                  v16 = @"COMPONENT_TYPE_OFFLINE_UPDATE_MANIFEST";
                  break;
                case 50:
                  v16 = @"COMPONENT_TYPE_CONTAINED_PLACE";
                  break;
                case 51:
                  v16 = @"COMPONENT_TYPE_WIFI_FINGERPRINT";
                  break;
                case 52:
                  v16 = @"COMPONENT_TYPE_ICON";
                  break;
                case 53:
                  v16 = @"COMPONENT_TYPE_PRICE_DESCRIPTION";
                  break;
                case 54:
                  v16 = @"COMPONENT_TYPE_BROWSE_CATEGORIES";
                  break;
                case 55:
                  v16 = @"COMPONENT_TYPE_STOREFRONT";
                  break;
                case 56:
                  v16 = @"COMPONENT_TYPE_GROUND_VIEW_LABEL";
                  break;
                case 57:
                  v16 = @"COMPONENT_TYPE_ANNOTATED_ITEM_LIST";
                  break;
                case 58:
                  v16 = @"COMPONENT_TYPE_POI_EVENT";
                  break;
                case 59:
                  v16 = @"COMPONENT_TYPE_STOREFRONT_PRESENTATION";
                  break;
                case 60:
                  v16 = @"COMPONENT_TYPE_PLACECARD_LAYOUT";
                  break;
                case 61:
                  v16 = @"COMPONENT_TYPE_PROTOTYPE_CONTAINER";
                  break;
                case 62:
                  v16 = @"COMPONENT_TYPE_TRANSIT_VEHICLE_POSITION";
                  break;
                case 63:
                  v16 = @"COMPONENT_TYPE_LINKED_SERVICE";
                  break;
                case 64:
                  v16 = @"COMPONENT_TYPE_BUSINESS_HOURS";
                  break;
                case 65:
                  v16 = @"COMPONENT_TYPE_COLLECTION";
                  break;
                case 66:
                  v16 = @"COMPONENT_TYPE_RELATED_PLACE";
                  break;
                case 67:
                  v16 = @"COMPONENT_TYPE_TRANSIT_TRIP_STOP";
                  break;
                case 68:
                  v16 = @"COMPONENT_TYPE_TRANSIT_TRIP_STOP_TIME";
                  break;
                case 69:
                  v16 = @"COMPONENT_TYPE_TRANSIT_TRIP_GEOMETRY";
                  break;
                case 70:
                  v16 = @"COMPONENT_TYPE_PLACE_BROWSE_CATEGORIES";
                  break;
                case 71:
                  v16 = @"COMPONENT_TYPE_PUBLISHER";
                  break;
                case 72:
                  v16 = @"COMPONENT_TYPE_MINI_PLACE_BROWSE_CATEGORIES";
                  break;
                case 73:
                  v16 = @"COMPONENT_TYPE_PLACE_QUESTIONNAIRE";
                  break;
                case 74:
                  v16 = @"COMPONENT_TYPE_PLACE_COLLECTION_ITEM";
                  break;
                case 76:
                  v16 = @"COMPONENT_TYPE_COLLECTION_IDS";
                  break;
                case 77:
                  v16 = @"COMPONENT_TYPE_ISO_3166_CODE";
                  break;
                case 78:
                  v16 = @"COMPONENT_TYPE_VENDOR_AMENITIES";
                  break;
                case 79:
                  v16 = @"COMPONENT_TYPE_TRANSIT_NEARBY_SCHEDULE";
                  break;
                case 81:
                  v16 = @"COMPONENT_TYPE_STOREFRONT_FACES";
                  break;
                case 82:
                  v16 = @"COMPONENT_TYPE_GUIDE_GROUP";
                  break;
                case 83:
                  v16 = @"COMPONENT_TYPE_CONTAINMENT_PLACE";
                  break;
                case 84:
                  v16 = @"COMPONENT_TYPE_CATEGORIZED_PHOTOS";
                  break;
                case 85:
                  v16 = @"COMPONENT_TYPE_EXPLORE_GUIDES";
                  break;
                case 86:
                  v16 = @"COMPONENT_TYPE_ABOUT";
                  break;
                case 87:
                  v16 = @"COMPONENT_TYPE_LABEL_GEOMETRY";
                  break;
                case 88:
                  v16 = @"COMPONENT_TYPE_ENHANCED_PLACEMENT";
                  break;
                case 89:
                  v16 = @"COMPONENT_TYPE_TEMPLATE_PLACE";
                  break;
                case 90:
                  v16 = @"COMPONENT_TYPE_SEARCH_ENRICHMENT";
                  break;
                case 91:
                  v16 = @"COMPONENT_TYPE_TRANSIT_PAYMENT_METHOD_INFO";
                  break;
                case 92:
                  v16 = @"COMPONENT_TYPE_BUSINESS_ASSETS";
                  break;
                case 93:
                  v16 = @"COMPONENT_TYPE_ENRICHMENT_INFO";
                  break;
                case 94:
                  v16 = @"COMPONENT_TYPE_ACTION_DATA";
                  break;
                case 95:
                  v16 = @"COMPONENT_TYPE_ENRICHMENT_DATA";
                  break;
                case 96:
                  v16 = @"COMPONENT_TYPE_POI_CLAIM";
                  break;
                case 97:
                  v16 = @"COMPONENT_TYPE_EV_CHARGER";
                  break;
                case 98:
                  v16 = @"COMPONENT_TYPE_TRAIL_HEAD";
                  break;
                case 99:
                  v16 = @"COMPONENT_TYPE_TOOL_TIP";
                  break;
                case 100:
                  v16 = @"COMPONENT_TYPE_REFRESH_ID";
                  break;
                case 101:
                  v16 = @"COMPONENT_TYPE_ADDRESS_COMPONENTS";
                  break;
                case 102:
                  v16 = @"COMPONENT_TYPE_SEARCH_RESULT_PLACE_PHOTO";
                  break;
                case 103:
                  v16 = @"COMPONENT_TYPE_FORWARD_INFO";
                  break;
                case 104:
                  v16 = @"COMPONENT_TYPE_HIKE_ASSOCIATED_INFO";
                  break;
                case 105:
                  v16 = @"COMPONENT_TYPE_HIKE_SUMMARY";
                  break;
                case 106:
                  v16 = @"COMPONENT_TYPE_HIKE_GEOMETRY";
                  break;
                case 107:
                  v16 = @"COMPONENT_TYPE_ACCOLADES";
                  break;
                case 108:
                  v16 = @"COMPONENT_TYPE_LOCALIZED_NAMES";
                  break;
                case 109:
                  v16 = @"COMPONENT_TYPE_BRAND_LOGO_EMBEDDING";
                  break;
                case 110:
                  v16 = @"COMPONENT_TYPE_VISUAL_EVIDENCE";
                  break;
                case 111:
                  v16 = @"COMPONENT_TYPE_VISITED_PLACES_META_DATA";
                  break;
                case 112:
                  v16 = @"COMPONENT_TYPE_EXPERT_CONTENT";
                  break;
                case 113:
                  v16 = @"COMPONENT_TYPE_TOKENIZER_RESULT";
                  break;
                default:
                  v16 = [NSString stringWithFormat:@"(unknown: %i)", v15];
                  break;
              }

              [v9 addObject:v16];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
          }

          while (v12);
        }

        [v9 sortUsingSelector:"compare:"];
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v9 componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Result was missing components: %@", buf, 0xCu);
        }
      }

      goto LABEL_123;
    }
  }

LABEL_124:
}

void sub_10004E2D0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

uint64_t sub_10004E47C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 data];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];

  return 1;
}

void sub_10004E4DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_10004EB94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[NSNull null];

  if (v6 != v5)
  {
    v7 = GEOStringForPhoneNumber();
    v8 = v7;
    if (v7 && [v7 length])
    {
      v9 = [*(a1 + 32) pdPlaceCache];
      v10 = [v9 lookupIdentifierByPhoneNumber:v8];

      if (v10)
      {
        v11 = *(a1 + 40);
        v12 = [NSNumber numberWithUnsignedInteger:a3];
        [v11 setObject:v12 forKey:v10];
      }
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't construct a string version for phone number.", v14, 2u);
      }
    }
  }
}

id sub_10004ECD8(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10004ED0C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004EE40;
  v17[3] = &unk_100083B48;
  v13 = *(a1 + 88);
  v21 = v8;
  v22 = v13;
  v18 = v7;
  v14 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v23 = *(a1 + 96);
  v15 = v7;
  v16 = v8;
  [v10 requestIdentifiers:v15 resultProviderID:0 requestUUID:v9 traits:v12 options:a2 auditToken:v11 throttleToken:v14 requesterHandler:v17];
}

void sub_10004EE40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 56) || *(*(*(a1 + 64) + 8) + 40))
  {
    v7 = [NSMutableSet setWithArray:*(a1 + 32)];
    if (v6)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240450;
        v36 = 0;
        v37 = 2114;
        v38 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error consulting providerId=%{public}d: %{public}@", buf, 0x12u);
      }
    }

    else
    {
      v8 = [v5 resultsWithResultType:1];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v29 = 0;
        v30 = v5;
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            if ([v13 status] != 20)
            {
              v14 = [[GEOMapItemIdentifier alloc] initWithPlace:v13];
              v15 = [*(a1 + 40) objectForKeyedSubscript:v14];
              v16 = v15;
              if (v15)
              {
                v17 = v7;
                v18 = *(a1 + 48);
                v19 = [v15 unsignedIntegerValue];
                v20 = v18;
                v7 = v17;
                [v20 setObject:v13 atIndexedSubscript:v19];
              }

              [v7 removeObject:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v10);
        v6 = v29;
        v5 = v30;
      }
    }

    v21 = *(a1 + 56);
    if (v21)
    {
      v22 = sub_10004B204(*(a1 + 48));
      (*(v21 + 16))(v21, v22, v6);
    }

    v23 = *(a1 + 64);
    if (*(*(v23 + 8) + 40))
    {
      if (*(a1 + 72) == 1)
      {
        v24 = [v7 count];
        v23 = *(a1 + 64);
        if (v24)
        {
          v25 = *(*(v23 + 8) + 40);
          v26 = [v7 allObjects];
          (*(v25 + 16))(v25, 1, v26, 0);

          v23 = *(a1 + 64);
        }
      }
    }

    v27 = *(v23 + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = 0;
  }
}

void sub_10004F358(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) && ([v3 resultsWithResultType:1], v4 = objc_claimAutoreleasedReturnValue(), v3 = v6, v4))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    if (!*(a1 + 40))
    {
      goto LABEL_7;
    }

    v4 = [NSError GEOErrorWithCode:-11 reason:@"Identifier lookup failed to return any results"];
    v5 = *(a1 + 40);
  }

  (*(v5 + 16))(v5, v4);

  v3 = v6;
LABEL_7:
}

void sub_10004F664(uint64_t a1)
{
  v2 = *(a1 + 88);
  v60 = (v2 & 8) == 0;
  v3 = GeoServicesConfig_DefaultsPlaceDataRequestsCanUseCache[1];
  if (_GEOConfigHasValue())
  {
    LOBYTE(v4) = GEOConfigGetBOOL();
  }

  else
  {
    v4 = (v2 >> 1) & 1;
  }

  v5 = GeoServicesConfig_DefaultsPlaceDataRequestsCanUseExpired[1];
  if (_GEOConfigHasValue())
  {
    LODWORD(v6) = GEOConfigGetBOOL();
  }

  else
  {
    v6 = (v2 >> 2) & 1;
  }

  v7 = GeoServicesConfig_DefaultsPlaceDataRequestsCanUseNetwork[1];
  if (_GEOConfigHasValue())
  {
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = v2 & 1;
  }

  v9 = *(a1 + 32);
  v68 = a1;
  if (!v9)
  {
    v38 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2082;
      *&buf[14] = "nil == identifiers";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (!*(a1 + 80))
  {
    v38 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543618;
      *&buf[4] = v40;
      *&buf[12] = 2082;
      *&buf[14] = "nil == requesterHandler";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (!*(a1 + 40))
  {
    v38 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543618;
      *&buf[4] = v41;
      *&buf[12] = 2082;
      *&buf[14] = "nil == traits";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    goto LABEL_54;
  }

  v10 = *(a1 + 108);
  v11 = v4 & v10;
  if (BOOL)
  {
    v12 = 1;
  }

  else
  {
    v12 = v4 & v10;
  }

  if ((v12 & 1) == 0)
  {
    v38 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543618;
      *&buf[4] = v42;
      *&buf[12] = 2082;
      *&buf[14] = "!canUseCache && !canUseNetwork";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

LABEL_54:

    return;
  }

  if (![v9 count])
  {
    v43 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      *&buf[4] = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "No use running %{public}@ without any MUIDs.", buf, 0xCu);
    }

    (*(*(a1 + 80) + 16))();
    return;
  }

  v57 = BOOL;
  v14 = *(a1 + 32);
  v13 = (a1 + 32);
  v58 = [*(v13[2] + 5) identifiersRequested:v14 forHandler:v13[6]];
  v59 = [NSMutableOrderedSet orderedSetWithArray:*v13];
  v63 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*v13 count]);
  [v59 minusSet:v58];
  v15 = NSMutableOrderedSet;
  v65 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v59 count]);
  if ((v11 & 1) == 0)
  {
    v15 = +[GEOPlatform sharedPlatform];
    if (![v15 isInternalInstall])
    {
      v66 = 0;
LABEL_59:
      v37 = BOOL;

      v36 = v65;
      [v65 unionOrderedSet:v59];
LABEL_60:
      [v36 minusSet:v58];
      if (v37 && [v65 count])
      {
        v45 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          *&buf[4] = v65;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Missing Identifiers: %{private}@", buf, 0xCu);
        }

        v46 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          *&buf[4] = v58;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Requests in progress: %{private}@", buf, 0xCu);
        }

        v47 = [v65 array];
        v48 = *(v68 + 104);
        v49 = *(v68 + 40);
        v50 = *(v68 + 48);
        v51 = *(v68 + 56);
        v52 = *(v68 + 64);
        v53 = *(v68 + 72);
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_1000505AC;
        v71[3] = &unk_100083AA8;
        v71[4] = v50;
        v74 = v60;
        v66 = v66;
        v72 = v66;
        v73 = v47;
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_100050680;
        v69[3] = &unk_100083A58;
        v69[4] = *(v68 + 48);
        v70 = v65;
        v54 = v47;
        [v50 _requestIdentifiersFromNetwork:v54 resultProviderID:v48 requestUUID:v52 traits:v49 auditToken:v51 throttleToken:v53 finished:v71 error:v69];
      }

      else
      {
        v55 = *(*(v68 + 48) + 40);
        v56 = [v65 set];
        [v55 failedToResolveIdentifiers:v56 withError:0];

        [*(v68 + 48) _resetRequestTimeout];
      }

      goto LABEL_68;
    }
  }

  v16 = [GEOPDPlaceRequest createRequestedComponentsForReason:0 traits:*(v68 + 40) count:1];
  v66 = [GEOPDPlace componentTypesFromComponentInfos:v16];

  if ((v11 & 1) == 0)
  {
    goto LABEL_59;
  }

  v62 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v59 count]);
  v61 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v59 count]);
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v59;
  v17 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
  if (!v17)
  {
    goto LABEL_37;
  }

  v18 = v6 & v10;
  v67 = *v90;
  do
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v90 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v89 + 1) + 8 * i);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v94 = sub_10004D510;
      v95 = sub_10004D520;
      v96 = 0;
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v88 = 0;
      v81 = 0;
      v82 = &v81;
      v83 = 0x2020000000;
      v84 = 0;
      v21 = [*(v68 + 48) pdPlaceCache];
      v80[0] = _NSConcreteStackBlock;
      v80[1] = 3221225472;
      v80[2] = sub_1000503C4;
      v80[3] = &unk_1000839B8;
      v80[4] = buf;
      v80[5] = &v85;
      v80[6] = &v81;
      [v21 lookupPlaceByIdentifier:v20 allowExpired:v18 resultBlock:v80];

      v22 = *(*&buf[8] + 40);
      if (v22)
      {
        v23 = [v22 hasExpectedComponentTypes:v66];
        if ((v86[3] & 1) == 0 && v23 == 1)
        {
          v24 = 1;
LABEL_33:
          [*(v68 + 48) registerCacheResult:v24 forMapItem:v20 cachedByteCount:v82[3] forRequestType:23 auditToken:*(v68 + 56)];
          [v63 addObject:v20];
          [v62 addObject:*(*&buf[8] + 40)];
          goto LABEL_35;
        }

        if ((v18 & v23) == 1)
        {
          [v61 addObject:v20];
          v24 = 3;
          goto LABEL_33;
        }
      }

      [v65 addObject:v20];
      [*(v68 + 48) registerCacheResult:2 forMapItem:v20 cachedByteCount:v82[3] forRequestType:23 auditToken:*(v68 + 56)];
LABEL_35:
      _Block_object_dispose(&v81, 8);
      _Block_object_dispose(&v85, 8);
      _Block_object_dispose(buf, 8);
    }

    v17 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
  }

  while (v17);
LABEL_37:

  [*(*(v68 + 48) + 40) didResolveItems:v62 forIdentifiers:v63];
  if ([v61 count] != 0 && v57 != 0)
  {
    [*(*(v68 + 48) + 40) willUpdateExpiredIdentifiers:v61];
    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      *&buf[4] = v61;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Expired Identifiers: %{private}@", buf, 0xCu);
    }

    v26 = [v61 allObjects];
    v27 = *(v68 + 104);
    v29 = *(v68 + 40);
    v28 = *(v68 + 48);
    v31 = *(v68 + 56);
    v30 = *(v68 + 64);
    v32 = *(v68 + 72);
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100050434;
    v77[3] = &unk_100083A08;
    v79 = v60;
    v77[4] = v28;
    v78 = v26;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000504F4;
    v75[3] = &unk_100083A58;
    v75[4] = v28;
    v76 = v61;
    v33 = v26;
    [v28 _requestIdentifiersFromNetwork:v33 resultProviderID:v27 requestUUID:v30 traits:v29 auditToken:v31 throttleToken:v32 finished:v77 error:v75];
  }

  v34 = [v62 count];
  v35 = [v65 count];
  if (&v34[v35] == [obj count])
  {

    v36 = v65;
    v37 = v57;
    goto LABEL_60;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: hittingPlaces.count + missingIdentifiers.count == todoIdentifiers.count", buf, 2u);
  }

LABEL_68:
}

void sub_100050388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void sub_1000503C4(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_100050434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  v5 = v3;
  geo_reentrant_isolate_sync();
}

void sub_1000504F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6 = *(a1 + 40);
  v5 = v3;
  geo_reentrant_isolate_sync_data();
}

void sub_1000505AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  v5 = v3;
  geo_reentrant_isolate_sync();
}

void sub_100050680(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6 = *(a1 + 40);
  v5 = v3;
  geo_reentrant_isolate_sync();
}

void sub_100050738(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[For MUID] Error fetching missing muids: %{public}@", &v6, 0xCu);
  }

  v4 = *(*(a1 + 40) + 40);
  v5 = [*(a1 + 48) set];
  [v4 failedToResolveIdentifiers:v5 withError:*(a1 + 32)];
}

id sub_100050824(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v7 compactDebugDescription];
          *buf = 138477827;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Received place data: %{private}@", buf, 0xCu);
        }

        [v7 setFirstSeenTimestamp:Current];
        sub_10004D8E8(*(a1 + 40), v7, *(a1 + 48));
        v10 = [[GEOMapItemIdentifier alloc] initWithPlace:v7];
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Checking placedata with identifier=%{private}@", buf, 0xCu);
        }

        v12 = [v7 status];
        v13 = GEOFindOrCreateLog();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v14)
          {
            *buf = 138478083;
            v23 = v10;
            v24 = 2113;
            v25 = v7;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Received unsuccessful place with identifier=%{private}@, data: %{private}@", buf, 0x16u);
          }
        }

        else
        {
          if (v14)
          {
            v15 = [v7 bestName];
            *buf = 138477827;
            v23 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Received place data for: %{private}@", buf, 0xCu);
          }

          if (*(a1 + 64) == 1)
          {
            [*(a1 + 40) trackPlaceData:v7];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 40) + 40) didResolveItems:*(a1 + 32) forIdentifiers:*(a1 + 56)];
}

void sub_100050B44(void *a1)
{
  [*(a1[4] + 40) failedToResolveIdentifiers:a1[5] withError:0];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = a1[6];
    v4 = 138477827;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[For MUID] Error refreshing expired muids: %{private}@", &v4, 0xCu);
  }
}

id sub_100050C10(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          if (![v7 status])
          {
            [*(a1 + 40) trackPlaceData:v7];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  return [*(*(a1 + 40) + 40) didResolveItems:*(a1 + 32) forIdentifiers:{*(a1 + 48), v9}];
}

void sub_100050E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_100050EB4(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 24) objectForKey:a1[5]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1[4] + 16) removeObjectForKey:a1[5]];
  v8 = a1[5];
  v9 = *(a1[4] + 24);

  return [v9 removeObjectForKey:v8];
}

id sub_100051138(void *a1)
{
  [*(a1[4] + 16) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = a1[7];
  v3 = a1[5];
  v4 = *(a1[4] + 24);

  return [v4 setObject:v2 forKeyedSubscript:v3];
}

void sub_100051184(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v14 = *(a1 + 40);
  geo_reentrant_isolate_sync_data();
  if (v6)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v6, v8, v9, v10, v11);
    }
  }

  else
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(v13, v5, v8, v9, v10, v11);
    }
  }
}

id sub_100051270(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 removeObjectForKey:v2];
}

void sub_100051328(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    goto LABEL_3;
  }

  global_queue = geo_get_global_queue();
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;

  dispatch_source_set_timer(*(*(a1 + 32) + 48), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, *(a1 + 32));
  v6 = *(*(a1 + 32) + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005149C;
  v10[3] = &unk_1000838F0;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v6, v10);
  dispatch_activate(*(*(a1 + 32) + 48));
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  if (*(*(a1 + 32) + 48))
  {
LABEL_3:
    GEODataRequestTimeout();
    v7 = *(*(a1 + 32) + 48);
    v9 = dispatch_time(0, (v8 * 3.0 * 0.5 * 1000000000.0));
    dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 1uLL);
  }
}

void sub_10005149C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupPendingRequestMananger];
}

uint64_t sub_1000519BC(uint64_t a1)
{
  qword_100096188 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100051BC8(id a1)
{
  qword_1000961A0 = objc_alloc_init(_GEOTransitRouteUpdateRequestConfig);

  _objc_release_x1();
}

void sub_100051D40(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

void sub_100051E1C(id a1)
{
  qword_1000961A8 = objc_alloc_init(GEOTransitUpdateServerRequester);

  _objc_release_x1();
}

void sub_100052568(id a1)
{
  v1 = objc_alloc_init(GEOTaskQueue);
  v2 = qword_1000961B8;
  qword_1000961B8 = v1;

  v3 = GeoOfflineConfig_SimpleETAMaxConcurrentOfflineTasks[1];
  [qword_1000961B8 setWidth:GEOConfigGetUInteger()];
  global_queue = geo_get_global_queue();
  v4 = _GEOConfigAddBlockListenerForKey();
  v5 = qword_1000961C0;
  qword_1000961C0 = v4;
}

void sub_100052620(id a1, $464B15F94E0D705FD6D497CD7841E26A a2)
{
  v2 = GeoOfflineConfig_SimpleETAMaxConcurrentOfflineTasks[1];
  UInteger = GEOConfigGetUInteger();
  v4 = qword_1000961B8;

  [v4 setWidth:UInteger];
}

void sub_100052EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = GeoServicesConfig_ValidateSensitiveFieldsAtSend_ETA[1];
    BOOL = GEOConfigGetBOOL();
    v7 = *(a1 + 32);
    if (BOOL)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100053308;
      v8[3] = &unk_100083DF8;
      v9 = v4;
      (*(v7 + 16))(v7, v8);
    }

    else
    {
      (*(v7 + 16))(v7, v4);
    }
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_100052FD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  v5 = [v3 datasetAbStatus];
  [v4 refreshDatasetABStatus:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v3 routes];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 reroutedRoutesCount])
        {
          v12 = [v11 reroutedRouteAtIndex:0];
          [v12 unpackLatLngVertices];
          v13 = [v12 unpackedLatLngVertices];

          if (!v13)
          {
            [v11 setReroutedRoutes:0];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v3);
  }
}

void sub_10005317C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GEOProtobufSession sharedDelegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053294;
  block[3] = &unk_100083E70;
  v13 = a1[4];
  v11 = v6;
  v14 = a1[5];
  v15 = a1[6];
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_100053294(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  if (a1[4])
  {
    result = a1[7];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = a1[8];
    v4 = a1[5];
  }

  v5 = *(result + 16);

  return v5();
}

void sub_100053308(uint64_t a1, void *a2)
{
  v3 = a2;
  if (GEOETATrafficUpdateRequestHasSensitiveFields())
  {
    [v3 clearSensitiveFields:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100053618(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = a1[4];
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  if (v12)
  {
    v7 = v12;
    v8 = +[GEOExperimentConfiguration sharedConfiguration];
    v9 = [v7 datasetAbStatus];
    [v8 refreshDatasetABStatus:v9];

    v10 = a1[5];
    if (v10)
    {
      (*(v10 + 16))(v10, v7);
    }
  }

  else
  {
    v11 = a1[6];
    if (v11)
    {
      (*(v11 + 16))(v11, v5);
    }
  }
}

void sub_100053768(id a1)
{
  qword_1000961D0 = objc_alloc_init(GEOETAServiceRequester);

  _objc_release_x1();
}

void sub_100053A20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[GEOETAUpdateableWillSendRequest alloc] initWithMessage:@"ETA.willSendETARequest" traits:0 auditToken:0 throttleToken:0];
  v5 = [*(a1 + 32) peer];
  v6 = [v5 connection];
  global_workloop = geo_get_global_workloop();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100053BE8;
  v9[3] = &unk_100083EE8;
  v10 = v3;
  v8 = v3;
  [v4 send:v6 withReply:global_workloop handler:v9];
}

id sub_100053B30(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResponse:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_100053B70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setError:v4];
  v5 = [v4 _geo_etaTrafficUpdateErrorInfo];

  [*(a1 + 32) setErrorInfo:v5];
  v6 = *(a1 + 32);

  return [v6 send];
}

void sub_100053BE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 updatedRequest];
  (*(v2 + 16))(v2, v3);
}

id sub_100053EF4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResponse:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_100053F34(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}