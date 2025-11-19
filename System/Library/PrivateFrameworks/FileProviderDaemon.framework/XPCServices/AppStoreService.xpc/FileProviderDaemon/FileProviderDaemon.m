uint64_t start()
{
  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

uint64_t sub_100001530(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001548(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100001978(v3, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1000015B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100001A10(a1);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (!v7)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100001B40(a1);
    }

    goto LABEL_4;
  }

  v21 = 0;
  v11 = [NSData dataWithContentsOfURL:v7 options:8 error:&v21];
  v12 = v21;
  v13 = v12;
  if (v11 && !v12)
  {
    goto LABEL_13;
  }

  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100001A8C(v7, v13, v14);
  }

  if (v11)
  {
LABEL_13:
    v15 = *(a1 + 32);
    v22[0] = @"appBundleID";
    v22[1] = @"mappedData";
    v23[0] = v15;
    v23[1] = v11;
    v22[2] = @"undecorated";
    v16 = [NSNumber numberWithBool:*(a1 + 56)];
    v23[2] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000180C;
    v19[3] = &unk_100004228;
    v18 = *(a1 + 40);
    v20 = *(a1 + 48);
    [v18 operationDidProgressWithInfo:v17 error:0 completionHandler:v19];

    goto LABEL_6;
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 48));
LABEL_6:
}

void sub_100001824(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.FileProviderDaemon.AppStoreService.notify-queue", v3);
  v2 = qword_1000085F0;
  qword_1000085F0 = v1;
}

void sub_1000018A0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] starting remote lookup for [%@]", buf, 0xCu);
}

void sub_1000018F8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ERROR] remote lookup failed with %@", buf, 0xCu);
}

void sub_100001978(void *a1, NSObject *a2)
{
  v3 = [a1 fp_prettyDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ERROR] connection to operation client was terminated with %@", &v4, 0xCu);
}

void sub_100001A10(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100001888();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[ERROR] fetching icon for %@ failed with %@", v3, 0x16u);
}

void sub_100001A8C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 fp_prettyDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] can't map data at %@ – %@", &v6, 0x16u);
}

void sub_100001B40(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100001888();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] fetching icon for %@ succeeded but returned no data (resp:%@)", v3, 0x16u);
}