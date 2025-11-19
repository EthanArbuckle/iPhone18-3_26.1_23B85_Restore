void sub_100000E74(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
  v2 = dispatch_queue_create("com.apple.nanotimekit.snapshot.connections", v1);
  v3 = qword_1000086B0;
  qword_1000086B0 = v2;
}

void sub_100001060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001090(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setExportedObject:0];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  objc_opt_class();
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[NSOperationQueue mainQueue];
  v6 = [v4 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v5 usingBlock:&stru_100004318];

  v7 = objc_opt_new();
  v8 = +[NSXPCListener serviceListener];
  [v8 setDelegate:v7];
  [v8 resume];
  objc_autoreleasePoolPop(v3);
  v9 = +[NSRunLoop mainRunLoop];
  [v9 run];

  return 0;
}

void sub_1000011E0(id a1, NSNotification *a2)
{
  v2 = a2;
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Aborting due to locale change…", v4, 2u);
  }

  exit(1);
}

void sub_100001294(id a1)
{
  qword_1000086C0 = objc_alloc_init(NTKFaceSnapshotter);

  _objc_release_x1();
}

void sub_100001574(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v9)
    {
      v7 = [v9 hasBlankComplications];
      v8 = [v9 snapshot];
      (*(v6 + 16))(v6, v7, v8);
    }

    else
    {
      (*(v6 + 16))(v6, 1, 0);
    }
  }
}

void sub_1000019B0(id *a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001B80;
  block[3] = &unk_1000043B0;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v18 = v8;
  v19 = v7;
  dispatch_group_notify(v2, &_dispatch_main_q, block);
  v9 = qword_1000086D0;
  v10 = a1[4];
  v11 = objc_opt_class();
  v12 = a1[4];
  v13 = objc_opt_class();
  qword_1000086D0 = v13;
  if (v9 != v11)
  {
    if (v13)
    {
      dispatch_group_enter(v2);
      v14 = dispatch_time(0, 10000000);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100001D94;
      v15[3] = &unk_1000043D8;
      v16 = v2;
      dispatch_after(v14, &_dispatch_main_q, v15);
    }

    else
    {
      +[NTKFaceSnapshotService _prepareForSnapshot];
    }
  }

  dispatch_group_leave(v2);
}

void sub_100001B80(uint64_t a1)
{
  v2 = +[NTKFaceSnapshotService sharedSnapshotter];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001C60;
  v5[3] = &unk_100004388;
  v6 = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v2 requestSnapshotOfFace:v6 options:v4 completion:v5];
}

void sub_100001C60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) name];
    v9 = [*(a1 + 32) configuration];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished snapshot request for %{public}@ - %{public}@", &v11, 0x16u);
  }

  [*(a1 + 40) logCurrentInterval];
  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void sub_100001D94(uint64_t a1)
{
  +[NTKFaceSnapshotService _prepareForSnapshot];
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_100001DD4(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  v6 = *(*(a1 + 32) + 8);
  if (v6)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100001F64;
    v13[3] = &unk_1000043D8;
    v14 = v2;
    [v6 performAfterLoad:v13];
  }

  else
  {
    dispatch_group_leave(v2);
  }

  dispatch_group_enter(v2);
  v7 = [NTKCompanionWidgetComplicationManager instanceForDevice:*(a1 + 40)];
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = v7;

  v10 = *(*(a1 + 32) + 16);
  if (v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001F6C;
    v11[3] = &unk_1000043D8;
    v12 = v2;
    [v10 performAfterLoad:v11];
  }

  else
  {
    dispatch_group_leave(v2);
  }

  dispatch_group_notify(v2, &_dispatch_main_q, *(a1 + 48));
}

void sub_100001FE0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Warning: face's device is nil, Face: %@", &v2, 0xCu);
}

void sub_100002058(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[NTKFaceSnapshotService requestSnapshotOfFaceInstanceDescriptor:options:completion:]";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Exiting early, no completion given for snapshotting face %@ %s", &v2, 0x16u);
}