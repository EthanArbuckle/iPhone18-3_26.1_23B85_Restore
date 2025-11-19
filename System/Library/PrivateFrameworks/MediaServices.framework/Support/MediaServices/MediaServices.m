void sub_100000F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100000FC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = WeakRetained;
    v4 = [v3 operationError];
    v5 = [v3 debugMessage];
    v6 = [v3 colorAnalysis];

    if (v5)
    {
      v7 = sub_100001B34(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        *buf = 134218242;
        v19 = v8;
        v20 = 2114;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Artwork color analysis request: %p -- %{public}@", buf, 0x16u);
      }
    }

    if (v4)
    {
      v9 = sub_100001B34(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        *buf = 134218242;
        v19 = v10;
        v20 = 2114;
        v21 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed artwork color analysis request: %p with error: %{public}@", buf, 0x16u);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v9 = sub_100001B34(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 134217984;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Completed artwork color analysis request: %p", buf, 0xCu);
  }

  v4 = 0;
LABEL_14:

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(*(a1 + 40) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000125C;
    block[3] = &unk_1000041E0;
    v17 = v12;
    v15 = v6;
    v16 = v4;
    dispatch_async(v13, block);
  }
}

void sub_100001494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000014BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = WeakRetained;
    v4 = [v3 operationError];
    v5 = [v3 debugMessage];

    if (v5)
    {
      v6 = sub_100001B34(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 134218242;
        v17 = v7;
        v18 = 2114;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Artwork request: %p -- %{public}@", buf, 0x16u);
      }
    }

    if (v4)
    {
      v8 = sub_100001B34(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        *buf = 134218242;
        v17 = v9;
        v18 = 2114;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed artwork request: %p with error: %{public}@", buf, 0x16u);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = sub_100001B34(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 134217984;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Completed artwork request: %p", buf, 0xCu);
  }

  v4 = 0;
LABEL_14:

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100001730;
    v13[3] = &unk_100004190;
    v15 = v11;
    v14 = v4;
    dispatch_async(v12, v13);
  }
}

void sub_100001970(uint64_t a1)
{
  v2 = sub_100001B34(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[MADXPCDelegate] Connection interrupted (pid = %ld)", &v4, 0xCu);
  }
}

void sub_100001A1C(uint64_t a1)
{
  v2 = sub_100001B34(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[MADXPCDelegate] Connection invalidated (pid = %ld)", &v4, 0xCu);
  }
}

id sub_100001B34(int a1)
{
  if (qword_100008A10 != -1)
  {
    dispatch_once(&qword_100008A10, &stru_100004240);
  }

  v2 = qword_1000089F0[a1];

  return v2;
}

void sub_100001B98(id a1)
{
  v1 = os_log_create("com.apple.amp.mediaartworkd", "Default");
  v2 = qword_1000089F0[0];
  qword_1000089F0[0] = v1;

  v3 = os_log_create("com.apple.amp.mediaartworkd", "Default_Oversize");
  v4 = qword_1000089F8;
  qword_1000089F8 = v3;

  v5 = os_log_create("com.apple.amp.mediaartworkd", "XPC");
  v6 = qword_100008A00;
  qword_100008A00 = v5;

  qword_100008A08 = os_log_create("com.apple.amp.mediaartworkd", "XPC-Oversize");

  _objc_release_x1();
}

void start()
{
  v0 = objc_alloc_init(MADXPCDelegate);
  v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mediaartworkd.xpc"];
  [v1 setDelegate:v0];
  [v1 resume];
  dispatch_main();
}