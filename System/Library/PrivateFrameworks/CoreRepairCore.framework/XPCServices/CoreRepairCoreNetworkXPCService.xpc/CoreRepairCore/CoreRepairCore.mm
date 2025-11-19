int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id handleForCategory(unint64_t a1)
{
  if (qword_10000C950 != -1)
  {
    sub_100002FF4();
  }

  v2 = &_os_log_disabled;
  v3 = &_os_log_disabled;
  if (a1 <= 2)
  {
    v2 = qword_10000C938[a1];
  }

  return v2;
}

void sub_100001024(id a1)
{
  v1 = os_log_create("com.apple.corerepair", "device");
  v2 = qword_10000C938;
  qword_10000C938 = v1;

  v3 = os_log_create("com.apple.corerepair", "device-error");
  v4 = qword_10000C940;
  qword_10000C940 = v3;

  qword_10000C948 = os_log_create("com.apple.corerepair", "signpost");

  _objc_release_x1();
}

void sub_10000141C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001470(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000304C(v6, v7);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = -202;
    goto LABEL_5;
  }

  if (!v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = -203;
LABEL_5:
    *(v8 + 24) = v9;
    goto LABEL_12;
  }

  v10 = [v5 objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v5 objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];
  v14 = [v13 objectForKeyedSubscript:@"com.apple.gs.corerepair.auth"];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = -204;
    goto LABEL_5;
  }

  v8 = *(*(a1 + 40) + 8);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v9 = -205;
    goto LABEL_5;
  }

  *(v8 + 24) = 0;
  v17 = handleForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Authenticated user credentials successfully.", v18, 2u);
  }

LABEL_12:
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100001C6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (v10)
  {
    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 URL];
      v21 = 138543362;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HTTP Response URL: %{public}@", &v21, 0xCu);
    }

    v13 = handleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 statusCode];
      v21 = 134217984;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HTTP Response Status: %ld", &v21, 0xCu);
    }

    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 allHeaderFields];
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "HTTP Response Headers: %{public}@", &v21, 0xCu);
    }
  }

  if (v9)
  {
    v17 = handleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "HTTP Response Error: %@", &v21, 0xCu);
    }
  }

  if (v7)
  {
    v18 = handleForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [[NSString alloc] initWithData:v7 encoding:4];
      v21 = 138477827;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "HTTP Response Body: %{private}@", &v21, 0xCu);
    }
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    (*(v20 + 16))(v20, v7, v10, v9);
  }
}

void sub_10000227C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000022C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000022DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = a3;
    v10 = [v9 allHeaderFields];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [v9 statusCode];
    *(*(*(a1 + 48) + 8) + 24) = v13;
  }

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v7;
  v19 = v7;

  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v8;
  v18 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002B94(uint64_t a1, void *a2)
{
  v3 = [a2 rangeAtIndex:1];
  v5 = [*(a1 + 32) substringWithRange:{v3, v4}];
  v6 = [[NSData alloc] initWithBase64EncodedString:v5 options:1];
  if (v6)
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 base64EncodedStringWithOptions:0];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cert: %@", &v9, 0xCu);
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

void sub_100002EA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100002EBC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136315138;
    v1 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: entitlement format not correct", &v0, 0xCu);
  }
}

void sub_100002F58()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136315138;
    v1 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: audit token does not have entitlements needed.", &v0, 0xCu);
  }
}

void sub_10000304C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to authenticate: %@", &v2, 0xCu);
}

void sub_100003134(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create return response: %@", &v2, 0xCu);
}