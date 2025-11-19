int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  bzero(v23, 0x400uLL);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100000FAC();
    }

    exit(1);
  }

  if (!confstr(65537, v23, 0x400uLL))
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000010B0();
    }

    exit(1);
  }

  v4 = realpath_DARWIN_EXTSN(v23, 0);
  if (!v4)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000102C();
    }

    exit(1);
  }

  free(v4);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("SetStoreUpdateService", v5);
  v7 = qword_100008040;
  qword_100008040 = v6;

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v8 = qword_100008058;
  v22 = qword_100008058;
  if (!qword_100008058)
  {
    *v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100000DEC;
    v26 = &unk_100004110;
    v27 = &v19;
    sub_100000DEC(v23);
    v8 = v20[3];
  }

  v9 = v8;
  _Block_object_dispose(&v19, 8);
  v10 = [v8 alloc];
  v11 = [v10 initWithQueue:qword_100008040];
  v12 = qword_100008050;
  qword_100008050 = v11;

  v13 = +[BMXPCListener serviceListener];
  v14 = qword_100008048;
  qword_100008048 = v13;

  [qword_100008048 setDelegate:qword_100008050];
  [qword_100008048 setQueue:qword_100008040];
  objc_autoreleasePoolPop(v3);
  [qword_100008048 activate];
  return 1;
}

void sub_100000DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100000DEC(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_100008060)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100000F18;
    v3[4] = &unk_100004148;
    v3[5] = v3;
    v4 = off_100004130;
    v5 = 0;
    qword_100008060 = _sl_dlopen();
  }

  if (!qword_100008060)
  {
    sub_1000011B0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CCSetStoreUpdateService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100001134();
  }

  qword_100008058 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100000F18(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008060 = result;
  return result;
}

void sub_100000F8C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_100001134()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCCSetStoreUpdateServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SetStoreUpdateService.m" lineNumber:29 description:{@"Unable to find class %s", "CCSetStoreUpdateService"}];

  __break(1u);
}

void sub_1000011B0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *CascadeEngineLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SetStoreUpdateService.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
  _Block_object_dispose(v4, v5);
}